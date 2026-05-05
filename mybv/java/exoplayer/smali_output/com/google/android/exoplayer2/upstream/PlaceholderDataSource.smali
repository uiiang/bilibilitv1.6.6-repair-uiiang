.class public final Lcom/google/android/exoplayer2/upstream/PlaceholderDataSource;
.super Ljava/lang/Object;
.source "PlaceholderDataSource.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/DataSource;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final FACTORY:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

.field public static final INSTANCE:Lcom/google/android/exoplayer2/upstream/PlaceholderDataSource;


# direct methods
.method public static synthetic $r8$lambda$Qku_15DubQGfyuKLu3QSDqilS4U()Lcom/google/android/exoplayer2/upstream/PlaceholderDataSource;
    .registers 1

    new-instance v0, Lcom/google/android/exoplayer2/upstream/PlaceholderDataSource;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/upstream/PlaceholderDataSource;-><init>()V

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 33
    new-instance v0, Lcom/google/android/exoplayer2/upstream/PlaceholderDataSource;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/upstream/PlaceholderDataSource;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/upstream/PlaceholderDataSource;->INSTANCE:Lcom/google/android/exoplayer2/upstream/PlaceholderDataSource;

    .line 36
    new-instance v0, Lcom/google/android/exoplayer2/upstream/PlaceholderDataSource$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/upstream/PlaceholderDataSource$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/upstream/PlaceholderDataSource;->FACTORY:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addTransferListener(Lcom/google/android/exoplayer2/upstream/TransferListener;)V
    .registers 2
    .param p1, "transferListener"    # Lcom/google/android/exoplayer2/upstream/TransferListener;

    .line 43
    return-void
.end method

.method public close()V
    .registers 1

    .line 64
    return-void
.end method

.method public synthetic getResponseHeaders()Ljava/util/Map;
    .registers 2

    invoke-static {p0}, Lcom/google/android/exoplayer2/upstream/DataSource$-CC;->$default$getResponseHeaders(Lcom/google/android/exoplayer2/upstream/DataSource;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .registers 2

    .line 58
    const/4 v0, 0x0

    return-object v0
.end method

.method public open(Lcom/google/android/exoplayer2/upstream/DataSpec;)J
    .registers 4
    .param p1, "dataSpec"    # Lcom/google/android/exoplayer2/upstream/DataSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    new-instance v0, Ljava/io/IOException;

    const-string v1, "PlaceholderDataSource cannot be opened"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public read([BII)I
    .registers 5
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 52
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
