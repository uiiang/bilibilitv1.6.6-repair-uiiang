.class public final Lcom/google/android/exoplayer2/offline/DefaultDownloadIndex;
.super Ljava/lang/Object;
.source "DefaultDownloadIndex.java"

# interfaces
.implements Lcom/google/android/exoplayer2/offline/WritableDownloadIndex;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/offline/DefaultDownloadIndex$DownloadCursorImpl;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final COLUMNS:[Ljava/lang/String;

.field private static final COLUMN_BYTES_DOWNLOADED:Ljava/lang/String; = "bytes_downloaded"

.field private static final COLUMN_CONTENT_LENGTH:Ljava/lang/String; = "content_length"

.field private static final COLUMN_CUSTOM_CACHE_KEY:Ljava/lang/String; = "custom_cache_key"

.field private static final COLUMN_DATA:Ljava/lang/String; = "data"

.field private static final COLUMN_FAILURE_REASON:Ljava/lang/String; = "failure_reason"

.field private static final COLUMN_ID:Ljava/lang/String; = "id"

.field private static final COLUMN_INDEX_BYTES_DOWNLOADED:I = 0xd

.field private static final COLUMN_INDEX_CONTENT_LENGTH:I = 0x9

.field private static final COLUMN_INDEX_CUSTOM_CACHE_KEY:I = 0x4

.field private static final COLUMN_INDEX_DATA:I = 0x5

.field private static final COLUMN_INDEX_FAILURE_REASON:I = 0xb

.field private static final COLUMN_INDEX_ID:I = 0x0

.field private static final COLUMN_INDEX_KEY_SET_ID:I = 0xe

.field private static final COLUMN_INDEX_MIME_TYPE:I = 0x1

.field private static final COLUMN_INDEX_PERCENT_DOWNLOADED:I = 0xc

.field private static final COLUMN_INDEX_START_TIME_MS:I = 0x7

.field private static final COLUMN_INDEX_STATE:I = 0x6

.field private static final COLUMN_INDEX_STOP_REASON:I = 0xa

.field private static final COLUMN_INDEX_STREAM_KEYS:I = 0x3

.field private static final COLUMN_INDEX_UPDATE_TIME_MS:I = 0x8

.field private static final COLUMN_INDEX_URI:I = 0x2

.field private static final COLUMN_KEY_SET_ID:Ljava/lang/String; = "key_set_id"

.field private static final COLUMN_MIME_TYPE:Ljava/lang/String; = "mime_type"

.field private static final COLUMN_PERCENT_DOWNLOADED:Ljava/lang/String; = "percent_downloaded"

.field private static final COLUMN_START_TIME_MS:Ljava/lang/String; = "start_time_ms"

.field private static final COLUMN_STATE:Ljava/lang/String; = "state"

.field private static final COLUMN_STOP_REASON:Ljava/lang/String; = "stop_reason"

.field private static final COLUMN_STREAM_KEYS:Ljava/lang/String; = "stream_keys"

.field private static final COLUMN_UPDATE_TIME_MS:Ljava/lang/String; = "update_time_ms"

.field private static final COLUMN_URI:Ljava/lang/String; = "uri"

.field private static final TABLE_PREFIX:Ljava/lang/String; = "ExoPlayerDownloads"

.field private static final TABLE_SCHEMA:Ljava/lang/String; = "(id TEXT PRIMARY KEY NOT NULL,mime_type TEXT,uri TEXT NOT NULL,stream_keys TEXT NOT NULL,custom_cache_key TEXT,data BLOB NOT NULL,state INTEGER NOT NULL,start_time_ms INTEGER NOT NULL,update_time_ms INTEGER NOT NULL,content_length INTEGER NOT NULL,stop_reason INTEGER NOT NULL,failure_reason INTEGER NOT NULL,percent_downloaded REAL NOT NULL,bytes_downloaded INTEGER NOT NULL,key_set_id BLOB NOT NULL)"

.field static final TABLE_VERSION:I = 0x3

.field private static final TRUE:Ljava/lang/String; = "1"

.field private static final WHERE_ID_EQUALS:Ljava/lang/String; = "id = ?"

.field private static final WHERE_STATE_IS_DOWNLOADING:Ljava/lang/String; = "state = 2"

.field private static final WHERE_STATE_IS_TERMINAL:Ljava/lang/String;


# instance fields
.field private final databaseProvider:Lcom/google/android/exoplayer2/database/DatabaseProvider;

.field private final initializationLock:Ljava/lang/Object;

.field private initialized:Z

.field private final name:Ljava/lang/String;

.field private final tableName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 16

    .line 91
    const/4 v0, 0x3

    const/4 v1, 0x4

    filled-new-array {v0, v1}, [I

    move-result-object v0

    .line 92
    invoke-static {v0}, Lcom/google/android/exoplayer2/offline/DefaultDownloadIndex;->getStateQuery([I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/offline/DefaultDownloadIndex;->WHERE_STATE_IS_TERMINAL:Ljava/lang/String;

    .line 94
    const-string v1, "id"

    const-string v2, "mime_type"

    const-string v3, "uri"

    const-string v4, "stream_keys"

    const-string v5, "custom_cache_key"

    const-string v6, "data"

    const-string v7, "state"

    const-string v8, "start_time_ms"

    const-string v9, "update_time_ms"

    const-string v10, "content_length"

    const-string v11, "stop_reason"

    const-string v12, "failure_reason"

    const-string v13, "percent_downloaded"

    const-string v14, "bytes_downloaded"

    const-string v15, "key_set_id"

    filled-new-array/range {v1 .. v15}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/offline/DefaultDownloadIndex;->COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/database/DatabaseProvider;)V
    .registers 3
    .param p1, "databaseProvider"    # Lcom/google/android/exoplayer2/database/DatabaseProvider;

    .line 170
    const-string v0, ""

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/offline/DefaultDownloadIndex;-><init>(Lcom/google/android/exoplayer2/database/DatabaseProvider;Ljava/lang/String;)V

    .line 171
    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/database/DatabaseProvider;Ljava/lang/String;)V
    .registers 5
    .param p1, "databaseProvider"    # Lcom/google/android/exoplayer2/database/DatabaseProvider;
    .param p2, "name"    # Ljava/lang/String;

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    iput-object p2, p0, Lcom/google/android/exoplayer2/offline/DefaultDownloadIndex;->name:Ljava/lang/String;

    .line 183
    iput-object p1, p0, Lcom/google/android/exoplayer2/offline/DefaultDownloadIndex;->databaseProvider:Lcom/google/android/exoplayer2/database/DatabaseProvider;

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ExoPlayerDownloads"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/offline/DefaultDownloadIndex;->tableName:Ljava/lang/String;

    .line 185
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/offline/DefaultDownloadIndex;->initializationLock:Ljava/lang/Object;

    .line 186
    return-void
.end method

.method static synthetic access$100(Landroid/database/Cursor;)Lcom/google/android/exoplayer2/offline/Download;
    .registers 2
    .param p0, "x0"    # Landroid/database/Cursor;

    .line 50
    invoke-static {p0}, Lcom/google/android/exoplayer2/offline/DefaultDownloadIndex;->getDownloadForCurrentRow(Landroid/database/Cursor;)Lcom/google/android/exoplayer2/offline/Download;

    move-result-object v0

    return-object v0
.end method

.method private static decodeStreamKeys(Ljava/lang/String;)Ljava/util/List;
    .registers 12
    .param p0, "encodedStreamKeys"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/offline/StreamKey;",
            ">;"
        }
    .end annotation

    .line 535
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 536
    .local v0, "streamKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/offline/StreamKey;>;"
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 537
    return-object v0

    .line 539
    :cond_c
    const-string v1, ","

    invoke-static {p0, v1}, Lcom/google/android/exoplayer2/util/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 540
    .local v1, "streamKeysStrings":[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_15
    if-ge v4, v2, :cond_48

    aget-object v5, v1, v4

    .line 541
    .local v5, "streamKeysString":Ljava/lang/String;
    const-string v6, "\\."

    invoke-static {v5, v6}, Lcom/google/android/exoplayer2/util/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 542
    .local v6, "indices":[Ljava/lang/String;
    array-length v7, v6

    const/4 v8, 0x3

    const/4 v9, 0x1

    if-ne v7, v8, :cond_26

    const/4 v7, 0x1

    goto :goto_27

    :cond_26
    const/4 v7, 0x0

    :goto_27
    invoke-static {v7}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 543
    new-instance v7, Lcom/google/android/exoplayer2/offline/StreamKey;

    aget-object v8, v6, v3

    .line 545
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    aget-object v9, v6, v9

    .line 546
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    const/4 v10, 0x2

    aget-object v10, v6, v10

    .line 547
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-direct {v7, v8, v9, v10}, Lcom/google/android/exoplayer2/offline/StreamKey;-><init>(III)V

    .line 543
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 540
    .end local v5    # "streamKeysString":Ljava/lang/String;
    .end local v6    # "indices":[Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    .line 549
    :cond_48
    return-object v0
.end method

.method static encodeStreamKeys(Ljava/util/List;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/offline/StreamKey;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 418
    .local p0, "streamKeys":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/offline/StreamKey;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 419
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_36

    .line 420
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/offline/StreamKey;

    .line 421
    .local v2, "streamKey":Lcom/google/android/exoplayer2/offline/StreamKey;
    iget v3, v2, Lcom/google/android/exoplayer2/offline/StreamKey;->periodIndex:I

    .line 422
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 423
    const/16 v4, 0x2e

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, v2, Lcom/google/android/exoplayer2/offline/StreamKey;->groupIndex:I

    .line 424
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 425
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/google/android/exoplayer2/offline/StreamKey;->streamIndex:I

    .line 426
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 427
    const/16 v4, 0x2c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 419
    .end local v2    # "streamKey":Lcom/google/android/exoplayer2/offline/StreamKey;
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 429
    .end local v1    # "i":I
    :cond_36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_45

    .line 430
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 432
    :cond_45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private ensureInitialized()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/database/DatabaseIOException;
        }
    .end annotation

    .line 291
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DefaultDownloadIndex;->initializationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 292
    :try_start_3
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/offline/DefaultDownloadIndex;->initialized:Z

    if-eqz v1, :cond_9

    .line 293
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_9d

    return-void

    .line 296
    :cond_9
    :try_start_9
    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/DefaultDownloadIndex;->databaseProvider:Lcom/google/android/exoplayer2/database/DatabaseProvider;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/database/DatabaseProvider;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 297
    .local v1, "readableDatabase":Landroid/database/sqlite/SQLiteDatabase;
    iget-object v2, p0, Lcom/google/android/exoplayer2/offline/DefaultDownloadIndex;->name:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Lcom/google/android/exoplayer2/database/VersionTable;->getVersion(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)I

    move-result v2

    .line 298
    .local v2, "version":I
    const/4 v4, 0x3

    if-eq v2, v4, :cond_90

    .line 299
    iget-object v5, p0, Lcom/google/android/exoplayer2/offline/DefaultDownloadIndex;->databaseProvider:Lcom/google/android/exoplayer2/database/DatabaseProvider;

    invoke-interface {v5}, Lcom/google/android/exoplayer2/database/DatabaseProvider;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    .line 300
    .local v5, "writableDatabase":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionNonExclusive()V
    :try_end_22
    .catch Landroid/database/SQLException; {:try_start_9 .. :try_end_22} :catch_96
    .catchall {:try_start_9 .. :try_end_22} :catchall_9d

    .line 302
    :try_start_22
    iget-object v6, p0, Lcom/google/android/exoplayer2/offline/DefaultDownloadIndex;->name:Ljava/lang/String;

    invoke-static {v5, v3, v6, v4}, Lcom/google/android/exoplayer2/database/VersionTable;->setVersion(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;I)V

    .line 305
    const/4 v3, 0x2

    if-ne v2, v3, :cond_2f

    invoke-direct {p0, v5}, Lcom/google/android/exoplayer2/offline/DefaultDownloadIndex;->loadDownloadsFromVersion2(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;

    move-result-object v3

    goto :goto_34

    :cond_2f
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 306
    .local v3, "upgradedDownloads":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/offline/Download;>;"
    :goto_34
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DROP TABLE IF EXISTS "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/google/android/exoplayer2/offline/DefaultDownloadIndex;->tableName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 307
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CREATE TABLE "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/google/android/exoplayer2/offline/DefaultDownloadIndex;->tableName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "(id TEXT PRIMARY KEY NOT NULL,mime_type TEXT,uri TEXT NOT NULL,stream_keys TEXT NOT NULL,custom_cache_key TEXT,data BLOB NOT NULL,state INTEGER NOT NULL,start_time_ms INTEGER NOT NULL,update_time_ms INTEGER NOT NULL,content_length INTEGER NOT NULL,stop_reason INTEGER NOT NULL,failure_reason INTEGER NOT NULL,percent_downloaded REAL NOT NULL,bytes_downloaded INTEGER NOT NULL,key_set_id BLOB NOT NULL)"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 308
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_74
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_84

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/exoplayer2/offline/Download;

    .line 309
    .local v6, "download":Lcom/google/android/exoplayer2/offline/Download;
    invoke-direct {p0, v6, v5}, Lcom/google/android/exoplayer2/offline/DefaultDownloadIndex;->putDownloadInternal(Lcom/google/android/exoplayer2/offline/Download;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 310
    .end local v6    # "download":Lcom/google/android/exoplayer2/offline/Download;
    goto :goto_74

    .line 311
    :cond_84
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_87
    .catchall {:try_start_22 .. :try_end_87} :catchall_8b

    .line 313
    .end local v3    # "upgradedDownloads":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/offline/Download;>;"
    :try_start_87
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 314
    goto :goto_90

    .line 313
    :catchall_8b
    move-exception v3

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 314
    throw v3

    .line 316
    .end local v5    # "writableDatabase":Landroid/database/sqlite/SQLiteDatabase;
    :cond_90
    :goto_90
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/google/android/exoplayer2/offline/DefaultDownloadIndex;->initialized:Z
    :try_end_93
    .catch Landroid/database/SQLException; {:try_start_87 .. :try_end_93} :catch_96
    .catchall {:try_start_87 .. :try_end_93} :catchall_9d

    .line 319
    .end local v1    # "readableDatabase":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "version":I
    nop

    .line 320
    :try_start_94
    monitor-exit v0

    .line 321
    return-void

    .line 317
    :catch_96
    move-exception v1

    .line 318
    .local v1, "e":Landroid/database/SQLException;
    new-instance v2, Lcom/google/android/exoplayer2/database/DatabaseIOException;

    invoke-direct {v2, v1}, Lcom/google/android/exoplayer2/database/DatabaseIOException;-><init>(Landroid/database/SQLException;)V

    throw v2

    .line 320
    .end local v1    # "e":Landroid/database/SQLException;
    :catchall_9d
    move-exception v1

    monitor-exit v0
    :try_end_9f
    .catchall {:try_start_94 .. :try_end_9f} :catchall_9d

    goto :goto_a1

    :goto_a0
    throw v1

    :goto_a1
    goto :goto_a0
.end method

.method private getCursor(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .registers 11
    .param p1, "selection"    # Ljava/lang/String;
    .param p2, "selectionArgs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/database/DatabaseIOException;
        }
    .end annotation

    .line 400
    :try_start_0
    const-string v7, "start_time_ms ASC"

    .line 401
    .local v7, "sortOrder":Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DefaultDownloadIndex;->databaseProvider:Lcom/google/android/exoplayer2/database/DatabaseProvider;

    .line 402
    invoke-interface {v0}, Lcom/google/android/exoplayer2/database/DatabaseProvider;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/DefaultDownloadIndex;->tableName:Ljava/lang/String;

    sget-object v2, Lcom/google/android/exoplayer2/offline/DefaultDownloadIndex;->COLUMNS:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 403
    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_14
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_14} :catch_15

    .line 401
    return-object v0

    .line 411
    .end local v7    # "sortOrder":Ljava/lang/String;
    :catch_15
    move-exception v0

    .line 412
    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    new-instance v1, Lcom/google/android/exoplayer2/database/DatabaseIOException;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/database/DatabaseIOException;-><init>(Landroid/database/SQLException;)V

    throw v1
.end method

.method private static getDownloadForCurrentRow(Landroid/database/Cursor;)Lcom/google/android/exoplayer2/offline/Download;
    .registers 20
    .param p0, "cursor"    # Landroid/database/Cursor;

    .line 452
    move-object/from16 v0, p0

    const/16 v1, 0xe

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    .line 453
    .local v1, "keySetId":[B
    new-instance v2, Lcom/google/android/exoplayer2/offline/DownloadRequest$Builder;

    .line 455
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 456
    const/4 v5, 0x2

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Lcom/google/android/exoplayer2/offline/DownloadRequest$Builder;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 457
    const/4 v4, 0x1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/offline/DownloadRequest$Builder;->setMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/offline/DownloadRequest$Builder;

    move-result-object v2

    .line 458
    const/4 v4, 0x3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/exoplayer2/offline/DefaultDownloadIndex;->decodeStreamKeys(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/offline/DownloadRequest$Builder;->setStreamKeys(Ljava/util/List;)Lcom/google/android/exoplayer2/offline/DownloadRequest$Builder;

    move-result-object v2

    .line 459
    array-length v4, v1

    if-lez v4, :cond_42

    move-object v4, v1

    goto :goto_43

    :cond_42
    const/4 v4, 0x0

    :goto_43
    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/offline/DownloadRequest$Builder;->setKeySetId([B)Lcom/google/android/exoplayer2/offline/DownloadRequest$Builder;

    move-result-object v2

    .line 460
    const/4 v4, 0x4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/google/android/exoplayer2/offline/DownloadRequest$Builder;->setCustomCacheKey(Ljava/lang/String;)Lcom/google/android/exoplayer2/offline/DownloadRequest$Builder;

    move-result-object v2

    .line 461
    const/4 v5, 0x5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/google/android/exoplayer2/offline/DownloadRequest$Builder;->setData([B)Lcom/google/android/exoplayer2/offline/DownloadRequest$Builder;

    move-result-object v2

    .line 462
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/offline/DownloadRequest$Builder;->build()Lcom/google/android/exoplayer2/offline/DownloadRequest;

    move-result-object v2

    .line 463
    .local v2, "request":Lcom/google/android/exoplayer2/offline/DownloadRequest;
    new-instance v5, Lcom/google/android/exoplayer2/offline/DownloadProgress;

    invoke-direct {v5}, Lcom/google/android/exoplayer2/offline/DownloadProgress;-><init>()V

    move-object v14, v5

    .line 464
    .local v14, "downloadProgress":Lcom/google/android/exoplayer2/offline/DownloadProgress;
    const/16 v5, 0xd

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v14, Lcom/google/android/exoplayer2/offline/DownloadProgress;->bytesDownloaded:J

    .line 465
    const/16 v5, 0xc

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getFloat(I)F

    move-result v5

    iput v5, v14, Lcom/google/android/exoplayer2/offline/DownloadProgress;->percentDownloaded:F

    .line 466
    const/4 v5, 0x6

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 471
    .local v12, "state":I
    if-ne v12, v4, :cond_82

    .line 472
    const/16 v3, 0xb

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    move v15, v3

    goto :goto_83

    .line 473
    :cond_82
    const/4 v15, 0x0

    :goto_83
    nop

    .line 474
    .local v15, "failureReason":I
    new-instance v3, Lcom/google/android/exoplayer2/offline/Download;

    .line 477
    const/4 v4, 0x7

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 478
    const/16 v4, 0x8

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 479
    const/16 v4, 0x9

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 480
    const/16 v4, 0xa

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object v5, v3

    move-object v6, v2

    move v7, v12

    move/from16 v18, v12

    .end local v12    # "state":I
    .local v18, "state":I
    move-wide/from16 v12, v16

    move-object/from16 v17, v14

    .end local v14    # "downloadProgress":Lcom/google/android/exoplayer2/offline/DownloadProgress;
    .local v17, "downloadProgress":Lcom/google/android/exoplayer2/offline/DownloadProgress;
    move v14, v4

    move-object/from16 v16, v17

    invoke-direct/range {v5 .. v16}, Lcom/google/android/exoplayer2/offline/Download;-><init>(Lcom/google/android/exoplayer2/offline/DownloadRequest;IJJJIILcom/google/android/exoplayer2/offline/DownloadProgress;)V

    .line 474
    return-object v3
.end method

.method private static getDownloadForCurrentRowV2(Landroid/database/Cursor;)Lcom/google/android/exoplayer2/offline/Download;
    .registers 18
    .param p0, "cursor"    # Landroid/database/Cursor;

    .line 505
    move-object/from16 v0, p0

    new-instance v1, Lcom/google/android/exoplayer2/offline/DownloadRequest$Builder;

    .line 507
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 508
    const/4 v4, 0x2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lcom/google/android/exoplayer2/offline/DownloadRequest$Builder;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 509
    const/4 v3, 0x1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/exoplayer2/offline/DefaultDownloadIndex;->inferMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/offline/DownloadRequest$Builder;->setMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/offline/DownloadRequest$Builder;

    move-result-object v1

    .line 510
    const/4 v3, 0x3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/exoplayer2/offline/DefaultDownloadIndex;->decodeStreamKeys(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/offline/DownloadRequest$Builder;->setStreamKeys(Ljava/util/List;)Lcom/google/android/exoplayer2/offline/DownloadRequest$Builder;

    move-result-object v1

    .line 511
    const/4 v3, 0x4

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/android/exoplayer2/offline/DownloadRequest$Builder;->setCustomCacheKey(Ljava/lang/String;)Lcom/google/android/exoplayer2/offline/DownloadRequest$Builder;

    move-result-object v1

    .line 512
    const/4 v4, 0x5

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/android/exoplayer2/offline/DownloadRequest$Builder;->setData([B)Lcom/google/android/exoplayer2/offline/DownloadRequest$Builder;

    move-result-object v1

    .line 513
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/offline/DownloadRequest$Builder;->build()Lcom/google/android/exoplayer2/offline/DownloadRequest;

    move-result-object v1

    .line 514
    .local v1, "request":Lcom/google/android/exoplayer2/offline/DownloadRequest;
    new-instance v4, Lcom/google/android/exoplayer2/offline/DownloadProgress;

    invoke-direct {v4}, Lcom/google/android/exoplayer2/offline/DownloadProgress;-><init>()V

    move-object v15, v4

    .line 515
    .local v15, "downloadProgress":Lcom/google/android/exoplayer2/offline/DownloadProgress;
    const/16 v4, 0xd

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v15, Lcom/google/android/exoplayer2/offline/DownloadProgress;->bytesDownloaded:J

    .line 516
    const/16 v4, 0xc

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getFloat(I)F

    move-result v4

    iput v4, v15, Lcom/google/android/exoplayer2/offline/DownloadProgress;->percentDownloaded:F

    .line 517
    const/4 v4, 0x6

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 522
    .local v13, "state":I
    if-ne v13, v3, :cond_76

    const/16 v2, 0xb

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move v14, v2

    goto :goto_77

    :cond_76
    const/4 v14, 0x0

    .line 523
    .local v14, "failureReason":I
    :goto_77
    new-instance v2, Lcom/google/android/exoplayer2/offline/Download;

    .line 526
    const/4 v3, 0x7

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 527
    const/16 v3, 0x8

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 528
    const/16 v3, 0x9

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 529
    const/16 v3, 0xa

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    move-object v4, v2

    move-object v5, v1

    move v6, v13

    move/from16 v16, v13

    .end local v13    # "state":I
    .local v16, "state":I
    move v13, v3

    move-object v3, v15

    .end local v15    # "downloadProgress":Lcom/google/android/exoplayer2/offline/DownloadProgress;
    .local v3, "downloadProgress":Lcom/google/android/exoplayer2/offline/DownloadProgress;
    invoke-direct/range {v4 .. v15}, Lcom/google/android/exoplayer2/offline/Download;-><init>(Lcom/google/android/exoplayer2/offline/DownloadRequest;IJJJIILcom/google/android/exoplayer2/offline/DownloadProgress;)V

    .line 523
    return-object v2
.end method

.method private static varargs getStateQuery([I)Ljava/lang/String;
    .registers 4
    .param p0, "states"    # [I

    .line 436
    array-length v0, p0

    if-nez v0, :cond_6

    .line 437
    const-string v0, "1"

    return-object v0

    .line 439
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 440
    .local v0, "selectionBuilder":Ljava/lang/StringBuilder;
    const-string v1, "state"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " IN ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_17
    array-length v2, p0

    if-ge v1, v2, :cond_29

    .line 442
    if-lez v1, :cond_21

    .line 443
    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 445
    :cond_21
    aget v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 441
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 447
    .end local v1    # "i":I
    :cond_29
    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 448
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static inferMimeType(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "downloadType"    # Ljava/lang/String;

    .line 386
    const-string v0, "dash"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 387
    const-string v0, "application/dash+xml"

    return-object v0

    .line 388
    :cond_b
    const-string v0, "hls"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 389
    const-string v0, "application/x-mpegURL"

    return-object v0

    .line 390
    :cond_16
    const-string v0, "ss"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 391
    const-string v0, "application/vnd.ms-sstr+xml"

    return-object v0

    .line 393
    :cond_21
    const-string v0, "video/x-unknown"

    return-object v0
.end method

.method private loadDownloadsFromVersion2(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;
    .registers 28
    .param p1, "database"    # Landroid/database/sqlite/SQLiteDatabase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/offline/Download;",
            ">;"
        }
    .end annotation

    .line 346
    move-object/from16 v1, p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v0

    .line 347
    .local v2, "downloads":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/offline/Download;>;"
    iget-object v0, v1, Lcom/google/android/exoplayer2/offline/DefaultDownloadIndex;->tableName:Ljava/lang/String;

    move-object/from16 v11, p1

    invoke-static {v11, v0}, Lcom/google/android/exoplayer2/util/Util;->tableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 348
    return-object v2

    .line 351
    :cond_13
    const-string v12, "id"

    const-string v13, "title"

    const-string v14, "uri"

    const-string v15, "stream_keys"

    const-string v16, "custom_cache_key"

    const-string v17, "data"

    const-string v18, "state"

    const-string v19, "start_time_ms"

    const-string v20, "update_time_ms"

    const-string v21, "content_length"

    const-string v22, "stop_reason"

    const-string v23, "failure_reason"

    const-string v24, "percent_downloaded"

    const-string v25, "bytes_downloaded"

    filled-new-array/range {v12 .. v25}, [Ljava/lang/String;

    move-result-object v5

    .line 368
    .local v5, "columnsV2":[Ljava/lang/String;
    iget-object v4, v1, Lcom/google/android/exoplayer2/offline/DefaultDownloadIndex;->tableName:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 369
    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 377
    .local v3, "cursor":Landroid/database/Cursor;
    :goto_40
    :try_start_40
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 378
    invoke-static {v3}, Lcom/google/android/exoplayer2/offline/DefaultDownloadIndex;->getDownloadForCurrentRowV2(Landroid/database/Cursor;)Lcom/google/android/exoplayer2/offline/Download;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4d
    .catchall {:try_start_40 .. :try_end_4d} :catchall_55

    goto :goto_40

    .line 380
    :cond_4e
    nop

    .line 381
    if-eqz v3, :cond_54

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 380
    :cond_54
    return-object v2

    .line 368
    :catchall_55
    move-exception v0

    move-object v4, v0

    if-eqz v3, :cond_62

    :try_start_59
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_5c
    .catchall {:try_start_59 .. :try_end_5c} :catchall_5d

    goto :goto_62

    :catchall_5d
    move-exception v0

    move-object v6, v0

    invoke-virtual {v4, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_62
    :goto_62
    goto :goto_64

    :goto_63
    throw v4

    :goto_64
    goto :goto_63
.end method

.method private putDownloadInternal(Lcom/google/android/exoplayer2/offline/Download;Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 7
    .param p1, "download"    # Lcom/google/android/exoplayer2/offline/Download;
    .param p2, "database"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 325
    iget-object v0, p1, Lcom/google/android/exoplayer2/offline/Download;->request:Lcom/google/android/exoplayer2/offline/DownloadRequest;

    iget-object v0, v0, Lcom/google/android/exoplayer2/offline/DownloadRequest;->keySetId:[B

    if-nez v0, :cond_9

    sget-object v0, Lcom/google/android/exoplayer2/util/Util;->EMPTY_BYTE_ARRAY:[B

    goto :goto_d

    :cond_9
    iget-object v0, p1, Lcom/google/android/exoplayer2/offline/Download;->request:Lcom/google/android/exoplayer2/offline/DownloadRequest;

    iget-object v0, v0, Lcom/google/android/exoplayer2/offline/DownloadRequest;->keySetId:[B

    .line 326
    .local v0, "keySetId":[B
    :goto_d
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 327
    .local v1, "values":Landroid/content/ContentValues;
    iget-object v2, p1, Lcom/google/android/exoplayer2/offline/Download;->request:Lcom/google/android/exoplayer2/offline/DownloadRequest;

    iget-object v2, v2, Lcom/google/android/exoplayer2/offline/DownloadRequest;->id:Ljava/lang/String;

    const-string v3, "id"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    iget-object v2, p1, Lcom/google/android/exoplayer2/offline/Download;->request:Lcom/google/android/exoplayer2/offline/DownloadRequest;

    iget-object v2, v2, Lcom/google/android/exoplayer2/offline/DownloadRequest;->mimeType:Ljava/lang/String;

    const-string v3, "mime_type"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    iget-object v2, p1, Lcom/google/android/exoplayer2/offline/Download;->request:Lcom/google/android/exoplayer2/offline/DownloadRequest;

    iget-object v2, v2, Lcom/google/android/exoplayer2/offline/DownloadRequest;->uri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "uri"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    iget-object v2, p1, Lcom/google/android/exoplayer2/offline/Download;->request:Lcom/google/android/exoplayer2/offline/DownloadRequest;

    iget-object v2, v2, Lcom/google/android/exoplayer2/offline/DownloadRequest;->streamKeys:Ljava/util/List;

    invoke-static {v2}, Lcom/google/android/exoplayer2/offline/DefaultDownloadIndex;->encodeStreamKeys(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "stream_keys"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    iget-object v2, p1, Lcom/google/android/exoplayer2/offline/Download;->request:Lcom/google/android/exoplayer2/offline/DownloadRequest;

    iget-object v2, v2, Lcom/google/android/exoplayer2/offline/DownloadRequest;->customCacheKey:Ljava/lang/String;

    const-string v3, "custom_cache_key"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    iget-object v2, p1, Lcom/google/android/exoplayer2/offline/Download;->request:Lcom/google/android/exoplayer2/offline/DownloadRequest;

    iget-object v2, v2, Lcom/google/android/exoplayer2/offline/DownloadRequest;->data:[B

    const-string v3, "data"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 333
    iget v2, p1, Lcom/google/android/exoplayer2/offline/Download;->state:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "state"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 334
    iget-wide v2, p1, Lcom/google/android/exoplayer2/offline/Download;->startTimeMs:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "start_time_ms"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 335
    iget-wide v2, p1, Lcom/google/android/exoplayer2/offline/Download;->updateTimeMs:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "update_time_ms"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 336
    iget-wide v2, p1, Lcom/google/android/exoplayer2/offline/Download;->contentLength:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "content_length"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 337
    iget v2, p1, Lcom/google/android/exoplayer2/offline/Download;->stopReason:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "stop_reason"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 338
    iget v2, p1, Lcom/google/android/exoplayer2/offline/Download;->failureReason:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "failure_reason"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 339
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/offline/Download;->getPercentDownloaded()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const-string v3, "percent_downloaded"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 340
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/offline/Download;->getBytesDownloaded()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "bytes_downloaded"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 341
    const-string v2, "key_set_id"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 342
    iget-object v2, p0, Lcom/google/android/exoplayer2/offline/DefaultDownloadIndex;->tableName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->replaceOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 343
    return-void
.end method


# virtual methods
.method public getDownload(Ljava/lang/String;)Lcom/google/android/exoplayer2/offline/Download;
    .registers 5
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/database/DatabaseIOException;
        }
    .end annotation

    .line 191
    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/DefaultDownloadIndex;->ensureInitialized()V

    .line 192
    :try_start_3
    const-string v0, "id = ?"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/offline/DefaultDownloadIndex;->getCursor(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_d} :catch_34

    .line 193
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_d
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1
    :try_end_11
    .catchall {:try_start_d .. :try_end_11} :catchall_28

    if-nez v1, :cond_1b

    .line 194
    nop

    .line 198
    if-eqz v0, :cond_19

    :try_start_16
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_19
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_16 .. :try_end_19} :catch_34

    .line 194
    :cond_19
    const/4 v1, 0x0

    return-object v1

    .line 196
    :cond_1b
    :try_start_1b
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 197
    invoke-static {v0}, Lcom/google/android/exoplayer2/offline/DefaultDownloadIndex;->getDownloadForCurrentRow(Landroid/database/Cursor;)Lcom/google/android/exoplayer2/offline/Download;

    move-result-object v1
    :try_end_22
    .catchall {:try_start_1b .. :try_end_22} :catchall_28

    .line 198
    if-eqz v0, :cond_27

    :try_start_24
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_27
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_24 .. :try_end_27} :catch_34

    .line 197
    :cond_27
    return-object v1

    .line 192
    :catchall_28
    move-exception v1

    if-eqz v0, :cond_33

    :try_start_2b
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_2f

    goto :goto_33

    :catchall_2f
    move-exception v2

    :try_start_30
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p1    # "id":Ljava/lang/String;
    :cond_33
    :goto_33
    throw v1
    :try_end_34
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_30 .. :try_end_34} :catch_34

    .line 198
    .end local v0    # "cursor":Landroid/database/Cursor;
    .restart local p1    # "id":Ljava/lang/String;
    :catch_34
    move-exception v0

    .line 199
    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    new-instance v1, Lcom/google/android/exoplayer2/database/DatabaseIOException;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/database/DatabaseIOException;-><init>(Landroid/database/SQLException;)V

    throw v1
.end method

.method public varargs getDownloads([I)Lcom/google/android/exoplayer2/offline/DownloadCursor;
    .registers 5
    .param p1, "states"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/database/DatabaseIOException;
        }
    .end annotation

    .line 205
    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/DefaultDownloadIndex;->ensureInitialized()V

    .line 206
    invoke-static {p1}, Lcom/google/android/exoplayer2/offline/DefaultDownloadIndex;->getStateQuery([I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/offline/DefaultDownloadIndex;->getCursor(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 207
    .local v0, "cursor":Landroid/database/Cursor;
    new-instance v2, Lcom/google/android/exoplayer2/offline/DefaultDownloadIndex$DownloadCursorImpl;

    invoke-direct {v2, v0, v1}, Lcom/google/android/exoplayer2/offline/DefaultDownloadIndex$DownloadCursorImpl;-><init>(Landroid/database/Cursor;Lcom/google/android/exoplayer2/offline/DefaultDownloadIndex$1;)V

    return-object v2
.end method

.method public putDownload(Lcom/google/android/exoplayer2/offline/Download;)V
    .registers 4
    .param p1, "download"    # Lcom/google/android/exoplayer2/offline/Download;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/database/DatabaseIOException;
        }
    .end annotation

    .line 212
    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/DefaultDownloadIndex;->ensureInitialized()V

    .line 214
    :try_start_3
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DefaultDownloadIndex;->databaseProvider:Lcom/google/android/exoplayer2/database/DatabaseProvider;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/database/DatabaseProvider;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 215
    .local v0, "writableDatabase":Landroid/database/sqlite/SQLiteDatabase;
    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/offline/DefaultDownloadIndex;->putDownloadInternal(Lcom/google/android/exoplayer2/offline/Download;Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_c} :catch_e

    .line 218
    .end local v0    # "writableDatabase":Landroid/database/sqlite/SQLiteDatabase;
    nop

    .line 219
    return-void

    .line 216
    :catch_e
    move-exception v0

    .line 217
    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    new-instance v1, Lcom/google/android/exoplayer2/database/DatabaseIOException;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/database/DatabaseIOException;-><init>(Landroid/database/SQLException;)V

    throw v1
.end method

.method public removeDownload(Ljava/lang/String;)V
    .registers 6
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/database/DatabaseIOException;
        }
    .end annotation

    .line 223
    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/DefaultDownloadIndex;->ensureInitialized()V

    .line 225
    :try_start_3
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DefaultDownloadIndex;->databaseProvider:Lcom/google/android/exoplayer2/database/DatabaseProvider;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/database/DatabaseProvider;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/DefaultDownloadIndex;->tableName:Ljava/lang/String;

    const-string v2, "id = ?"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_14
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_14} :catch_16

    .line 228
    nop

    .line 229
    return-void

    .line 226
    :catch_16
    move-exception v0

    .line 227
    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    new-instance v1, Lcom/google/android/exoplayer2/database/DatabaseIOException;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/database/DatabaseIOException;-><init>(Landroid/database/SQLException;)V

    throw v1
.end method

.method public setDownloadingStatesToQueued()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/database/DatabaseIOException;
        }
    .end annotation

    .line 233
    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/DefaultDownloadIndex;->ensureInitialized()V

    .line 235
    :try_start_3
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 236
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "state"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 237
    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/DefaultDownloadIndex;->databaseProvider:Lcom/google/android/exoplayer2/database/DatabaseProvider;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/database/DatabaseProvider;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 238
    .local v1, "writableDatabase":Landroid/database/sqlite/SQLiteDatabase;
    iget-object v2, p0, Lcom/google/android/exoplayer2/offline/DefaultDownloadIndex;->tableName:Ljava/lang/String;

    const-string v3, "state = 2"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_20
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_20} :catch_22

    .line 241
    nop

    .line 242
    .end local v0    # "values":Landroid/content/ContentValues;
    .end local v1    # "writableDatabase":Landroid/database/sqlite/SQLiteDatabase;
    return-void

    .line 239
    :catch_22
    move-exception v0

    .line 240
    .local v0, "e":Landroid/database/SQLException;
    new-instance v1, Lcom/google/android/exoplayer2/database/DatabaseIOException;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/database/DatabaseIOException;-><init>(Landroid/database/SQLException;)V

    throw v1
.end method

.method public setStatesToRemoving()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/database/DatabaseIOException;
        }
    .end annotation

    .line 246
    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/DefaultDownloadIndex;->ensureInitialized()V

    .line 248
    :try_start_3
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 249
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "state"

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 252
    const-string v1, "failure_reason"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 253
    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/DefaultDownloadIndex;->databaseProvider:Lcom/google/android/exoplayer2/database/DatabaseProvider;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/database/DatabaseProvider;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 254
    .local v1, "writableDatabase":Landroid/database/sqlite/SQLiteDatabase;
    iget-object v2, p0, Lcom/google/android/exoplayer2/offline/DefaultDownloadIndex;->tableName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_28
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_28} :catch_2a

    .line 257
    nop

    .line 258
    .end local v0    # "values":Landroid/content/ContentValues;
    .end local v1    # "writableDatabase":Landroid/database/sqlite/SQLiteDatabase;
    return-void

    .line 255
    :catch_2a
    move-exception v0

    .line 256
    .local v0, "e":Landroid/database/SQLException;
    new-instance v1, Lcom/google/android/exoplayer2/database/DatabaseIOException;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/database/DatabaseIOException;-><init>(Landroid/database/SQLException;)V

    throw v1
.end method

.method public setStopReason(I)V
    .registers 7
    .param p1, "stopReason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/database/DatabaseIOException;
        }
    .end annotation

    .line 262
    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/DefaultDownloadIndex;->ensureInitialized()V

    .line 264
    :try_start_3
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 265
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "stop_reason"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 266
    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/DefaultDownloadIndex;->databaseProvider:Lcom/google/android/exoplayer2/database/DatabaseProvider;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/database/DatabaseProvider;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 267
    .local v1, "writableDatabase":Landroid/database/sqlite/SQLiteDatabase;
    iget-object v2, p0, Lcom/google/android/exoplayer2/offline/DefaultDownloadIndex;->tableName:Ljava/lang/String;

    sget-object v3, Lcom/google/android/exoplayer2/offline/DefaultDownloadIndex;->WHERE_STATE_IS_TERMINAL:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1f
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_1f} :catch_21

    .line 270
    nop

    .line 271
    .end local v0    # "values":Landroid/content/ContentValues;
    .end local v1    # "writableDatabase":Landroid/database/sqlite/SQLiteDatabase;
    return-void

    .line 268
    :catch_21
    move-exception v0

    .line 269
    .local v0, "e":Landroid/database/SQLException;
    new-instance v1, Lcom/google/android/exoplayer2/database/DatabaseIOException;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/database/DatabaseIOException;-><init>(Landroid/database/SQLException;)V

    throw v1
.end method

.method public setStopReason(Ljava/lang/String;I)V
    .registers 8
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "stopReason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/database/DatabaseIOException;
        }
    .end annotation

    .line 275
    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/DefaultDownloadIndex;->ensureInitialized()V

    .line 277
    :try_start_3
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 278
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "stop_reason"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 279
    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/DefaultDownloadIndex;->databaseProvider:Lcom/google/android/exoplayer2/database/DatabaseProvider;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/database/DatabaseProvider;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 280
    .local v1, "writableDatabase":Landroid/database/sqlite/SQLiteDatabase;
    iget-object v2, p0, Lcom/google/android/exoplayer2/offline/DefaultDownloadIndex;->tableName:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/google/android/exoplayer2/offline/DefaultDownloadIndex;->WHERE_STATE_IS_TERMINAL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "id = ?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3b
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3b} :catch_3d

    .line 287
    nop

    .line 288
    .end local v0    # "values":Landroid/content/ContentValues;
    .end local v1    # "writableDatabase":Landroid/database/sqlite/SQLiteDatabase;
    return-void

    .line 285
    :catch_3d
    move-exception v0

    .line 286
    .local v0, "e":Landroid/database/SQLException;
    new-instance v1, Lcom/google/android/exoplayer2/database/DatabaseIOException;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/database/DatabaseIOException;-><init>(Landroid/database/SQLException;)V

    throw v1
.end method
