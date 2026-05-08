.class public final Lcom/google/android/exoplayer2/database/VersionTable;
.super Ljava/lang/Object;
.source "VersionTable.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final COLUMN_FEATURE:Ljava/lang/String; = "feature"

.field private static final COLUMN_INSTANCE_UID:Ljava/lang/String; = "instance_uid"

.field private static final COLUMN_VERSION:Ljava/lang/String; = "version"

.field public static final FEATURE_CACHE_CONTENT_METADATA:I = 0x1

.field public static final FEATURE_CACHE_FILE_METADATA:I = 0x2

.field public static final FEATURE_EXTERNAL:I = 0x3e8

.field public static final FEATURE_OFFLINE:I = 0x0

.field private static final PRIMARY_KEY:Ljava/lang/String; = "PRIMARY KEY (feature, instance_uid)"

.field private static final SQL_CREATE_TABLE_IF_NOT_EXISTS:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS ExoPlayerVersions (feature INTEGER NOT NULL,instance_uid TEXT NOT NULL,version INTEGER NOT NULL,PRIMARY KEY (feature, instance_uid))"

.field private static final TABLE_NAME:Ljava/lang/String; = "ExoPlayerVersions"

.field public static final VERSION_UNSET:I = -0x1

.field private static final WHERE_FEATURE_AND_INSTANCE_UID_EQUALS:Ljava/lang/String; = "feature = ? AND instance_uid = ?"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 45
    const-string v0, "goog.exo.database"

    invoke-static {v0}, Lcom/google/android/exoplayer2/ExoPlayerLibraryInfo;->registerModule(Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static featureAndInstanceUidArguments(ILjava/lang/String;)[Ljava/lang/String;
    .registers 3
    .param p0, "feature"    # I
    .param p1, "instance"    # Ljava/lang/String;

    .line 181
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0, p1}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getVersion(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)I
    .registers 14
    .param p0, "database"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "feature"    # I
    .param p2, "instanceUid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/database/DatabaseIOException;
        }
    .end annotation

    .line 157
    :try_start_0
    const-string v0, "ExoPlayerVersions"

    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/util/Util;->tableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_a

    .line 158
    return v1

    .line 160
    :cond_a
    const-string v3, "ExoPlayerVersions"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const-string v0, "version"

    const/4 v10, 0x0

    aput-object v0, v4, v10

    const-string v5, "feature = ? AND instance_uid = ?"

    .line 165
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/database/VersionTable;->featureAndInstanceUidArguments(ILjava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 161
    move-object v2, p0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_22
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_22} :catch_48

    .line 169
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_22
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2
    :try_end_26
    .catchall {:try_start_22 .. :try_end_26} :catchall_3c

    if-nez v2, :cond_2f

    .line 170
    nop

    .line 174
    if-eqz v0, :cond_2e

    :try_start_2b
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2e
    .catch Landroid/database/SQLException; {:try_start_2b .. :try_end_2e} :catch_48

    .line 170
    :cond_2e
    return v1

    .line 172
    :cond_2f
    :try_start_2f
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 173
    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v1
    :try_end_36
    .catchall {:try_start_2f .. :try_end_36} :catchall_3c

    .line 174
    if-eqz v0, :cond_3b

    :try_start_38
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_3b
    .catch Landroid/database/SQLException; {:try_start_38 .. :try_end_3b} :catch_48

    .line 173
    :cond_3b
    return v1

    .line 160
    :catchall_3c
    move-exception v1

    if-eqz v0, :cond_47

    :try_start_3f
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_42
    .catchall {:try_start_3f .. :try_end_42} :catchall_43

    goto :goto_47

    :catchall_43
    move-exception v2

    :try_start_44
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "database":Landroid/database/sqlite/SQLiteDatabase;
    .end local p1    # "feature":I
    .end local p2    # "instanceUid":Ljava/lang/String;
    :cond_47
    :goto_47
    throw v1
    :try_end_48
    .catch Landroid/database/SQLException; {:try_start_44 .. :try_end_48} :catch_48

    .line 175
    .end local v0    # "cursor":Landroid/database/Cursor;
    .restart local p0    # "database":Landroid/database/sqlite/SQLiteDatabase;
    .restart local p1    # "feature":I
    .restart local p2    # "instanceUid":Ljava/lang/String;
    :catch_48
    move-exception v0

    .line 176
    .local v0, "e":Landroid/database/SQLException;
    new-instance v1, Lcom/google/android/exoplayer2/database/DatabaseIOException;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/database/DatabaseIOException;-><init>(Landroid/database/SQLException;)V

    throw v1
.end method

.method public static removeVersion(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)V
    .registers 6
    .param p0, "writableDatabase"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "feature"    # I
    .param p2, "instanceUid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/database/DatabaseIOException;
        }
    .end annotation

    .line 132
    const-string v0, "ExoPlayerVersions"

    :try_start_2
    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/util/Util;->tableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 133
    return-void

    .line 135
    :cond_9
    const-string v1, "feature = ? AND instance_uid = ?"

    .line 138
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/database/VersionTable;->featureAndInstanceUidArguments(ILjava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 135
    invoke-virtual {p0, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_12
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_12} :catch_14

    .line 141
    nop

    .line 142
    return-void

    .line 139
    :catch_14
    move-exception v0

    .line 140
    .local v0, "e":Landroid/database/SQLException;
    new-instance v1, Lcom/google/android/exoplayer2/database/DatabaseIOException;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/database/DatabaseIOException;-><init>(Landroid/database/SQLException;)V

    throw v1
.end method

.method public static setVersion(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;I)V
    .registers 7
    .param p0, "writableDatabase"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "feature"    # I
    .param p2, "instanceUid"    # Ljava/lang/String;
    .param p3, "version"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/database/DatabaseIOException;
        }
    .end annotation

    .line 109
    :try_start_0
    const-string v0, "CREATE TABLE IF NOT EXISTS ExoPlayerVersions (feature INTEGER NOT NULL,instance_uid TEXT NOT NULL,version INTEGER NOT NULL,PRIMARY KEY (feature, instance_uid))"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 110
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 111
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "feature"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 112
    const-string v1, "instance_uid"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const-string v1, "version"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 114
    const-string v1, "ExoPlayerVersions"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->replaceOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_27
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_27} :catch_29

    .line 117
    nop

    .line 118
    .end local v0    # "values":Landroid/content/ContentValues;
    return-void

    .line 115
    :catch_29
    move-exception v0

    .line 116
    .local v0, "e":Landroid/database/SQLException;
    new-instance v1, Lcom/google/android/exoplayer2/database/DatabaseIOException;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/database/DatabaseIOException;-><init>(Landroid/database/SQLException;)V

    throw v1
.end method
