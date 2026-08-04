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

.field private pauseType:Lcom/bilibili/tv/ui/download/model/DownloadTask$PauseType;

.field private progress:I

.field private quality:I

.field private qualityName:Ljava/lang/String;

.field private segmentCount:I

.field private speed:J

.field private startTime:J

.field private status:Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;

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
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    sget-object v0, Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;->WAITING:Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;

    iput-object v0, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->status:Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;

    .line 130
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->isManualPause:Z

    .line 131
    sget-object v0, Lcom/bilibili/tv/ui/download/model/DownloadTask$PauseType;->NONE:Lcom/bilibili/tv/ui/download/model/DownloadTask$PauseType;

    iput-object v0, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->pauseType:Lcom/bilibili/tv/ui/download/model/DownloadTask$PauseType;

    .line 132
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->createTime:J

    .line 133
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->updateTime:J

    .line 134
    return-void
.end method

.method public static formatDuration(J)Ljava/lang/String;
    .locals 8

    .prologue
    const-wide/16 v2, 0x3c

    .line 430
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gtz v0, :cond_b

    .line 431
    const-string v0, "00:00"

    .line 435
    :goto_a
    return-object v0

    .line 433
    :cond_b
    div-long v0, p0, v2

    .line 434
    rem-long v2, p0, v2

    .line 435
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

    .line 408
    const-wide/16 v0, 0x400

    cmp-long v0, p0, v0

    if-gez v0, :cond_1c

    .line 409
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " B"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 415
    :goto_1b
    return-object v0

    .line 410
    :cond_1c
    const-wide/32 v0, 0x100000

    cmp-long v0, p0, v0

    if-gez v0, :cond_36

    .line 411
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

    .line 412
    :cond_36
    const-wide/32 v0, 0x40000000

    cmp-long v0, p0, v0

    if-gez v0, :cond_50

    .line 413
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

    .line 415
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

    .line 476
    new-instance v1, Lcom/bilibili/tv/ui/download/model/DownloadTask;

    invoke-direct {v1}, Lcom/bilibili/tv/ui/download/model/DownloadTask;-><init>()V

    .line 477
    const-string v2, "task_id"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->setTaskId(Ljava/lang/String;)V

    .line 478
    const-string v2, "bvid"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->setBvid(Ljava/lang/String;)V

    .line 479
    const-string v2, "cid"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->setCid(J)V

    .line 480
    const-string v2, "title"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->setTitle(Ljava/lang/String;)V

    .line 481
    const-string v2, "cover_url"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->setCoverUrl(Ljava/lang/String;)V

    .line 482
    const-string v2, "up_name"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->setUpName(Ljava/lang/String;)V

    .line 483
    const-string v2, "duration"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->setDuration(J)V

    .line 484
    const-string v2, "total_size"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->setTotalSize(J)V

    .line 485
    const-string v2, "downloaded_size"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->setDownloadedSize(J)V

    .line 486
    const-string v2, "progress"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->setProgress(I)V

    .line 487
    const-string v2, "speed"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->setSpeed(J)V

    .line 488
    const-string v2, "download_path"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->setDownloadPath(Ljava/lang/String;)V

    .line 491
    const-string v2, "video_url"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 492
    if-eq v2, v4, :cond_b8

    invoke-interface {p0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_b8

    .line 493
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->setVideoUrl(Ljava/lang/String;)V

    .line 496
    :cond_b8
    const-string v2, "avid"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 497
    if-eq v2, v4, :cond_cd

    invoke-interface {p0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_cd

    .line 498
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->setAvid(J)V

    .line 501
    :cond_cd
    const-string v2, "status"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;->fromValue(I)Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->setStatus(Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;)V

    .line 502
    const-string v2, "is_manual_pause"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ne v2, v0, :cond_18e

    :goto_ea
    invoke-virtual {v1, v0}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->setManualPause(Z)V

    .line 503
    const-string v0, "pause_type"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Lcom/bilibili/tv/ui/download/model/DownloadTask$PauseType;->fromValue(I)Lcom/bilibili/tv/ui/download/model/DownloadTask$PauseType;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->setPauseType(Lcom/bilibili/tv/ui/download/model/DownloadTask$PauseType;)V

    .line 504
    const-string v0, "create_time"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->setCreateTime(J)V

    .line 505
    const-string v0, "update_time"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->setUpdateTime(J)V

    .line 506
    const-string v0, "start_time"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->setStartTime(J)V

    .line 507
    const-string v0, "end_time"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->setEndTime(J)V

    .line 508
    const-string v0, "quality"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->setQuality(I)V

    .line 509
    const-string v0, "quality_name"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->setQualityName(Ljava/lang/String;)V

    .line 510
    const-string v0, "audio_quality"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->setAudioQuality(I)V

    .line 511
    const-string v0, "audio_quality_name"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->setAudioQualityName(Ljava/lang/String;)V

    .line 512
    const-string v0, "codec"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->setCodec(Ljava/lang/String;)V

    .line 513
    const-string v0, "error_code"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->setErrorCode(I)V

    .line 514
    const-string v0, "error_message"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->setErrorMessage(Ljava/lang/String;)V

    .line 515
    return-object v1

    .line 502
    :cond_18e
    const/4 v0, 0x0

    goto/16 :goto_ea
.end method

.method public static generateTaskId(Ljava/lang/String;J)Ljava/lang/String;
    .locals 3

    .prologue
    .line 380
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

    .line 618
    if-nez p1, :cond_5

    .line 634
    :goto_4
    :pswitch_4
    return v0

    .line 622
    :cond_5
    sget-object v1, Lcom/bilibili/tv/ui/download/model/DownloadTask$1;->$SwitchMap$com$bilibili$tv$ui$download$model$DownloadTask$Status:[I

    invoke-virtual {p1}, Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1c

    goto :goto_4

    .line 624
    :pswitch_11
    const/4 v0, 0x1

    goto :goto_4

    .line 626
    :pswitch_13
    const/16 v0, 0x32

    goto :goto_4

    .line 628
    :pswitch_16
    const/16 v0, 0xa

    goto :goto_4

    .line 630
    :pswitch_19
    const/16 v0, 0x14

    goto :goto_4

    .line 622
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
    .line 596
    if-nez p1, :cond_4

    .line 597
    const/4 v0, 0x1

    .line 610
    :goto_3
    return v0

    .line 601
    :cond_4
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->status:Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;

    invoke-direct {p0, v0}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getStatusPriority(Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;)I

    move-result v0

    .line 602
    iget-object v1, p1, Lcom/bilibili/tv/ui/download/model/DownloadTask;->status:Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;

    invoke-direct {p0, v1}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getStatusPriority(Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;)I

    move-result v1

    .line 605
    if-eq v0, v1, :cond_14

    .line 606
    sub-int/2addr v0, v1

    goto :goto_3

    .line 610
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
    .line 335
    iget v0, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->audioQuality:I

    return v0
.end method

.method public getAudioQualityName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->audioQualityName:Ljava/lang/String;

    return-object v0
.end method

.method public getAvid()J
    .locals 2

    .prologue
    .line 247
    iget-wide v0, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->avid:J

    return-wide v0
.end method

.method public getBvid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->bvid:Ljava/lang/String;

    return-object v0
.end method

.method public getCid()J
    .locals 2

    .prologue
    .line 155
    iget-wide v0, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->cid:J

    return-wide v0
.end method

.method public getCodec()Ljava/lang/String;
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->codec:Ljava/lang/String;

    return-object v0
.end method

.method public getCoverUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->coverUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getCreateTime()J
    .locals 2

    .prologue
    .line 287
    iget-wide v0, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->createTime:J

    return-wide v0
.end method

.method public getDownloadPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->downloadPath:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadedSize()J
    .locals 2

    .prologue
    .line 203
    iget-wide v0, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->downloadedSize:J

    return-wide v0
.end method

.method public getDuration()J
    .locals 2

    .prologue
    .line 187
    iget-wide v0, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->duration:J

    return-wide v0
.end method

.method public getEndTime()J
    .locals 2

    .prologue
    .line 311
    iget-wide v0, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->endTime:J

    return-wide v0
.end method

.method public getErrorCode()I
    .locals 1

    .prologue
    .line 359
    iget v0, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->errorCode:I

    return v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->errorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getFormattedDownloadedSize()Ljava/lang/String;
    .locals 2

    .prologue
    .line 394
    iget-wide v0, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->downloadedSize:J

    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->formatFileSize(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFormattedDuration()Ljava/lang/String;
    .locals 2

    .prologue
    .line 423
    iget-wide v0, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->duration:J

    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->formatDuration(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFormattedRemainingTime()Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const-wide/16 v6, 0x3c

    .line 453
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getRemainingTime()J

    move-result-wide v0

    .line 454
    const-wide v2, 0x7fffffffffffffffL

    cmp-long v2, v0, v2

    if-nez v2, :cond_14

    .line 455
    const-string v0, "\u8ba1\u7b97\u4e2d..."

    .line 466
    :goto_13
    return-object v0

    .line 457
    :cond_14
    div-long v2, v0, v6

    .line 458
    rem-long/2addr v0, v6

    .line 459
    cmp-long v4, v2, v6

    if-lez v4, :cond_34

    .line 460
    div-long v0, v2, v6

    .line 461
    rem-long/2addr v2, v6

    .line 462
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

    goto :goto_13

    .line 463
    :cond_34
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_49

    .line 464
    const-string v0, "%d\u5206\u949f"

    new-array v1, v9, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v8

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_13

    .line 466
    :cond_49
    const-string v2, "%d\u79d2"

    new-array v3, v9, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, v8

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_13
.end method

.method public getFormattedSize()Ljava/lang/String;
    .locals 2

    .prologue
    .line 387
    iget-wide v0, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->totalSize:J

    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->formatFileSize(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFormattedSpeed()Ljava/lang/String;
    .locals 4

    .prologue
    .line 401
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

.method public getPauseType()Lcom/bilibili/tv/ui/download/model/DownloadTask$PauseType;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->pauseType:Lcom/bilibili/tv/ui/download/model/DownloadTask$PauseType;

    return-object v0
.end method

.method public getProgress()I
    .locals 1

    .prologue
    .line 215
    iget v0, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->progress:I

    return v0
.end method

.method public getQuality()I
    .locals 1

    .prologue
    .line 319
    iget v0, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->quality:I

    return v0
.end method

.method public getQualityName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->qualityName:Ljava/lang/String;

    return-object v0
.end method

.method public getRemainingTime()J
    .locals 4

    .prologue
    .line 442
    iget-wide v0, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->speed:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_e

    .line 443
    const-wide v0, 0x7fffffffffffffffL

    .line 446
    :goto_d
    return-wide v0

    .line 445
    :cond_e
    iget-wide v0, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->totalSize:J

    iget-wide v2, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->downloadedSize:J

    sub-long/2addr v0, v2

    .line 446
    iget-wide v2, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->speed:J

    div-long/2addr v0, v2

    goto :goto_d
.end method

.method public getSegmentCount()I
    .locals 1

    .prologue
    .line 255
    iget v0, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->segmentCount:I

    return v0
.end method

.method public getSpeed()J
    .locals 2

    .prologue
    .line 223
    iget-wide v0, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->speed:J

    return-wide v0
.end method

.method public getStartTime()J
    .locals 2

    .prologue
    .line 303
    iget-wide v0, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->startTime:J

    return-wide v0
.end method

.method public getStatus()Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->status:Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;

    return-object v0
.end method

.method public getTaskId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->taskId:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalSize()J
    .locals 2

    .prologue
    .line 195
    iget-wide v0, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->totalSize:J

    return-wide v0
.end method

.method public getUpName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->upName:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateTime()J
    .locals 2

    .prologue
    .line 295
    iget-wide v0, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->updateTime:J

    return-wide v0
.end method

.method public getVideoUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->videoUrl:Ljava/lang/String;

    return-object v0
.end method

.method public isManualPause()Z
    .locals 1

    .prologue
    .line 271
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->isManualPause:Z

    return v0
.end method

.method public setAudioQuality(I)V
    .locals 0

    .prologue
    .line 339
    iput p1, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->audioQuality:I

    .line 340
    return-void
.end method

.method public setAudioQualityName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 347
    iput-object p1, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->audioQualityName:Ljava/lang/String;

    .line 348
    return-void
.end method

.method public setAvid(J)V
    .locals 1

    .prologue
    .line 251
    iput-wide p1, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->avid:J

    .line 252
    return-void
.end method

.method public setBvid(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->bvid:Ljava/lang/String;

    .line 152
    return-void
.end method

.method public setCid(J)V
    .locals 1

    .prologue
    .line 159
    iput-wide p1, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->cid:J

    .line 160
    return-void
.end method

.method public setCodec(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 355
    iput-object p1, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->codec:Ljava/lang/String;

    .line 356
    return-void
.end method

.method public setCoverUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 175
    iput-object p1, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->coverUrl:Ljava/lang/String;

    .line 176
    return-void
.end method

.method public setCreateTime(J)V
    .locals 1

    .prologue
    .line 291
    iput-wide p1, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->createTime:J

    .line 292
    return-void
.end method

.method public setDownloadPath(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 235
    iput-object p1, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->downloadPath:Ljava/lang/String;

    .line 236
    return-void
.end method

.method public setDownloadedSize(J)V
    .locals 5

    .prologue
    .line 207
    iput-wide p1, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->downloadedSize:J

    .line 209
    iget-wide v0, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->totalSize:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_13

    .line 210
    const-wide/16 v0, 0x64

    mul-long/2addr v0, p1

    iget-wide v2, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->totalSize:J

    div-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->progress:I

    .line 212
    :cond_13
    return-void
.end method

.method public setDuration(J)V
    .locals 1

    .prologue
    .line 191
    iput-wide p1, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->duration:J

    .line 192
    return-void
.end method

.method public setEndTime(J)V
    .locals 1

    .prologue
    .line 315
    iput-wide p1, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->endTime:J

    .line 316
    return-void
.end method

.method public setErrorCode(I)V
    .locals 0

    .prologue
    .line 363
    iput p1, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->errorCode:I

    .line 364
    return-void
.end method

.method public setErrorMessage(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 371
    iput-object p1, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->errorMessage:Ljava/lang/String;

    .line 372
    return-void
.end method

.method public setManualPause(Z)V
    .locals 0

    .prologue
    .line 275
    iput-boolean p1, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->isManualPause:Z

    .line 276
    return-void
.end method

.method public setPauseType(Lcom/bilibili/tv/ui/download/model/DownloadTask$PauseType;)V
    .locals 0

    .prologue
    .line 283
    iput-object p1, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->pauseType:Lcom/bilibili/tv/ui/download/model/DownloadTask$PauseType;

    .line 284
    return-void
.end method

.method public setProgress(I)V
    .locals 0

    .prologue
    .line 219
    iput p1, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->progress:I

    .line 220
    return-void
.end method

.method public setQuality(I)V
    .locals 0

    .prologue
    .line 323
    iput p1, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->quality:I

    .line 324
    return-void
.end method

.method public setQualityName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 331
    iput-object p1, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->qualityName:Ljava/lang/String;

    .line 332
    return-void
.end method

.method public setSegmentCount(I)V
    .locals 0

    .prologue
    .line 259
    iput p1, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->segmentCount:I

    .line 260
    return-void
.end method

.method public setSpeed(J)V
    .locals 1

    .prologue
    .line 227
    iput-wide p1, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->speed:J

    .line 228
    return-void
.end method

.method public setStartTime(J)V
    .locals 1

    .prologue
    .line 307
    iput-wide p1, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->startTime:J

    .line 308
    return-void
.end method

.method public setStatus(Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;)V
    .locals 0

    .prologue
    .line 267
    iput-object p1, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->status:Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;

    .line 268
    return-void
.end method

.method public setTaskId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->taskId:Ljava/lang/String;

    .line 144
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 167
    iput-object p1, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->title:Ljava/lang/String;

    .line 168
    return-void
.end method

.method public setTotalSize(J)V
    .locals 1

    .prologue
    .line 199
    iput-wide p1, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->totalSize:J

    .line 200
    return-void
.end method

.method public setUpName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 183
    iput-object p1, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->upName:Ljava/lang/String;

    .line 184
    return-void
.end method

.method public setUpdateTime(J)V
    .locals 1

    .prologue
    .line 299
    iput-wide p1, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->updateTime:J

    .line 300
    return-void
.end method

.method public setVideoUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 243
    iput-object p1, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->videoUrl:Ljava/lang/String;

    .line 244
    return-void
.end method

.method public toContentValues()Landroid/content/ContentValues;
    .locals 4

    .prologue
    .line 522
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 523
    const-string v0, "task_id"

    iget-object v2, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->taskId:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    const-string v0, "bvid"

    iget-object v2, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->bvid:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    const-string v0, "cid"

    iget-wide v2, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->cid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 526
    const-string v0, "title"

    iget-object v2, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->title:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    const-string v0, "cover_url"

    iget-object v2, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->coverUrl:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    const-string v0, "up_name"

    iget-object v2, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->upName:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    const-string v0, "duration"

    iget-wide v2, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->duration:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 530
    const-string v0, "total_size"

    iget-wide v2, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->totalSize:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 531
    const-string v0, "downloaded_size"

    iget-wide v2, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->downloadedSize:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 532
    const-string v0, "progress"

    iget v2, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->progress:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 533
    const-string v0, "speed"

    iget-wide v2, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->speed:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 534
    const-string v0, "download_path"

    iget-object v2, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->downloadPath:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    const-string v0, "video_url"

    iget-object v2, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->videoUrl:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    const-string v0, "avid"

    iget-wide v2, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->avid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 537
    const-string v0, "status"

    iget-object v2, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->status:Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;

    invoke-virtual {v2}, Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;->getValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 538
    const-string v2, "is_manual_pause"

    iget-boolean v0, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->isManualPause:Z

    if-eqz v0, :cond_119

    const/4 v0, 0x1

    :goto_99
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 539
    const-string v0, "pause_type"

    iget-object v2, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->pauseType:Lcom/bilibili/tv/ui/download/model/DownloadTask$PauseType;

    invoke-virtual {v2}, Lcom/bilibili/tv/ui/download/model/DownloadTask$PauseType;->getValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 540
    const-string v0, "create_time"

    iget-wide v2, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->createTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 541
    const-string v0, "update_time"

    iget-wide v2, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->updateTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 542
    const-string v0, "start_time"

    iget-wide v2, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->startTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 543
    const-string v0, "end_time"

    iget-wide v2, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->endTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 544
    const-string v0, "quality"

    iget v2, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->quality:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 545
    const-string v0, "quality_name"

    iget-object v2, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->qualityName:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    const-string v0, "audio_quality"

    iget v2, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->audioQuality:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 547
    const-string v0, "audio_quality_name"

    iget-object v2, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->audioQualityName:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    const-string v0, "codec"

    iget-object v2, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->codec:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    const-string v0, "error_code"

    iget v2, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->errorCode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 550
    const-string v0, "error_message"

    iget-object v2, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->errorMessage:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    return-object v1

    .line 538
    :cond_119
    const/4 v0, 0x0

    goto/16 :goto_99
.end method

.method public toJson()Lcom/alibaba/fastjson/JSONObject;
    .locals 4

    .prologue
    .line 558
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 559
    const-string v1, "taskId"

    iget-object v2, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->taskId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 560
    const-string v1, "bvid"

    iget-object v2, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->bvid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 561
    const-string v1, "cid"

    iget-wide v2, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->cid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 562
    const-string v1, "title"

    iget-object v2, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->title:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 563
    const-string v1, "coverUrl"

    iget-object v2, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->coverUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 564
    const-string v1, "upName"

    iget-object v2, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->upName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 565
    const-string v1, "duration"

    iget-wide v2, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->duration:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 566
    const-string v1, "totalSize"

    iget-wide v2, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->totalSize:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 567
    const-string v1, "downloadedSize"

    iget-wide v2, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->downloadedSize:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 568
    const-string v1, "progress"

    iget v2, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->progress:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 569
    const-string v1, "speed"

    iget-wide v2, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->speed:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 570
    const-string v1, "downloadPath"

    iget-object v2, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->downloadPath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 571
    const-string v1, "status"

    iget-object v2, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->status:Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;

    invoke-virtual {v2}, Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;->getValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 572
    const-string v1, "isManualPause"

    iget-boolean v2, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->isManualPause:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 573
    const-string v1, "pauseType"

    iget-object v2, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->pauseType:Lcom/bilibili/tv/ui/download/model/DownloadTask$PauseType;

    invoke-virtual {v2}, Lcom/bilibili/tv/ui/download/model/DownloadTask$PauseType;->getValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 574
    const-string v1, "createTime"

    iget-wide v2, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->createTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 575
    const-string v1, "updateTime"

    iget-wide v2, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->updateTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 576
    const-string v1, "startTime"

    iget-wide v2, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->startTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 577
    const-string v1, "endTime"

    iget-wide v2, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->endTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 578
    const-string v1, "quality"

    iget v2, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->quality:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 579
    const-string v1, "qualityName"

    iget-object v2, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->qualityName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 580
    const-string v1, "audioQuality"

    iget v2, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->audioQuality:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 581
    const-string v1, "audioQualityName"

    iget-object v2, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->audioQualityName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 582
    const-string v1, "codec"

    iget-object v2, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->codec:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 583
    const-string v1, "errorCode"

    iget v2, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->errorCode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 584
    const-string v1, "errorMessage"

    iget-object v2, p0, Lcom/bilibili/tv/ui/download/model/DownloadTask;->errorMessage:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 585
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 640
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
