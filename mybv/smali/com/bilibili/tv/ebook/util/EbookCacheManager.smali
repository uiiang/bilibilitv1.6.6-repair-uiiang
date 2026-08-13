.class public Lcom/bilibili/tv/ebook/util/EbookCacheManager;
.super Ljava/lang/Object;
.source "EbookCacheManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "EbookCacheManager"


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/bilibili/tv/ebook/util/EbookCacheManager;->context:Landroid/content/Context;

    .line 29
    return-void
.end method

.method private getAllReadingProgress()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 101
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 104
    :try_start_5
    iget-object v0, p0, Lcom/bilibili/tv/ebook/util/EbookCacheManager;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/bilibili/tv/ebook/util/EbookFileStore;->getInstance(Landroid/content/Context;)Lcom/bilibili/tv/ebook/util/EbookFileStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/util/EbookFileStore;->getReadingProgressJson()Ljava/lang/String;

    move-result-object v0

    .line 105
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 107
    invoke-virtual {v2}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object v3

    .line 108
    if-eqz v3, :cond_37

    .line 109
    const/4 v0, 0x0

    :goto_1b
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_37

    .line 110
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 111
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2c
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_2c} :catch_2f

    .line 109
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    .line 115
    :catch_2f
    move-exception v0

    .line 116
    const-string v2, "EbookCacheManager"

    const-string v3, "\u83b7\u53d6\u6240\u6709\u9605\u8bfb\u8fdb\u5ea6\u5931\u8d25"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 119
    :cond_37
    return-object v1
.end method


# virtual methods
.method public clearAll()V
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/bilibili/tv/ebook/util/EbookCacheManager;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/bilibili/tv/ebook/util/EbookFileStore;->getInstance(Landroid/content/Context;)Lcom/bilibili/tv/ebook/util/EbookFileStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/util/EbookFileStore;->clearAll()V

    .line 142
    const-string v0, "EbookCacheManager"

    const-string v1, "\u6240\u6709\u7f13\u5b58\u5df2\u6e05\u9664"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    return-void
.end method

.method public clearAllReadingProgress()V
    .locals 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/bilibili/tv/ebook/util/EbookCacheManager;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/bilibili/tv/ebook/util/EbookFileStore;->getInstance(Landroid/content/Context;)Lcom/bilibili/tv/ebook/util/EbookFileStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/util/EbookFileStore;->clearAllReadingProgress()V

    .line 161
    const-string v0, "EbookCacheManager"

    const-string v1, "\u6240\u6709\u9605\u8bfb\u8fdb\u5ea6\u5df2\u6e05\u9664"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    return-void
.end method

.method public clearReadingProgress(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 149
    if-nez p1, :cond_3

    .line 154
    :goto_2
    return-void

    .line 152
    :cond_3
    iget-object v0, p0, Lcom/bilibili/tv/ebook/util/EbookCacheManager;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/bilibili/tv/ebook/util/EbookFileStore;->getInstance(Landroid/content/Context;)Lcom/bilibili/tv/ebook/util/EbookFileStore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bilibili/tv/ebook/util/EbookFileStore;->removeReadingProgress(Ljava/lang/String;)V

    .line 153
    const-string v0, "EbookCacheManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u9605\u8bfb\u8fdb\u5ea6\u6e05\u9664: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public getDefaultFontSize()I
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/bilibili/tv/ebook/util/EbookCacheManager;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/bilibili/tv/ebook/util/EbookFileStore;->getInstance(Landroid/content/Context;)Lcom/bilibili/tv/ebook/util/EbookFileStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/util/EbookFileStore;->getFontSizeDefault()I

    move-result v0

    return v0
.end method

.method public getReadingProgress(Ljava/lang/String;)Lcom/bilibili/tv/ebook/model/ReadingProgress;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 67
    if-nez p1, :cond_4

    .line 94
    :cond_3
    :goto_3
    return-object v0

    .line 72
    :cond_4
    :try_start_4
    iget-object v1, p0, Lcom/bilibili/tv/ebook/util/EbookCacheManager;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/bilibili/tv/ebook/util/EbookFileStore;->getInstance(Landroid/content/Context;)Lcom/bilibili/tv/ebook/util/EbookFileStore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bilibili/tv/ebook/util/EbookFileStore;->getReadingProgressJson()Ljava/lang/String;

    move-result-object v1

    .line 73
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 75
    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 76
    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 77
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 79
    new-instance v1, Lcom/bilibili/tv/ebook/model/ReadingProgress;

    invoke-direct {v1}, Lcom/bilibili/tv/ebook/model/ReadingProgress;-><init>()V

    .line 80
    const-string v3, "bookId"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/bilibili/tv/ebook/model/ReadingProgress;->setBookId(Ljava/lang/String;)V

    .line 81
    const-string v3, "currentChapterIndex"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/bilibili/tv/ebook/model/ReadingProgress;->setCurrentChapterIndex(I)V

    .line 82
    const-string v3, "currentPage"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/bilibili/tv/ebook/model/ReadingProgress;->setCurrentPage(I)V

    .line 83
    const-string v3, "progressPercentage"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    double-to-float v3, v4

    invoke-virtual {v1, v3}, Lcom/bilibili/tv/ebook/model/ReadingProgress;->setProgressPercentage(F)V

    .line 84
    const-string v3, "lastReadTimestamp"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/bilibili/tv/ebook/model/ReadingProgress;->setLastReadTimestamp(J)V

    .line 85
    const-string v3, "fontSize"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/bilibili/tv/ebook/model/ReadingProgress;->setFontSize(I)V
    :try_end_5e
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_5e} :catch_60

    move-object v0, v1

    .line 87
    goto :goto_3

    .line 90
    :catch_60
    move-exception v1

    .line 91
    const-string v2, "EbookCacheManager"

    const-string v3, "\u83b7\u53d6\u9605\u8bfb\u8fdb\u5ea6\u5931\u8d25"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method

.method public saveDefaultFontSize(I)V
    .locals 3

    .prologue
    .line 126
    iget-object v0, p0, Lcom/bilibili/tv/ebook/util/EbookCacheManager;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/bilibili/tv/ebook/util/EbookFileStore;->getInstance(Landroid/content/Context;)Lcom/bilibili/tv/ebook/util/EbookFileStore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bilibili/tv/ebook/util/EbookFileStore;->saveFontSizeDefault(I)V

    .line 127
    const-string v0, "EbookCacheManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u9ed8\u8ba4\u5b57\u4f53\u5927\u5c0f\u4fdd\u5b58: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    return-void
.end method

.method public saveReadingProgress(Lcom/bilibili/tv/ebook/model/ReadingProgress;)V
    .locals 4

    .prologue
    .line 35
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/bilibili/tv/ebook/model/ReadingProgress;->getBookId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9

    .line 61
    :cond_8
    :goto_8
    return-void

    .line 40
    :cond_9
    :try_start_9
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 41
    const-string v1, "bookId"

    invoke-virtual {p1}, Lcom/bilibili/tv/ebook/model/ReadingProgress;->getBookId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 42
    const-string v1, "currentChapterIndex"

    invoke-virtual {p1}, Lcom/bilibili/tv/ebook/model/ReadingProgress;->getCurrentChapterIndex()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 43
    const-string v1, "currentPage"

    invoke-virtual {p1}, Lcom/bilibili/tv/ebook/model/ReadingProgress;->getCurrentPage()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 44
    const-string v1, "progressPercentage"

    invoke-virtual {p1}, Lcom/bilibili/tv/ebook/model/ReadingProgress;->getProgressPercentage()F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 45
    const-string v1, "lastReadTimestamp"

    invoke-virtual {p1}, Lcom/bilibili/tv/ebook/model/ReadingProgress;->getLastReadTimestamp()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 46
    const-string v1, "fontSize"

    invoke-virtual {p1}, Lcom/bilibili/tv/ebook/model/ReadingProgress;->getFontSize()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 49
    invoke-direct {p0}, Lcom/bilibili/tv/ebook/util/EbookCacheManager;->getAllReadingProgress()Ljava/util/Map;

    move-result-object v1

    .line 50
    invoke-virtual {p1}, Lcom/bilibili/tv/ebook/model/ReadingProgress;->getBookId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 54
    iget-object v1, p0, Lcom/bilibili/tv/ebook/util/EbookCacheManager;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/bilibili/tv/ebook/util/EbookFileStore;->getInstance(Landroid/content/Context;)Lcom/bilibili/tv/ebook/util/EbookFileStore;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/bilibili/tv/ebook/util/EbookFileStore;->saveReadingProgressJson(Ljava/lang/String;)V

    .line 56
    const-string v0, "EbookCacheManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u9605\u8bfb\u8fdb\u5ea6\u4fdd\u5b58\u6210\u529f: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/bilibili/tv/ebook/model/ReadingProgress;->getBookId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_82
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_82} :catch_83

    goto :goto_8

    .line 58
    :catch_83
    move-exception v0

    .line 59
    const-string v1, "EbookCacheManager"

    const-string v2, "\u4fdd\u5b58\u9605\u8bfb\u8fdb\u5ea6\u5931\u8d25"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_8
.end method
