.class public Lcom/bilibili/tv/ebook/parser/EbookParserFactory;
.super Ljava/lang/Object;
.source "EbookParserFactory.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "EbookParserFactory"


# instance fields
.field private context:Landroid/content/Context;

.field private epubParser:Lcom/bilibili/tv/ebook/parser/EpubParser;

.field private mobiParser:Lcom/aryan/reader/epub/MobiParser;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/bilibili/tv/ebook/parser/EbookParserFactory;->context:Landroid/content/Context;

    .line 27
    new-instance v0, Lcom/bilibili/tv/ebook/parser/EpubParser;

    invoke-direct {v0, p1}, Lcom/bilibili/tv/ebook/parser/EpubParser;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bilibili/tv/ebook/parser/EbookParserFactory;->epubParser:Lcom/bilibili/tv/ebook/parser/EpubParser;

    .line 28
    new-instance v0, Lcom/aryan/reader/epub/MobiParser;

    invoke-direct {v0, p1}, Lcom/aryan/reader/epub/MobiParser;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bilibili/tv/ebook/parser/EbookParserFactory;->mobiParser:Lcom/aryan/reader/epub/MobiParser;

    .line 29
    return-void
.end method

.method public static generateBookId(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 100
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 101
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 102
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getFileExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 65
    if-eqz p1, :cond_9

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 74
    :cond_9
    :goto_9
    return-object v0

    .line 69
    :cond_a
    const/16 v1, 0x2e

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 70
    if-lez v1, :cond_9

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_9

    .line 71
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_9
.end method


# virtual methods
.method public isSupported(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 81
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ebook/parser/EbookParserFactory;->getFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 82
    if-nez v2, :cond_9

    .line 92
    :goto_8
    return v0

    .line 86
    :cond_9
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const/4 v2, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_3a

    :cond_15
    :goto_15
    packed-switch v2, :pswitch_data_48

    goto :goto_8

    :pswitch_19
    move v0, v1

    .line 90
    goto :goto_8

    .line 86
    :sswitch_1b
    const-string v4, "epub"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    move v2, v0

    goto :goto_15

    :sswitch_25
    const-string v4, "mobi"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    move v2, v1

    goto :goto_15

    :sswitch_2f
    const-string v4, "azw3"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    const/4 v2, 0x2

    goto :goto_15

    nop

    :sswitch_data_3a
    .sparse-switch
        0x2df095 -> :sswitch_2f
        0x2f9c78 -> :sswitch_1b
        0x333969 -> :sswitch_25
    .end sparse-switch

    :pswitch_data_48
    .packed-switch 0x0
        :pswitch_19
        :pswitch_19
        :pswitch_19
    .end packed-switch
.end method

.method public parse(Ljava/lang/String;Ljava/lang/String;)Lcom/bilibili/tv/ebook/model/Book;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ebook/parser/EbookParserFactory;->getFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 40
    if-nez v2, :cond_20

    .line 41
    const-string v1, "EbookParserFactory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u65e0\u6cd5\u8bc6\u522b\u6587\u4ef6\u7c7b\u578b: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    :goto_1f
    return-object v0

    .line 45
    :cond_20
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const/4 v1, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_82

    :cond_2c
    :goto_2c
    packed-switch v1, :pswitch_data_90

    .line 56
    const-string v1, "EbookParserFactory"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u4e0d\u652f\u6301\u7684\u6587\u4ef6\u683c\u5f0f: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f

    .line 45
    :sswitch_48
    const-string v4, "epub"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    const/4 v1, 0x0

    goto :goto_2c

    :sswitch_52
    const-string v4, "mobi"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    const/4 v1, 0x1

    goto :goto_2c

    :sswitch_5c
    const-string v4, "azw3"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    const/4 v1, 0x2

    goto :goto_2c

    .line 47
    :pswitch_66
    const-string v0, "EbookParserFactory"

    const-string v1, "\u4f7f\u7528EPUB\u89e3\u6790\u5668"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    iget-object v0, p0, Lcom/bilibili/tv/ebook/parser/EbookParserFactory;->epubParser:Lcom/bilibili/tv/ebook/parser/EpubParser;

    invoke-virtual {v0, p1, p2}, Lcom/bilibili/tv/ebook/parser/EpubParser;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/bilibili/tv/ebook/model/Book;

    move-result-object v0

    goto :goto_1f

    .line 52
    :pswitch_74
    const-string v0, "EbookParserFactory"

    const-string v1, "\u4f7f\u7528MOBI\u89e3\u6790\u5668\uff08JNI\u7248\u672c\uff09"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    iget-object v0, p0, Lcom/bilibili/tv/ebook/parser/EbookParserFactory;->mobiParser:Lcom/aryan/reader/epub/MobiParser;

    invoke-virtual {v0, p1, p2}, Lcom/aryan/reader/epub/MobiParser;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/bilibili/tv/ebook/model/Book;

    move-result-object v0

    goto :goto_1f

    .line 45
    :sswitch_data_82
    .sparse-switch
        0x2df095 -> :sswitch_5c
        0x2f9c78 -> :sswitch_48
        0x333969 -> :sswitch_52
    .end sparse-switch

    :pswitch_data_90
    .packed-switch 0x0
        :pswitch_66
        :pswitch_74
        :pswitch_74
    .end packed-switch
.end method
