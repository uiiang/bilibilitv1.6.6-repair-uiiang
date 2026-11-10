.class public Lcom/bilibili/tv/ebook/parser/EpubParser;
.super Ljava/lang/Object;
.source "EpubParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bilibili/tv/ebook/parser/EpubParser$NcxParseResult;,
        Lcom/bilibili/tv/ebook/parser/EpubParser$ManifestItem;
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
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/bilibili/tv/ebook/parser/EpubParser;->context:Landroid/content/Context;

    .line 37
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "epub_cache"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bilibili/tv/ebook/parser/EpubParser;->cacheDir:Ljava/io/File;

    .line 38
    iget-object v0, p0, Lcom/bilibili/tv/ebook/parser/EpubParser;->cacheDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 39
    iget-object v0, p0, Lcom/bilibili/tv/ebook/parser/EpubParser;->cacheDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 41
    :cond_1f
    return-void
.end method

.method private static decodeHrefPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    const/16 v6, 0x25

    .line 980
    if-eqz p0, :cond_a

    invoke-virtual {p0, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_b

    .line 1000
    :cond_a
    :goto_a
    return-object p0

    .line 984
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 985
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 986
    const/4 v0, 0x0

    .line 987
    :goto_1a
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_63

    .line 988
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 989
    if-ne v3, v6, :cond_5a

    add-int/lit8 v4, v0, 0x2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_5a

    add-int/lit8 v4, v0, 0x1

    .line 990
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/bilibili/tv/ebook/parser/EpubParser;->isHexDigit(C)Z

    move-result v4

    if-eqz v4, :cond_5a

    add-int/lit8 v4, v0, 0x2

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/bilibili/tv/ebook/parser/EpubParser;->isHexDigit(C)Z

    move-result v4

    if-eqz v4, :cond_5a

    .line 991
    add-int/lit8 v3, v0, 0x1

    add-int/lit8 v4, v0, 0x3

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 992
    add-int/lit8 v0, v0, 0x3

    goto :goto_1a

    .line 994
    :cond_5a
    invoke-static {v2, v1}, Lcom/bilibili/tv/ebook/parser/EpubParser;->flushDecodedBytes(Ljava/io/ByteArrayOutputStream;Ljava/lang/StringBuilder;)V

    .line 995
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 996
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .line 999
    :cond_63
    invoke-static {v2, v1}, Lcom/bilibili/tv/ebook/parser/EpubParser;->flushDecodedBytes(Ljava/io/ByteArrayOutputStream;Ljava/lang/StringBuilder;)V

    .line 1000
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_a
.end method

.method private deleteRecursively(Ljava/io/File;)V
    .locals 4

    .prologue
    .line 224
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_9

    .line 238
    :cond_8
    :goto_8
    return-void

    .line 227
    :cond_9
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 228
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 229
    if-eqz v1, :cond_21

    .line 230
    array-length v2, v1

    const/4 v0, 0x0

    :goto_17
    if-ge v0, v2, :cond_21

    aget-object v3, v1, v0

    .line 231
    invoke-direct {p0, v3}, Lcom/bilibili/tv/ebook/parser/EpubParser;->deleteRecursively(Ljava/io/File;)V

    .line 230
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 235
    :cond_21
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_8

    .line 236
    const-string v0, "EpubParser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5220\u9664\u6587\u4ef6\u5931\u8d25: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8
.end method

.method private findFileRecursively(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 939
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_8

    .line 962
    :cond_7
    :goto_7
    return-object v0

    .line 944
    :cond_8
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 945
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_15

    move-object v0, v1

    .line 946
    goto :goto_7

    .line 950
    :cond_15
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 951
    if-eqz v3, :cond_7

    .line 952
    array-length v4, v3

    const/4 v1, 0x0

    move v2, v1

    :goto_1e
    if-ge v2, v4, :cond_7

    aget-object v1, v3, v2

    .line 953
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_30

    .line 954
    invoke-direct {p0, v1, p2}, Lcom/bilibili/tv/ebook/parser/EpubParser;->findFileRecursively(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 955
    if-eqz v1, :cond_30

    move-object v0, v1

    .line 956
    goto :goto_7

    .line 952
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

    .line 245
    new-instance v0, Ljava/io/File;

    const-string v1, "META-INF/container.xml"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 247
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 248
    invoke-static {v0}, Lcom/bilibili/tv/ebook/util/EbookUtils;->detectFileEncoding(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/jsoup/Jsoup;->parse(Ljava/io/File;Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    move-result-object v0

    .line 250
    const-string v1, "*|rootfile"

    invoke-virtual {v0, v1}, Lorg/jsoup/nodes/Document;->selectFirst(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v0

    .line 252
    if-eqz v0, :cond_4c

    .line 253
    const-string v1, "full-path"

    invoke-virtual {v0, v1}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 255
    new-instance v0, Ljava/io/File;

    invoke-static {v1}, Lcom/bilibili/tv/ebook/parser/EpubParser;->decodeHrefPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 256
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 257
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

    .line 273
    :goto_4b
    return-object v0

    .line 264
    :cond_4c
    new-instance v0, Lcom/bilibili/tv/ebook/parser/EpubParser$1;

    invoke-direct {v0, p0}, Lcom/bilibili/tv/ebook/parser/EpubParser$1;-><init>(Lcom/bilibili/tv/ebook/parser/EpubParser;)V

    invoke-virtual {p1, v0}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    .line 271
    if-eqz v0, :cond_7b

    array-length v1, v0

    if-lez v1, :cond_7b

    .line 272
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

    .line 273
    aget-object v0, v0, v4

    goto :goto_4b

    .line 276
    :cond_7b
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "OPF file not found"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static flushDecodedBytes(Ljava/io/ByteArrayOutputStream;Ljava/lang/StringBuilder;)V
    .locals 3

    .prologue
    .line 1004
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    if-nez v0, :cond_7

    .line 1013
    :goto_6
    return-void

    .line 1008
    :cond_7
    :try_start_7
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_15
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_7 .. :try_end_15} :catch_19

    .line 1012
    :goto_15
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->reset()V

    goto :goto_6

    .line 1009
    :catch_19
    move-exception v0

    goto :goto_15
.end method

.method private isExtractionValid(Ljava/io/File;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 209
    new-instance v2, Ljava/io/File;

    const-string v3, "metadata.json"

    invoke-direct {v2, p1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 216
    :cond_f
    :goto_f
    return v0

    .line 214
    :cond_10
    :try_start_10
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ebook/parser/EpubParser;->findOpfFile(Ljava/io/File;)Ljava/io/File;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_13} :catch_18

    move-result-object v2

    if-nez v2, :cond_f

    move v0, v1

    goto :goto_f

    .line 215
    :catch_18
    move-exception v0

    move v0, v1

    .line 216
    goto :goto_f
.end method

.method private static isHexDigit(C)Z
    .locals 1

    .prologue
    .line 1016
    const/16 v0, 0x30

    if-lt p0, v0, :cond_8

    const/16 v0, 0x39

    if-le p0, v0, :cond_18

    :cond_8
    const/16 v0, 0x61

    if-lt p0, v0, :cond_10

    const/16 v0, 0x66

    if-le p0, v0, :cond_18

    :cond_10
    const/16 v0, 0x41

    if-lt p0, v0, :cond_1a

    const/16 v0, 0x46

    if-gt p0, v0, :cond_1a

    :cond_18
    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method private static isHtmlItem(Lcom/bilibili/tv/ebook/parser/EpubParser$ManifestItem;)Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1024
    invoke-virtual {p0}, Lcom/bilibili/tv/ebook/parser/EpubParser$ManifestItem;->getMediaType()Ljava/lang/String;

    move-result-object v0

    .line 1025
    if-eqz v0, :cond_15

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v3, "html"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1038
    :goto_14
    return v2

    .line 1028
    :cond_15
    invoke-virtual {p0}, Lcom/bilibili/tv/ebook/parser/EpubParser$ManifestItem;->getHref()Ljava/lang/String;

    move-result-object v0

    .line 1029
    if-eqz v0, :cond_50

    .line 1030
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 1031
    const/16 v3, 0x3f

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 1032
    if-ltz v3, :cond_2b

    .line 1033
    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1035
    :cond_2b
    const-string v3, ".xhtml"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4b

    const-string v3, ".xht"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4b

    const-string v3, ".html"

    .line 1036
    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4b

    const-string v3, ".htm"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4e

    :cond_4b
    move v0, v2

    :goto_4c
    move v2, v0

    .line 1035
    goto :goto_14

    :cond_4e
    move v0, v1

    .line 1036
    goto :goto_4c

    :cond_50
    move v2, v1

    .line 1038
    goto :goto_14
.end method

.method private loadMetadataFromCache(Ljava/io/File;)Lcom/bilibili/tv/ebook/model/Book;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 775
    :try_start_1
    new-instance v1, Ljava/io/File;

    const-string v2, "metadata.json"

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 776
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2b

    .line 777
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

    .line 814
    :goto_2a
    return-object v0

    .line 781
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
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_47} :catch_73

    .line 787
    :try_start_47
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_4c
    .catchall {:try_start_47 .. :try_end_4c} :catchall_109

    .line 788
    :try_start_4c
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    const-string v4, "UTF-8"

    invoke-direct {v1, v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v2, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_58
    .catchall {:try_start_4c .. :try_end_58} :catchall_10e

    .line 789
    :try_start_58
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 791
    :goto_5d
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_7c

    .line 792
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_66
    .catchall {:try_start_58 .. :try_end_66} :catchall_67

    goto :goto_5d

    .line 796
    :catchall_67
    move-exception v1

    :goto_68
    if-eqz v2, :cond_6d

    .line 798
    :try_start_6a
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_6d} :catch_cc

    .line 803
    :cond_6d
    :goto_6d
    if-eqz v3, :cond_72

    .line 805
    :try_start_6f
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_72} :catch_ea

    .line 810
    :cond_72
    :goto_72
    :try_start_72
    throw v1
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_73} :catch_73

    .line 812
    :catch_73
    move-exception v1

    .line 813
    const-string v2, "EpubParser"

    const-string v3, "\u52a0\u8f7d\u7f13\u5b58\u5143\u6570\u636e\u5931\u8d25"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2a

    .line 794
    :cond_7c
    :try_start_7c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/bilibili/tv/ebook/parser/EpubParser;->parseMetadataJson(Ljava/lang/String;)Lcom/bilibili/tv/ebook/model/Book;
    :try_end_83
    .catchall {:try_start_7c .. :try_end_83} :catchall_67

    move-result-object v1

    .line 796
    if-eqz v2, :cond_89

    .line 798
    :try_start_86
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_89} :catch_90

    .line 803
    :cond_89
    :goto_89
    if-eqz v3, :cond_8e

    .line 805
    :try_start_8b
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_8b .. :try_end_8e} :catch_ae

    :cond_8e
    :goto_8e
    move-object v0, v1

    .line 794
    goto :goto_2a

    .line 799
    :catch_90
    move-exception v2

    .line 800
    :try_start_91
    const-string v4, "EpubParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u5173\u95edreader\u5931\u8d25: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_89

    .line 806
    :catch_ae
    move-exception v2

    .line 807
    const-string v3, "EpubParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u5173\u95edfis\u5931\u8d25: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8e

    .line 799
    :catch_cc
    move-exception v2

    .line 800
    const-string v4, "EpubParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u5173\u95edreader\u5931\u8d25: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6d

    .line 806
    :catch_ea
    move-exception v2

    .line 807
    const-string v3, "EpubParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u5173\u95edfis\u5931\u8d25: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_107
    .catch Ljava/lang/Exception; {:try_start_91 .. :try_end_107} :catch_73

    goto/16 :goto_72

    .line 796
    :catchall_109
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    goto/16 :goto_68

    :catchall_10e
    move-exception v1

    move-object v2, v0

    goto/16 :goto_68
.end method

.method private static localNameOf(Lorg/jsoup/nodes/Element;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 970
    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->tagName()Ljava/lang/String;

    move-result-object v0

    .line 971
    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 972
    if-ltz v1, :cond_12

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_12
    return-object v0
.end method

.method private parseChapter(Lcom/bilibili/tv/ebook/parser/EpubParser$ManifestItem;ILjava/io/File;Lcom/bilibili/tv/ebook/parser/EpubParser$NcxParseResult;)Lcom/bilibili/tv/ebook/model/Chapter;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 689
    invoke-virtual {p1}, Lcom/bilibili/tv/ebook/parser/EpubParser$ManifestItem;->getHref()Ljava/lang/String;

    move-result-object v2

    .line 692
    invoke-static {v2}, Lcom/bilibili/tv/ebook/parser/EpubParser;->decodeHrefPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 693
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p3, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 694
    const-string v1, "EpubParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u89e3\u6790\u7ae0\u8282\u6587\u4ef6: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (href="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    invoke-static {v0}, Lcom/bilibili/tv/ebook/util/EbookUtils;->detectFileEncoding(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/jsoup/Jsoup;->parse(Ljava/io/File;Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    move-result-object v4

    .line 699
    new-instance v5, Lcom/bilibili/tv/ebook/model/Chapter;

    invoke-direct {v5}, Lcom/bilibili/tv/ebook/model/Chapter;-><init>()V

    .line 700
    invoke-virtual {p1}, Lcom/bilibili/tv/ebook/parser/EpubParser$ManifestItem;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/bilibili/tv/ebook/model/Chapter;->setChapterId(Ljava/lang/String;)V

    .line 701
    invoke-virtual {v5, p2}, Lcom/bilibili/tv/ebook/model/Chapter;->setChapterIndex(I)V

    .line 702
    invoke-virtual {v5, v3}, Lcom/bilibili/tv/ebook/model/Chapter;->setHtmlFilePath(Ljava/lang/String;)V

    .line 703
    invoke-virtual {v4}, Lorg/jsoup/nodes/Document;->outerHtml()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/bilibili/tv/ebook/model/Chapter;->setHtmlContent(Ljava/lang/String;)V

    .line 704
    invoke-virtual {v4}, Lorg/jsoup/nodes/Document;->text()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/bilibili/tv/ebook/model/Chapter;->setPlainTextContent(Ljava/lang/String;)V

    .line 708
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 709
    if-eqz v0, :cond_9f

    .line 710
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "file://"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    .line 711
    invoke-virtual {v5, v0}, Lcom/bilibili/tv/ebook/model/Chapter;->setBaseUrl(Ljava/lang/String;)V

    .line 712
    const-string v1, "EpubParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u8bbe\u7f6ebaseUrl: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    :cond_9f
    const/4 v0, 0x0

    .line 717
    if-eqz p4, :cond_de

    iget-object v1, p4, Lcom/bilibili/tv/ebook/parser/EpubParser$NcxParseResult;->titleMap:Ljava/util/Map;

    if-eqz v1, :cond_de

    .line 719
    iget-object v0, p4, Lcom/bilibili/tv/ebook/parser/EpubParser$NcxParseResult;->titleMap:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 720
    if-nez v0, :cond_252

    .line 721
    iget-object v0, p4, Lcom/bilibili/tv/ebook/parser/EpubParser$NcxParseResult;->titleMap:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    .line 723
    :goto_b9
    if-eqz v1, :cond_18c

    .line 724
    const-string v0, "EpubParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u4eceNCX\u83b7\u53d6\u6807\u9898: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", href="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 735
    :cond_de
    :goto_de
    if-eqz v0, :cond_e6

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_114

    .line 736
    :cond_e6
    const-string v0, "title"

    invoke-virtual {v4, v0}, Lorg/jsoup/nodes/Document;->selectFirst(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v0

    .line 737
    if-eqz v0, :cond_1f5

    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->text()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1f5

    .line 738
    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->text()Ljava/lang/String;

    move-result-object v0

    .line 739
    const-string v1, "EpubParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u4eceHTML\u83b7\u53d6\u6807\u9898: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    :cond_114
    :goto_114
    invoke-virtual {v5, v0}, Lcom/bilibili/tv/ebook/model/Chapter;->setTitle(Ljava/lang/String;)V

    .line 749
    const/4 v1, 0x0

    .line 750
    if-eqz p4, :cond_24c

    iget-object v0, p4, Lcom/bilibili/tv/ebook/parser/EpubParser$NcxParseResult;->depthMap:Ljava/util/Map;

    if-eqz v0, :cond_24c

    .line 751
    iget-object v0, p4, Lcom/bilibili/tv/ebook/parser/EpubParser$NcxParseResult;->depthMap:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 752
    if-nez v0, :cond_130

    .line 753
    iget-object v0, p4, Lcom/bilibili/tv/ebook/parser/EpubParser$NcxParseResult;->depthMap:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 755
    :cond_130
    if-eqz v0, :cond_224

    .line 756
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 757
    const-string v1, "EpubParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u4eceNCX\u83b7\u53d6depth: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", href="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    :goto_158
    invoke-virtual {v5, v0}, Lcom/bilibili/tv/ebook/model/Chapter;->setDepth(I)V

    .line 764
    const-string v1, "EpubParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u7ae0\u8282\u89e3\u6790\u5b8c\u6210: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v5}, Lcom/bilibili/tv/ebook/model/Chapter;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", depth="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    .line 766
    return-object v5

    .line 726
    :cond_18c
    const-string v0, "EpubParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "NCX titleMap\u4e2d\u672a\u627e\u5230href="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", titleMap\u5927\u5c0f="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p4, Lcom/bilibili/tv/ebook/parser/EpubParser$NcxParseResult;->titleMap:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    iget-object v0, p4, Lcom/bilibili/tv/ebook/parser/EpubParser$NcxParseResult;->titleMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1be
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 729
    const-string v7, "EpubParser"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "titleMap key: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " -> "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p4, Lcom/bilibili/tv/ebook/parser/EpubParser$NcxParseResult;->titleMap:Ljava/util/Map;

    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1be

    .line 741
    :cond_1f5
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

    .line 742
    const-string v1, "EpubParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u4f7f\u7528\u9ed8\u8ba4\u6807\u9898: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_114

    .line 759
    :cond_224
    const-string v0, "EpubParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NCX depthMap\u4e2d\u672a\u627e\u5230href="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", depthMap\u5927\u5c0f="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p4, Lcom/bilibili/tv/ebook/parser/EpubParser$NcxParseResult;->depthMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_24c
    move v0, v1

    goto/16 :goto_158

    :cond_24f
    move-object v0, v1

    goto/16 :goto_de

    :cond_252
    move-object v1, v0

    goto/16 :goto_b9
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
    .line 659
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 660
    const/4 v0, 0x0

    .line 662
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v0

    :goto_b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 663
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bilibili/tv/ebook/parser/EpubParser$ManifestItem;

    .line 664
    if-eqz v1, :cond_4a

    invoke-static {v1}, Lcom/bilibili/tv/ebook/parser/EpubParser;->isHtmlItem(Lcom/bilibili/tv/ebook/parser/EpubParser$ManifestItem;)Z

    move-result v5

    if-eqz v5, :cond_4a

    .line 666
    :try_start_25
    invoke-direct {p0, v1, v2, p3, p4}, Lcom/bilibili/tv/ebook/parser/EpubParser;->parseChapter(Lcom/bilibili/tv/ebook/parser/EpubParser$ManifestItem;ILjava/io/File;Lcom/bilibili/tv/ebook/parser/EpubParser$NcxParseResult;)Lcom/bilibili/tv/ebook/model/Chapter;

    move-result-object v1

    .line 667
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_2c} :catch_31

    .line 668
    add-int/lit8 v2, v2, 0x1

    move v0, v2

    :goto_2f
    move v2, v0

    .line 673
    goto :goto_b

    .line 669
    :catch_31
    move-exception v1

    .line 670
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

    :cond_4a
    move v0, v2

    goto :goto_2f

    .line 675
    :cond_4c
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

    .line 676
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
    .line 441
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 444
    const-string v0, "*|manifest *|item"

    invoke-virtual {p1, v0}, Lorg/jsoup/nodes/Document;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v0

    .line 446
    invoke-virtual {v0}, Lorg/jsoup/select/Elements;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/Element;

    .line 447
    const-string v3, "id"

    invoke-virtual {v0, v3}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 448
    const-string v4, "href"

    invoke-virtual {v0, v4}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 449
    const-string v5, "media-type"

    invoke-virtual {v0, v5}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 451
    new-instance v5, Lcom/bilibili/tv/ebook/parser/EpubParser$ManifestItem;

    invoke-direct {v5, v3, v4, v0}, Lcom/bilibili/tv/ebook/parser/EpubParser$ManifestItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f

    .line 454
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

    .line 455
    return-object v1
.end method

.method private parseMetadata(Lorg/jsoup/nodes/Document;Lcom/bilibili/tv/ebook/model/Book;)V
    .locals 6

    .prologue
    .line 317
    const-string v0, "*|metadata"

    invoke-virtual {p1, v0}, Lorg/jsoup/nodes/Document;->selectFirst(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v2

    .line 318
    if-eqz v2, :cond_1e6

    .line 319
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

    .line 332
    :cond_24
    const-string v0, "*|metadata *|title"

    invoke-virtual {p1, v0}, Lorg/jsoup/nodes/Document;->selectFirst(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v1

    .line 333
    if-nez v1, :cond_32

    .line 335
    const-string v0, "dc|title"

    invoke-virtual {p1, v0}, Lorg/jsoup/nodes/Document;->selectFirst(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v1

    .line 337
    :cond_32
    if-nez v1, :cond_275

    .line 339
    if-eqz v2, :cond_275

    .line 340
    invoke-virtual {v2}, Lorg/jsoup/nodes/Element;->children()Lorg/jsoup/select/Elements;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/select/Elements;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_275

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/Element;

    .line 341
    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->tagName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 342
    const-string v5, "title"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_62

    const-string v5, ":title"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3e

    .line 344
    :cond_62
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

    .line 350
    :goto_7e
    if-nez v0, :cond_86

    .line 352
    const-string v0, "*[property~=title]"

    invoke-virtual {p1, v0}, Lorg/jsoup/nodes/Document;->selectFirst(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v0

    .line 355
    :cond_86
    if-eqz v0, :cond_23e

    .line 356
    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->text()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 357
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_230

    .line 358
    invoke-virtual {p2, v1}, Lcom/bilibili/tv/ebook/model/Book;->setTitle(Ljava/lang/String;)V

    .line 359
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

    .line 373
    :goto_c5
    const-string v0, "*|metadata *|creator"

    invoke-virtual {p1, v0}, Lorg/jsoup/nodes/Document;->selectFirst(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v1

    .line 374
    if-nez v1, :cond_d3

    .line 376
    const-string v0, "dc|creator"

    invoke-virtual {p1, v0}, Lorg/jsoup/nodes/Document;->selectFirst(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v1

    .line 378
    :cond_d3
    if-nez v1, :cond_272

    .line 380
    if-eqz v2, :cond_272

    .line 381
    invoke-virtual {v2}, Lorg/jsoup/nodes/Element;->children()Lorg/jsoup/select/Elements;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/select/Elements;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_df
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_272

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/Element;

    .line 382
    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->tagName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 383
    const-string v5, "creator"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_103

    const-string v5, ":creator"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_df

    .line 385
    :cond_103
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

    .line 391
    :goto_11f
    if-nez v0, :cond_127

    .line 393
    const-string v0, "*[property~=creator]"

    invoke-virtual {p1, v0}, Lorg/jsoup/nodes/Document;->selectFirst(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v0

    .line 396
    :cond_127
    if-eqz v0, :cond_25a

    .line 397
    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->text()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 398
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_24c

    .line 399
    invoke-virtual {p2, v1}, Lcom/bilibili/tv/ebook/model/Book;->setAuthor(Ljava/lang/String;)V

    .line 400
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

    .line 411
    :goto_166
    const-string v0, "*|metadata *|language"

    invoke-virtual {p1, v0}, Lorg/jsoup/nodes/Document;->selectFirst(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v1

    .line 412
    if-nez v1, :cond_174

    .line 413
    const-string v0, "dc|language"

    invoke-virtual {p1, v0}, Lorg/jsoup/nodes/Document;->selectFirst(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v1

    .line 415
    :cond_174
    if-nez v1, :cond_26f

    .line 417
    if-eqz v2, :cond_26f

    .line 418
    invoke-virtual {v2}, Lorg/jsoup/nodes/Element;->children()Lorg/jsoup/select/Elements;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/select/Elements;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_180
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/Element;

    .line 419
    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->tagName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 420
    const-string v4, "language"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1a4

    const-string v4, ":language"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_180

    .line 427
    :cond_1a4
    :goto_1a4
    if-eqz v0, :cond_268

    .line 428
    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->text()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/bilibili/tv/ebook/model/Book;->setLanguage(Ljava/lang/String;)V

    .line 433
    :goto_1ad
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

    .line 434
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

    .line 433
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    return-void

    .line 321
    :cond_1e6
    const-string v0, "EpubParser"

    const-string v1, "\u672a\u627e\u5230metadata\u5143\u7d20\uff0c\u5c1d\u8bd5\u67e5\u627e\u6839\u5143\u7d20\u4e0b\u7684\u6240\u6709\u5143\u7d20"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    invoke-virtual {p1}, Lorg/jsoup/nodes/Document;->children()Lorg/jsoup/select/Elements;

    move-result-object v0

    .line 323
    invoke-virtual {v0}, Lorg/jsoup/select/Elements;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1f5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/Element;

    .line 324
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

    goto :goto_1f5

    .line 361
    :cond_230
    const-string v0, "EpubParser"

    const-string v1, "title\u5143\u7d20\u5185\u5bb9\u4e3a\u7a7a"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    const-string v0, "Unknown Title"

    invoke-virtual {p2, v0}, Lcom/bilibili/tv/ebook/model/Book;->setTitle(Ljava/lang/String;)V

    goto/16 :goto_c5

    .line 365
    :cond_23e
    const-string v0, "Unknown Title"

    invoke-virtual {p2, v0}, Lcom/bilibili/tv/ebook/model/Book;->setTitle(Ljava/lang/String;)V

    .line 366
    const-string v0, "EpubParser"

    const-string v1, "\u672a\u627e\u5230\u4e66\u7c4d\u6807\u9898\u5143\u6570\u636e"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c5

    .line 402
    :cond_24c
    const-string v0, "EpubParser"

    const-string v1, "creator\u5143\u7d20\u5185\u5bb9\u4e3a\u7a7a"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    const-string v0, "Unknown Author"

    invoke-virtual {p2, v0}, Lcom/bilibili/tv/ebook/model/Book;->setAuthor(Ljava/lang/String;)V

    goto/16 :goto_166

    .line 406
    :cond_25a
    const-string v0, "Unknown Author"

    invoke-virtual {p2, v0}, Lcom/bilibili/tv/ebook/model/Book;->setAuthor(Ljava/lang/String;)V

    .line 407
    const-string v0, "EpubParser"

    const-string v1, "\u672a\u627e\u5230\u4f5c\u8005\u5143\u6570\u636e"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_166

    .line 430
    :cond_268
    const-string v0, "en"

    invoke-virtual {p2, v0}, Lcom/bilibili/tv/ebook/model/Book;->setLanguage(Ljava/lang/String;)V

    goto/16 :goto_1ad

    :cond_26f
    move-object v0, v1

    goto/16 :goto_1a4

    :cond_272
    move-object v0, v1

    goto/16 :goto_11f

    :cond_275
    move-object v0, v1

    goto/16 :goto_7e
.end method

.method private parseMetadataJson(Ljava/lang/String;)Lcom/bilibili/tv/ebook/model/Book;
    .locals 7

    .prologue
    .line 824
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 826
    new-instance v0, Lcom/bilibili/tv/ebook/model/Book;

    invoke-direct {v0}, Lcom/bilibili/tv/ebook/model/Book;-><init>()V

    .line 827
    const-string v2, "bookId"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/ebook/model/Book;->setBookId(Ljava/lang/String;)V

    .line 828
    const-string v2, "title"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/ebook/model/Book;->setTitle(Ljava/lang/String;)V

    .line 829
    const-string v2, "author"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/ebook/model/Book;->setAuthor(Ljava/lang/String;)V

    .line 830
    const-string v2, "language"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/ebook/model/Book;->setLanguage(Ljava/lang/String;)V

    .line 831
    const-string v2, "extractionPath"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/ebook/model/Book;->setExtractionPath(Ljava/lang/String;)V

    .line 834
    const-string v2, "chapters"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 835
    if-eqz v2, :cond_9b

    .line 836
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 837
    const/4 v1, 0x0

    :goto_45
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v1, v4, :cond_98

    .line 838
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 839
    new-instance v5, Lcom/bilibili/tv/ebook/model/Chapter;

    invoke-direct {v5}, Lcom/bilibili/tv/ebook/model/Chapter;-><init>()V

    .line 840
    const-string v6, "chapterId"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/bilibili/tv/ebook/model/Chapter;->setChapterId(Ljava/lang/String;)V

    .line 841
    const-string v6, "chapterIndex"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/bilibili/tv/ebook/model/Chapter;->setChapterIndex(I)V

    .line 842
    const-string v6, "title"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/bilibili/tv/ebook/model/Chapter;->setTitle(Ljava/lang/String;)V

    .line 844
    const-string v6, "htmlFilePath"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/bilibili/tv/ebook/parser/EpubParser;->decodeHrefPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/bilibili/tv/ebook/model/Chapter;->setHtmlFilePath(Ljava/lang/String;)V

    .line 845
    const-string v6, "baseUrl"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/bilibili/tv/ebook/parser/EpubParser;->decodeHrefPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/bilibili/tv/ebook/model/Chapter;->setBaseUrl(Ljava/lang/String;)V

    .line 846
    const-string v6, "depth"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v5, v4}, Lcom/bilibili/tv/ebook/model/Chapter;->setDepth(I)V

    .line 852
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 837
    add-int/lit8 v1, v1, 0x1

    goto :goto_45

    .line 854
    :cond_98
    invoke-virtual {v0, v3}, Lcom/bilibili/tv/ebook/model/Book;->setChapters(Ljava/util/List;)V

    .line 857
    :cond_9b
    const-string v1, "EpubParser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u7f13\u5b58\u5143\u6570\u636e\u52a0\u8f7d\u6210\u529f: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/model/Book;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", \u7ae0\u8282\u6570: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/model/Book;->getChapters()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c9} :catch_ca

    .line 862
    :goto_c9
    return-object v0

    .line 860
    :catch_ca
    move-exception v0

    .line 861
    const-string v1, "EpubParser"

    const-string v2, "\u52a0\u8f7d\u7f13\u5b58\u5143\u6570\u636e\u5931\u8d25"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 862
    const/4 v0, 0x0

    goto :goto_c9
.end method

.method private parseNavMapRecursive(Lorg/jsoup/nodes/Element;Ljava/io/File;Ljava/io/File;ILcom/bilibili/tv/ebook/parser/EpubParser$NcxParseResult;)V
    .locals 8

    .prologue
    .line 564
    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->children()Lorg/jsoup/select/Elements;

    move-result-object v0

    .line 566
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

    .line 568
    invoke-virtual {v0}, Lorg/jsoup/select/Elements;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2e
    :goto_2e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/nodes/Element;

    .line 571
    invoke-static {v1}, Lcom/bilibili/tv/ebook/parser/EpubParser;->localNameOf(Lorg/jsoup/nodes/Element;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "navPoint"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 577
    const-string v3, "\u672a\u77e5\u7ae0\u8282"

    .line 578
    const-string v2, ""

    .line 579
    invoke-virtual {v1}, Lorg/jsoup/nodes/Element;->children()Lorg/jsoup/select/Elements;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/select/Elements;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_52
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/Element;

    .line 580
    invoke-static {v0}, Lcom/bilibili/tv/ebook/parser/EpubParser;->localNameOf(Lorg/jsoup/nodes/Element;)Ljava/lang/String;

    move-result-object v5

    .line 581
    const-string v7, "navLabel"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7c

    .line 582
    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->text()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 583
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_79

    move-object v3, v0

    :cond_79
    move-object v0, v2

    :goto_7a
    move-object v2, v0

    .line 589
    goto :goto_52

    .line 586
    :cond_7c
    const-string v7, "content"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1aa

    .line 587
    const-string v2, "src"

    invoke-virtual {v0, v2}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_7a

    .line 591
    :cond_8b
    const-string v0, "EpubParser"

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

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14c

    .line 597
    const-string v0, "#"

    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    aget-object v4, v0, v4

    .line 605
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 608
    :try_start_db
    invoke-virtual {v0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;
    :try_end_de
    .catch Ljava/lang/Exception; {:try_start_db .. :try_end_de} :catch_157

    move-result-object v0

    .line 615
    :goto_df
    invoke-virtual {p2, p3}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15d

    move-object v0, v4

    .line 632
    :goto_e6
    const-string v4, "\\"

    const-string v5, "/"

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 634
    invoke-static {v0}, Lcom/bilibili/tv/ebook/parser/EpubParser;->decodeHrefPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 637
    iget-object v4, p5, Lcom/bilibili/tv/ebook/parser/EpubParser$NcxParseResult;->depthMap:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_17a

    .line 638
    iget-object v4, p5, Lcom/bilibili/tv/ebook/parser/EpubParser$NcxParseResult;->depthMap:Ljava/util/Map;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 639
    iget-object v4, p5, Lcom/bilibili/tv/ebook/parser/EpubParser$NcxParseResult;->titleMap:Ljava/util/Map;

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 640
    const-string v4, "EpubParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u7ae0\u8282: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", depth="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", path="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", src="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", ncxDir="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 641
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 640
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    :cond_14c
    :goto_14c
    add-int/lit8 v4, p4, 0x1

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/bilibili/tv/ebook/parser/EpubParser;->parseNavMapRecursive(Lorg/jsoup/nodes/Element;Ljava/io/File;Ljava/io/File;ILcom/bilibili/tv/ebook/parser/EpubParser$NcxParseResult;)V

    goto/16 :goto_2e

    .line 609
    :catch_157
    move-exception v5

    .line 610
    invoke-virtual {v0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v0

    goto :goto_df

    .line 620
    :cond_15d
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 621
    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 623
    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_177

    .line 624
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_e6

    :cond_177
    move-object v0, v4

    .line 627
    goto/16 :goto_e6

    .line 643
    :cond_17a
    const-string v2, "EpubParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u8df3\u8fc7\u91cd\u590d\u8def\u5f84: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (\u5df2\u5b58\u5728depth="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p5, Lcom/bilibili/tv/ebook/parser/EpubParser$NcxParseResult;->depthMap:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14c

    .line 650
    :cond_1a9
    return-void

    :cond_1aa
    move-object v0, v2

    goto/16 :goto_7a
.end method

.method private parseNcxFile(Ljava/util/Map;Ljava/io/File;Ljava/io/File;)Lcom/bilibili/tv/ebook/parser/EpubParser$NcxParseResult;
    .locals 7
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

    .line 492
    new-instance v5, Lcom/bilibili/tv/ebook/parser/EpubParser$NcxParseResult;

    invoke-direct {v5, v1}, Lcom/bilibili/tv/ebook/parser/EpubParser$NcxParseResult;-><init>(Lcom/bilibili/tv/ebook/parser/EpubParser$1;)V

    .line 499
    :try_start_6
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_129

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ebook/parser/EpubParser$ManifestItem;

    .line 500
    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/parser/EpubParser$ManifestItem;->getHref()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7e

    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/parser/EpubParser$ManifestItem;->getHref()Ljava/lang/String;

    move-result-object v2

    .line 501
    :goto_24
    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/parser/EpubParser$ManifestItem;->getMediaType()Ljava/lang/String;

    move-result-object v4

    const-string v6, "application/x-dtbncx+xml"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4c

    .line 502
    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/parser/EpubParser$ManifestItem;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v4, "ncx"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4c

    .line 503
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v4, ".ncx"

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 504
    :cond_4c
    new-instance v0, Ljava/io/File;

    invoke-static {v2}, Lcom/bilibili/tv/ebook/parser/EpubParser;->decodeHrefPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 510
    :goto_55
    if-eqz v0, :cond_5d

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_6e

    .line 511
    :cond_5d
    new-instance v1, Lcom/bilibili/tv/ebook/parser/EpubParser$2;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ebook/parser/EpubParser$2;-><init>(Lcom/bilibili/tv/ebook/parser/EpubParser;)V

    invoke-virtual {p2, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v1

    .line 518
    if-eqz v1, :cond_6e

    array-length v2, v1

    if-lez v2, :cond_6e

    .line 519
    const/4 v0, 0x0

    aget-object v0, v1, v0

    .line 523
    :cond_6e
    if-eqz v0, :cond_76

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_81

    .line 524
    :cond_76
    const-string v0, "EpubParser"

    const-string v1, "\u672a\u627e\u5230NCX\u6587\u4ef6\uff0c\u5c06\u4f7f\u7528\u6241\u5e73\u7ae0\u8282\u5217\u8868"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    :goto_7d
    return-object v5

    .line 500
    :cond_7e
    const-string v2, ""

    goto :goto_24

    .line 528
    :cond_81
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

    .line 531
    invoke-static {v0}, Lcom/bilibili/tv/ebook/util/EbookUtils;->detectFileEncoding(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    new-instance v3, Lorg/jsoup/parser/Parser;

    new-instance v4, Lorg/jsoup/parser/XmlTreeBuilder;

    invoke-direct {v4}, Lorg/jsoup/parser/XmlTreeBuilder;-><init>()V

    invoke-direct {v3, v4}, Lorg/jsoup/parser/Parser;-><init>(Lorg/jsoup/parser/TreeBuilder;)V

    invoke-static {v0, v1, v2, v3}, Lorg/jsoup/Jsoup;->parse(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/parser/Parser;)Lorg/jsoup/nodes/Document;

    move-result-object v1

    .line 534
    const-string v2, "*|navMap"

    invoke-virtual {v1, v2}, Lorg/jsoup/nodes/Document;->selectFirst(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v1

    .line 536
    if-eqz v1, :cond_120

    .line 537
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

    .line 540
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {p3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/bilibili/tv/ebook/parser/EpubParser;->parseNavMapRecursive(Lorg/jsoup/nodes/Element;Ljava/io/File;Ljava/io/File;ILcom/bilibili/tv/ebook/parser/EpubParser$NcxParseResult;)V

    .line 541
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
    :try_end_114
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_114} :catch_116

    goto/16 :goto_7d

    .line 546
    :catch_116
    move-exception v0

    .line 547
    const-string v1, "EpubParser"

    const-string v2, "\u89e3\u6790NCX\u6587\u4ef6\u5931\u8d25"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_7d

    .line 543
    :cond_120
    :try_start_120
    const-string v0, "EpubParser"

    const-string v1, "NCX\u6587\u4ef6\u4e2d\u6ca1\u6709\u627e\u5230navMap\u5143\u7d20"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_127
    .catch Ljava/lang/Exception; {:try_start_120 .. :try_end_127} :catch_116

    goto/16 :goto_7d

    :cond_129
    move-object v0, v1

    goto/16 :goto_55
.end method

.method private parseOpf(Ljava/io/File;Ljava/io/File;)Lcom/bilibili/tv/ebook/model/Book;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 284
    invoke-static {p1}, Lcom/bilibili/tv/ebook/util/EbookUtils;->detectFileEncoding(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/jsoup/Jsoup;->parse(Ljava/io/File;Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    move-result-object v0

    .line 286
    new-instance v1, Lcom/bilibili/tv/ebook/model/Book;

    invoke-direct {v1}, Lcom/bilibili/tv/ebook/model/Book;-><init>()V

    .line 289
    invoke-direct {p0, v0, v1}, Lcom/bilibili/tv/ebook/parser/EpubParser;->parseMetadata(Lorg/jsoup/nodes/Document;Lcom/bilibili/tv/ebook/model/Book;)V

    .line 292
    invoke-direct {p0, v0}, Lcom/bilibili/tv/ebook/parser/EpubParser;->parseManifest(Lorg/jsoup/nodes/Document;)Ljava/util/Map;

    move-result-object v2

    .line 295
    invoke-direct {p0, v0, v2}, Lcom/bilibili/tv/ebook/parser/EpubParser;->parseSpine(Lorg/jsoup/nodes/Document;Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    .line 298
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    .line 299
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

    .line 302
    invoke-direct {p0, v2, v3, p1}, Lcom/bilibili/tv/ebook/parser/EpubParser;->parseNcxFile(Ljava/util/Map;Ljava/io/File;Ljava/io/File;)Lcom/bilibili/tv/ebook/parser/EpubParser$NcxParseResult;

    move-result-object v4

    .line 305
    invoke-direct {p0, v2, v0, v3, v4}, Lcom/bilibili/tv/ebook/parser/EpubParser;->parseChapters(Ljava/util/Map;Ljava/util/List;Ljava/io/File;Lcom/bilibili/tv/ebook/parser/EpubParser$NcxParseResult;)Ljava/util/List;

    move-result-object v0

    .line 306
    invoke-virtual {v1, v0}, Lcom/bilibili/tv/ebook/model/Book;->setChapters(Ljava/util/List;)V

    .line 308
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
    .line 462
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 464
    const-string v0, "*|spine *|itemref"

    invoke-virtual {p1, v0}, Lorg/jsoup/nodes/Document;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v0

    .line 466
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

    .line 467
    const-string v3, "idref"

    invoke-virtual {v0, v3}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 468
    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 469
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 473
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

    .line 474
    return-object v1
.end method

.method private saveMetadataToCache(Lcom/bilibili/tv/ebook/model/Book;Ljava/io/File;)V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 872
    :try_start_1
    new-instance v4, Ljava/io/File;

    const-string v0, "metadata.json"

    invoke-direct {v4, p2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 874
    const-string v0, "EpubParser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5f00\u59cb\u4fdd\u5b58\u5143\u6570\u636e\u5230\u7f13\u5b58: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 878
    const-string v0, "bookId"

    invoke-virtual {p1}, Lcom/bilibili/tv/ebook/model/Book;->getBookId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 879
    const-string v0, "title"

    invoke-virtual {p1}, Lcom/bilibili/tv/ebook/model/Book;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 880
    const-string v0, "author"

    invoke-virtual {p1}, Lcom/bilibili/tv/ebook/model/Book;->getAuthor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 881
    const-string v0, "language"

    invoke-virtual {p1}, Lcom/bilibili/tv/ebook/model/Book;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 882
    const-string v0, "extractionPath"

    invoke-virtual {p1}, Lcom/bilibili/tv/ebook/model/Book;->getExtractionPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 885
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 886
    invoke-virtual {p1}, Lcom/bilibili/tv/ebook/model/Book;->getChapters()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_bd

    .line 887
    invoke-virtual {p1}, Lcom/bilibili/tv/ebook/model/Book;->getChapters()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_69
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_bd

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ebook/model/Chapter;

    .line 888
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 889
    const-string v7, "chapterId"

    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/model/Chapter;->getChapterId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 890
    const-string v7, "chapterIndex"

    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/model/Chapter;->getChapterIndex()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 891
    const-string v7, "title"

    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/model/Chapter;->getTitle()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 892
    const-string v7, "htmlFilePath"

    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/model/Chapter;->getHtmlFilePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 893
    const-string v7, "baseUrl"

    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/model/Chapter;->getBaseUrl()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 894
    const-string v7, "depth"

    invoke-virtual {v0}, Lcom/bilibili/tv/ebook/model/Chapter;->getDepth()I

    move-result v0

    invoke-virtual {v6, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 896
    invoke-virtual {v1, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_b3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_b3} :catch_b4

    goto :goto_69

    .line 929
    :catch_b4
    move-exception v0

    .line 930
    const-string v1, "EpubParser"

    const-string v2, "\u4fdd\u5b58\u5143\u6570\u636e\u7f13\u5b58\u5931\u8d25"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 932
    :goto_bc
    return-void

    .line 899
    :cond_bd
    :try_start_bd
    const-string v0, "chapters"

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_c2
    .catch Ljava/lang/Exception; {:try_start_bd .. :try_end_c2} :catch_b4

    .line 905
    :try_start_c2
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_c7
    .catchall {:try_start_c2 .. :try_end_c7} :catchall_14f

    .line 906
    :try_start_c7
    new-instance v1, Ljava/io/OutputStreamWriter;

    const-string v0, "UTF-8"

    invoke-direct {v1, v3, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_ce
    .catchall {:try_start_c7 .. :try_end_ce} :catchall_199

    .line 907
    :try_start_ce
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 908
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->flush()V
    :try_end_d8
    .catchall {:try_start_ce .. :try_end_d8} :catchall_19c

    .line 910
    if-eqz v1, :cond_dd

    .line 912
    :try_start_da
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_dd
    .catch Ljava/lang/Exception; {:try_start_da .. :try_end_dd} :catch_113

    .line 917
    :cond_dd
    :goto_dd
    if-eqz v3, :cond_e2

    .line 919
    :try_start_df
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_e2
    .catch Ljava/lang/Exception; {:try_start_df .. :try_end_e2} :catch_131

    .line 926
    :cond_e2
    :goto_e2
    :try_start_e2
    const-string v0, "EpubParser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5143\u6570\u636e\u7f13\u5b58\u4fdd\u5b58\u6210\u529f: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", \u5927\u5c0f: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 927
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 926
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_bc

    .line 913
    :catch_113
    move-exception v0

    .line 914
    const-string v1, "EpubParser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u5173\u95edwriter\u5931\u8d25: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_dd

    .line 920
    :catch_131
    move-exception v0

    .line 921
    const-string v1, "EpubParser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5173\u95edfos\u5931\u8d25: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14e
    .catch Ljava/lang/Exception; {:try_start_e2 .. :try_end_14e} :catch_b4

    goto :goto_e2

    .line 910
    :catchall_14f
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    :goto_152
    if-eqz v1, :cond_157

    .line 912
    :try_start_154
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_157
    .catch Ljava/lang/Exception; {:try_start_154 .. :try_end_157} :catch_15d

    .line 917
    :cond_157
    :goto_157
    if-eqz v3, :cond_15c

    .line 919
    :try_start_159
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_15c
    .catch Ljava/lang/Exception; {:try_start_159 .. :try_end_15c} :catch_17b

    .line 924
    :cond_15c
    :goto_15c
    :try_start_15c
    throw v0

    .line 913
    :catch_15d
    move-exception v1

    .line 914
    const-string v2, "EpubParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u5173\u95edwriter\u5931\u8d25: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_157

    .line 920
    :catch_17b
    move-exception v1

    .line 921
    const-string v2, "EpubParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u5173\u95edfos\u5931\u8d25: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_198
    .catch Ljava/lang/Exception; {:try_start_15c .. :try_end_198} :catch_b4

    goto :goto_15c

    .line 910
    :catchall_199
    move-exception v0

    move-object v1, v2

    goto :goto_152

    :catchall_19c
    move-exception v0

    goto :goto_152
.end method

.method private unzipEpub(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 111
    new-instance v1, Ljava/io/File;

    iget-object v0, p0, Lcom/bilibili/tv/ebook/parser/EpubParser;->cacheDir:Ljava/io/File;

    invoke-direct {v1, v0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 114
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_51

    .line 115
    invoke-direct {p0, v1}, Lcom/bilibili/tv/ebook/parser/EpubParser;->isExtractionValid(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 116
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

    .line 199
    :goto_31
    return-object v0

    .line 119
    :cond_32
    const-string v0, "EpubParser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u7f13\u5b58\u76ee\u5f55\u4e0d\u5b8c\u6574\uff0c\u5220\u9664\u540e\u91cd\u65b0\u89e3\u538b: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    invoke-direct {p0, v1}, Lcom/bilibili/tv/ebook/parser/EpubParser;->deleteRecursively(Ljava/io/File;)V

    .line 125
    :cond_51
    new-instance v6, Ljava/io/File;

    iget-object v0, p0, Lcom/bilibili/tv/ebook/parser/EpubParser;->cacheDir:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ".tmp"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v6, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 126
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_74

    .line 127
    invoke-direct {p0, v6}, Lcom/bilibili/tv/ebook/parser/EpubParser;->deleteRecursively(Ljava/io/File;)V

    .line 129
    :cond_74
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    .line 133
    :try_start_77
    new-instance v5, Ljava/util/zip/ZipFile;

    invoke-direct {v5, p1}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_7c
    .catch Ljava/io/IOException; {:try_start_77 .. :try_end_7c} :catch_1f4
    .catchall {:try_start_77 .. :try_end_7c} :catchall_1f0

    .line 134
    :try_start_7c
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v7

    .line 136
    :cond_80
    :goto_80
    invoke-interface {v7}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_160

    .line 137
    invoke-interface {v7}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/zip/ZipEntry;

    .line 138
    new-instance v8, Ljava/io/File;

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v8, v6, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 140
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_ad

    .line 141
    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z
    :try_end_9e
    .catch Ljava/io/IOException; {:try_start_7c .. :try_end_9e} :catch_9f
    .catchall {:try_start_7c .. :try_end_9e} :catchall_d9

    goto :goto_80

    .line 176
    :catch_9f
    move-exception v0

    move-object v3, v5

    .line 178
    :goto_a1
    :try_start_a1
    invoke-direct {p0, v6}, Lcom/bilibili/tv/ebook/parser/EpubParser;->deleteRecursively(Ljava/io/File;)V

    .line 179
    throw v0
    :try_end_a5
    .catchall {:try_start_a1 .. :try_end_a5} :catchall_a5

    .line 181
    :catchall_a5
    move-exception v0

    move-object v5, v3

    :goto_a7
    if-eqz v5, :cond_ac

    .line 183
    :try_start_a9
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->close()V
    :try_end_ac
    .catch Ljava/io/IOException; {:try_start_a9 .. :try_end_ac} :catch_1a8

    .line 188
    :cond_ac
    :goto_ac
    throw v0

    .line 144
    :cond_ad
    :try_start_ad
    invoke-virtual {v8}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z
    :try_end_b4
    .catch Ljava/io/IOException; {:try_start_ad .. :try_end_b4} :catch_9f
    .catchall {:try_start_ad .. :try_end_b4} :catchall_d9

    .line 150
    :try_start_b4
    invoke-virtual {v5, v0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    :try_end_b7
    .catchall {:try_start_b4 .. :try_end_b7} :catchall_1f7

    move-result-object v4

    .line 151
    :try_start_b8
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_bd
    .catchall {:try_start_b8 .. :try_end_bd} :catchall_1fc

    .line 153
    const/16 v0, 0x2000

    :try_start_bf
    new-array v0, v0, [B

    .line 155
    :goto_c1
    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    move-result v8

    if-lez v8, :cond_db

    .line 156
    const/4 v9, 0x0

    invoke-virtual {v2, v0, v9, v8}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_cb
    .catchall {:try_start_bf .. :try_end_cb} :catchall_cc

    goto :goto_c1

    .line 159
    :catchall_cc
    move-exception v0

    move-object v1, v2

    :goto_ce
    if-eqz v1, :cond_d3

    .line 161
    :try_start_d0
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_d3
    .catch Ljava/io/IOException; {:try_start_d0 .. :try_end_d3} :catch_123
    .catchall {:try_start_d0 .. :try_end_d3} :catchall_d9

    .line 166
    :cond_d3
    :goto_d3
    if-eqz v4, :cond_d8

    .line 168
    :try_start_d5
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_d8
    .catch Ljava/io/IOException; {:try_start_d5 .. :try_end_d8} :catch_141
    .catchall {:try_start_d5 .. :try_end_d8} :catchall_d9

    .line 173
    :cond_d8
    :goto_d8
    :try_start_d8
    throw v0
    :try_end_d9
    .catch Ljava/io/IOException; {:try_start_d8 .. :try_end_d9} :catch_9f
    .catchall {:try_start_d8 .. :try_end_d9} :catchall_d9

    .line 181
    :catchall_d9
    move-exception v0

    goto :goto_a7

    .line 159
    :cond_db
    if-eqz v2, :cond_e0

    .line 161
    :try_start_dd
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_e0
    .catch Ljava/io/IOException; {:try_start_dd .. :try_end_e0} :catch_105
    .catchall {:try_start_dd .. :try_end_e0} :catchall_d9

    .line 166
    :cond_e0
    :goto_e0
    if-eqz v4, :cond_80

    .line 168
    :try_start_e2
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_e5
    .catch Ljava/io/IOException; {:try_start_e2 .. :try_end_e5} :catch_e6
    .catchall {:try_start_e2 .. :try_end_e5} :catchall_d9

    goto :goto_80

    .line 169
    :catch_e6
    move-exception v0

    .line 170
    :try_start_e7
    const-string v2, "EpubParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u5173\u95ed\u8f93\u5165\u6d41\u5931\u8d25: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_80

    .line 162
    :catch_105
    move-exception v0

    .line 163
    const-string v2, "EpubParser"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u5173\u95ed\u8f93\u51fa\u6d41\u5931\u8d25: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e0

    .line 162
    :catch_123
    move-exception v1

    .line 163
    const-string v2, "EpubParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u5173\u95ed\u8f93\u51fa\u6d41\u5931\u8d25: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d3

    .line 169
    :catch_141
    move-exception v1

    .line 170
    const-string v2, "EpubParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u5173\u95ed\u8f93\u5165\u6d41\u5931\u8d25: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15e
    .catch Ljava/io/IOException; {:try_start_e7 .. :try_end_15e} :catch_9f
    .catchall {:try_start_e7 .. :try_end_15e} :catchall_d9

    goto/16 :goto_d8

    .line 181
    :cond_160
    if-eqz v5, :cond_165

    .line 183
    :try_start_162
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->close()V
    :try_end_165
    .catch Ljava/io/IOException; {:try_start_162 .. :try_end_165} :catch_18a

    .line 191
    :cond_165
    :goto_165
    invoke-virtual {v6, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_1c7

    .line 192
    const-string v0, "EpubParser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EPUB\u89e3\u538b\u5b8c\u6210: "

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

    .line 193
    goto/16 :goto_31

    .line 184
    :catch_18a
    move-exception v0

    .line 185
    const-string v2, "EpubParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u5173\u95edZipFile\u5931\u8d25: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_165

    .line 184
    :catch_1a8
    move-exception v1

    .line 185
    const-string v2, "EpubParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u5173\u95edZipFile\u5931\u8d25: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_ac

    .line 197
    :cond_1c7
    invoke-direct {p0, v6}, Lcom/bilibili/tv/ebook/parser/EpubParser;->deleteRecursively(Ljava/io/File;)V

    .line 198
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1d3

    move-object v0, v1

    .line 199
    goto/16 :goto_31

    .line 201
    :cond_1d3
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u91cd\u547d\u540d\u89e3\u538b\u76ee\u5f55\u5931\u8d25: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 181
    :catchall_1f0
    move-exception v0

    move-object v5, v3

    goto/16 :goto_a7

    .line 176
    :catch_1f4
    move-exception v0

    goto/16 :goto_a1

    .line 159
    :catchall_1f7
    move-exception v0

    move-object v1, v3

    move-object v4, v3

    goto/16 :goto_ce

    :catchall_1fc
    move-exception v0

    move-object v1, v3

    goto/16 :goto_ce
.end method


# virtual methods
.method public parse(Ljava/lang/String;Ljava/lang/String;)Lcom/bilibili/tv/ebook/model/Book;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 51
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

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/bilibili/tv/ebook/parser/EpubParser;->unzipEpub(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 55
    if-nez v2, :cond_27

    .line 56
    const-string v1, "EpubParser"

    const-string v2, "\u89e3\u538bEPUB\u6587\u4ef6\u5931\u8d25"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :goto_26
    return-object v0

    .line 61
    :cond_27
    invoke-direct {p0, v2}, Lcom/bilibili/tv/ebook/parser/EpubParser;->loadMetadataFromCache(Ljava/io/File;)Lcom/bilibili/tv/ebook/model/Book;

    move-result-object v1

    .line 62
    if-eqz v1, :cond_93

    .line 66
    invoke-virtual {v1}, Lcom/bilibili/tv/ebook/model/Book;->getChapters()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_6d

    invoke-virtual {v1}, Lcom/bilibili/tv/ebook/model/Book;->getChapters()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6d

    .line 67
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

    .line 68
    invoke-virtual {v1}, Lcom/bilibili/tv/ebook/model/Book;->getChapters()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 67
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 69
    goto :goto_26

    .line 71
    :cond_6d
    const-string v1, "EpubParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u7f13\u5b58\u4e2d\u7ae0\u8282\u4e3a\u7a7a\uff0c\u5220\u9664\u7f13\u5b58\u5e76\u91cd\u65b0\u89e3\u6790: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    new-instance v1, Ljava/io/File;

    const-string v3, "metadata.json"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 76
    :cond_93
    invoke-direct {p0, v2}, Lcom/bilibili/tv/ebook/parser/EpubParser;->findOpfFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    .line 77
    if-nez v1, :cond_bc

    .line 78
    const-string v1, "EpubParser"

    const-string v2, "\u672a\u627e\u5230OPF\u6587\u4ef6"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_a0} :catch_a1

    goto :goto_26

    .line 101
    :catch_a1
    move-exception v1

    .line 102
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

    goto/16 :goto_26

    .line 83
    :cond_bc
    :try_start_bc
    invoke-direct {p0, v1, v2}, Lcom/bilibili/tv/ebook/parser/EpubParser;->parseOpf(Ljava/io/File;Ljava/io/File;)Lcom/bilibili/tv/ebook/model/Book;

    move-result-object v1

    .line 84
    if-nez v1, :cond_cb

    .line 85
    const-string v1, "EpubParser"

    const-string v2, "\u89e3\u6790OPF\u6587\u4ef6\u5931\u8d25"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_26

    .line 90
    :cond_cb
    invoke-virtual {v1, p2}, Lcom/bilibili/tv/ebook/model/Book;->setBookId(Ljava/lang/String;)V

    .line 91
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/bilibili/tv/ebook/model/Book;->setExtractionPath(Ljava/lang/String;)V

    .line 94
    invoke-direct {p0, v1, v2}, Lcom/bilibili/tv/ebook/parser/EpubParser;->saveMetadataToCache(Lcom/bilibili/tv/ebook/model/Book;Ljava/io/File;)V

    .line 96
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

    .line 97
    invoke-virtual {v1}, Lcom/bilibili/tv/ebook/model/Book;->getChapters()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 96
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_106
    .catch Ljava/lang/Exception; {:try_start_bc .. :try_end_106} :catch_a1

    move-object v0, v1

    .line 99
    goto/16 :goto_26
.end method
