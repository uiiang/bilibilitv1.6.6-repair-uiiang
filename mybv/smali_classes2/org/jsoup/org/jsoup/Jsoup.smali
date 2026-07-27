.class public Lorg/jsoup/Jsoup;
.super Ljava/lang/Object;
.source "Jsoup.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clean(Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/safety/Safelist;)Ljava/lang/String;
    .registers 7
    .param p0, "bodyHtml"    # Ljava/lang/String;
    .param p1, "baseUri"    # Ljava/lang/String;
    .param p2, "safelist"    # Lorg/jsoup/safety/Safelist;

    .prologue
    .line 261
    invoke-static {p0, p1}, Lorg/jsoup/Jsoup;->parseBodyFragment(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    move-result-object v2

    .line 262
    .local v2, "dirty":Lorg/jsoup/nodes/Document;
    new-instance v1, Lorg/jsoup/safety/Cleaner;

    invoke-direct {v1, p2}, Lorg/jsoup/safety/Cleaner;-><init>(Lorg/jsoup/safety/Safelist;)V

    .line 263
    .local v1, "cleaner":Lorg/jsoup/safety/Cleaner;
    invoke-virtual {v1, v2}, Lorg/jsoup/safety/Cleaner;->clean(Lorg/jsoup/nodes/Document;)Lorg/jsoup/nodes/Document;

    move-result-object v0

    .line 264
    .local v0, "clean":Lorg/jsoup/nodes/Document;
    invoke-virtual {v0}, Lorg/jsoup/nodes/Document;->body()Lorg/jsoup/nodes/Element;

    move-result-object v3

    invoke-virtual {v3}, Lorg/jsoup/nodes/Element;->html()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static clean(Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/safety/Safelist;Lorg/jsoup/nodes/Document$OutputSettings;)Ljava/lang/String;
    .registers 8
    .param p0, "bodyHtml"    # Ljava/lang/String;
    .param p1, "baseUri"    # Ljava/lang/String;
    .param p2, "safelist"    # Lorg/jsoup/safety/Safelist;
    .param p3, "outputSettings"    # Lorg/jsoup/nodes/Document$OutputSettings;

    .prologue
    .line 318
    invoke-static {p0, p1}, Lorg/jsoup/Jsoup;->parseBodyFragment(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    move-result-object v2

    .line 319
    .local v2, "dirty":Lorg/jsoup/nodes/Document;
    new-instance v1, Lorg/jsoup/safety/Cleaner;

    invoke-direct {v1, p2}, Lorg/jsoup/safety/Cleaner;-><init>(Lorg/jsoup/safety/Safelist;)V

    .line 320
    .local v1, "cleaner":Lorg/jsoup/safety/Cleaner;
    invoke-virtual {v1, v2}, Lorg/jsoup/safety/Cleaner;->clean(Lorg/jsoup/nodes/Document;)Lorg/jsoup/nodes/Document;

    move-result-object v0

    .line 321
    .local v0, "clean":Lorg/jsoup/nodes/Document;
    invoke-virtual {v0, p3}, Lorg/jsoup/nodes/Document;->outputSettings(Lorg/jsoup/nodes/Document$OutputSettings;)Lorg/jsoup/nodes/Document;

    .line 322
    invoke-virtual {v0}, Lorg/jsoup/nodes/Document;->body()Lorg/jsoup/nodes/Element;

    move-result-object v3

    invoke-virtual {v3}, Lorg/jsoup/nodes/Element;->html()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static clean(Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/safety/Whitelist;)Ljava/lang/String;
    .registers 4
    .param p0, "bodyHtml"    # Ljava/lang/String;
    .param p1, "baseUri"    # Ljava/lang/String;
    .param p2, "safelist"    # Lorg/jsoup/safety/Whitelist;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 273
    invoke-static {p0, p1, p2}, Lorg/jsoup/Jsoup;->clean(Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/safety/Safelist;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static clean(Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/safety/Whitelist;Lorg/jsoup/nodes/Document$OutputSettings;)Ljava/lang/String;
    .registers 5
    .param p0, "bodyHtml"    # Ljava/lang/String;
    .param p1, "baseUri"    # Ljava/lang/String;
    .param p2, "safelist"    # Lorg/jsoup/safety/Whitelist;
    .param p3, "outputSettings"    # Lorg/jsoup/nodes/Document$OutputSettings;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 331
    invoke-static {p0, p1, p2, p3}, Lorg/jsoup/Jsoup;->clean(Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/safety/Safelist;Lorg/jsoup/nodes/Document$OutputSettings;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static clean(Ljava/lang/String;Lorg/jsoup/safety/Safelist;)Ljava/lang/String;
    .registers 3
    .param p0, "bodyHtml"    # Ljava/lang/String;
    .param p1, "safelist"    # Lorg/jsoup/safety/Safelist;

    .prologue
    .line 291
    const-string v0, ""

    invoke-static {p0, v0, p1}, Lorg/jsoup/Jsoup;->clean(Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/safety/Safelist;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static clean(Ljava/lang/String;Lorg/jsoup/safety/Whitelist;)Ljava/lang/String;
    .registers 3
    .param p0, "bodyHtml"    # Ljava/lang/String;
    .param p1, "safelist"    # Lorg/jsoup/safety/Whitelist;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 300
    invoke-static {p0, p1}, Lorg/jsoup/Jsoup;->clean(Ljava/lang/String;Lorg/jsoup/safety/Safelist;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static connect(Ljava/lang/String;)Lorg/jsoup/Connection;
    .registers 2
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 92
    invoke-static {p0}, Lorg/jsoup/helper/HttpConnection;->connect(Ljava/lang/String;)Lorg/jsoup/Connection;

    move-result-object v0

    return-object v0
.end method

.method public static isValid(Ljava/lang/String;Lorg/jsoup/safety/Safelist;)Z
    .registers 3
    .param p0, "bodyHtml"    # Ljava/lang/String;
    .param p1, "safelist"    # Lorg/jsoup/safety/Safelist;

    .prologue
    .line 344
    new-instance v0, Lorg/jsoup/safety/Cleaner;

    invoke-direct {v0, p1}, Lorg/jsoup/safety/Cleaner;-><init>(Lorg/jsoup/safety/Safelist;)V

    invoke-virtual {v0, p0}, Lorg/jsoup/safety/Cleaner;->isValidBodyHtml(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isValid(Ljava/lang/String;Lorg/jsoup/safety/Whitelist;)Z
    .registers 3
    .param p0, "bodyHtml"    # Ljava/lang/String;
    .param p1, "safelist"    # Lorg/jsoup/safety/Whitelist;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 353
    invoke-static {p0, p1}, Lorg/jsoup/Jsoup;->isValid(Ljava/lang/String;Lorg/jsoup/safety/Safelist;)Z

    move-result v0

    return v0
.end method

.method public static newSession()Lorg/jsoup/Connection;
    .registers 1

    .prologue
    .line 119
    new-instance v0, Lorg/jsoup/helper/HttpConnection;

    invoke-direct {v0}, Lorg/jsoup/helper/HttpConnection;-><init>()V

    return-object v0
.end method

.method public static parse(Ljava/io/File;Ljava/lang/String;)Lorg/jsoup/nodes/Document;
    .registers 3
    .param p0, "file"    # Ljava/io/File;
    .param p1, "charsetName"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 149
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/jsoup/helper/DataUtil;->load(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Document;
    .registers 4
    .param p0, "file"    # Ljava/io/File;
    .param p1, "charsetName"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "baseUri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 134
    invoke-static {p0, p1, p2}, Lorg/jsoup/helper/DataUtil;->load(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/parser/Parser;)Lorg/jsoup/nodes/Document;
    .registers 5
    .param p0, "file"    # Ljava/io/File;
    .param p1, "charsetName"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "baseUri"    # Ljava/lang/String;
    .param p3, "parser"    # Lorg/jsoup/parser/Parser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 166
    invoke-static {p0, p1, p2, p3}, Lorg/jsoup/helper/DataUtil;->load(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/parser/Parser;)Lorg/jsoup/nodes/Document;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Document;
    .registers 4
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "charsetName"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "baseUri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 181
    invoke-static {p0, p1, p2}, Lorg/jsoup/helper/DataUtil;->load(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/parser/Parser;)Lorg/jsoup/nodes/Document;
    .registers 5
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "charsetName"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "baseUri"    # Ljava/lang/String;
    .param p3, "parser"    # Lorg/jsoup/parser/Parser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 198
    invoke-static {p0, p1, p2, p3}, Lorg/jsoup/helper/DataUtil;->load(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/parser/Parser;)Lorg/jsoup/nodes/Document;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/lang/String;)Lorg/jsoup/nodes/Document;
    .registers 2
    .param p0, "html"    # Ljava/lang/String;

    .prologue
    .line 75
    const-string v0, ""

    invoke-static {p0, v0}, Lorg/jsoup/parser/Parser;->parse(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Document;
    .registers 3
    .param p0, "html"    # Ljava/lang/String;
    .param p1, "baseUri"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-static {p0, p1}, Lorg/jsoup/parser/Parser;->parse(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/parser/Parser;)Lorg/jsoup/nodes/Document;
    .registers 4
    .param p0, "html"    # Ljava/lang/String;
    .param p1, "baseUri"    # Ljava/lang/String;
    .param p2, "parser"    # Lorg/jsoup/parser/Parser;

    .prologue
    .line 48
    invoke-virtual {p2, p0, p1}, Lorg/jsoup/parser/Parser;->parseInput(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/lang/String;Lorg/jsoup/parser/Parser;)Lorg/jsoup/nodes/Document;
    .registers 3
    .param p0, "html"    # Ljava/lang/String;
    .param p1, "parser"    # Lorg/jsoup/parser/Parser;

    .prologue
    .line 62
    const-string v0, ""

    invoke-virtual {p1, p0, v0}, Lorg/jsoup/parser/Parser;->parseInput(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/net/URL;I)Lorg/jsoup/nodes/Document;
    .registers 4
    .param p0, "url"    # Ljava/net/URL;
    .param p1, "timeoutMillis"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 244
    invoke-static {p0}, Lorg/jsoup/helper/HttpConnection;->connect(Ljava/net/URL;)Lorg/jsoup/Connection;

    move-result-object v0

    .line 245
    .local v0, "con":Lorg/jsoup/Connection;
    invoke-interface {v0, p1}, Lorg/jsoup/Connection;->timeout(I)Lorg/jsoup/Connection;

    .line 246
    invoke-interface {v0}, Lorg/jsoup/Connection;->get()Lorg/jsoup/nodes/Document;

    move-result-object v1

    return-object v1
.end method

.method public static parseBodyFragment(Ljava/lang/String;)Lorg/jsoup/nodes/Document;
    .registers 2
    .param p0, "bodyHtml"    # Ljava/lang/String;

    .prologue
    .line 223
    const-string v0, ""

    invoke-static {p0, v0}, Lorg/jsoup/parser/Parser;->parseBodyFragment(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    move-result-object v0

    return-object v0
.end method

.method public static parseBodyFragment(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Document;
    .registers 3
    .param p0, "bodyHtml"    # Ljava/lang/String;
    .param p1, "baseUri"    # Ljava/lang/String;

    .prologue
    .line 211
    invoke-static {p0, p1}, Lorg/jsoup/parser/Parser;->parseBodyFragment(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    move-result-object v0

    return-object v0
.end method
