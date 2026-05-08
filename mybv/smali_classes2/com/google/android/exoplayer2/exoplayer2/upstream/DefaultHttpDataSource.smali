.class public Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;
.super Lcom/google/android/exoplayer2/upstream/BaseDataSource;
.source "DefaultHttpDataSource.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/HttpDataSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$NullFilteringHeadersMap;,
        Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final DEFAULT_CONNECT_TIMEOUT_MILLIS:I = 0x1f40

.field public static final DEFAULT_READ_TIMEOUT_MILLIS:I = 0x1f40

.field private static final HTTP_STATUS_PERMANENT_REDIRECT:I = 0x134

.field private static final HTTP_STATUS_TEMPORARY_REDIRECT:I = 0x133

.field private static final MAX_BYTES_TO_DRAIN:J = 0x800L

.field private static final MAX_REDIRECTS:I = 0x14

.field private static final TAG:Ljava/lang/String; = "DefaultHttpDataSource"


# instance fields
.field private final allowCrossProtocolRedirects:Z

.field private bytesRead:J

.field private bytesToRead:J

.field private final connectTimeoutMillis:I

.field private connection:Ljava/net/HttpURLConnection;

.field private contentTypePredicate:Lcom/google/common/base/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Predicate<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

.field private final defaultRequestProperties:Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;

.field private inputStream:Ljava/io/InputStream;

.field private final keepPostFor302Redirects:Z

.field private opened:Z

.field private final readTimeoutMillis:I

.field private final requestProperties:Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;

.field private responseCode:I

.field private final userAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 251
    const/4 v0, 0x0

    const/16 v1, 0x1f40

    invoke-direct {p0, v0, v1, v1}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;-><init>(Ljava/lang/String;II)V

    .line 252
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "userAgent"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 260
    const/16 v0, 0x1f40

    invoke-direct {p0, p1, v0, v0}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;-><init>(Ljava/lang/String;II)V

    .line 261
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .registers 10
    .param p1, "userAgent"    # Ljava/lang/String;
    .param p2, "connectTimeoutMillis"    # I
    .param p3, "readTimeoutMillis"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 270
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;-><init>(Ljava/lang/String;IIZLcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;)V

    .line 276
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIZLcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;)V
    .registers 14
    .param p1, "userAgent"    # Ljava/lang/String;
    .param p2, "connectTimeoutMillis"    # I
    .param p3, "readTimeoutMillis"    # I
    .param p4, "allowCrossProtocolRedirects"    # Z
    .param p5, "defaultRequestProperties"    # Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 288
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;-><init>(Ljava/lang/String;IIZLcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;Lcom/google/common/base/Predicate;Z)V

    .line 296
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIZLcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;Lcom/google/common/base/Predicate;Z)V
    .registers 9
    .param p1, "userAgent"    # Ljava/lang/String;
    .param p2, "connectTimeoutMillis"    # I
    .param p3, "readTimeoutMillis"    # I
    .param p4, "allowCrossProtocolRedirects"    # Z
    .param p5, "defaultRequestProperties"    # Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;
    .param p7, "keepPostFor302Redirects"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IIZ",
            "Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;",
            "Lcom/google/common/base/Predicate<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 306
    .local p6, "contentTypePredicate":Lcom/google/common/base/Predicate;, "Lcom/google/common/base/Predicate<Ljava/lang/String;>;"
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/upstream/BaseDataSource;-><init>(Z)V

    .line 307
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->userAgent:Ljava/lang/String;

    .line 308
    iput p2, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->connectTimeoutMillis:I

    .line 309
    iput p3, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->readTimeoutMillis:I

    .line 310
    iput-boolean p4, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->allowCrossProtocolRedirects:Z

    .line 311
    iput-object p5, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->defaultRequestProperties:Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;

    .line 312
    iput-object p6, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->contentTypePredicate:Lcom/google/common/base/Predicate;

    .line 313
    new-instance v0, Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->requestProperties:Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;

    .line 314
    iput-boolean p7, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->keepPostFor302Redirects:Z

    .line 315
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IIZLcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;Lcom/google/common/base/Predicate;ZLcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$1;)V
    .registers 9
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .param p4, "x3"    # Z
    .param p5, "x4"    # Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;
    .param p6, "x5"    # Lcom/google/common/base/Predicate;
    .param p7, "x6"    # Z
    .param p8, "x7"    # Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$1;

    .line 69
    invoke-direct/range {p0 .. p7}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;-><init>(Ljava/lang/String;IIZLcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;Lcom/google/common/base/Predicate;Z)V

    return-void
.end method

.method private closeConnectionQuietly()V
    .registers 4

    .line 841
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->connection:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_13

    .line 843
    :try_start_4
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_7} :catch_8

    .line 846
    goto :goto_10

    .line 844
    :catch_8
    move-exception v0

    .line 845
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "DefaultHttpDataSource"

    const-string v2, "Unexpected error while disconnecting"

    invoke-static {v1, v2, v0}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 847
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_10
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->connection:Ljava/net/HttpURLConnection;

    .line 849
    :cond_13
    return-void
.end method

.method private handleRedirect(Ljava/net/URL;Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/DataSpec;)Ljava/net/URL;
    .registers 11
    .param p1, "originalUrl"    # Ljava/net/URL;
    .param p2, "location"    # Ljava/lang/String;
    .param p3, "dataSpec"    # Lcom/google/android/exoplayer2/upstream/DataSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;
        }
    .end annotation

    .line 681
    const/4 v0, 0x1

    const/16 v1, 0x7d1

    if-eqz p2, :cond_7d

    .line 691
    :try_start_5
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p1, p2}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/net/MalformedURLException; {:try_start_5 .. :try_end_a} :catch_76

    .line 698
    .local v2, "url":Ljava/net/URL;
    nop

    .line 701
    invoke-virtual {v2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v3

    .line 702
    .local v3, "protocol":Ljava/lang/String;
    const-string v4, "https"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_39

    const-string v4, "http"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20

    goto :goto_39

    .line 703
    :cond_20
    new-instance v4, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unsupported protocol redirect: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, p3, v1, v0}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/DataSpec;II)V

    throw v4

    .line 709
    :cond_39
    :goto_39
    iget-boolean v4, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->allowCrossProtocolRedirects:Z

    if-nez v4, :cond_75

    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_48

    goto :goto_75

    .line 710
    :cond_48
    new-instance v4, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Disallowed cross-protocol redirect ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 712
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, p3, v1, v0}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/DataSpec;II)V

    throw v4

    .line 720
    :cond_75
    :goto_75
    return-object v2

    .line 692
    .end local v2    # "url":Ljava/net/URL;
    .end local v3    # "protocol":Ljava/lang/String;
    :catch_76
    move-exception v2

    .line 693
    .local v2, "e":Ljava/net/MalformedURLException;
    new-instance v3, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;

    invoke-direct {v3, v2, p3, v1, v0}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;-><init>(Ljava/io/IOException;Lcom/google/android/exoplayer2/upstream/DataSpec;II)V

    throw v3

    .line 682
    .end local v2    # "e":Ljava/net/MalformedURLException;
    :cond_7d
    new-instance v2, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;

    const-string v3, "Null location redirect"

    invoke-direct {v2, v3, p3, v1, v0}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/DataSpec;II)V

    throw v2
.end method

.method private static isCompressed(Ljava/net/HttpURLConnection;)Z
    .registers 3
    .param p0, "connection"    # Ljava/net/HttpURLConnection;

    .line 852
    const-string v0, "Content-Encoding"

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 853
    .local v0, "contentEncoding":Ljava/lang/String;
    const-string v1, "gzip"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private makeConnection(Lcom/google/android/exoplayer2/upstream/DataSpec;)Ljava/net/HttpURLConnection;
    .registers 27
    .param p1, "dataSpec"    # Lcom/google/android/exoplayer2/upstream/DataSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 530
    move-object/from16 v11, p0

    move-object/from16 v12, p1

    new-instance v1, Ljava/net/URL;

    iget-object v0, v12, Lcom/google/android/exoplayer2/upstream/DataSpec;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 531
    .local v1, "url":Ljava/net/URL;
    iget v13, v12, Lcom/google/android/exoplayer2/upstream/DataSpec;->httpMethod:I

    .line 532
    .local v13, "httpMethod":I
    iget-object v14, v12, Lcom/google/android/exoplayer2/upstream/DataSpec;->httpBody:[B

    .line 533
    .local v14, "httpBody":[B
    iget-wide v9, v12, Lcom/google/android/exoplayer2/upstream/DataSpec;->position:J

    .line 534
    .local v9, "position":J
    iget-wide v6, v12, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    .line 535
    .local v6, "length":J
    const/4 v15, 0x1

    invoke-virtual {v12, v15}, Lcom/google/android/exoplayer2/upstream/DataSpec;->isFlagSet(I)Z

    move-result v16

    .line 537
    .local v16, "allowGzip":Z
    iget-boolean v0, v11, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->allowCrossProtocolRedirects:Z

    if-nez v0, :cond_3c

    iget-boolean v0, v11, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->keepPostFor302Redirects:Z

    if-nez v0, :cond_3c

    .line 540
    const/4 v15, 0x1

    iget-object v8, v12, Lcom/google/android/exoplayer2/upstream/DataSpec;->httpRequestHeaders:Ljava/util/Map;

    move-object/from16 v0, p0

    move v2, v13

    move-object v3, v14

    move-wide v4, v9

    move-wide/from16 v17, v6

    .end local v6    # "length":J
    .local v17, "length":J
    move-object/from16 v19, v8

    move/from16 v8, v16

    move-wide/from16 v20, v9

    .end local v9    # "position":J
    .local v20, "position":J
    move v9, v15

    move-object/from16 v10, v19

    invoke-direct/range {v0 .. v10}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->makeConnection(Ljava/net/URL;I[BJJZZLjava/util/Map;)Ljava/net/HttpURLConnection;

    move-result-object v0

    return-object v0

    .line 537
    .end local v17    # "length":J
    .end local v20    # "position":J
    .restart local v6    # "length":J
    .restart local v9    # "position":J
    :cond_3c
    move-wide/from16 v17, v6

    move-wide/from16 v20, v9

    .line 553
    .end local v6    # "length":J
    .end local v9    # "position":J
    .restart local v17    # "length":J
    .restart local v20    # "position":J
    const/4 v0, 0x0

    move-object v10, v1

    .line 554
    .end local v1    # "url":Ljava/net/URL;
    .local v0, "redirectCount":I
    .local v10, "url":Ljava/net/URL;
    :goto_42
    add-int/lit8 v9, v0, 0x1

    .end local v0    # "redirectCount":I
    .local v9, "redirectCount":I
    const/16 v1, 0x14

    if-gt v0, v1, :cond_c7

    .line 555
    const/16 v19, 0x0

    iget-object v8, v12, Lcom/google/android/exoplayer2/upstream/DataSpec;->httpRequestHeaders:Ljava/util/Map;

    .line 556
    move-object/from16 v0, p0

    move-object v1, v10

    move v2, v13

    move-object v3, v14

    move-wide/from16 v4, v20

    move-wide/from16 v6, v17

    move-object/from16 v22, v8

    move/from16 v8, v16

    move/from16 v23, v9

    .end local v9    # "redirectCount":I
    .local v23, "redirectCount":I
    move/from16 v9, v19

    move-object/from16 v24, v10

    .end local v10    # "url":Ljava/net/URL;
    .local v24, "url":Ljava/net/URL;
    move-object/from16 v10, v22

    invoke-direct/range {v0 .. v10}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->makeConnection(Ljava/net/URL;I[BJJZZLjava/util/Map;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 565
    .local v0, "connection":Ljava/net/HttpURLConnection;
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    .line 566
    .local v1, "responseCode":I
    const-string v2, "Location"

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 567
    .local v2, "location":Ljava/lang/String;
    const/16 v3, 0x12f

    const/16 v4, 0x12d

    const/16 v5, 0x12c

    const/16 v6, 0x12e

    if-eq v13, v15, :cond_7c

    const/4 v7, 0x3

    if-ne v13, v7, :cond_8f

    :cond_7c
    if-eq v1, v5, :cond_b9

    if-eq v1, v4, :cond_b9

    if-eq v1, v6, :cond_b9

    if-eq v1, v3, :cond_b9

    const/16 v7, 0x133

    if-eq v1, v7, :cond_b9

    const/16 v7, 0x134

    if-ne v1, v7, :cond_8f

    move-object/from16 v4, v24

    goto :goto_bb

    .line 576
    :cond_8f
    const/4 v7, 0x2

    if-ne v13, v7, :cond_b6

    if-eq v1, v5, :cond_9e

    if-eq v1, v4, :cond_9e

    if-eq v1, v6, :cond_9e

    if-ne v1, v3, :cond_9b

    goto :goto_9e

    :cond_9b
    move-object/from16 v4, v24

    goto :goto_b8

    .line 581
    :cond_9e
    :goto_9e
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 582
    iget-boolean v3, v11, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->keepPostFor302Redirects:Z

    if-eqz v3, :cond_a9

    if-ne v1, v6, :cond_a9

    const/4 v3, 0x1

    goto :goto_aa

    :cond_a9
    const/4 v3, 0x0

    .line 584
    .local v3, "shouldKeepPost":Z
    :goto_aa
    if-nez v3, :cond_ae

    .line 586
    const/4 v13, 0x1

    .line 587
    const/4 v14, 0x0

    .line 589
    :cond_ae
    move-object/from16 v4, v24

    .end local v24    # "url":Ljava/net/URL;
    .local v4, "url":Ljava/net/URL;
    invoke-direct {v11, v4, v2, v12}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->handleRedirect(Ljava/net/URL;Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/DataSpec;)Ljava/net/URL;

    move-result-object v3

    .line 590
    .end local v4    # "url":Ljava/net/URL;
    .local v3, "url":Ljava/net/URL;
    move-object v10, v3

    goto :goto_c3

    .line 576
    .end local v3    # "url":Ljava/net/URL;
    .restart local v24    # "url":Ljava/net/URL;
    :cond_b6
    move-object/from16 v4, v24

    .line 591
    .end local v24    # "url":Ljava/net/URL;
    .restart local v4    # "url":Ljava/net/URL;
    :goto_b8
    return-object v0

    .line 567
    .end local v4    # "url":Ljava/net/URL;
    .restart local v24    # "url":Ljava/net/URL;
    :cond_b9
    move-object/from16 v4, v24

    .line 574
    .end local v24    # "url":Ljava/net/URL;
    .restart local v4    # "url":Ljava/net/URL;
    :goto_bb
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 575
    invoke-direct {v11, v4, v2, v12}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->handleRedirect(Ljava/net/URL;Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/DataSpec;)Ljava/net/URL;

    move-result-object v3

    move-object v10, v3

    .line 593
    .end local v0    # "connection":Ljava/net/HttpURLConnection;
    .end local v1    # "responseCode":I
    .end local v2    # "location":Ljava/lang/String;
    .end local v4    # "url":Ljava/net/URL;
    .restart local v10    # "url":Ljava/net/URL;
    :goto_c3
    move/from16 v0, v23

    goto/16 :goto_42

    .line 596
    .end local v23    # "redirectCount":I
    .restart local v9    # "redirectCount":I
    :cond_c7
    move/from16 v23, v9

    .end local v9    # "redirectCount":I
    .restart local v23    # "redirectCount":I
    new-instance v0, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;

    new-instance v1, Ljava/net/NoRouteToHostException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Too many redirects: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v3, v23

    .end local v23    # "redirectCount":I
    .local v3, "redirectCount":I
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/NoRouteToHostException;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x7d1

    invoke-direct {v0, v1, v12, v2, v15}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;-><init>(Ljava/io/IOException;Lcom/google/android/exoplayer2/upstream/DataSpec;II)V

    goto :goto_ec

    :goto_eb
    throw v0

    :goto_ec
    goto :goto_eb
.end method

.method private makeConnection(Ljava/net/URL;I[BJJZZLjava/util/Map;)Ljava/net/HttpURLConnection;
    .registers 20
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "httpMethod"    # I
    .param p3, "httpBody"    # [B
    .param p4, "position"    # J
    .param p6, "length"    # J
    .param p8, "allowGzip"    # Z
    .param p9, "followRedirects"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "I[BJJZZ",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/net/HttpURLConnection;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 625
    .local p10, "requestParameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object v0, p0

    move-object v1, p3

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->openConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v2

    .line 626
    .local v2, "connection":Ljava/net/HttpURLConnection;
    iget v3, v0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->connectTimeoutMillis:I

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 627
    iget v3, v0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->readTimeoutMillis:I

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 629
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 630
    .local v3, "requestHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v4, v0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->defaultRequestProperties:Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;

    if-eqz v4, :cond_20

    .line 631
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;->getSnapshot()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 633
    :cond_20
    iget-object v4, v0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->requestProperties:Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;->getSnapshot()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 634
    move-object/from16 v4, p10

    invoke-interface {v3, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 636
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_36
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_52

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 637
    .local v6, "property":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v2, v7, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    .end local v6    # "property":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_36

    .line 640
    :cond_52
    invoke-static/range {p4 .. p7}, Lcom/google/android/exoplayer2/upstream/HttpUtil;->buildRangeRequestHeader(JJ)Ljava/lang/String;

    move-result-object v5

    .line 641
    .local v5, "rangeHeader":Ljava/lang/String;
    if-eqz v5, :cond_5d

    .line 642
    const-string v6, "Range"

    invoke-virtual {v2, v6, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 644
    :cond_5d
    iget-object v6, v0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->userAgent:Ljava/lang/String;

    if-eqz v6, :cond_66

    .line 645
    const-string v7, "User-Agent"

    invoke-virtual {v2, v7, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    :cond_66
    if-eqz p8, :cond_6b

    const-string v6, "gzip"

    goto :goto_6d

    :cond_6b
    const-string v6, "identity"

    :goto_6d
    const-string v7, "Accept-Encoding"

    invoke-virtual {v2, v7, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    move/from16 v6, p9

    invoke-virtual {v2, v6}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 649
    if-eqz v1, :cond_7b

    const/4 v7, 0x1

    goto :goto_7c

    :cond_7b
    const/4 v7, 0x0

    :goto_7c
    invoke-virtual {v2, v7}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 650
    invoke-static {p2}, Lcom/google/android/exoplayer2/upstream/DataSpec;->getStringForHttpMethod(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 652
    if-eqz v1, :cond_9a

    .line 653
    array-length v7, v1

    invoke-virtual {v2, v7}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 654
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->connect()V

    .line 655
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    .line 656
    .local v7, "os":Ljava/io/OutputStream;
    invoke-virtual {v7, p3}, Ljava/io/OutputStream;->write([B)V

    .line 657
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    .line 658
    .end local v7    # "os":Ljava/io/OutputStream;
    goto :goto_9d

    .line 659
    :cond_9a
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->connect()V

    .line 661
    :goto_9d
    return-object v2
.end method

.method private static maybeTerminateInputStream(Ljava/net/HttpURLConnection;J)V
    .registers 10
    .param p0, "connection"    # Ljava/net/HttpURLConnection;
    .param p1, "bytesRemaining"    # J

    .line 806
    if-eqz p0, :cond_64

    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_64

    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x14

    if-le v0, v1, :cond_f

    goto :goto_64

    .line 811
    :cond_f
    :try_start_f
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 812
    .local v0, "inputStream":Ljava/io/InputStream;
    const-wide/16 v1, -0x1

    cmp-long v3, p1, v1

    if-nez v3, :cond_21

    .line 814
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_28

    .line 815
    return-void

    .line 817
    :cond_21
    const-wide/16 v1, 0x800

    cmp-long v3, p1, v1

    if-gtz v3, :cond_28

    .line 820
    return-void

    .line 822
    :cond_28
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 823
    .local v1, "className":Ljava/lang/String;
    const-string v2, "com.android.okhttp.internal.http.HttpTransport$ChunkedInputStream"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_40

    const-string v2, "com.android.okhttp.internal.http.HttpTransport$FixedLengthInputStream"

    .line 825
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_61

    .line 826
    :cond_40
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    .line 827
    .local v2, "superclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    nop

    .line 828
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    const-string v4, "unexpectedEndOfInput"

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 829
    .local v3, "unexpectedEndOfInput":Ljava/lang/reflect/Method;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 830
    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_61} :catch_62

    .line 836
    .end local v0    # "inputStream":Ljava/io/InputStream;
    .end local v1    # "className":Ljava/lang/String;
    .end local v2    # "superclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "unexpectedEndOfInput":Ljava/lang/reflect/Method;
    :cond_61
    goto :goto_63

    .line 832
    :catch_62
    move-exception v0

    .line 837
    :goto_63
    return-void

    .line 807
    :cond_64
    :goto_64
    return-void
.end method

.method private readInternal([BII)I
    .registers 10
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "readLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 772
    if-nez p3, :cond_4

    .line 773
    const/4 v0, 0x0

    return v0

    .line 775
    :cond_4
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->bytesToRead:J

    const-wide/16 v2, -0x1

    const/4 v4, -0x1

    cmp-long v5, v0, v2

    if-eqz v5, :cond_1d

    .line 776
    iget-wide v2, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->bytesRead:J

    sub-long/2addr v0, v2

    .line 777
    .local v0, "bytesRemaining":J
    const-wide/16 v2, 0x0

    cmp-long v5, v0, v2

    if-nez v5, :cond_17

    .line 778
    return v4

    .line 780
    :cond_17
    int-to-long v2, p3

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int p3, v2

    .line 783
    .end local v0    # "bytesRemaining":J
    :cond_1d
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->inputStream:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 784
    .local v0, "read":I
    if-ne v0, v4, :cond_2c

    .line 785
    return v4

    .line 788
    :cond_2c
    iget-wide v1, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->bytesRead:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->bytesRead:J

    .line 789
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->bytesTransferred(I)V

    .line 790
    return v0
.end method

.method private skipFully(JLcom/google/android/exoplayer2/upstream/DataSpec;)V
    .registers 11
    .param p1, "bytesToSkip"    # J
    .param p3, "dataSpec"    # Lcom/google/android/exoplayer2/upstream/DataSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 732
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_7

    .line 733
    return-void

    .line 735
    :cond_7
    const/16 v2, 0x1000

    new-array v2, v2, [B

    .line 736
    .local v2, "skipBuffer":[B
    :goto_b
    cmp-long v3, p1, v0

    if-lez v3, :cond_4c

    .line 737
    array-length v3, v2

    int-to-long v3, v3

    invoke-static {p1, p2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    long-to-int v4, v3

    .line 738
    .local v4, "readLength":I
    iget-object v3, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->inputStream:Ljava/io/InputStream;

    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/InputStream;

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v5, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    .line 739
    .local v3, "read":I
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v5

    const/4 v6, 0x1

    if-nez v5, :cond_3f

    .line 746
    const/4 v5, -0x1

    if-eq v3, v5, :cond_37

    .line 752
    int-to-long v5, v3

    sub-long/2addr p1, v5

    .line 753
    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->bytesTransferred(I)V

    .line 754
    .end local v3    # "read":I
    .end local v4    # "readLength":I
    goto :goto_b

    .line 747
    .restart local v3    # "read":I
    .restart local v4    # "readLength":I
    :cond_37
    new-instance v0, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;

    const/16 v1, 0x7d8

    invoke-direct {v0, p3, v1, v6}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;-><init>(Lcom/google/android/exoplayer2/upstream/DataSpec;II)V

    throw v0

    .line 740
    :cond_3f
    new-instance v0, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;

    new-instance v1, Ljava/io/InterruptedIOException;

    invoke-direct {v1}, Ljava/io/InterruptedIOException;-><init>()V

    const/16 v5, 0x7d0

    invoke-direct {v0, v1, p3, v5, v6}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;-><init>(Ljava/io/IOException;Lcom/google/android/exoplayer2/upstream/DataSpec;II)V

    throw v0

    .line 755
    .end local v3    # "read":I
    .end local v4    # "readLength":I
    :cond_4c
    return-void
.end method


# virtual methods
.method public clearAllRequestProperties()V
    .registers 2

    .line 368
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->requestProperties:Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;->clear()V

    .line 369
    return-void
.end method

.method public clearRequestProperty(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 362
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->requestProperties:Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;->remove(Ljava/lang/String;)V

    .line 364
    return-void
.end method

.method public close()V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;
        }
    .end annotation

    .line 503
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_2
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->inputStream:Ljava/io/InputStream;

    .line 504
    .local v2, "inputStream":Ljava/io/InputStream;
    if-eqz v2, :cond_2f

    .line 506
    iget-wide v3, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->bytesToRead:J

    const-wide/16 v5, -0x1

    cmp-long v7, v3, v5

    if-nez v7, :cond_f

    goto :goto_13

    :cond_f
    iget-wide v5, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->bytesRead:J

    sub-long v5, v3, v5

    :goto_13
    move-wide v3, v5

    .line 507
    .local v3, "bytesRemaining":J
    iget-object v5, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->connection:Ljava/net/HttpURLConnection;

    invoke-static {v5, v3, v4}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->maybeTerminateInputStream(Ljava/net/HttpURLConnection;J)V
    :try_end_19
    .catchall {:try_start_2 .. :try_end_19} :catchall_3e

    .line 509
    :try_start_19
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1c} :catch_1d
    .catchall {:try_start_19 .. :try_end_1c} :catchall_3e

    .line 516
    goto :goto_2f

    .line 510
    :catch_1d
    move-exception v5

    .line 511
    .local v5, "e":Ljava/io/IOException;
    :try_start_1e
    new-instance v6, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;

    iget-object v7, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 513
    invoke-static {v7}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/exoplayer2/upstream/DataSpec;

    const/16 v8, 0x7d0

    const/4 v9, 0x3

    invoke-direct {v6, v5, v7, v8, v9}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;-><init>(Ljava/io/IOException;Lcom/google/android/exoplayer2/upstream/DataSpec;II)V

    throw v6
    :try_end_2f
    .catchall {:try_start_1e .. :try_end_2f} :catchall_3e

    .line 519
    .end local v2    # "inputStream":Ljava/io/InputStream;
    .end local v3    # "bytesRemaining":J
    .end local v5    # "e":Ljava/io/IOException;
    :cond_2f
    :goto_2f
    iput-object v1, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->inputStream:Ljava/io/InputStream;

    .line 520
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->closeConnectionQuietly()V

    .line 521
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->opened:Z

    if-eqz v1, :cond_3d

    .line 522
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->opened:Z

    .line 523
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->transferEnded()V

    .line 526
    :cond_3d
    return-void

    .line 519
    :catchall_3e
    move-exception v2

    iput-object v1, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->inputStream:Ljava/io/InputStream;

    .line 520
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->closeConnectionQuietly()V

    .line 521
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->opened:Z

    if-eqz v1, :cond_4d

    .line 522
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->opened:Z

    .line 523
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->transferEnded()V

    .line 525
    :cond_4d
    throw v2
.end method

.method public getResponseCode()I
    .registers 2

    .line 334
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->connection:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->responseCode:I

    if-gtz v0, :cond_9

    :cond_8
    const/4 v0, -0x1

    :cond_9
    return v0
.end method

.method public getResponseHeaders()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 339
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->connection:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_9

    .line 340
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->of()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0

    .line 350
    :cond_9
    new-instance v0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$NullFilteringHeadersMap;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$NullFilteringHeadersMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .registers 2

    .line 329
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->connection:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_12

    :cond_6
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :goto_12
    return-object v0
.end method

.method public open(Lcom/google/android/exoplayer2/upstream/DataSpec;)J
    .registers 16
    .param p1, "dataSpec"    # Lcom/google/android/exoplayer2/upstream/DataSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;
        }
    .end annotation

    .line 374
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 375
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->bytesRead:J

    .line 376
    iput-wide v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->bytesToRead:J

    .line 377
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->transferInitializing(Lcom/google/android/exoplayer2/upstream/DataSpec;)V

    .line 382
    const/4 v2, 0x1

    :try_start_c
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->makeConnection(Lcom/google/android/exoplayer2/upstream/DataSpec;)Ljava/net/HttpURLConnection;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->connection:Ljava/net/HttpURLConnection;

    .line 383
    nop

    .line 384
    .local v3, "connection":Ljava/net/HttpURLConnection;
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    iput v4, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->responseCode:I

    .line 385
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v7
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_1d} :catch_114

    .line 390
    .local v7, "responseMessage":Ljava/lang/String;
    nop

    .line 393
    iget v4, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->responseCode:I

    const-string v5, "Content-Range"

    const/16 v6, 0xc8

    const-wide/16 v8, -0x1

    if-lt v4, v6, :cond_bc

    const/16 v10, 0x12b

    if-le v4, v10, :cond_2e

    goto/16 :goto_bc

    .line 424
    :cond_2e
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v4

    .line 425
    .local v4, "contentType":Ljava/lang/String;
    iget-object v10, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->contentTypePredicate:Lcom/google/common/base/Predicate;

    if-eqz v10, :cond_46

    invoke-interface {v10, v4}, Lcom/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3d

    goto :goto_46

    .line 426
    :cond_3d
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->closeConnectionQuietly()V

    .line 427
    new-instance v0, Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidContentTypeException;

    invoke-direct {v0, v4, p1}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidContentTypeException;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/DataSpec;)V

    throw v0

    .line 433
    :cond_46
    :goto_46
    iget v10, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->responseCode:I

    if-ne v10, v6, :cond_52

    iget-wide v10, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->position:J

    cmp-long v6, v10, v0

    if-eqz v6, :cond_52

    iget-wide v0, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->position:J

    .line 436
    .local v0, "bytesToSkip":J
    :cond_52
    invoke-static {v3}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->isCompressed(Ljava/net/HttpURLConnection;)Z

    move-result v6

    .line 437
    .local v6, "isCompressed":Z
    if-nez v6, :cond_7c

    .line 438
    iget-wide v10, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    cmp-long v12, v10, v8

    if-eqz v12, :cond_63

    .line 439
    iget-wide v8, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    iput-wide v8, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->bytesToRead:J

    goto :goto_80

    .line 441
    :cond_63
    nop

    .line 443
    const-string v10, "Content-Length"

    invoke-virtual {v3, v10}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 444
    invoke-virtual {v3, v5}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 442
    invoke-static {v10, v5}, Lcom/google/android/exoplayer2/upstream/HttpUtil;->getContentLength(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v10

    .line 445
    .local v10, "contentLength":J
    nop

    .line 446
    cmp-long v5, v10, v8

    if-eqz v5, :cond_79

    sub-long v8, v10, v0

    :cond_79
    iput-wide v8, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->bytesToRead:J

    .line 447
    .end local v10    # "contentLength":J
    goto :goto_80

    .line 452
    :cond_7c
    iget-wide v8, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    iput-wide v8, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->bytesToRead:J

    .line 456
    :goto_80
    const/16 v5, 0x7d0

    :try_start_82
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    iput-object v8, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->inputStream:Ljava/io/InputStream;

    .line 457
    if-eqz v6, :cond_93

    .line 458
    new-instance v8, Ljava/util/zip/GZIPInputStream;

    iget-object v9, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->inputStream:Ljava/io/InputStream;

    invoke-direct {v8, v9}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v8, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->inputStream:Ljava/io/InputStream;
    :try_end_93
    .catch Ljava/io/IOException; {:try_start_82 .. :try_end_93} :catch_b2

    .line 467
    :cond_93
    nop

    .line 469
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->opened:Z

    .line 470
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->transferStarted(Lcom/google/android/exoplayer2/upstream/DataSpec;)V

    .line 473
    :try_start_99
    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->skipFully(JLcom/google/android/exoplayer2/upstream/DataSpec;)V
    :try_end_9c
    .catch Ljava/io/IOException; {:try_start_99 .. :try_end_9c} :catch_a0

    .line 485
    nop

    .line 487
    iget-wide v8, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->bytesToRead:J

    return-wide v8

    .line 474
    :catch_a0
    move-exception v8

    .line 475
    .local v8, "e":Ljava/io/IOException;
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->closeConnectionQuietly()V

    .line 477
    instance-of v9, v8, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;

    if-eqz v9, :cond_ac

    .line 478
    move-object v2, v8

    check-cast v2, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;

    throw v2

    .line 480
    :cond_ac
    new-instance v9, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;

    invoke-direct {v9, v8, p1, v5, v2}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;-><init>(Ljava/io/IOException;Lcom/google/android/exoplayer2/upstream/DataSpec;II)V

    throw v9

    .line 460
    .end local v8    # "e":Ljava/io/IOException;
    :catch_b2
    move-exception v8

    .line 461
    .restart local v8    # "e":Ljava/io/IOException;
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->closeConnectionQuietly()V

    .line 462
    new-instance v9, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;

    invoke-direct {v9, v8, p1, v5, v2}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;-><init>(Ljava/io/IOException;Lcom/google/android/exoplayer2/upstream/DataSpec;II)V

    throw v9

    .line 394
    .end local v0    # "bytesToSkip":J
    .end local v4    # "contentType":Ljava/lang/String;
    .end local v6    # "isCompressed":Z
    .end local v8    # "e":Ljava/io/IOException;
    :cond_bc
    :goto_bc
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v4

    .line 395
    .local v4, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    iget v6, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->responseCode:I

    const/16 v10, 0x1a0

    if-ne v6, v10, :cond_e3

    .line 396
    nop

    .line 397
    invoke-virtual {v3, v5}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/exoplayer2/upstream/HttpUtil;->getDocumentSize(Ljava/lang/String;)J

    move-result-wide v5

    .line 398
    .local v5, "documentSize":J
    iget-wide v11, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->position:J

    cmp-long v13, v11, v5

    if-nez v13, :cond_e3

    .line 399
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->opened:Z

    .line 400
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->transferStarted(Lcom/google/android/exoplayer2/upstream/DataSpec;)V

    .line 401
    iget-wide v10, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    cmp-long v2, v10, v8

    if-eqz v2, :cond_e2

    iget-wide v0, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    :cond_e2
    return-wide v0

    .line 405
    .end local v5    # "documentSize":J
    :cond_e3
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    .line 409
    .local v0, "errorStream":Ljava/io/InputStream;
    if-eqz v0, :cond_ee

    :try_start_e9
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object v1

    goto :goto_f0

    :cond_ee
    sget-object v1, Lcom/google/android/exoplayer2/util/Util;->EMPTY_BYTE_ARRAY:[B
    :try_end_f0
    .catch Ljava/io/IOException; {:try_start_e9 .. :try_end_f0} :catch_f1

    .line 412
    .local v1, "errorResponseBody":[B
    :goto_f0
    goto :goto_f5

    .line 410
    .end local v1    # "errorResponseBody":[B
    :catch_f1
    move-exception v1

    .line 411
    .local v1, "e":Ljava/io/IOException;
    sget-object v2, Lcom/google/android/exoplayer2/util/Util;->EMPTY_BYTE_ARRAY:[B

    move-object v1, v2

    .line 413
    .local v1, "errorResponseBody":[B
    :goto_f5
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->closeConnectionQuietly()V

    .line 416
    iget v2, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->responseCode:I

    if-ne v2, v10, :cond_105

    .line 417
    new-instance v2, Lcom/google/android/exoplayer2/upstream/DataSourceException;

    const/16 v5, 0x7d8

    invoke-direct {v2, v5}, Lcom/google/android/exoplayer2/upstream/DataSourceException;-><init>(I)V

    move-object v8, v2

    goto :goto_107

    .line 418
    :cond_105
    const/4 v2, 0x0

    move-object v8, v2

    :goto_107
    nop

    .line 419
    .local v8, "cause":Ljava/io/IOException;
    new-instance v2, Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidResponseCodeException;

    iget v6, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->responseCode:I

    move-object v5, v2

    move-object v9, v4

    move-object v10, p1

    move-object v11, v1

    invoke-direct/range {v5 .. v11}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidResponseCodeException;-><init>(ILjava/lang/String;Ljava/io/IOException;Ljava/util/Map;Lcom/google/android/exoplayer2/upstream/DataSpec;[B)V

    throw v2

    .line 386
    .end local v0    # "errorStream":Ljava/io/InputStream;
    .end local v1    # "errorResponseBody":[B
    .end local v3    # "connection":Ljava/net/HttpURLConnection;
    .end local v4    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v7    # "responseMessage":Ljava/lang/String;
    .end local v8    # "cause":Ljava/io/IOException;
    :catch_114
    move-exception v0

    .line 387
    .local v0, "e":Ljava/io/IOException;
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->closeConnectionQuietly()V

    .line 388
    invoke-static {v0, p1, v2}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;->createForIOException(Ljava/io/IOException;Lcom/google/android/exoplayer2/upstream/DataSpec;I)Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;

    move-result-object v1

    throw v1
.end method

.method openConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .registers 3
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 667
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    return-object v0
.end method

.method public read([BII)I
    .registers 7
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;
        }
    .end annotation

    .line 493
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->readInternal([BII)I

    move-result v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_4} :catch_5

    return v0

    .line 494
    :catch_5
    move-exception v0

    .line 495
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 496
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 495
    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;->createForIOException(Ljava/io/IOException;Lcom/google/android/exoplayer2/upstream/DataSpec;I)Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;

    move-result-object v1

    throw v1
.end method

.method public setContentTypePredicate(Lcom/google/common/base/Predicate;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Predicate<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 323
    .local p1, "contentTypePredicate":Lcom/google/common/base/Predicate;, "Lcom/google/common/base/Predicate<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->contentTypePredicate:Lcom/google/common/base/Predicate;

    .line 324
    return-void
.end method

.method public setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 355
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->requestProperties:Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    return-void
.end method
