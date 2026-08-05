.class public Lcom/bilibili/tv/ui/download/model/DownloadTask;
.super Ljava/lang/Object;
.source "DownloadTask.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bilibili/tv/ui/download/model/DownloadTask$PauseType;,
        Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/bilibili/tv/ui/download/model/DownloadTask;",
        ">;"
    }
.end annotation


# instance fields
.field private audioQuality:I

.field private audioQualityName:Ljava/lang/String;

.field private avid:J

.field private bvid:Ljava/lang/String;

.field private cid:J

.field private codec:Ljava/lang/String;

.field private coverUrl:Ljava/lang/String;

.field private createTime:J

.field private downloadPath:Ljava/lang/String;

.field private downloadedSize:J

.field private duration:J

.field private endTime:J

.field private errorCode:I

.field private errorMessage:Ljava/lang/String;

.field private isManualPause:Z

.field private pageIndex:I

.field private pauseType:Lcom/bilibili/tv/ui/download/model/DownloadTask$PauseType;

.field private progress:I

.field private quality:I

.field private qualityName:Ljava/lang/String;

.field private segmentCount:I

.field private speed:J

.field private startTime:J

.field private status:Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;

.field private subTitle:Ljava/lang/String;

.field private taskId:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private totalSize:J

.field private upName:Ljava/lang/String;

.field private updateTime:J

.field private videoUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    sget-object v0, Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;->WAITING:Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;

    iput-object v0, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->status:Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;

    .line 132
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->isManualPause:Z

    .line 133
    sget-object v0, Lcom/bilibili/tv/ui/download/model/DownloadTask$PauseType;->NONE:Lcom/bilibili/tv/ui/download/model/DownloadTask$PauseType;

    iput-object v0, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->pauseType:Lcom/bilibili/tv/ui/download/model/DownloadTask$PauseType;

    .line 134
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->createTime:J

    .line 135
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->updateTime:J

    .line 136
    return-void
.end method

.method public static formatDuration(J)Ljava/lang/String;
    .locals 8

    .prologue
    const-wide/16 v2, 0x3c

    .line 448
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gtz v0, :cond_b

    .line 449
    const-string v0, "00:00"

    .line 453
    :goto_a
    return-object v0

    .line 451
    :cond_b
    div-long v0, p0, v2

    .line 452
    rem-long v2, p0, v2

    .line 453
    const-string v4, "%02d:%02d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v5, v0

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method public static formatFileSize(J)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v6, 0x0

    .line 426
    const-wide/16 v0, 0x400

    cmp-long v0, p0, v0

    if-gez v0, :cond_1c

    .line 427
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " B"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 433
    :goto_1b
    return-object v0

    .line 428
    :cond_1c
    const-wide/32 v0, 0x100000

    cmp-long v0, p0, v0

    if-gez v0, :cond_36

    .line 429
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

    .line 430
    :cond_36
    const-wide/32 v0, 0x40000000

    cmp-long v0, p0, v0

    if-gez v0, :cond_50

    .line 431
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

    .line 433
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

.method public static fromCursor(Landroid/database/Cursor;)Lcom/bilibili/tv/ui/download/model/DownloadTask;
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v4, -0x1

    .line 501
    new-instance v1, Lcom/bilibili/tv/ui/download/model/DownloadTask;

    invoke-direct {v1}, Lcom/bilibili/tv/ui/download/model/DownloadTask;-><init>()V

    .line 502
    const-string v2, "task_id"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->setTaskId(Ljava/lang/String;)V

    .line 503
    const-string v2, "bvid"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->setBvid(Ljava/lang/String;)V

    .line 504
    const-string v2, "cid"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->setCid(J)V

    .line 505
    const-string v2, "title"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->setTitle(Ljava/lang/String;)V

    .line 506
    const-string v2, "cover_url"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->setCoverUrl(Ljava/lang/String;)V

    .line 509
    const-string v2, "subtitle"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 510
    if-eq v2, v4, :cond_5d

    invoke-interface {p0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_5d

    .line 511
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->setSubTitle(Ljava/lang/String;)V

    .line 515
    :cond_5d
    const-string v2, "page_index"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 516
    if-eq v2, v4, :cond_72

    invoke-interface {p0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_72

    .line 517
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->setPageIndex(I)V

    .line 520
    :cond_72
    const-string v2, "up_name"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->setUpName(Ljava/lang/String;)V

    .line 521
    const-string v2, "duration"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->setDuration(J)V

    .line 522
    const-string v2, "total_size"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->setTotalSize(J)V

    .line 523
    const-string v2, "downloaded_size"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->setDownloadedSize(J)V

    .line 524
    const-string v2, "progress"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->setProgress(I)V

    .line 525
    const-string v2, "speed"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->setSpeed(J)V

    .line 526
    const-string v2, "download_path"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->setDownloadPath(Ljava/lang/String;)V

    .line 529
    const-string v2, "video_url"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 530
    if-eq v2, v4, :cond_e2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_e2

    .line 531
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->setVideoUrl(Ljava/lang/String;)V

    .line 534
    :cond_e2
    const-string v2, "avid"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 535
    if-eq v2, v4, :cond_f7

    invoke-interface {p0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_f7

    .line 536
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->setAvid(J)V

    .line 539
    :cond_f7
    const-string v2, "status"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;->fromValue(I)Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->setStatus(Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;)V

    .line 540
    const-string v2, "is_manual_pause"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ne v2, v0, :cond_1b8

    :goto_114
    invoke-virtual {v1, v0}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->setManualPause(Z)V

    .line 541
    const-string v0, "pause_type"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Lcom/bilibili/tv/ui/download/model/DownloadTask$PauseType;->fromValue(I)Lcom/bilibili/tv/ui/download/model/DownloadTask$PauseType;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->setPauseType(Lcom/bilibili/tv/ui/download/model/DownloadTask$PauseType;)V

    .line 542
    const-string v0, "create_time"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->setCreateTime(J)V

    .line 543
    const-string v0, "update_time"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->setUpdateTime(J)V

    .line 544
    const-string v0, "start_time"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->setStartTime(J)V

    .line 545
    const-string v0, "end_time"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->setEndTime(J)V

    .line 546
    const-string v0, "quality"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->setQuality(I)V

    .line 547
    const-string v0, "quality_name"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->setQualityName(Ljava/lang/String;)V

    .line 548
    const-string v0, "audio_quality"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->setAudioQuality(I)V

    .line 549
    const-string v0, "audio_quality_name"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->setAudioQualityName(Ljava/lang/String;)V

    .line 550
    const-string v0, "codec"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->setCodec(Ljava/lang/String;)V

    .line 551
    const-string v0, "error_code"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->setErrorCode(I)V

    .line 552
    const-string v0, "error_message"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->setErrorMessage(Ljava/lang/String;)V

    .line 553
    return-object v1

    .line 540
    :cond_1b8
    const/4 v0, 0x0

    goto/16 :goto_114
.end method

.method public static generateTaskId(Ljava/lang/String;J)Ljava/lang/String;
    .locals 3

    .prologue
    .line 398
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getStatusPriority(Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;)I
    .locals 3

    .prologue
    const/16 v0, 0x64

    .line 660
    if-nez p1, :cond_5

    .line 676
    :goto_4
    :pswitch_4
    return v0

    .line 664
    :cond_5
    sget-object v1, Lcom/bilibili/tv/ui/download/model/DownloadTask$1;->$SwitchMap$com$bilibili$tv$ui$download$model$DownloadTask$Status:[I

    invoke-virtual {p1}, Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1c

    goto :goto_4

    .line 666
    :pswitch_11
    const/4 v0, 0x1

    goto :goto_4

    .line 668
    :pswitch_13
    const/16 v0, 0x32

    goto :goto_4

    .line 670
    :pswitch_16
    const/16 v0, 0xa

    goto :goto_4

    .line 672
    :pswitch_19
    const/16 v0, 0x14

    goto :goto_4

    .line 664
    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_11
        :pswitch_13
        :pswitch_16
        :pswitch_19
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public compareTo(Lcom/bilibili/tv/ui/download/model/DownloadTask;)I
    .locals 4

    .prologue
    .line 638
    if-nez p1, :cond_4

    .line 639
    const/4 v0, 0x1

    .line 652
    :goto_3
    return v0

    .line 643
    :cond_4
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->status:Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;

    invoke-direct {p0, v0}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getStatusPriority(Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;)I

    move-result v0

    .line 644
    iget-object v1, p1, Lcom/bilibili/tv/ui/download/model/DownloadTask;->status:Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;

    invoke-direct {p0, v1}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getStatusPriority(Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;)I

    move-result v1

    .line 647
    if-eq v0, v1, :cond_14

    .line 648
    sub-int/2addr v0, v1

    goto :goto_3

    .line 652
    :cond_14
    iget-wide v0, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->createTime:J

    iget-wide v2, p1, Lcom/bilibili/tv/ui/download/model/DownloadTask;->createTime:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    goto :goto_3
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 12
    check-cast p1, Lcom/bilibili/tv/ui/download/model/DownloadTask;

    invoke-virtual {p0, p1}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->compareTo(Lcom/bilibili/tv/ui/download/model/DownloadTask;)I

    move-result v0

    return v0
.end method

.method public getAudioQuality()I
    .locals 1

    .prologue
    .line 353
    iget v0, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->audioQuality:I

    return v0
.end method

.method public getAudioQualityName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->audioQualityName:Ljava/lang/String;

    return-object v0
.end method

.method public getAvid()J
    .locals 2

    .prologue
    .line 265
    iget-wide v0, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->avid:J

    return-wide v0
.end method

.method public getBvid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->bvid:Ljava/lang/String;

    return-object v0
.end method

.method public getCid()J
    .locals 2

    .prologue
    .line 157
    iget-wide v0, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->cid:J

    return-wide v0
.end method

.method public getCodec()Ljava/lang/String;
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->codec:Ljava/lang/String;

    return-object v0
.end method

.method public getCoverUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->coverUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getCreateTime()J
    .locals 2

    .prologue
    .line 305
    iget-wide v0, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->createTime:J

    return-wide v0
.end method

.method public getDownloadPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->downloadPath:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadedSize()J
    .locals 2

    .prologue
    .line 221
    iget-wide v0, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->downloadedSize:J

    return-wide v0
.end method

.method public getDuration()J
    .locals 2

    .prologue
    .line 205
    iget-wide v0, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->duration:J

    return-wide v0
.end method

.method public getEndTime()J
    .locals 2

    .prologue
    .line 329
    iget-wide v0, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->endTime:J

    return-wide v0
.end method

.method public getErrorCode()I
    .locals 1

    .prologue
    .line 377
    iget v0, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->errorCode:I

    return v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->errorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getFormattedDownloadedSize()Ljava/lang/String;
    .locals 2

    .prologue
    .line 412
    iget-wide v0, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->downloadedSize:J

    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->formatFileSize(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFormattedDuration()Ljava/lang/String;
    .locals 2

    .prologue
    .line 441
    iget-wide v0, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->duration:J

    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->formatDuration(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFormattedRemainingTime()Ljava/lang/String;
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-wide/16 v6, 0x3c

    .line 475
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getRemainingTime()J

    move-result-wide v0

    .line 476
    const-wide v2, 0x7fffffffffffffffL

    cmp-long v2, v0, v2

    if-nez v2, :cond_16

    .line 477
    const-string v0, "\u8ba1\u7b97\u4e2d..."

    .line 491
    :goto_15
    return-object v0

    .line 479
    :cond_16
    cmp-long v2, v0, v10

    if-gtz v2, :cond_1d

    .line 480
    const-string v0, "\u5373\u5c06\u5b8c\u6210"

    goto :goto_15

    .line 482
    :cond_1d
    div-long v2, v0, v6

    .line 483
    rem-long/2addr v0, v6

    .line 484
    cmp-long v4, v2, v6

    if-lez v4, :cond_3d

    .line 485
    div-long v0, v2, v6

    .line 486
    rem-long/2addr v2, v6

    .line 487
    const-string v4, "%d\u5c0f\u65f6%d\u5206\u949f"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v5, v8

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v5, v9

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_15

    .line 488
    :cond_3d
    cmp-long v4, v2, v10

    if-lez v4, :cond_50

    .line 489
    const-string v0, "%d\u5206\u949f"

    new-array v1, v9, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v8

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_15

    .line 491
    :cond_50
    const-string v2, "%d\u79d2"

    new-array v3, v9, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, v8

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_15
.end method

.method public getFormattedSize()Ljava/lang/String;
    .locals 2

    .prologue
    .line 405
    iget-wide v0, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->totalSize:J

    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->formatFileSize(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFormattedSpeed()Ljava/lang/String;
    .locals 4

    .prologue
    .line 419
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->speed:J

    invoke-static {v2, v3}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->formatFileSize(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPageIndex()I
    .locals 1

    .prologue
    .line 181
    iget v0, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->pageIndex:I

    return v0
.end method

.method public getPauseType()Lcom/bilibili/tv/ui/download/model/DownloadTask$PauseType;
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->pauseType:Lcom/bilibili/tv/ui/download/model/DownloadTask$PauseType;

    return-object v0
.end method

.method public getProgress()I
    .locals 1

    .prologue
    .line 233
    iget v0, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->progress:I

    return v0
.end method

.method public getQuality()I
    .locals 1

    .prologue
    .line 337
    iget v0, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->quality:I

    return v0
.end method

.method public getQualityName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->qualityName:Ljava/lang/String;

    return-object v0
.end method

.method public getRemainingTime()J
    .locals 6

    .prologue
    const-wide/16 v0, 0x0

    .line 460
    iget-wide v2, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->speed:J

    cmp-long v2, v2, v0

    if-gtz v2, :cond_e

    .line 461
    const-wide v0, 0x7fffffffffffffffL

    .line 468
    :cond_d
    :goto_d
    return-wide v0

    .line 463
    :cond_e
    iget-wide v2, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->totalSize:J

    iget-wide v4, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->downloadedSize:J

    sub-long/2addr v2, v4

    .line 465
    cmp-long v4, v2, v0

    if-lez v4, :cond_d

    .line 468
    iget-wide v0, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->speed:J

    div-long v0, v2, v0

    goto :goto_d
.end method

.method public getSegmentCount()I
    .locals 1

    .prologue
    .line 273
    iget v0, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->segmentCount:I

    return v0
.end method

.method public getSpeed()J
    .locals 2

    .prologue
    .line 241
    iget-wide v0, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->speed:J

    return-wide v0
.end method

.method public getStartTime()J
    .locals 2

    .prologue
    .line 321
    iget-wide v0, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->startTime:J

    return-wide v0
.end method

.method public getStatus()Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->status:Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;

    return-object v0
.end method

.method public getSubTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->subTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getTaskId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->taskId:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalSize()J
    .locals 2

    .prologue
    .line 213
    iget-wide v0, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->totalSize:J

    return-wide v0
.end method

.method public getUpName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->upName:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateTime()J
    .locals 2

    .prologue
    .line 313
    iget-wide v0, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->updateTime:J

    return-wide v0
.end method

.method public getVideoUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->videoUrl:Ljava/lang/String;

    return-object v0
.end method

.method public isManualPause()Z
    .locals 1

    .prologue
    .line 289
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->isManualPause:Z

    return v0
.end method

.method public setAudioQuality(I)V
    .locals 0

    .prologue
    .line 357
    iput p1, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->audioQuality:I

    .line 358
    return-void
.end method

.method public setAudioQualityName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 365
    iput-object p1, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->audioQualityName:Ljava/lang/String;

    .line 366
    return-void
.end method

.method public setAvid(J)V
    .locals 1

    .prologue
    .line 269
    iput-wide p1, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->avid:J

    .line 270
    return-void
.end method

.method public setBvid(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->bvid:Ljava/lang/String;

    .line 154
    return-void
.end method

.method public setCid(J)V
    .locals 1

    .prologue
    .line 161
    iput-wide p1, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->cid:J

    .line 162
    return-void
.end method

.method public setCodec(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 373
    iput-object p1, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->codec:Ljava/lang/String;

    .line 374
    return-void
.end method

.method public setCoverUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 193
    iput-object p1, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->coverUrl:Ljava/lang/String;

    .line 194
    return-void
.end method

.method public setCreateTime(J)V
    .locals 1

    .prologue
    .line 309
    iput-wide p1, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->createTime:J

    .line 310
    return-void
.end method

.method public setDownloadPath(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 253
    iput-object p1, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->downloadPath:Ljava/lang/String;

    .line 254
    return-void
.end method

.method public setDownloadedSize(J)V
    .locals 5

    .prologue
    .line 225
    iput-wide p1, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->downloadedSize:J

    .line 227
    iget-wide v0, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->totalSize:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_13

    .line 228
    const-wide/16 v0, 0x64

    mul-long/2addr v0, p1

    iget-wide v2, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->totalSize:J

    div-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->progress:I

    .line 230
    :cond_13
    return-void
.end method

.method public setDuration(J)V
    .locals 1

    .prologue
    .line 209
    iput-wide p1, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->duration:J

    .line 210
    return-void
.end method

.method public setEndTime(J)V
    .locals 1

    .prologue
    .line 333
    iput-wide p1, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->endTime:J

    .line 334
    return-void
.end method

.method public setErrorCode(I)V
    .locals 0

    .prologue
    .line 381
    iput p1, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->errorCode:I

    .line 382
    return-void
.end method

.method public setErrorMessage(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 389
    iput-object p1, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->errorMessage:Ljava/lang/String;

    .line 390
    return-void
.end method

.method public setManualPause(Z)V
    .locals 0

    .prologue
    .line 293
    iput-boolean p1, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->isManualPause:Z

    .line 294
    return-void
.end method

.method public setPageIndex(I)V
    .locals 0

    .prologue
    .line 185
    iput p1, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->pageIndex:I

    .line 186
    return-void
.end method

.method public setPauseType(Lcom/bilibili/tv/ui/download/model/DownloadTask$PauseType;)V
    .locals 0

    .prologue
    .line 301
    iput-object p1, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->pauseType:Lcom/bilibili/tv/ui/download/model/DownloadTask$PauseType;

    .line 302
    return-void
.end method

.method public setProgress(I)V
    .locals 0

    .prologue
    .line 237
    iput p1, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->progress:I

    .line 238
    return-void
.end method

.method public setQuality(I)V
    .locals 0

    .prologue
    .line 341
    iput p1, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->quality:I

    .line 342
    return-void
.end method

.method public setQualityName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 349
    iput-object p1, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->qualityName:Ljava/lang/String;

    .line 350
    return-void
.end method

.method public setSegmentCount(I)V
    .locals 0

    .prologue
    .line 277
    iput p1, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->segmentCount:I

    .line 278
    return-void
.end method

.method public setSpeed(J)V
    .locals 1

    .prologue
    .line 245
    iput-wide p1, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->speed:J

    .line 246
    return-void
.end method

.method public setStartTime(J)V
    .locals 1

    .prologue
    .line 325
    iput-wide p1, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->startTime:J

    .line 326
    return-void
.end method

.method public setStatus(Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;)V
    .locals 0

    .prologue
    .line 285
    iput-object p1, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->status:Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;

    .line 286
    return-void
.end method

.method public setSubTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 177
    iput-object p1, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->subTitle:Ljava/lang/String;

    .line 178
    return-void
.end method

.method public setTaskId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->taskId:Ljava/lang/String;

    .line 146
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 169
    iput-object p1, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->title:Ljava/lang/String;

    .line 170
    return-void
.end method

.method public setTotalSize(J)V
    .locals 1

    .prologue
    .line 217
    iput-wide p1, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->totalSize:J

    .line 218
    return-void
.end method

.method public setUpName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 201
    iput-object p1, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->upName:Ljava/lang/String;

    .line 202
    return-void
.end method

.method public setUpdateTime(J)V
    .locals 1

    .prologue
    .line 317
    iput-wide p1, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->updateTime:J

    .line 318
    return-void
.end method

.method public setVideoUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 261
    iput-object p1, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->videoUrl:Ljava/lang/String;

    .line 262
    return-void
.end method

.method public toContentValues()Landroid/content/ContentValues;
    .locals 4

    .prologue
    .line 560
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 561
    const-string v0, "task_id"

    iget-object v2, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->taskId:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    const-string v0, "bvid"

    iget-object v2, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->bvid:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    const-string v0, "cid"

    iget-wide v2, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->cid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 564
    const-string v0, "title"

    iget-object v2, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->title:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    const-string v0, "cover_url"

    iget-object v2, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->coverUrl:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    const-string v0, "subtitle"

    iget-object v2, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->subTitle:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    const-string v0, "page_index"

    iget v2, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->pageIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 568
    const-string v0, "up_name"

    iget-object v2, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->upName:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    const-string v0, "duration"

    iget-wide v2, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->duration:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 570
    const-string v0, "total_size"

    iget-wide v2, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->totalSize:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 571
    const-string v0, "downloaded_size"

    iget-wide v2, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->downloadedSize:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 572
    const-string v0, "progress"

    iget v2, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->progress:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 573
    const-string v0, "speed"

    iget-wide v2, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->speed:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 574
    const-string v0, "download_path"

    iget-object v2, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->downloadPath:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    const-string v0, "video_url"

    iget-object v2, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->videoUrl:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    const-string v0, "avid"

    iget-wide v2, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->avid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 577
    const-string v0, "status"

    iget-object v2, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->status:Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;

    invoke-virtual {v2}, Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;->getValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 578
    const-string v2, "is_manual_pause"

    iget-boolean v0, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->isManualPause:Z

    if-eqz v0, :cond_12b

    const/4 v0, 0x1

    :goto_ab
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 579
    const-string v0, "pause_type"

    iget-object v2, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->pauseType:Lcom/bilibili/tv/ui/download/model/DownloadTask$PauseType;

    invoke-virtual {v2}, Lcom/bilibili/tv/ui/download/model/DownloadTask$PauseType;->getValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 580
    const-string v0, "create_time"

    iget-wide v2, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->createTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 581
    const-string v0, "update_time"

    iget-wide v2, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->updateTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 582
    const-string v0, "start_time"

    iget-wide v2, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->startTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 583
    const-string v0, "end_time"

    iget-wide v2, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->endTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 584
    const-string v0, "quality"

    iget v2, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->quality:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 585
    const-string v0, "quality_name"

    iget-object v2, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->qualityName:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    const-string v0, "audio_quality"

    iget v2, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->audioQuality:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 587
    const-string v0, "audio_quality_name"

    iget-object v2, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->audioQualityName:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    const-string v0, "codec"

    iget-object v2, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->codec:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    const-string v0, "error_code"

    iget v2, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->errorCode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 590
    const-string v0, "error_message"

    iget-object v2, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->errorMessage:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    return-object v1

    .line 578
    :cond_12b
    const/4 v0, 0x0

    goto/16 :goto_ab
.end method

.method public toJson()Lcom/alibaba/fastjson/JSONObject;
    .locals 4

    .prologue
    .line 598
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 599
    const-string v1, "taskId"

    iget-object v2, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->taskId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 600
    const-string v1, "bvid"

    iget-object v2, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->bvid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 601
    const-string v1, "cid"

    iget-wide v2, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->cid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 602
    const-string v1, "title"

    iget-object v2, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->title:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 603
    const-string v1, "subTitle"

    iget-object v2, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->subTitle:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 604
    const-string v1, "pageIndex"

    iget v2, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->pageIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 605
    const-string v1, "coverUrl"

    iget-object v2, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->coverUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 606
    const-string v1, "upName"

    iget-object v2, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->upName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 607
    const-string v1, "duration"

    iget-wide v2, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->duration:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 608
    const-string v1, "totalSize"

    iget-wide v2, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->totalSize:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 609
    const-string v1, "downloadedSize"

    iget-wide v2, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->downloadedSize:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 610
    const-string v1, "progress"

    iget v2, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->progress:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 611
    const-string v1, "speed"

    iget-wide v2, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->speed:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 612
    const-string v1, "downloadPath"

    iget-object v2, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->downloadPath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 613
    const-string v1, "status"

    iget-object v2, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->status:Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;

    invoke-virtual {v2}, Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;->getValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 614
    const-string v1, "isManualPause"

    iget-boolean v2, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->isManualPause:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 615
    const-string v1, "pauseType"

    iget-object v2, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->pauseType:Lcom/bilibili/tv/ui/download/model/DownloadTask$PauseType;

    invoke-virtual {v2}, Lcom/bilibili/tv/ui/download/model/DownloadTask$PauseType;->getValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 616
    const-string v1, "createTime"

    iget-wide v2, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->createTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 617
    const-string v1, "updateTime"

    iget-wide v2, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->updateTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 618
    const-string v1, "startTime"

    iget-wide v2, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->startTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 619
    const-string v1, "endTime"

    iget-wide v2, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->endTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 620
    const-string v1, "quality"

    iget v2, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->quality:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 621
    const-string v1, "qualityName"

    iget-object v2, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->qualityName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 622
    const-string v1, "audioQuality"

    iget v2, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->audioQuality:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 623
    const-string v1, "audioQualityName"

    iget-object v2, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->audioQualityName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 624
    const-string v1, "codec"

    iget-object v2, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->codec:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 625
    const-string v1, "errorCode"

    iget v2, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->errorCode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 626
    const-string v1, "errorMessage"

    iget-object v2, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->errorMessage:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 627
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 682
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DownloadTask{taskId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->taskId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", title=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->status:Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", progress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->progress:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
