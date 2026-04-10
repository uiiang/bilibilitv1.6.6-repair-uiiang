.class public Lmybl/WbiSignInterceptor;
.super Ljava/lang/Object;
.source "WbiSignInterceptor.java"

# interfaces
.implements Lokhttp3/Interceptor;


# static fields
.field private static final TAG:Ljava/lang/String; = "WbiSignInterceptor"

.field private static final WBI_PATHS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 14
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "/x/web-interface/popular/series/one"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "/x/web-interface/popular/series/list"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "/x/web-interface/popular/precious"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "/x/web-interface/wbi/view"

    aput-object v2, v0, v1

    sput-object v0, Lmybl/WbiSignInterceptor;->WBI_PATHS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private extractParams(Lokhttp3/HttpUrl;)Ljava/util/TreeMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/HttpUrl;",
            ")",
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 60
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    .line 61
    invoke-virtual {p1}, Lokhttp3/HttpUrl;->queryParameterNames()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_d
    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 62
    invoke-virtual {p1, v0}, Lokhttp3/HttpUrl;->queryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 63
    if-eqz v3, :cond_d

    .line 64
    invoke-virtual {v1, v0, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    .line 67
    :cond_23
    return-object v1
.end method

.method private needsWbiSign(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 51
    sget-object v2, Lmybl/WbiSignInterceptor;->WBI_PATHS:[Ljava/lang/String;

    array-length v3, v2

    move v1, v0

    :goto_5
    if-ge v1, v3, :cond_10

    aget-object v4, v2, v1

    .line 52
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 53
    const/4 v0, 0x1

    .line 56
    :cond_10
    return v0

    .line 51
    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_5
.end method


# virtual methods
.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 25
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v0

    .line 26
    invoke-virtual {v0}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v1

    .line 27
    invoke-virtual {v1}, Lokhttp3/HttpUrl;->encodedPath()Ljava/lang/String;

    move-result-object v2

    .line 29
    invoke-direct {p0, v2}, Lmybl/WbiSignInterceptor;->needsWbiSign(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_59

    .line 30
    invoke-direct {p0, v1}, Lmybl/WbiSignInterceptor;->extractParams(Lokhttp3/HttpUrl;)Ljava/util/TreeMap;

    move-result-object v2

    .line 31
    invoke-static {}, Lmybl/WbiSigner;->getInstance()Lmybl/WbiSigner;

    move-result-object v3

    invoke-virtual {v3, v2}, Lmybl/WbiSigner;->encWbiAndGetQuery(Ljava/util/TreeMap;)Ljava/lang/String;

    move-result-object v2

    .line 33
    if-eqz v2, :cond_59

    .line 34
    invoke-virtual {v1}, Lokhttp3/HttpUrl;->newBuilder()Lokhttp3/HttpUrl$Builder;

    move-result-object v1

    .line 35
    invoke-virtual {v1, v2}, Lokhttp3/HttpUrl$Builder;->query(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object v1

    .line 36
    invoke-virtual {v1}, Lokhttp3/HttpUrl$Builder;->build()Lokhttp3/HttpUrl;

    move-result-object v1

    .line 38
    invoke-virtual {v0}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object v0

    .line 39
    invoke-virtual {v0, v1}, Lokhttp3/Request$Builder;->url(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 40
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 42
    const-string v2, "WbiSignInterceptor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Signed URL: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    invoke-interface {p1, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v0

    .line 47
    :goto_58
    return-object v0

    :cond_59
    invoke-interface {p1, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v0

    goto :goto_58
.end method
