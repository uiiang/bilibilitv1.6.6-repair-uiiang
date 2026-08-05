.class public Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter;
.super Landroid/support/v7/widget/RecyclerView$a;
.source "GroupedTaskAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$GroupHolder;,
        Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$OnGroupClickListener;,
        Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$VideoGroup;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$a",
        "<",
        "Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$GroupHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private groups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$VideoGroup;",
            ">;"
        }
    .end annotation
.end field

.field private listener:Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$OnGroupClickListener;

.field private final showCompleted:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    .prologue
    .line 109
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$a;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter;->groups:Ljava/util/List;

    .line 110
    iput-object p1, p0, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter;->context:Landroid/content/Context;

    .line 111
    iput-boolean p2, p0, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter;->showCompleted:Z

    .line 112
    return-void
.end method

.method static synthetic access$000(Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter;)Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$OnGroupClickListener;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter;->listener:Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$OnGroupClickListener;

    return-object v0
.end method

.method private static formatSize(J)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v6, 0x0

    .line 223
    const-wide/16 v0, 0x400

    cmp-long v0, p0, v0

    if-gez v0, :cond_1c

    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " B"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 230
    :goto_1b
    return-object v0

    .line 225
    :cond_1c
    const-wide/32 v0, 0x100000

    cmp-long v0, p0, v0

    if-gez v0, :cond_36

    .line 226
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

    .line 227
    :cond_36
    const-wide/32 v0, 0x40000000

    cmp-long v0, p0, v0

    if-gez v0, :cond_50

    .line 228
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

    .line 230
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
    .line 150
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter;->groups:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic a(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$v;
    .locals 1

    .prologue
    .line 20
    invoke-virtual {p0, p1, p2}, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter;->a(Landroid/view/ViewGroup;I)Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$GroupHolder;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/view/ViewGroup;I)Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$GroupHolder;
    .locals 3

    .prologue
    .line 155
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0a00b4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 156
    new-instance v1, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$GroupHolder;

    invoke-direct {v1, v0}, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$GroupHolder;-><init>(Landroid/view/View;)V

    return-object v1
.end method

.method public bridge synthetic a(Landroid/support/v7/widget/RecyclerView$v;I)V
    .locals 0

    .prologue
    .line 20
    check-cast p1, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$GroupHolder;

    invoke-virtual {p0, p1, p2}, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter;->a(Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$GroupHolder;I)V

    return-void
.end method

.method public a(Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$GroupHolder;I)V
    .locals 6

    .prologue
    .line 161
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter;->groups:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$VideoGroup;

    .line 162
    if-nez v0, :cond_b

    .line 203
    :goto_a
    return-void

    .line 164
    :cond_b
    iget-object v2, p1, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$GroupHolder;->titleText:Landroid/widget/TextView;

    iget-object v1, v0, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$VideoGroup;->title:Ljava/lang/String;

    if-eqz v1, :cond_9b

    iget-object v1, v0, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$VideoGroup;->title:Ljava/lang/String;

    :goto_13
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    iget-object v1, v0, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$VideoGroup;->coverUrl:Ljava/lang/String;

    if-eqz v1, :cond_9f

    iget-object v1, v0, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$VideoGroup;->coverUrl:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9f

    .line 166
    iget-object v1, p1, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$GroupHolder;->coverImage:Lcom/bilibili/tv/widget/ScalableImageView;

    iget-object v2, v0, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$VideoGroup;->coverUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/bilibili/tv/widget/ScalableImageView;->setImageURI(Ljava/lang/String;)V

    .line 170
    :goto_29
    iget-object v1, p1, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$GroupHolder;->countText:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5171"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$VideoGroup;->tasks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u4e2a\u5206P"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    iget-boolean v1, p0, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter;->showCompleted:Z

    if-eqz v1, :cond_a8

    .line 174
    iget-object v1, p1, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$GroupHolder;->statusText:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5df2\u5b8c\u6210 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$VideoGroup;->getCompletedCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$VideoGroup;->tasks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " \u4e2a\u5206P \u00b7 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 175
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$VideoGroup;->getDownloadedSize()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter;->formatSize(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 174
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    :goto_8f
    iget-object v1, p1, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$GroupHolder;->rootView:Landroid/view/View;

    new-instance v2, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$1;

    invoke-direct {v2, p0, v0}, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$1;-><init>(Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter;Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$VideoGroup;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_a

    .line 164
    :cond_9b
    const-string v1, ""

    goto/16 :goto_13

    .line 168
    :cond_9f
    iget-object v1, p1, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$GroupHolder;->coverImage:Lcom/bilibili/tv/widget/ScalableImageView;

    const v2, 0x7f070059

    invoke-virtual {v1, v2}, Lcom/bilibili/tv/widget/ScalableImageView;->setImageResource(I)V

    goto :goto_29

    .line 178
    :cond_a8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 179
    const-string v2, "\u603b\u8fdb\u5ea6 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$VideoGroup;->getAverageProgress()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$VideoGroup;->getDownloadingCount()I

    move-result v2

    if-lez v2, :cond_d3

    .line 181
    const-string v2, " \u00b7 \u4e0b\u8f7d\u4e2d "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$VideoGroup;->getDownloadingCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 183
    :cond_d3
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$VideoGroup;->getWaitingCount()I

    move-result v2

    if-lez v2, :cond_e6

    .line 184
    const-string v2, " \u00b7 \u7b49\u5f85 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$VideoGroup;->getWaitingCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 186
    :cond_e6
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$VideoGroup;->getPausedCount()I

    move-result v2

    if-lez v2, :cond_f9

    .line 187
    const-string v2, " \u00b7 \u6682\u505c "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$VideoGroup;->getPausedCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 189
    :cond_f9
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$VideoGroup;->getFailedCount()I

    move-result v2

    if-lez v2, :cond_10c

    .line 190
    const-string v2, " \u00b7 \u5931\u8d25 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$VideoGroup;->getFailedCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 192
    :cond_10c
    iget-object v2, p1, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$GroupHolder;->statusText:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8f
.end method

.method public setGroups(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$VideoGroup;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 115
    if-eqz p1, :cond_8

    :goto_2
    iput-object p1, p0, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter;->groups:Ljava/util/List;

    .line 116
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter;->d()V

    .line 117
    return-void

    .line 115
    :cond_8
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_2
.end method

.method public setOnGroupClickListener(Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$OnGroupClickListener;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter;->listener:Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$OnGroupClickListener;

    .line 146
    return-void
.end method

.method public updateTask(Lcom/bilibili/tv/ui/download/model/DownloadTask;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 125
    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getBvid()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_a

    .line 141
    :cond_9
    :goto_9
    return v1

    :cond_a
    move v2, v1

    .line 126
    :goto_b
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter;->groups:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_9

    .line 127
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter;->groups:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$VideoGroup;

    .line 128
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getBvid()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$VideoGroup;->bvid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5a

    move v3, v1

    .line 130
    :goto_28
    iget-object v1, v0, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$VideoGroup;->tasks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_51

    .line 131
    iget-object v1, v0, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$VideoGroup;->tasks:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bilibili/tv/ui/download/model/DownloadTask;

    .line 132
    invoke-virtual {v1}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getTaskId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_56

    invoke-virtual {v1}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getTaskId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getTaskId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_56

    .line 133
    iget-object v0, v0, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$VideoGroup;->tasks:Ljava/util/List;

    invoke-interface {v0, v3, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 137
    :cond_51
    invoke-virtual {p0, v2}, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter;->c(I)V

    .line 138
    const/4 v1, 0x1

    goto :goto_9

    .line 130
    :cond_56
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_28

    .line 126
    :cond_5a
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_b
.end method
