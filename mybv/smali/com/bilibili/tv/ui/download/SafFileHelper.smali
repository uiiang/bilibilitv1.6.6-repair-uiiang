.class public Lcom/bilibili/tv/ui/download/SafFileHelper;
.super Ljava/lang/Object;
.source "SafFileHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SafFileHelper"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildChildrenUri(Landroid/net/Uri;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 1

    .prologue
    .line 69
    invoke-static {p1}, Lcom/bilibili/tv/ui/download/SafFileHelper;->getDocId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 70
    if-nez v0, :cond_a

    .line 71
    invoke-static {p0}, Landroid/provider/DocumentsContract;->getTreeDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 73
    :cond_a
    invoke-static {p0, v0}, Landroid/provider/DocumentsContract;->buildChildDocumentsUriUsingTree(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static delete(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 323
    if-eqz p1, :cond_9

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 334
    :cond_9
    :goto_9
    return v0

    .line 326
    :cond_a
    invoke-static {p1}, Lcom/bilibili/tv/ui/download/SafFileHelper;->isSafDocumentUri(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 328
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    goto :goto_9

    .line 331
    :cond_1a
    :try_start_1a
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/provider/DocumentsContract;->deleteDocument(Landroid/content/ContentResolver;Landroid/net/Uri;)Z
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_25} :catch_27

    move-result v0

    goto :goto_9

    .line 332
    :catch_27
    move-exception v1

    .line 333
    const-string v2, "SafFileHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u5220\u9664\u6587\u4ef6\u5931\u8d25: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9
.end method

.method public static exists(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    .prologue
    .line 248
    invoke-static {p0, p1}, Lcom/bilibili/tv/ui/download/SafFileHelper;->getFileSize(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private static findChild(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Z)Landroid/net/Uri;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 135
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 136
    invoke-static {p1, p2}, Lcom/bilibili/tv/ui/download/SafFileHelper;->buildChildrenUri(Landroid/net/Uri;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "document_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "_display_name"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "mime_type"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_21} :catch_68

    move-result-object v1

    .line 141
    if-eqz v1, :cond_61

    .line 143
    :cond_24
    :try_start_24
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 144
    const-string v0, "_display_name"

    .line 145
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 144
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 146
    const-string v2, "mime_type"

    .line 147
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 146
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 148
    const-string v3, "vnd.android.document/directory"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 149
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    if-ne v2, p4, :cond_24

    .line 150
    const-string v0, "document_id"

    .line 151
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 150
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 152
    invoke-static {p1, v0}, Landroid/provider/DocumentsContract;->buildDocumentUriUsingTree(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    :try_end_59
    .catchall {:try_start_24 .. :try_end_59} :catchall_63

    move-result-object v0

    .line 156
    :try_start_5a
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 162
    :goto_5d
    return-object v0

    .line 156
    :cond_5e
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_61
    :goto_61
    move-object v0, v6

    .line 162
    goto :goto_5d

    .line 156
    :catchall_63
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 157
    throw v0
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_68} :catch_68

    .line 159
    :catch_68
    move-exception v0

    .line 160
    const-string v1, "SafFileHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u67e5\u627e\u5b50\u9879\u5931\u8d25: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_61
.end method

.method public static findOrCreateDirectory(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 169
    invoke-static {p1}, Lcom/bilibili/tv/ui/download/SafFileHelper;->isSafTreeUri(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 187
    :goto_7
    return-object v0

    .line 173
    :cond_8
    :try_start_8
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 174
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 175
    const/4 v1, 0x1

    invoke-static {p0, v2, v2, p2, v1}, Lcom/bilibili/tv/ui/download/SafFileHelper;->findChild(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Z)Landroid/net/Uri;

    move-result-object v1

    .line 176
    if-eqz v1, :cond_19

    move-object v0, v1

    .line 177
    goto :goto_7

    .line 182
    :cond_19
    invoke-static {v2}, Landroid/provider/DocumentsContract;->getTreeDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 181
    invoke-static {v2, v1}, Landroid/provider/DocumentsContract;->buildDocumentUriUsingTree(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 183
    const-string v2, "vnd.android.document/directory"

    invoke-static {v3, v1, v2, p2}, Landroid/provider/DocumentsContract;->createDocument(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_26} :catch_28

    move-result-object v0

    goto :goto_7

    .line 185
    :catch_28
    move-exception v1

    .line 186
    const-string v2, "SafFileHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u521b\u5efa\u76ee\u5f55\u5931\u8d25: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7
.end method

.method public static findOrCreateFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 198
    invoke-static {p1}, Lcom/bilibili/tv/ui/download/SafFileHelper;->isSafTreeUri(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {p2}, Lcom/bilibili/tv/ui/download/SafFileHelper;->isSafTreeUri(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    :cond_d
    move-object v0, v1

    .line 212
    :cond_e
    :goto_e
    return-object v0

    .line 202
    :cond_f
    :try_start_f
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 203
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 204
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 205
    const/4 v4, 0x0

    invoke-static {p0, v0, v2, p3, v4}, Lcom/bilibili/tv/ui/download/SafFileHelper;->findChild(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Z)Landroid/net/Uri;

    move-result-object v0

    .line 206
    if-nez v0, :cond_e

    .line 209
    invoke-static {v3, v2, p4, p3}, Landroid/provider/DocumentsContract;->createDocument(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_25} :catch_27

    move-result-object v0

    goto :goto_e

    .line 210
    :catch_27
    move-exception v0

    .line 211
    const-string v2, "SafFileHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u521b\u5efa\u6587\u4ef6\u5931\u8d25: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 212
    goto :goto_e
.end method

.method public static getDisplayName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 106
    invoke-static {p1}, Lcom/bilibili/tv/ui/download/SafFileHelper;->isSafTreeUri(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    move-object v0, v6

    .line 127
    :goto_8
    return-object v0

    .line 110
    :cond_9
    :try_start_9
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 112
    invoke-static {v0}, Landroid/provider/DocumentsContract;->getTreeDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 111
    invoke-static {v0, v1}, Landroid/provider/DocumentsContract;->buildDocumentUriUsingTree(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 113
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_display_name"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_27} :catch_3e

    move-result-object v1

    .line 115
    if-eqz v1, :cond_5b

    .line 117
    :try_start_2a
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 118
    const-string v0, "_display_name"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_39
    .catchall {:try_start_2a .. :try_end_39} :catchall_61

    move-result-object v0

    .line 121
    :try_start_3a
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_3d} :catch_3e

    goto :goto_8

    .line 124
    :catch_3e
    move-exception v0

    .line 125
    const-string v1, "SafFileHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u83b7\u53d6\u663e\u793a\u540d\u5931\u8d25: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5b
    :goto_5b
    move-object v0, v6

    .line 127
    goto :goto_8

    .line 121
    :cond_5d
    :try_start_5d
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_5b

    :catchall_61
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 122
    throw v0
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_66} :catch_3e
.end method

.method private static getDocId(Landroid/net/Uri;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 46
    if-nez p0, :cond_7

    .line 62
    :cond_6
    :goto_6
    return-object v0

    .line 49
    :cond_7
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    .line 50
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x4

    if-lt v2, v3, :cond_32

    const-string v2, "tree"

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    const-string v2, "document"

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 52
    const/4 v0, 0x3

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_6

    .line 54
    :cond_32
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lt v2, v5, :cond_4b

    const-string v2, "tree"

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 56
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_6

    .line 58
    :cond_4b
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lt v2, v5, :cond_6

    const-string v2, "document"

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 60
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_6
.end method

.method public static getFileNameFromPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v1, 0x2f

    .line 257
    if-eqz p1, :cond_a

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 258
    :cond_a
    const-string p1, ""

    .line 290
    :cond_c
    :goto_c
    return-object p1

    .line 260
    :cond_d
    const-string v0, "content://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_83

    .line 262
    :try_start_15
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v0

    .line 263
    if-eqz v0, :cond_7b

    .line 264
    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 265
    if-ltz v1, :cond_2d

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 266
    :cond_2d
    invoke-static {v0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 267
    if-eqz v0, :cond_7b

    .line 269
    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 270
    if-ltz v1, :cond_49

    .line 271
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 276
    :cond_41
    :goto_41
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7b

    move-object p1, v0

    .line 277
    goto :goto_c

    .line 272
    :cond_49
    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_41

    .line 274
    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_5c} :catch_5e

    move-result-object v0

    goto :goto_41

    .line 281
    :catch_5e
    move-exception v0

    .line 282
    const-string v1, "SafFileHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u89e3\u6790SAF\u6587\u4ef6\u540d\u5931\u8d25: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    :cond_7b
    invoke-static {p0, p1}, Lcom/bilibili/tv/ui/download/SafFileHelper;->queryDisplayName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 286
    if-eqz v0, :cond_c

    move-object p1, v0

    goto :goto_c

    .line 289
    :cond_83
    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 290
    if-ltz v0, :cond_c

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_c
.end method

.method public static getFileSize(Landroid/content/Context;Ljava/lang/String;)J
    .locals 6

    .prologue
    const-wide/16 v0, -0x1

    .line 220
    if-eqz p1, :cond_a

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 240
    :cond_a
    :goto_a
    return-wide v0

    .line 223
    :cond_b
    const-string v2, "content://"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2b

    const-string v2, "file://"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2b

    .line 225
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 226
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v0

    goto :goto_a

    .line 229
    :cond_2b
    :try_start_2b
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 230
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 231
    const-string v4, "r"

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v4

    .line 232
    if-eqz v4, :cond_a

    .line 233
    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v2

    .line 234
    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_42} :catch_44

    move-wide v0, v2

    .line 235
    goto :goto_a

    .line 238
    :catch_44
    move-exception v2

    .line 239
    const-string v3, "SafFileHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u83b7\u53d6\u6587\u4ef6\u5927\u5c0f\u5931\u8d25: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a
.end method

.method public static isDirectoryAvailable(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 80
    invoke-static {p1}, Lcom/bilibili/tv/ui/download/SafFileHelper;->isSafTreeUri(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    move v0, v6

    .line 98
    :goto_8
    return v0

    .line 84
    :cond_9
    :try_start_9
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 85
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 87
    invoke-static {v1}, Landroid/provider/DocumentsContract;->getTreeDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 86
    invoke-static {v1, v2}, Landroid/provider/DocumentsContract;->buildDocumentUriUsingTree(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 88
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "document_id"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 90
    if-eqz v1, :cond_51

    .line 91
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    .line 92
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_31} :catch_32

    goto :goto_8

    .line 96
    :catch_32
    move-exception v0

    .line 97
    const-string v1, "SafFileHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u68c0\u67e5\u76ee\u5f55\u5931\u8d25: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v6

    .line 98
    goto :goto_8

    :cond_51
    move v0, v6

    .line 95
    goto :goto_8
.end method

.method private static isSafDocumentUri(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 30
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_12

    if-eqz p0, :cond_12

    const-string v0, "content://"

    .line 31
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    .line 30
    :goto_11
    return v0

    .line 31
    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private static isSafTreeUri(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 38
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_12

    if-eqz p0, :cond_12

    const-string v0, "content://"

    .line 39
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    .line 38
    :goto_11
    return v0

    .line 39
    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private static queryDisplayName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 298
    :try_start_1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 299
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_display_name"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_17} :catch_3a

    move-result-object v1

    .line 301
    if-eqz v1, :cond_33

    .line 303
    :try_start_1a
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 304
    const-string v0, "_display_name"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 305
    if-ltz v0, :cond_30

    .line 306
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_2b
    .catchall {:try_start_1a .. :try_end_2b} :catchall_35

    move-result-object v0

    .line 310
    :try_start_2c
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 316
    :goto_2f
    return-object v0

    .line 310
    :cond_30
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_33
    :goto_33
    move-object v0, v6

    .line 316
    goto :goto_2f

    .line 310
    :catchall_35
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 311
    throw v0
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_3a} :catch_3a

    .line 313
    :catch_3a
    move-exception v0

    .line 314
    const-string v1, "SafFileHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u67e5\u8be2\u6587\u4ef6\u540d\u5931\u8d25: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_33
.end method

.method public static rename(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 342
    if-eqz p1, :cond_b

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b

    if-nez p2, :cond_c

    .line 361
    :cond_b
    :goto_b
    return-object v0

    .line 345
    :cond_c
    invoke-static {p1}, Lcom/bilibili/tv/ui/download/SafFileHelper;->isSafTreeUri(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2d

    .line 347
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 348
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    .line 349
    if-eqz v2, :cond_b

    .line 352
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 353
    invoke-virtual {v1, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    .line 356
    :cond_2d
    :try_start_2d
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 357
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 356
    invoke-static {v1, v2, p2}, Landroid/provider/DocumentsContract;->renameDocument(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 358
    if-eqz v1, :cond_b

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_3e} :catch_40

    move-result-object v0

    goto :goto_b

    .line 359
    :catch_40
    move-exception v1

    .line 360
    const-string v2, "SafFileHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u91cd\u547d\u540d\u5931\u8d25: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b
.end method
