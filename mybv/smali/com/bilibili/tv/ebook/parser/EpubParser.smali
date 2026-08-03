.class public Lcom/bilibili/tv/ebook/parser/EpubParser;
.super Ljava/lang/Object;
.source "EpubParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bilibili/tv/ebook/parser/EpubParser$ManifestItem;,
        Lcom/bilibili/tv/ebook/parser/EpubParser$NcxParseResult;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "EpubParser"


# instance fields
.field private cacheDir:Ljava/io/File;

.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/bilibili/tv/ebook/parser/EpubParser;->context:Landroid/content/Context;

    .line 36
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "epub_cache"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bilibili/tv/ebook/parser/EpubParser;->cacheDir:Ljava/io/File;

    .line 37
    iget-object v0, p0, Lcom/bilibili/tv/ebook/parser/EpubParser;->cacheDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 38
    iget-object v0, p0, Lcom/bilibili/tv/ebook/parser/EpubParser;->cacheDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 40
    :cond_1f
    return-void
.end method

.method private findFileRecursively(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 786
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_8

    .line 809
    :cond_7
    :goto_7
    return-object v0

    .line 791
    :cond_8
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 792
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_15

    move-object v0, v1

    .line 793
    goto :goto_7

    .line 797
    :cond_15
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 798
    if-eqz v3, :cond_7

    .line 799
    array-length v4, v3

    const/4 v1, 0x0

    move v2, v1

    :goto_1e
    if-ge v2, v4, :cond_7

    aget-object v1, v3, v2

    .line 800
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_30

    .line 801
    invoke-direct {p0, v1, p2}, Lcom/bilibili/tv/ebook/parser/EpubParser;->findFileRecursively(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 802
    if-eqz v1, :cond_30

    move-object v0, v1

    .line 803
    goto :goto_7

    .line 799
    :cond_30
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1e
.end method

.method private findOpfFile(Ljava/io/File;)Ljava/io/File;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 158
    new-instance v0, Ljava/io/File;

    const-string v1, "META-INF/container.xml"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 160
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_46

    .line 161
    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Lorg/jsoup/Jsoup;->parse(Ljava/io/File;Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    move-result-object v0

    .line 162
    const-string v1, "rootfile"

    invoke-virtual {v0, v1}, Lorg/jsoup/nodes/Document;->selectFirst(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v0

    .line 164
    if-eqz v0, :cond_46

    .line 165
    const-string v1, "full-path"

    invoke-virtual {v0, v1}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 166
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 167
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_46

    .line 168
    const-string v2, "EpubParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u627e\u5230OPF\u6587\u4ef6: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :goto_45
    return-object v0

    .line 175
    :cond_46
    new-instance v0, Lcom/bilibili/tv/ebook/parser/EpubParser$1;

    invoke-direct {v0, p0}, Lcom/bilibili/tv/ebook/parser/EpubParser$1;-><init>(Lcom/bilibili/tv/ebook/parser/EpubParser;)V

    invoke-virtual {p1, v0}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    .line 182
    if-eqz v0, :cond_75

    array-length v1, v0

    if-lez v1, :cond_75

    .line 183
    const-string v1, "EpubParser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u4f7f\u7528\u9ed8\u8ba4OPF\u6587\u4ef6: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v0, v4

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    aget-object v0, v0, v4

    goto :goto_45

    .line 187
    :cond_75
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "OPF file not found"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private loadMetadataFromCache(Ljava/io/File;)Lcom/bilibili/tv/ebook/model/Book;
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 666
    :try_start_1
    new-instance v1, Ljava/io/File;

    const-string v2, "metadata.json"

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 667
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2b

    .line 668
    const-string v2, "EpubParser"

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

    .line 726
    :goto_2a
    return-object v0

    .line 672
    :cond_2b
    const-string v2, "EpubParser"

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

    .line 675
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 676
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    const-string v4, "UTF-8"

    invoke-direct {v3, v2, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 677
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 679
    :goto_5d
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_70

    .line 680
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_66} :catch_67

    goto :goto_5d

    .line 724
    :catch_67
    move-exception v1

    .line 725
    const-string v2, "EpubParser"

    const-string v3, "\u52a0\u8f7d\u7f13\u5b58\u5143\u6570\u636e\u5931\u8d25"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2a

    .line 682
    :cond_70
    :try_start_70
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 683
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 685
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 686
    const-string v2, "EpubParser"

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

    .line 689
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 691
    new-instance v1, Lcom/bilibili/tv/ebook/model/Book;

    invoke-direct {v1}, Lcom/bilibili/tv/ebook/model/Book;-><init>()V

    .line 692
    const-string v3, "bookId"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/bilibili/tv/ebook/model/Book;->setBookId(Ljava/lang/String;)V

    .line 693
    const-string v3, "title"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/bilibili/tv/ebook/model/Book;->setTitle(Ljava/lang/String;)V

    .line 694
    const-string v3, "author"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/bilibili/tv/ebook/model/Book;->setAuthor(Ljava/lang/String;)V

    .line 695
    const-string v3, "language"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/bilibili/tv/ebook/model/Book;->setLanguage(Ljava/lang/String;)V

    .line 696
    const-string v3, "extractionPath"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/bilibili/tv/ebook/model/Book;->setExtractionPath(Ljava/lang/String;)V

    .line 699
    const-string v3, "chapters"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 700
    if-eqz v3, :cond_129

    .line 701
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 702
    const/4 v2, 0x0

    :goto_db
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v2, v5, :cond_126

    .line 703
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 704
    new-instance v6, Lcom/bilibili/tv/ebook/model/Chapter;

    invoke-direct {v6}, Lcom/bilibili/tv/ebook/model/Chapter;-><init>()V

    .line 705
    const-string v7, "chapterId"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/bilibili/tv/ebook/model/Chapter;->setChapterId(Ljava/lang/String;)V

    .line 706
    const-string v7, "chapterIndex"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/bilibili/tv/ebook/model/Chapter;->setChapterIndex(I)V

    .line 707
    const-string v7, "title"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/bilibili/tv/ebook/model/Chapter;->setTitle(Ljava/lang/String;)V

    .line 708
    const-string v7, "htmlFilePath"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/bilibili/tv/ebook/model/Chapter;->setHtmlFilePath(Ljava/lang/String;)V

    .line 709
    const-string v7, "baseUrl"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/bilibili/tv/ebook/model/Chapter;->setBaseUrl(Ljava/lang/String;)V

    .line 710
    const-string v7, "depth"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v6, v5}, Lcom/bilibili/tv/ebook/model/Chapter;->setDepth(I)V

    .line 716
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 702
    add-int/lit8 v2, v2, 0x1

    goto :goto_db

    .line 718
    :cond_126
    invoke-virtual {v1, v4}, Lcom/bilibili/tv/ebook/model/Book;->setChapters(Ljava/util/List;)V

    .line 721
    :cond_129
    const-string v2, "EpubParser"

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
    :try_end_157
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_157} :catch_67

    move-object v0, v1

    .line 722
    goto/16 :goto_2a
.end method

.method private parseChapter(Lcom/bilibili/tv/ebook/parser/EpubParser$ManifestItem;ILjava/io/File;Lcom/bilibili/tv/ebook/parser/EpubParser$NcxParseResult;)Lcom/bilibili/tv/ebook/model/Chapter;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 591
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lcom/bilibili/tv/ebook/parser/EpubParser$ManifestItem;->getHref()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 592
    invoke-virtual {p1}, Lcom/bilibili/tv/ebook/parser/EpubParser$ManifestItem;->getHref()Ljava/lang/String;

    move-result-object v2

    .line 593
    const-string v1, "EpubParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u89e3\u6790\u7ae0\u8282\u6587\u4ef6: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (href="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Lorg/jsoup/Jsoup;->parse(Ljava/io/File;Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    move-result-object v3

    .line 597
    new-instance v4, Lcom/bilibili/tv/ebook/model/Chapter;

    invoke-direct {v4}, Lcom/bilibili/tv/ebook/model/Chapter;-><init>()V

    .line 598
    invoke-virtual {p1}, Lcom/bilibili/tv/ebook/parser/EpubParser$ManifestItem;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/bilibili/tv/ebook/model/Chapter;->setChapterId(Ljava/lang/String;)V

    .line 599
    invoke-virtual {v4, p2}, Lcom/bilibili/tv/ebook/model/Chapter;->setChapterIndex(I)V

    .line 600
    invoke-virtual {v4, v2}, Lcom/bilibili/tv/ebook/model/Chapter;->setHtmlFilePath(Ljava/lang/String;)V

    .line 601
    invoke-virtual {v3}, Lorg/jsoup/nodes/Document;->outerHtml()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/bilibili/tv/ebook/model/Chapter;->setHtmlContent(Ljava/lang/String;)V

    .line 602
    invoke-virtual {v3}, Lorg/jsoup/nodes/Document;->text()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/bilibili/tv/ebook/model/Chapter;->setPlainTextContent(Ljava/lang/String;)V

    .line 606
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 607
    if-eqz v0, :cond_9d

    .line 608
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "file://"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 609
    invoke-virtual {v4, v0}, Lcom/bilibili/tv/ebook/model/Chapter;->setBaseUrl(Ljava/lang/String;)V

    .line 610
    const-string v1, "EpubParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u8bbe\u7f6ebaseUrl: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    :cond_9d
    const/4 v0, 0x0

    .line 615
    if-eqz p4, :cond_d0

    iget-object v1, p4, Lcom/bilibili/tv/ebook/parser/EpubParser$NcxParseResult;->titleMap:Ljava/util/Map;

    if-eqz v1, :cond_d0

    .line 616
    iget-object v0, p4, Lcom/bilibili/tv/ebook/parser/EpubParser$NcxParseResult;->titleMap:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 617
    if-eqz v0, :cond_174

    .line 618
    const-string v1, "EpubParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u4eceNCX\u83b7\u53d6\u6807\u9898: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", href="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    :cond_d0
    if-eqz v0, :cond_d8

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_106

    .line 630
    :cond_d8
    const-string v0, "title"

    invoke-virtual {v3, v0}, Lorg/jsoup/nodes/Document;->selectFirst(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v0

    .line 631
    if-eqz v0, :cond_1dd

    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->text()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1dd

    .line 632
    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->text()Ljava/lang/String;

    move-result-object v0

    .line 633
    const-string v1, "EpubParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u4eceHTML\u83b7\u53d6\u6807\u9898: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    :cond_106
    :goto_106
    invoke-virtual {v4, v0}, Lcom/bilibili/tv/ebook/model/Chapter;->setTitle(Ljava/lang/String;)V

    .line 643
    const/4 v1, 0x0

    .line 644
    if-eqz p4, :cond_234

    iget-object v0, p4, Lcom/bilibili/tv/ebook/parser/EpubParser$NcxParseResult;->depthMap:Ljava/util/Map;

    if-eqz v0, :cond_234

    .line 645
    iget-object v0, p4, Lcom/bilibili/tv/ebook/parser/EpubParser$NcxParseResult;->depthMap:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 646
    if-eqz v0, :cond_20c

    .line 647
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 648
    const-string v1, "EpubParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u4eceNCX\u83b7\u53d6depth: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", href="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    :goto_140
    invoke-virtual {v4, v0}, Lcom/bilibili/tv/ebook/model/Chapter;->setDepth(I)V

    .line 655
    const-string v1, "EpubParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u7ae0\u8282\u89e3\u6790\u5b8c\u6210: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v4}, Lcom/bilibili/tv/ebook/model/Chapter;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", depth="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", href="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    return-object v4

    .line 620
    :cond_174
    const-string v1, "EpubParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "NCX titleMap\u4e2d\u672a\u627e\u5230href="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", titleMap\u5927\u5c0f="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p4, Lcom/bilibili/tv/ebook/parser/EpubParser$NcxParseResult;->titleMap:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    iget-object v1, p4, Lcom/bilibili/tv/ebook/parser/EpubParser$NcxParseResult;->titleMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1a6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 623
    const-string v6, "EpubParser"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "titleMap key: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " -> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p4, Lcom/bilibili/tv/ebook/parser/EpubParser$NcxParseResult;->titleMap:Ljava/util/Map;

    invoke-interface {v8, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a6

    .line 635
    :cond_1dd
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Chapter "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v1, p2, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 636
    const-string v1, "EpubParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u4f7f\u7528\u9ed8\u8ba4\u6807\u9898: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_106

    .line 650
    :cond_20c
    const-string v0, "EpubParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NCX depthMap\u4e2d\u672a\u627e\u5230href="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", depthMap\u5927\u5c0f="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p4, Lcom/bilibili/tv/ebook/parser/EpubParser$NcxParseResult;->depthMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_234
    move v0, v1

    goto/16 :goto_140
.end method

.method private parseChapters(Ljava/util/Map;Ljava/util/List;Ljava/io/File;Lcom/bilibili/tv/ebook/parser/EpubParser$NcxParseResult;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/bilibili/tv/ebook/parser/EpubParser$ManifestItem;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/File;",
            "Lcom/bilibili/tv/ebook/parser/EpubParser$NcxParseResult;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/tv/ebook/model/Chapter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 561
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 562
    const/4 v0, 0x0

    .line 564
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v0

    :goto_b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_52

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 565
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bilibili/tv/ebook/parser/EpubParser$ManifestItem;

    .line 566
    if-eqz v1, :cond_50

    invoke-virtual {v1}, Lcom/bilibili/tv/ebook/parser/EpubParser$ManifestItem;->getMediaType()Ljava/lang/String;

    move-result-object v5

    const-string v6, "html"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_50

    .line 568
    :try_start_2b
    invoke-direct {p0, v1, v2, p3, p4}, Lcom/bilibili/tv/ebook/parser/EpubParser;->parseChapter(Lcom/bilibili/tv/ebook/parser/EpubParser$ManifestItem;ILjava/io/File;Lcom/bilibili/tv/ebook/parser/EpubParser$NcxParseResult;)Lcom/bilibili/tv/ebook/model/Chapter;

    move-result-object v1

    .line 569
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_32} :catch_37

    .line 570
    add-int/lit8 v2, v2, 0x1

    move v0, v2

    :goto_35
    move v2, v0

    .line 575
    goto :goto_b

    .line 571
    :catch_37
    move-exception v1

    .line 572
    const-string v5, "EpubParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u89e3\u6790\u7ae0\u8282\u5931\u8d25: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_50
    move v0, v2

    goto :goto_35

    .line 577
    :cond_52
    const-string v0, "EpubParser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u89e3\u6790\u7ae0\u8282\u6570: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    return-object v3
.end method

.method private parseManifest(Lorg/jsoup/nodes/Document;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jsoup/nodes/Document;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/bilibili/tv/ebook/parser/EpubParser$ManifestItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 361
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 362
    const-string v0, "manifest item"

    invoke-virtual {p1, v0}, Lorg/jsoup/nodes/Document;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v0

    .line 364
    invoke-virtual {v0}, Lorg/jsoup/select/Elements;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/Element;

    .line 365
    const-string v3, "id"

    invoke-virtual {v0, v3}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 366
    const-string v4, "href"

    invoke-virtual {v0, v4}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 367
    const-string v5, "media-type"

    invoke-virtual {v0, v5}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 369
    new-instance v5, Lcom/bilibili/tv/ebook/parser/EpubParser$ManifestItem;

    invoke-direct {v5, v3, v4, v0}, Lcom/bilibili/tv/ebook/parser/EpubParser$ManifestItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f

    .line 372
    :cond_36
    const-string v0, "EpubParser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Manifest\u9879\u6570: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    return-object v1
.end method

.method private parseMetadata(Lorg/jsoup/nodes/Document;Lcom/bilibili/tv/ebook/model/Book;)V
    .locals 6

    .prologue
    .line 226
    const-string v0, "metadata"

    invoke-virtual {p1, v0}, Lorg/jsoup/nodes/Document;->selectFirst(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v2

    .line 227
    if-eqz v2, :cond_1fe

    .line 228
    const-string v0, "EpubParser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u627e\u5230metadata\u5143\u7d20\uff0c\u5185\u5bb9:\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Lorg/jsoup/nodes/Element;->html()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    :cond_24
    const-string v0, "metadata dc|title"

    invoke-virtual {p1, v0}, Lorg/jsoup/nodes/Document;->selectFirst(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v1

    .line 242
    if-nez v1, :cond_32

    .line 244
    const-string v0, "metadata title"

    invoke-virtual {p1, v0}, Lorg/jsoup/nodes/Document;->selectFirst(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v1

    .line 246
    :cond_32
    if-nez v1, :cond_3a

    .line 248
    const-string v0, "dc|title"

    invoke-virtual {p1, v0}, Lorg/jsoup/nodes/Document;->selectFirst(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v1

    .line 250
    :cond_3a
    if-nez v1, :cond_28d

    .line 252
    if-eqz v2, :cond_28d

    .line 253
    invoke-virtual {v2}, Lorg/jsoup/nodes/Element;->children()Lorg/jsoup/select/Elements;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/select/Elements;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_46
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/Element;

    .line 254
    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->tagName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 255
    const-string v5, "title"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6a

    const-string v5, ":title"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_46

    .line 257
    :cond_6a
    const-string v1, "EpubParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u901a\u8fc7\u904d\u5386\u627e\u5230title\u5143\u7d20: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->tagName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    :goto_86
    if-nez v0, :cond_8e

    .line 265
    const-string v0, "*[property~=title]"

    invoke-virtual {p1, v0}, Lorg/jsoup/nodes/Document;->selectFirst(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v0

    .line 268
    :cond_8e
    if-eqz v0, :cond_256

    .line 269
    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->text()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 270
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_248

    .line 271
    invoke-virtual {p2, v1}, Lcom/bilibili/tv/ebook/model/Book;->setTitle(Ljava/lang/String;)V

    .line 272
    const-string v3, "EpubParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u89e3\u6790\u5230\u4e66\u7c4d\u6807\u9898: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " (\u4f7f\u7528\u9009\u62e9\u5668: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->tagName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    :goto_cd
    const-string v0, "metadata dc|creator"

    invoke-virtual {p1, v0}, Lorg/jsoup/nodes/Document;->selectFirst(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v1

    .line 287
    if-nez v1, :cond_db

    .line 289
    const-string v0, "metadata creator"

    invoke-virtual {p1, v0}, Lorg/jsoup/nodes/Document;->selectFirst(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v1

    .line 291
    :cond_db
    if-nez v1, :cond_e3

    .line 293
    const-string v0, "dc|creator"

    invoke-virtual {p1, v0}, Lorg/jsoup/nodes/Document;->selectFirst(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v1

    .line 295
    :cond_e3
    if-nez v1, :cond_28a

    .line 297
    if-eqz v2, :cond_28a

    .line 298
    invoke-virtual {v2}, Lorg/jsoup/nodes/Element;->children()Lorg/jsoup/select/Elements;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/select/Elements;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_ef
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/Element;

    .line 299
    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->tagName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 300
    const-string v5, "creator"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_113

    const-string v5, ":creator"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_ef

    .line 302
    :cond_113
    const-string v1, "EpubParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u901a\u8fc7\u904d\u5386\u627e\u5230creator\u5143\u7d20: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->tagName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    :goto_12f
    if-nez v0, :cond_137

    .line 310
    const-string v0, "*[property~=creator]"

    invoke-virtual {p1, v0}, Lorg/jsoup/nodes/Document;->selectFirst(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v0

    .line 313
    :cond_137
    if-eqz v0, :cond_272

    .line 314
    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->text()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 315
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_264

    .line 316
    invoke-virtual {p2, v1}, Lcom/bilibili/tv/ebook/model/Book;->setAuthor(Ljava/lang/String;)V

    .line 317
    const-string v3, "EpubParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u89e3\u6790\u5230\u4f5c\u8005: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " (\u4f7f\u7528\u9009\u62e9\u5668: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->tagName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    :goto_176
    const-string v0, "metadata dc|language"

    invoke-virtual {p1, v0}, Lorg/jsoup/nodes/Document;->selectFirst(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v1

    .line 329
    if-nez v1, :cond_184

    .line 330
    const-string v0, "metadata language"

    invoke-virtual {p1, v0}, Lorg/jsoup/nodes/Document;->selectFirst(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v1

    .line 332
    :cond_184
    if-nez v1, :cond_18c

    .line 333
    const-string v0, "dc|language"

    invoke-virtual {p1, v0}, Lorg/jsoup/nodes/Document;->selectFirst(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v1

    .line 335
    :cond_18c
    if-nez v1, :cond_287

    .line 337
    if-eqz v2, :cond_287

    .line 338
    invoke-virtual {v2}, Lorg/jsoup/nodes/Element;->children()Lorg/jsoup/select/Elements;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/select/Elements;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_198
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_287

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/Element;

    .line 339
    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->tagName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 340
    const-string v4, "language"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1bc

    const-string v4, ":language"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_198

    .line 347
    :cond_1bc
    :goto_1bc
    if-eqz v0, :cond_280

    .line 348
    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->text()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/bilibili/tv/ebook/model/Book;->setLanguage(Ljava/lang/String;)V

    .line 353
    :goto_1c5
    const-string v0, "EpubParser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5143\u6570\u636e\u89e3\u6790\u5b8c\u6210: \u6807\u9898="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/bilibili/tv/ebook/model/Book;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", \u4f5c\u8005="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 354
    invoke-virtual {p2}, Lcom/bilibili/tv/ebook/model/Book;->getAuthor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", \u8bed\u8a00="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/bilibili/tv/ebook/model/Book;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 353
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    return-void

    .line 230
    :cond_1fe
    const-string v0, "EpubParser"

    const-string v1, "\u672a\u627e\u5230metadata\u5143\u7d20\uff0c\u5c1d\u8bd5\u67e5\u627e\u6839\u5143\u7d20\u4e0b\u7684\u6240\u6709\u5143\u7d20"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    invoke-virtual {p1}, Lorg/jsoup/nodes/Document;->children()Lorg/jsoup/select/Elements;

    move-result-object v0

    .line 232
    invoke-virtual {v0}, Lorg/jsoup/select/Elements;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_20d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/Element;

    .line 233
    const-string v3, "EpubParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u6839\u5143\u7d20: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->tagName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", \u5b50\u5143\u7d20\u6570: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->children()Lorg/jsoup/select/Elements;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/select/Elements;->size()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20d

    .line 274
    :cond_248
    const-string v0, "EpubParser"

    const-string v1, "title\u5143\u7d20\u5185\u5bb9\u4e3a\u7a7a"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    const-string v0, "Unknown Title"

    invoke-virtual {p2, v0}, Lcom/bilibili/tv/ebook/model/Book;->setTitle(Ljava/lang/String;)V

    goto/16 :goto_cd

    .line 278
    :cond_256
    const-string v0, "Unknown Title"

    invoke-virtual {p2, v0}, Lcom/bilibili/tv/ebook/model/Book;->setTitle(Ljava/lang/String;)V

    .line 279
    const-string v0, "EpubParser"

    const-string v1, "\u672a\u627e\u5230\u4e66\u7c4d\u6807\u9898\u5143\u6570\u636e"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_cd

    .line 319
    :cond_264
    const-string v0, "EpubParser"

    const-string v1, "creator\u5143\u7d20\u5185\u5bb9\u4e3a\u7a7a"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    const-string v0, "Unknown Author"

    invoke-virtual {p2, v0}, Lcom/bilibili/tv/ebook/model/Book;->setAuthor(Ljava/lang/String;)V

    goto/16 :goto_176

    .line 323
    :cond_272
    const-string v0, "Unknown Author"

    invoke-virtual {p2, v0}, Lcom/bilibili/tv/ebook/model/Book;->setAuthor(Ljava/lang/String;)V

    .line 324
    const-string v0, "EpubParser"

    const-string v1, "\u672a\u627e\u5230\u4f5c\u8005\u5143\u6570\u636e"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_176

    .line 350
    :cond_280
    const-string v0, "en"

    invoke-virtual {p2, v0}, Lcom/bilibili/tv/ebook/model/Book;->setLanguage(Ljava/lang/String;)V

    goto/16 :goto_1c5

    :cond_287
    move-object v0, v1

    goto/16 :goto_1bc

    :cond_28a
    move-object v0, v1

    goto/16 :goto_12f

    :cond_28d
    move-object v0, v1

    goto/16 :goto_86
.end method

.method private parseNavMapRecursive(Lorg/jsoup/nodes/Element;Ljava/io/File;Ljava/io/File;ILcom/bilibili/tv/ebook/parser/EpubParser$NcxParseResult;)V
    .locals 8

    .prologue
    .line 477
    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->children()Lorg/jsoup/select/Elements;

    move-result-object v0

    .line 479
    const-string v1, "EpubParser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parseNavMapRecursive: depth="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", \u5b50\u5143\u7d20\u6570="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/jsoup/select/Elements;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    invoke-virtual {v0}, Lorg/jsoup/select/Elements;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2e
    :goto_2e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_183

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/nodes/Element;

    .line 483
    invoke-virtual {v1}, Lorg/jsoup/nodes/Element;->tagName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "navPoint"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 488
    const-string v0, "navLabel text"

    invoke-virtual {v1, v0}, Lorg/jsoup/nodes/Element;->selectFirst(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v0

    .line 489
    if-eqz v0, :cond_128

    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->text()Ljava/lang/String;

    move-result-object v0

    .line 492
    :goto_52
    const-string v2, "content"

    invoke-virtual {v1, v2}, Lorg/jsoup/nodes/Element;->selectFirst(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v2

    .line 493
    if-eqz v2, :cond_12c

    const-string v3, "src"

    invoke-virtual {v2, v3}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 495
    :goto_60
    const-string v3, "EpubParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u89e3\u6790navPoint: id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "id"

    invoke-virtual {v1, v5}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", title="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", src="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", depth="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_11d

    .line 501
    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v4, v3, v4

    .line 509
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 512
    :try_start_b0
    invoke-virtual {v3}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;
    :try_end_b3
    .catch Ljava/lang/Exception; {:try_start_b0 .. :try_end_b3} :catch_130

    move-result-object v3

    .line 519
    :goto_b4
    invoke-virtual {p2, p3}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_137

    move-object v3, v4

    .line 536
    :goto_bb
    const-string v4, "\\"

    const-string v5, "/"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 539
    iget-object v4, p5, Lcom/bilibili/tv/ebook/parser/EpubParser$NcxParseResult;->depthMap:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_154

    .line 540
    iget-object v4, p5, Lcom/bilibili/tv/ebook/parser/EpubParser$NcxParseResult;->depthMap:Ljava/util/Map;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 541
    iget-object v4, p5, Lcom/bilibili/tv/ebook/parser/EpubParser$NcxParseResult;->titleMap:Ljava/util/Map;

    invoke-interface {v4, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 542
    const-string v4, "EpubParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u7ae0\u8282: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ", depth="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ", path="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", src="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", ncxDir="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 543
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 542
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    :cond_11d
    :goto_11d
    add-int/lit8 v4, p4, 0x1

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/bilibili/tv/ebook/parser/EpubParser;->parseNavMapRecursive(Lorg/jsoup/nodes/Element;Ljava/io/File;Ljava/io/File;ILcom/bilibili/tv/ebook/parser/EpubParser$NcxParseResult;)V

    goto/16 :goto_2e

    .line 489
    :cond_128
    const-string v0, "\u672a\u77e5\u7ae0\u8282"

    goto/16 :goto_52

    .line 493
    :cond_12c
    const-string v2, ""

    goto/16 :goto_60

    .line 513
    :catch_130
    move-exception v5

    .line 514
    invoke-virtual {v3}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v3

    goto/16 :goto_b4

    .line 524
    :cond_137
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 525
    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 527
    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_151

    .line 528
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_bb

    :cond_151
    move-object v3, v4

    .line 531
    goto/16 :goto_bb

    .line 545
    :cond_154
    const-string v0, "EpubParser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u8df3\u8fc7\u91cd\u590d\u8def\u5f84: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " (\u5df2\u5b58\u5728depth="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p5, Lcom/bilibili/tv/ebook/parser/EpubParser$NcxParseResult;->depthMap:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11d

    .line 552
    :cond_183
    return-void
.end method

.method private parseNcxFile(Ljava/util/Map;Ljava/io/File;Ljava/io/File;)Lcom/bilibili/tv/ebook/parser/EpubParser$NcxParseResult;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/bilibili/tv/ebook/parser/EpubParser$ManifestItem;",
            ">;",
            "Ljava/io/File;",
            "Ljava/io/File;",
            ")",
            "Lcom/bilibili/tv/ebook/parser/EpubParser$NcxParseResult;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 409
    new-instance v5, Lcom/bilibili/tv/ebook/parser/EpubParser$NcxParseResult;

    invoke-direct {v5, v1}, Lcom/bilibili/tv/ebook/parser/EpubParser$NcxParseResult;-><init>(Lcom/bilibili/tv/ebook/parser/EpubParser$1;)V

    .line 416
    :try_start_6
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ebook/parser/EpubParser$ManifestItem;

    .line 417
    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/parser/EpubParser$ManifestItem;->getMediaType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "application/x-dtbncx+xml"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_36

    .line 418
    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/parser/EpubParser$ManifestItem;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ncx"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 419
    :cond_36
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/parser/EpubParser$ManifestItem;->getHref()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, v1

    .line 425
    :goto_40
    if-eqz v0, :cond_48

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_59

    .line 426
    :cond_48
    new-instance v1, Lcom/bilibili/tv/ebook/parser/EpubParser$2;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ebook/parser/EpubParser$2;-><init>(Lcom/bilibili/tv/ebook/parser/EpubParser;)V

    invoke-virtual {p2, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v1

    .line 433
    if-eqz v1, :cond_59

    array-length v2, v1

    if-lez v2, :cond_59

    .line 434
    const/4 v0, 0x0

    aget-object v0, v1, v0

    .line 438
    :cond_59
    if-eqz v0, :cond_61

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_69

    .line 439
    :cond_61
    const-string v0, "EpubParser"

    const-string v1, "\u672a\u627e\u5230NCX\u6587\u4ef6\uff0c\u5c06\u4f7f\u7528\u6241\u5e73\u7ae0\u8282\u5217\u8868"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    :goto_68
    return-object v5

    .line 443
    :cond_69
    const-string v1, "EpubParser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u627e\u5230NCX\u6587\u4ef6: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    const-string v1, "UTF-8"

    const-string v2, ""

    new-instance v3, Lorg/jsoup/parser/Parser;

    new-instance v4, Lorg/jsoup/parser/XmlTreeBuilder;

    invoke-direct {v4}, Lorg/jsoup/parser/XmlTreeBuilder;-><init>()V

    invoke-direct {v3, v4}, Lorg/jsoup/parser/Parser;-><init>(Lorg/jsoup/parser/TreeBuilder;)V

    invoke-static {v0, v1, v2, v3}, Lorg/jsoup/Jsoup;->parse(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/parser/Parser;)Lorg/jsoup/nodes/Document;

    move-result-object v1

    .line 447
    const-string v2, "navMap"

    invoke-virtual {v1, v2}, Lorg/jsoup/nodes/Document;->selectFirst(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v1

    .line 449
    if-eqz v1, :cond_106

    .line 450
    const-string v2, "EpubParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u627e\u5230navMap\u5143\u7d20\uff0c\u5b50\u5143\u7d20\u6570: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lorg/jsoup/nodes/Element;->children()Lorg/jsoup/select/Elements;

    move-result-object v4

    invoke-virtual {v4}, Lorg/jsoup/select/Elements;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {p3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/bilibili/tv/ebook/parser/EpubParser;->parseNavMapRecursive(Lorg/jsoup/nodes/Element;Ljava/io/File;Ljava/io/File;ILcom/bilibili/tv/ebook/parser/EpubParser$NcxParseResult;)V

    .line 454
    const-string v0, "EpubParser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NCX\u89e3\u6790\u5b8c\u6210\uff0cdepthMap\u5927\u5c0f: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v5, Lcom/bilibili/tv/ebook/parser/EpubParser$NcxParseResult;->depthMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", titleMap\u5927\u5c0f: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v5, Lcom/bilibili/tv/ebook/parser/EpubParser$NcxParseResult;->titleMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_fa
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_fa} :catch_fc

    goto/16 :goto_68

    .line 459
    :catch_fc
    move-exception v0

    .line 460
    const-string v1, "EpubParser"

    const-string v2, "\u89e3\u6790NCX\u6587\u4ef6\u5931\u8d25"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_68

    .line 456
    :cond_106
    :try_start_106
    const-string v0, "EpubParser"

    const-string v1, "NCX\u6587\u4ef6\u4e2d\u6ca1\u6709\u627e\u5230navMap\u5143\u7d20"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10d
    .catch Ljava/lang/Exception; {:try_start_106 .. :try_end_10d} :catch_fc

    goto/16 :goto_68

    :cond_10f
    move-object v0, v1

    goto/16 :goto_40
.end method

.method private parseOpf(Ljava/io/File;Ljava/io/File;)Lcom/bilibili/tv/ebook/model/Book;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 194
    const-string v0, "UTF-8"

    invoke-static {p1, v0}, Lorg/jsoup/Jsoup;->parse(Ljava/io/File;Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    move-result-object v0

    .line 196
    new-instance v1, Lcom/bilibili/tv/ebook/model/Book;

    invoke-direct {v1}, Lcom/bilibili/tv/ebook/model/Book;-><init>()V

    .line 199
    invoke-direct {p0, v0, v1}, Lcom/bilibili/tv/ebook/parser/EpubParser;->parseMetadata(Lorg/jsoup/nodes/Document;Lcom/bilibili/tv/ebook/model/Book;)V

    .line 202
    invoke-direct {p0, v0}, Lcom/bilibili/tv/ebook/parser/EpubParser;->parseManifest(Lorg/jsoup/nodes/Document;)Ljava/util/Map;

    move-result-object v2

    .line 205
    invoke-direct {p0, v0, v2}, Lcom/bilibili/tv/ebook/parser/EpubParser;->parseSpine(Lorg/jsoup/nodes/Document;Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    .line 208
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    .line 209
    const-string v4, "EpubParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "OPF\u6587\u4ef6\u6240\u5728\u76ee\u5f55: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    invoke-direct {p0, v2, v3, p1}, Lcom/bilibili/tv/ebook/parser/EpubParser;->parseNcxFile(Ljava/util/Map;Ljava/io/File;Ljava/io/File;)Lcom/bilibili/tv/ebook/parser/EpubParser$NcxParseResult;

    move-result-object v4

    .line 215
    invoke-direct {p0, v2, v0, v3, v4}, Lcom/bilibili/tv/ebook/parser/EpubParser;->parseChapters(Ljava/util/Map;Ljava/util/List;Ljava/io/File;Lcom/bilibili/tv/ebook/parser/EpubParser$NcxParseResult;)Ljava/util/List;

    move-result-object v0

    .line 216
    invoke-virtual {v1, v0}, Lcom/bilibili/tv/ebook/model/Book;->setChapters(Ljava/util/List;)V

    .line 218
    return-object v1
.end method

.method private parseSpine(Lorg/jsoup/nodes/Document;Ljava/util/Map;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jsoup/nodes/Document;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/bilibili/tv/ebook/parser/EpubParser$ManifestItem;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 380
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 381
    const-string v0, "spine itemref"

    invoke-virtual {p1, v0}, Lorg/jsoup/nodes/Document;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v0

    .line 383
    invoke-virtual {v0}, Lorg/jsoup/select/Elements;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_f
    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/Element;

    .line 384
    const-string v3, "idref"

    invoke-virtual {v0, v3}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 385
    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 386
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 390
    :cond_2b
    const-string v0, "EpubParser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Spine\u9879\u6570: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    return-object v1
.end method

.method private saveMetadataToCache(Lcom/bilibili/tv/ebook/model/Book;Ljava/io/File;)V
    .locals 8

    .prologue
    .line 736
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v0, "metadata.json"

    invoke-direct {v1, p2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 738
    const-string v0, "EpubParser"

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

    .line 741
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 742
    const-string v0, "bookId"

    invoke-virtual {p1}, Lcom/bilibili/tv/ebook/model/Book;->getBookId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 743
    const-string v0, "title"

    invoke-virtual {p1}, Lcom/bilibili/tv/ebook/model/Book;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 744
    const-string v0, "author"

    invoke-virtual {p1}, Lcom/bilibili/tv/ebook/model/Book;->getAuthor()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 745
    const-string v0, "language"

    invoke-virtual {p1}, Lcom/bilibili/tv/ebook/model/Book;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 746
    const-string v0, "extractionPath"

    invoke-virtual {p1}, Lcom/bilibili/tv/ebook/model/Book;->getExtractionPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 749
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 750
    invoke-virtual {p1}, Lcom/bilibili/tv/ebook/model/Book;->getChapters()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_bc

    .line 751
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

    .line 752
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 753
    const-string v6, "chapterId"

    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/model/Chapter;->getChapterId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 754
    const-string v6, "chapterIndex"

    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/model/Chapter;->getChapterIndex()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 755
    const-string v6, "title"

    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/model/Chapter;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 756
    const-string v6, "htmlFilePath"

    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/model/Chapter;->getHtmlFilePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 757
    const-string v6, "baseUrl"

    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/model/Chapter;->getBaseUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 758
    const-string v6, "depth"

    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/model/Chapter;->getDepth()I

    move-result v0

    invoke-virtual {v5, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 760
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_b2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b2} :catch_b3

    goto :goto_68

    .line 776
    :catch_b3
    move-exception v0

    .line 777
    const-string v1, "EpubParser"

    const-string v2, "\u4fdd\u5b58\u5143\u6570\u636e\u7f13\u5b58\u5931\u8d25"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 779
    :goto_bb
    return-void

    .line 763
    :cond_bc
    :try_start_bc
    const-string v0, "chapters"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 766
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 767
    new-instance v3, Ljava/io/OutputStreamWriter;

    const-string v4, "UTF-8"

    invoke-direct {v3, v0, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 768
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 769
    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->flush()V

    .line 770
    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->close()V

    .line 771
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 773
    const-string v0, "EpubParser"

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

    .line 774
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 773
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10d
    .catch Ljava/lang/Exception; {:try_start_bc .. :try_end_10d} :catch_b3

    goto :goto_bb
.end method

.method private unzipEpub(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 103
    new-instance v1, Ljava/io/File;

    iget-object v0, p0, Lcom/bilibili/tv/ebook/parser/EpubParser;->cacheDir:Ljava/io/File;

    invoke-direct {v1, v0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 106
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 107
    const-string v0, "EpubParser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u4f7f\u7528\u5df2\u7f13\u5b58\u7684\u89e3\u538b\u76ee\u5f55: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 144
    :goto_2a
    return-object v0

    .line 111
    :cond_2b
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 113
    const/4 v3, 0x0

    .line 115
    :try_start_2f
    new-instance v2, Ljava/util/zip/ZipFile;

    invoke-direct {v2, p1}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_34
    .catchall {:try_start_2f .. :try_end_34} :catchall_a8

    .line 116
    :try_start_34
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v3

    .line 118
    :goto_38
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_85

    .line 119
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/zip/ZipEntry;

    .line 120
    new-instance v4, Ljava/io/File;

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 122
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_5f

    .line 123
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z
    :try_end_56
    .catchall {:try_start_34 .. :try_end_56} :catchall_57

    goto :goto_38

    .line 147
    :catchall_57
    move-exception v0

    move-object v1, v2

    :goto_59
    if-eqz v1, :cond_5e

    .line 148
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V

    .line 150
    :cond_5e
    throw v0

    .line 126
    :cond_5f
    :try_start_5f
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 129
    invoke-virtual {v2, v0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v0

    .line 130
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 132
    const/16 v4, 0x2000

    new-array v4, v4, [B

    .line 134
    :goto_73
    invoke-virtual {v0, v4}, Ljava/io/InputStream;->read([B)I

    move-result v6

    if-lez v6, :cond_7e

    .line 135
    const/4 v7, 0x0

    invoke-virtual {v5, v4, v7, v6}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_73

    .line 138
    :cond_7e
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 139
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    goto :goto_38

    .line 143
    :cond_85
    const-string v0, "EpubParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EPUB\u89e3\u538b\u5b8c\u6210: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a1
    .catchall {:try_start_5f .. :try_end_a1} :catchall_57

    .line 147
    if-eqz v2, :cond_a6

    .line 148
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V

    :cond_a6
    move-object v0, v1

    .line 144
    goto :goto_2a

    .line 147
    :catchall_a8
    move-exception v0

    move-object v1, v3

    goto :goto_59
.end method


# virtual methods
.method public parse(Ljava/lang/String;Ljava/lang/String;)Lcom/bilibili/tv/ebook/model/Book;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 50
    :try_start_1
    const-string v1, "EpubParser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5f00\u59cb\u89e3\u6790EPUB\u6587\u4ef6: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/bilibili/tv/ebook/parser/EpubParser;->unzipEpub(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 54
    if-nez v2, :cond_27

    .line 55
    const-string v1, "EpubParser"

    const-string v2, "\u89e3\u538bEPUB\u6587\u4ef6\u5931\u8d25"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :goto_26
    return-object v0

    .line 60
    :cond_27
    invoke-direct {p0, v2}, Lcom/bilibili/tv/ebook/parser/EpubParser;->loadMetadataFromCache(Ljava/io/File;)Lcom/bilibili/tv/ebook/model/Book;

    move-result-object v1

    .line 61
    if-eqz v1, :cond_5d

    .line 62
    const-string v2, "EpubParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u4f7f\u7528\u7f13\u5b58\u7684\u5143\u6570\u636e\uff0c\u8df3\u8fc7HTML\u89e3\u6790: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/bilibili/tv/ebook/model/Book;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", \u7ae0\u8282\u6570: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 63
    invoke-virtual {v1}, Lcom/bilibili/tv/ebook/model/Book;->getChapters()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 62
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 64
    goto :goto_26

    .line 68
    :cond_5d
    invoke-direct {p0, v2}, Lcom/bilibili/tv/ebook/parser/EpubParser;->findOpfFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    .line 69
    if-nez v1, :cond_85

    .line 70
    const-string v1, "EpubParser"

    const-string v2, "\u672a\u627e\u5230OPF\u6587\u4ef6"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6a} :catch_6b

    goto :goto_26

    .line 93
    :catch_6b
    move-exception v1

    .line 94
    const-string v2, "EpubParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u89e3\u6790EPUB\u6587\u4ef6\u5931\u8d25: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_26

    .line 75
    :cond_85
    :try_start_85
    invoke-direct {p0, v1, v2}, Lcom/bilibili/tv/ebook/parser/EpubParser;->parseOpf(Ljava/io/File;Ljava/io/File;)Lcom/bilibili/tv/ebook/model/Book;

    move-result-object v1

    .line 76
    if-nez v1, :cond_93

    .line 77
    const-string v1, "EpubParser"

    const-string v2, "\u89e3\u6790OPF\u6587\u4ef6\u5931\u8d25"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26

    .line 82
    :cond_93
    invoke-virtual {v1, p2}, Lcom/bilibili/tv/ebook/model/Book;->setBookId(Ljava/lang/String;)V

    .line 83
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/bilibili/tv/ebook/model/Book;->setExtractionPath(Ljava/lang/String;)V

    .line 86
    invoke-direct {p0, v1, v2}, Lcom/bilibili/tv/ebook/parser/EpubParser;->saveMetadataToCache(Lcom/bilibili/tv/ebook/model/Book;Ljava/io/File;)V

    .line 88
    const-string v2, "EpubParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EPUB\u89e3\u6790\u6210\u529f: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/bilibili/tv/ebook/model/Book;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", \u7ae0\u8282\u6570: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 89
    invoke-virtual {v1}, Lcom/bilibili/tv/ebook/model/Book;->getChapters()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 88
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ce
    .catch Ljava/lang/Exception; {:try_start_85 .. :try_end_ce} :catch_6b

    move-object v0, v1

    .line 91
    goto/16 :goto_26
.end method
