.class public Lcom/bilibili/tv/ebook/util/EbookFileStore;
.super Ljava/lang/Object;
.source "EbookFileStore.java"


# static fields
.field private static final DATA_VERSION:I = 0x1

.field private static final DIR_NAME:Ljava/lang/String; = "ebook_data"

.field private static final FILE_NAME:Ljava/lang/String; = "bookshelf.json"

.field private static final FILE_TMP_NAME:Ljava/lang/String; = "bookshelf.json.tmp"

.field private static final KEY_BOOKSHELF:Ljava/lang/String; = "bookshelf"

.field private static final KEY_BOOKSHELF_ITEMS:Ljava/lang/String; = "bookshelf_items"

.field private static final KEY_COLOR_THEME:Ljava/lang/String; = "color_theme_index"

.field private static final KEY_FONT_SIZE:Ljava/lang/String; = "font_size"

.field private static final KEY_FONT_SIZE_DEFAULT:Ljava/lang/String; = "font_size_default"

.field private static final KEY_PROGRESS:Ljava/lang/String; = "progress"

.field private static final KEY_READING_PROGRESS:Ljava/lang/String; = "reading_progress"

.field private static final KEY_SCREEN_PERCENT:Ljava/lang/String; = "screen_percent"

.field private static final KEY_SETTINGS:Ljava/lang/String; = "settings"

.field private static final KEY_VERSION:Ljava/lang/String; = "version"

.field private static final KEY_VIDEO_POSITION:Ljava/lang/String; = "video_position"

.field private static final PREF_BOOKSHELF:Ljava/lang/String; = "bookshelf"

.field private static final PREF_CACHE:Ljava/lang/String; = "ebook_reader_prefs"

.field private static final PREF_SETTINGS:Ljava/lang/String; = "ebook_settings"

.field private static final TAG:Ljava/lang/String; = "EbookFileStore"

.field private static instance:Lcom/bilibili/tv/ebook/util/EbookFileStore;


# instance fields
.field private context:Landroid/content/Context;

.field private data:Lorg/json/JSONObject;

.field private loaded:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/ebook/util/EbookFileStore;->context:Landroid/content/Context;

    .line 72
    return-void
.end method

.method private getData()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 122
    iget-boolean v0, p0, Lcom/bilibili/tv/ebook/util/EbookFileStore;->loaded:Z

    if-nez v0, :cond_d

    .line 123
    invoke-direct {p0}, Lcom/bilibili/tv/ebook/util/EbookFileStore;->load()Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/ebook/util/EbookFileStore;->data:Lorg/json/JSONObject;

    .line 124
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bilibili/tv/ebook/util/EbookFileStore;->loaded:Z

    .line 126
    :cond_d
    iget-object v0, p0, Lcom/bilibili/tv/ebook/util/EbookFileStore;->data:Lorg/json/JSONObject;

    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/bilibili/tv/ebook/util/EbookFileStore;
    .locals 2

    .prologue
    .line 76
    const-class v1, Lcom/bilibili/tv/ebook/util/EbookFileStore;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/bilibili/tv/ebook/util/EbookFileStore;->instance:Lcom/bilibili/tv/ebook/util/EbookFileStore;

    if-nez v0, :cond_e

    .line 77
    new-instance v0, Lcom/bilibili/tv/ebook/util/EbookFileStore;

    invoke-direct {v0, p0}, Lcom/bilibili/tv/ebook/util/EbookFileStore;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/bilibili/tv/ebook/util/EbookFileStore;->instance:Lcom/bilibili/tv/ebook/util/EbookFileStore;

    .line 79
    :cond_e
    sget-object v0, Lcom/bilibili/tv/ebook/util/EbookFileStore;->instance:Lcom/bilibili/tv/ebook/util/EbookFileStore;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 76
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getSettings()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 394
    invoke-direct {p0}, Lcom/bilibili/tv/ebook/util/EbookFileStore;->getData()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "settings"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 395
    if-nez v0, :cond_1a

    .line 396
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 398
    :try_start_11
    invoke-direct {p0}, Lcom/bilibili/tv/ebook/util/EbookFileStore;->getData()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "settings"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1a
    .catch Lorg/json/JSONException; {:try_start_11 .. :try_end_1a} :catch_1b

    .line 403
    :cond_1a
    :goto_1a
    return-object v0

    .line 399
    :catch_1b
    move-exception v1

    .line 400
    const-string v2, "EbookFileStore"

    const-string v3, "\u521b\u5efa\u8bbe\u7f6e\u5bf9\u8c61\u5931\u8d25"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1a
.end method

.method public static hasManageExternalStoragePermission()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 106
    :try_start_1
    const-class v0, Landroid/os/Environment;

    const-string v2, "isExternalStorageManager"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 107
    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 108
    instance-of v2, v0, Ljava/lang/Boolean;

    if-eqz v2, :cond_22

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1d} :catch_24

    move-result v0

    if-eqz v0, :cond_22

    const/4 v0, 0x1

    .line 110
    :goto_21
    return v0

    :cond_22
    move v0, v1

    .line 108
    goto :goto_21

    .line 109
    :catch_24
    move-exception v0

    move v0, v1

    .line 110
    goto :goto_21
.end method

.method public static isExternalWritable()Z
    .locals 3

    .prologue
    .line 90
    const-string v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 91
    const/4 v0, 0x0

    .line 97
    :goto_d
    return v0

    .line 93
    :cond_e
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_19

    .line 94
    invoke-static {}, Lcom/bilibili/tv/ebook/util/EbookFileStore;->hasManageExternalStoragePermission()Z

    move-result v0

    goto :goto_d

    .line 96
    :cond_19
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "Download"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 97
    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0

    goto :goto_d
.end method

.method private load()Lorg/json/JSONObject;
    .locals 5

    .prologue
    .line 133
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 135
    :try_start_5
    invoke-virtual {p0}, Lcom/bilibili/tv/ebook/util/EbookFileStore;->getDataFile()Ljava/io/File;

    move-result-object v1

    .line 136
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_40

    .line 137
    invoke-direct {p0, v1}, Lcom/bilibili/tv/ebook/util/EbookFileStore;->readFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    .line 138
    if-eqz v2, :cond_40

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_40

    .line 139
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 140
    const-string v2, "EbookFileStore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u4ece JSON \u6587\u4ef6\u52a0\u8f7d\u7535\u5b50\u4e66\u6570\u636e: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_40} :catch_5d

    .line 149
    :cond_40
    :goto_40
    const-string v1, "bookshelf"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5c

    const-string v1, "progress"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5c

    const-string v1, "settings"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5c

    .line 150
    invoke-direct {p0}, Lcom/bilibili/tv/ebook/util/EbookFileStore;->migrateFromPrefs()Lorg/json/JSONObject;

    move-result-object v0

    .line 152
    :cond_5c
    return-object v0

    .line 143
    :catch_5d
    move-exception v0

    .line 144
    const-string v1, "EbookFileStore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u8bfb\u53d6 JSON \u6587\u4ef6\u5931\u8d25\uff0c\u4f7f\u7528 SharedPreferences \u6570\u636e: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    goto :goto_40
.end method

.method private migrateFromPrefs()Lorg/json/JSONObject;
    .locals 6

    .prologue
    .line 159
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 161
    :try_start_5
    const-string v0, "version"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 163
    iget-object v0, p0, Lcom/bilibili/tv/ebook/util/EbookFileStore;->context:Landroid/content/Context;

    const-string v2, "bookshelf"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 164
    const-string v2, "bookshelf_items"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 165
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_a7

    .line 166
    const-string v2, "bookshelf"

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 171
    :goto_2c
    iget-object v0, p0, Lcom/bilibili/tv/ebook/util/EbookFileStore;->context:Landroid/content/Context;

    const-string v2, "ebook_reader_prefs"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 172
    const-string v2, "reading_progress"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 173
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_bc

    .line 174
    const-string v3, "progress"

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 179
    :goto_4d
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 180
    const-string v3, "font_size_default"

    const-string v4, "font_size_default"

    const/16 v5, 0x10

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 181
    iget-object v0, p0, Lcom/bilibili/tv/ebook/util/EbookFileStore;->context:Landroid/content/Context;

    const-string v3, "ebook_settings"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 182
    const-string v3, "font_size"

    const-string v4, "font_size"

    const/high16 v5, 0x41e00000    # 28.0f

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v4

    float-to-double v4, v4

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 183
    const-string v3, "color_theme_index"

    const-string v4, "color_theme_index"

    const/4 v5, 0x0

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 184
    const-string v3, "screen_percent"

    const-string v4, "screen_percent"

    const/4 v5, 0x1

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 185
    const-string v3, "video_position"

    const-string v4, "video_position"

    const/4 v5, 0x0

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 186
    const-string v0, "settings"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 188
    const-string v0, "EbookFileStore"

    const-string v2, "\u5df2\u4ece SharedPreferences \u8fc1\u79fb\u7535\u5b50\u4e66\u6570\u636e"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :goto_a6
    return-object v1

    .line 168
    :cond_a7
    const-string v0, "bookshelf"

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_b1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_b1} :catch_b3

    goto/16 :goto_2c

    .line 189
    :catch_b3
    move-exception v0

    .line 190
    const-string v2, "EbookFileStore"

    const-string v3, "\u8fc1\u79fb SharedPreferences \u6570\u636e\u5931\u8d25"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a6

    .line 176
    :cond_bc
    :try_start_bc
    const-string v2, "progress"

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_c6
    .catch Ljava/lang/Exception; {:try_start_bc .. :try_end_c6} :catch_b3

    goto :goto_4d
.end method

.method private readFile(Ljava/io/File;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 295
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 296
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 297
    const/16 v2, 0x1000

    new-array v2, v2, [B

    .line 299
    :goto_e
    invoke-virtual {v0, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_39

    .line 300
    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_19} :catch_1a

    goto :goto_e

    .line 304
    :catch_1a
    move-exception v0

    .line 305
    const-string v1, "EbookFileStore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u8bfb\u53d6\u6570\u636e\u6587\u4ef6\u5931\u8d25: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    const/4 v0, 0x0

    :goto_38
    return-object v0

    .line 302
    :cond_39
    :try_start_39
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 303
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_47} :catch_1a

    goto :goto_38
.end method

.method private declared-synchronized save()V
    .locals 2

    .prologue
    .line 201
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/bilibili/tv/ebook/util/EbookFileStore;->getData()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 202
    invoke-direct {p0, v0}, Lcom/bilibili/tv/ebook/util/EbookFileStore;->writeFileIfPossible(Ljava/lang/String;)Z

    move-result v1

    .line 203
    if-eqz v1, :cond_14

    .line 204
    invoke-direct {p0, v0}, Lcom/bilibili/tv/ebook/util/EbookFileStore;->savePrefsMirror(Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_1f

    .line 210
    :goto_12
    monitor-exit p0

    return-void

    .line 207
    :cond_14
    :try_start_14
    invoke-direct {p0, v0}, Lcom/bilibili/tv/ebook/util/EbookFileStore;->savePrefsMirror(Ljava/lang/String;)V

    .line 208
    const-string v0, "EbookFileStore"

    const-string v1, "\u5916\u90e8\u5b58\u50a8\u4e0d\u53ef\u5199\uff0c\u6570\u636e\u964d\u7ea7\u4fdd\u5b58\u5230 SharedPreferences"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e
    .catchall {:try_start_14 .. :try_end_1e} :catchall_1f

    goto :goto_12

    .line 201
    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private savePrefsMirror(Ljava/lang/String;)V
    .locals 8

    .prologue
    const/16 v0, 0x10

    .line 255
    :try_start_2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 256
    const-string v2, "bookshelf"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 257
    const-string v3, "progress"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 258
    const-string v4, "settings"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 260
    if-eqz v2, :cond_35

    .line 261
    iget-object v4, p0, Lcom/bilibili/tv/ebook/util/EbookFileStore;->context:Landroid/content/Context;

    const-string v5, "bookshelf"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 262
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "bookshelf_items"

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v5, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 264
    :cond_35
    if-eqz v3, :cond_51

    .line 265
    iget-object v2, p0, Lcom/bilibili/tv/ebook/util/EbookFileStore;->context:Landroid/content/Context;

    const-string v4, "ebook_reader_prefs"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 266
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v4, "reading_progress"

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 268
    :cond_51
    if-eqz v1, :cond_b5

    .line 269
    iget-object v2, p0, Lcom/bilibili/tv/ebook/util/EbookFileStore;->context:Landroid/content/Context;

    const-string v3, "ebook_settings"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 270
    const-string v3, "font_size"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_76

    .line 271
    const-string v3, "font_size"

    const-string v4, "font_size"

    const-wide/high16 v6, 0x403c000000000000L    # 28.0

    invoke-virtual {v1, v4, v6, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    double-to-float v4, v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 273
    :cond_76
    const-string v3, "color_theme_index"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8a

    .line 274
    const-string v3, "color_theme_index"

    const-string v4, "color_theme_index"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 276
    :cond_8a
    const-string v3, "screen_percent"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9e

    .line 277
    const-string v3, "screen_percent"

    const-string v4, "screen_percent"

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 279
    :cond_9e
    const-string v3, "video_position"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b2

    .line 280
    const-string v3, "video_position"

    const-string v4, "video_position"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 282
    :cond_b2
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 285
    :cond_b5
    if-eqz v1, :cond_bf

    const-string v0, "font_size_default"

    const/16 v2, 0x10

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 286
    :cond_bf
    iget-object v1, p0, Lcom/bilibili/tv/ebook/util/EbookFileStore;->context:Landroid/content/Context;

    const-string v2, "ebook_reader_prefs"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 287
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "font_size_default"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_d5
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_d5} :catch_d6

    .line 291
    :goto_d5
    return-void

    .line 288
    :catch_d6
    move-exception v0

    .line 289
    const-string v1, "EbookFileStore"

    const-string v2, "\u540c\u6b65 SharedPreferences \u955c\u50cf\u5931\u8d25"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d5
.end method

.method private writeFileIfPossible(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 217
    :try_start_1
    invoke-virtual {p0}, Lcom/bilibili/tv/ebook/util/EbookFileStore;->getDataFile()Ljava/io/File;

    move-result-object v1

    .line 218
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    .line 219
    if-eqz v2, :cond_34

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_34

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_34

    .line 220
    const-string v1, "EbookFileStore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u65e0\u6cd5\u521b\u5efa\u7535\u5b50\u4e66\u6570\u636e\u76ee\u5f55: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    :goto_33
    return v0

    .line 223
    :cond_34
    new-instance v3, Ljava/io/File;

    const-string v4, "bookshelf.json.tmp"

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 224
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_40} :catch_8c

    .line 226
    :try_start_40
    const-string v4, "UTF-8"

    invoke-virtual {p1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/FileOutputStream;->write([B)V

    .line 227
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V
    :try_end_4c
    .catchall {:try_start_40 .. :try_end_4c} :catchall_87

    .line 229
    :try_start_4c
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 231
    invoke-virtual {v3, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_69

    .line 233
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_5a} :catch_8c

    .line 235
    :try_start_5a
    const-string v3, "UTF-8"

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 236
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V
    :try_end_66
    .catchall {:try_start_5a .. :try_end_66} :catchall_aa

    .line 238
    :try_start_66
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 241
    :cond_69
    const-string v2, "EbookFileStore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u7535\u5b50\u4e66\u6570\u636e\u5df2\u5199\u5165\u6587\u4ef6: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    const/4 v0, 0x1

    goto :goto_33

    .line 229
    :catchall_87
    move-exception v1

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 230
    throw v1
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_8c} :catch_8c

    .line 243
    :catch_8c
    move-exception v1

    .line 244
    const-string v2, "EbookFileStore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u5199\u5165\u7535\u5b50\u4e66\u6570\u636e\u6587\u4ef6\u5931\u8d25: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_33

    .line 238
    :catchall_aa
    move-exception v1

    :try_start_ab
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 239
    throw v1
    :try_end_af
    .catch Ljava/lang/Exception; {:try_start_ab .. :try_end_af} :catch_8c
.end method


# virtual methods
.method public clearAll()V
    .locals 3

    .prologue
    .line 479
    :try_start_0
    invoke-direct {p0}, Lcom/bilibili/tv/ebook/util/EbookFileStore;->getData()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "bookshelf"

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 480
    invoke-direct {p0}, Lcom/bilibili/tv/ebook/util/EbookFileStore;->getData()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "progress"

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 481
    invoke-direct {p0}, Lcom/bilibili/tv/ebook/util/EbookFileStore;->getData()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "settings"

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 482
    invoke-direct {p0}, Lcom/bilibili/tv/ebook/util/EbookFileStore;->save()V

    .line 483
    const-string v0, "EbookFileStore"

    const-string v1, "\u6240\u6709\u7535\u5b50\u4e66\u6570\u636e\u5df2\u6e05\u9664"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_34
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_34} :catch_35

    .line 487
    :goto_34
    return-void

    .line 484
    :catch_35
    move-exception v0

    .line 485
    const-string v1, "EbookFileStore"

    const-string v2, "\u6e05\u9664\u6240\u6709\u7535\u5b50\u4e66\u6570\u636e\u5931\u8d25"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_34
.end method

.method public clearAllReadingProgress()V
    .locals 3

    .prologue
    .line 383
    :try_start_0
    invoke-direct {p0}, Lcom/bilibili/tv/ebook/util/EbookFileStore;->getData()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "progress"

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 384
    invoke-direct {p0}, Lcom/bilibili/tv/ebook/util/EbookFileStore;->save()V

    .line 385
    const-string v0, "EbookFileStore"

    const-string v1, "\u5168\u90e8\u9605\u8bfb\u8fdb\u5ea6\u5df2\u6e05\u9664"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_18
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_18} :catch_19

    .line 389
    :goto_18
    return-void

    .line 386
    :catch_19
    move-exception v0

    .line 387
    const-string v1, "EbookFileStore"

    const-string v2, "\u6e05\u9664\u5168\u90e8\u9605\u8bfb\u8fdb\u5ea6\u5931\u8d25"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_18
.end method

.method public getBookshelfJson()Ljava/lang/String;
    .locals 2

    .prologue
    .line 314
    invoke-direct {p0}, Lcom/bilibili/tv/ebook/util/EbookFileStore;->getData()Lorg/json/JSONObject;

    move-result-object v0

    .line 315
    const-string v1, "bookshelf"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 316
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_11

    .line 317
    check-cast v0, Ljava/lang/String;

    .line 322
    :goto_10
    return-object v0

    .line 319
    :cond_11
    if-eqz v0, :cond_18

    .line 320
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    .line 322
    :cond_18
    const-string v0, "[]"

    goto :goto_10
.end method

.method public getColorThemeIndex()I
    .locals 3

    .prologue
    .line 421
    invoke-direct {p0}, Lcom/bilibili/tv/ebook/util/EbookFileStore;->getSettings()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "color_theme_index"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getDataFile()Ljava/io/File;
    .locals 4

    .prologue
    .line 116
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "Download"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v2, "ebook_data/bookshelf.json"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public getFontSize()F
    .locals 4

    .prologue
    .line 407
    invoke-direct {p0}, Lcom/bilibili/tv/ebook/util/EbookFileStore;->getSettings()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "font_size"

    const-wide/high16 v2, 0x403c000000000000L    # 28.0

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public getFontSizeDefault()I
    .locals 3

    .prologue
    .line 463
    invoke-direct {p0}, Lcom/bilibili/tv/ebook/util/EbookFileStore;->getSettings()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "font_size_default"

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getReadingProgressJson()Ljava/lang/String;
    .locals 2

    .prologue
    .line 342
    invoke-direct {p0}, Lcom/bilibili/tv/ebook/util/EbookFileStore;->getData()Lorg/json/JSONObject;

    move-result-object v0

    .line 343
    const-string v1, "progress"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 344
    if-eqz v0, :cond_11

    .line 345
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 347
    :goto_10
    return-object v0

    :cond_11
    const-string v0, "{}"

    goto :goto_10
.end method

.method public getScreenPercent()I
    .locals 3

    .prologue
    .line 435
    invoke-direct {p0}, Lcom/bilibili/tv/ebook/util/EbookFileStore;->getSettings()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "screen_percent"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getVideoPosition()I
    .locals 3

    .prologue
    .line 449
    invoke-direct {p0}, Lcom/bilibili/tv/ebook/util/EbookFileStore;->getSettings()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "video_position"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public removeReadingProgress(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 365
    if-nez p1, :cond_3

    .line 378
    :cond_2
    :goto_2
    return-void

    .line 369
    :cond_3
    :try_start_3
    invoke-direct {p0}, Lcom/bilibili/tv/ebook/util/EbookFileStore;->getData()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "progress"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 370
    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 371
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 372
    invoke-direct {p0}, Lcom/bilibili/tv/ebook/util/EbookFileStore;->save()V

    .line 373
    const-string v0, "EbookFileStore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u9605\u8bfb\u8fdb\u5ea6\u5df2\u5220\u9664: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_33} :catch_34

    goto :goto_2

    .line 375
    :catch_34
    move-exception v0

    .line 376
    const-string v1, "EbookFileStore"

    const-string v2, "\u5220\u9664\u9605\u8bfb\u8fdb\u5ea6\u5931\u8d25"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method public saveBookshelfJson(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 327
    if-nez p1, :cond_3

    .line 336
    :goto_2
    return-void

    .line 331
    :cond_3
    :try_start_3
    invoke-direct {p0}, Lcom/bilibili/tv/ebook/util/EbookFileStore;->getData()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "bookshelf"

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 332
    invoke-direct {p0}, Lcom/bilibili/tv/ebook/util/EbookFileStore;->save()V
    :try_end_14
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_14} :catch_15

    goto :goto_2

    .line 333
    :catch_15
    move-exception v0

    .line 334
    const-string v1, "EbookFileStore"

    const-string v2, "\u4fdd\u5b58\u4e66\u67b6\u5931\u8d25"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method public saveColorThemeIndex(I)V
    .locals 3

    .prologue
    .line 426
    :try_start_0
    invoke-direct {p0}, Lcom/bilibili/tv/ebook/util/EbookFileStore;->getSettings()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "color_theme_index"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 427
    invoke-direct {p0}, Lcom/bilibili/tv/ebook/util/EbookFileStore;->save()V

    .line 428
    const-string v0, "EbookFileStore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u914d\u8272\u65b9\u6848\u5df2\u4fdd\u5b58: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_24
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_24} :catch_25

    .line 432
    :goto_24
    return-void

    .line 429
    :catch_25
    move-exception v0

    .line 430
    const-string v1, "EbookFileStore"

    const-string v2, "\u4fdd\u5b58\u914d\u8272\u65b9\u6848\u5931\u8d25"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_24
.end method

.method public saveFontSize(F)V
    .locals 4

    .prologue
    .line 412
    :try_start_0
    invoke-direct {p0}, Lcom/bilibili/tv/ebook/util/EbookFileStore;->getSettings()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "font_size"

    float-to-double v2, p1

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 413
    invoke-direct {p0}, Lcom/bilibili/tv/ebook/util/EbookFileStore;->save()V

    .line 414
    const-string v0, "EbookFileStore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5b57\u4f53\u5927\u5c0f\u5df2\u4fdd\u5b58: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_25
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_25} :catch_26

    .line 418
    :goto_25
    return-void

    .line 415
    :catch_26
    move-exception v0

    .line 416
    const-string v1, "EbookFileStore"

    const-string v2, "\u4fdd\u5b58\u5b57\u4f53\u5927\u5c0f\u5931\u8d25"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_25
.end method

.method public saveFontSizeDefault(I)V
    .locals 3

    .prologue
    .line 468
    :try_start_0
    invoke-direct {p0}, Lcom/bilibili/tv/ebook/util/EbookFileStore;->getSettings()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "font_size_default"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 469
    invoke-direct {p0}, Lcom/bilibili/tv/ebook/util/EbookFileStore;->save()V

    .line 470
    const-string v0, "EbookFileStore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u9ed8\u8ba4\u5b57\u4f53\u5927\u5c0f\u5df2\u4fdd\u5b58: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_24
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_24} :catch_25

    .line 474
    :goto_24
    return-void

    .line 471
    :catch_25
    move-exception v0

    .line 472
    const-string v1, "EbookFileStore"

    const-string v2, "\u4fdd\u5b58\u9ed8\u8ba4\u5b57\u4f53\u5927\u5c0f\u5931\u8d25"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_24
.end method

.method public saveReadingProgressJson(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 352
    if-nez p1, :cond_3

    .line 361
    :goto_2
    return-void

    .line 356
    :cond_3
    :try_start_3
    invoke-direct {p0}, Lcom/bilibili/tv/ebook/util/EbookFileStore;->getData()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "progress"

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 357
    invoke-direct {p0}, Lcom/bilibili/tv/ebook/util/EbookFileStore;->save()V
    :try_end_14
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_14} :catch_15

    goto :goto_2

    .line 358
    :catch_15
    move-exception v0

    .line 359
    const-string v1, "EbookFileStore"

    const-string v2, "\u4fdd\u5b58\u9605\u8bfb\u8fdb\u5ea6\u5931\u8d25"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method public saveScreenPercent(I)V
    .locals 3

    .prologue
    .line 440
    :try_start_0
    invoke-direct {p0}, Lcom/bilibili/tv/ebook/util/EbookFileStore;->getSettings()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "screen_percent"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 441
    invoke-direct {p0}, Lcom/bilibili/tv/ebook/util/EbookFileStore;->save()V

    .line 442
    const-string v0, "EbookFileStore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5c4f\u5e55\u5360\u6bd4\u5df2\u4fdd\u5b58: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_24
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_24} :catch_25

    .line 446
    :goto_24
    return-void

    .line 443
    :catch_25
    move-exception v0

    .line 444
    const-string v1, "EbookFileStore"

    const-string v2, "\u4fdd\u5b58\u5c4f\u5e55\u5360\u6bd4\u5931\u8d25"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_24
.end method

.method public saveVideoPosition(I)V
    .locals 3

    .prologue
    .line 454
    :try_start_0
    invoke-direct {p0}, Lcom/bilibili/tv/ebook/util/EbookFileStore;->getSettings()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "video_position"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 455
    invoke-direct {p0}, Lcom/bilibili/tv/ebook/util/EbookFileStore;->save()V

    .line 456
    const-string v0, "EbookFileStore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u89c6\u9891\u4f4d\u7f6e\u5df2\u4fdd\u5b58: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_24
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_24} :catch_25

    .line 460
    :goto_24
    return-void

    .line 457
    :catch_25
    move-exception v0

    .line 458
    const-string v1, "EbookFileStore"

    const-string v2, "\u4fdd\u5b58\u89c6\u9891\u4f4d\u7f6e\u5931\u8d25"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_24
.end method
