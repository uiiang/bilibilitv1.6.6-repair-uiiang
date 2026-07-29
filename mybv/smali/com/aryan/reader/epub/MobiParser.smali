.class public Lcom/aryan/reader/epub/MobiParser;
.super Ljava/lang/Object;
.source "MobiParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aryan/reader/epub/MobiParser$ParsedMobiData;,
        Lcom/aryan/reader/epub/MobiParser$ParsedMobiResource;,
        Lcom/aryan/reader/epub/MobiParser$ParsedMobiTocEntry;
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

    .line 274
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 275
    if-nez p1, :cond_9

    .line 290
    :cond_8
    return-object v0

    .line 277
    :cond_9
    array-length v2, p1

    :goto_a
    if-ge v1, v2, :cond_8

    aget-object v3, p1, v1

    .line 278
    invoke-virtual {v3}, Lcom/aryan/reader/epub/MobiParser$ParsedMobiResource;->isCss()Z

    move-result v4

    if-eqz v4, :cond_68

    invoke-virtual {v3}, Lcom/aryan/reader/epub/MobiParser$ParsedMobiResource;->getPath()Ljava/lang/String;

    move-result-object v4

    const-string v5, "flow_"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_68

    .line 279
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

    .line 281
    :try_start_34
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 282
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

    .line 283
    invoke-virtual {v3}, Lcom/aryan/reader/epub/MobiParser$ParsedMobiResource;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_68
    .catch Ljava/lang/NumberFormatException; {:try_start_34 .. :try_end_68} :catch_6b

    .line 277
    :cond_68
    :goto_68
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 284
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

    .line 248
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 249
    if-nez p1, :cond_a

    move-object v0, v2

    .line 270
    :goto_9
    return-object v0

    .line 251
    :cond_a
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 252
    array-length v4, p1

    move v1, v0

    :goto_11
    if-ge v1, v4, :cond_21

    aget-object v5, p1, v1

    .line 253
    invoke-virtual {v5}, Lcom/aryan/reader/epub/MobiParser$ParsedMobiResource;->isImage()Z

    move-result v6

    if-eqz v6, :cond_1e

    .line 254
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 252
    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 258
    :cond_21
    new-instance v1, Lcom/aryan/reader/epub/MobiParser$1;

    invoke-direct {v1, p0}, Lcom/aryan/reader/epub/MobiParser$1;-><init>(Lcom/aryan/reader/epub/MobiParser;)V

    invoke-static {v3, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    move v1, v0

    .line 265
    :goto_2a
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_47

    .line 266
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aryan/reader/epub/MobiParser$ParsedMobiResource;

    .line 267
    add-int/lit8 v4, v1, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0}, Lcom/aryan/reader/epub/MobiParser$ParsedMobiResource;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2a

    :cond_47
    move-object v0, v2

    .line 270
    goto :goto_9
.end method

.method private createExtractionDir(Ljava/lang/String;)Ljava/io/File;
    .locals 4

    .prologue
    .line 295
    iget-object v0, p0, Lcom/aryan/reader/epub/MobiParser;->context:Landroid/content/Context;

    if-eqz v0, :cond_26

    .line 296
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

    .line 300
    :goto_22
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 301
    return-object v0

    .line 298
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
    .line 465
    const/4 v0, 0x1

    return v0
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
    .line 325
    if-nez p1, :cond_5

    const-string p1, ""

    .line 343
    :goto_4
    return-object p1

    .line 328
    :cond_5
    :try_start_5
    invoke-static {p1}, Lorg/jsoup/Jsoup;->parse(Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    move-result-object v2

    .line 330
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

    .line 331
    const-string v1, "href"

    invoke-virtual {v0, v1}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 332
    invoke-interface {p3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 333
    const-string v4, "href"

    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v4, v1}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    goto :goto_13

    .line 342
    :catch_37
    move-exception v0

    goto :goto_4

    .line 337
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

    .line 338
    invoke-direct {p0, v0, p2}, Lcom/aryan/reader/epub/MobiParser;->processImageElement(Lorg/jsoup/nodes/Element;Ljava/util/Map;)V

    goto :goto_43

    .line 341
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
    .line 348
    const-string v0, "src"

    invoke-virtual {p1, v0}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 350
    const-string v1, "kindle:embed:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 352
    :try_start_e
    const-string v1, "embed:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x6

    .line 353
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 354
    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 355
    if-ltz v1, :cond_27

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 357
    :cond_27
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 358
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 359
    const-string v1, "src"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Element;
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_44} :catch_77

    .line 366
    :cond_44
    :goto_44
    const-string v0, "recindex"

    invoke-virtual {p1, v0}, Lorg/jsoup/nodes/Element;->hasAttr(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_74

    .line 368
    :try_start_4c
    const-string v0, "recindex"

    invoke-virtual {p1, v0}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 369
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_74

    .line 370
    const-string v1, "src"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    .line 371
    const-string v0, "recindex"

    invoke-virtual {p1, v0}, Lorg/jsoup/nodes/Element;->removeAttr(Ljava/lang/String;)Lorg/jsoup/nodes/Element;
    :try_end_74
    .catch Ljava/lang/NumberFormatException; {:try_start_4c .. :try_end_74} :catch_75

    .line 377
    :cond_74
    :goto_74
    return-void

    .line 373
    :catch_75
    move-exception v0

    goto :goto_74

    .line 361
    :catch_77
    move-exception v0

    goto :goto_44
.end method

.method private saveResources([Lcom/aryan/reader/epub/MobiParser$ParsedMobiResource;Ljava/io/File;)V
    .locals 7

    .prologue
    .line 305
    if-nez p1, :cond_3

    .line 322
    :cond_2
    return-void

    .line 307
    :cond_3
    array-length v2, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_6
    if-ge v1, v2, :cond_2

    aget-object v3, p1, v1

    .line 309
    :try_start_a
    new-instance v0, Ljava/io/File;

    invoke-virtual {v3}, Lcom/aryan/reader/epub/MobiParser$ParsedMobiResource;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, p2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 310
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    .line 311
    if-eqz v4, :cond_1c

    .line 312
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 315
    :cond_1c
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 316
    invoke-virtual {v3}, Lcom/aryan/reader/epub/MobiParser$ParsedMobiResource;->getData()[B

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 317
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_2b} :catch_2f

    .line 307
    :goto_2b
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    .line 318
    :catch_2f
    move-exception v0

    .line 319
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

    .line 381
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 383
    if-eqz p1, :cond_e

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_e
    move-object v0, v4

    .line 461
    :goto_f
    return-object v0

    .line 387
    :cond_10
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    .line 388
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 390
    if-eqz p2, :cond_2d

    array-length v0, p2

    if-lez v0, :cond_2d

    .line 391
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 392
    new-instance v0, Lcom/aryan/reader/epub/MobiParser$2;

    invoke-direct {v0, p0}, Lcom/aryan/reader/epub/MobiParser$2;-><init>(Lcom/aryan/reader/epub/MobiParser;)V

    invoke-static {v6, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 400
    :cond_2d
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_bb

    move v2, v3

    .line 401
    :goto_34
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_134

    .line 402
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aryan/reader/epub/MobiParser$ParsedMobiTocEntry;

    .line 403
    invoke-virtual {v0}, Lcom/aryan/reader/epub/MobiParser$ParsedMobiTocEntry;->getFilePosition()I

    move-result v7

    .line 406
    add-int/lit8 v1, v2, 0x1

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-ge v1, v8, :cond_b9

    .line 407
    add-int/lit8 v1, v2, 0x1

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aryan/reader/epub/MobiParser$ParsedMobiTocEntry;

    invoke-virtual {v1}, Lcom/aryan/reader/epub/MobiParser$ParsedMobiTocEntry;->getFilePosition()I

    move-result v1

    .line 412
    :goto_58
    if-ge v7, v1, :cond_b4

    array-length v8, v5

    if-ge v7, v8, :cond_b4

    .line 413
    sub-int/2addr v1, v7

    array-length v8, v5

    sub-int/2addr v8, v7

    invoke-static {v1, v8}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 414
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v5, v7, v1}, Ljava/lang/String;-><init>([BII)V

    .line 416
    invoke-direct {p0, v8, p3, p4}, Lcom/aryan/reader/epub/MobiParser;->processChapterHtml(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    .line 418
    new-instance v7, Lcom/bilibili/tv/ebook/model/Chapter;

    invoke-direct {v7}, Lcom/bilibili/tv/ebook/model/Chapter;-><init>()V

    .line 419
    invoke-virtual {v7, v2}, Lcom/bilibili/tv/ebook/model/Chapter;->setChapterIndex(I)V

    .line 420
    invoke-virtual {v0}, Lcom/aryan/reader/epub/MobiParser$ParsedMobiTocEntry;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/bilibili/tv/ebook/model/Chapter;->setTitle(Ljava/lang/String;)V

    .line 421
    invoke-virtual {v7, v1}, Lcom/bilibili/tv/ebook/model/Chapter;->setHtmlContent(Ljava/lang/String;)V

    .line 422
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

    .line 423
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

    .line 425
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 401
    :cond_b4
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_34

    .line 409
    :cond_b9
    array-length v1, v5

    goto :goto_58

    .line 429
    :cond_bb
    const-string v0, "(?i)<mbp:pagebreak\\s*/>"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 432
    array-length v5, v2

    move v1, v3

    move v0, v3

    :goto_c4
    if-ge v1, v5, :cond_134

    aget-object v6, v2, v1

    .line 433
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_d5

    .line 432
    :goto_d2
    add-int/lit8 v1, v1, 0x1

    goto :goto_c4

    .line 435
    :cond_d5
    invoke-direct {p0, v6, p3, p4}, Lcom/aryan/reader/epub/MobiParser;->processChapterHtml(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v6

    .line 437
    new-instance v7, Lcom/bilibili/tv/ebook/model/Chapter;

    invoke-direct {v7}, Lcom/bilibili/tv/ebook/model/Chapter;-><init>()V

    .line 438
    invoke-virtual {v7, v0}, Lcom/bilibili/tv/ebook/model/Chapter;->setChapterIndex(I)V

    .line 439
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

    .line 440
    invoke-virtual {v7, v6}, Lcom/bilibili/tv/ebook/model/Chapter;->setHtmlContent(Ljava/lang/String;)V

    .line 441
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

    .line 442
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

    .line 444
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 445
    add-int/lit8 v0, v0, 0x1

    goto :goto_d2

    .line 449
    :cond_134
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_15b

    .line 450
    invoke-direct {p0, p1, p3, p4}, Lcom/aryan/reader/epub/MobiParser;->processChapterHtml(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 452
    new-instance v1, Lcom/bilibili/tv/ebook/model/Chapter;

    invoke-direct {v1}, Lcom/bilibili/tv/ebook/model/Chapter;-><init>()V

    .line 453
    invoke-virtual {v1, v3}, Lcom/bilibili/tv/ebook/model/Chapter;->setChapterIndex(I)V

    .line 454
    const-string v2, "Full Content"

    invoke-virtual {v1, v2}, Lcom/bilibili/tv/ebook/model/Chapter;->setTitle(Ljava/lang/String;)V

    .line 455
    invoke-virtual {v1, v0}, Lcom/bilibili/tv/ebook/model/Chapter;->setHtmlContent(Ljava/lang/String;)V

    .line 456
    const-string v0, "chapter_0.html"

    invoke-virtual {v1, v0}, Lcom/bilibili/tv/ebook/model/Chapter;->setHtmlFilePath(Ljava/lang/String;)V

    .line 457
    const-string v0, "mobi_chapter_0"

    invoke-virtual {v1, v0}, Lcom/bilibili/tv/ebook/model/Chapter;->setChapterId(Ljava/lang/String;)V

    .line 458
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_15b
    move-object v0, v4

    .line 461
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

    .line 205
    invoke-direct {p0, p1}, Lcom/aryan/reader/epub/MobiParser;->parseMobiFile(Ljava/lang/String;)Lcom/aryan/reader/epub/MobiParser$ParsedMobiData;

    move-result-object v3

    .line 207
    if-eqz v3, :cond_25

    invoke-virtual {v3}, Lcom/aryan/reader/epub/MobiParser$ParsedMobiData;->getRawHtmlContent()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2e

    .line 208
    :cond_25
    const-string v0, "MobiParser"

    const-string v2, "JNI\u8fd4\u56de\u6570\u636e\u4e3a\u7a7a"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 241
    :goto_2d
    return-object v0

    .line 212
    :cond_2e
    const-string v2, "MobiParser"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MOBI\u89e3\u6790\u6210\u529f: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Lcom/aryan/reader/epub/MobiParser$ParsedMobiData;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", \u8d44\u6e90\u6570: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 213
    invoke-virtual {v3}, Lcom/aryan/reader/epub/MobiParser$ParsedMobiData;->getResourceCount()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", TOC\u6570: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 214
    invoke-virtual {v3}, Lcom/aryan/reader/epub/MobiParser$ParsedMobiData;->getToc()[Lcom/aryan/reader/epub/MobiParser$ParsedMobiTocEntry;

    move-result-object v0

    if-eqz v0, :cond_103

    invoke-virtual {v3}, Lcom/aryan/reader/epub/MobiParser$ParsedMobiData;->getToc()[Lcom/aryan/reader/epub/MobiParser$ParsedMobiTocEntry;

    move-result-object v0

    array-length v0, v0

    :goto_62
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 212
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    invoke-virtual {v3}, Lcom/aryan/reader/epub/MobiParser$ParsedMobiData;->getResources()[Lcom/aryan/reader/epub/MobiParser$ParsedMobiResource;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/aryan/reader/epub/MobiParser;->buildImageMap([Lcom/aryan/reader/epub/MobiParser$ParsedMobiResource;)Ljava/util/Map;

    move-result-object v0

    .line 217
    invoke-virtual {v3}, Lcom/aryan/reader/epub/MobiParser$ParsedMobiData;->getResources()[Lcom/aryan/reader/epub/MobiParser$ParsedMobiResource;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/aryan/reader/epub/MobiParser;->buildCssFlowMap([Lcom/aryan/reader/epub/MobiParser$ParsedMobiResource;)Ljava/util/Map;

    move-result-object v2

    .line 218
    invoke-direct {p0, p2}, Lcom/aryan/reader/epub/MobiParser;->createExtractionDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 219
    invoke-virtual {v3}, Lcom/aryan/reader/epub/MobiParser$ParsedMobiData;->getResources()[Lcom/aryan/reader/epub/MobiParser$ParsedMobiResource;

    move-result-object v5

    invoke-direct {p0, v5, v4}, Lcom/aryan/reader/epub/MobiParser;->saveResources([Lcom/aryan/reader/epub/MobiParser$ParsedMobiResource;Ljava/io/File;)V

    .line 221
    invoke-virtual {v3}, Lcom/aryan/reader/epub/MobiParser$ParsedMobiData;->getRawHtmlContent()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/aryan/reader/epub/MobiParser$ParsedMobiData;->getToc()[Lcom/aryan/reader/epub/MobiParser$ParsedMobiTocEntry;

    move-result-object v6

    invoke-direct {p0, v5, v6, v0, v2}, Lcom/aryan/reader/epub/MobiParser;->splitIntoChapters(Ljava/lang/String;[Lcom/aryan/reader/epub/MobiParser$ParsedMobiTocEntry;Ljava/util/Map;Ljava/util/Map;)Ljava/util/List;

    move-result-object v5

    .line 223
    new-instance v0, Lcom/bilibili/tv/ebook/model/Book;

    invoke-direct {v0}, Lcom/bilibili/tv/ebook/model/Book;-><init>()V

    .line 224
    invoke-virtual {v0, p2}, Lcom/bilibili/tv/ebook/model/Book;->setBookId(Ljava/lang/String;)V

    .line 225
    invoke-virtual {v3}, Lcom/aryan/reader/epub/MobiParser$ParsedMobiData;->getTitle()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_106

    invoke-virtual {v3}, Lcom/aryan/reader/epub/MobiParser$ParsedMobiData;->getTitle()Ljava/lang/String;

    move-result-object v2

    :goto_a6
    invoke-virtual {v0, v2}, Lcom/bilibili/tv/ebook/model/Book;->setTitle(Ljava/lang/String;)V

    .line 226
    invoke-virtual {v3}, Lcom/aryan/reader/epub/MobiParser$ParsedMobiData;->getAuthor()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_109

    invoke-virtual {v3}, Lcom/aryan/reader/epub/MobiParser$ParsedMobiData;->getAuthor()Ljava/lang/String;

    move-result-object v2

    :goto_b3
    invoke-virtual {v0, v2}, Lcom/bilibili/tv/ebook/model/Book;->setAuthor(Ljava/lang/String;)V

    .line 227
    const-string v2, "en"

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/ebook/model/Book;->setLanguage(Ljava/lang/String;)V

    .line 228
    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/model/Book;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/ebook/model/Book;->setFileName(Ljava/lang/String;)V

    .line 229
    invoke-virtual {v0, v5}, Lcom/bilibili/tv/ebook/model/Book;->setChapters(Ljava/util/List;)V

    .line 230
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/ebook/model/Book;->setExtractionPath(Ljava/lang/String;)V

    .line 232
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
    :try_end_f6
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_f6} :catch_f8
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_f6} :catch_10c

    goto/16 :goto_2d

    .line 236
    :catch_f8
    move-exception v0

    .line 237
    const-string v2, "MobiParser"

    const-string v3, "JNI\u65b9\u6cd5\u8c03\u7528\u5931\u8d25"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    .line 238
    goto/16 :goto_2d

    .line 214
    :cond_103
    const/4 v0, 0x0

    goto/16 :goto_62

    .line 225
    :cond_106
    :try_start_106
    const-string v2, "Unknown Title"

    goto :goto_a6

    .line 226
    :cond_109
    const-string v2, "Unknown Author"
    :try_end_10b
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_106 .. :try_end_10b} :catch_f8
    .catch Ljava/lang/Exception; {:try_start_106 .. :try_end_10b} :catch_10c

    goto :goto_b3

    .line 239
    :catch_10c
    move-exception v0

    .line 240
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

    .line 241
    goto/16 :goto_2d
.end method
