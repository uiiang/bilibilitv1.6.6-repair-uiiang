.class final Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$DatabaseStorage;
.super Ljava/lang/Object;
.source "CachedContentIndex.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$Storage;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DatabaseStorage"
.end annotation


# static fields
.field private static final COLUMNS:[Ljava/lang/String;

.field private static final COLUMN_ID:Ljava/lang/String; = "id"

.field private static final COLUMN_INDEX_ID:I = 0x0

.field private static final COLUMN_INDEX_KEY:I = 0x1

.field private static final COLUMN_INDEX_METADATA:I = 0x2

.field private static final COLUMN_KEY:Ljava/lang/String; = "key"

.field private static final COLUMN_METADATA:Ljava/lang/String; = "metadata"

.field private static final TABLE_PREFIX:Ljava/lang/String; = "ExoPlayerCacheIndex"

.field private static final TABLE_SCHEMA:Ljava/lang/String; = "(id INTEGER PRIMARY KEY NOT NULL,key TEXT NOT NULL,metadata BLOB NOT NULL)"

.field private static final TABLE_VERSION:I = 0x1

.field private static final WHERE_ID_EQUALS:Ljava/lang/String; = "id = ?"


# instance fields
.field private final databaseProvider:Lcom/google/android/exoplayer2/database/DatabaseProvider;

.field private hexUid:Ljava/lang/String;

.field private final pendingUpdates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/android/exoplayer2/upstream/cache/CachedContent;",
            ">;"
        }
    .end annotation
.end field

.field private tableName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 770
    const-string v0, "key"

    const-string v1, "metadata"

    const-string v2, "id"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$DatabaseStorage;->COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/database/DatabaseProvider;)V
    .registers 3
    .param p1, "databaseProvider"    # Lcom/google/android/exoplayer2/database/DatabaseProvider;

    .line 792
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 793
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$DatabaseStorage;->databaseProvider:Lcom/google/android/exoplayer2/database/DatabaseProvider;

    .line 794
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$DatabaseStorage;->pendingUpdates:Landroid/util/SparseArray;

    .line 795
    return-void
.end method

.method private addOrUpdateRow(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/exoplayer2/upstream/cache/CachedContent;)V
    .registers 8
    .param p1, "writableDatabase"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "cachedContent"    # Lcom/google/android/exoplayer2/upstream/cache/CachedContent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 956
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 957
    .local v0, "outputStream":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->getMetadata()Lcom/google/android/exoplayer2/upstream/cache/DefaultContentMetadata;

    move-result-object v1

    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    # invokes: Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->writeContentMetadata(Lcom/google/android/exoplayer2/upstream/cache/DefaultContentMetadata;Ljava/io/DataOutputStream;)V
    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->access$200(Lcom/google/android/exoplayer2/upstream/cache/DefaultContentMetadata;Ljava/io/DataOutputStream;)V

    .line 958
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 960
    .local v1, "data":[B
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 961
    .local v2, "values":Landroid/content/ContentValues;
    iget v3, p2, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "id"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 962
    const-string v3, "key"

    iget-object v4, p2, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->key:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 963
    const-string v3, "metadata"

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 964
    iget-object v3, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$DatabaseStorage;->tableName:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->replaceOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 965
    return-void
.end method

.method public static delete(Lcom/google/android/exoplayer2/database/DatabaseProvider;J)V
    .registers 4
    .param p0, "databaseProvider"    # Lcom/google/android/exoplayer2/database/DatabaseProvider;
    .param p1, "uid"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/database/DatabaseIOException;
        }
    .end annotation

    .line 788
    invoke-static {p1, p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$DatabaseStorage;->delete(Lcom/google/android/exoplayer2/database/DatabaseProvider;Ljava/lang/String;)V

    .line 789
    return-void
.end method

.method private static delete(Lcom/google/android/exoplayer2/database/DatabaseProvider;Ljava/lang/String;)V
    .registers 5
    .param p0, "databaseProvider"    # Lcom/google/android/exoplayer2/database/DatabaseProvider;
    .param p1, "hexUid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/database/DatabaseIOException;
        }
    .end annotation

    .line 970
    :try_start_0
    invoke-static {p1}, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$DatabaseStorage;->getTableName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 971
    .local v0, "tableName":Ljava/lang/String;
    invoke-interface {p0}, Lcom/google/android/exoplayer2/database/DatabaseProvider;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 972
    .local v1, "writableDatabase":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionNonExclusive()V
    :try_end_b
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_b} :catch_21

    .line 974
    const/4 v2, 0x1

    :try_start_c
    invoke-static {v1, v2, p1}, Lcom/google/android/exoplayer2/database/VersionTable;->removeVersion(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)V

    .line 976
    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$DatabaseStorage;->dropTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 977
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_15
    .catchall {:try_start_c .. :try_end_15} :catchall_1b

    .line 979
    :try_start_15
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 980
    nop

    .line 983
    .end local v0    # "tableName":Ljava/lang/String;
    .end local v1    # "writableDatabase":Landroid/database/sqlite/SQLiteDatabase;
    nop

    .line 984
    return-void

    .line 979
    .restart local v0    # "tableName":Ljava/lang/String;
    .restart local v1    # "writableDatabase":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_1b
    move-exception v2

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 980
    nop

    .end local p0    # "databaseProvider":Lcom/google/android/exoplayer2/database/DatabaseProvider;
    .end local p1    # "hexUid":Ljava/lang/String;
    throw v2
    :try_end_21
    .catch Landroid/database/SQLException; {:try_start_15 .. :try_end_21} :catch_21

    .line 981
    .end local v0    # "tableName":Ljava/lang/String;
    .end local v1    # "writableDatabase":Landroid/database/sqlite/SQLiteDatabase;
    .restart local p0    # "databaseProvider":Lcom/google/android/exoplayer2/database/DatabaseProvider;
    .restart local p1    # "hexUid":Ljava/lang/String;
    :catch_21
    move-exception v0

    .line 982
    .local v0, "e":Landroid/database/SQLException;
    new-instance v1, Lcom/google/android/exoplayer2/database/DatabaseIOException;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/database/DatabaseIOException;-><init>(Landroid/database/SQLException;)V

    throw v1
.end method

.method private deleteRow(Landroid/database/sqlite/SQLiteDatabase;I)V
    .registers 6
    .param p1, "writableDatabase"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "key"    # I

    .line 950
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$DatabaseStorage;->tableName:Ljava/lang/String;

    .line 951
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 950
    const-string v2, "id = ?"

    invoke-virtual {p1, v0, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 952
    return-void
.end method

.method private static dropTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .registers 4
    .param p0, "writableDatabase"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "tableName"    # Ljava/lang/String;

    .line 987
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

    .line 988
    return-void
.end method

.method private getCursor()Landroid/database/Cursor;
    .registers 10

    .line 927
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$DatabaseStorage;->databaseProvider:Lcom/google/android/exoplayer2/database/DatabaseProvider;

    .line 928
    invoke-interface {v0}, Lcom/google/android/exoplayer2/database/DatabaseProvider;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$DatabaseStorage;->tableName:Ljava/lang/String;

    .line 930
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    sget-object v3, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$DatabaseStorage;->COLUMNS:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 929
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 927
    return-object v0
.end method

.method private static getTableName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "hexUid"    # Ljava/lang/String;

    .line 991
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ExoPlayerCacheIndex"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initializeTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 4
    .param p1, "writableDatabase"    # Landroid/database/sqlite/SQLiteDatabase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/database/DatabaseIOException;
        }
    .end annotation

    .line 940
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$DatabaseStorage;->hexUid:Ljava/lang/String;

    .line 943
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 940
    const/4 v1, 0x1

    invoke-static {p1, v1, v0, v1}, Lcom/google/android/exoplayer2/database/VersionTable;->setVersion(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;I)V

    .line 945
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$DatabaseStorage;->tableName:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$DatabaseStorage;->dropTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 946
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE TABLE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$DatabaseStorage;->tableName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(id INTEGER PRIMARY KEY NOT NULL,key TEXT NOT NULL,metadata BLOB NOT NULL)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 947
    return-void
.end method


# virtual methods
.method public delete()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/database/DatabaseIOException;
        }
    .end annotation

    .line 818
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$DatabaseStorage;->databaseProvider:Lcom/google/android/exoplayer2/database/DatabaseProvider;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$DatabaseStorage;->hexUid:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$DatabaseStorage;->delete(Lcom/google/android/exoplayer2/database/DatabaseProvider;Ljava/lang/String;)V

    .line 819
    return-void
.end method

.method public exists()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/database/DatabaseIOException;
        }
    .end annotation

    .line 806
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$DatabaseStorage;->databaseProvider:Lcom/google/android/exoplayer2/database/DatabaseProvider;

    .line 807
    invoke-interface {v0}, Lcom/google/android/exoplayer2/database/DatabaseProvider;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$DatabaseStorage;->hexUid:Ljava/lang/String;

    .line 809
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 806
    const/4 v2, 0x1

    invoke-static {v0, v2, v1}, Lcom/google/android/exoplayer2/database/VersionTable;->getVersion(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)I

    move-result v0
    :try_end_13
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_13} :catch_19

    const/4 v1, -0x1

    if-eq v0, v1, :cond_17

    goto :goto_18

    :cond_17
    const/4 v2, 0x0

    :goto_18
    return v2

    .line 811
    :catch_19
    move-exception v0

    .line 812
    .local v0, "e":Landroid/database/SQLException;
    new-instance v1, Lcom/google/android/exoplayer2/database/DatabaseIOException;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/database/DatabaseIOException;-><init>(Landroid/database/SQLException;)V

    throw v1
.end method

.method public initialize(J)V
    .registers 4
    .param p1, "uid"    # J

    .line 799
    invoke-static {p1, p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$DatabaseStorage;->hexUid:Ljava/lang/String;

    .line 800
    invoke-static {v0}, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$DatabaseStorage;->getTableName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$DatabaseStorage;->tableName:Ljava/lang/String;

    .line 801
    return-void
.end method

.method public load(Ljava/util/HashMap;Landroid/util/SparseArray;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/upstream/cache/CachedContent;",
            ">;",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 825
    .local p1, "content":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/cache/CachedContent;>;"
    .local p2, "idToKey":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$DatabaseStorage;->pendingUpdates:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 827
    :try_start_10
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$DatabaseStorage;->databaseProvider:Lcom/google/android/exoplayer2/database/DatabaseProvider;

    .line 829
    invoke-interface {v0}, Lcom/google/android/exoplayer2/database/DatabaseProvider;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$DatabaseStorage;->hexUid:Ljava/lang/String;

    .line 831
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 828
    invoke-static {v0, v2, v3}, Lcom/google/android/exoplayer2/database/VersionTable;->getVersion(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)I

    move-result v0

    .line 832
    .local v0, "version":I
    if-eq v0, v2, :cond_3d

    .line 833
    iget-object v3, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$DatabaseStorage;->databaseProvider:Lcom/google/android/exoplayer2/database/DatabaseProvider;

    invoke-interface {v3}, Lcom/google/android/exoplayer2/database/DatabaseProvider;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 834
    .local v3, "writableDatabase":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionNonExclusive()V
    :try_end_2d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_10 .. :try_end_2d} :catch_8d

    .line 836
    :try_start_2d
    invoke-direct {p0, v3}, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$DatabaseStorage;->initializeTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 837
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_33
    .catchall {:try_start_2d .. :try_end_33} :catchall_37

    .line 839
    :try_start_33
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 840
    goto :goto_3d

    .line 839
    :catchall_37
    move-exception v1

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 840
    nop

    .end local p1    # "content":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/cache/CachedContent;>;"
    .end local p2    # "idToKey":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    throw v1

    .line 843
    .end local v3    # "writableDatabase":Landroid/database/sqlite/SQLiteDatabase;
    .restart local p1    # "content":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/cache/CachedContent;>;"
    .restart local p2    # "idToKey":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    :cond_3d
    :goto_3d
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$DatabaseStorage;->getCursor()Landroid/database/Cursor;

    move-result-object v3
    :try_end_41
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_33 .. :try_end_41} :catch_8d

    .line 844
    .local v3, "cursor":Landroid/database/Cursor;
    :goto_41
    :try_start_41
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_7a

    .line 845
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 846
    .local v4, "id":I
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 847
    .local v5, "key":Ljava/lang/String;
    const/4 v6, 0x2

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v6

    .line 849
    .local v6, "metadataBytes":[B
    new-instance v7, Ljava/io/ByteArrayInputStream;

    invoke-direct {v7, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 850
    .local v7, "inputStream":Ljava/io/ByteArrayInputStream;
    new-instance v8, Ljava/io/DataInputStream;

    invoke-direct {v8, v7}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 851
    .local v8, "input":Ljava/io/DataInputStream;
    # invokes: Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->readContentMetadata(Ljava/io/DataInputStream;)Lcom/google/android/exoplayer2/upstream/cache/DefaultContentMetadata;
    invoke-static {v8}, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->access$100(Ljava/io/DataInputStream;)Lcom/google/android/exoplayer2/upstream/cache/DefaultContentMetadata;

    move-result-object v9

    .line 853
    .local v9, "metadata":Lcom/google/android/exoplayer2/upstream/cache/DefaultContentMetadata;
    new-instance v10, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;

    invoke-direct {v10, v4, v5, v9}, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;-><init>(ILjava/lang/String;Lcom/google/android/exoplayer2/upstream/cache/DefaultContentMetadata;)V

    .line 854
    .local v10, "cachedContent":Lcom/google/android/exoplayer2/upstream/cache/CachedContent;
    iget-object v11, v10, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->key:Ljava/lang/String;

    invoke-virtual {p1, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 855
    iget v11, v10, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->id:I

    iget-object v12, v10, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->key:Ljava/lang/String;

    invoke-virtual {p2, v11, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_79
    .catchall {:try_start_41 .. :try_end_79} :catchall_81

    .line 856
    .end local v4    # "id":I
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "metadataBytes":[B
    .end local v7    # "inputStream":Ljava/io/ByteArrayInputStream;
    .end local v8    # "input":Ljava/io/DataInputStream;
    .end local v9    # "metadata":Lcom/google/android/exoplayer2/upstream/cache/DefaultContentMetadata;
    .end local v10    # "cachedContent":Lcom/google/android/exoplayer2/upstream/cache/CachedContent;
    goto :goto_41

    .line 857
    :cond_7a
    if-eqz v3, :cond_7f

    :try_start_7c
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_7f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7c .. :try_end_7f} :catch_8d

    .line 862
    .end local v0    # "version":I
    .end local v3    # "cursor":Landroid/database/Cursor;
    :cond_7f
    nop

    .line 863
    return-void

    .line 843
    .restart local v0    # "version":I
    .restart local v3    # "cursor":Landroid/database/Cursor;
    :catchall_81
    move-exception v1

    if-eqz v3, :cond_8c

    :try_start_84
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_87
    .catchall {:try_start_84 .. :try_end_87} :catchall_88

    goto :goto_8c

    :catchall_88
    move-exception v2

    :try_start_89
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p1    # "content":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/cache/CachedContent;>;"
    .end local p2    # "idToKey":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    :cond_8c
    :goto_8c
    throw v1
    :try_end_8d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_89 .. :try_end_8d} :catch_8d

    .line 858
    .end local v0    # "version":I
    .end local v3    # "cursor":Landroid/database/Cursor;
    .restart local p1    # "content":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/cache/CachedContent;>;"
    .restart local p2    # "idToKey":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    :catch_8d
    move-exception v0

    .line 859
    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 860
    invoke-virtual {p2}, Landroid/util/SparseArray;->clear()V

    .line 861
    new-instance v1, Lcom/google/android/exoplayer2/database/DatabaseIOException;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/database/DatabaseIOException;-><init>(Landroid/database/SQLException;)V

    goto :goto_9b

    :goto_9a
    throw v1

    :goto_9b
    goto :goto_9a
.end method

.method public onRemove(Lcom/google/android/exoplayer2/upstream/cache/CachedContent;Z)V
    .registers 6
    .param p1, "cachedContent"    # Lcom/google/android/exoplayer2/upstream/cache/CachedContent;
    .param p2, "neverStored"    # Z

    .line 919
    if-eqz p2, :cond_a

    .line 920
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$DatabaseStorage;->pendingUpdates:Landroid/util/SparseArray;

    iget v1, p1, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->id:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->delete(I)V

    goto :goto_12

    .line 922
    :cond_a
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$DatabaseStorage;->pendingUpdates:Landroid/util/SparseArray;

    iget v1, p1, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->id:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 924
    :goto_12
    return-void
.end method

.method public onUpdate(Lcom/google/android/exoplayer2/upstream/cache/CachedContent;)V
    .registers 4
    .param p1, "cachedContent"    # Lcom/google/android/exoplayer2/upstream/cache/CachedContent;

    .line 914
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$DatabaseStorage;->pendingUpdates:Landroid/util/SparseArray;

    iget v1, p1, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->id:I

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 915
    return-void
.end method

.method public storeFully(Ljava/util/HashMap;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/upstream/cache/CachedContent;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 868
    .local p1, "content":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/cache/CachedContent;>;"
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$DatabaseStorage;->databaseProvider:Lcom/google/android/exoplayer2/database/DatabaseProvider;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/database/DatabaseProvider;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 869
    .local v0, "writableDatabase":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionNonExclusive()V
    :try_end_9
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_9} :catch_38

    .line 871
    :try_start_9
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$DatabaseStorage;->initializeTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 872
    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;

    .line 873
    .local v2, "cachedContent":Lcom/google/android/exoplayer2/upstream/cache/CachedContent;
    invoke-direct {p0, v0, v2}, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$DatabaseStorage;->addOrUpdateRow(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/exoplayer2/upstream/cache/CachedContent;)V

    .line 874
    .end local v2    # "cachedContent":Lcom/google/android/exoplayer2/upstream/cache/CachedContent;
    goto :goto_14

    .line 875
    :cond_24
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 876
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$DatabaseStorage;->pendingUpdates:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V
    :try_end_2c
    .catchall {:try_start_9 .. :try_end_2c} :catchall_32

    .line 878
    :try_start_2c
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 879
    nop

    .line 882
    .end local v0    # "writableDatabase":Landroid/database/sqlite/SQLiteDatabase;
    nop

    .line 883
    return-void

    .line 878
    .restart local v0    # "writableDatabase":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_32
    move-exception v1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 879
    nop

    .end local p1    # "content":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/cache/CachedContent;>;"
    throw v1
    :try_end_38
    .catch Landroid/database/SQLException; {:try_start_2c .. :try_end_38} :catch_38

    .line 880
    .end local v0    # "writableDatabase":Landroid/database/sqlite/SQLiteDatabase;
    .restart local p1    # "content":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/cache/CachedContent;>;"
    :catch_38
    move-exception v0

    .line 881
    .local v0, "e":Landroid/database/SQLException;
    new-instance v1, Lcom/google/android/exoplayer2/database/DatabaseIOException;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/database/DatabaseIOException;-><init>(Landroid/database/SQLException;)V

    goto :goto_40

    :goto_3f
    throw v1

    :goto_40
    goto :goto_3f
.end method

.method public storeIncremental(Ljava/util/HashMap;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/upstream/cache/CachedContent;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 887
    .local p1, "content":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/cache/CachedContent;>;"
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$DatabaseStorage;->pendingUpdates:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_9

    .line 888
    return-void

    .line 891
    :cond_9
    :try_start_9
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$DatabaseStorage;->databaseProvider:Lcom/google/android/exoplayer2/database/DatabaseProvider;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/database/DatabaseProvider;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 892
    .local v0, "writableDatabase":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionNonExclusive()V
    :try_end_12
    .catch Landroid/database/SQLException; {:try_start_9 .. :try_end_12} :catch_49

    .line 894
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_13
    :try_start_13
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$DatabaseStorage;->pendingUpdates:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_35

    .line 895
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$DatabaseStorage;->pendingUpdates:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;

    .line 896
    .local v2, "cachedContent":Lcom/google/android/exoplayer2/upstream/cache/CachedContent;
    if-nez v2, :cond_2f

    .line 897
    iget-object v3, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$DatabaseStorage;->pendingUpdates:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-direct {p0, v0, v3}, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$DatabaseStorage;->deleteRow(Landroid/database/sqlite/SQLiteDatabase;I)V

    goto :goto_32

    .line 899
    :cond_2f
    invoke-direct {p0, v0, v2}, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$DatabaseStorage;->addOrUpdateRow(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/exoplayer2/upstream/cache/CachedContent;)V

    .line 894
    .end local v2    # "cachedContent":Lcom/google/android/exoplayer2/upstream/cache/CachedContent;
    :goto_32
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 902
    .end local v1    # "i":I
    :cond_35
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 903
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$DatabaseStorage;->pendingUpdates:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V
    :try_end_3d
    .catchall {:try_start_13 .. :try_end_3d} :catchall_43

    .line 905
    :try_start_3d
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 906
    nop

    .line 909
    .end local v0    # "writableDatabase":Landroid/database/sqlite/SQLiteDatabase;
    nop

    .line 910
    return-void

    .line 905
    .restart local v0    # "writableDatabase":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_43
    move-exception v1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 906
    nop

    .end local p1    # "content":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/cache/CachedContent;>;"
    throw v1
    :try_end_49
    .catch Landroid/database/SQLException; {:try_start_3d .. :try_end_49} :catch_49

    .line 907
    .end local v0    # "writableDatabase":Landroid/database/sqlite/SQLiteDatabase;
    .restart local p1    # "content":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/cache/CachedContent;>;"
    :catch_49
    move-exception v0

    .line 908
    .local v0, "e":Landroid/database/SQLException;
    new-instance v1, Lcom/google/android/exoplayer2/database/DatabaseIOException;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/database/DatabaseIOException;-><init>(Landroid/database/SQLException;)V

    goto :goto_51

    :goto_50
    throw v1

    :goto_51
    goto :goto_50
.end method
