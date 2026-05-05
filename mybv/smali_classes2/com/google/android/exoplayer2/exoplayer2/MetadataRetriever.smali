.class public final Lcom/google/android/exoplayer2/MetadataRetriever;
.super Ljava/lang/Object;
.source "MetadataRetriever.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static retrieveMetadata(Landroid/content/Context;Lcom/google/android/exoplayer2/MediaItem;)Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mediaItem"    # Lcom/google/android/exoplayer2/MediaItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/exoplayer2/MediaItem;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Lcom/google/android/exoplayer2/source/TrackGroupArray;",
            ">;"
        }
    .end annotation

    .line 69
    sget-object v0, Lcom/google/android/exoplayer2/util/Clock;->DEFAULT:Lcom/google/android/exoplayer2/util/Clock;

    invoke-static {p0, p1, v0}, Lcom/google/android/exoplayer2/MetadataRetriever;->retrieveMetadata(Landroid/content/Context;Lcom/google/android/exoplayer2/MediaItem;Lcom/google/android/exoplayer2/util/Clock;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method static retrieveMetadata(Landroid/content/Context;Lcom/google/android/exoplayer2/MediaItem;Lcom/google/android/exoplayer2/util/Clock;)Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mediaItem"    # Lcom/google/android/exoplayer2/MediaItem;
    .param p2, "clock"    # Lcom/google/android/exoplayer2/util/Clock;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/exoplayer2/MediaItem;",
            "Lcom/google/android/exoplayer2/util/Clock;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Lcom/google/android/exoplayer2/source/TrackGroupArray;",
            ">;"
        }
    .end annotation

    .line 90
    new-instance v0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;-><init>()V

    .line 92
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;->setMp4ExtractorFlags(I)Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;

    move-result-object v0

    .line 94
    .local v0, "extractorsFactory":Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;
    new-instance v1, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;

    invoke-direct {v1, p0, v0}, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;)V

    .line 96
    .local v1, "mediaSourceFactory":Lcom/google/android/exoplayer2/source/MediaSource$Factory;
    invoke-static {v1, p1, p2}, Lcom/google/android/exoplayer2/MetadataRetriever;->retrieveMetadata(Lcom/google/android/exoplayer2/source/MediaSource$Factory;Lcom/google/android/exoplayer2/MediaItem;Lcom/google/android/exoplayer2/util/Clock;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v2

    return-object v2
.end method

.method public static retrieveMetadata(Lcom/google/android/exoplayer2/source/MediaSource$Factory;Lcom/google/android/exoplayer2/MediaItem;)Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 3
    .param p0, "mediaSourceFactory"    # Lcom/google/android/exoplayer2/source/MediaSource$Factory;
    .param p1, "mediaItem"    # Lcom/google/android/exoplayer2/MediaItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/source/MediaSource$Factory;",
            "Lcom/google/android/exoplayer2/MediaItem;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Lcom/google/android/exoplayer2/source/TrackGroupArray;",
            ">;"
        }
    .end annotation

    .line 84
    sget-object v0, Lcom/google/android/exoplayer2/util/Clock;->DEFAULT:Lcom/google/android/exoplayer2/util/Clock;

    invoke-static {p0, p1, v0}, Lcom/google/android/exoplayer2/MetadataRetriever;->retrieveMetadata(Lcom/google/android/exoplayer2/source/MediaSource$Factory;Lcom/google/android/exoplayer2/MediaItem;Lcom/google/android/exoplayer2/util/Clock;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method private static retrieveMetadata(Lcom/google/android/exoplayer2/source/MediaSource$Factory;Lcom/google/android/exoplayer2/MediaItem;Lcom/google/android/exoplayer2/util/Clock;)Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 4
    .param p0, "mediaSourceFactory"    # Lcom/google/android/exoplayer2/source/MediaSource$Factory;
    .param p1, "mediaItem"    # Lcom/google/android/exoplayer2/MediaItem;
    .param p2, "clock"    # Lcom/google/android/exoplayer2/util/Clock;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/source/MediaSource$Factory;",
            "Lcom/google/android/exoplayer2/MediaItem;",
            "Lcom/google/android/exoplayer2/util/Clock;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Lcom/google/android/exoplayer2/source/TrackGroupArray;",
            ">;"
        }
    .end annotation

    .line 103
    new-instance v0, Lcom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal;

    invoke-direct {v0, p0, p2}, Lcom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal;-><init>(Lcom/google/android/exoplayer2/source/MediaSource$Factory;Lcom/google/android/exoplayer2/util/Clock;)V

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal;->retrieveMetadata(Lcom/google/android/exoplayer2/MediaItem;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method
