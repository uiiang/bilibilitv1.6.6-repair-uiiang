.class public final Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;
.super Ljava/lang/Object;
.source "HlsMediaSource.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/MediaSourceFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# instance fields
.field private allowChunklessPreparation:Z

.field private cmcdConfigurationFactory:Lcom/google/android/exoplayer2/upstream/CmcdConfiguration$Factory;

.field private compositeSequenceableLoaderFactory:Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;

.field private drmSessionManagerProvider:Lcom/google/android/exoplayer2/drm/DrmSessionManagerProvider;

.field private elapsedRealTimeOffsetMs:J

.field private extractorFactory:Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory;

.field private final hlsDataSourceFactory:Lcom/google/android/exoplayer2/source/hls/HlsDataSourceFactory;

.field private loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

.field private metadataType:I

.field private playlistParserFactory:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParserFactory;

.field private playlistTrackerFactory:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$Factory;

.field private timestampAdjusterInitializationTimeoutMs:J

.field private useSessionKeys:Z


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/hls/HlsDataSourceFactory;)V
    .registers 5
    .param p1, "hlsDataSourceFactory"    # Lcom/google/android/exoplayer2/source/hls/HlsDataSourceFactory;

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/hls/HlsDataSourceFactory;

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->hlsDataSourceFactory:Lcom/google/android/exoplayer2/source/hls/HlsDataSourceFactory;

    .line 165
    new-instance v0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManagerProvider;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManagerProvider;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->drmSessionManagerProvider:Lcom/google/android/exoplayer2/drm/DrmSessionManagerProvider;

    .line 166
    new-instance v0, Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistParserFactory;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistParserFactory;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->playlistParserFactory:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParserFactory;

    .line 167
    sget-object v0, Lcom/google/android/exoplayer2/source/hls/playlist/DefaultHlsPlaylistTracker;->FACTORY:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$Factory;

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->playlistTrackerFactory:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$Factory;

    .line 168
    sget-object v0, Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory;->DEFAULT:Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory;

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->extractorFactory:Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory;

    .line 169
    new-instance v0, Lcom/google/android/exoplayer2/upstream/DefaultLoadErrorHandlingPolicy;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/upstream/DefaultLoadErrorHandlingPolicy;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    .line 170
    new-instance v0, Lcom/google/android/exoplayer2/source/DefaultCompositeSequenceableLoaderFactory;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/source/DefaultCompositeSequenceableLoaderFactory;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->compositeSequenceableLoaderFactory:Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;

    .line 171
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->metadataType:I

    .line 172
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->elapsedRealTimeOffsetMs:J

    .line 173
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->allowChunklessPreparation:Z

    .line 174
    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V
    .registers 3
    .param p1, "dataSourceFactory"    # Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    .line 143
    new-instance v0, Lcom/google/android/exoplayer2/source/hls/DefaultHlsDataSourceFactory;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/source/hls/DefaultHlsDataSourceFactory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/source/hls/HlsDataSourceFactory;)V

    .line 144
    return-void
.end method


# virtual methods
.method public bridge synthetic createMediaSource(Lcom/google/android/exoplayer2/MediaItem;)Lcom/google/android/exoplayer2/source/MediaSource;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->createMediaSource(Lcom/google/android/exoplayer2/MediaItem;)Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;

    move-result-object p1

    return-object p1
.end method

.method public createMediaSource(Lcom/google/android/exoplayer2/MediaItem;)Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;
    .registers 24
    .param p1, "mediaItem"    # Lcom/google/android/exoplayer2/MediaItem;

    .line 371
    move-object/from16 v0, p0

    move-object/from16 v2, p1

    iget-object v1, v2, Lcom/google/android/exoplayer2/MediaItem;->localConfiguration:Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->playlistParserFactory:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParserFactory;

    .line 373
    .local v1, "playlistParserFactory":Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParserFactory;
    iget-object v3, v2, Lcom/google/android/exoplayer2/MediaItem;->localConfiguration:Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;

    iget-object v15, v3, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;->streamKeys:Ljava/util/List;

    .line 374
    .local v15, "streamKeys":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/offline/StreamKey;>;"
    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1d

    .line 375
    new-instance v3, Lcom/google/android/exoplayer2/source/hls/playlist/FilteringHlsPlaylistParserFactory;

    invoke-direct {v3, v1, v15}, Lcom/google/android/exoplayer2/source/hls/playlist/FilteringHlsPlaylistParserFactory;-><init>(Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParserFactory;Ljava/util/List;)V

    move-object v1, v3

    move-object v14, v1

    goto :goto_1e

    .line 374
    :cond_1d
    move-object v14, v1

    .line 380
    .end local v1    # "playlistParserFactory":Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParserFactory;
    .local v14, "playlistParserFactory":Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParserFactory;
    :goto_1e
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->cmcdConfigurationFactory:Lcom/google/android/exoplayer2/upstream/CmcdConfiguration$Factory;

    if-nez v1, :cond_25

    .line 381
    const/4 v1, 0x0

    move-object v6, v1

    goto :goto_2a

    .line 382
    :cond_25
    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/upstream/CmcdConfiguration$Factory;->createCmcdConfiguration(Lcom/google/android/exoplayer2/MediaItem;)Lcom/google/android/exoplayer2/upstream/CmcdConfiguration;

    move-result-object v1

    move-object v6, v1

    :goto_2a
    nop

    .line 384
    .local v6, "cmcdConfiguration":Lcom/google/android/exoplayer2/upstream/CmcdConfiguration;
    new-instance v18, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;

    move-object/from16 v1, v18

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->hlsDataSourceFactory:Lcom/google/android/exoplayer2/source/hls/HlsDataSourceFactory;

    iget-object v4, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->extractorFactory:Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory;

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->compositeSequenceableLoaderFactory:Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;

    iget-object v7, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->drmSessionManagerProvider:Lcom/google/android/exoplayer2/drm/DrmSessionManagerProvider;

    .line 390
    invoke-interface {v7, v2}, Lcom/google/android/exoplayer2/drm/DrmSessionManagerProvider;->get(Lcom/google/android/exoplayer2/MediaItem;)Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    move-result-object v7

    iget-object v9, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    move-object v8, v9

    iget-object v10, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->playlistTrackerFactory:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$Factory;

    iget-object v11, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->hlsDataSourceFactory:Lcom/google/android/exoplayer2/source/hls/HlsDataSourceFactory;

    .line 392
    invoke-interface {v10, v11, v9, v14}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$Factory;->createTracker(Lcom/google/android/exoplayer2/source/hls/HlsDataSourceFactory;Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParserFactory;)Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    move-result-object v9

    iget-wide v10, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->elapsedRealTimeOffsetMs:J

    iget-boolean v12, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->allowChunklessPreparation:Z

    iget v13, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->metadataType:I

    iget-boolean v2, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->useSessionKeys:Z

    move-object/from16 v19, v14

    .end local v14    # "playlistParserFactory":Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParserFactory;
    .local v19, "playlistParserFactory":Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParserFactory;
    move v14, v2

    move-object/from16 v20, v1

    iget-wide v1, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->timestampAdjusterInitializationTimeoutMs:J

    move-object/from16 v21, v15

    .end local v15    # "streamKeys":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/offline/StreamKey;>;"
    .local v21, "streamKeys":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/offline/StreamKey;>;"
    move-wide v15, v1

    const/16 v17, 0x0

    move-object/from16 v2, p1

    move-object/from16 v1, v20

    invoke-direct/range {v1 .. v17}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;-><init>(Lcom/google/android/exoplayer2/MediaItem;Lcom/google/android/exoplayer2/source/hls/HlsDataSourceFactory;Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory;Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;Lcom/google/android/exoplayer2/upstream/CmcdConfiguration;Lcom/google/android/exoplayer2/drm/DrmSessionManager;Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;JZIZJLcom/google/android/exoplayer2/source/hls/HlsMediaSource$1;)V

    .line 384
    return-object v18
.end method

.method public getSupportedTypes()[I
    .registers 2

    .line 403
    const/4 v0, 0x2

    filled-new-array {v0}, [I

    move-result-object v0

    return-object v0
.end method

.method public setAllowChunklessPreparation(Z)Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;
    .registers 2
    .param p1, "allowChunklessPreparation"    # Z

    .line 268
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->allowChunklessPreparation:Z

    .line 269
    return-object p0
.end method

.method public bridge synthetic setCmcdConfigurationFactory(Lcom/google/android/exoplayer2/upstream/CmcdConfiguration$Factory;)Lcom/google/android/exoplayer2/source/MediaSource$Factory;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->setCmcdConfigurationFactory(Lcom/google/android/exoplayer2/upstream/CmcdConfiguration$Factory;)Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;

    move-result-object p1

    return-object p1
.end method

.method public setCmcdConfigurationFactory(Lcom/google/android/exoplayer2/upstream/CmcdConfiguration$Factory;)Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;
    .registers 3
    .param p1, "cmcdConfigurationFactory"    # Lcom/google/android/exoplayer2/upstream/CmcdConfiguration$Factory;

    .line 315
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/upstream/CmcdConfiguration$Factory;

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->cmcdConfigurationFactory:Lcom/google/android/exoplayer2/upstream/CmcdConfiguration$Factory;

    .line 316
    return-object p0
.end method

.method public setCompositeSequenceableLoaderFactory(Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;)Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;
    .registers 3
    .param p1, "compositeSequenceableLoaderFactory"    # Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;

    .line 249
    nop

    .line 250
    const-string v0, "HlsMediaSource.Factory#setCompositeSequenceableLoaderFactory no longer handles null by instantiating a new DefaultCompositeSequenceableLoaderFactory. Explicitly construct and pass an instance in order to retain the old behavior."

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->compositeSequenceableLoaderFactory:Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;

    .line 255
    return-object p0
.end method

.method public bridge synthetic setDrmSessionManagerProvider(Lcom/google/android/exoplayer2/drm/DrmSessionManagerProvider;)Lcom/google/android/exoplayer2/source/MediaSource$Factory;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->setDrmSessionManagerProvider(Lcom/google/android/exoplayer2/drm/DrmSessionManagerProvider;)Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;

    move-result-object p1

    return-object p1
.end method

.method public setDrmSessionManagerProvider(Lcom/google/android/exoplayer2/drm/DrmSessionManagerProvider;)Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;
    .registers 3
    .param p1, "drmSessionManagerProvider"    # Lcom/google/android/exoplayer2/drm/DrmSessionManagerProvider;

    .line 323
    nop

    .line 324
    const-string v0, "MediaSource.Factory#setDrmSessionManagerProvider no longer handles null by instantiating a new DefaultDrmSessionManagerProvider. Explicitly construct and pass an instance in order to retain the old behavior."

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/drm/DrmSessionManagerProvider;

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->drmSessionManagerProvider:Lcom/google/android/exoplayer2/drm/DrmSessionManagerProvider;

    .line 329
    return-object p0
.end method

.method setElapsedRealTimeOffsetMs(J)Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;
    .registers 3
    .param p1, "elapsedRealTimeOffsetMs"    # J

    .line 358
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->elapsedRealTimeOffsetMs:J

    .line 359
    return-object p0
.end method

.method public setExtractorFactory(Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory;)Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;
    .registers 3
    .param p1, "extractorFactory"    # Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory;

    .line 186
    nop

    .line 187
    if-eqz p1, :cond_5

    move-object v0, p1

    goto :goto_7

    :cond_5
    sget-object v0, Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory;->DEFAULT:Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory;

    :goto_7
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->extractorFactory:Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory;

    .line 188
    return-object p0
.end method

.method public bridge synthetic setLoadErrorHandlingPolicy(Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;)Lcom/google/android/exoplayer2/source/MediaSource$Factory;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->setLoadErrorHandlingPolicy(Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;)Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;

    move-result-object p1

    return-object p1
.end method

.method public setLoadErrorHandlingPolicy(Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;)Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;
    .registers 3
    .param p1, "loadErrorHandlingPolicy"    # Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    .line 194
    nop

    .line 195
    const-string v0, "MediaSource.Factory#setLoadErrorHandlingPolicy no longer handles null by instantiating a new DefaultLoadErrorHandlingPolicy. Explicitly construct and pass an instance in order to retain the old behavior."

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    .line 200
    return-object p0
.end method

.method public setMetadataType(I)Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;
    .registers 2
    .param p1, "metadataType"    # I

    .line 293
    iput p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->metadataType:I

    .line 294
    return-object p0
.end method

.method public setPlaylistParserFactory(Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParserFactory;)Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;
    .registers 3
    .param p1, "playlistParserFactory"    # Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParserFactory;

    .line 211
    nop

    .line 212
    const-string v0, "HlsMediaSource.Factory#setPlaylistParserFactory no longer handles null by instantiating a new DefaultHlsPlaylistParserFactory. Explicitly construct and pass an instance in order to retain the old behavior."

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParserFactory;

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->playlistParserFactory:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParserFactory;

    .line 217
    return-object p0
.end method

.method public setPlaylistTrackerFactory(Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$Factory;)Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;
    .registers 3
    .param p1, "playlistTrackerFactory"    # Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$Factory;

    .line 228
    nop

    .line 229
    const-string v0, "HlsMediaSource.Factory#setPlaylistTrackerFactory no longer handles null by defaulting to DefaultHlsPlaylistTracker.FACTORY. Explicitly pass a reference to this instance in order to retain the old behavior."

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$Factory;

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->playlistTrackerFactory:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$Factory;

    .line 234
    return-object p0
.end method

.method public setTimestampAdjusterInitializationTimeoutMs(J)Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;
    .registers 3
    .param p1, "timestampAdjusterInitializationTimeoutMs"    # J

    .line 343
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->timestampAdjusterInitializationTimeoutMs:J

    .line 344
    return-object p0
.end method

.method public setUseSessionKeys(Z)Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;
    .registers 2
    .param p1, "useSessionKeys"    # Z

    .line 308
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->useSessionKeys:Z

    .line 309
    return-object p0
.end method
