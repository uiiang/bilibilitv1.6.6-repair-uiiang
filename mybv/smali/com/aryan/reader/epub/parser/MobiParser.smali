.class public Lcom/aryan/reader/epub/parser/MobiParser;
.super Ljava/lang/Object;
.source "MobiParser.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MobiParser"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 27
    :try_start_0
    const-string v0, "mobi"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 28
    const-string v0, "native-lib"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 29
    const-string v0, "MobiParser"

    const-string v1, "\u2713 libmobi.so \u548c libnative-lib.so \u52a0\u8f7d\u6210\u529f"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_11} :catch_12

    .line 33
    :goto_11
    return-void

    .line 30
    :catch_12
    move-exception v0

    .line 31
    const-string v1, "MobiParser"

    const-string v2, "\u2717 \u52a0\u8f7dNative\u5e93\u5931\u8d25"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_11
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private native extractChapter(Ljava/lang/String;I)Ljava/lang/String;
.end method

.method private native getMetadata(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static isNativeLibLoaded()Z
    .locals 1

    .prologue
    .line 168
    const/4 v0, 0x1

    return v0
.end method

.method private parseJsonToBook(Ljava/lang/String;Ljava/lang/String;)Lcom/bilibili/tv/ebook/model/Book;
    .locals 8

    .prologue
    .line 104
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 106
    new-instance v0, Lcom/bilibili/tv/ebook/model/Book;

    invoke-direct {v0}, Lcom/bilibili/tv/ebook/model/Book;-><init>()V

    .line 107
    invoke-virtual {v0, p2}, Lcom/bilibili/tv/ebook/model/Book;->setBookId(Ljava/lang/String;)V

    .line 110
    const-string v2, "title"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8e

    .line 111
    const-string v2, "title"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/ebook/model/Book;->setTitle(Ljava/lang/String;)V

    .line 116
    :goto_1e
    const-string v2, "author"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9e

    .line 117
    const-string v2, "author"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/ebook/model/Book;->setAuthor(Ljava/lang/String;)V

    .line 122
    :goto_2f
    const-string v2, "language"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_40

    .line 123
    const-string v2, "language"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/ebook/model/Book;->setLanguage(Ljava/lang/String;)V

    .line 127
    :cond_40
    const-string v2, "chapters"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9d

    .line 128
    const-string v2, "chapters"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 129
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 131
    const/4 v1, 0x0

    :goto_54
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v1, v4, :cond_bd

    .line 132
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 133
    new-instance v5, Lcom/bilibili/tv/ebook/model/Chapter;

    invoke-direct {v5}, Lcom/bilibili/tv/ebook/model/Chapter;-><init>()V

    .line 135
    invoke-virtual {v5, v1}, Lcom/bilibili/tv/ebook/model/Chapter;->setChapterIndex(I)V

    .line 137
    const-string v6, "title"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a4

    .line 138
    const-string v6, "title"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/bilibili/tv/ebook/model/Chapter;->setTitle(Ljava/lang/String;)V

    .line 143
    :goto_77
    const-string v6, "content"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_88

    .line 144
    const-string v6, "content"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/bilibili/tv/ebook/model/Chapter;->setHtmlContent(Ljava/lang/String;)V

    .line 147
    :cond_88
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    add-int/lit8 v1, v1, 0x1

    goto :goto_54

    .line 113
    :cond_8e
    const-string v2, "Unknown Title"

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/ebook/model/Book;->setTitle(Ljava/lang/String;)V
    :try_end_93
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_93} :catch_94

    goto :goto_1e

    .line 155
    :catch_94
    move-exception v0

    .line 156
    const-string v1, "MobiParser"

    const-string v2, "\u89e3\u6790JSON\u6570\u636e\u5931\u8d25"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 157
    const/4 v0, 0x0

    :cond_9d
    :goto_9d
    return-object v0

    .line 119
    :cond_9e
    :try_start_9e
    const-string v2, "Unknown Author"

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/ebook/model/Book;->setAuthor(Ljava/lang/String;)V

    goto :goto_2f

    .line 140
    :cond_a4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Chapter "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v7, v1, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/bilibili/tv/ebook/model/Chapter;->setTitle(Ljava/lang/String;)V

    goto :goto_77

    .line 150
    :cond_bd
    invoke-virtual {v0, v3}, Lcom/bilibili/tv/ebook/model/Book;->setChapters(Ljava/util/List;)V
    :try_end_c0
    .catch Ljava/lang/Exception; {:try_start_9e .. :try_end_c0} :catch_94

    goto :goto_9d
.end method

.method private native parseMobiFile(Ljava/lang/String;)Ljava/lang/String;
.end method


# virtual methods
.method public parse(Ljava/lang/String;Ljava/lang/String;)Lcom/bilibili/tv/ebook/model/Book;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 72
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

    .line 75
    invoke-direct {p0, p1}, Lcom/aryan/reader/epub/parser/MobiParser;->parseMobiFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 77
    if-eqz v0, :cond_25

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 78
    :cond_25
    const-string v0, "MobiParser"

    const-string v2, "JNI\u8fd4\u56de\u6570\u636e\u4e3a\u7a7a"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 95
    :goto_2d
    return-object v0

    .line 83
    :cond_2e
    invoke-direct {p0, v0, p2}, Lcom/aryan/reader/epub/parser/MobiParser;->parseJsonToBook(Ljava/lang/String;Ljava/lang/String;)Lcom/bilibili/tv/ebook/model/Book;

    move-result-object v0

    .line 85
    const-string v2, "MobiParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MOBI\u89e3\u6790\u6210\u529f: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/model/Book;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", \u7ae0\u8282\u6570: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 86
    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/model/Book;->getChapters()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 85
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_60
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_60} :catch_61
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_60} :catch_6b

    goto :goto_2d

    .line 90
    :catch_61
    move-exception v0

    .line 91
    const-string v2, "MobiParser"

    const-string v3, "JNI\u65b9\u6cd5\u8c03\u7528\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5Native\u5e93\u662f\u5426\u6b63\u786e\u52a0\u8f7d"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    .line 92
    goto :goto_2d

    .line 93
    :catch_6b
    move-exception v0

    .line 94
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

    .line 95
    goto :goto_2d
.end method
