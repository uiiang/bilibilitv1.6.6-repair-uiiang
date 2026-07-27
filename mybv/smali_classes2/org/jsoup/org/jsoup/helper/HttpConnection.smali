.class public Lorg/jsoup/helper/HttpConnection;
.super Ljava/lang/Object;
.source "HttpConnection.java"

# interfaces
.implements Lorg/jsoup/Connection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jsoup/helper/HttpConnection$Request;,
        Lorg/jsoup/helper/HttpConnection$Response;,
        Lorg/jsoup/helper/HttpConnection$KeyVal;,
        Lorg/jsoup/helper/HttpConnection$Base;
    }
.end annotation


# static fields
.field public static final CONTENT_ENCODING:Ljava/lang/String; = "Content-Encoding"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "Content-Type"

.field public static final DEFAULT_UA:Ljava/lang/String; = "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36"

.field private static final DefaultUploadType:Ljava/lang/String; = "application/octet-stream"

.field public static final FORM_URL_ENCODED:Ljava/lang/String; = "application/x-www-form-urlencoded"

.field private static final HTTP_TEMP_REDIR:I = 0x133

.field private static final ISO_8859_1:Ljava/nio/charset/Charset;

.field public static final MULTIPART_FORM_DATA:Ljava/lang/String; = "multipart/form-data"

.field private static final USER_AGENT:Ljava/lang/String; = "User-Agent"

.field private static final UTF_8:Ljava/nio/charset/Charset;


# instance fields
.field private req:Lorg/jsoup/helper/HttpConnection$Request;

.field private res:Lorg/jsoup/Connection$Response;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 71
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lorg/jsoup/helper/HttpConnection;->UTF_8:Ljava/nio/charset/Charset;

    .line 72
    const-string v0, "ISO-8859-1"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lorg/jsoup/helper/HttpConnection;->ISO_8859_1:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    new-instance v0, Lorg/jsoup/helper/HttpConnection$Request;

    invoke-direct {v0}, Lorg/jsoup/helper/HttpConnection$Request;-><init>()V

    iput-object v0, p0, Lorg/jsoup/helper/HttpConnection;->req:Lorg/jsoup/helper/HttpConnection$Request;

    .line 101
    return-void
.end method

.method constructor <init>(Lorg/jsoup/helper/HttpConnection$Request;)V
    .registers 3
    .param p1, "copy"    # Lorg/jsoup/helper/HttpConnection$Request;

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    new-instance v0, Lorg/jsoup/helper/HttpConnection$Request;

    invoke-direct {v0, p1}, Lorg/jsoup/helper/HttpConnection$Request;-><init>(Lorg/jsoup/helper/HttpConnection$Request;)V

    iput-object v0, p0, Lorg/jsoup/helper/HttpConnection;->req:Lorg/jsoup/helper/HttpConnection$Request;

    .line 109
    return-void
.end method

.method private constructor <init>(Lorg/jsoup/helper/HttpConnection$Request;Lorg/jsoup/helper/HttpConnection$Response;)V
    .registers 3
    .param p1, "req"    # Lorg/jsoup/helper/HttpConnection$Request;
    .param p2, "res"    # Lorg/jsoup/helper/HttpConnection$Response;

    .prologue
    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    iput-object p1, p0, Lorg/jsoup/helper/HttpConnection;->req:Lorg/jsoup/helper/HttpConnection$Request;

    .line 173
    iput-object p2, p0, Lorg/jsoup/helper/HttpConnection;->res:Lorg/jsoup/Connection$Response;

    .line 174
    return-void
.end method

.method synthetic constructor <init>(Lorg/jsoup/helper/HttpConnection$Request;Lorg/jsoup/helper/HttpConnection$Response;Lorg/jsoup/helper/HttpConnection$1;)V
    .registers 4
    .param p1, "x0"    # Lorg/jsoup/helper/HttpConnection$Request;
    .param p2, "x1"    # Lorg/jsoup/helper/HttpConnection$Response;
    .param p3, "x2"    # Lorg/jsoup/helper/HttpConnection$1;

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lorg/jsoup/helper/HttpConnection;-><init>(Lorg/jsoup/helper/HttpConnection$Request;Lorg/jsoup/helper/HttpConnection$Response;)V

    return-void
.end method

.method static synthetic access$100(Ljava/net/URL;)Ljava/net/URL;
    .registers 2
    .param p0, "x0"    # Ljava/net/URL;

    .prologue
    .line 57
    invoke-static {p0}, Lorg/jsoup/helper/HttpConnection;->punyUrl(Ljava/net/URL;)Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 57
    invoke-static {p0}, Lorg/jsoup/helper/HttpConnection;->encodeMimeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200()Ljava/nio/charset/Charset;
    .registers 1

    .prologue
    .line 57
    sget-object v0, Lorg/jsoup/helper/HttpConnection;->ISO_8859_1:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method static synthetic access$300()Ljava/nio/charset/Charset;
    .registers 1

    .prologue
    .line 57
    sget-object v0, Lorg/jsoup/helper/HttpConnection;->UTF_8:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method static synthetic access$900(Lorg/jsoup/Connection$Request;)Z
    .registers 2
    .param p0, "x0"    # Lorg/jsoup/Connection$Request;

    .prologue
    .line 57
    invoke-static {p0}, Lorg/jsoup/helper/HttpConnection;->needsMultipart(Lorg/jsoup/Connection$Request;)Z

    move-result v0

    return v0
.end method

.method public static connect(Ljava/lang/String;)Lorg/jsoup/Connection;
    .registers 2
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 80
    new-instance v0, Lorg/jsoup/helper/HttpConnection;

    invoke-direct {v0}, Lorg/jsoup/helper/HttpConnection;-><init>()V

    .line 81
    .local v0, "con":Lorg/jsoup/Connection;
    invoke-interface {v0, p0}, Lorg/jsoup/Connection;->url(Ljava/lang/String;)Lorg/jsoup/Connection;

    .line 82
    return-object v0
.end method

.method public static connect(Ljava/net/URL;)Lorg/jsoup/Connection;
    .registers 2
    .param p0, "url"    # Ljava/net/URL;

    .prologue
    .line 91
    new-instance v0, Lorg/jsoup/helper/HttpConnection;

    invoke-direct {v0}, Lorg/jsoup/helper/HttpConnection;-><init>()V

    .line 92
    .local v0, "con":Lorg/jsoup/Connection;
    invoke-interface {v0, p0}, Lorg/jsoup/Connection;->url(Ljava/net/URL;)Lorg/jsoup/Connection;

    .line 93
    return-object v0
.end method

.method private static encodeMimeName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "val"    # Ljava/lang/String;

    .prologue
    .line 158
    const-string v0, "\""

    const-string v1, "%22"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static encodeUrl(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 118
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 119
    .local v1, "u":Ljava/net/URL;
    invoke-static {v1}, Lorg/jsoup/helper/HttpConnection;->encodeUrl(Ljava/net/URL;)Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_e

    move-result-object p0

    .line 121
    .end local v1    # "u":Ljava/net/URL;
    .end local p0    # "url":Ljava/lang/String;
    :goto_d
    return-object p0

    .line 120
    .restart local p0    # "url":Ljava/lang/String;
    :catch_e
    move-exception v0

    .line 121
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_d
.end method

.method static encodeUrl(Ljava/net/URL;)Ljava/net/URL;
    .registers 6
    .param p0, "u"    # Ljava/net/URL;

    .prologue
    .line 126
    invoke-static {p0}, Lorg/jsoup/helper/HttpConnection;->punyUrl(Ljava/net/URL;)Ljava/net/URL;

    move-result-object p0

    .line 129
    :try_start_4
    invoke-virtual {p0}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v2

    .line 130
    .local v2, "urlS":Ljava/lang/String;
    const-string v3, " "

    const-string v4, "%20"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 131
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 132
    .local v1, "uri":Ljava/net/URI;
    new-instance v3, Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_1e
    .catch Ljava/net/URISyntaxException; {:try_start_4 .. :try_end_1e} :catch_20
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_1e} :catch_22

    move-object p0, v3

    .line 135
    .end local v1    # "uri":Ljava/net/URI;
    .end local v2    # "urlS":Ljava/lang/String;
    .end local p0    # "u":Ljava/net/URL;
    :goto_1f
    return-object p0

    .line 133
    .restart local p0    # "u":Ljava/net/URL;
    :catch_20
    move-exception v0

    .line 135
    .local v0, "e":Ljava/lang/Exception;
    :goto_21
    goto :goto_1f

    .line 133
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_22
    move-exception v0

    goto :goto_21
.end method

.method private static needsMultipart(Lorg/jsoup/Connection$Request;)Z
    .registers 4
    .param p0, "req"    # Lorg/jsoup/Connection$Request;

    .prologue
    .line 1255
    invoke-interface {p0}, Lorg/jsoup/Connection$Request;->data()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/Connection$KeyVal;

    .line 1256
    .local v0, "keyVal":Lorg/jsoup/Connection$KeyVal;
    invoke-interface {v0}, Lorg/jsoup/Connection$KeyVal;->hasInputStream()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1257
    const/4 v1, 0x1

    .line 1259
    .end local v0    # "keyVal":Lorg/jsoup/Connection$KeyVal;
    :goto_1b
    return v1

    :cond_1c
    const/4 v1, 0x0

    goto :goto_1b
.end method

.method private static punyUrl(Ljava/net/URL;)Ljava/net/URL;
    .registers 7
    .param p0, "url"    # Ljava/net/URL;

    .prologue
    .line 145
    invoke-virtual {p0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/jsoup/internal/StringUtil;->isAscii(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_24

    .line 147
    :try_start_a
    invoke-virtual {p0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/net/IDN;->toASCII(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 148
    .local v1, "puny":Ljava/lang/String;
    new-instance v2, Ljava/net/URL;

    invoke-virtual {p0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Ljava/net/URL;->getPort()I

    move-result v4

    invoke-virtual {p0}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v1, v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_23
    .catch Ljava/net/MalformedURLException; {:try_start_a .. :try_end_23} :catch_25

    .end local p0    # "url":Ljava/net/URL;
    .local v2, "url":Ljava/net/URL;
    move-object p0, v2

    .line 154
    .end local v1    # "puny":Ljava/lang/String;
    .end local v2    # "url":Ljava/net/URL;
    .restart local p0    # "url":Ljava/net/URL;
    :cond_24
    return-object p0

    .line 149
    :catch_25
    move-exception v0

    .line 151
    .local v0, "e":Ljava/net/MalformedURLException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method


# virtual methods
.method public cookie(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/Connection;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 322
    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection;->req:Lorg/jsoup/helper/HttpConnection$Request;

    invoke-virtual {v0, p1, p2}, Lorg/jsoup/helper/HttpConnection$Request;->cookie(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/Connection$Base;

    .line 323
    return-object p0
.end method

.method public cookieStore()Ljava/net/CookieStore;
    .registers 2

    .prologue
    .line 343
    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection;->req:Lorg/jsoup/helper/HttpConnection$Request;

    # getter for: Lorg/jsoup/helper/HttpConnection$Request;->cookieManager:Ljava/net/CookieManager;
    invoke-static {v0}, Lorg/jsoup/helper/HttpConnection$Request;->access$000(Lorg/jsoup/helper/HttpConnection$Request;)Ljava/net/CookieManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/CookieManager;->getCookieStore()Ljava/net/CookieStore;

    move-result-object v0

    return-object v0
.end method

.method public cookieStore(Ljava/net/CookieStore;)Lorg/jsoup/Connection;
    .registers 5
    .param p1, "cookieStore"    # Ljava/net/CookieStore;

    .prologue
    .line 337
    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection;->req:Lorg/jsoup/helper/HttpConnection$Request;

    new-instance v1, Ljava/net/CookieManager;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Ljava/net/CookieManager;-><init>(Ljava/net/CookieStore;Ljava/net/CookiePolicy;)V

    # setter for: Lorg/jsoup/helper/HttpConnection$Request;->cookieManager:Ljava/net/CookieManager;
    invoke-static {v0, v1}, Lorg/jsoup/helper/HttpConnection$Request;->access$002(Lorg/jsoup/helper/HttpConnection$Request;Ljava/net/CookieManager;)Ljava/net/CookieManager;

    .line 338
    return-object p0
.end method

.method public cookies(Ljava/util/Map;)Lorg/jsoup/Connection;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/jsoup/Connection;"
        }
    .end annotation

    .prologue
    .line 327
    .local p1, "cookies":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "Cookie map must not be null"

    invoke-static {p1, v1}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 328
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 329
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v4, p0, Lorg/jsoup/helper/HttpConnection;->req:Lorg/jsoup/helper/HttpConnection$Request;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v1, v2}, Lorg/jsoup/helper/HttpConnection$Request;->cookie(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/Connection$Base;

    goto :goto_d

    .line 331
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2b
    return-object p0
.end method

.method public data(Ljava/lang/String;)Lorg/jsoup/Connection$KeyVal;
    .registers 5
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 295
    const-string v1, "Data key must not be empty"

    invoke-static {p1, v1}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    invoke-virtual {p0}, Lorg/jsoup/helper/HttpConnection;->request()Lorg/jsoup/Connection$Request;

    move-result-object v1

    invoke-interface {v1}, Lorg/jsoup/Connection$Request;->data()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/Connection$KeyVal;

    .line 297
    .local v0, "keyVal":Lorg/jsoup/Connection$KeyVal;
    invoke-interface {v0}, Lorg/jsoup/Connection$KeyVal;->key()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 300
    .end local v0    # "keyVal":Lorg/jsoup/Connection$KeyVal;
    :goto_27
    return-object v0

    :cond_28
    const/4 v0, 0x0

    goto :goto_27
.end method

.method public data(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/Connection;
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 245
    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection;->req:Lorg/jsoup/helper/HttpConnection$Request;

    invoke-static {p1, p2}, Lorg/jsoup/helper/HttpConnection$KeyVal;->create(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/helper/HttpConnection$KeyVal;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jsoup/helper/HttpConnection$Request;->data(Lorg/jsoup/Connection$KeyVal;)Lorg/jsoup/helper/HttpConnection$Request;

    .line 246
    return-object p0
.end method

.method public data(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Lorg/jsoup/Connection;
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "inputStream"    # Ljava/io/InputStream;

    .prologue
    .line 255
    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection;->req:Lorg/jsoup/helper/HttpConnection$Request;

    invoke-static {p1, p2, p3}, Lorg/jsoup/helper/HttpConnection$KeyVal;->create(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Lorg/jsoup/helper/HttpConnection$KeyVal;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jsoup/helper/HttpConnection$Request;->data(Lorg/jsoup/Connection$KeyVal;)Lorg/jsoup/helper/HttpConnection$Request;

    .line 256
    return-object p0
.end method

.method public data(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)Lorg/jsoup/Connection;
    .registers 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "inputStream"    # Ljava/io/InputStream;
    .param p4, "contentType"    # Ljava/lang/String;

    .prologue
    .line 261
    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection;->req:Lorg/jsoup/helper/HttpConnection$Request;

    invoke-static {p1, p2, p3}, Lorg/jsoup/helper/HttpConnection$KeyVal;->create(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Lorg/jsoup/helper/HttpConnection$KeyVal;

    move-result-object v1

    invoke-virtual {v1, p4}, Lorg/jsoup/helper/HttpConnection$KeyVal;->contentType(Ljava/lang/String;)Lorg/jsoup/Connection$KeyVal;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jsoup/helper/HttpConnection$Request;->data(Lorg/jsoup/Connection$KeyVal;)Lorg/jsoup/helper/HttpConnection$Request;

    .line 262
    return-object p0
.end method

.method public data(Ljava/util/Collection;)Lorg/jsoup/Connection;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/jsoup/Connection$KeyVal;",
            ">;)",
            "Lorg/jsoup/Connection;"
        }
    .end annotation

    .prologue
    .line 287
    .local p1, "data":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/jsoup/Connection$KeyVal;>;"
    const-string v1, "Data collection must not be null"

    invoke-static {p1, v1}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 288
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/Connection$KeyVal;

    .line 289
    .local v0, "entry":Lorg/jsoup/Connection$KeyVal;
    iget-object v2, p0, Lorg/jsoup/helper/HttpConnection;->req:Lorg/jsoup/helper/HttpConnection$Request;

    invoke-virtual {v2, v0}, Lorg/jsoup/helper/HttpConnection$Request;->data(Lorg/jsoup/Connection$KeyVal;)Lorg/jsoup/helper/HttpConnection$Request;

    goto :goto_9

    .line 291
    .end local v0    # "entry":Lorg/jsoup/Connection$KeyVal;
    :cond_1b
    return-object p0
.end method

.method public data(Ljava/util/Map;)Lorg/jsoup/Connection;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/jsoup/Connection;"
        }
    .end annotation

    .prologue
    .line 266
    .local p1, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "Data map must not be null"

    invoke-static {p1, v1}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 267
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 268
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v4, p0, Lorg/jsoup/helper/HttpConnection;->req:Lorg/jsoup/helper/HttpConnection$Request;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v1, v2}, Lorg/jsoup/helper/HttpConnection$KeyVal;->create(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/helper/HttpConnection$KeyVal;

    move-result-object v1

    invoke-virtual {v4, v1}, Lorg/jsoup/helper/HttpConnection$Request;->data(Lorg/jsoup/Connection$KeyVal;)Lorg/jsoup/helper/HttpConnection$Request;

    goto :goto_d

    .line 270
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2f
    return-object p0
.end method

.method public varargs data([Ljava/lang/String;)Lorg/jsoup/Connection;
    .registers 7
    .param p1, "keyvals"    # [Ljava/lang/String;

    .prologue
    .line 274
    const-string v3, "Data key value pairs must not be null"

    invoke-static {p1, v3}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 275
    array-length v3, p1

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_30

    const/4 v3, 0x1

    :goto_b
    const-string v4, "Must supply an even number of key value pairs"

    invoke-static {v3, v4}, Lorg/jsoup/helper/Validate;->isTrue(ZLjava/lang/String;)V

    .line 276
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_11
    array-length v3, p1

    if-ge v0, v3, :cond_32

    .line 277
    aget-object v1, p1, v0

    .line 278
    .local v1, "key":Ljava/lang/String;
    add-int/lit8 v3, v0, 0x1

    aget-object v2, p1, v3

    .line 279
    .local v2, "value":Ljava/lang/String;
    const-string v3, "Data key must not be empty"

    invoke-static {v1, v3}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    const-string v3, "Data value must not be null"

    invoke-static {v2, v3}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 281
    iget-object v3, p0, Lorg/jsoup/helper/HttpConnection;->req:Lorg/jsoup/helper/HttpConnection$Request;

    invoke-static {v1, v2}, Lorg/jsoup/helper/HttpConnection$KeyVal;->create(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/helper/HttpConnection$KeyVal;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/jsoup/helper/HttpConnection$Request;->data(Lorg/jsoup/Connection$KeyVal;)Lorg/jsoup/helper/HttpConnection$Request;

    .line 276
    add-int/lit8 v0, v0, 0x2

    goto :goto_11

    .line 275
    .end local v0    # "i":I
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/String;
    :cond_30
    const/4 v3, 0x0

    goto :goto_b

    .line 283
    .restart local v0    # "i":I
    :cond_32
    return-object p0
.end method

.method public execute()Lorg/jsoup/Connection$Response;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 366
    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection;->req:Lorg/jsoup/helper/HttpConnection$Request;

    invoke-static {v0}, Lorg/jsoup/helper/HttpConnection$Response;->execute(Lorg/jsoup/helper/HttpConnection$Request;)Lorg/jsoup/helper/HttpConnection$Response;

    move-result-object v0

    iput-object v0, p0, Lorg/jsoup/helper/HttpConnection;->res:Lorg/jsoup/Connection$Response;

    .line 367
    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection;->res:Lorg/jsoup/Connection$Response;

    return-object v0
.end method

.method public followRedirects(Z)Lorg/jsoup/Connection;
    .registers 3
    .param p1, "followRedirects"    # Z

    .prologue
    .line 218
    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection;->req:Lorg/jsoup/helper/HttpConnection$Request;

    invoke-virtual {v0, p1}, Lorg/jsoup/helper/HttpConnection$Request;->followRedirects(Z)Lorg/jsoup/Connection$Request;

    .line 219
    return-object p0
.end method

.method public get()Lorg/jsoup/nodes/Document;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 352
    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection;->req:Lorg/jsoup/helper/HttpConnection$Request;

    sget-object v1, Lorg/jsoup/Connection$Method;->GET:Lorg/jsoup/Connection$Method;

    invoke-virtual {v0, v1}, Lorg/jsoup/helper/HttpConnection$Request;->method(Lorg/jsoup/Connection$Method;)Lorg/jsoup/Connection$Base;

    .line 353
    invoke-virtual {p0}, Lorg/jsoup/helper/HttpConnection;->execute()Lorg/jsoup/Connection$Response;

    .line 354
    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection;->res:Lorg/jsoup/Connection$Response;

    invoke-static {v0}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 355
    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection;->res:Lorg/jsoup/Connection$Response;

    invoke-interface {v0}, Lorg/jsoup/Connection$Response;->parse()Lorg/jsoup/nodes/Document;

    move-result-object v0

    return-object v0
.end method

.method public header(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/Connection;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 309
    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection;->req:Lorg/jsoup/helper/HttpConnection$Request;

    invoke-virtual {v0, p1, p2}, Lorg/jsoup/helper/HttpConnection$Request;->header(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/Connection$Base;

    .line 310
    return-object p0
.end method

.method public headers(Ljava/util/Map;)Lorg/jsoup/Connection;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/jsoup/Connection;"
        }
    .end annotation

    .prologue
    .line 314
    .local p1, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "Header map must not be null"

    invoke-static {p1, v1}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 315
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 316
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v4, p0, Lorg/jsoup/helper/HttpConnection;->req:Lorg/jsoup/helper/HttpConnection$Request;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v1, v2}, Lorg/jsoup/helper/HttpConnection$Request;->header(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/Connection$Base;

    goto :goto_d

    .line 318
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2b
    return-object p0
.end method

.method public ignoreContentType(Z)Lorg/jsoup/Connection;
    .registers 3
    .param p1, "ignoreContentType"    # Z

    .prologue
    .line 239
    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection;->req:Lorg/jsoup/helper/HttpConnection$Request;

    invoke-virtual {v0, p1}, Lorg/jsoup/helper/HttpConnection$Request;->ignoreContentType(Z)Lorg/jsoup/Connection$Request;

    .line 240
    return-object p0
.end method

.method public ignoreHttpErrors(Z)Lorg/jsoup/Connection;
    .registers 3
    .param p1, "ignoreHttpErrors"    # Z

    .prologue
    .line 234
    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection;->req:Lorg/jsoup/helper/HttpConnection$Request;

    invoke-virtual {v0, p1}, Lorg/jsoup/helper/HttpConnection$Request;->ignoreHttpErrors(Z)Lorg/jsoup/Connection$Request;

    .line 235
    return-object p0
.end method

.method public maxBodySize(I)Lorg/jsoup/Connection;
    .registers 3
    .param p1, "bytes"    # I

    .prologue
    .line 213
    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection;->req:Lorg/jsoup/helper/HttpConnection$Request;

    invoke-virtual {v0, p1}, Lorg/jsoup/helper/HttpConnection$Request;->maxBodySize(I)Lorg/jsoup/Connection$Request;

    .line 214
    return-object p0
.end method

.method public method(Lorg/jsoup/Connection$Method;)Lorg/jsoup/Connection;
    .registers 3
    .param p1, "method"    # Lorg/jsoup/Connection$Method;

    .prologue
    .line 229
    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection;->req:Lorg/jsoup/helper/HttpConnection$Request;

    invoke-virtual {v0, p1}, Lorg/jsoup/helper/HttpConnection$Request;->method(Lorg/jsoup/Connection$Method;)Lorg/jsoup/Connection$Base;

    .line 230
    return-object p0
.end method

.method public newRequest()Lorg/jsoup/Connection;
    .registers 3

    .prologue
    .line 167
    new-instance v0, Lorg/jsoup/helper/HttpConnection;

    iget-object v1, p0, Lorg/jsoup/helper/HttpConnection;->req:Lorg/jsoup/helper/HttpConnection$Request;

    invoke-direct {v0, v1}, Lorg/jsoup/helper/HttpConnection;-><init>(Lorg/jsoup/helper/HttpConnection$Request;)V

    return-object v0
.end method

.method public parser(Lorg/jsoup/parser/Parser;)Lorg/jsoup/Connection;
    .registers 3
    .param p1, "parser"    # Lorg/jsoup/parser/Parser;

    .prologue
    .line 347
    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection;->req:Lorg/jsoup/helper/HttpConnection$Request;

    invoke-virtual {v0, p1}, Lorg/jsoup/helper/HttpConnection$Request;->parser(Lorg/jsoup/parser/Parser;)Lorg/jsoup/helper/HttpConnection$Request;

    .line 348
    return-object p0
.end method

.method public post()Lorg/jsoup/nodes/Document;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 359
    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection;->req:Lorg/jsoup/helper/HttpConnection$Request;

    sget-object v1, Lorg/jsoup/Connection$Method;->POST:Lorg/jsoup/Connection$Method;

    invoke-virtual {v0, v1}, Lorg/jsoup/helper/HttpConnection$Request;->method(Lorg/jsoup/Connection$Method;)Lorg/jsoup/Connection$Base;

    .line 360
    invoke-virtual {p0}, Lorg/jsoup/helper/HttpConnection;->execute()Lorg/jsoup/Connection$Response;

    .line 361
    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection;->res:Lorg/jsoup/Connection$Response;

    invoke-static {v0}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 362
    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection;->res:Lorg/jsoup/Connection$Response;

    invoke-interface {v0}, Lorg/jsoup/Connection$Response;->parse()Lorg/jsoup/nodes/Document;

    move-result-object v0

    return-object v0
.end method

.method public postDataCharset(Ljava/lang/String;)Lorg/jsoup/Connection;
    .registers 3
    .param p1, "charset"    # Ljava/lang/String;

    .prologue
    .line 392
    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection;->req:Lorg/jsoup/helper/HttpConnection$Request;

    invoke-virtual {v0, p1}, Lorg/jsoup/helper/HttpConnection$Request;->postDataCharset(Ljava/lang/String;)Lorg/jsoup/Connection$Request;

    .line 393
    return-object p0
.end method

.method public proxy(Ljava/lang/String;I)Lorg/jsoup/Connection;
    .registers 4
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I

    .prologue
    .line 197
    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection;->req:Lorg/jsoup/helper/HttpConnection$Request;

    invoke-virtual {v0, p1, p2}, Lorg/jsoup/helper/HttpConnection$Request;->proxy(Ljava/lang/String;I)Lorg/jsoup/helper/HttpConnection$Request;

    .line 198
    return-object p0
.end method

.method public proxy(Ljava/net/Proxy;)Lorg/jsoup/Connection;
    .registers 3
    .param p1, "proxy"    # Ljava/net/Proxy;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 192
    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection;->req:Lorg/jsoup/helper/HttpConnection$Request;

    invoke-virtual {v0, p1}, Lorg/jsoup/helper/HttpConnection$Request;->proxy(Ljava/net/Proxy;)Lorg/jsoup/helper/HttpConnection$Request;

    .line 193
    return-object p0
.end method

.method public referrer(Ljava/lang/String;)Lorg/jsoup/Connection;
    .registers 4
    .param p1, "referrer"    # Ljava/lang/String;

    .prologue
    .line 223
    const-string v0, "Referrer must not be null"

    invoke-static {p1, v0}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 224
    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection;->req:Lorg/jsoup/helper/HttpConnection$Request;

    const-string v1, "Referer"

    invoke-virtual {v0, v1, p1}, Lorg/jsoup/helper/HttpConnection$Request;->header(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/Connection$Base;

    .line 225
    return-object p0
.end method

.method public request()Lorg/jsoup/Connection$Request;
    .registers 2

    .prologue
    .line 371
    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection;->req:Lorg/jsoup/helper/HttpConnection$Request;

    return-object v0
.end method

.method public request(Lorg/jsoup/Connection$Request;)Lorg/jsoup/Connection;
    .registers 2
    .param p1, "request"    # Lorg/jsoup/Connection$Request;

    .prologue
    .line 375
    check-cast p1, Lorg/jsoup/helper/HttpConnection$Request;

    .end local p1    # "request":Lorg/jsoup/Connection$Request;
    iput-object p1, p0, Lorg/jsoup/helper/HttpConnection;->req:Lorg/jsoup/helper/HttpConnection$Request;

    .line 376
    return-object p0
.end method

.method public requestBody(Ljava/lang/String;)Lorg/jsoup/Connection;
    .registers 3
    .param p1, "body"    # Ljava/lang/String;

    .prologue
    .line 304
    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection;->req:Lorg/jsoup/helper/HttpConnection$Request;

    invoke-virtual {v0, p1}, Lorg/jsoup/helper/HttpConnection$Request;->requestBody(Ljava/lang/String;)Lorg/jsoup/Connection$Request;

    .line 305
    return-object p0
.end method

.method public response()Lorg/jsoup/Connection$Response;
    .registers 3

    .prologue
    .line 380
    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection;->res:Lorg/jsoup/Connection$Response;

    if-nez v0, :cond_c

    .line 381
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must execute the request before getting a response."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 383
    :cond_c
    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection;->res:Lorg/jsoup/Connection$Response;

    return-object v0
.end method

.method public response(Lorg/jsoup/Connection$Response;)Lorg/jsoup/Connection;
    .registers 2
    .param p1, "response"    # Lorg/jsoup/Connection$Response;

    .prologue
    .line 387
    iput-object p1, p0, Lorg/jsoup/helper/HttpConnection;->res:Lorg/jsoup/Connection$Response;

    .line 388
    return-object p0
.end method

.method public sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)Lorg/jsoup/Connection;
    .registers 3
    .param p1, "sslSocketFactory"    # Ljavax/net/ssl/SSLSocketFactory;

    .prologue
    .line 250
    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection;->req:Lorg/jsoup/helper/HttpConnection$Request;

    invoke-virtual {v0, p1}, Lorg/jsoup/helper/HttpConnection$Request;->sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 251
    return-object p0
.end method

.method public timeout(I)Lorg/jsoup/Connection;
    .registers 3
    .param p1, "millis"    # I

    .prologue
    .line 208
    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection;->req:Lorg/jsoup/helper/HttpConnection$Request;

    invoke-virtual {v0, p1}, Lorg/jsoup/helper/HttpConnection$Request;->timeout(I)Lorg/jsoup/helper/HttpConnection$Request;

    .line 209
    return-object p0
.end method

.method public url(Ljava/lang/String;)Lorg/jsoup/Connection;
    .registers 6
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 182
    const-string v1, "Must supply a valid URL"

    invoke-static {p1, v1}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    :try_start_5
    iget-object v1, p0, Lorg/jsoup/helper/HttpConnection;->req:Lorg/jsoup/helper/HttpConnection$Request;

    new-instance v2, Ljava/net/URL;

    invoke-static {p1}, Lorg/jsoup/helper/HttpConnection;->encodeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/jsoup/helper/HttpConnection$Request;->url(Ljava/net/URL;)Lorg/jsoup/Connection$Base;
    :try_end_13
    .catch Ljava/net/MalformedURLException; {:try_start_5 .. :try_end_13} :catch_14

    .line 188
    return-object p0

    .line 185
    :catch_14
    move-exception v0

    .line 186
    .local v0, "e":Ljava/net/MalformedURLException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Malformed URL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public url(Ljava/net/URL;)Lorg/jsoup/Connection;
    .registers 3
    .param p1, "url"    # Ljava/net/URL;

    .prologue
    .line 177
    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection;->req:Lorg/jsoup/helper/HttpConnection$Request;

    invoke-virtual {v0, p1}, Lorg/jsoup/helper/HttpConnection$Request;->url(Ljava/net/URL;)Lorg/jsoup/Connection$Base;

    .line 178
    return-object p0
.end method

.method public userAgent(Ljava/lang/String;)Lorg/jsoup/Connection;
    .registers 4
    .param p1, "userAgent"    # Ljava/lang/String;

    .prologue
    .line 202
    const-string v0, "User agent must not be null"

    invoke-static {p1, v0}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 203
    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection;->req:Lorg/jsoup/helper/HttpConnection$Request;

    const-string v1, "User-Agent"

    invoke-virtual {v0, v1, p1}, Lorg/jsoup/helper/HttpConnection$Request;->header(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/Connection$Base;

    .line 204
    return-object p0
.end method
