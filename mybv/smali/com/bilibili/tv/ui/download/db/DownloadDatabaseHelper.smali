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

    .line 433
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/db/DownloadDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 434
    const-string v1, "download_tasks"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public deleteCompletedTasks()I
    .locals 5

    .prologue
    .line 511
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/db/DownloadDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 513
    const-string v1, "status = ?"

    .line 514
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    sget-object v4, Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;->COMPLETED:Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;

    invoke-virtual {v4}, Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;->getValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 516
    const-string v3, "download_tasks"

    invoke-virtual {v0, v3, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public deleteFailedTasks()I
    .locals 5

    .prologue
    .line 523
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/db/DownloadDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 525
    const-string v1, "status = ?"

    .line 526
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    sget-object v4, Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;->FAILED:Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;

    invoke-virtual {v4}, Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;->getValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 528
    const-string v3, "download_tasks"

    invoke-virtual {v0, v3, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public deleteTask(Ljava/lang/String;)I
    .locals 4

    .prologue
    .line 184
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/db/DownloadDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 186
    const-string v1, "task_id = ?"

    .line 187
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 189
    const-string v3, "download_tasks"

    invoke-virtual {v0, v3, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 190
    if-lez v0, :cond_2d

    .line 191
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

    .line 196
    :goto_2c
    return v0

    .line 193
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

    .line 234
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 235
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/db/DownloadDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 237
    const-string v1, "download_tasks"

    sget-object v2, Lcom/bilibili/tv/ui/download/db/DownloadDatabaseHelper;->COLUMNS:[Ljava/lang/String;

    const-string v7, "create_time DESC"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 240
    if-eqz v0, :cond_2a

    .line 241
    :goto_19
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 242
    invoke-static {v0}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->fromCursor(Landroid/database/Cursor;)Lcom/bilibili/tv/ui/download/model/DownloadTask;

    move-result-object v1

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_19

    .line 244
    :cond_27
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 247
    :cond_2a
    return-object v8
.end method

.method public getCompletedCount()I
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 488
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/db/DownloadDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 490
    const-string v2, "SELECT COUNT(*) FROM download_tasks WHERE status = ?"

    .line 492
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    sget-object v4, Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;->COMPLETED:Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;

    invoke-virtual {v4}, Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;->getValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 494
    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 497
    if-eqz v1, :cond_29

    .line 498
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_26

    .line 499
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 501
    :cond_26
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 504
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

    .line 304
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 305
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/db/DownloadDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 307
    const-string v3, "status = ?"

    .line 308
    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v2, Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;->COMPLETED:Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;

    invoke-virtual {v2}, Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;->getValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    .line 310
    const-string v1, "download_tasks"

    sget-object v2, Lcom/bilibili/tv/ui/download/db/DownloadDatabaseHelper;->COLUMNS:[Ljava/lang/String;

    const-string v7, "end_time DESC, create_time DESC"

    move-object v6, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 313
    if-eqz v0, :cond_3a

    .line 314
    :goto_29
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_37

    .line 315
    invoke-static {v0}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->fromCursor(Landroid/database/Cursor;)Lcom/bilibili/tv/ui/download/model/DownloadTask;

    move-result-object v1

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_29

    .line 317
    :cond_37
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 320
    :cond_3a
    return-object v8
.end method

.method public getDownloadingCount()I
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 461
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/db/DownloadDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 463
    const-string v2, "SELECT COUNT(*) FROM download_tasks WHERE status IN (?, ?, ?)"

    .line 465
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    sget-object v4, Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;->WAITING:Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;

    .line 466
    invoke-virtual {v4}, Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;->getValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v4, 0x1

    sget-object v5, Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;->DOWNLOADING:Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;

    .line 467
    invoke-virtual {v5}, Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;->getValue()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    sget-object v5, Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;->PAUSED:Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;

    .line 468
    invoke-virtual {v5}, Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;->getValue()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 471
    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 474
    if-eqz v1, :cond_43

    .line 475
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_40

    .line 476
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 478
    :cond_40
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 481
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

    .line 277
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 278
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/db/DownloadDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 280
    const-string v3, "status IN (?, ?, ?)"

    .line 281
    const/4 v1, 0x3

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v2, Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;->WAITING:Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;

    .line 282
    invoke-virtual {v2}, Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;->getValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;->DOWNLOADING:Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;

    .line 283
    invoke-virtual {v2}, Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;->getValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;->PAUSED:Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;

    .line 284
    invoke-virtual {v2}, Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;->getValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    .line 287
    const-string v1, "download_tasks"

    sget-object v2, Lcom/bilibili/tv/ui/download/db/DownloadDatabaseHelper;->COLUMNS:[Ljava/lang/String;

    const-string v7, "create_time DESC"

    move-object v6, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 290
    if-eqz v0, :cond_54

    .line 291
    :goto_43
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_51

    .line 292
    invoke-static {v0}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->fromCursor(Landroid/database/Cursor;)Lcom/bilibili/tv/ui/download/model/DownloadTask;

    move-result-object v1

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_43

    .line 294
    :cond_51
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 297
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
    .line 327
    sget-object v0, Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;->FAILED:Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/download/db/DownloadDatabaseHelper;->getTasksByStatus(Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTask(Ljava/lang/String;)Lcom/bilibili/tv/ui/download/model/DownloadTask;
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 203
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/db/DownloadDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 205
    const-string v3, "task_id = ?"

    .line 206
    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v4, v1

    .line 208
    const-string v1, "download_tasks"

    sget-object v2, Lcom/bilibili/tv/ui/download/db/DownloadDatabaseHelper;->COLUMNS:[Ljava/lang/String;

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 212
    if-eqz v0, :cond_26

    .line 213
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 214
    invoke-static {v0}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->fromCursor(Landroid/database/Cursor;)Lcom/bilibili/tv/ui/download/model/DownloadTask;

    move-result-object v5

    .line 216
    :cond_23
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 219
    :cond_26
    return-object v5
.end method

.method public getTaskByBvidAndCid(Ljava/lang/String;J)Lcom/bilibili/tv/ui/download/model/DownloadTask;
    .locals 2

    .prologue
    .line 226
    invoke-static {p1, p2, p3}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->generateTaskId(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    .line 227
    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/download/db/DownloadDatabaseHelper;->getTask(Ljava/lang/String;)Lcom/bilibili/tv/ui/download/model/DownloadTask;

    move-result-object v0

    return-object v0
.end method

.method public getTaskCount()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 441
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/db/DownloadDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 443
    const-string v2, "SELECT COUNT(*) FROM download_tasks"

    .line 444
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 447
    if-eqz v1, :cond_1b

    .line 448
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 449
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 451
    :cond_18
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 454
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

    .line 334
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 335
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/db/DownloadDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 337
    const-string v3, "pause_type = ? AND status = ?"

    .line 338
    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 339
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/download/model/DownloadTask$PauseType;->getValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;->PAUSED:Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;

    .line 340
    invoke-virtual {v2}, Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;->getValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    .line 343
    const-string v1, "download_tasks"

    sget-object v2, Lcom/bilibili/tv/ui/download/db/DownloadDatabaseHelper;->COLUMNS:[Ljava/lang/String;

    const-string v7, "create_time DESC"

    move-object v6, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 346
    if-eqz v0, :cond_45

    .line 347
    :goto_34
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_42

    .line 348
    invoke-static {v0}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->fromCursor(Landroid/database/Cursor;)Lcom/bilibili/tv/ui/download/model/DownloadTask;

    move-result-object v1

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_34

    .line 350
    :cond_42
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 353
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

    .line 254
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 255
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/db/DownloadDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 257
    const-string v3, "status = ?"

    .line 258
    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;->getValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    .line 260
    const-string v1, "download_tasks"

    sget-object v2, Lcom/bilibili/tv/ui/download/db/DownloadDatabaseHelper;->COLUMNS:[Ljava/lang/String;

    const-string v7, "create_time DESC"

    move-object v6, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 263
    if-eqz v0, :cond_38

    .line 264
    :goto_27
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_35

    .line 265
    invoke-static {v0}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->fromCursor(Landroid/database/Cursor;)Lcom/bilibili/tv/ui/download/model/DownloadTask;

    move-result-object v1

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_27

    .line 267
    :cond_35
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 270
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
    .line 414
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/db/DownloadDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 416
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 417
    const-string v2, "status"

    sget-object v3, Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;->FAILED:Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;

    invoke-virtual {v3}, Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;->getValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 418
    const-string v2, "error_code"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 419
    const-string v2, "error_message"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    const-string v2, "end_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 421
    const-string v2, "update_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 423
    const-string v2, "task_id = ?"

    .line 424
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    .line 426
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

    .line 394
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/db/DownloadDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 396
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 397
    const-string v5, "is_manual_pause"

    if-eqz p2, :cond_51

    move v0, v1

    :goto_10
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 398
    const-string v0, "status"

    sget-object v5, Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;->PAUSED:Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;

    invoke-virtual {v5}, Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;->getValue()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 399
    if-eqz p2, :cond_37

    .line 400
    const-string v0, "pause_type"

    sget-object v5, Lcom/bilibili/tv/ui/download/model/DownloadTask$PauseType;->MANUAL:Lcom/bilibili/tv/ui/download/model/DownloadTask$PauseType;

    invoke-virtual {v5}, Lcom/bilibili/tv/ui/download/model/DownloadTask$PauseType;->getValue()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 402
    :cond_37
    const-string v0, "update_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 404
    const-string v0, "task_id = ?"

    .line 405
    new-array v1, v1, [Ljava/lang/String;

    aput-object p1, v1, v2

    .line 407
    const-string v2, "download_tasks"

    invoke-virtual {v3, v2, v4, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_51
    move v0, v2

    .line 397
    goto :goto_10
.end method

.method public updateProgress(Ljava/lang/String;JIJ)I
    .locals 6

    .prologue
    .line 360
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/db/DownloadDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 362
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 363
    const-string v2, "downloaded_size"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 364
    const-string v2, "progress"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 365
    const-string v2, "speed"

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 366
    const-string v2, "update_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 368
    const-string v2, "task_id = ?"

    .line 369
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    .line 371
    const-string v4, "download_tasks"

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public updateStatus(Ljava/lang/String;Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;)I
    .locals 6

    .prologue
    .line 378
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/download/db/DownloadDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 380
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 381
    const-string v2, "status"

    invoke-virtual {p2}, Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;->getValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 382
    const-string v2, "update_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 384
    const-string v2, "task_id = ?"

    .line 385
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    .line 387
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
