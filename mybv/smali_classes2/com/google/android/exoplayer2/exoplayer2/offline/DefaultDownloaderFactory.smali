.class public Lcom/google/android/exoplayer2/offline/DefaultDownloaderFactory;
.super Ljava/lang/Object;
.source "DefaultDownloaderFactory.java"

# interfaces
.implements Lcom/google/android/exoplayer2/offline/DownloaderFactory;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final CONSTRUCTORS:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/reflect/Constructor<",
            "+",
            "Lcom/google/android/exoplayer2/offline/Downloader;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final cacheDataSourceFactory:Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;

.field private final executor:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 42
    invoke-static {}, Lcom/google/android/exoplayer2/offline/DefaultDownloaderFactory;->createDownloaderConstructors()Landroid/util/SparseArray;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/offline/DefaultDownloaderFactory;->CONSTRUCTORS:Landroid/util/SparseArray;

    .line 41
    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;)V
    .registers 3
    .param p1, "cacheDataSourceFactory"    # Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 56
    new-instance v0, Lcom/google/android/exoplayer2/offline/DefaultDownloaderFactory$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/offline/DefaultDownloaderFactory$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/offline/DefaultDownloaderFactory;-><init>(Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;Ljava/util/concurrent/Executor;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;Ljava/util/concurrent/Executor;)V
    .registers 4
    .param p1, "cacheDataSourceFactory"    # Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;

    iput-object v0, p0, Lcom/google/android/exoplayer2/offline/DefaultDownloaderFactory;->cacheDataSourceFactory:Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;

    .line 72
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lcom/google/android/exoplayer2/offline/DefaultDownloaderFactory;->executor:Ljava/util/concurrent/Executor;

    .line 73
    return-void
.end method

.method private createDownloader(Lcom/google/android/exoplayer2/offline/DownloadRequest;I)Lcom/google/android/exoplayer2/offline/Downloader;
    .registers 9
    .param p1, "request"    # Lcom/google/android/exoplayer2/offline/DownloadRequest;
    .param p2, "contentType"    # I

    .line 98
    sget-object v0, Lcom/google/android/exoplayer2/offline/DefaultDownloaderFactory;->CONSTRUCTORS:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Constructor;

    .line 99
    .local v0, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lcom/google/android/exoplayer2/offline/Downloader;>;"
    if-eqz v0, :cond_56

    .line 102
    new-instance v1, Lcom/google/android/exoplayer2/MediaItem$Builder;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/MediaItem$Builder;-><init>()V

    iget-object v2, p1, Lcom/google/android/exoplayer2/offline/DownloadRequest;->uri:Landroid/net/Uri;

    .line 104
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/MediaItem$Builder;->setUri(Landroid/net/Uri;)Lcom/google/android/exoplayer2/MediaItem$Builder;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/exoplayer2/offline/DownloadRequest;->streamKeys:Ljava/util/List;

    .line 105
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/MediaItem$Builder;->setStreamKeys(Ljava/util/List;)Lcom/google/android/exoplayer2/MediaItem$Builder;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/exoplayer2/offline/DownloadRequest;->customCacheKey:Ljava/lang/String;

    .line 106
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/MediaItem$Builder;->setCustomCacheKey(Ljava/lang/String;)Lcom/google/android/exoplayer2/MediaItem$Builder;

    move-result-object v1

    .line 107
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/MediaItem$Builder;->build()Lcom/google/android/exoplayer2/MediaItem;

    move-result-object v1

    .line 109
    .local v1, "mediaItem":Lcom/google/android/exoplayer2/MediaItem;
    const/4 v2, 0x3

    :try_start_26
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    iget-object v3, p0, Lcom/google/android/exoplayer2/offline/DefaultDownloaderFactory;->cacheDataSourceFactory:Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/google/android/exoplayer2/offline/DefaultDownloaderFactory;->executor:Ljava/util/concurrent/Executor;

    const/4 v4, 0x2

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/offline/Downloader;
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_3b} :catch_3c

    return-object v2

    .line 110
    :catch_3c
    move-exception v2

    .line 111
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to instantiate downloader for content type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 100
    .end local v1    # "mediaItem":Lcom/google/android/exoplayer2/MediaItem;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_56
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Module missing for content type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static createDownloaderConstructors()Landroid/util/SparseArray;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Ljava/lang/reflect/Constructor<",
            "+",
            "Lcom/google/android/exoplayer2/offline/Downloader;",
            ">;>;"
        }
    .end annotation

    .line 117
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 119
    .local v0, "array":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/reflect/Constructor<+Lcom/google/android/exoplayer2/offline/Downloader;>;>;"
    :try_start_5
    const-string v1, "com.google.android.exoplayer2.source.dash.offline.DashDownloader"

    .line 122
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 121
    invoke-static {v1}, Lcom/google/android/exoplayer2/offline/DefaultDownloaderFactory;->getDownloaderConstructor(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 119
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_13
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_13} :catch_14

    .line 125
    goto :goto_15

    .line 123
    :catch_14
    move-exception v1

    .line 128
    :goto_15
    :try_start_15
    const-string v1, "com.google.android.exoplayer2.source.hls.offline.HlsDownloader"

    .line 131
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 130
    invoke-static {v1}, Lcom/google/android/exoplayer2/offline/DefaultDownloaderFactory;->getDownloaderConstructor(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 128
    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_23
    .catch Ljava/lang/ClassNotFoundException; {:try_start_15 .. :try_end_23} :catch_24

    .line 134
    goto :goto_25

    .line 132
    :catch_24
    move-exception v1

    .line 136
    :goto_25
    :try_start_25
    const-string v1, "com.google.android.exoplayer2.source.smoothstreaming.offline.SsDownloader"

    .line 139
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 138
    invoke-static {v1}, Lcom/google/android/exoplayer2/offline/DefaultDownloaderFactory;->getDownloaderConstructor(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 136
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_33
    .catch Ljava/lang/ClassNotFoundException; {:try_start_25 .. :try_end_33} :catch_34

    .line 143
    goto :goto_35

    .line 141
    :catch_34
    move-exception v1

    .line 144
    :goto_35
    return-object v0
.end method

.method private static getDownloaderConstructor(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Constructor<",
            "+",
            "Lcom/google/android/exoplayer2/offline/Downloader;",
            ">;"
        }
    .end annotation

    .line 149
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    const-class v0, Lcom/google/android/exoplayer2/offline/Downloader;

    .line 150
    invoke-virtual {p0, v0}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Lcom/google/android/exoplayer2/MediaItem;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-class v2, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-class v2, Ljava/util/concurrent/Executor;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 151
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0
    :try_end_1c
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_1c} :catch_1d

    .line 149
    return-object v0

    .line 152
    :catch_1d
    move-exception v0

    .line 154
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Downloader constructor missing"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public createDownloader(Lcom/google/android/exoplayer2/offline/DownloadRequest;)Lcom/google/android/exoplayer2/offline/Downloader;
    .registers 7
    .param p1, "request"    # Lcom/google/android/exoplayer2/offline/DownloadRequest;

    .line 78
    iget-object v0, p1, Lcom/google/android/exoplayer2/offline/DownloadRequest;->uri:Landroid/net/Uri;

    iget-object v1, p1, Lcom/google/android/exoplayer2/offline/DownloadRequest;->mimeType:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Util;->inferContentTypeForUriAndMimeType(Landroid/net/Uri;Ljava/lang/String;)I

    move-result v0

    .line 79
    .local v0, "contentType":I
    packed-switch v0, :pswitch_data_48

    .line 93
    :pswitch_b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 85
    :pswitch_24
    new-instance v1, Lcom/google/android/exoplayer2/offline/ProgressiveDownloader;

    new-instance v2, Lcom/google/android/exoplayer2/MediaItem$Builder;

    invoke-direct {v2}, Lcom/google/android/exoplayer2/MediaItem$Builder;-><init>()V

    iget-object v3, p1, Lcom/google/android/exoplayer2/offline/DownloadRequest;->uri:Landroid/net/Uri;

    .line 87
    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/MediaItem$Builder;->setUri(Landroid/net/Uri;)Lcom/google/android/exoplayer2/MediaItem$Builder;

    move-result-object v2

    iget-object v3, p1, Lcom/google/android/exoplayer2/offline/DownloadRequest;->customCacheKey:Ljava/lang/String;

    .line 88
    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/MediaItem$Builder;->setCustomCacheKey(Ljava/lang/String;)Lcom/google/android/exoplayer2/MediaItem$Builder;

    move-result-object v2

    .line 89
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/MediaItem$Builder;->build()Lcom/google/android/exoplayer2/MediaItem;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/exoplayer2/offline/DefaultDownloaderFactory;->cacheDataSourceFactory:Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;

    iget-object v4, p0, Lcom/google/android/exoplayer2/offline/DefaultDownloaderFactory;->executor:Ljava/util/concurrent/Executor;

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/exoplayer2/offline/ProgressiveDownloader;-><init>(Lcom/google/android/exoplayer2/MediaItem;Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;Ljava/util/concurrent/Executor;)V

    .line 85
    return-object v1

    .line 83
    :pswitch_43
    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/offline/DefaultDownloaderFactory;->createDownloader(Lcom/google/android/exoplayer2/offline/DownloadRequest;I)Lcom/google/android/exoplayer2/offline/Downloader;

    move-result-object v1

    return-object v1

    :pswitch_data_48
    .packed-switch 0x0
        :pswitch_43
        :pswitch_43
        :pswitch_43
        :pswitch_b
        :pswitch_24
    .end packed-switch
.end method
