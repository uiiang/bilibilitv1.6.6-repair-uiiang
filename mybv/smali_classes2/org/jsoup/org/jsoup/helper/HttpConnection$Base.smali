.class abstract Lorg/jsoup/helper/HttpConnection$Base;
.super Ljava/lang/Object;
.source "HttpConnection.java"

# interfaces
.implements Lorg/jsoup/Connection$Base;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/helper/HttpConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "Base"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/jsoup/Connection$Base",
        "<TT;>;>",
        "Ljava/lang/Object;",
        "Lorg/jsoup/Connection$Base",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final UnsetUrl:Ljava/net/URL;


# instance fields
.field cookies:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field method:Lorg/jsoup/Connection$Method;

.field url:Ljava/net/URL;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 402
    :try_start_0
    new-instance v1, Ljava/net/URL;

    const-string v2, "http://undefined/"

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    sput-object v1, Lorg/jsoup/helper/HttpConnection$Base;->UnsetUrl:Ljava/net/URL;
    :try_end_9
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_9} :catch_a

    .line 406
    return-void

    .line 403
    :catch_a
    move-exception v0

    .line 404
    .local v0, "e":Ljava/net/MalformedURLException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 413
    .local p0, "this":Lorg/jsoup/helper/HttpConnection$Base;, "Lorg/jsoup/helper/HttpConnection$Base<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 408
    sget-object v0, Lorg/jsoup/helper/HttpConnection$Base;->UnsetUrl:Ljava/net/URL;

    iput-object v0, p0, Lorg/jsoup/helper/HttpConnection$Base;->url:Ljava/net/URL;

    .line 409
    sget-object v0, Lorg/jsoup/Connection$Method;->GET:Lorg/jsoup/Connection$Method;

    iput-object v0, p0, Lorg/jsoup/helper/HttpConnection$Base;->method:Lorg/jsoup/Connection$Method;

    .line 414
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/jsoup/helper/HttpConnection$Base;->headers:Ljava/util/Map;

    .line 415
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/jsoup/helper/HttpConnection$Base;->cookies:Ljava/util/Map;

    .line 416
    return-void
.end method

.method synthetic constructor <init>(Lorg/jsoup/helper/HttpConnection$1;)V
    .registers 2
    .param p1, "x0"    # Lorg/jsoup/helper/HttpConnection$1;

    .prologue
    .line 398
    .local p0, "this":Lorg/jsoup/helper/HttpConnection$Base;, "Lorg/jsoup/helper/HttpConnection$Base<TT;>;"
    invoke-direct {p0}, Lorg/jsoup/helper/HttpConnection$Base;-><init>()V

    return-void
.end method

.method private constructor <init>(Lorg/jsoup/helper/HttpConnection$Base;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jsoup/helper/HttpConnection$Base",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 418
    .local p0, "this":Lorg/jsoup/helper/HttpConnection$Base;, "Lorg/jsoup/helper/HttpConnection$Base<TT;>;"
    .local p1, "copy":Lorg/jsoup/helper/HttpConnection$Base;, "Lorg/jsoup/helper/HttpConnection$Base<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 408
    sget-object v1, Lorg/jsoup/helper/HttpConnection$Base;->UnsetUrl:Ljava/net/URL;

    iput-object v1, p0, Lorg/jsoup/helper/HttpConnection$Base;->url:Ljava/net/URL;

    .line 409
    sget-object v1, Lorg/jsoup/Connection$Method;->GET:Lorg/jsoup/Connection$Method;

    iput-object v1, p0, Lorg/jsoup/helper/HttpConnection$Base;->method:Lorg/jsoup/Connection$Method;

    .line 419
    iget-object v1, p1, Lorg/jsoup/helper/HttpConnection$Base;->url:Ljava/net/URL;

    iput-object v1, p0, Lorg/jsoup/helper/HttpConnection$Base;->url:Ljava/net/URL;

    .line 420
    iget-object v1, p1, Lorg/jsoup/helper/HttpConnection$Base;->method:Lorg/jsoup/Connection$Method;

    iput-object v1, p0, Lorg/jsoup/helper/HttpConnection$Base;->method:Lorg/jsoup/Connection$Method;

    .line 421
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Lorg/jsoup/helper/HttpConnection$Base;->headers:Ljava/util/Map;

    .line 422
    iget-object v1, p1, Lorg/jsoup/helper/HttpConnection$Base;->headers:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_24
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_47

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 423
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    iget-object v4, p0, Lorg/jsoup/helper/HttpConnection$Base;->headers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-direct {v5, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v4, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_24

    .line 425
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    :cond_47
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Lorg/jsoup/helper/HttpConnection$Base;->cookies:Ljava/util/Map;

    iget-object v1, p0, Lorg/jsoup/helper/HttpConnection$Base;->cookies:Ljava/util/Map;

    iget-object v2, p1, Lorg/jsoup/helper/HttpConnection$Base;->cookies:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 426
    return-void
.end method

.method synthetic constructor <init>(Lorg/jsoup/helper/HttpConnection$Base;Lorg/jsoup/helper/HttpConnection$1;)V
    .registers 3
    .param p1, "x0"    # Lorg/jsoup/helper/HttpConnection$Base;
    .param p2, "x1"    # Lorg/jsoup/helper/HttpConnection$1;

    .prologue
    .line 398
    .local p0, "this":Lorg/jsoup/helper/HttpConnection$Base;, "Lorg/jsoup/helper/HttpConnection$Base<TT;>;"
    invoke-direct {p0, p1}, Lorg/jsoup/helper/HttpConnection$Base;-><init>(Lorg/jsoup/helper/HttpConnection$Base;)V

    return-void
.end method

.method private static fixHeaderEncoding(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "val"    # Ljava/lang/String;

    .prologue
    .line 484
    # getter for: Lorg/jsoup/helper/HttpConnection;->ISO_8859_1:Ljava/nio/charset/Charset;
    invoke-static {}, Lorg/jsoup/helper/HttpConnection;->access$200()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 485
    .local v0, "bytes":[B
    invoke-static {v0}, Lorg/jsoup/helper/HttpConnection$Base;->looksLikeUtf8([B)Z

    move-result v1

    if-nez v1, :cond_f

    .line 487
    .end local p0    # "val":Ljava/lang/String;
    :goto_e
    return-object p0

    .restart local p0    # "val":Ljava/lang/String;
    :cond_f
    new-instance p0, Ljava/lang/String;

    .end local p0    # "val":Ljava/lang/String;
    # getter for: Lorg/jsoup/helper/HttpConnection;->UTF_8:Ljava/nio/charset/Charset;
    invoke-static {}, Lorg/jsoup/helper/HttpConnection;->access$300()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_e
.end method

.method private getHeadersCaseInsensitive(Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 583
    .local p0, "this":Lorg/jsoup/helper/HttpConnection$Base;, "Lorg/jsoup/helper/HttpConnection$Base<TT;>;"
    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 585
    iget-object v1, p0, Lorg/jsoup/helper/HttpConnection$Base;->headers:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 586
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 587
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 590
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    :goto_2b
    return-object v1

    :cond_2c
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_2b
.end method

.method private static looksLikeUtf8([B)Z
    .registers 9
    .param p0, "input"    # [B

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 491
    const/4 v1, 0x0

    .line 493
    .local v1, "i":I
    array-length v6, p0

    const/4 v7, 0x3

    if-lt v6, v7, :cond_21

    aget-byte v6, p0, v4

    and-int/lit16 v6, v6, 0xff

    const/16 v7, 0xef

    if-ne v6, v7, :cond_21

    aget-byte v6, p0, v5

    and-int/lit16 v6, v6, 0xff

    const/16 v7, 0xbb

    if-ne v6, v7, :cond_21

    const/4 v6, 0x2

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    const/16 v7, 0xbf

    if-ne v6, v7, :cond_21

    .line 497
    const/4 v1, 0x3

    .line 501
    :cond_21
    array-length v2, p0

    .local v2, "j":I
    :goto_22
    if-ge v1, v2, :cond_58

    .line 502
    aget-byte v3, p0, v1

    .line 503
    .local v3, "o":I
    and-int/lit16 v6, v3, 0x80

    if-nez v6, :cond_2d

    .line 501
    :cond_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    .line 508
    :cond_2d
    and-int/lit16 v6, v3, 0xe0

    const/16 v7, 0xc0

    if-ne v6, v7, :cond_39

    .line 509
    add-int/lit8 v0, v1, 0x1

    .line 518
    .local v0, "end":I
    :goto_35
    array-length v6, p0

    if-lt v0, v6, :cond_4b

    .line 529
    .end local v0    # "end":I
    .end local v3    # "o":I
    :cond_38
    :goto_38
    return v4

    .line 510
    .restart local v3    # "o":I
    :cond_39
    and-int/lit16 v6, v3, 0xf0

    const/16 v7, 0xe0

    if-ne v6, v7, :cond_42

    .line 511
    add-int/lit8 v0, v1, 0x2

    .restart local v0    # "end":I
    goto :goto_35

    .line 512
    .end local v0    # "end":I
    :cond_42
    and-int/lit16 v6, v3, 0xf8

    const/16 v7, 0xf0

    if-ne v6, v7, :cond_38

    .line 513
    add-int/lit8 v0, v1, 0x3

    .restart local v0    # "end":I
    goto :goto_35

    .line 521
    :cond_4b
    if-ge v1, v0, :cond_2a

    .line 522
    add-int/lit8 v1, v1, 0x1

    .line 523
    aget-byte v3, p0, v1

    .line 524
    and-int/lit16 v6, v3, 0xc0

    const/16 v7, 0x80

    if-eq v6, v7, :cond_4b

    goto :goto_38

    .end local v0    # "end":I
    .end local v3    # "o":I
    :cond_58
    move v4, v5

    .line 529
    goto :goto_38
.end method

.method private scanHeaders(Ljava/lang/String;)Ljava/util/Map$Entry;
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 594
    .local p0, "this":Lorg/jsoup/helper/HttpConnection$Base;, "Lorg/jsoup/helper/HttpConnection$Base<TT;>;"
    invoke-static {p1}, Lorg/jsoup/internal/Normalizer;->lowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 595
    .local v1, "lc":Ljava/lang/String;
    iget-object v2, p0, Lorg/jsoup/helper/HttpConnection$Base;->headers:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 596
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lorg/jsoup/internal/Normalizer;->lowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 599
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    :goto_2a
    return-object v0

    :cond_2b
    const/4 v0, 0x0

    goto :goto_2a
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/Connection$Base;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 463
    .local p0, "this":Lorg/jsoup/helper/HttpConnection$Base;, "Lorg/jsoup/helper/HttpConnection$Base<TT;>;"
    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 465
    if-nez p2, :cond_7

    const-string p2, ""

    .line 467
    :cond_7
    invoke-virtual {p0, p1}, Lorg/jsoup/helper/HttpConnection$Base;->headers(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 468
    .local v0, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 469
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 470
    .restart local v0    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lorg/jsoup/helper/HttpConnection$Base;->headers:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    :cond_1b
    invoke-static {p2}, Lorg/jsoup/helper/HttpConnection$Base;->fixHeaderEncoding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 474
    return-object p0
.end method

.method public cookie(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 603
    .local p0, "this":Lorg/jsoup/helper/HttpConnection$Base;, "Lorg/jsoup/helper/HttpConnection$Base<TT;>;"
    const-string v0, "Cookie name must not be empty"

    invoke-static {p1, v0}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection$Base;->cookies:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public cookie(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/Connection$Base;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 608
    .local p0, "this":Lorg/jsoup/helper/HttpConnection$Base;, "Lorg/jsoup/helper/HttpConnection$Base<TT;>;"
    const-string v0, "Cookie name must not be empty"

    invoke-static {p1, v0}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    const-string v0, "Cookie value must not be null"

    invoke-static {p2, v0}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 610
    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection$Base;->cookies:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 611
    return-object p0
.end method

.method public cookies()Ljava/util/Map;
    .registers 2
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
    .line 626
    .local p0, "this":Lorg/jsoup/helper/HttpConnection$Base;, "Lorg/jsoup/helper/HttpConnection$Base<TT;>;"
    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection$Base;->cookies:Ljava/util/Map;

    return-object v0
.end method

.method public hasCookie(Ljava/lang/String;)Z
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 615
    .local p0, "this":Lorg/jsoup/helper/HttpConnection$Base;, "Lorg/jsoup/helper/HttpConnection$Base<TT;>;"
    const-string v0, "Cookie name must not be empty"

    invoke-static {p1, v0}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection$Base;->cookies:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasHeader(Ljava/lang/String;)Z
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 540
    .local p0, "this":Lorg/jsoup/helper/HttpConnection$Base;, "Lorg/jsoup/helper/HttpConnection$Base<TT;>;"
    const-string v0, "Header name must not be empty"

    invoke-static {p1, v0}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    invoke-direct {p0, p1}, Lorg/jsoup/helper/HttpConnection$Base;->getHeadersCaseInsensitive(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    const/4 v0, 0x1

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public hasHeaderWithValue(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 548
    .local p0, "this":Lorg/jsoup/helper/HttpConnection$Base;, "Lorg/jsoup/helper/HttpConnection$Base<TT;>;"
    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 549
    invoke-static {p2}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 550
    invoke-virtual {p0, p1}, Lorg/jsoup/helper/HttpConnection$Base;->headers(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 551
    .local v1, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_22

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 552
    .local v0, "candidate":Ljava/lang/String;
    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 553
    const/4 v2, 0x1

    .line 555
    .end local v0    # "candidate":Ljava/lang/String;
    :goto_21
    return v2

    :cond_22
    const/4 v2, 0x0

    goto :goto_21
.end method

.method public header(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 451
    .local p0, "this":Lorg/jsoup/helper/HttpConnection$Base;, "Lorg/jsoup/helper/HttpConnection$Base<TT;>;"
    const-string v1, "Header name must not be null"

    invoke-static {p1, v1}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 452
    invoke-direct {p0, p1}, Lorg/jsoup/helper/HttpConnection$Base;->getHeadersCaseInsensitive(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 453
    .local v0, "vals":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_16

    .line 455
    const-string v1, ", "

    invoke-static {v0, v1}, Lorg/jsoup/internal/StringUtil;->join(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 458
    :goto_15
    return-object v1

    :cond_16
    const/4 v1, 0x0

    goto :goto_15
.end method

.method public header(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/Connection$Base;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 533
    .local p0, "this":Lorg/jsoup/helper/HttpConnection$Base;, "Lorg/jsoup/helper/HttpConnection$Base<TT;>;"
    const-string v0, "Header name must not be empty"

    invoke-static {p1, v0}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    invoke-virtual {p0, p1}, Lorg/jsoup/helper/HttpConnection$Base;->removeHeader(Ljava/lang/String;)Lorg/jsoup/Connection$Base;

    .line 535
    invoke-virtual {p0, p1, p2}, Lorg/jsoup/helper/HttpConnection$Base;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/Connection$Base;

    .line 536
    return-object p0
.end method

.method public headers(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 479
    .local p0, "this":Lorg/jsoup/helper/HttpConnection$Base;, "Lorg/jsoup/helper/HttpConnection$Base<TT;>;"
    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 480
    invoke-direct {p0, p1}, Lorg/jsoup/helper/HttpConnection$Base;->getHeadersCaseInsensitive(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public headers()Ljava/util/Map;
    .registers 7
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
    .line 567
    .local p0, "this":Lorg/jsoup/helper/HttpConnection$Base;, "Lorg/jsoup/helper/HttpConnection$Base<TT;>;"
    new-instance v2, Ljava/util/LinkedHashMap;

    iget-object v4, p0, Lorg/jsoup/helper/HttpConnection$Base;->headers:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 568
    .local v2, "map":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v4, p0, Lorg/jsoup/helper/HttpConnection$Base;->headers:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_15
    :goto_15
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 569
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 570
    .local v1, "header":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 571
    .local v3, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_15

    .line 572
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v1, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_15

    .line 574
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v1    # "header":Ljava/lang/String;
    .end local v3    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3e
    return-object v2
.end method

.method public method(Lorg/jsoup/Connection$Method;)Lorg/jsoup/Connection$Base;
    .registers 3
    .param p1, "method"    # Lorg/jsoup/Connection$Method;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jsoup/Connection$Method;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 445
    .local p0, "this":Lorg/jsoup/helper/HttpConnection$Base;, "Lorg/jsoup/helper/HttpConnection$Base<TT;>;"
    const-string v0, "Method must not be null"

    invoke-static {p1, v0}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 446
    iput-object p1, p0, Lorg/jsoup/helper/HttpConnection$Base;->method:Lorg/jsoup/Connection$Method;

    .line 447
    return-object p0
.end method

.method public method()Lorg/jsoup/Connection$Method;
    .registers 2

    .prologue
    .line 441
    .local p0, "this":Lorg/jsoup/helper/HttpConnection$Base;, "Lorg/jsoup/helper/HttpConnection$Base<TT;>;"
    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection$Base;->method:Lorg/jsoup/Connection$Method;

    return-object v0
.end method

.method public multiHeaders()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 579
    .local p0, "this":Lorg/jsoup/helper/HttpConnection$Base;, "Lorg/jsoup/helper/HttpConnection$Base<TT;>;"
    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection$Base;->headers:Ljava/util/Map;

    return-object v0
.end method

.method public removeCookie(Ljava/lang/String;)Lorg/jsoup/Connection$Base;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 620
    .local p0, "this":Lorg/jsoup/helper/HttpConnection$Base;, "Lorg/jsoup/helper/HttpConnection$Base<TT;>;"
    const-string v0, "Cookie name must not be empty"

    invoke-static {p1, v0}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection$Base;->cookies:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 622
    return-object p0
.end method

.method public removeHeader(Ljava/lang/String;)Lorg/jsoup/Connection$Base;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 559
    .local p0, "this":Lorg/jsoup/helper/HttpConnection$Base;, "Lorg/jsoup/helper/HttpConnection$Base<TT;>;"
    const-string v1, "Header name must not be empty"

    invoke-static {p1, v1}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    invoke-direct {p0, p1}, Lorg/jsoup/helper/HttpConnection$Base;->scanHeaders(Ljava/lang/String;)Ljava/util/Map$Entry;

    move-result-object v0

    .line 561
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    if-eqz v0, :cond_14

    .line 562
    iget-object v1, p0, Lorg/jsoup/helper/HttpConnection$Base;->headers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 563
    :cond_14
    return-object p0
.end method

.method public url()Ljava/net/URL;
    .registers 3

    .prologue
    .line 429
    .local p0, "this":Lorg/jsoup/helper/HttpConnection$Base;, "Lorg/jsoup/helper/HttpConnection$Base<TT;>;"
    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection$Base;->url:Ljava/net/URL;

    sget-object v1, Lorg/jsoup/helper/HttpConnection$Base;->UnsetUrl:Ljava/net/URL;

    if-ne v0, v1, :cond_e

    .line 430
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "URL not set. Make sure to call #url(...) before executing the request."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 431
    :cond_e
    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection$Base;->url:Ljava/net/URL;

    return-object v0
.end method

.method public url(Ljava/net/URL;)Lorg/jsoup/Connection$Base;
    .registers 3
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 435
    .local p0, "this":Lorg/jsoup/helper/HttpConnection$Base;, "Lorg/jsoup/helper/HttpConnection$Base<TT;>;"
    const-string v0, "URL must not be null"

    invoke-static {p1, v0}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 436
    # invokes: Lorg/jsoup/helper/HttpConnection;->punyUrl(Ljava/net/URL;)Ljava/net/URL;
    invoke-static {p1}, Lorg/jsoup/helper/HttpConnection;->access$100(Ljava/net/URL;)Ljava/net/URL;

    move-result-object v0

    iput-object v0, p0, Lorg/jsoup/helper/HttpConnection$Base;->url:Ljava/net/URL;

    .line 437
    return-object p0
.end method
