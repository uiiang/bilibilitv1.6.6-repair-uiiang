.class public final Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;
.super Ljava/lang/Object;
.source "DefaultMediaSourceFactory.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/MediaSourceFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;,
        Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$UnknownSubtitlesExtractor;,
        Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$AdsLoaderProvider;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DMediaSourceFactory"


# instance fields
.field private adViewProvider:Lcom/google/android/exoplayer2/ui/AdViewProvider;

.field private adsLoaderProvider:Lcom/google/android/exoplayer2/source/ads/AdsLoader$Provider;

.field private dataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

.field private final delegateFactoryLoader:Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;

.field private liveMaxOffsetMs:J

.field private liveMaxSpeed:F

.field private liveMinOffsetMs:J

.field private liveMinSpeed:F

.field private liveTargetOffsetMs:J

.field private loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

.field private serverSideAdInsertionMediaSourceFactory:Lcom/google/android/exoplayer2/source/MediaSource$Factory;

.field private useProgressiveMediaSourceForSubtitles:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 136
    new-instance v0, Lcom/google/android/exoplayer2/upstream/DefaultDataSource$Factory;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/upstream/DefaultDataSource$Factory;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    .line 137
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "extractorsFactory"    # Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;

    .line 150
    new-instance v0, Lcom/google/android/exoplayer2/upstream/DefaultDataSource$Factory;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/upstream/DefaultDataSource$Factory;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0, p2}, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;)V

    .line 151
    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V
    .registers 3
    .param p1, "dataSourceFactory"    # Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    .line 163
    new-instance v0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;)V

    .line 164
    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;)V
    .registers 5
    .param p1, "dataSourceFactory"    # Lcom/google/android/exoplayer2/upstream/DataSource$Factory;
    .param p2, "extractorsFactory"    # Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;->dataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    .line 181
    new-instance v0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;

    invoke-direct {v0, p2}, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;-><init>(Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;->delegateFactoryLoader:Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;

    .line 182
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->setDataSourceFactory(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    .line 183
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;->liveTargetOffsetMs:J

    .line 184
    iput-wide v0, p0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;->liveMinOffsetMs:J

    .line 185
    iput-wide v0, p0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;->liveMaxOffsetMs:J

    .line 186
    const v0, -0x800001

    iput v0, p0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;->liveMinSpeed:F

    .line 187
    iput v0, p0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;->liveMaxSpeed:F

    .line 188
    return-void
.end method

.method static synthetic access$000(Ljava/lang/Class;)Lcom/google/android/exoplayer2/source/MediaSource$Factory;
    .registers 2
    .param p0, "x0"    # Ljava/lang/Class;

    .line 106
    invoke-static {p0}, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;->newInstance(Ljava/lang/Class;)Lcom/google/android/exoplayer2/source/MediaSource$Factory;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Ljava/lang/Class;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)Lcom/google/android/exoplayer2/source/MediaSource$Factory;
    .registers 3
    .param p0, "x0"    # Ljava/lang/Class;
    .param p1, "x1"    # Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    .line 106
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;->newInstance(Ljava/lang/Class;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)Lcom/google/android/exoplayer2/source/MediaSource$Factory;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$createMediaSource$0(Lcom/google/android/exoplayer2/Format;)[Lcom/google/android/exoplayer2/extractor/Extractor;
    .registers 4
    .param p0, "format"    # Lcom/google/android/exoplayer2/Format;

    .line 476
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/android/exoplayer2/extractor/Extractor;

    .line 477
    sget-object v1, Lcom/google/android/exoplayer2/text/SubtitleDecoderFactory;->DEFAULT:Lcom/google/android/exoplayer2/text/SubtitleDecoderFactory;

    invoke-interface {v1, p0}, Lcom/google/android/exoplayer2/text/SubtitleDecoderFactory;->supportsFormat(Lcom/google/android/exoplayer2/Format;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 478
    new-instance v1, Lcom/google/android/exoplayer2/text/SubtitleExtractor;

    sget-object v2, Lcom/google/android/exoplayer2/text/SubtitleDecoderFactory;->DEFAULT:Lcom/google/android/exoplayer2/text/SubtitleDecoderFactory;

    .line 479
    invoke-interface {v2, p0}, Lcom/google/android/exoplayer2/text/SubtitleDecoderFactory;->createDecoder(Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/text/SubtitleDecoder;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/google/android/exoplayer2/text/SubtitleExtractor;-><init>(Lcom/google/android/exoplayer2/text/SubtitleDecoder;Lcom/google/android/exoplayer2/Format;)V

    goto :goto_1c

    .line 480
    :cond_17
    new-instance v1, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$UnknownSubtitlesExtractor;

    invoke-direct {v1, p0}, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$UnknownSubtitlesExtractor;-><init>(Lcom/google/android/exoplayer2/Format;)V

    :goto_1c
    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 476
    return-object v0
.end method

.method private static maybeClipMediaSource(Lcom/google/android/exoplayer2/MediaItem;Lcom/google/android/exoplayer2/source/MediaSource;)Lcom/google/android/exoplayer2/source/MediaSource;
    .registers 12
    .param p0, "mediaItem"    # Lcom/google/android/exoplayer2/MediaItem;
    .param p1, "mediaSource"    # Lcom/google/android/exoplayer2/source/MediaSource;

    .line 510
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaItem;->clippingConfiguration:Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;->startPositionMs:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1b

    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaItem;->clippingConfiguration:Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;->endPositionMs:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-nez v4, :cond_1b

    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaItem;->clippingConfiguration:Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;->relativeToDefaultPosition:Z

    if-nez v0, :cond_1b

    .line 513
    return-object p1

    .line 515
    :cond_1b
    new-instance v0, Lcom/google/android/exoplayer2/source/ClippingMediaSource;

    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaItem;->clippingConfiguration:Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;

    iget-wide v1, v1, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;->startPositionMs:J

    .line 517
    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/util/Util;->msToUs(J)J

    move-result-wide v3

    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaItem;->clippingConfiguration:Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;

    iget-wide v1, v1, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;->endPositionMs:J

    .line 518
    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/util/Util;->msToUs(J)J

    move-result-wide v5

    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaItem;->clippingConfiguration:Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;

    iget-boolean v1, v1, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;->startsAtKeyFrame:Z

    xor-int/lit8 v7, v1, 0x1

    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaItem;->clippingConfiguration:Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;

    iget-boolean v8, v1, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;->relativeToLiveWindow:Z

    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaItem;->clippingConfiguration:Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;

    iget-boolean v9, v1, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;->relativeToDefaultPosition:Z

    move-object v1, v0

    move-object v2, p1

    invoke-direct/range {v1 .. v9}, Lcom/google/android/exoplayer2/source/ClippingMediaSource;-><init>(Lcom/google/android/exoplayer2/source/MediaSource;JJZZZ)V

    .line 515
    return-object v0
.end method

.method private maybeWrapWithAdsMediaSource(Lcom/google/android/exoplayer2/MediaItem;Lcom/google/android/exoplayer2/source/MediaSource;)Lcom/google/android/exoplayer2/source/MediaSource;
    .registers 15
    .param p1, "mediaItem"    # Lcom/google/android/exoplayer2/MediaItem;
    .param p2, "mediaSource"    # Lcom/google/android/exoplayer2/source/MediaSource;

    .line 525
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaItem;->localConfiguration:Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 527
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaItem;->localConfiguration:Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;

    iget-object v0, v0, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;->adsConfiguration:Lcom/google/android/exoplayer2/MediaItem$AdsConfiguration;

    .line 528
    .local v0, "adsConfiguration":Lcom/google/android/exoplayer2/MediaItem$AdsConfiguration;
    if-nez v0, :cond_c

    .line 529
    return-object p2

    .line 531
    :cond_c
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;->adsLoaderProvider:Lcom/google/android/exoplayer2/source/ads/AdsLoader$Provider;

    .line 532
    .local v1, "adsLoaderProvider":Lcom/google/android/exoplayer2/source/ads/AdsLoader$Provider;
    iget-object v9, p0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;->adViewProvider:Lcom/google/android/exoplayer2/ui/AdViewProvider;

    .line 533
    .local v9, "adViewProvider":Lcom/google/android/exoplayer2/ui/AdViewProvider;
    const-string v2, "DMediaSourceFactory"

    if-eqz v1, :cond_4a

    if-nez v9, :cond_17

    goto :goto_4a

    .line 540
    :cond_17
    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/source/ads/AdsLoader$Provider;->getAdsLoader(Lcom/google/android/exoplayer2/MediaItem$AdsConfiguration;)Lcom/google/android/exoplayer2/source/ads/AdsLoader;

    move-result-object v10

    .line 541
    .local v10, "adsLoader":Lcom/google/android/exoplayer2/source/ads/AdsLoader;
    if-nez v10, :cond_23

    .line 542
    const-string v3, "Playing media without ads, as no AdsLoader was provided."

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    return-object p2

    .line 545
    :cond_23
    new-instance v11, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;

    new-instance v4, Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget-object v2, v0, Lcom/google/android/exoplayer2/MediaItem$AdsConfiguration;->adTagUri:Landroid/net/Uri;

    invoke-direct {v4, v2}, Lcom/google/android/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;)V

    .line 548
    iget-object v2, v0, Lcom/google/android/exoplayer2/MediaItem$AdsConfiguration;->adsId:Ljava/lang/Object;

    if-eqz v2, :cond_34

    .line 549
    iget-object v2, v0, Lcom/google/android/exoplayer2/MediaItem$AdsConfiguration;->adsId:Ljava/lang/Object;

    move-object v5, v2

    goto :goto_41

    .line 550
    :cond_34
    iget-object v2, p1, Lcom/google/android/exoplayer2/MediaItem;->mediaId:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/exoplayer2/MediaItem;->localConfiguration:Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;

    iget-object v3, v3, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;->uri:Landroid/net/Uri;

    iget-object v5, v0, Lcom/google/android/exoplayer2/MediaItem$AdsConfiguration;->adTagUri:Landroid/net/Uri;

    invoke-static {v2, v3, v5}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    move-object v5, v2

    :goto_41
    move-object v2, v11

    move-object v3, p2

    move-object v6, p0

    move-object v7, v10

    move-object v8, v9

    invoke-direct/range {v2 .. v8}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;-><init>(Lcom/google/android/exoplayer2/source/MediaSource;Lcom/google/android/exoplayer2/upstream/DataSpec;Ljava/lang/Object;Lcom/google/android/exoplayer2/source/MediaSource$Factory;Lcom/google/android/exoplayer2/source/ads/AdsLoader;Lcom/google/android/exoplayer2/ui/AdViewProvider;)V

    .line 545
    return-object v11

    .line 534
    .end local v10    # "adsLoader":Lcom/google/android/exoplayer2/source/ads/AdsLoader;
    :cond_4a
    :goto_4a
    const-string v3, "Playing media without ads. Configure ad support by calling setAdsLoaderProvider and setAdViewProvider."

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    return-object p2
.end method

.method private static newInstance(Ljava/lang/Class;)Lcom/google/android/exoplayer2/source/MediaSource$Factory;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/android/exoplayer2/source/MediaSource$Factory;",
            ">;)",
            "Lcom/google/android/exoplayer2/source/MediaSource$Factory;"
        }
    .end annotation

    .line 754
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/google/android/exoplayer2/source/MediaSource$Factory;>;"
    const/4 v0, 0x0

    :try_start_1
    new-array v1, v0, [Ljava/lang/Class;

    invoke-virtual {p0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/MediaSource$Factory;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_f} :catch_10

    return-object v0

    .line 755
    :catch_10
    move-exception v0

    .line 756
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static newInstance(Ljava/lang/Class;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)Lcom/google/android/exoplayer2/source/MediaSource$Factory;
    .registers 6
    .param p1, "dataSourceFactory"    # Lcom/google/android/exoplayer2/upstream/DataSource$Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/android/exoplayer2/source/MediaSource$Factory;",
            ">;",
            "Lcom/google/android/exoplayer2/upstream/DataSource$Factory;",
            ")",
            "Lcom/google/android/exoplayer2/source/MediaSource$Factory;"
        }
    .end annotation

    .line 746
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/google/android/exoplayer2/source/MediaSource$Factory;>;"
    const/4 v0, 0x1

    :try_start_1
    new-array v1, v0, [Ljava/lang/Class;

    const-class v2, Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v3

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/MediaSource$Factory;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_16} :catch_17

    return-object v0

    .line 747
    :catch_17
    move-exception v0

    .line 748
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public clearLocalAdInsertionComponents()Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;
    .registers 2

    .line 276
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;->adsLoaderProvider:Lcom/google/android/exoplayer2/source/ads/AdsLoader$Provider;

    .line 277
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;->adViewProvider:Lcom/google/android/exoplayer2/ui/AdViewProvider;

    .line 278
    return-object p0
.end method

.method public createMediaSource(Lcom/google/android/exoplayer2/MediaItem;)Lcom/google/android/exoplayer2/source/MediaSource;
    .registers 18
    .param p1, "mediaItem"    # Lcom/google/android/exoplayer2/MediaItem;

    .line 419
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v1, Lcom/google/android/exoplayer2/MediaItem;->localConfiguration:Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    iget-object v2, v1, Lcom/google/android/exoplayer2/MediaItem;->localConfiguration:Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;

    iget-object v2, v2, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;->uri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    .line 421
    .local v2, "scheme":Ljava/lang/String;
    if-eqz v2, :cond_28

    const-string v3, "ssai"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 422
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;->serverSideAdInsertionMediaSourceFactory:Lcom/google/android/exoplayer2/source/MediaSource$Factory;

    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/source/MediaSource$Factory;

    invoke-interface {v3, v1}, Lcom/google/android/exoplayer2/source/MediaSource$Factory;->createMediaSource(Lcom/google/android/exoplayer2/MediaItem;)Lcom/google/android/exoplayer2/source/MediaSource;

    move-result-object v3

    return-object v3

    .line 425
    :cond_28
    iget-object v3, v1, Lcom/google/android/exoplayer2/MediaItem;->localConfiguration:Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;

    iget-object v3, v3, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;->uri:Landroid/net/Uri;

    iget-object v4, v1, Lcom/google/android/exoplayer2/MediaItem;->localConfiguration:Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;

    iget-object v4, v4, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;->mimeType:Ljava/lang/String;

    .line 426
    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/util/Util;->inferContentTypeForUriAndMimeType(Landroid/net/Uri;Ljava/lang/String;)I

    move-result v3

    .line 429
    .local v3, "type":I
    iget-object v4, v0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;->delegateFactoryLoader:Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;

    invoke-virtual {v4, v3}, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->getMediaSourceFactory(I)Lcom/google/android/exoplayer2/source/MediaSource$Factory;

    move-result-object v4

    .line 430
    .local v4, "mediaSourceFactory":Lcom/google/android/exoplayer2/source/MediaSource$Factory;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No suitable media source factory found for content type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    iget-object v5, v1, Lcom/google/android/exoplayer2/MediaItem;->liveConfiguration:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    .line 434
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->buildUpon()Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;

    move-result-object v5

    .line 435
    .local v5, "liveConfigurationBuilder":Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;
    iget-object v6, v1, Lcom/google/android/exoplayer2/MediaItem;->liveConfiguration:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    iget-wide v6, v6, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->targetOffsetMs:J

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v10, v6, v8

    if-nez v10, :cond_68

    .line 436
    iget-wide v6, v0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;->liveTargetOffsetMs:J

    invoke-virtual {v5, v6, v7}, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;->setTargetOffsetMs(J)Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;

    .line 438
    :cond_68
    iget-object v6, v1, Lcom/google/android/exoplayer2/MediaItem;->liveConfiguration:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    iget v6, v6, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->minPlaybackSpeed:F

    const v7, -0x800001

    cmpl-float v6, v6, v7

    if-nez v6, :cond_78

    .line 439
    iget v6, v0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;->liveMinSpeed:F

    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;->setMinPlaybackSpeed(F)Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;

    .line 441
    :cond_78
    iget-object v6, v1, Lcom/google/android/exoplayer2/MediaItem;->liveConfiguration:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    iget v6, v6, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->maxPlaybackSpeed:F

    cmpl-float v6, v6, v7

    if-nez v6, :cond_85

    .line 442
    iget v6, v0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;->liveMaxSpeed:F

    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;->setMaxPlaybackSpeed(F)Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;

    .line 444
    :cond_85
    iget-object v6, v1, Lcom/google/android/exoplayer2/MediaItem;->liveConfiguration:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    iget-wide v6, v6, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->minOffsetMs:J

    cmp-long v10, v6, v8

    if-nez v10, :cond_92

    .line 445
    iget-wide v6, v0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;->liveMinOffsetMs:J

    invoke-virtual {v5, v6, v7}, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;->setMinOffsetMs(J)Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;

    .line 447
    :cond_92
    iget-object v6, v1, Lcom/google/android/exoplayer2/MediaItem;->liveConfiguration:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    iget-wide v6, v6, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->maxOffsetMs:J

    cmp-long v10, v6, v8

    if-nez v10, :cond_9f

    .line 448
    iget-wide v6, v0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;->liveMaxOffsetMs:J

    invoke-virtual {v5, v6, v7}, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;->setMaxOffsetMs(J)Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;

    .line 450
    :cond_9f
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;->build()Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    move-result-object v6

    .line 452
    .local v6, "liveConfiguration":Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;
    iget-object v7, v1, Lcom/google/android/exoplayer2/MediaItem;->liveConfiguration:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    invoke-virtual {v6, v7}, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b7

    .line 453
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/MediaItem;->buildUpon()Lcom/google/android/exoplayer2/MediaItem$Builder;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/google/android/exoplayer2/MediaItem$Builder;->setLiveConfiguration(Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;)Lcom/google/android/exoplayer2/MediaItem$Builder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/exoplayer2/MediaItem$Builder;->build()Lcom/google/android/exoplayer2/MediaItem;

    move-result-object v1

    .line 456
    .end local p1    # "mediaItem":Lcom/google/android/exoplayer2/MediaItem;
    .local v1, "mediaItem":Lcom/google/android/exoplayer2/MediaItem;
    :cond_b7
    invoke-interface {v4, v1}, Lcom/google/android/exoplayer2/source/MediaSource$Factory;->createMediaSource(Lcom/google/android/exoplayer2/MediaItem;)Lcom/google/android/exoplayer2/source/MediaSource;

    move-result-object v7

    .line 458
    .local v7, "mediaSource":Lcom/google/android/exoplayer2/source/MediaSource;
    iget-object v10, v1, Lcom/google/android/exoplayer2/MediaItem;->localConfiguration:Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;

    .line 459
    invoke-static {v10}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;

    iget-object v10, v10, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;->subtitleConfigurations:Lcom/google/common/collect/ImmutableList;

    .line 460
    .local v10, "subtitleConfigurations":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;>;"
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_190

    .line 461
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    add-int/lit8 v11, v11, 0x1

    new-array v11, v11, [Lcom/google/android/exoplayer2/source/MediaSource;

    .line 462
    .local v11, "mediaSources":[Lcom/google/android/exoplayer2/source/MediaSource;
    const/4 v12, 0x0

    aput-object v7, v11, v12

    .line 463
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_d7
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v13

    if-ge v12, v13, :cond_18a

    .line 464
    iget-boolean v13, v0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;->useProgressiveMediaSourceForSubtitles:Z

    if-eqz v13, :cond_164

    .line 465
    new-instance v13, Lcom/google/android/exoplayer2/Format$Builder;

    invoke-direct {v13}, Lcom/google/android/exoplayer2/Format$Builder;-><init>()V

    .line 467
    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;

    iget-object v14, v14, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;->mimeType:Ljava/lang/String;

    invoke-virtual {v13, v14}, Lcom/google/android/exoplayer2/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v13

    .line 468
    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;

    iget-object v14, v14, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;->language:Ljava/lang/String;

    invoke-virtual {v13, v14}, Lcom/google/android/exoplayer2/Format$Builder;->setLanguage(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v13

    .line 469
    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;

    iget v14, v14, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;->selectionFlags:I

    invoke-virtual {v13, v14}, Lcom/google/android/exoplayer2/Format$Builder;->setSelectionFlags(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v13

    .line 470
    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;

    iget v14, v14, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;->roleFlags:I

    invoke-virtual {v13, v14}, Lcom/google/android/exoplayer2/Format$Builder;->setRoleFlags(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v13

    .line 471
    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;

    iget-object v14, v14, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;->label:Ljava/lang/String;

    invoke-virtual {v13, v14}, Lcom/google/android/exoplayer2/Format$Builder;->setLabel(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v13

    .line 472
    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;

    iget-object v14, v14, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;->id:Ljava/lang/String;

    invoke-virtual {v13, v14}, Lcom/google/android/exoplayer2/Format$Builder;->setId(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v13

    .line 473
    invoke-virtual {v13}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object v13

    .line 474
    .local v13, "format":Lcom/google/android/exoplayer2/Format;
    new-instance v14, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$$ExternalSyntheticLambda0;

    invoke-direct {v14, v13}, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/exoplayer2/Format;)V

    .line 482
    .local v14, "extractorsFactory":Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;
    new-instance v15, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;

    iget-object v8, v0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;->dataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    invoke-direct {v15, v8, v14}, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;)V

    move-object v8, v15

    .line 484
    .local v8, "progressiveMediaSourceFactory":Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;
    iget-object v9, v0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    if-eqz v9, :cond_146

    .line 485
    invoke-virtual {v8, v9}, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;->setLoadErrorHandlingPolicy(Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;)Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;

    .line 487
    :cond_146
    add-int/lit8 v9, v12, 0x1

    .line 489
    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;

    iget-object v15, v15, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;->uri:Landroid/net/Uri;

    invoke-virtual {v15}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/google/android/exoplayer2/MediaItem;->fromUri(Ljava/lang/String;)Lcom/google/android/exoplayer2/MediaItem;

    move-result-object v15

    .line 488
    invoke-virtual {v8, v15}, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;->createMediaSource(Lcom/google/android/exoplayer2/MediaItem;)Lcom/google/android/exoplayer2/source/ProgressiveMediaSource;

    move-result-object v15

    aput-object v15, v11, v9

    .line 490
    .end local v8    # "progressiveMediaSourceFactory":Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;
    .end local v13    # "format":Lcom/google/android/exoplayer2/Format;
    .end local v14    # "extractorsFactory":Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;
    const-wide v14, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_185

    .line 491
    :cond_164
    new-instance v8, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource$Factory;

    iget-object v9, v0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;->dataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    invoke-direct {v8, v9}, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    .line 493
    .local v8, "singleSampleMediaSourceFactory":Lcom/google/android/exoplayer2/source/SingleSampleMediaSource$Factory;
    iget-object v9, v0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    if-eqz v9, :cond_172

    .line 494
    invoke-virtual {v8, v9}, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource$Factory;->setLoadErrorHandlingPolicy(Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;)Lcom/google/android/exoplayer2/source/SingleSampleMediaSource$Factory;

    .line 496
    :cond_172
    add-int/lit8 v9, v12, 0x1

    .line 498
    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;

    .line 497
    const-wide v14, -0x7fffffffffffffffL    # -4.9E-324

    invoke-virtual {v8, v13, v14, v15}, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource$Factory;->createMediaSource(Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;J)Lcom/google/android/exoplayer2/source/SingleSampleMediaSource;

    move-result-object v13

    aput-object v13, v11, v9

    .line 463
    .end local v8    # "singleSampleMediaSourceFactory":Lcom/google/android/exoplayer2/source/SingleSampleMediaSource$Factory;
    :goto_185
    add-int/lit8 v12, v12, 0x1

    move-wide v8, v14

    goto/16 :goto_d7

    .line 502
    .end local v12    # "i":I
    :cond_18a
    new-instance v8, Lcom/google/android/exoplayer2/source/MergingMediaSource;

    invoke-direct {v8, v11}, Lcom/google/android/exoplayer2/source/MergingMediaSource;-><init>([Lcom/google/android/exoplayer2/source/MediaSource;)V

    move-object v7, v8

    .line 504
    .end local v11    # "mediaSources":[Lcom/google/android/exoplayer2/source/MediaSource;
    :cond_190
    invoke-static {v1, v7}, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;->maybeClipMediaSource(Lcom/google/android/exoplayer2/MediaItem;Lcom/google/android/exoplayer2/source/MediaSource;)Lcom/google/android/exoplayer2/source/MediaSource;

    move-result-object v8

    invoke-direct {v0, v1, v8}, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;->maybeWrapWithAdsMediaSource(Lcom/google/android/exoplayer2/MediaItem;Lcom/google/android/exoplayer2/source/MediaSource;)Lcom/google/android/exoplayer2/source/MediaSource;

    move-result-object v8

    return-object v8
.end method

.method public experimentalUseProgressiveMediaSourceForSubtitles(Z)Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;
    .registers 2
    .param p1, "useProgressiveMediaSourceForSubtitles"    # Z

    .line 204
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;->useProgressiveMediaSourceForSubtitles:Z

    .line 205
    return-object p0
.end method

.method public getSupportedTypes()[I
    .registers 2

    .line 414
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;->delegateFactoryLoader:Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->getSupportedTypes()[I

    move-result-object v0

    return-object v0
.end method

.method public setAdViewProvider(Lcom/google/android/exoplayer2/ui/AdViewProvider;)Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;
    .registers 2
    .param p1, "adViewProvider"    # Lcom/google/android/exoplayer2/ui/AdViewProvider;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 242
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;->adViewProvider:Lcom/google/android/exoplayer2/ui/AdViewProvider;

    .line 243
    return-object p0
.end method

.method public setAdsLoaderProvider(Lcom/google/android/exoplayer2/source/ads/AdsLoader$Provider;)Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;
    .registers 2
    .param p1, "adsLoaderProvider"    # Lcom/google/android/exoplayer2/source/ads/AdsLoader$Provider;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 224
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;->adsLoaderProvider:Lcom/google/android/exoplayer2/source/ads/AdsLoader$Provider;

    .line 225
    return-object p0
.end method

.method public setCmcdConfigurationFactory(Lcom/google/android/exoplayer2/upstream/CmcdConfiguration$Factory;)Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;
    .registers 4
    .param p1, "cmcdConfigurationFactory"    # Lcom/google/android/exoplayer2/upstream/CmcdConfiguration$Factory;

    .line 381
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;->delegateFactoryLoader:Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/upstream/CmcdConfiguration$Factory;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->setCmcdConfigurationFactory(Lcom/google/android/exoplayer2/upstream/CmcdConfiguration$Factory;)V

    .line 382
    return-object p0
.end method

.method public bridge synthetic setCmcdConfigurationFactory(Lcom/google/android/exoplayer2/upstream/CmcdConfiguration$Factory;)Lcom/google/android/exoplayer2/source/MediaSource$Factory;
    .registers 2

    .line 104
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;->setCmcdConfigurationFactory(Lcom/google/android/exoplayer2/upstream/CmcdConfiguration$Factory;)Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;

    move-result-object p1

    return-object p1
.end method

.method public setDataSourceFactory(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;
    .registers 3
    .param p1, "dataSourceFactory"    # Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    .line 290
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;->dataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    .line 291
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;->delegateFactoryLoader:Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->setDataSourceFactory(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    .line 292
    return-object p0
.end method

.method public setDrmSessionManagerProvider(Lcom/google/android/exoplayer2/drm/DrmSessionManagerProvider;)Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;
    .registers 4
    .param p1, "drmSessionManagerProvider"    # Lcom/google/android/exoplayer2/drm/DrmSessionManagerProvider;

    .line 389
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;->delegateFactoryLoader:Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;

    .line 390
    const-string v1, "MediaSource.Factory#setDrmSessionManagerProvider no longer handles null by instantiating a new DefaultDrmSessionManagerProvider. Explicitly construct and pass an instance in order to retain the old behavior."

    invoke-static {p1, v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/drm/DrmSessionManagerProvider;

    .line 389
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->setDrmSessionManagerProvider(Lcom/google/android/exoplayer2/drm/DrmSessionManagerProvider;)V

    .line 395
    return-object p0
.end method

.method public bridge synthetic setDrmSessionManagerProvider(Lcom/google/android/exoplayer2/drm/DrmSessionManagerProvider;)Lcom/google/android/exoplayer2/source/MediaSource$Factory;
    .registers 2

    .line 104
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;->setDrmSessionManagerProvider(Lcom/google/android/exoplayer2/drm/DrmSessionManagerProvider;)Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;

    move-result-object p1

    return-object p1
.end method

.method public setLiveMaxOffsetMs(J)Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;
    .registers 3
    .param p1, "liveMaxOffsetMs"    # J

    .line 347
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;->liveMaxOffsetMs:J

    .line 348
    return-object p0
.end method

.method public setLiveMaxSpeed(F)Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;
    .registers 2
    .param p1, "maxSpeed"    # F

    .line 373
    iput p1, p0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;->liveMaxSpeed:F

    .line 374
    return-object p0
.end method

.method public setLiveMinOffsetMs(J)Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;
    .registers 3
    .param p1, "liveMinOffsetMs"    # J

    .line 334
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;->liveMinOffsetMs:J

    .line 335
    return-object p0
.end method

.method public setLiveMinSpeed(F)Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;
    .registers 2
    .param p1, "minSpeed"    # F

    .line 360
    iput p1, p0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;->liveMinSpeed:F

    .line 361
    return-object p0
.end method

.method public setLiveTargetOffsetMs(J)Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;
    .registers 3
    .param p1, "liveTargetOffsetMs"    # J

    .line 321
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;->liveTargetOffsetMs:J

    .line 322
    return-object p0
.end method

.method public setLoadErrorHandlingPolicy(Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;)Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;
    .registers 3
    .param p1, "loadErrorHandlingPolicy"    # Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    .line 402
    nop

    .line 403
    const-string v0, "MediaSource.Factory#setLoadErrorHandlingPolicy no longer handles null by instantiating a new DefaultLoadErrorHandlingPolicy. Explicitly construct and pass an instance in order to retain the old behavior."

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    .line 408
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;->delegateFactoryLoader:Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->setLoadErrorHandlingPolicy(Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;)V

    .line 409
    return-object p0
.end method

.method public bridge synthetic setLoadErrorHandlingPolicy(Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;)Lcom/google/android/exoplayer2/source/MediaSource$Factory;
    .registers 2

    .line 104
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;->setLoadErrorHandlingPolicy(Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;)Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;

    move-result-object p1

    return-object p1
.end method

.method public setLocalAdInsertionComponents(Lcom/google/android/exoplayer2/source/ads/AdsLoader$Provider;Lcom/google/android/exoplayer2/ui/AdViewProvider;)Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;
    .registers 4
    .param p1, "adsLoaderProvider"    # Lcom/google/android/exoplayer2/source/ads/AdsLoader$Provider;
    .param p2, "adViewProvider"    # Lcom/google/android/exoplayer2/ui/AdViewProvider;

    .line 260
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/ads/AdsLoader$Provider;

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;->adsLoaderProvider:Lcom/google/android/exoplayer2/source/ads/AdsLoader$Provider;

    .line 261
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/ui/AdViewProvider;

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;->adViewProvider:Lcom/google/android/exoplayer2/ui/AdViewProvider;

    .line 262
    return-object p0
.end method

.method public setServerSideAdInsertionMediaSourceFactory(Lcom/google/android/exoplayer2/source/MediaSource$Factory;)Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;
    .registers 2
    .param p1, "serverSideAdInsertionMediaSourceFactory"    # Lcom/google/android/exoplayer2/source/MediaSource$Factory;

    .line 308
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;->serverSideAdInsertionMediaSourceFactory:Lcom/google/android/exoplayer2/source/MediaSource$Factory;

    .line 309
    return-object p0
.end method
