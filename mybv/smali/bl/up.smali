.class final Lbl/up;
.super Ljava/net/URLStreamHandler;
.source "BL"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/net/URLStreamHandler;-><init>()V

    return-void
.end method


# virtual methods
.method protected getDefaultPort()I
    .locals 1

    const/16 v0, 0x50

    return v0
.end method

.method protected openConnection(Ljava/net/URL;)Ljava/net/URLConnection;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    invoke-static {}, Lbl/us;->c()Lokhttp3/OkHttpClient;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    sget-object v2, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lokhttp3/OkHttpClient$Builder;->protocols(Ljava/util/List;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v1

    new-instance v0, Lcom/bilibili/lib/okhttp/huc/OkHttpURLConnection;

    invoke-direct {v0, p1, v1}, Lcom/bilibili/lib/okhttp/huc/OkHttpURLConnection;-><init>(Ljava/net/URL;Lokhttp3/OkHttpClient;)V

    return-object v0
.end method

.method protected openConnection(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/URLConnection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 31
    invoke-static {}, Lbl/us;->b()Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lokhttp3/OkHttpClient$Builder;->proxy(Ljava/net/Proxy;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p2

    sget-object v1, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p2, v1}, Lokhttp3/OkHttpClient$Builder;->protocols(Ljava/util/List;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p2

    .line 32
    new-instance v0, Lcom/bilibili/lib/okhttp/huc/OkHttpURLConnection;

    invoke-direct {v0, p1, p2}, Lcom/bilibili/lib/okhttp/huc/OkHttpURLConnection;-><init>(Ljava/net/URL;Lokhttp3/OkHttpClient;)V

    return-object v0
.end method
