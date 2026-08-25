.class public Lcom/aryan/reader/epub/MobiParser;
.super Ljava/lang/Object;
.source "MobiParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aryan/reader/epub/MobiParser$ParsedMobiData;,
        Lcom/aryan/reader/epub/MobiParser$ParsedMobiTocEntry;,
        Lcom/aryan/reader/epub/MobiParser$ParsedMobiResource;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MobiParser"


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 40
    :try_start_0
    const-string v0, "mobi"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 41
    const-string v0, "native-lib"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 42
    const-string v0, "MobiParser"

    const-string v1, "\u2713 libmobi.so \u548c libnative-lib.so \u52a0\u8f7d\u6210\u529f"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_11} :catch_12

    .line 46
    :goto_11
    return-void

    .line 43
    :catch_12
    move-exception v0

    .line 44
    const-string v1, "MobiParser"

    const-string v2, "\u2717 \u52a0\u8f7dNative\u5e93\u5931\u8d25"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_11
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/aryan/reader/epub/MobiParser;->context:Landroid/content/Context;

    .line 53
    return-void
.end method

.method private buildCssFlowMap([Lcom/aryan/reader/epub/MobiParser$ParsedMobiResource;)Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/aryan/reader/epub/MobiParser$ParsedMobiResource;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 300
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 301
    if-nez p1, :cond_9

    .line 316
    :cond_8
    return-object v0

    .line 303
    :cond_9
    array-length v2, p1

    :goto_a
    if-ge v1, v2, :cond_8

    aget-object v3, p1, v1

    .line 304
    invoke-virtual {v3}, Lcom/aryan/reader/epub/MobiParser$ParsedMobiResource;->isCss()Z

    move-result v4

    if-eqz v4, :cond_68

    invoke-virtual {v3}, Lcom/aryan/reader/epub/MobiParser$ParsedMobiResource;->getPath()Ljava/lang/String;

    move-result-object v4

    const-string v5, "flow_"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_68

    .line 305
    invoke-virtual {v3}, Lcom/aryan/reader/epub/MobiParser$ParsedMobiResource;->getPath()Ljava/lang/String;

    move-result-object v4

    const-string v5, "flow_"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ".css"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 307
    :try_start_34
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 308
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "kindle:flow:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%04d"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "?mime=text/css"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 309
    invoke-virtual {v3}, Lcom/aryan/reader/epub/MobiParser$ParsedMobiResource;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_68
    .catch Ljava/lang/NumberFormatException; {:try_start_34 .. :try_end_68} :catch_6b

    .line 303
    :cond_68
    :goto_68
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 310
    :catch_6b
    move-exception v3

    goto :goto_68
.end method

.method private buildImageMap([Lcom/aryan/reader/epub/MobiParser$ParsedMobiResource;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/aryan/reader/epub/MobiParser$ParsedMobiResource;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 274
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 275
    if-nez p1, :cond_a

    move-object v0, v2

    .line 296
    :goto_9
    return-object v0

    .line 277
    :cond_a
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 278
    array-length v4, p1

    move v1, v0

    :goto_11
    if-ge v1, v4, :cond_21

    aget-object v5, p1, v1

    .line 279
    invoke-virtual {v5}, Lcom/aryan/reader/epub/MobiParser$ParsedMobiResource;->isImage()Z

    move-result v6

    if-eqz v6, :cond_1e

    .line 280
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 278
    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 284
    :cond_21
    new-instance v1, Lcom/aryan/reader/epub/MobiParser$1;

    invoke-direct {v1, p0}, Lcom/aryan/reader/epub/MobiParser$1;-><init>(Lcom/aryan/reader/epub/MobiParser;)V

    invoke-static {v3, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    move v1, v0

    .line 291
    :goto_2a
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_47

    .line 292
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aryan/reader/epub/MobiParser$ParsedMobiResource;

    .line 293
    add-int/lit8 v4, v1, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0}, Lcom/aryan/reader/epub/MobiParser$ParsedMobiResource;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2a

    :cond_47
    move-object v0, v2

    .line 296
    goto :goto_9
.end method

.method private createExtractionDir(Ljava/lang/String;)Ljava/io/File;
    .locals 4

    .prologue
    .line 321
    iget-object v0, p0, Lcom/aryan/reader/epub/MobiParser;->context:Landroid/content/Context;

    if-eqz v0, :cond_26

    .line 322
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/aryan/reader/epub/MobiParser;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mobi_resources/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 326
    :goto_22
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 327
    return-object v0

    .line 324
    :cond_26
    new-instance v0, Ljava/io/File;

    const-string v1, "java.io.tmpdir"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mobi_resources/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_22
.end method

.method public static isNativeLibLoaded()Z
    .locals 1

    .prologue
    .line 522
    const/4 v0, 0x1

    return v0
.end method

.method private loadMetadataFromCache(Ljava/io/File;)Lcom/bilibili/tv/ebook/model/Book;
    .locals 11

    .prologue
    const/4 v0, 0x0

    .line 531
    :try_start_1
    new-instance v1, Ljava/io/File;

    const-string v2, "metadata.json"

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 532
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2b

    .line 533
    const-string v2, "MobiParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u7f13\u5b58\u6587\u4ef6\u4e0d\u5b58\u5728: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    :goto_2a
    return-object v0

    .line 537
    :cond_2b
    const-string v2, "MobiParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u5f00\u59cb\u52a0\u8f7d\u7f13\u5b58\u7684\u5143\u6570\u636e: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 541
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    const-string v4, "UTF-8"

    invoke-direct {v3, v2, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 542
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 544
    :goto_5d
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_70

    .line 545
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_66} :catch_67

    goto :goto_5d

    .line 603
    :catch_67
    move-exception v1

    .line 604
    const-string v2, "MobiParser"

    const-string v3, "\u52a0\u8f7d\u7f13\u5b58\u5143\u6570\u636e\u5931\u8d25"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2a

    .line 547
    :cond_70
    :try_start_70
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 548
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 550
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 551
    const-string v2, "MobiParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u8bfb\u53d6\u5230\u7684JSON\u957f\u5ea6: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 556
    new-instance v1, Lcom/bilibili/tv/ebook/model/Book;

    invoke-direct {v1}, Lcom/bilibili/tv/ebook/model/Book;-><init>()V

    .line 557
    const-string v3, "bookId"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/bilibili/tv/ebook/model/Book;->setBookId(Ljava/lang/String;)V

    .line 558
    const-string v3, "title"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/bilibili/tv/ebook/model/Book;->setTitle(Ljava/lang/String;)V

    .line 559
    const-string v3, "author"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/bilibili/tv/ebook/model/Book;->setAuthor(Ljava/lang/String;)V

    .line 560
    const-string v3, "language"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/bilibili/tv/ebook/model/Book;->setLanguage(Ljava/lang/String;)V

    .line 561
    const-string v3, "extractionPath"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/bilibili/tv/ebook/model/Book;->setExtractionPath(Ljava/lang/String;)V

    .line 564
    const-string v3, "chapters"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 565
    if-eqz v4, :cond_192

    .line 569
    invoke-virtual {v1}, Lcom/bilibili/tv/ebook/model/Book;->getExtractionPath()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1c3

    invoke-virtual {v1}, Lcom/bilibili/tv/ebook/model/Book;->getExtractionPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1c3

    .line 570
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/bilibili/tv/ebook/model/Book;->getExtractionPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .line 572
    :goto_103
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 573
    const/4 v2, 0x0

    :goto_109
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v2, v6, :cond_18c

    .line 574
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 575
    new-instance v7, Lcom/bilibili/tv/ebook/model/Chapter;

    invoke-direct {v7}, Lcom/bilibili/tv/ebook/model/Chapter;-><init>()V

    .line 576
    const-string v8, "chapterId"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/bilibili/tv/ebook/model/Chapter;->setChapterId(Ljava/lang/String;)V

    .line 577
    const-string v8, "chapterIndex"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/bilibili/tv/ebook/model/Chapter;->setChapterIndex(I)V

    .line 578
    const-string v8, "title"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/bilibili/tv/ebook/model/Chapter;->setTitle(Ljava/lang/String;)V

    .line 579
    const-string v8, "htmlFilePath"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/bilibili/tv/ebook/model/Chapter;->setHtmlFilePath(Ljava/lang/String;)V

    .line 580
    const-string v8, "depth"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/bilibili/tv/ebook/model/Chapter;->setDepth(I)V

    .line 581
    if-eqz v3, :cond_14a

    .line 582
    invoke-virtual {v7, v3}, Lcom/bilibili/tv/ebook/model/Chapter;->setBaseUrl(Ljava/lang/String;)V

    .line 586
    :cond_14a
    const-string v8, "htmlContent"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 587
    if-eqz v6, :cond_185

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_185

    .line 588
    invoke-virtual {v7, v6}, Lcom/bilibili/tv/ebook/model/Chapter;->setHtmlContent(Ljava/lang/String;)V

    .line 589
    const-string v8, "MobiParser"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\u4ece\u7f13\u5b58\u52a0\u8f7dMOBI\u7ae0\u8282\u5185\u5bb9: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Lcom/bilibili/tv/ebook/model/Chapter;->getTitle()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", html\u957f\u5ea6: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 590
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 589
    invoke-static {v8, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    :cond_185
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 573
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_109

    .line 595
    :cond_18c
    invoke-virtual {v1, v5}, Lcom/bilibili/tv/ebook/model/Book;->setChapters(Ljava/util/List;)V

    .line 597
    invoke-direct {p0, v5, p1}, Lcom/aryan/reader/epub/MobiParser;->saveChapterHtmlFiles(Ljava/util/List;Ljava/io/File;)V

    .line 600
    :cond_192
    const-string v2, "MobiParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u7f13\u5b58\u5143\u6570\u636e\u52a0\u8f7d\u6210\u529f: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/bilibili/tv/ebook/model/Book;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", \u7ae0\u8282\u6570: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/bilibili/tv/ebook/model/Book;->getChapters()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1c0
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_1c0} :catch_67

    move-object v0, v1

    .line 601
    goto/16 :goto_2a

    :cond_1c3
    move-object v3, v0

    goto/16 :goto_103
.end method

.method private native parseMobiFile(Ljava/lang/String;)Lcom/aryan/reader/epub/MobiParser$ParsedMobiData;
.end method

.method private processChapterHtml(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 382
    if-nez p1, :cond_5

    const-string p1, ""

    .line 400
    :goto_4
    return-object p1

    .line 385
    :cond_5
    :try_start_5
    invoke-static {p1}, Lorg/jsoup/Jsoup;->parse(Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    move-result-object v2

    .line 387
    const-string v0, "link[href]"

    invoke-virtual {v2, v0}, Lorg/jsoup/nodes/Document;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/select/Elements;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_13
    :goto_13
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/Element;

    .line 388
    const-string v1, "href"

    invoke-virtual {v0, v1}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 389
    invoke-interface {p3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 390
    const-string v4, "href"

    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v4, v1}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    goto :goto_13

    .line 399
    :catch_37
    move-exception v0

    goto :goto_4

    .line 394
    :cond_39
    const-string v0, "img"

    invoke-virtual {v2, v0}, Lorg/jsoup/nodes/Document;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/select/Elements;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_43
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_53

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/Element;

    .line 395
    invoke-direct {p0, v0, p2}, Lcom/aryan/reader/epub/MobiParser;->processImageElement(Lorg/jsoup/nodes/Element;Ljava/util/Map;)V

    goto :goto_43

    .line 398
    :cond_53
    invoke-virtual {v2}, Lorg/jsoup/nodes/Document;->outerHtml()Ljava/lang/String;
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_56} :catch_37

    move-result-object p1

    goto :goto_4
.end method

.method private processImageElement(Lorg/jsoup/nodes/Element;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jsoup/nodes/Element;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 405
    const-string v0, "src"

    invoke-virtual {p1, v0}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 407
    const-string v1, "kindle:embed:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 409
    :try_start_e
    const-string v1, "embed:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x6

    .line 410
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 411
    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 412
    if-ltz v1, :cond_27

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 414
    :cond_27
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 415
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 416
    const-string v1, "src"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Element;
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_44} :catch_77

    .line 423
    :cond_44
    :goto_44
    const-string v0, "recindex"

    invoke-virtual {p1, v0}, Lorg/jsoup/nodes/Element;->hasAttr(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_74

    .line 425
    :try_start_4c
    const-string v0, "recindex"

    invoke-virtual {p1, v0}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 426
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_74

    .line 427
    const-string v1, "src"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    .line 428
    const-string v0, "recindex"

    invoke-virtual {p1, v0}, Lorg/jsoup/nodes/Element;->removeAttr(Ljava/lang/String;)Lorg/jsoup/nodes/Element;
    :try_end_74
    .catch Ljava/lang/NumberFormatException; {:try_start_4c .. :try_end_74} :catch_75

    .line 434
    :cond_74
    :goto_74
    return-void

    .line 430
    :catch_75
    move-exception v0

    goto :goto_74

    .line 418
    :catch_77
    move-exception v0

    goto :goto_44
.end method

.method private saveChapterHtmlFiles(Ljava/util/List;Ljava/io/File;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/tv/ebook/model/Chapter;",
            ">;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .prologue
    .line 357
    if-eqz p1, :cond_4

    if-nez p2, :cond_5

    .line 379
    :cond_4
    return-void

    .line 360
    :cond_5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ebook/model/Chapter;

    .line 361
    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/model/Chapter;->getHtmlContent()Ljava/lang/String;

    move-result-object v2

    .line 362
    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/model/Chapter;->getHtmlFilePath()Ljava/lang/String;

    move-result-object v3

    .line 363
    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    if-eqz v3, :cond_9

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 367
    :try_start_2d
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 368
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_9

    .line 371
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 372
    const-string v0, "UTF-8"

    invoke-virtual {v2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 373
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 374
    const-string v0, "MobiParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u7ae0\u8282HTML\u5df2\u843d\u76d8: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", \u5927\u5c0f: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_6f} :catch_70

    goto :goto_9

    .line 375
    :catch_70
    move-exception v0

    .line 376
    const-string v2, "MobiParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u7ae0\u8282HTML\u843d\u76d8\u5931\u8d25: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method private saveMetadataToCache(Lcom/bilibili/tv/ebook/model/Book;Ljava/io/File;)V
    .locals 8

    .prologue
    .line 615
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v0, "metadata.json"

    invoke-direct {v1, p2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 617
    const-string v0, "MobiParser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5f00\u59cb\u4fdd\u5b58\u5143\u6570\u636e\u5230\u7f13\u5b58: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 621
    const-string v0, "bookId"

    invoke-virtual {p1}, Lcom/bilibili/tv/ebook/model/Book;->getBookId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 622
    const-string v0, "title"

    invoke-virtual {p1}, Lcom/bilibili/tv/ebook/model/Book;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 623
    const-string v0, "author"

    invoke-virtual {p1}, Lcom/bilibili/tv/ebook/model/Book;->getAuthor()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 624
    const-string v0, "language"

    invoke-virtual {p1}, Lcom/bilibili/tv/ebook/model/Book;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 625
    const-string v0, "extractionPath"

    invoke-virtual {p1}, Lcom/bilibili/tv/ebook/model/Book;->getExtractionPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 628
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 629
    invoke-virtual {p1}, Lcom/bilibili/tv/ebook/model/Book;->getChapters()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_bc

    .line 630
    invoke-virtual {p1}, Lcom/bilibili/tv/ebook/model/Book;->getChapters()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_68
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_bc

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ebook/model/Chapter;

    .line 631
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 632
    const-string v6, "chapterId"

    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/model/Chapter;->getChapterId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 633
    const-string v6, "chapterIndex"

    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/model/Chapter;->getChapterIndex()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 634
    const-string v6, "title"

    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/model/Chapter;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 635
    const-string v6, "htmlFilePath"

    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/model/Chapter;->getHtmlFilePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 636
    const-string v6, "depth"

    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/model/Chapter;->getDepth()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 637
    const-string v6, "htmlContent"

    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/model/Chapter;->getHtmlContent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 638
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_b2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b2} :catch_b3

    goto :goto_68

    .line 654
    :catch_b3
    move-exception v0

    .line 655
    const-string v1, "MobiParser"

    const-string v2, "\u4fdd\u5b58\u5143\u6570\u636e\u7f13\u5b58\u5931\u8d25"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 657
    :goto_bb
    return-void

    .line 641
    :cond_bc
    :try_start_bc
    const-string v0, "chapters"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 644
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 645
    new-instance v3, Ljava/io/OutputStreamWriter;

    const-string v4, "UTF-8"

    invoke-direct {v3, v0, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 646
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 647
    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->flush()V

    .line 648
    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->close()V

    .line 649
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 651
    const-string v0, "MobiParser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5143\u6570\u636e\u7f13\u5b58\u4fdd\u5b58\u6210\u529f: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", \u5927\u5c0f: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 652
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 651
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10d
    .catch Ljava/lang/Exception; {:try_start_bc .. :try_end_10d} :catch_b3

    goto :goto_bb
.end method

.method private saveResources([Lcom/aryan/reader/epub/MobiParser$ParsedMobiResource;Ljava/io/File;)V
    .locals 7

    .prologue
    .line 331
    if-nez p1, :cond_3

    .line 348
    :cond_2
    return-void

    .line 333
    :cond_3
    array-length v2, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_6
    if-ge v1, v2, :cond_2

    aget-object v3, p1, v1

    .line 335
    :try_start_a
    new-instance v0, Ljava/io/File;

    invoke-virtual {v3}, Lcom/aryan/reader/epub/MobiParser$ParsedMobiResource;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, p2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 336
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    .line 337
    if-eqz v4, :cond_1c

    .line 338
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 341
    :cond_1c
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 342
    invoke-virtual {v3}, Lcom/aryan/reader/epub/MobiParser$ParsedMobiResource;->getData()[B

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 343
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_2b} :catch_2f

    .line 333
    :goto_2b
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    .line 344
    :catch_2f
    move-exception v0

    .line 345
    const-string v4, "MobiParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u4fdd\u5b58\u8d44\u6e90\u5931\u8d25: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lcom/aryan/reader/epub/MobiParser$ParsedMobiResource;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2b
.end method

.method private splitIntoChapters(Ljava/lang/String;[Lcom/aryan/reader/epub/MobiParser$ParsedMobiTocEntry;Ljava/util/Map;Ljava/util/Map;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Lcom/aryan/reader/epub/MobiParser$ParsedMobiTocEntry;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/tv/ebook/model/Chapter;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 438
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 440
    if-eqz p1, :cond_e

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_e
    move-object v0, v4

    .line 518
    :goto_f
    return-object v0

    .line 444
    :cond_10
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    .line 445
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 447
    if-eqz p2, :cond_2d

    array-length v0, p2

    if-lez v0, :cond_2d

    .line 448
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 449
    new-instance v0, Lcom/aryan/reader/epub/MobiParser$2;

    invoke-direct {v0, p0}, Lcom/aryan/reader/epub/MobiParser$2;-><init>(Lcom/aryan/reader/epub/MobiParser;)V

    invoke-static {v6, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 457
    :cond_2d
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_bb

    move v2, v3

    .line 458
    :goto_34
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_134

    .line 459
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aryan/reader/epub/MobiParser$ParsedMobiTocEntry;

    .line 460
    invoke-virtual {v0}, Lcom/aryan/reader/epub/MobiParser$ParsedMobiTocEntry;->getFilePosition()I

    move-result v7

    .line 463
    add-int/lit8 v1, v2, 0x1

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-ge v1, v8, :cond_b9

    .line 464
    add-int/lit8 v1, v2, 0x1

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aryan/reader/epub/MobiParser$ParsedMobiTocEntry;

    invoke-virtual {v1}, Lcom/aryan/reader/epub/MobiParser$ParsedMobiTocEntry;->getFilePosition()I

    move-result v1

    .line 469
    :goto_58
    if-ge v7, v1, :cond_b4

    array-length v8, v5

    if-ge v7, v8, :cond_b4

    .line 470
    sub-int/2addr v1, v7

    array-length v8, v5

    sub-int/2addr v8, v7

    invoke-static {v1, v8}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 471
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v5, v7, v1}, Ljava/lang/String;-><init>([BII)V

    .line 473
    invoke-direct {p0, v8, p3, p4}, Lcom/aryan/reader/epub/MobiParser;->processChapterHtml(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    .line 475
    new-instance v7, Lcom/bilibili/tv/ebook/model/Chapter;

    invoke-direct {v7}, Lcom/bilibili/tv/ebook/model/Chapter;-><init>()V

    .line 476
    invoke-virtual {v7, v2}, Lcom/bilibili/tv/ebook/model/Chapter;->setChapterIndex(I)V

    .line 477
    invoke-virtual {v0}, Lcom/aryan/reader/epub/MobiParser$ParsedMobiTocEntry;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/bilibili/tv/ebook/model/Chapter;->setTitle(Ljava/lang/String;)V

    .line 478
    invoke-virtual {v7, v1}, Lcom/bilibili/tv/ebook/model/Chapter;->setHtmlContent(Ljava/lang/String;)V

    .line 479
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "chapter_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".html"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/bilibili/tv/ebook/model/Chapter;->setHtmlFilePath(Ljava/lang/String;)V

    .line 480
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mobi_chapter_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/bilibili/tv/ebook/model/Chapter;->setChapterId(Ljava/lang/String;)V

    .line 482
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 458
    :cond_b4
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_34

    .line 466
    :cond_b9
    array-length v1, v5

    goto :goto_58

    .line 486
    :cond_bb
    const-string v0, "(?i)<mbp:pagebreak\\s*/>"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 489
    array-length v5, v2

    move v1, v3

    move v0, v3

    :goto_c4
    if-ge v1, v5, :cond_134

    aget-object v6, v2, v1

    .line 490
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_d5

    .line 489
    :goto_d2
    add-int/lit8 v1, v1, 0x1

    goto :goto_c4

    .line 492
    :cond_d5
    invoke-direct {p0, v6, p3, p4}, Lcom/aryan/reader/epub/MobiParser;->processChapterHtml(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v6

    .line 494
    new-instance v7, Lcom/bilibili/tv/ebook/model/Chapter;

    invoke-direct {v7}, Lcom/bilibili/tv/ebook/model/Chapter;-><init>()V

    .line 495
    invoke-virtual {v7, v0}, Lcom/bilibili/tv/ebook/model/Chapter;->setChapterIndex(I)V

    .line 496
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Chapter "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    add-int/lit8 v9, v0, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/bilibili/tv/ebook/model/Chapter;->setTitle(Ljava/lang/String;)V

    .line 497
    invoke-virtual {v7, v6}, Lcom/bilibili/tv/ebook/model/Chapter;->setHtmlContent(Ljava/lang/String;)V

    .line 498
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "chapter_"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ".html"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Lcom/bilibili/tv/ebook/model/Chapter;->setHtmlFilePath(Ljava/lang/String;)V

    .line 499
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mobi_chapter_"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Lcom/bilibili/tv/ebook/model/Chapter;->setChapterId(Ljava/lang/String;)V

    .line 501
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 502
    add-int/lit8 v0, v0, 0x1

    goto :goto_d2

    .line 506
    :cond_134
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_15b

    .line 507
    invoke-direct {p0, p1, p3, p4}, Lcom/aryan/reader/epub/MobiParser;->processChapterHtml(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 509
    new-instance v1, Lcom/bilibili/tv/ebook/model/Chapter;

    invoke-direct {v1}, Lcom/bilibili/tv/ebook/model/Chapter;-><init>()V

    .line 510
    invoke-virtual {v1, v3}, Lcom/bilibili/tv/ebook/model/Chapter;->setChapterIndex(I)V

    .line 511
    const-string v2, "Full Content"

    invoke-virtual {v1, v2}, Lcom/bilibili/tv/ebook/model/Chapter;->setTitle(Ljava/lang/String;)V

    .line 512
    invoke-virtual {v1, v0}, Lcom/bilibili/tv/ebook/model/Chapter;->setHtmlContent(Ljava/lang/String;)V

    .line 513
    const-string v0, "chapter_0.html"

    invoke-virtual {v1, v0}, Lcom/bilibili/tv/ebook/model/Chapter;->setHtmlFilePath(Ljava/lang/String;)V

    .line 514
    const-string v0, "mobi_chapter_0"

    invoke-virtual {v1, v0}, Lcom/bilibili/tv/ebook/model/Chapter;->setChapterId(Ljava/lang/String;)V

    .line 515
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_15b
    move-object v0, v4

    .line 518
    goto/16 :goto_f
.end method


# virtual methods
.method public parse(Ljava/lang/String;Ljava/lang/String;)Lcom/bilibili/tv/ebook/model/Book;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 203
    :try_start_1
    const-string v0, "MobiParser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5f00\u59cb\u89e3\u6790MOBI\u6587\u4ef6: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    invoke-direct {p0, p2}, Lcom/aryan/reader/epub/MobiParser;->createExtractionDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 209
    invoke-direct {p0, v3}, Lcom/aryan/reader/epub/MobiParser;->loadMetadataFromCache(Ljava/io/File;)Lcom/bilibili/tv/ebook/model/Book;

    move-result-object v0

    .line 210
    if-eqz v0, :cond_52

    .line 211
    const-string v2, "MobiParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u4f7f\u7528\u7f13\u5b58\u7684\u5143\u6570\u636e\uff0c\u8df3\u8fc7JNI\u89e3\u6790: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/model/Book;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", \u7ae0\u8282\u6570: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 212
    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/model/Book;->getChapters()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 211
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    :goto_51
    return-object v0

    .line 216
    :cond_52
    invoke-direct {p0, p1}, Lcom/aryan/reader/epub/MobiParser;->parseMobiFile(Ljava/lang/String;)Lcom/aryan/reader/epub/MobiParser$ParsedMobiData;

    move-result-object v4

    .line 218
    if-eqz v4, :cond_5e

    invoke-virtual {v4}, Lcom/aryan/reader/epub/MobiParser$ParsedMobiData;->getRawHtmlContent()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_67

    .line 219
    :cond_5e
    const-string v0, "MobiParser"

    const-string v2, "JNI\u8fd4\u56de\u6570\u636e\u4e3a\u7a7a"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 220
    goto :goto_51

    .line 223
    :cond_67
    const-string v2, "MobiParser"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MOBI\u89e3\u6790\u6210\u529f: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v4}, Lcom/aryan/reader/epub/MobiParser$ParsedMobiData;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ", \u8d44\u6e90\u6570: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 224
    invoke-virtual {v4}, Lcom/aryan/reader/epub/MobiParser$ParsedMobiData;->getResourceCount()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ", TOC\u6570: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 225
    invoke-virtual {v4}, Lcom/aryan/reader/epub/MobiParser$ParsedMobiData;->getToc()[Lcom/aryan/reader/epub/MobiParser$ParsedMobiTocEntry;

    move-result-object v0

    if-eqz v0, :cond_105

    invoke-virtual {v4}, Lcom/aryan/reader/epub/MobiParser$ParsedMobiData;->getToc()[Lcom/aryan/reader/epub/MobiParser$ParsedMobiTocEntry;

    move-result-object v0

    array-length v0, v0

    :goto_9b
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 223
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    invoke-virtual {v4}, Lcom/aryan/reader/epub/MobiParser$ParsedMobiData;->getResources()[Lcom/aryan/reader/epub/MobiParser$ParsedMobiResource;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/aryan/reader/epub/MobiParser;->buildImageMap([Lcom/aryan/reader/epub/MobiParser$ParsedMobiResource;)Ljava/util/Map;

    move-result-object v0

    .line 228
    invoke-virtual {v4}, Lcom/aryan/reader/epub/MobiParser$ParsedMobiData;->getResources()[Lcom/aryan/reader/epub/MobiParser$ParsedMobiResource;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/aryan/reader/epub/MobiParser;->buildCssFlowMap([Lcom/aryan/reader/epub/MobiParser$ParsedMobiResource;)Ljava/util/Map;

    move-result-object v2

    .line 229
    invoke-virtual {v4}, Lcom/aryan/reader/epub/MobiParser$ParsedMobiData;->getResources()[Lcom/aryan/reader/epub/MobiParser$ParsedMobiResource;

    move-result-object v5

    invoke-direct {p0, v5, v3}, Lcom/aryan/reader/epub/MobiParser;->saveResources([Lcom/aryan/reader/epub/MobiParser$ParsedMobiResource;Ljava/io/File;)V

    .line 231
    invoke-virtual {v4}, Lcom/aryan/reader/epub/MobiParser$ParsedMobiData;->getRawHtmlContent()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/aryan/reader/epub/MobiParser$ParsedMobiData;->getToc()[Lcom/aryan/reader/epub/MobiParser$ParsedMobiTocEntry;

    move-result-object v6

    invoke-direct {p0, v5, v6, v0, v2}, Lcom/aryan/reader/epub/MobiParser;->splitIntoChapters(Ljava/lang/String;[Lcom/aryan/reader/epub/MobiParser$ParsedMobiTocEntry;Ljava/util/Map;Ljava/util/Map;)Ljava/util/List;

    move-result-object v5

    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 237
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_ea
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_107

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ebook/model/Chapter;

    .line 238
    invoke-virtual {v0, v2}, Lcom/bilibili/tv/ebook/model/Chapter;->setBaseUrl(Ljava/lang/String;)V
    :try_end_f9
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_f9} :catch_fa
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_f9} :catch_171

    goto :goto_ea

    .line 262
    :catch_fa
    move-exception v0

    .line 263
    const-string v2, "MobiParser"

    const-string v3, "JNI\u65b9\u6cd5\u8c03\u7528\u5931\u8d25"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    .line 264
    goto/16 :goto_51

    .line 225
    :cond_105
    const/4 v0, 0x0

    goto :goto_9b

    .line 244
    :cond_107
    :try_start_107
    invoke-direct {p0, v5, v3}, Lcom/aryan/reader/epub/MobiParser;->saveChapterHtmlFiles(Ljava/util/List;Ljava/io/File;)V

    .line 246
    new-instance v0, Lcom/bilibili/tv/ebook/model/Book;

    invoke-direct {v0}, Lcom/bilibili/tv/ebook/model/Book;-><init>()V

    .line 247
    invoke-virtual {v0, p2}, Lcom/bilibili/tv/ebook/model/Book;->setBookId(Ljava/lang/String;)V

    .line 248
    invoke-virtual {v4}, Lcom/aryan/reader/epub/MobiParser$ParsedMobiData;->getTitle()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_18d

    invoke-virtual {v4}, Lcom/aryan/reader/epub/MobiParser$ParsedMobiData;->getTitle()Ljava/lang/String;

    move-result-object v2

    :goto_11c
    invoke-virtual {v0, v2}, Lcom/bilibili/tv/ebook/model/Book;->setTitle(Ljava/lang/String;)V

    .line 249
    invoke-virtual {v4}, Lcom/aryan/reader/epub/MobiParser$ParsedMobiData;->getAuthor()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_190

    invoke-virtual {v4}, Lcom/aryan/reader/epub/MobiParser$ParsedMobiData;->getAuthor()Ljava/lang/String;

    move-result-object v2

    :goto_129
    invoke-virtual {v0, v2}, Lcom/bilibili/tv/ebook/model/Book;->setAuthor(Ljava/lang/String;)V

    .line 250
    const-string v2, "en"

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/ebook/model/Book;->setLanguage(Ljava/lang/String;)V

    .line 251
    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/model/Book;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/ebook/model/Book;->setFileName(Ljava/lang/String;)V

    .line 252
    invoke-virtual {v0, v5}, Lcom/bilibili/tv/ebook/model/Book;->setChapters(Ljava/util/List;)V

    .line 253
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/ebook/model/Book;->setExtractionPath(Ljava/lang/String;)V

    .line 256
    invoke-direct {p0, v0, v3}, Lcom/aryan/reader/epub/MobiParser;->saveMetadataToCache(Lcom/bilibili/tv/ebook/model/Book;Ljava/io/File;)V

    .line 258
    const-string v2, "MobiParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MOBI\u89e3\u6790\u5b8c\u6210: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/model/Book;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", \u7ae0\u8282\u6570: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16f
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_107 .. :try_end_16f} :catch_fa
    .catch Ljava/lang/Exception; {:try_start_107 .. :try_end_16f} :catch_171

    goto/16 :goto_51

    .line 265
    :catch_171
    move-exception v0

    .line 266
    const-string v2, "MobiParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u89e3\u6790MOBI\u6587\u4ef6\u5931\u8d25: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    .line 267
    goto/16 :goto_51

    .line 248
    :cond_18d
    :try_start_18d
    const-string v2, "Unknown Title"

    goto :goto_11c

    .line 249
    :cond_190
    const-string v2, "Unknown Author"
    :try_end_192
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_18d .. :try_end_192} :catch_fa
    .catch Ljava/lang/Exception; {:try_start_18d .. :try_end_192} :catch_171

    goto :goto_129
.end method
