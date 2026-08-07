.class public Lcom/bilibili/tv/ui/download/db/DownloadDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DownloadDatabaseHelper.java"


# static fields
.field private static final COLUMNS:[Ljava/lang/String;

.field private static final DATABASE_NAME:Ljava/lang/String; = "download_tasks.db"

.field private static final DATABASE_VERSION:I = 0x5

.field private static final TABLE_TASKS:Ljava/lang/String; = "download_tasks"

.field private static final TAG:Ljava/lang/String; = "DownloadDatabase"

.field private static instance:Lcom/bilibili/tv/ui/download/db/DownloadDatabaseHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 28
    const/16 v0, 0x1f

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "task_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "bvid"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "cid"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "subtitle"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "page_index"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "total_page_count"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "cover_url"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "up_name"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "total_size"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "downloaded_size"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "progress"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "speed"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "download_path"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "video_url"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "avid"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "status"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "is_manual_pause"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "pause_type"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "create_time"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "update_time"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "start_time"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "end_time"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "quality"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "quality_name"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "audio_quality"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "audio_quality_name"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "codec"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "error_code"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "error_message"

    aput-object v2, v0, v1

    sput-object v0, Lcom/bilibili/tv/ui/download/db/DownloadDatabaseHelper;->COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 55
    const-string v0, "download_tasks.db"

    const/4 v1, 0x0

    const/4 v2, 0x5

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 56
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/bilibili/tv/ui/download/db/DownloadDatabaseHelper;
    .locals 3

    .prologue
    .line 45
    const-class v1, Lcom/bilibili/tv/ui/download/db/DownloadDatabaseHelper;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/bilibili/tv/ui/download/db/DownloadDatabaseHelper;->instance:Lcom/bilibili/tv/ui/download/db/DownloadDatabaseHelper;

    if-nez v0, :cond_12

    .line 46
    new-instance v0, Lcom/bilibili/tv/ui/download/db/DownloadDatabaseHelper;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/bilibili/tv/ui/download/db/DownloadDatabaseHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/bilibili/tv/ui/download/db/DownloadDatabaseHelper;->instance:Lcom/bilibili/tv/ui/download/db/DownloadDatabaseHelper;

    .line 48
    :cond_12
    sget-object v0, Lcom/bilibili/tv/ui/download/db/DownloadDatabaseHelper;->instance:Lcom/bilibili/tv/ui/download/db/DownloadDatabaseHelper;
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_16

    monitor-exit v1

    return-object v0

    .line 45
    :catchall_16
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public deleteAllTasks()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 451
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/db/DownloadDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 452
    const-string v1, "download_tasks"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public deleteCompletedTasks()I
    .locals 5

    .prologue
    .line 529
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/db/DownloadDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 531
    const-string v1, "status = ?"

    .line 532
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    sget-object v4, Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;->COMPLETED:Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;

    invoke-virtual {v4}, Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;->getValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 534
    const-string v3, "download_tasks"

    invoke-virtual {v0, v3, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public deleteFailedTasks()I
    .locals 5

    .prologue
    .line 541
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/db/DownloadDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 543
    const-string v1, "status = ?"

    .line 544
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    sget-object v4, Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;->FAILED:Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;

    invoke-virtual {v4}, Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;->getValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 546
    const-string v3, "download_tasks"

    invoke-virtual {v0, v3, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public deleteTask(Ljava/lang/String;)I
    .locals 4

    .prologue
    .line 202
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/db/DownloadDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 204
    const-string v1, "task_id = ?"

    .line 205
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 207
    const-string v3, "download_tasks"

    invoke-virtual {v0, v3, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 208
    if-lez v0, :cond_2d

    .line 209
    const-string v1, "DownloadDatabase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5220\u9664\u4e0b\u8f7d\u4efb\u52a1\u6210\u529f: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    :goto_2c
    return v0

    .line 211
    :cond_2d
    const-string v1, "DownloadDatabase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5220\u9664\u4e0b\u8f7d\u4efb\u52a1\u5931\u8d25: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2c
.end method

.method public getAllTasks()Ljava/util/List;
    .locals 9
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
    const/4 v3, 0x0

    .line 252
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 253
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/db/DownloadDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 255
    const-string v1, "download_tasks"

    sget-object v2, Lcom/bilibili/tv/ui/download/db/DownloadDatabaseHelper;->COLUMNS:[Ljava/lang/String;

    const-string v7, "create_time DESC"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 258
    if-eqz v0, :cond_2a

    .line 259
    :goto_19
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 260
    invoke-static {v0}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->fromCursor(Landroid/database/Cursor;)Lcom/bilibili/tv/ui/download/model/DownloadTask;

    move-result-object v1

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_19

    .line 262
    :cond_27
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 265
    :cond_2a
    return-object v8
.end method

.method public getCompletedCount()I
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 506
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/db/DownloadDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 508
    const-string v2, "SELECT COUNT(*) FROM download_tasks WHERE status = ?"

    .line 510
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    sget-object v4, Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;->COMPLETED:Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;

    invoke-virtual {v4}, Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;->getValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 512
    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 515
    if-eqz v1, :cond_29

    .line 516
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_26

    .line 517
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 519
    :cond_26
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 522
    :cond_29
    return v0
.end method

.method public getCompletedTasks()Ljava/util/List;
    .locals 9
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
    const/4 v5, 0x0

    .line 322
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 323
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/db/DownloadDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 325
    const-string v3, "status = ?"

    .line 326
    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v2, Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;->COMPLETED:Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;

    invoke-virtual {v2}, Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;->getValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    .line 328
    const-string v1, "download_tasks"

    sget-object v2, Lcom/bilibili/tv/ui/download/db/DownloadDatabaseHelper;->COLUMNS:[Ljava/lang/String;

    const-string v7, "end_time DESC, create_time DESC"

    move-object v6, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 331
    if-eqz v0, :cond_3a

    .line 332
    :goto_29
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_37

    .line 333
    invoke-static {v0}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->fromCursor(Landroid/database/Cursor;)Lcom/bilibili/tv/ui/download/model/DownloadTask;

    move-result-object v1

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_29

    .line 335
    :cond_37
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 338
    :cond_3a
    return-object v8
.end method

.method public getDownloadingCount()I
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 479
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/db/DownloadDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 481
    const-string v2, "SELECT COUNT(*) FROM download_tasks WHERE status IN (?, ?, ?)"

    .line 483
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    sget-object v4, Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;->WAITING:Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;

    .line 484
    invoke-virtual {v4}, Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;->getValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v4, 0x1

    sget-object v5, Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;->DOWNLOADING:Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;

    .line 485
    invoke-virtual {v5}, Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;->getValue()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    sget-object v5, Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;->PAUSED:Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;

    .line 486
    invoke-virtual {v5}, Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;->getValue()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 489
    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 492
    if-eqz v1, :cond_43

    .line 493
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_40

    .line 494
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 496
    :cond_40
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 499
    :cond_43
    return v0
.end method

.method public getDownloadingTasks()Ljava/util/List;
    .locals 9
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
    const/4 v5, 0x0

    .line 295
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 296
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/db/DownloadDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 298
    const-string v3, "status IN (?, ?, ?)"

    .line 299
    const/4 v1, 0x3

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v2, Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;->WAITING:Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;

    .line 300
    invoke-virtual {v2}, Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;->getValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;->DOWNLOADING:Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;

    .line 301
    invoke-virtual {v2}, Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;->getValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;->PAUSED:Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;

    .line 302
    invoke-virtual {v2}, Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;->getValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    .line 305
    const-string v1, "download_tasks"

    sget-object v2, Lcom/bilibili/tv/ui/download/db/DownloadDatabaseHelper;->COLUMNS:[Ljava/lang/String;

    const-string v7, "create_time DESC"

    move-object v6, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 308
    if-eqz v0, :cond_54

    .line 309
    :goto_43
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_51

    .line 310
    invoke-static {v0}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->fromCursor(Landroid/database/Cursor;)Lcom/bilibili/tv/ui/download/model/DownloadTask;

    move-result-object v1

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_43

    .line 312
    :cond_51
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 315
    :cond_54
    return-object v8
.end method

.method public getFailedTasks()Ljava/util/List;
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
    .line 345
    sget-object v0, Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;->FAILED:Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/download/db/DownloadDatabaseHelper;->getTasksByStatus(Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTask(Ljava/lang/String;)Lcom/bilibili/tv/ui/download/model/DownloadTask;
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 221
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/db/DownloadDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 223
    const-string v3, "task_id = ?"

    .line 224
    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v4, v1

    .line 226
    const-string v1, "download_tasks"

    sget-object v2, Lcom/bilibili/tv/ui/download/db/DownloadDatabaseHelper;->COLUMNS:[Ljava/lang/String;

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 230
    if-eqz v0, :cond_26

    .line 231
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 232
    invoke-static {v0}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->fromCursor(Landroid/database/Cursor;)Lcom/bilibili/tv/ui/download/model/DownloadTask;

    move-result-object v5

    .line 234
    :cond_23
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 237
    :cond_26
    return-object v5
.end method

.method public getTaskByBvidAndCid(Ljava/lang/String;J)Lcom/bilibili/tv/ui/download/model/DownloadTask;
    .locals 2

    .prologue
    .line 244
    invoke-static {p1, p2, p3}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->generateTaskId(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    .line 245
    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/download/db/DownloadDatabaseHelper;->getTask(Ljava/lang/String;)Lcom/bilibili/tv/ui/download/model/DownloadTask;

    move-result-object v0

    return-object v0
.end method

.method public getTaskCount()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 459
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/db/DownloadDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 461
    const-string v2, "SELECT COUNT(*) FROM download_tasks"

    .line 462
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 465
    if-eqz v1, :cond_1b

    .line 466
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 467
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 469
    :cond_18
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 472
    :cond_1b
    return v0
.end method

.method public getTasksByPauseType(Lcom/bilibili/tv/ui/download/model/DownloadTask$PauseType;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bilibili/tv/ui/download/model/DownloadTask$PauseType;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/tv/ui/download/model/DownloadTask;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 352
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 353
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/db/DownloadDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 355
    const-string v3, "pause_type = ? AND status = ?"

    .line 356
    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 357
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/download/model/DownloadTask$PauseType;->getValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;->PAUSED:Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;

    .line 358
    invoke-virtual {v2}, Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;->getValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    .line 361
    const-string v1, "download_tasks"

    sget-object v2, Lcom/bilibili/tv/ui/download/db/DownloadDatabaseHelper;->COLUMNS:[Ljava/lang/String;

    const-string v7, "create_time DESC"

    move-object v6, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 364
    if-eqz v0, :cond_45

    .line 365
    :goto_34
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_42

    .line 366
    invoke-static {v0}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->fromCursor(Landroid/database/Cursor;)Lcom/bilibili/tv/ui/download/model/DownloadTask;

    move-result-object v1

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_34

    .line 368
    :cond_42
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 371
    :cond_45
    return-object v8
.end method

.method public getTasksByStatus(Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/tv/ui/download/model/DownloadTask;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 272
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 273
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/db/DownloadDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 275
    const-string v3, "status = ?"

    .line 276
    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;->getValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    .line 278
    const-string v1, "download_tasks"

    sget-object v2, Lcom/bilibili/tv/ui/download/db/DownloadDatabaseHelper;->COLUMNS:[Ljava/lang/String;

    const-string v7, "create_time DESC"

    move-object v6, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 281
    if-eqz v0, :cond_38

    .line 282
    :goto_27
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_35

    .line 283
    invoke-static {v0}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->fromCursor(Landroid/database/Cursor;)Lcom/bilibili/tv/ui/download/model/DownloadTask;

    move-result-object v1

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_27

    .line 285
    :cond_35
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 288
    :cond_38
    return-object v8
.end method

.method public insertTask(Lcom/bilibili/tv/ui/download/model/DownloadTask;)J
    .locals 5

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/db/DownloadDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 144
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->toContentValues()Landroid/content/ContentValues;

    move-result-object v1

    .line 146
    const-string v2, "download_tasks"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 147
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_32

    .line 148
    const-string v2, "DownloadDatabase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u63d2\u5165\u4e0b\u8f7d\u4efb\u52a1\u6210\u529f: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getTaskId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :goto_31
    return-wide v0

    .line 150
    :cond_32
    const-string v2, "DownloadDatabase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u63d2\u5165\u4e0b\u8f7d\u4efb\u52a1\u5931\u8d25: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getTaskId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_31
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .prologue
    .line 60
    const-string v0, "DownloadDatabase"

    const-string v1, "\u521b\u5efa\u4e0b\u8f7d\u4efb\u52a1\u6570\u636e\u5e93"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    const-string v0, "CREATE TABLE download_tasks (task_id TEXT PRIMARY KEY,bvid TEXT NOT NULL,cid INTEGER NOT NULL,title TEXT NOT NULL,subtitle TEXT,page_index INTEGER DEFAULT 0,total_page_count INTEGER DEFAULT 0,cover_url TEXT,up_name TEXT,duration INTEGER DEFAULT 0,total_size INTEGER DEFAULT 0,downloaded_size INTEGER DEFAULT 0,progress INTEGER DEFAULT 0,speed INTEGER DEFAULT 0,download_path TEXT,video_url TEXT,avid INTEGER DEFAULT 0,status INTEGER DEFAULT 0,is_manual_pause INTEGER DEFAULT 0,pause_type INTEGER DEFAULT 0,create_time INTEGER,update_time INTEGER,start_time INTEGER,end_time INTEGER,quality INTEGER,quality_name TEXT,audio_quality INTEGER,audio_quality_name TEXT,codec TEXT,error_code INTEGER DEFAULT 0,error_message TEXT)"

    .line 96
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 99
    const-string v0, "CREATE INDEX idx_bvid ON download_tasks(bvid)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 100
    const-string v0, "CREATE INDEX idx_cid ON download_tasks(cid)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 101
    const-string v0, "CREATE INDEX idx_status ON download_tasks(status)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 102
    const-string v0, "CREATE INDEX idx_create_time ON download_tasks(create_time)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 104
    const-string v0, "DownloadDatabase"

    const-string v1, "\u6570\u636e\u5e93\u521b\u5efa\u5b8c\u6210"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3

    .prologue
    .line 109
    const-string v0, "DownloadDatabase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6570\u636e\u5e93\u5347\u7ea7: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    const/4 v0, 0x2

    if-ge p2, v0, :cond_36

    .line 113
    const-string v0, "DownloadDatabase"

    const-string v1, "\u6dfb\u52a0video_url\u548cavid\u5217"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    const-string v0, "ALTER TABLE download_tasks ADD COLUMN video_url TEXT"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 115
    const-string v0, "ALTER TABLE download_tasks ADD COLUMN avid INTEGER DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 119
    :cond_36
    const/4 v0, 0x3

    if-ge p2, v0, :cond_45

    .line 120
    const-string v0, "DownloadDatabase"

    const-string v1, "\u6dfb\u52a0subtitle\u5217"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    const-string v0, "ALTER TABLE download_tasks ADD COLUMN subtitle TEXT"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 125
    :cond_45
    const/4 v0, 0x4

    if-ge p2, v0, :cond_54

    .line 126
    const-string v0, "DownloadDatabase"

    const-string v1, "\u6dfb\u52a0page_index\u5217"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    const-string v0, "ALTER TABLE download_tasks ADD COLUMN page_index INTEGER DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 131
    :cond_54
    const/4 v0, 0x5

    if-ge p2, v0, :cond_63

    .line 132
    const-string v0, "DownloadDatabase"

    const-string v1, "\u6dfb\u52a0total_page_count\u5217"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    const-string v0, "ALTER TABLE download_tasks ADD COLUMN total_page_count INTEGER DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 135
    :cond_63
    return-void
.end method

.method public setError(Ljava/lang/String;ILjava/lang/String;)I
    .locals 6

    .prologue
    .line 432
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/db/DownloadDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 434
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 435
    const-string v2, "status"

    sget-object v3, Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;->FAILED:Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;

    invoke-virtual {v3}, Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;->getValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 436
    const-string v2, "error_code"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 437
    const-string v2, "error_message"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    const-string v2, "end_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 439
    const-string v2, "update_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 441
    const-string v2, "task_id = ?"

    .line 442
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    .line 444
    const-string v4, "download_tasks"

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setManualPause(Ljava/lang/String;Z)I
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 412
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/db/DownloadDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 414
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 415
    const-string v5, "is_manual_pause"

    if-eqz p2, :cond_51

    move v0, v1

    :goto_10
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 416
    const-string v0, "status"

    sget-object v5, Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;->PAUSED:Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;

    invoke-virtual {v5}, Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;->getValue()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 417
    if-eqz p2, :cond_37

    .line 418
    const-string v0, "pause_type"

    sget-object v5, Lcom/bilibili/tv/ui/download/model/DownloadTask$PauseType;->MANUAL:Lcom/bilibili/tv/ui/download/model/DownloadTask$PauseType;

    invoke-virtual {v5}, Lcom/bilibili/tv/ui/download/model/DownloadTask$PauseType;->getValue()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 420
    :cond_37
    const-string v0, "update_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 422
    const-string v0, "task_id = ?"

    .line 423
    new-array v1, v1, [Ljava/lang/String;

    aput-object p1, v1, v2

    .line 425
    const-string v2, "download_tasks"

    invoke-virtual {v3, v2, v4, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_51
    move v0, v2

    .line 415
    goto :goto_10
.end method

.method public updateProgress(Ljava/lang/String;JIJ)I
    .locals 6

    .prologue
    .line 378
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/db/DownloadDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 380
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 381
    const-string v2, "downloaded_size"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 382
    const-string v2, "progress"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 383
    const-string v2, "speed"

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 384
    const-string v2, "update_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 386
    const-string v2, "task_id = ?"

    .line 387
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    .line 389
    const-string v4, "download_tasks"

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public updateStatus(Ljava/lang/String;Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;)I
    .locals 6

    .prologue
    .line 396
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/db/DownloadDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 398
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 399
    const-string v2, "status"

    invoke-virtual {p2}, Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;->getValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 400
    const-string v2, "update_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 402
    const-string v2, "task_id = ?"

    .line 403
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    .line 405
    const-string v4, "download_tasks"

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public updateTask(Lcom/bilibili/tv/ui/download/model/DownloadTask;)I
    .locals 6

    .prologue
    .line 160
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/db/DownloadDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 161
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->toContentValues()Landroid/content/ContentValues;

    move-result-object v1

    .line 164
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->setUpdateTime(J)V

    .line 165
    const-string v2, "update_time"

    invoke-virtual {p1}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getUpdateTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 167
    const-string v2, "task_id = ?"

    .line 168
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getTaskId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 170
    const-string v4, "download_tasks"

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 171
    if-lez v0, :cond_4d

    .line 172
    const-string v1, "DownloadDatabase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u66f4\u65b0\u4e0b\u8f7d\u4efb\u52a1\u6210\u529f: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getTaskId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :goto_4c
    return v0

    .line 174
    :cond_4d
    const-string v1, "DownloadDatabase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u66f4\u65b0\u4e0b\u8f7d\u4efb\u52a1\u5931\u8d25: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getTaskId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4c
.end method

.method public updateVideoUrl(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6

    .prologue
    .line 184
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/db/DownloadDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 185
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 186
    const-string v2, "video_url"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    const-string v2, "download_tasks"

    const-string v3, "task_id = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 189
    if-lez v0, :cond_37

    .line 190
    const-string v1, "DownloadDatabase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u66f4\u65b0\u4e0b\u8f7dURL\u6210\u529f: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :goto_36
    return v0

    .line 192
    :cond_37
    const-string v1, "DownloadDatabase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u66f4\u65b0\u4e0b\u8f7dURL\u5931\u8d25: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_36
.end method
