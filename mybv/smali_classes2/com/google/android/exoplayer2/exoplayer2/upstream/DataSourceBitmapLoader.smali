.class public final Lcom/google/android/exoplayer2/upstream/DataSourceBitmapLoader;
.super Ljava/lang/Object;
.source "DataSourceBitmapLoader.java"

# interfaces
.implements Lcom/google/android/exoplayer2/util/BitmapLoader;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final DEFAULT_EXECUTOR_SERVICE:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier<",
            "Lcom/google/common/util/concurrent/ListeningExecutorService;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final dataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

.field private final listeningExecutorService:Lcom/google/common/util/concurrent/ListeningExecutorService;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 51
    new-instance v0, Lcom/google/android/exoplayer2/upstream/DataSourceBitmapLoader$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/upstream/DataSourceBitmapLoader$$ExternalSyntheticLambda1;-><init>()V

    .line 52
    invoke-static {v0}, Lcom/google/common/base/Suppliers;->memoize(Lcom/google/common/base/Supplier;)Lcom/google/common/base/Supplier;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/upstream/DataSourceBitmapLoader;->DEFAULT_EXECUTOR_SERVICE:Lcom/google/common/base/Supplier;

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 63
    sget-object v0, Lcom/google/android/exoplayer2/upstream/DataSourceBitmapLoader;->DEFAULT_EXECUTOR_SERVICE:Lcom/google/common/base/Supplier;

    invoke-interface {v0}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/ListeningExecutorService;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/ListeningExecutorService;

    new-instance v1, Lcom/google/android/exoplayer2/upstream/DefaultDataSource$Factory;

    invoke-direct {v1, p1}, Lcom/google/android/exoplayer2/upstream/DefaultDataSource$Factory;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/upstream/DataSourceBitmapLoader;-><init>(Lcom/google/common/util/concurrent/ListeningExecutorService;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Lcom/google/common/util/concurrent/ListeningExecutorService;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V
    .registers 3
    .param p1, "listeningExecutorService"    # Lcom/google/common/util/concurrent/ListeningExecutorService;
    .param p2, "dataSourceFactory"    # Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/DataSourceBitmapLoader;->listeningExecutorService:Lcom/google/common/util/concurrent/ListeningExecutorService;

    .line 76
    iput-object p2, p0, Lcom/google/android/exoplayer2/upstream/DataSourceBitmapLoader;->dataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    .line 77
    return-void
.end method

.method private static decode([B)Landroid/graphics/Bitmap;
    .registers 4
    .param p0, "data"    # [B

    .line 91
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 92
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_9

    const/4 v1, 0x1

    :cond_9
    const-string v2, "Could not decode image data"

    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 93
    return-object v0
.end method

.method static synthetic lambda$decodeBitmap$1([B)Landroid/graphics/Bitmap;
    .registers 2
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 81
    invoke-static {p0}, Lcom/google/android/exoplayer2/upstream/DataSourceBitmapLoader;->decode([B)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$static$0()Lcom/google/common/util/concurrent/ListeningExecutorService;
    .registers 1

    .line 53
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/util/concurrent/MoreExecutors;->listeningDecorator(Ljava/util/concurrent/ExecutorService;)Lcom/google/common/util/concurrent/ListeningExecutorService;

    move-result-object v0

    return-object v0
.end method

.method private static load(Lcom/google/android/exoplayer2/upstream/DataSource;Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .registers 5
    .param p0, "dataSource"    # Lcom/google/android/exoplayer2/upstream/DataSource;
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 97
    new-instance v0, Lcom/google/android/exoplayer2/upstream/DataSpec;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;)V

    .line 98
    .local v0, "dataSpec":Lcom/google/android/exoplayer2/upstream/DataSpec;
    invoke-interface {p0, v0}, Lcom/google/android/exoplayer2/upstream/DataSource;->open(Lcom/google/android/exoplayer2/upstream/DataSpec;)J

    .line 99
    invoke-static {p0}, Lcom/google/android/exoplayer2/upstream/DataSourceUtil;->readToEnd(Lcom/google/android/exoplayer2/upstream/DataSource;)[B

    move-result-object v1

    .line 100
    .local v1, "readData":[B
    invoke-static {v1}, Lcom/google/android/exoplayer2/upstream/DataSourceBitmapLoader;->decode([B)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public decodeBitmap([B)Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 4
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/DataSourceBitmapLoader;->listeningExecutorService:Lcom/google/common/util/concurrent/ListeningExecutorService;

    new-instance v1, Lcom/google/android/exoplayer2/upstream/DataSourceBitmapLoader$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1}, Lcom/google/android/exoplayer2/upstream/DataSourceBitmapLoader$$ExternalSyntheticLambda2;-><init>([B)V

    invoke-interface {v0, v1}, Lcom/google/common/util/concurrent/ListeningExecutorService;->submit(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$loadBitmap$2$com-google-android-exoplayer2-upstream-DataSourceBitmapLoader(Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .registers 3
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/DataSourceBitmapLoader;->dataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/DataSource$Factory;->createDataSource()Lcom/google/android/exoplayer2/upstream/DataSource;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/upstream/DataSourceBitmapLoader;->load(Lcom/google/android/exoplayer2/upstream/DataSource;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public loadBitmap(Landroid/net/Uri;)Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 4
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/DataSourceBitmapLoader;->listeningExecutorService:Lcom/google/common/util/concurrent/ListeningExecutorService;

    new-instance v1, Lcom/google/android/exoplayer2/upstream/DataSourceBitmapLoader$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer2/upstream/DataSourceBitmapLoader$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/exoplayer2/upstream/DataSourceBitmapLoader;Landroid/net/Uri;)V

    invoke-interface {v0, v1}, Lcom/google/common/util/concurrent/ListeningExecutorService;->submit(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public synthetic loadBitmapFromMetadata(Lcom/google/android/exoplayer2/MediaMetadata;)Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/util/BitmapLoader$-CC;->$default$loadBitmapFromMetadata(Lcom/google/android/exoplayer2/util/BitmapLoader;Lcom/google/android/exoplayer2/MediaMetadata;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method
