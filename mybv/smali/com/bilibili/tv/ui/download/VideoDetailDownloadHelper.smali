.class public Lcom/bilibili/tv/ui/download/VideoDetailDownloadHelper;
.super Ljava/lang/Object;
.source "VideoDetailDownloadHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "VideoDetailDownloadHelper"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 14
    invoke-static {p0}, Lcom/bilibili/tv/ui/download/VideoDetailDownloadHelper;->convertQualityToId(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 14
    invoke-static/range {p0 .. p6}, Lcom/bilibili/tv/ui/download/VideoDetailDownloadHelper;->getDownloadPath(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static buildFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0xa

    const/4 v2, 0x0

    .line 331
    if-eqz p2, :cond_44

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_44

    const/4 v0, 0x1

    move v1, v0

    .line 332
    :goto_d
    if-eqz v1, :cond_46

    .line 333
    :goto_f
    invoke-static {p2}, Lcom/bilibili/tv/ui/download/VideoDetailDownloadHelper;->sanitizeFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 334
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v4, :cond_1d

    .line 335
    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 337
    :cond_1d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 338
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    if-eqz v1, :cond_3a

    .line 340
    const-string v0, "_"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 342
    :cond_3a
    const-string v0, ".mp4"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_44
    move v1, v2

    .line 331
    goto :goto_d

    :cond_46
    move-object p2, p1

    .line 332
    goto :goto_f
.end method

.method private static convertQualityIdToString(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    sparse-switch p0, :sswitch_data_12

    .line 73
    const-string v0, "1080P \u9ad8\u6e05"

    :goto_5
    return-object v0

    .line 65
    :sswitch_6
    const-string v0, "1080P \u9ad8\u6e05"

    goto :goto_5

    .line 67
    :sswitch_9
    const-string v0, "720P \u9ad8\u6e05"

    goto :goto_5

    .line 69
    :sswitch_c
    const-string v0, "480P \u6e05\u6670"

    goto :goto_5

    .line 71
    :sswitch_f
    const-string v0, "360P \u6d41\u7545"

    goto :goto_5

    .line 63
    :sswitch_data_12
    .sparse-switch
        0x10 -> :sswitch_f
        0x20 -> :sswitch_c
        0x40 -> :sswitch_9
        0x50 -> :sswitch_6
    .end sparse-switch
.end method

.method private static convertQualityToId(Ljava/lang/String;)I
    .locals 2

    .prologue
    const/16 v0, 0x50

    .line 214
    if-nez p0, :cond_5

    .line 228
    :cond_4
    :goto_4
    return v0

    .line 218
    :cond_5
    const-string v1, "1080"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 220
    const-string v1, "720"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 221
    const/16 v0, 0x40

    goto :goto_4

    .line 222
    :cond_18
    const-string v1, "480"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 223
    const/16 v0, 0x20

    goto :goto_4

    .line 224
    :cond_23
    const-string v1, "360"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 225
    const/16 v0, 0x10

    goto :goto_4
.end method

.method private static estimateFileSize(J)J
    .locals 4

    .prologue
    .line 254
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gtz v0, :cond_a

    .line 255
    const-wide/32 v0, 0x6400000

    .line 261
    :goto_9
    return-wide v0

    .line 260
    :cond_a
    const-wide/32 v0, 0x200000

    mul-long/2addr v0, p0

    const-wide/16 v2, 0x8

    div-long/2addr v0, v2

    long-to-double v0, v0

    const-wide v2, 0x3ff3333333333333L    # 1.2

    mul-double/2addr v0, v2

    double-to-long v0, v0

    .line 261
    goto :goto_9
.end method

.method private static formatFileSize(J)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v6, 0x0

    .line 268
    const-wide/16 v0, 0x400

    cmp-long v0, p0, v0

    if-gez v0, :cond_1c

    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " B"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 275
    :goto_1b
    return-object v0

    .line 270
    :cond_1c
    const-wide/32 v0, 0x100000

    cmp-long v0, p0, v0

    if-gez v0, :cond_36

    .line 271
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

    .line 272
    :cond_36
    const-wide/32 v0, 0x40000000

    cmp-long v0, p0, v0

    if-gez v0, :cond_50

    .line 273
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

    .line 275
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

.method private static getDownloadBasePath(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 284
    const-string v0, "download_settings"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 285
    const-string v1, "download_path"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 287
    if-eqz v0, :cond_17

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 289
    :cond_17
    const/4 v0, 0x0

    .line 292
    :cond_18
    return-object v0
.end method

.method private static getDownloadPath(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 304
    const-string v0, "download_settings"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 305
    const-string v1, "download_path"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 307
    if-eqz v0, :cond_17

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 309
    :cond_17
    const/4 v0, 0x0

    .line 322
    :goto_18
    return-object v0

    .line 314
    :cond_19
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 317
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 318
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3e

    .line 319
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 322
    :cond_3e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, p4, p5, p6}, Lcom/bilibili/tv/ui/download/VideoDetailDownloadHelper;->buildFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_18
.end method

.method public static getTaskStatus(Landroid/content/Context;Ljava/lang/String;J)Ljava/lang/String;
    .locals 4

    .prologue
    .line 370
    invoke-static {p0}, Lcom/bilibili/tv/ui/download/DownloadManager;->getInstance(Landroid/content/Context;)Lcom/bilibili/tv/ui/download/DownloadManager;

    move-result-object v0

    .line 371
    invoke-virtual {v0, p1, p2, p3}, Lcom/bilibili/tv/ui/download/DownloadManager;->getTaskByBvidAndCid(Ljava/lang/String;J)Lcom/bilibili/tv/ui/download/model/DownloadTask;

    move-result-object v0

    .line 373
    if-nez v0, :cond_c

    .line 374
    const/4 v0, 0x0

    .line 389
    :goto_b
    return-object v0

    .line 377
    :cond_c
    sget-object v1, Lcom/bilibili/tv/ui/download/VideoDetailDownloadHelper$3;->$SwitchMap$com$bilibili$tv$ui$download$model$DownloadTask$Status:[I

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getStatus()Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bilibili/tv/ui/download/model/DownloadTask$Status;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_48

    .line 389
    const-string v0, "\u672a\u77e5\u72b6\u6001"

    goto :goto_b

    .line 379
    :pswitch_1e
    const-string v0, "\u7b49\u5f85\u4e2d"

    goto :goto_b

    .line 381
    :pswitch_21
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u4e0b\u8f7d\u4e2d "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/download/model/DownloadTask;->getProgress()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    .line 383
    :pswitch_3f
    const-string v0, "\u5df2\u6682\u505c"

    goto :goto_b

    .line 385
    :pswitch_42
    const-string v0, "\u5df2\u5b8c\u6210"

    goto :goto_b

    .line 387
    :pswitch_45
    const-string v0, "\u4e0b\u8f7d\u5931\u8d25"

    goto :goto_b

    .line 377
    :pswitch_data_48
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_21
        :pswitch_3f
        :pswitch_42
        :pswitch_45
    .end packed-switch
.end method

.method public static isTaskExists(Landroid/content/Context;Ljava/lang/String;J)Z
    .locals 2

    .prologue
    .line 361
    invoke-static {p0}, Lcom/bilibili/tv/ui/download/DownloadManager;->getInstance(Landroid/content/Context;)Lcom/bilibili/tv/ui/download/DownloadManager;

    move-result-object v0

    .line 362
    invoke-virtual {v0, p1, p2, p3}, Lcom/bilibili/tv/ui/download/DownloadManager;->getTaskByBvidAndCid(Ljava/lang/String;J)Lcom/bilibili/tv/ui/download/model/DownloadTask;

    move-result-object v0

    .line 363
    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private static sanitizeFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 350
    if-nez p0, :cond_5

    .line 351
    const-string v0, ""

    .line 354
    :goto_4
    return-object v0

    :cond_5
    const-string v0, "[\\\\/:*?\"<>|\\r\\n\\t]"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

.method public static showDownloadDialog(Landroid/content/Context;JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIILjava/util/List;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JII",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 48
    const-string v2, "VideoDetailDownloadHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u76f4\u63a5\u5f00\u59cb\u4e0b\u8f7d(\u4f7f\u7528\u8bbe\u7f6e\u4e2d\u914d\u7f6e\u7684\u753b\u8d28): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p6

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    const-string v2, "download_settings"

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 52
    const-string v3, "quality"

    const/16 v4, 0x50

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 55
    invoke-static {v2}, Lcom/bilibili/tv/ui/download/VideoDetailDownloadHelper;->convertQualityIdToString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v2, p0

    move-wide/from16 v3, p1

    move-object/from16 v5, p3

    move-wide/from16 v6, p4

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-wide/from16 v12, p10

    move/from16 v14, p12

    move/from16 v15, p13

    .line 56
    invoke-static/range {v2 .. v16}, Lcom/bilibili/tv/ui/download/VideoDetailDownloadHelper;->startDownload(Landroid/content/Context;JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIILjava/lang/String;)V

    .line 57
    return-void
.end method

.method private static showErrorDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 235
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_f

    move-object v0, p0

    .line 236
    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/bilibili/tv/ui/download/VideoDetailDownloadHelper$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/bilibili/tv/ui/download/VideoDetailDownloadHelper$2;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 247
    :cond_f
    return-void
.end method

.method public static startDownload(Landroid/content/Context;JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIILjava/lang/String;)V
    .locals 20

    .prologue
    .line 97
    const-string v2, "VideoDetailDownloadHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u5f00\u59cb\u4e0b\u8f7d: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p6

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", \u753b\u8d28: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p14

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-static/range {p0 .. p0}, Lcom/bilibili/tv/ui/download/VideoDetailDownloadHelper;->getDownloadBasePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 102
    if-eqz v2, :cond_32

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_43

    .line 103
    :cond_32
    const-string v2, "VideoDetailDownloadHelper"

    const-string v3, "\u4e0b\u8f7d\u8def\u5f84\u672a\u8bbe\u7f6e"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    const-string v2, "\u65e0\u6cd5\u4e0b\u8f7d"

    const-string v3, "\u8bf7\u5148\u5728\u8bbe\u7f6e\u4e2d\u914d\u7f6e\u4e0b\u8f7d\u4fdd\u5b58\u4f4d\u7f6e"

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Lcom/bilibili/tv/ui/download/VideoDetailDownloadHelper;->showErrorDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    :goto_42
    return-void

    .line 109
    :cond_43
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 110
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_54

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_76

    .line 111
    :cond_54
    const-string v3, "VideoDetailDownloadHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u5b58\u50a8\u8bbe\u5907\u672a\u6302\u8f7d\u6216\u8def\u5f84\u65e0\u6548: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    const-string v2, "\u65e0\u6cd5\u4e0b\u8f7d"

    const-string v3, "\u5916\u63a5\u5b58\u50a8\u8bbe\u5907\u672a\u6302\u8f7d\u6216\u8def\u5f84\u65e0\u6548"

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Lcom/bilibili/tv/ui/download/VideoDetailDownloadHelper;->showErrorDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_42

    .line 117
    :cond_76
    invoke-virtual {v3}, Ljava/io/File;->canWrite()Z

    move-result v4

    if-nez v4, :cond_9e

    .line 118
    const-string v3, "VideoDetailDownloadHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u5b58\u50a8\u8bbe\u5907\u4e0d\u53ef\u5199: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    const-string v2, "\u65e0\u6cd5\u4e0b\u8f7d"

    const-string v3, "\u5b58\u50a8\u8bbe\u5907\u4e0d\u53ef\u5199\uff0c\u8bf7\u68c0\u67e5\u6743\u9650"

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Lcom/bilibili/tv/ui/download/VideoDetailDownloadHelper;->showErrorDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_42

    .line 124
    :cond_9e
    invoke-static/range {p10 .. p11}, Lcom/bilibili/tv/ui/download/VideoDetailDownloadHelper;->estimateFileSize(J)J

    move-result-wide v4

    .line 125
    invoke-virtual {v3}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v6

    .line 126
    cmp-long v3, v6, v4

    if-gez v3, :cond_fa

    .line 127
    const-string v2, "VideoDetailDownloadHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u5b58\u50a8\u7a7a\u95f4\u4e0d\u8db3: \u9700\u8981 "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, "\uff0c\u53ef\u7528 "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    const-string v2, "\u5b58\u50a8\u7a7a\u95f4\u4e0d\u8db3"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u9700\u8981: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 129
    invoke-static {v4, v5}, Lcom/bilibili/tv/ui/download/VideoDetailDownloadHelper;->formatFileSize(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n\u53ef\u7528: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v6, v7}, Lcom/bilibili/tv/ui/download/VideoDetailDownloadHelper;->formatFileSize(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 128
    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Lcom/bilibili/tv/ui/download/VideoDetailDownloadHelper;->showErrorDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_42

    .line 133
    :cond_fa
    const-string v3, "VideoDetailDownloadHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u5b58\u50a8\u68c0\u67e5\u901a\u8fc7\uff0c\u8def\u5f84: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", \u53ef\u7528\u7a7a\u95f4: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v6, v7}, Lcom/bilibili/tv/ui/download/VideoDetailDownloadHelper;->formatFileSize(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    new-instance v18, Ljava/lang/Thread;

    new-instance v2, Lcom/bilibili/tv/ui/download/VideoDetailDownloadHelper$1;

    move-object/from16 v3, p14

    move-object/from16 v4, p0

    move-wide/from16 v5, p1

    move-object/from16 v7, p3

    move-wide/from16 v8, p4

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    move/from16 v12, p12

    move/from16 v13, p13

    move-object/from16 v14, p8

    move-object/from16 v15, p9

    move-wide/from16 v16, p10

    invoke-direct/range {v2 .. v17}, Lcom/bilibili/tv/ui/download/VideoDetailDownloadHelper$1;-><init>(Ljava/lang/String;Landroid/content/Context;JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;J)V

    move-object/from16 v0, v18

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 207
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Thread;->start()V

    goto/16 :goto_42
.end method
