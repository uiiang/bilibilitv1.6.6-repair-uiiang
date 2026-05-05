.class public Lcom/google/android/exoplayer2/database/StandaloneDatabaseProvider;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "StandaloneDatabaseProvider.java"

# interfaces
.implements Lcom/google/android/exoplayer2/database/DatabaseProvider;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final DATABASE_NAME:Ljava/lang/String; = "exoplayer_internal.db"

.field private static final TAG:Ljava/lang/String; = "SADatabaseProvider"

.field private static final VERSION:I = 0x1


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "exoplayer_internal.db"

    invoke-direct {p0, v0, v3, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 56
    return-void
.end method

.method private static wipeDatabase(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 11
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 78
    const-string v0, "type"

    const-string v1, "name"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v4

    .line 79
    .local v4, "columns":[Ljava/lang/String;
    const-string v3, "sqlite_master"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 80
    move-object v2, p0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 88
    .local v0, "cursor":Landroid/database/Cursor;
    :goto_14
    :try_start_14
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_67

    .line 89
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 90
    .local v1, "type":Ljava/lang/String;
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 91
    .local v2, "name":Ljava/lang/String;
    const-string v3, "sqlite_sequence"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_66

    .line 93
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DROP "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " IF EXISTS "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_49
    .catchall {:try_start_14 .. :try_end_49} :catchall_6d

    .line 95
    .local v3, "sql":Ljava/lang/String;
    :try_start_49
    invoke-virtual {p0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_4c
    .catch Landroid/database/SQLException; {:try_start_49 .. :try_end_4c} :catch_4d
    .catchall {:try_start_49 .. :try_end_4c} :catchall_6d

    .line 98
    goto :goto_66

    .line 96
    :catch_4d
    move-exception v5

    .line 97
    .local v5, "e":Landroid/database/SQLException;
    :try_start_4e
    const-string v6, "SADatabaseProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error executing "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v5}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_66
    .catchall {:try_start_4e .. :try_end_66} :catchall_6d

    .line 100
    .end local v1    # "type":Ljava/lang/String;
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "sql":Ljava/lang/String;
    .end local v5    # "e":Landroid/database/SQLException;
    :cond_66
    :goto_66
    goto :goto_14

    .line 101
    :cond_67
    if-eqz v0, :cond_6c

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 102
    .end local v0    # "cursor":Landroid/database/Cursor;
    :cond_6c
    return-void

    .line 79
    .restart local v0    # "cursor":Landroid/database/Cursor;
    :catchall_6d
    move-exception v1

    if-eqz v0, :cond_78

    :try_start_70
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_73
    .catchall {:try_start_70 .. :try_end_73} :catchall_74

    goto :goto_78

    :catchall_74
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_78
    :goto_78
    goto :goto_7a

    :goto_79
    throw v1

    :goto_7a
    goto :goto_79
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 61
    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .line 70
    invoke-static {p1}, Lcom/google/android/exoplayer2/database/StandaloneDatabaseProvider;->wipeDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 71
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .line 66
    return-void
.end method
