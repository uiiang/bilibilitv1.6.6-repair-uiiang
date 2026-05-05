.class public final Lcom/google/android/exoplayer2/drm/HttpMediaDrmCallback;
.super Ljava/lang/Object;
.source "HttpMediaDrmCallback.java"

# interfaces
.implements Lcom/google/android/exoplayer2/drm/MediaDrmCallback;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final MAX_MANUAL_REDIRECTS:I = 0x5


# instance fields
.field private final dataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

.field private final defaultLicenseUrl:Ljava/lang/String;

.field private final forceDefaultLicenseUrl:Z

.field private final keyRequestProperties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V
    .registers 4
    .param p1, "defaultLicenseUrl"    # Ljava/lang/String;
    .param p2, "dataSourceFactory"    # Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/exoplayer2/drm/HttpMediaDrmCallback;-><init>(Ljava/lang/String;ZLcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLcom/google/android/exoplayer2/upstream/DataSource$Factory;)V
    .registers 5
    .param p1, "defaultLicenseUrl"    # Ljava/lang/String;
    .param p2, "forceDefaultLicenseUrl"    # Z
    .param p3, "dataSourceFactory"    # Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    if-eqz p2, :cond_e

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_e

    :cond_c
    const/4 v0, 0x0

    goto :goto_f

    :cond_e
    :goto_e
    const/4 v0, 0x1

    :goto_f
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 87
    iput-object p3, p0, Lcom/google/android/exoplayer2/drm/HttpMediaDrmCallback;->dataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    .line 88
    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/HttpMediaDrmCallback;->defaultLicenseUrl:Ljava/lang/String;

    .line 89
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/drm/HttpMediaDrmCallback;->forceDefaultLicenseUrl:Z

    .line 90
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/drm/HttpMediaDrmCallback;->keyRequestProperties:Ljava/util/Map;

    .line 91
    return-void
.end method

.method private static executePost(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Ljava/lang/String;[BLjava/util/Map;)[B
    .registers 15
    .param p0, "dataSourceFactory"    # Lcom/google/android/exoplayer2/upstream/DataSource$Factory;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "httpBody"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/upstream/DataSource$Factory;",
            "Ljava/lang/String;",
            "[B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/drm/MediaDrmCallbackException;
        }
    .end annotation

    .line 176
    .local p3, "requestProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lcom/google/android/exoplayer2/upstream/StatsDataSource;

    invoke-interface {p0}, Lcom/google/android/exoplayer2/upstream/DataSource$Factory;->createDataSource()Lcom/google/android/exoplayer2/upstream/DataSource;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/upstream/StatsDataSource;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource;)V

    .line 177
    .local v0, "dataSource":Lcom/google/android/exoplayer2/upstream/StatsDataSource;
    const/4 v1, 0x0

    .line 178
    .local v1, "manualRedirectCount":I
    new-instance v2, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;

    invoke-direct {v2}, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;-><init>()V

    .line 180
    invoke-virtual {v2, p1}, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;->setUri(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;

    move-result-object v2

    .line 181
    invoke-virtual {v2, p3}, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;->setHttpRequestHeaders(Ljava/util/Map;)Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;

    move-result-object v2

    .line 182
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;->setHttpMethod(I)Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;

    move-result-object v2

    .line 183
    invoke-virtual {v2, p2}, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;->setHttpBody([B)Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;

    move-result-object v2

    .line 184
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;->setFlags(I)Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;

    move-result-object v2

    .line 185
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;->build()Lcom/google/android/exoplayer2/upstream/DataSpec;

    move-result-object v2

    .line 186
    .local v2, "dataSpec":Lcom/google/android/exoplayer2/upstream/DataSpec;
    move-object v4, v2

    .line 189
    .local v4, "originalDataSpec":Lcom/google/android/exoplayer2/upstream/DataSpec;
    :goto_2a
    :try_start_2a
    new-instance v3, Lcom/google/android/exoplayer2/upstream/DataSourceInputStream;

    invoke-direct {v3, v0, v2}, Lcom/google/android/exoplayer2/upstream/DataSourceInputStream;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSpec;)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2f} :catch_5b

    .line 191
    .local v3, "inputStream":Lcom/google/android/exoplayer2/upstream/DataSourceInputStream;
    :try_start_2f
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Util;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object v5
    :try_end_33
    .catch Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidResponseCodeException; {:try_start_2f .. :try_end_33} :catch_39
    .catchall {:try_start_2f .. :try_end_33} :catchall_37

    .line 200
    :try_start_33
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Util;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_36} :catch_5b

    .line 191
    return-object v5

    .line 200
    :catchall_37
    move-exception v5

    goto :goto_56

    .line 192
    :catch_39
    move-exception v5

    .line 193
    .local v5, "e":Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidResponseCodeException;
    :try_start_3a
    invoke-static {v5, v1}, Lcom/google/android/exoplayer2/drm/HttpMediaDrmCallback;->getRedirectUrl(Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidResponseCodeException;I)Ljava/lang/String;

    move-result-object v6

    .line 194
    .local v6, "redirectUrl":Ljava/lang/String;
    if-eqz v6, :cond_54

    .line 197
    add-int/lit8 v1, v1, 0x1

    .line 198
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/upstream/DataSpec;->buildUpon()Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;->setUri(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;->build()Lcom/google/android/exoplayer2/upstream/DataSpec;

    move-result-object v7
    :try_end_4e
    .catchall {:try_start_3a .. :try_end_4e} :catchall_37

    move-object v2, v7

    .line 200
    .end local v5    # "e":Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidResponseCodeException;
    .end local v6    # "redirectUrl":Ljava/lang/String;
    :try_start_4f
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Util;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_52} :catch_5b

    .line 201
    nop

    .line 202
    .end local v3    # "inputStream":Lcom/google/android/exoplayer2/upstream/DataSourceInputStream;
    goto :goto_2a

    .line 195
    .restart local v3    # "inputStream":Lcom/google/android/exoplayer2/upstream/DataSourceInputStream;
    .restart local v5    # "e":Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidResponseCodeException;
    .restart local v6    # "redirectUrl":Ljava/lang/String;
    :cond_54
    nop

    .end local v0    # "dataSource":Lcom/google/android/exoplayer2/upstream/StatsDataSource;
    .end local v1    # "manualRedirectCount":I
    .end local v2    # "dataSpec":Lcom/google/android/exoplayer2/upstream/DataSpec;
    .end local v3    # "inputStream":Lcom/google/android/exoplayer2/upstream/DataSourceInputStream;
    .end local v4    # "originalDataSpec":Lcom/google/android/exoplayer2/upstream/DataSpec;
    .end local p0    # "dataSourceFactory":Lcom/google/android/exoplayer2/upstream/DataSource$Factory;
    .end local p1    # "url":Ljava/lang/String;
    .end local p2    # "httpBody":[B
    .end local p3    # "requestProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_55
    throw v5
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_37

    .line 200
    .end local v5    # "e":Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidResponseCodeException;
    .end local v6    # "redirectUrl":Ljava/lang/String;
    .restart local v0    # "dataSource":Lcom/google/android/exoplayer2/upstream/StatsDataSource;
    .restart local v1    # "manualRedirectCount":I
    .restart local v2    # "dataSpec":Lcom/google/android/exoplayer2/upstream/DataSpec;
    .restart local v3    # "inputStream":Lcom/google/android/exoplayer2/upstream/DataSourceInputStream;
    .restart local v4    # "originalDataSpec":Lcom/google/android/exoplayer2/upstream/DataSpec;
    .restart local p0    # "dataSourceFactory":Lcom/google/android/exoplayer2/upstream/DataSource$Factory;
    .restart local p1    # "url":Ljava/lang/String;
    .restart local p2    # "httpBody":[B
    .restart local p3    # "requestProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_56
    :try_start_56
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 201
    nop

    .end local v0    # "dataSource":Lcom/google/android/exoplayer2/upstream/StatsDataSource;
    .end local v1    # "manualRedirectCount":I
    .end local v2    # "dataSpec":Lcom/google/android/exoplayer2/upstream/DataSpec;
    .end local v4    # "originalDataSpec":Lcom/google/android/exoplayer2/upstream/DataSpec;
    .end local p0    # "dataSourceFactory":Lcom/google/android/exoplayer2/upstream/DataSource$Factory;
    .end local p1    # "url":Ljava/lang/String;
    .end local p2    # "httpBody":[B
    .end local p3    # "requestProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    throw v5
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_5b} :catch_5b

    .line 203
    .end local v3    # "inputStream":Lcom/google/android/exoplayer2/upstream/DataSourceInputStream;
    .restart local v0    # "dataSource":Lcom/google/android/exoplayer2/upstream/StatsDataSource;
    .restart local v1    # "manualRedirectCount":I
    .restart local v2    # "dataSpec":Lcom/google/android/exoplayer2/upstream/DataSpec;
    .restart local v4    # "originalDataSpec":Lcom/google/android/exoplayer2/upstream/DataSpec;
    .restart local p0    # "dataSourceFactory":Lcom/google/android/exoplayer2/upstream/DataSource$Factory;
    .restart local p1    # "url":Ljava/lang/String;
    .restart local p2    # "httpBody":[B
    .restart local p3    # "requestProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_5b
    move-exception v3

    move-object v9, v3

    .line 204
    .local v9, "e":Ljava/lang/Exception;
    new-instance v10, Lcom/google/android/exoplayer2/drm/MediaDrmCallbackException;

    .line 206
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/StatsDataSource;->getLastOpenedUri()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Landroid/net/Uri;

    .line 207
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/StatsDataSource;->getResponseHeaders()Ljava/util/Map;

    move-result-object v6

    .line 208
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/StatsDataSource;->getBytesRead()J

    move-result-wide v7

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lcom/google/android/exoplayer2/drm/MediaDrmCallbackException;-><init>(Lcom/google/android/exoplayer2/upstream/DataSpec;Landroid/net/Uri;Ljava/util/Map;JLjava/lang/Throwable;)V

    goto :goto_78

    :goto_77
    throw v10

    :goto_78
    goto :goto_77
.end method

.method private static getRedirectUrl(Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidResponseCodeException;I)Ljava/lang/String;
    .registers 8
    .param p0, "exception"    # Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidResponseCodeException;
    .param p1, "manualRedirectCount"    # I

    .line 218
    iget v0, p0, Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidResponseCodeException;->responseCode:I

    const/16 v1, 0x133

    const/4 v2, 0x0

    if-eq v0, v1, :cond_d

    iget v0, p0, Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidResponseCodeException;->responseCode:I

    const/16 v1, 0x134

    if-ne v0, v1, :cond_12

    :cond_d
    const/4 v0, 0x5

    if-ge p1, v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    .line 221
    .local v0, "manuallyRedirect":Z
    :goto_13
    const/4 v1, 0x0

    if-nez v0, :cond_17

    .line 222
    return-object v1

    .line 224
    :cond_17
    iget-object v3, p0, Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidResponseCodeException;->headerFields:Ljava/util/Map;

    .line 225
    .local v3, "headerFields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    if-eqz v3, :cond_32

    .line 226
    const-string v4, "Location"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 227
    .local v4, "locationHeaders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v4, :cond_32

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_32

    .line 228
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 231
    .end local v4    # "locationHeaders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_32
    return-object v1
.end method


# virtual methods
.method public clearAllKeyRequestProperties()V
    .registers 3

    .line 121
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/HttpMediaDrmCallback;->keyRequestProperties:Ljava/util/Map;

    monitor-enter v0

    .line 122
    :try_start_3
    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/HttpMediaDrmCallback;->keyRequestProperties:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 123
    monitor-exit v0

    .line 124
    return-void

    .line 123
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public clearKeyRequestProperty(Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 113
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/HttpMediaDrmCallback;->keyRequestProperties:Ljava/util/Map;

    monitor-enter v0

    .line 115
    :try_start_6
    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/HttpMediaDrmCallback;->keyRequestProperties:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    monitor-exit v0

    .line 117
    return-void

    .line 116
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public executeKeyRequest(Ljava/util/UUID;Lcom/google/android/exoplayer2/drm/ExoMediaDrm$KeyRequest;)[B
    .registers 15
    .param p1, "uuid"    # Ljava/util/UUID;
    .param p2, "request"    # Lcom/google/android/exoplayer2/drm/ExoMediaDrm$KeyRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/drm/MediaDrmCallbackException;
        }
    .end annotation

    .line 140
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/drm/ExoMediaDrm$KeyRequest;->getLicenseServerUrl()Ljava/lang/String;

    move-result-object v0

    .line 141
    .local v0, "url":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/drm/HttpMediaDrmCallback;->forceDefaultLicenseUrl:Z

    if-nez v1, :cond_e

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 142
    :cond_e
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/HttpMediaDrmCallback;->defaultLicenseUrl:Ljava/lang/String;

    .line 144
    :cond_10
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5f

    .line 152
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 155
    .local v1, "requestProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v2, Lcom/google/android/exoplayer2/C;->PLAYREADY_UUID:Ljava/util/UUID;

    invoke-virtual {v2, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 156
    const-string v2, "text/xml"

    goto :goto_33

    .line 157
    :cond_26
    sget-object v2, Lcom/google/android/exoplayer2/C;->CLEARKEY_UUID:Ljava/util/UUID;

    invoke-virtual {v2, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    const-string v2, "application/json"

    goto :goto_33

    :cond_31
    const-string v2, "application/octet-stream"

    :goto_33
    nop

    .line 158
    .local v2, "contentType":Ljava/lang/String;
    const-string v3, "Content-Type"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    sget-object v3, Lcom/google/android/exoplayer2/C;->PLAYREADY_UUID:Ljava/util/UUID;

    invoke-virtual {v3, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_48

    .line 160
    const-string v3, "SOAPAction"

    const-string v4, "http://schemas.microsoft.com/DRM/2007/03/protocols/AcquireLicense"

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    :cond_48
    iget-object v3, p0, Lcom/google/android/exoplayer2/drm/HttpMediaDrmCallback;->keyRequestProperties:Ljava/util/Map;

    monitor-enter v3

    .line 165
    :try_start_4b
    iget-object v4, p0, Lcom/google/android/exoplayer2/drm/HttpMediaDrmCallback;->keyRequestProperties:Ljava/util/Map;

    invoke-interface {v1, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 166
    monitor-exit v3
    :try_end_51
    .catchall {:try_start_4b .. :try_end_51} :catchall_5c

    .line 167
    iget-object v3, p0, Lcom/google/android/exoplayer2/drm/HttpMediaDrmCallback;->dataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/drm/ExoMediaDrm$KeyRequest;->getData()[B

    move-result-object v4

    invoke-static {v3, v0, v4, v1}, Lcom/google/android/exoplayer2/drm/HttpMediaDrmCallback;->executePost(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Ljava/lang/String;[BLjava/util/Map;)[B

    move-result-object v3

    return-object v3

    .line 166
    :catchall_5c
    move-exception v4

    :try_start_5d
    monitor-exit v3
    :try_end_5e
    .catchall {:try_start_5d .. :try_end_5e} :catchall_5c

    throw v4

    .line 145
    .end local v1    # "requestProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "contentType":Ljava/lang/String;
    :cond_5f
    new-instance v1, Lcom/google/android/exoplayer2/drm/MediaDrmCallbackException;

    new-instance v2, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;

    invoke-direct {v2}, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;-><init>()V

    sget-object v3, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 146
    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;->setUri(Landroid/net/Uri;)Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;->build()Lcom/google/android/exoplayer2/upstream/DataSpec;

    move-result-object v6

    sget-object v7, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 148
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->of()Lcom/google/common/collect/ImmutableMap;

    move-result-object v8

    const-wide/16 v9, 0x0

    new-instance v11, Ljava/lang/IllegalStateException;

    const-string v2, "No license URL"

    invoke-direct {v11, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    move-object v5, v1

    invoke-direct/range {v5 .. v11}, Lcom/google/android/exoplayer2/drm/MediaDrmCallbackException;-><init>(Lcom/google/android/exoplayer2/upstream/DataSpec;Landroid/net/Uri;Ljava/util/Map;JLjava/lang/Throwable;)V

    throw v1
.end method

.method public executeProvisionRequest(Ljava/util/UUID;Lcom/google/android/exoplayer2/drm/ExoMediaDrm$ProvisionRequest;)[B
    .registers 7
    .param p1, "uuid"    # Ljava/util/UUID;
    .param p2, "request"    # Lcom/google/android/exoplayer2/drm/ExoMediaDrm$ProvisionRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/drm/MediaDrmCallbackException;
        }
    .end annotation

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 130
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/drm/ExoMediaDrm$ProvisionRequest;->getDefaultUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&signedRequest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/drm/ExoMediaDrm$ProvisionRequest;->getData()[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Util;->fromUtf8Bytes([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 131
    .local v0, "url":Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/HttpMediaDrmCallback;->dataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    .line 135
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    .line 131
    const/4 v3, 0x0

    invoke-static {v1, v0, v3, v2}, Lcom/google/android/exoplayer2/drm/HttpMediaDrmCallback;->executePost(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Ljava/lang/String;[BLjava/util/Map;)[B

    move-result-object v1

    return-object v1
.end method

.method public setKeyRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 100
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/HttpMediaDrmCallback;->keyRequestProperties:Ljava/util/Map;

    monitor-enter v0

    .line 103
    :try_start_9
    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/HttpMediaDrmCallback;->keyRequestProperties:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    monitor-exit v0

    .line 105
    return-void

    .line 104
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_10

    throw v1
.end method
