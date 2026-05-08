.class Lcom/google/android/exoplayer2/source/MediaSourceFactory$1;
.super Ljava/lang/Object;
.source "MediaSourceFactory.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/MediaSourceFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/MediaSourceFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createMediaSource(Lcom/google/android/exoplayer2/MediaItem;)Lcom/google/android/exoplayer2/source/MediaSource;
    .registers 3
    .param p1, "mediaItem"    # Lcom/google/android/exoplayer2/MediaItem;

    .line 55
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getSupportedTypes()[I
    .registers 2

    .line 50
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public synthetic setCmcdConfigurationFactory(Lcom/google/android/exoplayer2/upstream/CmcdConfiguration$Factory;)Lcom/google/android/exoplayer2/source/MediaSource$Factory;
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/source/MediaSource$Factory$-CC;->$default$setCmcdConfigurationFactory(Lcom/google/android/exoplayer2/source/MediaSource$Factory;Lcom/google/android/exoplayer2/upstream/CmcdConfiguration$Factory;)Lcom/google/android/exoplayer2/source/MediaSource$Factory;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setDrmSessionManagerProvider(Lcom/google/android/exoplayer2/drm/DrmSessionManagerProvider;)Lcom/google/android/exoplayer2/source/MediaSource$Factory;
    .registers 2

    .line 35
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/MediaSourceFactory$1;->setDrmSessionManagerProvider(Lcom/google/android/exoplayer2/drm/DrmSessionManagerProvider;)Lcom/google/android/exoplayer2/source/MediaSourceFactory;

    move-result-object p1

    return-object p1
.end method

.method public setDrmSessionManagerProvider(Lcom/google/android/exoplayer2/drm/DrmSessionManagerProvider;)Lcom/google/android/exoplayer2/source/MediaSourceFactory;
    .registers 2
    .param p1, "drmSessionManagerProvider"    # Lcom/google/android/exoplayer2/drm/DrmSessionManagerProvider;

    .line 39
    return-object p0
.end method

.method public bridge synthetic setLoadErrorHandlingPolicy(Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;)Lcom/google/android/exoplayer2/source/MediaSource$Factory;
    .registers 2

    .line 35
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/MediaSourceFactory$1;->setLoadErrorHandlingPolicy(Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;)Lcom/google/android/exoplayer2/source/MediaSourceFactory;

    move-result-object p1

    return-object p1
.end method

.method public setLoadErrorHandlingPolicy(Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;)Lcom/google/android/exoplayer2/source/MediaSourceFactory;
    .registers 2
    .param p1, "loadErrorHandlingPolicy"    # Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    .line 45
    return-object p0
.end method
