.class final Lcom/google/android/exoplayer2/upstream/cache/CacheFileMetadataIndex;
.super Ljava/lang/Object;
.source "CacheFileMetadataIndex.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final COLUMNS:[Ljava/lang/String;

.field private static final COLUMN_INDEX_LAST_TOUCH_TIMESTAMP:I = 0x2

.field private static final COLUMN_INDEX_LENGTH:I = 0x1

.field private static final COLUMN_INDEX_NAME:I = 0x0

.field private static final COLUMN_LAST_TOUCH_TIMESTAMP:Ljava/lang/String; = "last_touch_timestamp"

.field private static final COLUMN_LENGTH:Ljava/lang/String; = "length"

.field private static final COLUMN_NAME:Ljava/lang/String; = "name"

.field private static final TABLE_PREFIX:Ljava/lang/String; = "ExoPlayerCacheFileMetadata"

.field private static final TABLE_SCHEMA:Ljava/lang/String; = "(name TEXT PRIMARY KEY NOT NULL,length INTEGER NOT NULL,last_touch_timestamp INTEGER NOT NULL)"

.field private static final TABLE_VERSION:I = 0x1

.field private static final WHERE_NAME_EQUALS:Ljava/lang/String; = "name = ?"


# instance fields
.field private final databaseProvider:Lcom/google/android/exoplayer2/database/DatabaseProvider;

.field private tableName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 58
    const-string v0, "length"

    const-string v1, "last_touch_timestamp"

    const-string v2, "name"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/upstream/cache/CacheFileMetadataIndex;->COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/database/DatabaseProvider;)V
    .registers 2
    .param p1, "databaseProvider"    # Lcom/google/android/exoplayer2/database/DatabaseProvider;

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheFileMetadataIndex;->databaseProvider:Lcom/google/android/exoplayer2/database/DatabaseProvider;

    .line 110
    return-void
.end method

.method public static delete(Lcom/google/android/exoplayer2/database/DatabaseProvider;J)V
    .registers 7
    .param p0, "databaseProvider"    # Lcom/google/android/exoplayer2/database/DatabaseProvider;
    .param p1, "uid"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/database/DatabaseIOException;
        }
    .end annotation

    .line 87
    invoke-static {p1, p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, "hexUid":Ljava/lang/String;
    :try_start_4
    invoke-static {v0}, Lcom/google/android/exoplayer2/upstream/cache/CacheFileMetadataIndex;->getTableName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 90
    .local v1, "tableName":Ljava/lang/String;
    invoke-interface {p0}, Lcom/google/android/exoplayer2/database/DatabaseProvider;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 91
    .local v2, "writableDatabase":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionNonExclusive()V
    :try_end_f
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_f} :catch_25

    .line 93
    const/4 v3, 0x2

    :try_start_10
    invoke-static {v2, v3, v0}, Lcom/google/android/exoplayer2/database/VersionTable;->removeVersion(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)V

    .line 95
    invoke-static {v2, v1}, Lcom/google/android/exoplayer2/upstream/cache/CacheFileMetadataIndex;->dropTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 96
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_19
    .catchall {:try_start_10 .. :try_end_19} :catchall_1f

    .line 98
    :try_start_19
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 99
    nop

    .line 102
    .end local v1    # "tableName":Ljava/lang/String;
    .end local v2    # "writableDatabase":Landroid/database/sqlite/SQLiteDatabase;
    nop

    .line 103
    return-void

    .line 98
    .restart local v1    # "tableName":Ljava/lang/String;
    .restart local v2    # "writableDatabase":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_1f
    move-exception v3

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 99
    nop

    .end local v0    # "hexUid":Ljava/lang/String;
    .end local p0    # "databaseProvider":Lcom/google/android/exoplayer2/database/DatabaseProvider;
    .end local p1    # "uid":J
    throw v3
    :try_end_25
    .catch Landroid/database/SQLException; {:try_start_19 .. :try_end_25} :catch_25

    .line 100
    .end local v1    # "tableName":Ljava/lang/String;
    .end local v2    # "writableDatabase":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v0    # "hexUid":Ljava/lang/String;
    .restart local p0    # "databaseProvider":Lcom/google/android/exoplayer2/database/DatabaseProvider;
    .restart local p1    # "uid":J
    :catch_25
    move-exception v1

    .line 101
    .local v1, "e":Landroid/database/SQLException;
    new-instance v2, Lcom/google/android/exoplayer2/database/DatabaseIOException;

    invoke-direct {v2, v1}, Lcom/google/android/exoplayer2/database/DatabaseIOException;-><init>(Landroid/database/SQLException;)V

    throw v2
.end method

.method private static dropTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .registers 4
    .param p0, "writableDatabase"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "tableName"    # Ljava/lang/String;

    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DROP TABLE IF EXISTS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 259
    return-void
.end method

.method private getCursor()Landroid/database/Cursor;
    .registers 10

    .line 244
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheFileMetadataIndex;->tableName:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheFileMetadataIndex;->databaseProvider:Lcom/google/android/exoplayer2/database/DatabaseProvider;

    .line 246
    invoke-interface {v0}, Lcom/google/android/exoplayer2/database/DatabaseProvider;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheFileMetadataIndex;->tableName:Ljava/lang/String;

    sget-object v3, Lcom/google/android/exoplayer2/upstream/cache/CacheFileMetadataIndex;->COLUMNS:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 247
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 245
    return-object v0
.end method

.method private static getTableName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "hexUid"    # Ljava/lang/String;

    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ExoPlayerCacheFileMetadata"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAll()Ljava/util/Map;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/upstream/cache/CacheFileMetadata;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/database/DatabaseIOException;
        }
    .end annotation

    .line 158
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/cache/CacheFileMetadataIndex;->getCursor()Landroid/database/Cursor;

    move-result-object v0
    :try_end_4
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_4} :catch_45

    .line 159
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_4
    new-instance v1, Ljava/util/HashMap;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 160
    .local v1, "fileMetadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/cache/CacheFileMetadata;>;"
    :goto_d
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_32

    .line 161
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 162
    .local v2, "name":Ljava/lang/String;
    const/4 v3, 0x1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 163
    .local v3, "length":J
    const/4 v5, 0x2

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 164
    .local v5, "lastTouchTimestamp":J
    new-instance v7, Lcom/google/android/exoplayer2/upstream/cache/CacheFileMetadata;

    invoke-direct {v7, v3, v4, v5, v6}, Lcom/google/android/exoplayer2/upstream/cache/CacheFileMetadata;-><init>(JJ)V

    invoke-interface {v1, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_30
    .catchall {:try_start_4 .. :try_end_30} :catchall_39

    .line 165
    nop

    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "length":J
    .end local v5    # "lastTouchTimestamp":J
    goto :goto_d

    .line 166
    :cond_32
    nop

    .line 167
    if-eqz v0, :cond_38

    :try_start_35
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_38
    .catch Landroid/database/SQLException; {:try_start_35 .. :try_end_38} :catch_45

    .line 166
    :cond_38
    return-object v1

    .line 158
    .end local v1    # "fileMetadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/cache/CacheFileMetadata;>;"
    :catchall_39
    move-exception v1

    if-eqz v0, :cond_44

    :try_start_3c
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_40

    goto :goto_44

    :catchall_40
    move-exception v2

    :try_start_41
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_44
    :goto_44
    throw v1
    :try_end_45
    .catch Landroid/database/SQLException; {:try_start_41 .. :try_end_45} :catch_45

    .line 167
    .end local v0    # "cursor":Landroid/database/Cursor;
    :catch_45
    move-exception v0

    .line 168
    .local v0, "e":Landroid/database/SQLException;
    new-instance v1, Lcom/google/android/exoplayer2/database/DatabaseIOException;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/database/DatabaseIOException;-><init>(Landroid/database/SQLException;)V

    goto :goto_4d

    :goto_4c
    throw v1

    :goto_4d
    goto :goto_4c
.end method

.method public initialize(J)V
    .registers 9
    .param p1, "uid"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/database/DatabaseIOException;
        }
    .end annotation

    .line 123
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    .line 124
    .local v0, "hexUid":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/exoplayer2/upstream/cache/CacheFileMetadataIndex;->getTableName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheFileMetadataIndex;->tableName:Ljava/lang/String;

    .line 125
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheFileMetadataIndex;->databaseProvider:Lcom/google/android/exoplayer2/database/DatabaseProvider;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/database/DatabaseProvider;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 126
    .local v1, "readableDatabase":Landroid/database/sqlite/SQLiteDatabase;
    nop

    .line 127
    const/4 v2, 0x2

    invoke-static {v1, v2, v0}, Lcom/google/android/exoplayer2/database/VersionTable;->getVersion(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)I

    move-result v3

    .line 129
    .local v3, "version":I
    const/4 v4, 0x1

    if-eq v3, v4, :cond_5b

    .line 130
    iget-object v5, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheFileMetadataIndex;->databaseProvider:Lcom/google/android/exoplayer2/database/DatabaseProvider;

    invoke-interface {v5}, Lcom/google/android/exoplayer2/database/DatabaseProvider;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    .line 131
    .local v5, "writableDatabase":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionNonExclusive()V
    :try_end_22
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_22} :catch_5d

    .line 133
    :try_start_22
    invoke-static {v5, v2, v0, v4}, Lcom/google/android/exoplayer2/database/VersionTable;->setVersion(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;I)V

    .line 135
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheFileMetadataIndex;->tableName:Ljava/lang/String;

    invoke-static {v5, v2}, Lcom/google/android/exoplayer2/upstream/cache/CacheFileMetadataIndex;->dropTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 136
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CREATE TABLE "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheFileMetadataIndex;->tableName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "(name TEXT PRIMARY KEY NOT NULL,length INTEGER NOT NULL,last_touch_timestamp INTEGER NOT NULL)"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 137
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_51
    .catchall {:try_start_22 .. :try_end_51} :catchall_55

    .line 139
    :try_start_51
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 140
    goto :goto_5b

    .line 139
    :catchall_55
    move-exception v2

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 140
    nop

    .end local p1    # "uid":J
    throw v2
    :try_end_5b
    .catch Landroid/database/SQLException; {:try_start_51 .. :try_end_5b} :catch_5d

    .line 144
    .end local v0    # "hexUid":Ljava/lang/String;
    .end local v1    # "readableDatabase":Landroid/database/sqlite/SQLiteDatabase;
    .end local v3    # "version":I
    .end local v5    # "writableDatabase":Landroid/database/sqlite/SQLiteDatabase;
    .restart local p1    # "uid":J
    :cond_5b
    :goto_5b
    nop

    .line 145
    return-void

    .line 142
    :catch_5d
    move-exception v0

    .line 143
    .local v0, "e":Landroid/database/SQLException;
    new-instance v1, Lcom/google/android/exoplayer2/database/DatabaseIOException;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/database/DatabaseIOException;-><init>(Landroid/database/SQLException;)V

    throw v1
.end method

.method public remove(Ljava/lang/String;)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/database/DatabaseIOException;
        }
    .end annotation

    .line 207
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheFileMetadataIndex;->tableName:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    :try_start_5
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheFileMetadataIndex;->databaseProvider:Lcom/google/android/exoplayer2/database/DatabaseProvider;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/database/DatabaseProvider;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 210
    .local v0, "writableDatabase":Landroid/database/sqlite/SQLiteDatabase;
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheFileMetadataIndex;->tableName:Ljava/lang/String;

    const-string v2, "name = ?"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_16
    .catch Landroid/database/SQLException; {:try_start_5 .. :try_end_16} :catch_18

    .line 213
    nop

    .line 214
    .end local v0    # "writableDatabase":Landroid/database/sqlite/SQLiteDatabase;
    return-void

    .line 211
    :catch_18
    move-exception v0

    .line 212
    .local v0, "e":Landroid/database/SQLException;
    new-instance v1, Lcom/google/android/exoplayer2/database/DatabaseIOException;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/database/DatabaseIOException;-><init>(Landroid/database/SQLException;)V

    throw v1
.end method

.method public removeAll(Ljava/util/Set;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/database/DatabaseIOException;
        }
    .end annotation

    .line 226
    .local p1, "names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheFileMetadataIndex;->tableName:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    :try_start_5
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheFileMetadataIndex;->databaseProvider:Lcom/google/android/exoplayer2/database/DatabaseProvider;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/database/DatabaseProvider;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 229
    .local v0, "writableDatabase":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionNonExclusive()V
    :try_end_e
    .catch Landroid/database/SQLException; {:try_start_5 .. :try_end_e} :catch_3a

    .line 231
    :try_start_e
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 232
    .local v2, "name":Ljava/lang/String;
    iget-object v3, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheFileMetadataIndex;->tableName:Ljava/lang/String;

    const-string v4, "name = ?"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 233
    nop

    .end local v2    # "name":Ljava/lang/String;
    goto :goto_12

    .line 234
    :cond_2b
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2e
    .catchall {:try_start_e .. :try_end_2e} :catchall_34

    .line 236
    :try_start_2e
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 237
    nop

    .line 240
    .end local v0    # "writableDatabase":Landroid/database/sqlite/SQLiteDatabase;
    nop

    .line 241
    return-void

    .line 236
    .restart local v0    # "writableDatabase":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_34
    move-exception v1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 237
    nop

    .end local p1    # "names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    throw v1
    :try_end_3a
    .catch Landroid/database/SQLException; {:try_start_2e .. :try_end_3a} :catch_3a

    .line 238
    .end local v0    # "writableDatabase":Landroid/database/sqlite/SQLiteDatabase;
    .restart local p1    # "names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catch_3a
    move-exception v0

    .line 239
    .local v0, "e":Landroid/database/SQLException;
    new-instance v1, Lcom/google/android/exoplayer2/database/DatabaseIOException;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/database/DatabaseIOException;-><init>(Landroid/database/SQLException;)V

    goto :goto_42

    :goto_41
    throw v1

    :goto_42
    goto :goto_41
.end method

.method public set(Ljava/lang/String;JJ)V
    .registers 10
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "length"    # J
    .param p4, "lastTouchTimestamp"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/database/DatabaseIOException;
        }
    .end annotation

    .line 184
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheFileMetadataIndex;->tableName:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    :try_start_5
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheFileMetadataIndex;->databaseProvider:Lcom/google/android/exoplayer2/database/DatabaseProvider;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/database/DatabaseProvider;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 187
    .local v0, "writableDatabase":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 188
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "name"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    const-string v2, "length"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 190
    const-string v2, "last_touch_timestamp"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 191
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheFileMetadataIndex;->tableName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->replaceOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_2d
    .catch Landroid/database/SQLException; {:try_start_5 .. :try_end_2d} :catch_2f

    .line 194
    nop

    .line 195
    .end local v0    # "writableDatabase":Landroid/database/sqlite/SQLiteDatabase;
    .end local v1    # "values":Landroid/content/ContentValues;
    return-void

    .line 192
    :catch_2f
    move-exception v0

    .line 193
    .local v0, "e":Landroid/database/SQLException;
    new-instance v1, Lcom/google/android/exoplayer2/database/DatabaseIOException;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/database/DatabaseIOException;-><init>(Landroid/database/SQLException;)V

    throw v1
.end method
