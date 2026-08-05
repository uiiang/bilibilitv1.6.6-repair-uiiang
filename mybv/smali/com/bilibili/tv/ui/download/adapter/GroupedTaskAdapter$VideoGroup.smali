.class public Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$VideoGroup;
.super Ljava/lang/Object;
.source "GroupedTaskAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VideoGroup"
.end annotation


# instance fields
.field public bvid:Ljava/lang/String;

.field public coverUrl:Ljava/lang/String;

.field public tasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/tv/ui/download/model/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field public title:Ljava/lang/String;

.field public upName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$VideoGroup;->tasks:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getAverageProgress()I
    .locals 5

    .prologue
    .line 78
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$VideoGroup;->tasks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    .line 83
    :goto_9
    return v0

    .line 79
    :cond_a
    const-wide/16 v0, 0x0

    .line 80
    iget-object v2, p0, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$VideoGroup;->tasks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-wide v2, v0

    :goto_13
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/download/model/DownloadTask;

    .line 81
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getProgress()I

    move-result v0

    int-to-long v0, v0

    add-long/2addr v0, v2

    move-wide v2, v0

    .line 82
    goto :goto_13

    .line 83
    :cond_27
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$VideoGroup;->tasks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    div-long v0, v2, v0

    long-to-int v0, v0

    goto :goto_9
.end method

.method public getCompletedCount()I
    .locals 4

    .prologue
    .line 61
    const/4 v0, 0x0

    .line 62
    iget-object v1, p0, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$VideoGroup;->tasks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/download/model/DownloadTask;

    .line 63
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getStatus()Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;

    move-result-object v0

    sget-object v3, Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;->COMPLETED:Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;

    if-ne v0, v3, :cond_21

    add-int/lit8 v0, v1, 0x1

    :goto_1e
    move v1, v0

    .line 64
    goto :goto_8

    .line 65
    :cond_20
    return v1

    :cond_21
    move v0, v1

    goto :goto_1e
.end method

.method public getDownloadedSize()J
    .locals 5

    .prologue
    .line 97
    const-wide/16 v0, 0x0

    .line 98
    iget-object v2, p0, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$VideoGroup;->tasks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-wide v2, v0

    :goto_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/download/model/DownloadTask;

    .line 99
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getDownloadedSize()J

    move-result-wide v0

    add-long/2addr v0, v2

    move-wide v2, v0

    .line 100
    goto :goto_9

    .line 101
    :cond_1c
    return-wide v2
.end method

.method public getDownloadingCount()I
    .locals 4

    .prologue
    .line 37
    const/4 v0, 0x0

    .line 38
    iget-object v1, p0, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$VideoGroup;->tasks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/download/model/DownloadTask;

    .line 39
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getStatus()Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;

    move-result-object v0

    sget-object v3, Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;->DOWNLOADING:Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;

    if-ne v0, v3, :cond_21

    add-int/lit8 v0, v1, 0x1

    :goto_1e
    move v1, v0

    .line 40
    goto :goto_8

    .line 41
    :cond_20
    return v1

    :cond_21
    move v0, v1

    goto :goto_1e
.end method

.method public getFailedCount()I
    .locals 4

    .prologue
    .line 69
    const/4 v0, 0x0

    .line 70
    iget-object v1, p0, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$VideoGroup;->tasks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/download/model/DownloadTask;

    .line 71
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getStatus()Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;

    move-result-object v0

    sget-object v3, Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;->FAILED:Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;

    if-ne v0, v3, :cond_21

    add-int/lit8 v0, v1, 0x1

    :goto_1e
    move v1, v0

    .line 72
    goto :goto_8

    .line 73
    :cond_20
    return v1

    :cond_21
    move v0, v1

    goto :goto_1e
.end method

.method public getPausedCount()I
    .locals 4

    .prologue
    .line 53
    const/4 v0, 0x0

    .line 54
    iget-object v1, p0, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$VideoGroup;->tasks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/download/model/DownloadTask;

    .line 55
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getStatus()Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;

    move-result-object v0

    sget-object v3, Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;->PAUSED:Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;

    if-ne v0, v3, :cond_21

    add-int/lit8 v0, v1, 0x1

    :goto_1e
    move v1, v0

    .line 56
    goto :goto_8

    .line 57
    :cond_20
    return v1

    :cond_21
    move v0, v1

    goto :goto_1e
.end method

.method public getTotalSize()J
    .locals 5

    .prologue
    .line 88
    const-wide/16 v0, 0x0

    .line 89
    iget-object v2, p0, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$VideoGroup;->tasks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-wide v2, v0

    :goto_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/download/model/DownloadTask;

    .line 90
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getTotalSize()J

    move-result-wide v0

    add-long/2addr v0, v2

    move-wide v2, v0

    .line 91
    goto :goto_9

    .line 92
    :cond_1c
    return-wide v2
.end method

.method public getWaitingCount()I
    .locals 4

    .prologue
    .line 45
    const/4 v0, 0x0

    .line 46
    iget-object v1, p0, Lcom/bilibili/tv/ui/download/adapter/GroupedTaskAdapter$VideoGroup;->tasks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/download/model/DownloadTask;

    .line 47
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getStatus()Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;

    move-result-object v0

    sget-object v3, Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;->WAITING:Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;

    if-ne v0, v3, :cond_21

    add-int/lit8 v0, v1, 0x1

    :goto_1e
    move v1, v0

    .line 48
    goto :goto_8

    .line 49
    :cond_20
    return v1

    :cond_21
    move v0, v1

    goto :goto_1e
.end method
