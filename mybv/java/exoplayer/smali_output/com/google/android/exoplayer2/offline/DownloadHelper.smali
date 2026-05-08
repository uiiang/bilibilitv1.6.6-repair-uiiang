.class public final Lcom/google/android/exoplayer2/offline/DownloadHelper;
.super Ljava/lang/Object;
.source "DownloadHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/offline/DownloadHelper$DownloadTrackSelection;,
        Lcom/google/android/exoplayer2/offline/DownloadHelper$FakeBandwidthMeter;,
        Lcom/google/android/exoplayer2/offline/DownloadHelper$Callback;,
        Lcom/google/android/exoplayer2/offline/DownloadHelper$MediaPreparer;,
        Lcom/google/android/exoplayer2/offline/DownloadHelper$LiveContentUnsupportedException;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final DEFAULT_TRACK_SELECTOR_PARAMETERS_WITHOUT_CONTEXT:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;


# instance fields
.field private callback:Lcom/google/android/exoplayer2/offline/DownloadHelper$Callback;

.field private final callbackHandler:Landroid/os/Handler;

.field private immutableTrackSelectionsByPeriodAndRenderer:[[Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[[",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;",
            ">;"
        }
    .end annotation
.end field

.field private isPreparedWithMedia:Z

.field private final localConfiguration:Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;

.field private mappedTrackInfos:[Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

.field private mediaPreparer:Lcom/google/android/exoplayer2/offline/DownloadHelper$MediaPreparer;

.field private final mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

.field private final rendererCapabilities:[Lcom/google/android/exoplayer2/RendererCapabilities;

.field private final scratchSet:Landroid/util/SparseIntArray;

.field private trackGroupArrays:[Lcom/google/android/exoplayer2/source/TrackGroupArray;

.field private trackSelectionsByPeriodAndRenderer:[[Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[[",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;",
            ">;"
        }
    .end annotation
.end field

.field private final trackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

.field private final window:Lcom/google/android/exoplayer2/Timeline$Window;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 110
    sget-object v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->DEFAULT_WITHOUT_CONTEXT:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    .line 112
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->buildUpon()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;

    move-result-object v0

    .line 113
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->setForceHighestSupportedBitrate(Z)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;

    move-result-object v0

    .line 114
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->setConstrainAudioChannelCountToDeviceCapabilities(Z)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;

    move-result-object v0

    .line 115
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->build()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->DEFAULT_TRACK_SELECTOR_PARAMETERS_WITHOUT_CONTEXT:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    .line 110
    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/MediaItem;Lcom/google/android/exoplayer2/source/MediaSource;Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;[Lcom/google/android/exoplayer2/RendererCapabilities;)V
    .registers 9
    .param p1, "mediaItem"    # Lcom/google/android/exoplayer2/MediaItem;
    .param p2, "mediaSource"    # Lcom/google/android/exoplayer2/source/MediaSource;
    .param p3, "trackSelectionParameters"    # Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;
    .param p4, "rendererCapabilities"    # [Lcom/google/android/exoplayer2/RendererCapabilities;

    .line 342
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 343
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaItem;->localConfiguration:Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;

    iput-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->localConfiguration:Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;

    .line 344
    iput-object p2, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    .line 345
    new-instance v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    new-instance v1, Lcom/google/android/exoplayer2/offline/DownloadHelper$DownloadTrackSelection$Factory;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/offline/DownloadHelper$DownloadTrackSelection$Factory;-><init>(Lcom/google/android/exoplayer2/offline/DownloadHelper$1;)V

    invoke-direct {v0, p3, v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;-><init>(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Factory;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->trackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    .line 347
    iput-object p4, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->rendererCapabilities:[Lcom/google/android/exoplayer2/RendererCapabilities;

    .line 348
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->scratchSet:Landroid/util/SparseIntArray;

    .line 349
    new-instance v1, Lcom/google/android/exoplayer2/offline/DownloadHelper$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/offline/DownloadHelper$$ExternalSyntheticLambda2;-><init>()V

    new-instance v3, Lcom/google/android/exoplayer2/offline/DownloadHelper$FakeBandwidthMeter;

    invoke-direct {v3, v2}, Lcom/google/android/exoplayer2/offline/DownloadHelper$FakeBandwidthMeter;-><init>(Lcom/google/android/exoplayer2/offline/DownloadHelper$1;)V

    invoke-virtual {v0, v1, v3}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->init(Lcom/google/android/exoplayer2/trackselection/TrackSelector$InvalidationListener;Lcom/google/android/exoplayer2/upstream/BandwidthMeter;)V

    .line 350
    invoke-static {}, Lcom/google/android/exoplayer2/util/Util;->createHandlerForCurrentOrMainLooper()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->callbackHandler:Landroid/os/Handler;

    .line 351
    new-instance v0, Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/Timeline$Window;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    .line 352
    return-void
.end method

.method static synthetic access$200(Lcom/google/android/exoplayer2/offline/DownloadHelper;)V
    .registers 1
    .param p0, "x0"    # Lcom/google/android/exoplayer2/offline/DownloadHelper;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 99
    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/DownloadHelper;->onMediaPrepared()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/exoplayer2/offline/DownloadHelper;Ljava/io/IOException;)V
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/offline/DownloadHelper;
    .param p1, "x1"    # Ljava/io/IOException;

    .line 99
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/offline/DownloadHelper;->onMediaPreparationFailed(Ljava/io/IOException;)V

    return-void
.end method

.method private addTrackSelectionInternal(ILcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;)V
    .registers 7
    .param p1, "periodIndex"    # I
    .param p2, "trackSelectionParameters"    # Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "trackGroupArrays",
            "trackSelectionsByPeriodAndRenderer",
            "mediaPreparer",
            "mediaPreparer.timeline"
        }
    .end annotation

    .line 680
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->trackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-virtual {v0, p2}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->setParameters(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;)V

    .line 681
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/offline/DownloadHelper;->runTrackSelection(I)Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    .line 686
    iget-object v0, p2, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->overrides:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap;->values()Lcom/google/common/collect/ImmutableCollection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableCollection;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverride;

    .line 687
    .local v1, "override":Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverride;
    iget-object v2, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->trackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    .line 688
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->buildUpon()Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->setOverrideForType(Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverride;)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->build()Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;

    move-result-object v3

    .line 687
    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->setParameters(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;)V

    .line 689
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/offline/DownloadHelper;->runTrackSelection(I)Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    .line 690
    .end local v1    # "override":Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverride;
    goto :goto_12

    .line 691
    :cond_33
    return-void
.end method

.method private assertPreparedWithMedia()V
    .registers 2
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "trackGroupArrays",
            "mappedTrackInfos",
            "trackSelectionsByPeriodAndRenderer",
            "immutableTrackSelectionsByPeriodAndRenderer",
            "mediaPreparer",
            "mediaPreparer.timeline",
            "mediaPreparer.mediaPeriods"
        }
    .end annotation

    .line 751
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->isPreparedWithMedia:Z

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 752
    return-void
.end method

.method public static createMediaSource(Lcom/google/android/exoplayer2/offline/DownloadRequest;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)Lcom/google/android/exoplayer2/source/MediaSource;
    .registers 3
    .param p0, "downloadRequest"    # Lcom/google/android/exoplayer2/offline/DownloadRequest;
    .param p1, "dataSourceFactory"    # Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    .line 289
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/google/android/exoplayer2/offline/DownloadHelper;->createMediaSource(Lcom/google/android/exoplayer2/offline/DownloadRequest;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/drm/DrmSessionManager;)Lcom/google/android/exoplayer2/source/MediaSource;

    move-result-object v0

    return-object v0
.end method

.method public static createMediaSource(Lcom/google/android/exoplayer2/offline/DownloadRequest;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/drm/DrmSessionManager;)Lcom/google/android/exoplayer2/source/MediaSource;
    .registers 4
    .param p0, "downloadRequest"    # Lcom/google/android/exoplayer2/offline/DownloadRequest;
    .param p1, "dataSourceFactory"    # Lcom/google/android/exoplayer2/upstream/DataSource$Factory;
    .param p2, "drmSessionManager"    # Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    .line 306
    nop

    .line 307
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/offline/DownloadRequest;->toMediaItem()Lcom/google/android/exoplayer2/MediaItem;

    move-result-object v0

    .line 306
    invoke-static {v0, p1, p2}, Lcom/google/android/exoplayer2/offline/DownloadHelper;->createMediaSourceInternal(Lcom/google/android/exoplayer2/MediaItem;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/drm/DrmSessionManager;)Lcom/google/android/exoplayer2/source/MediaSource;

    move-result-object v0

    return-object v0
.end method

.method private static createMediaSourceInternal(Lcom/google/android/exoplayer2/MediaItem;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/drm/DrmSessionManager;)Lcom/google/android/exoplayer2/source/MediaSource;
    .registers 5
    .param p0, "mediaItem"    # Lcom/google/android/exoplayer2/MediaItem;
    .param p1, "dataSourceFactory"    # Lcom/google/android/exoplayer2/upstream/DataSource$Factory;
    .param p2, "drmSessionManager"    # Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    .line 811
    new-instance v0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;

    sget-object v1, Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;->EMPTY:Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;

    invoke-direct {v0, p1, v1}, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;)V

    .line 813
    .local v0, "mediaSourceFactory":Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;
    if-eqz p2, :cond_11

    .line 814
    new-instance v1, Lcom/google/android/exoplayer2/offline/DownloadHelper$$ExternalSyntheticLambda0;

    invoke-direct {v1, p2}, Lcom/google/android/exoplayer2/offline/DownloadHelper$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/exoplayer2/drm/DrmSessionManager;)V

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;->setDrmSessionManagerProvider(Lcom/google/android/exoplayer2/drm/DrmSessionManagerProvider;)Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;

    .line 816
    :cond_11
    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;->createMediaSource(Lcom/google/android/exoplayer2/MediaItem;)Lcom/google/android/exoplayer2/source/MediaSource;

    move-result-object v1

    return-object v1
.end method

.method public static forMediaItem(Landroid/content/Context;Lcom/google/android/exoplayer2/MediaItem;)Lcom/google/android/exoplayer2/offline/DownloadHelper;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mediaItem"    # Lcom/google/android/exoplayer2/MediaItem;

    .line 179
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaItem;->localConfiguration:Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;

    invoke-static {v0}, Lcom/google/android/exoplayer2/offline/DownloadHelper;->isProgressive(Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 180
    nop

    .line 182
    invoke-static {p0}, Lcom/google/android/exoplayer2/offline/DownloadHelper;->getDefaultTrackSelectorParameters(Landroid/content/Context;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    move-result-object v0

    .line 180
    const/4 v1, 0x0

    invoke-static {p1, v0, v1, v1, v1}, Lcom/google/android/exoplayer2/offline/DownloadHelper;->forMediaItem(Lcom/google/android/exoplayer2/MediaItem;Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;Lcom/google/android/exoplayer2/RenderersFactory;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/drm/DrmSessionManager;)Lcom/google/android/exoplayer2/offline/DownloadHelper;

    move-result-object v0

    return-object v0
.end method

.method public static forMediaItem(Landroid/content/Context;Lcom/google/android/exoplayer2/MediaItem;Lcom/google/android/exoplayer2/RenderersFactory;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)Lcom/google/android/exoplayer2/offline/DownloadHelper;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mediaItem"    # Lcom/google/android/exoplayer2/MediaItem;
    .param p2, "renderersFactory"    # Lcom/google/android/exoplayer2/RenderersFactory;
    .param p3, "dataSourceFactory"    # Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    .line 208
    nop

    .line 210
    invoke-static {p0}, Lcom/google/android/exoplayer2/offline/DownloadHelper;->getDefaultTrackSelectorParameters(Landroid/content/Context;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    move-result-object v0

    .line 208
    const/4 v1, 0x0

    invoke-static {p1, v0, p2, p3, v1}, Lcom/google/android/exoplayer2/offline/DownloadHelper;->forMediaItem(Lcom/google/android/exoplayer2/MediaItem;Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;Lcom/google/android/exoplayer2/RenderersFactory;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/drm/DrmSessionManager;)Lcom/google/android/exoplayer2/offline/DownloadHelper;

    move-result-object v0

    return-object v0
.end method

.method public static forMediaItem(Lcom/google/android/exoplayer2/MediaItem;Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;Lcom/google/android/exoplayer2/RenderersFactory;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)Lcom/google/android/exoplayer2/offline/DownloadHelper;
    .registers 5
    .param p0, "mediaItem"    # Lcom/google/android/exoplayer2/MediaItem;
    .param p1, "trackSelectionParameters"    # Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;
    .param p2, "renderersFactory"    # Lcom/google/android/exoplayer2/RenderersFactory;
    .param p3, "dataSourceFactory"    # Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    .line 237
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/google/android/exoplayer2/offline/DownloadHelper;->forMediaItem(Lcom/google/android/exoplayer2/MediaItem;Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;Lcom/google/android/exoplayer2/RenderersFactory;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/drm/DrmSessionManager;)Lcom/google/android/exoplayer2/offline/DownloadHelper;

    move-result-object v0

    return-object v0
.end method

.method public static forMediaItem(Lcom/google/android/exoplayer2/MediaItem;Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;Lcom/google/android/exoplayer2/RenderersFactory;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/drm/DrmSessionManager;)Lcom/google/android/exoplayer2/offline/DownloadHelper;
    .registers 9
    .param p0, "mediaItem"    # Lcom/google/android/exoplayer2/MediaItem;
    .param p1, "trackSelectionParameters"    # Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;
    .param p2, "renderersFactory"    # Lcom/google/android/exoplayer2/RenderersFactory;
    .param p3, "dataSourceFactory"    # Lcom/google/android/exoplayer2/upstream/DataSource$Factory;
    .param p4, "drmSessionManager"    # Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    .line 269
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaItem;->localConfiguration:Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;

    invoke-static {v0}, Lcom/google/android/exoplayer2/offline/DownloadHelper;->isProgressive(Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;)Z

    move-result v0

    .line 270
    .local v0, "isProgressive":Z
    const/4 v1, 0x0

    if-nez v0, :cond_14

    if-eqz p3, :cond_12

    goto :goto_14

    :cond_12
    const/4 v2, 0x0

    goto :goto_15

    :cond_14
    :goto_14
    const/4 v2, 0x1

    :goto_15
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 271
    new-instance v2, Lcom/google/android/exoplayer2/offline/DownloadHelper;

    .line 273
    if-eqz v0, :cond_1e

    .line 274
    const/4 v3, 0x0

    goto :goto_29

    .line 275
    :cond_1e
    nop

    .line 276
    invoke-static {p3}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    .line 275
    invoke-static {p0, v3, p4}, Lcom/google/android/exoplayer2/offline/DownloadHelper;->createMediaSourceInternal(Lcom/google/android/exoplayer2/MediaItem;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/drm/DrmSessionManager;)Lcom/google/android/exoplayer2/source/MediaSource;

    move-result-object v3

    .line 278
    :goto_29
    if-eqz p2, :cond_30

    .line 279
    invoke-static {p2}, Lcom/google/android/exoplayer2/offline/DownloadHelper;->getRendererCapabilities(Lcom/google/android/exoplayer2/RenderersFactory;)[Lcom/google/android/exoplayer2/RendererCapabilities;

    move-result-object v1

    goto :goto_32

    .line 280
    :cond_30
    new-array v1, v1, [Lcom/google/android/exoplayer2/RendererCapabilities;

    :goto_32
    invoke-direct {v2, p0, v3, p1, v1}, Lcom/google/android/exoplayer2/offline/DownloadHelper;-><init>(Lcom/google/android/exoplayer2/MediaItem;Lcom/google/android/exoplayer2/source/MediaSource;Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;[Lcom/google/android/exoplayer2/RendererCapabilities;)V

    .line 271
    return-object v2
.end method

.method public static getDefaultTrackSelectorParameters(Landroid/content/Context;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 119
    invoke-static {p0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->getDefaults(Landroid/content/Context;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    move-result-object v0

    .line 120
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->buildUpon()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;

    move-result-object v0

    .line 121
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->setForceHighestSupportedBitrate(Z)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;

    move-result-object v0

    .line 122
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->setConstrainAudioChannelCountToDeviceCapabilities(Z)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;

    move-result-object v0

    .line 123
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->build()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    move-result-object v0

    .line 119
    return-object v0
.end method

.method public static getRendererCapabilities(Lcom/google/android/exoplayer2/RenderersFactory;)[Lcom/google/android/exoplayer2/RendererCapabilities;
    .registers 7
    .param p0, "renderersFactory"    # Lcom/google/android/exoplayer2/RenderersFactory;

    .line 156
    nop

    .line 158
    invoke-static {}, Lcom/google/android/exoplayer2/util/Util;->createHandlerForCurrentOrMainLooper()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/google/android/exoplayer2/offline/DownloadHelper$1;

    invoke-direct {v2}, Lcom/google/android/exoplayer2/offline/DownloadHelper$1;-><init>()V

    new-instance v3, Lcom/google/android/exoplayer2/offline/DownloadHelper$2;

    invoke-direct {v3}, Lcom/google/android/exoplayer2/offline/DownloadHelper$2;-><init>()V

    new-instance v4, Lcom/google/android/exoplayer2/offline/DownloadHelper$$ExternalSyntheticLambda3;

    invoke-direct {v4}, Lcom/google/android/exoplayer2/offline/DownloadHelper$$ExternalSyntheticLambda3;-><init>()V

    new-instance v5, Lcom/google/android/exoplayer2/offline/DownloadHelper$$ExternalSyntheticLambda4;

    invoke-direct {v5}, Lcom/google/android/exoplayer2/offline/DownloadHelper$$ExternalSyntheticLambda4;-><init>()V

    .line 157
    move-object v0, p0

    invoke-interface/range {v0 .. v5}, Lcom/google/android/exoplayer2/RenderersFactory;->createRenderers(Landroid/os/Handler;Lcom/google/android/exoplayer2/video/VideoRendererEventListener;Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;Lcom/google/android/exoplayer2/text/TextOutput;Lcom/google/android/exoplayer2/metadata/MetadataOutput;)[Lcom/google/android/exoplayer2/Renderer;

    move-result-object v0

    .line 163
    .local v0, "renderers":[Lcom/google/android/exoplayer2/Renderer;
    array-length v1, v0

    new-array v1, v1, [Lcom/google/android/exoplayer2/RendererCapabilities;

    .line 164
    .local v1, "capabilities":[Lcom/google/android/exoplayer2/RendererCapabilities;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_22
    array-length v3, v0

    if-ge v2, v3, :cond_30

    .line 165
    aget-object v3, v0, v2

    invoke-interface {v3}, Lcom/google/android/exoplayer2/Renderer;->getCapabilities()Lcom/google/android/exoplayer2/RendererCapabilities;

    move-result-object v3

    aput-object v3, v1, v2

    .line 164
    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    .line 167
    .end local v2    # "i":I
    :cond_30
    return-object v1
.end method

.method private static isProgressive(Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;)Z
    .registers 3
    .param p0, "localConfiguration"    # Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;

    .line 820
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;->uri:Landroid/net/Uri;

    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;->mimeType:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Util;->inferContentTypeForUriAndMimeType(Landroid/net/Uri;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method static synthetic lambda$createMediaSourceInternal$6(Lcom/google/android/exoplayer2/drm/DrmSessionManager;Lcom/google/android/exoplayer2/MediaItem;)Lcom/google/android/exoplayer2/drm/DrmSessionManager;
    .registers 2
    .param p0, "drmSessionManager"    # Lcom/google/android/exoplayer2/drm/DrmSessionManager;
    .param p1, "unusedMediaItem"    # Lcom/google/android/exoplayer2/MediaItem;

    .line 814
    return-object p0
.end method

.method static synthetic lambda$getRendererCapabilities$0(Lcom/google/android/exoplayer2/text/CueGroup;)V
    .registers 1
    .param p0, "cues"    # Lcom/google/android/exoplayer2/text/CueGroup;

    .line 161
    return-void
.end method

.method static synthetic lambda$getRendererCapabilities$1(Lcom/google/android/exoplayer2/metadata/Metadata;)V
    .registers 1
    .param p0, "metadata"    # Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 162
    return-void
.end method

.method static synthetic lambda$new$2()V
    .registers 0

    .line 349
    return-void
.end method

.method private onMediaPreparationFailed(Ljava/io/IOException;)V
    .registers 4
    .param p1, "error"    # Ljava/io/IOException;

    .line 724
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->callbackHandler:Landroid/os/Handler;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    new-instance v1, Lcom/google/android/exoplayer2/offline/DownloadHelper$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer2/offline/DownloadHelper$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/exoplayer2/offline/DownloadHelper;Ljava/io/IOException;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 725
    return-void
.end method

.method private onMediaPrepared()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 695
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->mediaPreparer:Lcom/google/android/exoplayer2/offline/DownloadHelper$MediaPreparer;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 696
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->mediaPreparer:Lcom/google/android/exoplayer2/offline/DownloadHelper$MediaPreparer;

    iget-object v0, v0, Lcom/google/android/exoplayer2/offline/DownloadHelper$MediaPreparer;->mediaPeriods:[Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 697
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->mediaPreparer:Lcom/google/android/exoplayer2/offline/DownloadHelper$MediaPreparer;

    iget-object v0, v0, Lcom/google/android/exoplayer2/offline/DownloadHelper$MediaPreparer;->timeline:Lcom/google/android/exoplayer2/Timeline;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 698
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->mediaPreparer:Lcom/google/android/exoplayer2/offline/DownloadHelper$MediaPreparer;

    iget-object v0, v0, Lcom/google/android/exoplayer2/offline/DownloadHelper$MediaPreparer;->mediaPeriods:[Lcom/google/android/exoplayer2/source/MediaPeriod;

    array-length v0, v0

    .line 699
    .local v0, "periodCount":I
    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->rendererCapabilities:[Lcom/google/android/exoplayer2/RendererCapabilities;

    array-length v1, v1

    .line 700
    .local v1, "rendererCount":I
    filled-new-array {v0, v1}, [I

    move-result-object v2

    const-class v3, Ljava/util/List;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[Ljava/util/List;

    iput-object v2, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->trackSelectionsByPeriodAndRenderer:[[Ljava/util/List;

    .line 702
    filled-new-array {v0, v1}, [I

    move-result-object v2

    const-class v3, Ljava/util/List;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[Ljava/util/List;

    iput-object v2, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->immutableTrackSelectionsByPeriodAndRenderer:[[Ljava/util/List;

    .line 704
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_38
    if-ge v2, v0, :cond_5e

    .line 705
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_3b
    if-ge v3, v1, :cond_5b

    .line 706
    iget-object v4, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->trackSelectionsByPeriodAndRenderer:[[Ljava/util/List;

    aget-object v4, v4, v2

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    aput-object v5, v4, v3

    .line 707
    iget-object v4, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->immutableTrackSelectionsByPeriodAndRenderer:[[Ljava/util/List;

    aget-object v4, v4, v2

    iget-object v5, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->trackSelectionsByPeriodAndRenderer:[[Ljava/util/List;

    aget-object v5, v5, v2

    aget-object v5, v5, v3

    .line 708
    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    aput-object v5, v4, v3

    .line 705
    add-int/lit8 v3, v3, 0x1

    goto :goto_3b

    .line 704
    .end local v3    # "j":I
    :cond_5b
    add-int/lit8 v2, v2, 0x1

    goto :goto_38

    .line 711
    .end local v2    # "i":I
    :cond_5e
    new-array v2, v0, [Lcom/google/android/exoplayer2/source/TrackGroupArray;

    iput-object v2, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->trackGroupArrays:[Lcom/google/android/exoplayer2/source/TrackGroupArray;

    .line 712
    new-array v2, v0, [Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

    iput-object v2, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->mappedTrackInfos:[Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

    .line 713
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_67
    if-ge v2, v0, :cond_95

    .line 714
    iget-object v3, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->trackGroupArrays:[Lcom/google/android/exoplayer2/source/TrackGroupArray;

    iget-object v4, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->mediaPreparer:Lcom/google/android/exoplayer2/offline/DownloadHelper$MediaPreparer;

    iget-object v4, v4, Lcom/google/android/exoplayer2/offline/DownloadHelper$MediaPreparer;->mediaPeriods:[Lcom/google/android/exoplayer2/source/MediaPeriod;

    aget-object v4, v4, v2

    invoke-interface {v4}, Lcom/google/android/exoplayer2/source/MediaPeriod;->getTrackGroups()Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v4

    aput-object v4, v3, v2

    .line 715
    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/offline/DownloadHelper;->runTrackSelection(I)Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    move-result-object v3

    .line 716
    .local v3, "trackSelectorResult":Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;
    iget-object v4, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->trackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    iget-object v5, v3, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->info:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->onSelectionActivated(Ljava/lang/Object;)V

    .line 717
    iget-object v4, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->mappedTrackInfos:[Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

    iget-object v5, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->trackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->getCurrentMappedTrackInfo()Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

    aput-object v5, v4, v2

    .line 713
    .end local v3    # "trackSelectorResult":Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;
    add-int/lit8 v2, v2, 0x1

    goto :goto_67

    .line 719
    .end local v2    # "i":I
    :cond_95
    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/DownloadHelper;->setPreparedWithMedia()V

    .line 720
    iget-object v2, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->callbackHandler:Landroid/os/Handler;

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Handler;

    new-instance v3, Lcom/google/android/exoplayer2/offline/DownloadHelper$$ExternalSyntheticLambda5;

    invoke-direct {v3, p0}, Lcom/google/android/exoplayer2/offline/DownloadHelper$$ExternalSyntheticLambda5;-><init>(Lcom/google/android/exoplayer2/offline/DownloadHelper;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 721
    return-void
.end method

.method private runTrackSelection(I)Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;
    .registers 13
    .param p1, "periodIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "trackGroupArrays",
            "trackSelectionsByPeriodAndRenderer",
            "mediaPreparer",
            "mediaPreparer.timeline"
        }
    .end annotation

    .line 765
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->trackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->rendererCapabilities:[Lcom/google/android/exoplayer2/RendererCapabilities;

    iget-object v2, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->trackGroupArrays:[Lcom/google/android/exoplayer2/source/TrackGroupArray;

    aget-object v2, v2, p1

    new-instance v3, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v4, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->mediaPreparer:Lcom/google/android/exoplayer2/offline/DownloadHelper$MediaPreparer;

    iget-object v4, v4, Lcom/google/android/exoplayer2/offline/DownloadHelper$MediaPreparer;->timeline:Lcom/google/android/exoplayer2/Timeline;

    .line 769
    invoke-virtual {v4, p1}, Lcom/google/android/exoplayer2/Timeline;->getUidOfPeriod(I)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;-><init>(Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->mediaPreparer:Lcom/google/android/exoplayer2/offline/DownloadHelper$MediaPreparer;

    iget-object v4, v4, Lcom/google/android/exoplayer2/offline/DownloadHelper$MediaPreparer;->timeline:Lcom/google/android/exoplayer2/Timeline;

    .line 766
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->selectTracks([Lcom/google/android/exoplayer2/RendererCapabilities;Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/Timeline;)Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    move-result-object v0

    .line 771
    .local v0, "trackSelectorResult":Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1e
    iget v2, v0, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->length:I

    if-ge v1, v2, :cond_ae

    .line 772
    iget-object v2, v0, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->selections:[Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    aget-object v2, v2, v1

    .line 773
    .local v2, "newSelection":Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;
    if-nez v2, :cond_2a

    .line 774
    goto/16 :goto_aa

    .line 776
    :cond_2a
    iget-object v3, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->trackSelectionsByPeriodAndRenderer:[[Ljava/util/List;

    aget-object v3, v3, p1

    aget-object v3, v3, v1

    .line 778
    .local v3, "existingSelectionList":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;>;"
    const/4 v4, 0x0

    .line 779
    .local v4, "mergedWithExistingSelection":Z
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_32
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_a5

    .line 780
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    .line 781
    .local v6, "existingSelection":Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;
    invoke-interface {v6}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;->getTrackGroup()Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v7

    invoke-interface {v2}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;->getTrackGroup()Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/exoplayer2/source/TrackGroup;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a2

    .line 783
    iget-object v7, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->scratchSet:Landroid/util/SparseIntArray;

    invoke-virtual {v7}, Landroid/util/SparseIntArray;->clear()V

    .line 784
    const/4 v7, 0x0

    .local v7, "k":I
    :goto_52
    invoke-interface {v6}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;->length()I

    move-result v8

    const/4 v9, 0x0

    if-ge v7, v8, :cond_65

    .line 785
    iget-object v8, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->scratchSet:Landroid/util/SparseIntArray;

    invoke-interface {v6, v7}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;->getIndexInTrackGroup(I)I

    move-result v10

    invoke-virtual {v8, v10, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 784
    add-int/lit8 v7, v7, 0x1

    goto :goto_52

    .line 787
    .end local v7    # "k":I
    :cond_65
    const/4 v7, 0x0

    .restart local v7    # "k":I
    :goto_66
    invoke-interface {v2}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;->length()I

    move-result v8

    if-ge v7, v8, :cond_78

    .line 788
    iget-object v8, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->scratchSet:Landroid/util/SparseIntArray;

    invoke-interface {v2, v7}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;->getIndexInTrackGroup(I)I

    move-result v10

    invoke-virtual {v8, v10, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 787
    add-int/lit8 v7, v7, 0x1

    goto :goto_66

    .line 790
    .end local v7    # "k":I
    :cond_78
    iget-object v7, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->scratchSet:Landroid/util/SparseIntArray;

    invoke-virtual {v7}, Landroid/util/SparseIntArray;->size()I

    move-result v7

    new-array v7, v7, [I

    .line 791
    .local v7, "mergedTracks":[I
    const/4 v8, 0x0

    .local v8, "k":I
    :goto_81
    iget-object v9, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->scratchSet:Landroid/util/SparseIntArray;

    invoke-virtual {v9}, Landroid/util/SparseIntArray;->size()I

    move-result v9

    if-ge v8, v9, :cond_94

    .line 792
    iget-object v9, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->scratchSet:Landroid/util/SparseIntArray;

    invoke-virtual {v9, v8}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v9

    aput v9, v7, v8

    .line 791
    add-int/lit8 v8, v8, 0x1

    goto :goto_81

    .line 794
    .end local v8    # "k":I
    :cond_94
    new-instance v8, Lcom/google/android/exoplayer2/offline/DownloadHelper$DownloadTrackSelection;

    .line 795
    invoke-interface {v6}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;->getTrackGroup()Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v9

    invoke-direct {v8, v9, v7}, Lcom/google/android/exoplayer2/offline/DownloadHelper$DownloadTrackSelection;-><init>(Lcom/google/android/exoplayer2/source/TrackGroup;[I)V

    .line 794
    invoke-interface {v3, v5, v8}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 796
    const/4 v4, 0x1

    .line 797
    goto :goto_a5

    .line 779
    .end local v6    # "existingSelection":Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;
    .end local v7    # "mergedTracks":[I
    :cond_a2
    add-int/lit8 v5, v5, 0x1

    goto :goto_32

    .line 800
    .end local v5    # "j":I
    :cond_a5
    :goto_a5
    if-nez v4, :cond_aa

    .line 801
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 771
    .end local v2    # "newSelection":Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;
    .end local v3    # "existingSelectionList":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;>;"
    .end local v4    # "mergedWithExistingSelection":Z
    :cond_aa
    :goto_aa
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1e

    .line 804
    .end local v1    # "i":I
    :cond_ae
    return-object v0
.end method

.method private setPreparedWithMedia()V
    .registers 2
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "trackGroupArrays",
            "mappedTrackInfos",
            "trackSelectionsByPeriodAndRenderer",
            "immutableTrackSelectionsByPeriodAndRenderer",
            "mediaPreparer",
            "mediaPreparer.timeline",
            "mediaPreparer.mediaPeriods"
        }
    .end annotation

    .line 737
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->isPreparedWithMedia:Z

    .line 738
    return-void
.end method


# virtual methods
.method public varargs addAudioLanguagesToSelection([Ljava/lang/String;)V
    .registers 11
    .param p1, "languages"    # [Ljava/lang/String;

    .line 519
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/DownloadHelper;->assertPreparedWithMedia()V

    .line 521
    sget-object v0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->DEFAULT_TRACK_SELECTOR_PARAMETERS_WITHOUT_CONTEXT:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    .line 522
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->buildUpon()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;

    move-result-object v0

    .line 524
    .local v0, "parametersBuilder":Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->setForceHighestSupportedBitrate(Z)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;

    .line 526
    iget-object v2, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->rendererCapabilities:[Lcom/google/android/exoplayer2/RendererCapabilities;

    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_12
    if-ge v5, v3, :cond_26

    aget-object v6, v2, v5

    .line 527
    .local v6, "capabilities":Lcom/google/android/exoplayer2/RendererCapabilities;
    invoke-interface {v6}, Lcom/google/android/exoplayer2/RendererCapabilities;->getTrackType()I

    move-result v7

    .line 528
    .local v7, "trackType":I
    if-eq v7, v1, :cond_1e

    const/4 v8, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v8, 0x0

    :goto_1f
    invoke-virtual {v0, v7, v8}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->setTrackTypeDisabled(IZ)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;

    .line 526
    nop

    .end local v6    # "capabilities":Lcom/google/android/exoplayer2/RendererCapabilities;
    .end local v7    # "trackType":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_12

    .line 533
    :cond_26
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/offline/DownloadHelper;->getPeriodCount()I

    move-result v1

    .line 534
    .local v1, "periodCount":I
    array-length v2, p1

    :goto_2b
    if-ge v4, v2, :cond_44

    aget-object v3, p1, v4

    .line 535
    .local v3, "language":Ljava/lang/String;
    nop

    .line 536
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->setPreferredAudioLanguage(Ljava/lang/String;)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->build()Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;

    move-result-object v5

    .line 537
    .local v5, "parameters":Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;
    const/4 v6, 0x0

    .local v6, "periodIndex":I
    :goto_39
    if-ge v6, v1, :cond_41

    .line 538
    invoke-direct {p0, v6, v5}, Lcom/google/android/exoplayer2/offline/DownloadHelper;->addTrackSelectionInternal(ILcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;)V
    :try_end_3e
    .catch Lcom/google/android/exoplayer2/ExoPlaybackException; {:try_start_0 .. :try_end_3e} :catch_46

    .line 537
    add-int/lit8 v6, v6, 0x1

    goto :goto_39

    .line 534
    .end local v3    # "language":Ljava/lang/String;
    .end local v5    # "parameters":Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;
    .end local v6    # "periodIndex":I
    :cond_41
    add-int/lit8 v4, v4, 0x1

    goto :goto_2b

    .line 543
    .end local v0    # "parametersBuilder":Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;
    .end local v1    # "periodCount":I
    :cond_44
    nop

    .line 544
    return-void

    .line 541
    :catch_46
    move-exception v0

    .line 542
    .local v0, "e":Lcom/google/android/exoplayer2/ExoPlaybackException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_4e

    :goto_4d
    throw v1

    :goto_4e
    goto :goto_4d
.end method

.method public varargs addTextLanguagesToSelection(Z[Ljava/lang/String;)V
    .registers 12
    .param p1, "selectUndeterminedTextLanguage"    # Z
    .param p2, "languages"    # [Ljava/lang/String;

    .line 559
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/DownloadHelper;->assertPreparedWithMedia()V

    .line 561
    sget-object v0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->DEFAULT_TRACK_SELECTOR_PARAMETERS_WITHOUT_CONTEXT:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    .line 562
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->buildUpon()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;

    move-result-object v0

    .line 563
    .local v0, "parametersBuilder":Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->setSelectUndeterminedTextLanguage(Z)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;

    .line 565
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->setForceHighestSupportedBitrate(Z)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;

    .line 567
    iget-object v2, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->rendererCapabilities:[Lcom/google/android/exoplayer2/RendererCapabilities;

    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_15
    if-ge v5, v3, :cond_2a

    aget-object v6, v2, v5

    .line 568
    .local v6, "capabilities":Lcom/google/android/exoplayer2/RendererCapabilities;
    invoke-interface {v6}, Lcom/google/android/exoplayer2/RendererCapabilities;->getTrackType()I

    move-result v7

    .line 569
    .local v7, "trackType":I
    const/4 v8, 0x3

    if-eq v7, v8, :cond_22

    const/4 v8, 0x1

    goto :goto_23

    :cond_22
    const/4 v8, 0x0

    :goto_23
    invoke-virtual {v0, v7, v8}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->setTrackTypeDisabled(IZ)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;

    .line 567
    nop

    .end local v6    # "capabilities":Lcom/google/android/exoplayer2/RendererCapabilities;
    .end local v7    # "trackType":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_15

    .line 574
    :cond_2a
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/offline/DownloadHelper;->getPeriodCount()I

    move-result v1

    .line 575
    .local v1, "periodCount":I
    array-length v2, p2

    :goto_2f
    if-ge v4, v2, :cond_48

    aget-object v3, p2, v4

    .line 576
    .local v3, "language":Ljava/lang/String;
    nop

    .line 577
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->setPreferredTextLanguage(Ljava/lang/String;)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->build()Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;

    move-result-object v5

    .line 578
    .local v5, "parameters":Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;
    const/4 v6, 0x0

    .local v6, "periodIndex":I
    :goto_3d
    if-ge v6, v1, :cond_45

    .line 579
    invoke-direct {p0, v6, v5}, Lcom/google/android/exoplayer2/offline/DownloadHelper;->addTrackSelectionInternal(ILcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;)V
    :try_end_42
    .catch Lcom/google/android/exoplayer2/ExoPlaybackException; {:try_start_0 .. :try_end_42} :catch_4a

    .line 578
    add-int/lit8 v6, v6, 0x1

    goto :goto_3d

    .line 575
    .end local v3    # "language":Ljava/lang/String;
    .end local v5    # "parameters":Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;
    .end local v6    # "periodIndex":I
    :cond_45
    add-int/lit8 v4, v4, 0x1

    goto :goto_2f

    .line 584
    .end local v0    # "parametersBuilder":Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;
    .end local v1    # "periodCount":I
    :cond_48
    nop

    .line 585
    return-void

    .line 582
    :catch_4a
    move-exception v0

    .line 583
    .local v0, "e":Lcom/google/android/exoplayer2/ExoPlaybackException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_52

    :goto_51
    throw v1

    :goto_52
    goto :goto_51
.end method

.method public addTrackSelection(ILcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;)V
    .registers 5
    .param p1, "periodIndex"    # I
    .param p2, "trackSelectionParameters"    # Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;

    .line 502
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/DownloadHelper;->assertPreparedWithMedia()V

    .line 503
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/offline/DownloadHelper;->addTrackSelectionInternal(ILcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;)V
    :try_end_6
    .catch Lcom/google/android/exoplayer2/ExoPlaybackException; {:try_start_0 .. :try_end_6} :catch_8

    .line 506
    nop

    .line 507
    return-void

    .line 504
    :catch_8
    move-exception v0

    .line 505
    .local v0, "e":Lcom/google/android/exoplayer2/ExoPlaybackException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public addTrackSelectionForSingleRenderer(IILcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;Ljava/util/List;)V
    .registers 9
    .param p1, "periodIndex"    # I
    .param p2, "rendererIndex"    # I
    .param p3, "trackSelectorParameters"    # Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;",
            ">;)V"
        }
    .end annotation

    .line 604
    .local p4, "overrides":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;>;"
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/DownloadHelper;->assertPreparedWithMedia()V

    .line 605
    invoke-virtual {p3}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->buildUpon()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;

    move-result-object v0

    .line 606
    .local v0, "builder":Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    iget-object v2, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->mappedTrackInfos:[Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererCount()I

    move-result v2

    if-ge v1, v2, :cond_1d

    .line 607
    if-eq v1, p2, :cond_16

    const/4 v2, 0x1

    goto :goto_17

    :cond_16
    const/4 v2, 0x0

    :goto_17
    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->setRendererDisabled(IZ)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;

    .line 606
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 609
    .end local v1    # "i":I
    :cond_1d
    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 610
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->build()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/google/android/exoplayer2/offline/DownloadHelper;->addTrackSelectionInternal(ILcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;)V

    goto :goto_4d

    .line 612
    :cond_2b
    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->mappedTrackInfos:[Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

    aget-object v1, v1, p1

    .line 613
    invoke-virtual {v1, p2}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackGroups(I)Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v1

    .line 614
    .local v1, "trackGroupArray":Lcom/google/android/exoplayer2/source/TrackGroupArray;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_34
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4d

    .line 615
    invoke-interface {p4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;

    invoke-virtual {v0, p2, v1, v3}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->setSelectionOverride(ILcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;

    .line 616
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->build()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lcom/google/android/exoplayer2/offline/DownloadHelper;->addTrackSelectionInternal(ILcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;)V
    :try_end_4a
    .catch Lcom/google/android/exoplayer2/ExoPlaybackException; {:try_start_0 .. :try_end_4a} :catch_4f

    .line 614
    add-int/lit8 v2, v2, 0x1

    goto :goto_34

    .line 621
    .end local v0    # "builder":Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;
    .end local v1    # "trackGroupArray":Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .end local v2    # "i":I
    :cond_4d
    :goto_4d
    nop

    .line 622
    return-void

    .line 619
    :catch_4f
    move-exception v0

    .line 620
    .local v0, "e":Lcom/google/android/exoplayer2/ExoPlaybackException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_57

    :goto_56
    throw v1

    :goto_57
    goto :goto_56
.end method

.method public clearTrackSelections(I)V
    .registers 4
    .param p1, "periodIndex"    # I

    .line 466
    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/DownloadHelper;->assertPreparedWithMedia()V

    .line 467
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->rendererCapabilities:[Lcom/google/android/exoplayer2/RendererCapabilities;

    array-length v1, v1

    if-ge v0, v1, :cond_15

    .line 468
    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->trackSelectionsByPeriodAndRenderer:[[Ljava/util/List;

    aget-object v1, v1, p1

    aget-object v1, v1, v0

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 467
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 470
    .end local v0    # "i":I
    :cond_15
    return-void
.end method

.method public getDownloadRequest(Ljava/lang/String;[B)Lcom/google/android/exoplayer2/offline/DownloadRequest;
    .registers 11
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "data"    # [B

    .line 644
    new-instance v0, Lcom/google/android/exoplayer2/offline/DownloadRequest$Builder;

    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->localConfiguration:Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;

    iget-object v1, v1, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;->uri:Landroid/net/Uri;

    invoke-direct {v0, p1, v1}, Lcom/google/android/exoplayer2/offline/DownloadRequest$Builder;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->localConfiguration:Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;

    iget-object v1, v1, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;->mimeType:Ljava/lang/String;

    .line 646
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/offline/DownloadRequest$Builder;->setMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/offline/DownloadRequest$Builder;

    move-result-object v0

    .line 648
    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->localConfiguration:Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;

    iget-object v1, v1, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;->drmConfiguration:Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;

    if-eqz v1, :cond_20

    .line 649
    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->localConfiguration:Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;

    iget-object v1, v1, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;->drmConfiguration:Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->getKeySetId()[B

    move-result-object v1

    goto :goto_21

    .line 650
    :cond_20
    const/4 v1, 0x0

    .line 647
    :goto_21
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/offline/DownloadRequest$Builder;->setKeySetId([B)Lcom/google/android/exoplayer2/offline/DownloadRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->localConfiguration:Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;

    iget-object v1, v1, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;->customCacheKey:Ljava/lang/String;

    .line 651
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/offline/DownloadRequest$Builder;->setCustomCacheKey(Ljava/lang/String;)Lcom/google/android/exoplayer2/offline/DownloadRequest$Builder;

    move-result-object v0

    .line 652
    invoke-virtual {v0, p2}, Lcom/google/android/exoplayer2/offline/DownloadRequest$Builder;->setData([B)Lcom/google/android/exoplayer2/offline/DownloadRequest$Builder;

    move-result-object v0

    .line 653
    .local v0, "requestBuilder":Lcom/google/android/exoplayer2/offline/DownloadRequest$Builder;
    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    if-nez v1, :cond_3a

    .line 654
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/offline/DownloadRequest$Builder;->build()Lcom/google/android/exoplayer2/offline/DownloadRequest;

    move-result-object v1

    return-object v1

    .line 656
    :cond_3a
    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/DownloadHelper;->assertPreparedWithMedia()V

    .line 657
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 658
    .local v1, "streamKeys":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/offline/StreamKey;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 659
    .local v2, "allSelections":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;>;"
    iget-object v3, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->trackSelectionsByPeriodAndRenderer:[[Ljava/util/List;

    array-length v3, v3

    .line 660
    .local v3, "periodCount":I
    const/4 v4, 0x0

    .local v4, "periodIndex":I
    :goto_4b
    if-ge v4, v3, :cond_74

    .line 661
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 662
    iget-object v5, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->trackSelectionsByPeriodAndRenderer:[[Ljava/util/List;

    aget-object v5, v5, v4

    array-length v5, v5

    .line 663
    .local v5, "rendererCount":I
    const/4 v6, 0x0

    .local v6, "rendererIndex":I
    :goto_56
    if-ge v6, v5, :cond_64

    .line 664
    iget-object v7, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->trackSelectionsByPeriodAndRenderer:[[Ljava/util/List;

    aget-object v7, v7, v4

    aget-object v7, v7, v6

    invoke-interface {v2, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 663
    add-int/lit8 v6, v6, 0x1

    goto :goto_56

    .line 666
    .end local v6    # "rendererIndex":I
    :cond_64
    iget-object v6, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->mediaPreparer:Lcom/google/android/exoplayer2/offline/DownloadHelper$MediaPreparer;

    iget-object v6, v6, Lcom/google/android/exoplayer2/offline/DownloadHelper$MediaPreparer;->mediaPeriods:[Lcom/google/android/exoplayer2/source/MediaPeriod;

    aget-object v6, v6, v4

    invoke-interface {v6, v2}, Lcom/google/android/exoplayer2/source/MediaPeriod;->getStreamKeys(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 660
    .end local v5    # "rendererCount":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_4b

    .line 668
    .end local v4    # "periodIndex":I
    :cond_74
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/offline/DownloadRequest$Builder;->setStreamKeys(Ljava/util/List;)Lcom/google/android/exoplayer2/offline/DownloadRequest$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/offline/DownloadRequest$Builder;->build()Lcom/google/android/exoplayer2/offline/DownloadRequest;

    move-result-object v4

    return-object v4
.end method

.method public getDownloadRequest([B)Lcom/google/android/exoplayer2/offline/DownloadRequest;
    .registers 3
    .param p1, "data"    # [B

    .line 632
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->localConfiguration:Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;

    iget-object v0, v0, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/google/android/exoplayer2/offline/DownloadHelper;->getDownloadRequest(Ljava/lang/String;[B)Lcom/google/android/exoplayer2/offline/DownloadRequest;

    move-result-object v0

    return-object v0
.end method

.method public getManifest()Ljava/lang/Object;
    .registers 4

    .line 384
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 385
    return-object v1

    .line 387
    :cond_6
    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/DownloadHelper;->assertPreparedWithMedia()V

    .line 388
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->mediaPreparer:Lcom/google/android/exoplayer2/offline/DownloadHelper$MediaPreparer;

    iget-object v0, v0, Lcom/google/android/exoplayer2/offline/DownloadHelper$MediaPreparer;->timeline:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->getWindowCount()I

    move-result v0

    if-lez v0, :cond_21

    .line 389
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->mediaPreparer:Lcom/google/android/exoplayer2/offline/DownloadHelper$MediaPreparer;

    iget-object v0, v0, Lcom/google/android/exoplayer2/offline/DownloadHelper$MediaPreparer;->timeline:Lcom/google/android/exoplayer2/Timeline;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object v0

    iget-object v1, v0, Lcom/google/android/exoplayer2/Timeline$Window;->manifest:Ljava/lang/Object;

    goto :goto_22

    .line 390
    :cond_21
    nop

    .line 388
    :goto_22
    return-object v1
.end method

.method public getMappedTrackInfo(I)Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;
    .registers 3
    .param p1, "periodIndex"    # I

    .line 442
    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/DownloadHelper;->assertPreparedWithMedia()V

    .line 443
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->mappedTrackInfos:[Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getPeriodCount()I
    .registers 2

    .line 398
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    if-nez v0, :cond_6

    .line 399
    const/4 v0, 0x0

    return v0

    .line 401
    :cond_6
    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/DownloadHelper;->assertPreparedWithMedia()V

    .line 402
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->trackGroupArrays:[Lcom/google/android/exoplayer2/source/TrackGroupArray;

    array-length v0, v0

    return v0
.end method

.method public getTrackGroups(I)Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .registers 3
    .param p1, "periodIndex"    # I

    .line 430
    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/DownloadHelper;->assertPreparedWithMedia()V

    .line 431
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->trackGroupArrays:[Lcom/google/android/exoplayer2/source/TrackGroupArray;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getTrackSelections(II)Ljava/util/List;
    .registers 4
    .param p1, "periodIndex"    # I
    .param p2, "rendererIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;",
            ">;"
        }
    .end annotation

    .line 455
    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/DownloadHelper;->assertPreparedWithMedia()V

    .line 456
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->immutableTrackSelectionsByPeriodAndRenderer:[[Ljava/util/List;

    aget-object v0, v0, p1

    aget-object v0, v0, p2

    return-object v0
.end method

.method public getTracks(I)Lcom/google/android/exoplayer2/Tracks;
    .registers 4
    .param p1, "periodIndex"    # I

    .line 414
    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/DownloadHelper;->assertPreparedWithMedia()V

    .line 415
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->mappedTrackInfos:[Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->immutableTrackSelectionsByPeriodAndRenderer:[[Ljava/util/List;

    aget-object v1, v1, p1

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionUtil;->buildTracks(Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;[Ljava/util/List;)Lcom/google/android/exoplayer2/Tracks;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$onMediaPreparationFailed$5$com-google-android-exoplayer2-offline-DownloadHelper(Ljava/io/IOException;)V
    .registers 3
    .param p1, "error"    # Ljava/io/IOException;

    .line 724
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->callback:Lcom/google/android/exoplayer2/offline/DownloadHelper$Callback;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/offline/DownloadHelper$Callback;

    invoke-interface {v0, p0, p1}, Lcom/google/android/exoplayer2/offline/DownloadHelper$Callback;->onPrepareError(Lcom/google/android/exoplayer2/offline/DownloadHelper;Ljava/io/IOException;)V

    return-void
.end method

.method synthetic lambda$onMediaPrepared$4$com-google-android-exoplayer2-offline-DownloadHelper()V
    .registers 2

    .line 720
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->callback:Lcom/google/android/exoplayer2/offline/DownloadHelper$Callback;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/offline/DownloadHelper$Callback;

    invoke-interface {v0, p0}, Lcom/google/android/exoplayer2/offline/DownloadHelper$Callback;->onPrepared(Lcom/google/android/exoplayer2/offline/DownloadHelper;)V

    return-void
.end method

.method synthetic lambda$prepare$3$com-google-android-exoplayer2-offline-DownloadHelper(Lcom/google/android/exoplayer2/offline/DownloadHelper$Callback;)V
    .registers 2
    .param p1, "callback"    # Lcom/google/android/exoplayer2/offline/DownloadHelper$Callback;

    .line 366
    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/offline/DownloadHelper$Callback;->onPrepared(Lcom/google/android/exoplayer2/offline/DownloadHelper;)V

    return-void
.end method

.method public prepare(Lcom/google/android/exoplayer2/offline/DownloadHelper$Callback;)V
    .registers 4
    .param p1, "callback"    # Lcom/google/android/exoplayer2/offline/DownloadHelper$Callback;

    .line 361
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->callback:Lcom/google/android/exoplayer2/offline/DownloadHelper$Callback;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 362
    iput-object p1, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->callback:Lcom/google/android/exoplayer2/offline/DownloadHelper$Callback;

    .line 363
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    if-eqz v0, :cond_18

    .line 364
    new-instance v1, Lcom/google/android/exoplayer2/offline/DownloadHelper$MediaPreparer;

    invoke-direct {v1, v0, p0}, Lcom/google/android/exoplayer2/offline/DownloadHelper$MediaPreparer;-><init>(Lcom/google/android/exoplayer2/source/MediaSource;Lcom/google/android/exoplayer2/offline/DownloadHelper;)V

    iput-object v1, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->mediaPreparer:Lcom/google/android/exoplayer2/offline/DownloadHelper$MediaPreparer;

    goto :goto_22

    .line 366
    :cond_18
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->callbackHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/exoplayer2/offline/DownloadHelper$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer2/offline/DownloadHelper$$ExternalSyntheticLambda6;-><init>(Lcom/google/android/exoplayer2/offline/DownloadHelper;Lcom/google/android/exoplayer2/offline/DownloadHelper$Callback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 368
    :goto_22
    return-void
.end method

.method public release()V
    .registers 2

    .line 372
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->mediaPreparer:Lcom/google/android/exoplayer2/offline/DownloadHelper$MediaPreparer;

    if-eqz v0, :cond_7

    .line 373
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/offline/DownloadHelper$MediaPreparer;->release()V

    .line 375
    :cond_7
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->trackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->release()V

    .line 376
    return-void
.end method

.method public replaceTrackSelections(ILcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;)V
    .registers 5
    .param p1, "periodIndex"    # I
    .param p2, "trackSelectionParameters"    # Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;

    .line 483
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/DownloadHelper;->assertPreparedWithMedia()V

    .line 484
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/offline/DownloadHelper;->clearTrackSelections(I)V

    .line 485
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/offline/DownloadHelper;->addTrackSelectionInternal(ILcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;)V
    :try_end_9
    .catch Lcom/google/android/exoplayer2/ExoPlaybackException; {:try_start_0 .. :try_end_9} :catch_b

    .line 488
    nop

    .line 489
    return-void

    .line 486
    :catch_b
    move-exception v0

    .line 487
    .local v0, "e":Lcom/google/android/exoplayer2/ExoPlaybackException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
