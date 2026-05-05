.class public final Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;
.super Lcom/google/android/exoplayer2/source/CompositeMediaSource;
.source "AdsMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;,
        Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener;,
        Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdPrepareListener;,
        Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdLoadException;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/exoplayer2/source/CompositeMediaSource<",
        "Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final CHILD_SOURCE_MEDIA_PERIOD_ID:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;


# instance fields
.field private final adMediaSourceFactory:Lcom/google/android/exoplayer2/source/MediaSource$Factory;

.field private adMediaSourceHolders:[[Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;

.field private adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

.field private final adTagDataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

.field private final adViewProvider:Lcom/google/android/exoplayer2/ui/AdViewProvider;

.field private final adsId:Ljava/lang/Object;

.field private final adsLoader:Lcom/google/android/exoplayer2/source/ads/AdsLoader;

.field private componentListener:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener;

.field final contentDrmConfiguration:Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;

.field private final contentMediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

.field private contentTimeline:Lcom/google/android/exoplayer2/Timeline;

.field private final mainHandler:Landroid/os/Handler;

.field private final period:Lcom/google/android/exoplayer2/Timeline$Period;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 134
    new-instance v0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->CHILD_SOURCE_MEDIA_PERIOD_ID:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/source/MediaSource;Lcom/google/android/exoplayer2/upstream/DataSpec;Ljava/lang/Object;Lcom/google/android/exoplayer2/source/MediaSource$Factory;Lcom/google/android/exoplayer2/source/ads/AdsLoader;Lcom/google/android/exoplayer2/ui/AdViewProvider;)V
    .registers 9
    .param p1, "contentMediaSource"    # Lcom/google/android/exoplayer2/source/MediaSource;
    .param p2, "adTagDataSpec"    # Lcom/google/android/exoplayer2/upstream/DataSpec;
    .param p3, "adsId"    # Ljava/lang/Object;
    .param p4, "adMediaSourceFactory"    # Lcom/google/android/exoplayer2/source/MediaSource$Factory;
    .param p5, "adsLoader"    # Lcom/google/android/exoplayer2/source/ads/AdsLoader;
    .param p6, "adViewProvider"    # Lcom/google/android/exoplayer2/ui/AdViewProvider;

    .line 173
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/CompositeMediaSource;-><init>()V

    .line 174
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->contentMediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    .line 175
    nop

    .line 176
    invoke-interface {p1}, Lcom/google/android/exoplayer2/source/MediaSource;->getMediaItem()Lcom/google/android/exoplayer2/MediaItem;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/exoplayer2/MediaItem;->localConfiguration:Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;

    iget-object v0, v0, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;->drmConfiguration:Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->contentDrmConfiguration:Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;

    .line 177
    iput-object p4, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adMediaSourceFactory:Lcom/google/android/exoplayer2/source/MediaSource$Factory;

    .line 178
    iput-object p5, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adsLoader:Lcom/google/android/exoplayer2/source/ads/AdsLoader;

    .line 179
    iput-object p6, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adViewProvider:Lcom/google/android/exoplayer2/ui/AdViewProvider;

    .line 180
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adTagDataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 181
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adsId:Ljava/lang/Object;

    .line 182
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->mainHandler:Landroid/os/Handler;

    .line 183
    new-instance v0, Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/Timeline$Period;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    .line 184
    const/4 v0, 0x0

    new-array v0, v0, [[Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adMediaSourceHolders:[[Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;

    .line 185
    invoke-interface {p4}, Lcom/google/android/exoplayer2/source/MediaSource$Factory;->getSupportedTypes()[I

    move-result-object v0

    invoke-interface {p5, v0}, Lcom/google/android/exoplayer2/source/ads/AdsLoader;->setSupportedContentTypes([I)V

    .line 186
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;
    .registers 3
    .param p0, "x0"    # Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;
    .param p1, "x1"    # Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 67
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->createEventDispatcher(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;)V
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;
    .param p1, "x1"    # Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    .line 67
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->onAdPlaybackState(Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;

    .line 67
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->mainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;
    .registers 3
    .param p0, "x0"    # Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;
    .param p1, "x1"    # Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 67
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->createEventDispatcher(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;)Lcom/google/android/exoplayer2/source/ads/AdsLoader;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;

    .line 67
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adsLoader:Lcom/google/android/exoplayer2/source/ads/AdsLoader;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;Ljava/lang/Object;Lcom/google/android/exoplayer2/source/MediaSource;)V
    .registers 3
    .param p0, "x0"    # Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;
    .param p1, "x1"    # Ljava/lang/Object;
    .param p2, "x2"    # Lcom/google/android/exoplayer2/source/MediaSource;

    .line 67
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->prepareChildSource(Ljava/lang/Object;Lcom/google/android/exoplayer2/source/MediaSource;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;)Lcom/google/android/exoplayer2/Timeline$Period;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;

    .line 67
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;Ljava/lang/Object;)V
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;
    .param p1, "x1"    # Ljava/lang/Object;

    .line 67
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->releaseChildSource(Ljava/lang/Object;)V

    return-void
.end method

.method private getAdDurationsUs()[[J
    .registers 8

    .line 351
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adMediaSourceHolders:[[Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;

    array-length v0, v0

    new-array v0, v0, [[J

    .line 352
    .local v0, "adDurationsUs":[[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adMediaSourceHolders:[[Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;

    array-length v3, v2

    if-ge v1, v3, :cond_32

    .line 353
    aget-object v2, v2, v1

    array-length v2, v2

    new-array v2, v2, [J

    aput-object v2, v0, v1

    .line 354
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_13
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adMediaSourceHolders:[[Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;

    aget-object v3, v3, v1

    array-length v4, v3

    if-ge v2, v4, :cond_2f

    .line 355
    aget-object v3, v3, v2

    .line 356
    .local v3, "holder":Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;
    aget-object v4, v0, v1

    if-nez v3, :cond_26

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_2a

    :cond_26
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;->getDurationUs()J

    move-result-wide v5

    :goto_2a
    aput-wide v5, v4, v2

    .line 354
    .end local v3    # "holder":Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 352
    .end local v2    # "j":I
    :cond_2f
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 359
    .end local v1    # "i":I
    :cond_32
    return-object v0
.end method

.method private maybeUpdateAdMediaSources()V
    .registers 10

    .line 308
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    .line 309
    .local v0, "adPlaybackState":Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;
    if-nez v0, :cond_5

    .line 310
    return-void

    .line 312
    :cond_5
    const/4 v1, 0x0

    .local v1, "adGroupIndex":I
    :goto_6
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adMediaSourceHolders:[[Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;

    array-length v2, v2

    if-ge v1, v2, :cond_4f

    .line 313
    const/4 v2, 0x0

    .line 314
    .local v2, "adIndexInAdGroup":I
    :goto_c
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adMediaSourceHolders:[[Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;

    aget-object v3, v3, v1

    array-length v4, v3

    if-ge v2, v4, :cond_4c

    .line 317
    aget-object v3, v3, v2

    .line 319
    .local v3, "adMediaSourceHolder":Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->getAdGroup(I)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    move-result-object v4

    .line 320
    .local v4, "adGroup":Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;
    if-eqz v3, :cond_49

    .line 321
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;->hasMediaSource()Z

    move-result v5

    if-nez v5, :cond_49

    iget-object v5, v4, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->uris:[Landroid/net/Uri;

    array-length v5, v5

    if-ge v2, v5, :cond_49

    .line 323
    iget-object v5, v4, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->uris:[Landroid/net/Uri;

    aget-object v5, v5, v2

    .line 324
    .local v5, "adUri":Landroid/net/Uri;
    if-eqz v5, :cond_49

    .line 325
    new-instance v6, Lcom/google/android/exoplayer2/MediaItem$Builder;

    invoke-direct {v6}, Lcom/google/android/exoplayer2/MediaItem$Builder;-><init>()V

    invoke-virtual {v6, v5}, Lcom/google/android/exoplayer2/MediaItem$Builder;->setUri(Landroid/net/Uri;)Lcom/google/android/exoplayer2/MediaItem$Builder;

    move-result-object v6

    .line 327
    .local v6, "adMediaItem":Lcom/google/android/exoplayer2/MediaItem$Builder;
    iget-object v7, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->contentDrmConfiguration:Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;

    if-eqz v7, :cond_3c

    .line 328
    invoke-virtual {v6, v7}, Lcom/google/android/exoplayer2/MediaItem$Builder;->setDrmConfiguration(Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;)Lcom/google/android/exoplayer2/MediaItem$Builder;

    .line 330
    :cond_3c
    iget-object v7, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adMediaSourceFactory:Lcom/google/android/exoplayer2/source/MediaSource$Factory;

    invoke-virtual {v6}, Lcom/google/android/exoplayer2/MediaItem$Builder;->build()Lcom/google/android/exoplayer2/MediaItem;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/google/android/exoplayer2/source/MediaSource$Factory;->createMediaSource(Lcom/google/android/exoplayer2/MediaItem;)Lcom/google/android/exoplayer2/source/MediaSource;

    move-result-object v7

    .line 331
    .local v7, "adMediaSource":Lcom/google/android/exoplayer2/source/MediaSource;
    invoke-virtual {v3, v7, v5}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;->initializeWithMediaSource(Lcom/google/android/exoplayer2/source/MediaSource;Landroid/net/Uri;)V

    .line 315
    .end local v3    # "adMediaSourceHolder":Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;
    .end local v4    # "adGroup":Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;
    .end local v5    # "adUri":Landroid/net/Uri;
    .end local v6    # "adMediaItem":Lcom/google/android/exoplayer2/MediaItem$Builder;
    .end local v7    # "adMediaSource":Lcom/google/android/exoplayer2/source/MediaSource;
    :cond_49
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 312
    .end local v2    # "adIndexInAdGroup":I
    :cond_4c
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 336
    .end local v1    # "adGroupIndex":I
    :cond_4f
    return-void
.end method

.method private maybeUpdateSourceInfo()V
    .registers 4

    .line 339
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->contentTimeline:Lcom/google/android/exoplayer2/Timeline;

    .line 340
    .local v0, "contentTimeline":Lcom/google/android/exoplayer2/Timeline;
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    if-eqz v1, :cond_26

    if-eqz v0, :cond_26

    .line 341
    iget v1, v1, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroupCount:I

    if-nez v1, :cond_10

    .line 342
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->refreshSourceInfo(Lcom/google/android/exoplayer2/Timeline;)V

    goto :goto_26

    .line 344
    :cond_10
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->getAdDurationsUs()[[J

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->withAdDurationsUs([[J)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    .line 345
    new-instance v1, Lcom/google/android/exoplayer2/source/ads/SinglePeriodAdTimeline;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    invoke-direct {v1, v0, v2}, Lcom/google/android/exoplayer2/source/ads/SinglePeriodAdTimeline;-><init>(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;)V

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->refreshSourceInfo(Lcom/google/android/exoplayer2/Timeline;)V

    .line 348
    :cond_26
    :goto_26
    return-void
.end method

.method private onAdPlaybackState(Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;)V
    .registers 5
    .param p1, "adPlaybackState"    # Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    .line 292
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    const/4 v1, 0x0

    if-nez v0, :cond_11

    .line 293
    iget v0, p1, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroupCount:I

    new-array v0, v0, [[Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adMediaSourceHolders:[[Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;

    .line 294
    new-array v1, v1, [Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1d

    .line 296
    :cond_11
    iget v0, p1, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroupCount:I

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    iget v2, v2, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroupCount:I

    if-ne v0, v2, :cond_1a

    const/4 v1, 0x1

    :cond_1a
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 298
    :goto_1d
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    .line 299
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->maybeUpdateAdMediaSources()V

    .line 300
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->maybeUpdateSourceInfo()V

    .line 301
    return-void
.end method


# virtual methods
.method public createPeriod(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/upstream/Allocator;J)Lcom/google/android/exoplayer2/source/MediaPeriod;
    .registers 11
    .param p1, "id"    # Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .param p2, "allocator"    # Lcom/google/android/exoplayer2/upstream/Allocator;
    .param p3, "startPositionUs"    # J

    .line 211
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    .line 212
    .local v0, "adPlaybackState":Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;
    iget v1, v0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroupCount:I

    if-lez v1, :cond_44

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v1

    if-eqz v1, :cond_44

    .line 213
    iget v1, p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    .line 214
    .local v1, "adGroupIndex":I
    iget v2, p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    .line 215
    .local v2, "adIndexInAdGroup":I
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adMediaSourceHolders:[[Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;

    aget-object v4, v3, v1

    array-length v5, v4

    if-gt v5, v2, :cond_28

    .line 216
    add-int/lit8 v5, v2, 0x1

    .line 217
    .local v5, "adCount":I
    nop

    .line 218
    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;

    aput-object v4, v3, v1

    .line 221
    .end local v5    # "adCount":I
    :cond_28
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adMediaSourceHolders:[[Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;

    aget-object v3, v3, v1

    aget-object v3, v3, v2

    .line 223
    .local v3, "adMediaSourceHolder":Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;
    if-nez v3, :cond_3f

    .line 224
    new-instance v4, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;

    invoke-direct {v4, p0, p1}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;-><init>(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V

    move-object v3, v4

    .line 225
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adMediaSourceHolders:[[Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;

    aget-object v4, v4, v1

    aput-object v3, v4, v2

    .line 226
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->maybeUpdateAdMediaSources()V

    .line 228
    :cond_3f
    invoke-virtual {v3, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;->createMediaPeriod(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/upstream/Allocator;J)Lcom/google/android/exoplayer2/source/MediaPeriod;

    move-result-object v4

    return-object v4

    .line 230
    .end local v1    # "adGroupIndex":I
    .end local v2    # "adIndexInAdGroup":I
    .end local v3    # "adMediaSourceHolder":Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;
    :cond_44
    new-instance v1, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;-><init>(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/upstream/Allocator;J)V

    .line 231
    .local v1, "mediaPeriod":Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->contentMediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;->setMediaSource(Lcom/google/android/exoplayer2/source/MediaSource;)V

    .line 232
    invoke-virtual {v1, p1}, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;->createPeriod(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V

    .line 233
    return-object v1
.end method

.method public getMediaItem()Lcom/google/android/exoplayer2/MediaItem;
    .registers 2

    .line 190
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->contentMediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/MediaSource;->getMediaItem()Lcom/google/android/exoplayer2/MediaItem;

    move-result-object v0

    return-object v0
.end method

.method protected getMediaPeriodIdForChildMediaPeriodId(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .registers 4
    .param p1, "childSourceId"    # Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .param p2, "mediaPeriodId"    # Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 286
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v0

    if-eqz v0, :cond_8

    move-object v0, p1

    goto :goto_9

    :cond_8
    move-object v0, p2

    :goto_9
    return-object v0
.end method

.method protected bridge synthetic getMediaPeriodIdForChildMediaPeriodId(Ljava/lang/Object;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .registers 3

    .line 66
    check-cast p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->getMediaPeriodIdForChildMediaPeriodId(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$prepareSourceInternal$0$com-google-android-exoplayer2-source-ads-AdsMediaSource(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener;)V
    .registers 8
    .param p1, "componentListener"    # Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener;

    .line 201
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adsLoader:Lcom/google/android/exoplayer2/source/ads/AdsLoader;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adTagDataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adsId:Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adViewProvider:Lcom/google/android/exoplayer2/ui/AdViewProvider;

    move-object v1, p0

    move-object v5, p1

    invoke-interface/range {v0 .. v5}, Lcom/google/android/exoplayer2/source/ads/AdsLoader;->start(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;Lcom/google/android/exoplayer2/upstream/DataSpec;Ljava/lang/Object;Lcom/google/android/exoplayer2/ui/AdViewProvider;Lcom/google/android/exoplayer2/source/ads/AdsLoader$EventListener;)V

    return-void
.end method

.method synthetic lambda$releaseSourceInternal$1$com-google-android-exoplayer2-source-ads-AdsMediaSource(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener;)V
    .registers 3
    .param p1, "componentListener"    # Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener;

    .line 263
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adsLoader:Lcom/google/android/exoplayer2/source/ads/AdsLoader;

    invoke-interface {v0, p0, p1}, Lcom/google/android/exoplayer2/source/ads/AdsLoader;->stop(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;Lcom/google/android/exoplayer2/source/ads/AdsLoader$EventListener;)V

    return-void
.end method

.method protected onChildSourceInfoRefreshed(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/source/MediaSource;Lcom/google/android/exoplayer2/Timeline;)V
    .registers 7
    .param p1, "childSourceId"    # Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .param p2, "mediaSource"    # Lcom/google/android/exoplayer2/source/MediaSource;
    .param p3, "newTimeline"    # Lcom/google/android/exoplayer2/Timeline;

    .line 269
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 270
    iget v0, p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    .line 271
    .local v0, "adGroupIndex":I
    iget v1, p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    .line 272
    .local v1, "adIndexInAdGroup":I
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adMediaSourceHolders:[[Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;

    aget-object v2, v2, v0

    aget-object v2, v2, v1

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;

    .line 273
    invoke-virtual {v2, p3}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;->handleSourceInfoRefresh(Lcom/google/android/exoplayer2/Timeline;)V

    .line 274
    .end local v0    # "adGroupIndex":I
    .end local v1    # "adIndexInAdGroup":I
    goto :goto_28

    .line 275
    :cond_1a
    invoke-virtual {p3}, Lcom/google/android/exoplayer2/Timeline;->getPeriodCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_22

    goto :goto_23

    :cond_22
    const/4 v1, 0x0

    :goto_23
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 276
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->contentTimeline:Lcom/google/android/exoplayer2/Timeline;

    .line 278
    :goto_28
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->maybeUpdateSourceInfo()V

    .line 279
    return-void
.end method

.method protected bridge synthetic onChildSourceInfoRefreshed(Ljava/lang/Object;Lcom/google/android/exoplayer2/source/MediaSource;Lcom/google/android/exoplayer2/Timeline;)V
    .registers 4

    .line 66
    check-cast p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->onChildSourceInfoRefreshed(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/source/MediaSource;Lcom/google/android/exoplayer2/Timeline;)V

    return-void
.end method

.method protected prepareSourceInternal(Lcom/google/android/exoplayer2/upstream/TransferListener;)V
    .registers 5
    .param p1, "mediaTransferListener"    # Lcom/google/android/exoplayer2/upstream/TransferListener;

    .line 195
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/source/CompositeMediaSource;->prepareSourceInternal(Lcom/google/android/exoplayer2/upstream/TransferListener;)V

    .line 196
    new-instance v0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener;-><init>(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;)V

    .line 197
    .local v0, "componentListener":Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener;
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->componentListener:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener;

    .line 198
    sget-object v1, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->CHILD_SOURCE_MEDIA_PERIOD_ID:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->contentMediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    invoke-virtual {p0, v1, v2}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->prepareChildSource(Ljava/lang/Object;Lcom/google/android/exoplayer2/source/MediaSource;)V

    .line 199
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->mainHandler:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v0}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 207
    return-void
.end method

.method public releasePeriod(Lcom/google/android/exoplayer2/source/MediaPeriod;)V
    .registers 8
    .param p1, "mediaPeriod"    # Lcom/google/android/exoplayer2/source/MediaPeriod;

    .line 239
    move-object v0, p1

    check-cast v0, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;

    .line 240
    .local v0, "maskingMediaPeriod":Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 241
    .local v1, "id":Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v2

    if-eqz v2, :cond_33

    .line 242
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adMediaSourceHolders:[[Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;

    iget v3, v1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    aget-object v2, v2, v3

    iget v3, v1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    aget-object v2, v2, v3

    .line 243
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;

    .line 244
    .local v2, "adMediaSourceHolder":Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;
    invoke-virtual {v2, v0}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;->releaseMediaPeriod(Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;)V

    .line 245
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;->isInactive()Z

    move-result v3

    if-eqz v3, :cond_32

    .line 246
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;->release()V

    .line 247
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adMediaSourceHolders:[[Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;

    iget v4, v1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    aget-object v3, v3, v4

    iget v4, v1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    const/4 v5, 0x0

    aput-object v5, v3, v4

    .line 249
    .end local v2    # "adMediaSourceHolder":Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;
    :cond_32
    goto :goto_36

    .line 250
    :cond_33
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;->releasePeriod()V

    .line 252
    :goto_36
    return-void
.end method

.method protected releaseSourceInternal()V
    .registers 4

    .line 256
    invoke-super {p0}, Lcom/google/android/exoplayer2/source/CompositeMediaSource;->releaseSourceInternal()V

    .line 257
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->componentListener:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener;

    .line 258
    .local v0, "componentListener":Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->componentListener:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener;

    .line 259
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener;->stop()V

    .line 260
    iput-object v1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->contentTimeline:Lcom/google/android/exoplayer2/Timeline;

    .line 261
    iput-object v1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    .line 262
    const/4 v1, 0x0

    new-array v1, v1, [[Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;

    iput-object v1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adMediaSourceHolders:[[Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;

    .line 263
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->mainHandler:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 264
    return-void
.end method
