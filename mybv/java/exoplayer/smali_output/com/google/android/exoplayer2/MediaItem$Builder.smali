.class public final Lcom/google/android/exoplayer2/MediaItem$Builder;
.super Ljava/lang/Object;
.source "MediaItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/MediaItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private adsConfiguration:Lcom/google/android/exoplayer2/MediaItem$AdsConfiguration;

.field private clippingConfiguration:Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;

.field private customCacheKey:Ljava/lang/String;

.field private drmConfiguration:Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;

.field private liveConfiguration:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;

.field private mediaId:Ljava/lang/String;

.field private mediaMetadata:Lcom/google/android/exoplayer2/MediaMetadata;

.field private mimeType:Ljava/lang/String;

.field private requestMetadata:Lcom/google/android/exoplayer2/MediaItem$RequestMetadata;

.field private streamKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/offline/StreamKey;",
            ">;"
        }
    .end annotation
.end field

.field private subtitleConfigurations:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private tag:Ljava/lang/Object;

.field private uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    new-instance v0, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->clippingConfiguration:Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;

    .line 98
    new-instance v0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;-><init>(Lcom/google/android/exoplayer2/MediaItem$1;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->drmConfiguration:Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;

    .line 99
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->streamKeys:Ljava/util/List;

    .line 100
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->subtitleConfigurations:Lcom/google/common/collect/ImmutableList;

    .line 101
    new-instance v0, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->liveConfiguration:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;

    .line 102
    sget-object v0, Lcom/google/android/exoplayer2/MediaItem$RequestMetadata;->EMPTY:Lcom/google/android/exoplayer2/MediaItem$RequestMetadata;

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->requestMetadata:Lcom/google/android/exoplayer2/MediaItem$RequestMetadata;

    .line 103
    return-void
.end method

.method private constructor <init>(Lcom/google/android/exoplayer2/MediaItem;)V
    .registers 5
    .param p1, "mediaItem"    # Lcom/google/android/exoplayer2/MediaItem;

    .line 106
    invoke-direct {p0}, Lcom/google/android/exoplayer2/MediaItem$Builder;-><init>()V

    .line 107
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaItem;->clippingConfiguration:Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;->buildUpon()Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->clippingConfiguration:Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;

    .line 108
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaItem;->mediaId:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->mediaId:Ljava/lang/String;

    .line 109
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaItem;->mediaMetadata:Lcom/google/android/exoplayer2/MediaMetadata;

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->mediaMetadata:Lcom/google/android/exoplayer2/MediaMetadata;

    .line 110
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaItem;->liveConfiguration:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->buildUpon()Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->liveConfiguration:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;

    .line 111
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaItem;->requestMetadata:Lcom/google/android/exoplayer2/MediaItem$RequestMetadata;

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->requestMetadata:Lcom/google/android/exoplayer2/MediaItem$RequestMetadata;

    .line 112
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaItem;->localConfiguration:Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;

    .line 113
    .local v0, "localConfiguration":Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;
    if-eqz v0, :cond_53

    .line 114
    iget-object v1, v0, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;->customCacheKey:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->customCacheKey:Ljava/lang/String;

    .line 115
    iget-object v1, v0, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;->mimeType:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->mimeType:Ljava/lang/String;

    .line 116
    iget-object v1, v0, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;->uri:Landroid/net/Uri;

    iput-object v1, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->uri:Landroid/net/Uri;

    .line 117
    iget-object v1, v0, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;->streamKeys:Ljava/util/List;

    iput-object v1, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->streamKeys:Ljava/util/List;

    .line 118
    iget-object v1, v0, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;->subtitleConfigurations:Lcom/google/common/collect/ImmutableList;

    iput-object v1, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->subtitleConfigurations:Lcom/google/common/collect/ImmutableList;

    .line 119
    iget-object v1, v0, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;->tag:Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->tag:Ljava/lang/Object;

    .line 120
    nop

    .line 121
    iget-object v1, v0, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;->drmConfiguration:Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;

    if-eqz v1, :cond_47

    .line 122
    iget-object v1, v0, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;->drmConfiguration:Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->buildUpon()Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;

    move-result-object v1

    goto :goto_4d

    .line 123
    :cond_47
    new-instance v1, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;-><init>(Lcom/google/android/exoplayer2/MediaItem$1;)V

    :goto_4d
    iput-object v1, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->drmConfiguration:Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;

    .line 124
    iget-object v1, v0, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;->adsConfiguration:Lcom/google/android/exoplayer2/MediaItem$AdsConfiguration;

    iput-object v1, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->adsConfiguration:Lcom/google/android/exoplayer2/MediaItem$AdsConfiguration;

    .line 126
    :cond_53
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/MediaItem;Lcom/google/android/exoplayer2/MediaItem$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/google/android/exoplayer2/MediaItem;
    .param p2, "x1"    # Lcom/google/android/exoplayer2/MediaItem$1;

    .line 72
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/MediaItem$Builder;-><init>(Lcom/google/android/exoplayer2/MediaItem;)V

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/exoplayer2/MediaItem;
    .registers 14

    .line 557
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->drmConfiguration:Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;

    # getter for: Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->licenseUri:Landroid/net/Uri;
    invoke-static {v0}, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->access$200(Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->drmConfiguration:Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;

    # getter for: Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->scheme:Ljava/util/UUID;
    invoke-static {v0}, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->access$300(Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;)Ljava/util/UUID;

    move-result-object v0

    if-eqz v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 558
    const/4 v0, 0x0

    .line 559
    .local v0, "localConfiguration":Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;
    iget-object v11, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->uri:Landroid/net/Uri;

    .line 560
    .local v11, "uri":Landroid/net/Uri;
    if-eqz v11, :cond_42

    .line 561
    new-instance v12, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;

    iget-object v3, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->mimeType:Ljava/lang/String;

    .line 565
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->drmConfiguration:Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;

    # getter for: Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->scheme:Ljava/util/UUID;
    invoke-static {v1}, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->access$300(Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;)Ljava/util/UUID;

    move-result-object v1

    if-eqz v1, :cond_2f

    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->drmConfiguration:Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->build()Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;

    move-result-object v1

    goto :goto_30

    :cond_2f
    const/4 v1, 0x0

    :goto_30
    move-object v4, v1

    iget-object v5, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->adsConfiguration:Lcom/google/android/exoplayer2/MediaItem$AdsConfiguration;

    iget-object v6, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->streamKeys:Ljava/util/List;

    iget-object v7, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->customCacheKey:Ljava/lang/String;

    iget-object v8, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->subtitleConfigurations:Lcom/google/common/collect/ImmutableList;

    iget-object v9, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->tag:Ljava/lang/Object;

    const/4 v10, 0x0

    move-object v1, v12

    move-object v2, v11

    invoke-direct/range {v1 .. v10}, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;-><init>(Landroid/net/Uri;Ljava/lang/String;Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;Lcom/google/android/exoplayer2/MediaItem$AdsConfiguration;Ljava/util/List;Ljava/lang/String;Lcom/google/common/collect/ImmutableList;Ljava/lang/Object;Lcom/google/android/exoplayer2/MediaItem$1;)V

    move-object v0, v12

    .line 572
    :cond_42
    new-instance v9, Lcom/google/android/exoplayer2/MediaItem;

    .line 573
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->mediaId:Ljava/lang/String;

    if-eqz v1, :cond_49

    goto :goto_4b

    :cond_49
    const-string v1, ""

    :goto_4b
    move-object v2, v1

    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->clippingConfiguration:Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;

    .line 574
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;->buildClippingProperties()Lcom/google/android/exoplayer2/MediaItem$ClippingProperties;

    move-result-object v3

    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->liveConfiguration:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;

    .line 576
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;->build()Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    move-result-object v5

    .line 577
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->mediaMetadata:Lcom/google/android/exoplayer2/MediaMetadata;

    if-eqz v1, :cond_5d

    goto :goto_5f

    :cond_5d
    sget-object v1, Lcom/google/android/exoplayer2/MediaMetadata;->EMPTY:Lcom/google/android/exoplayer2/MediaMetadata;

    :goto_5f
    move-object v6, v1

    iget-object v7, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->requestMetadata:Lcom/google/android/exoplayer2/MediaItem$RequestMetadata;

    const/4 v8, 0x0

    move-object v1, v9

    move-object v4, v0

    invoke-direct/range {v1 .. v8}, Lcom/google/android/exoplayer2/MediaItem;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/MediaItem$ClippingProperties;Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;Lcom/google/android/exoplayer2/MediaMetadata;Lcom/google/android/exoplayer2/MediaItem$RequestMetadata;Lcom/google/android/exoplayer2/MediaItem$1;)V

    .line 572
    return-object v9
.end method

.method public setAdTagUri(Landroid/net/Uri;)Lcom/google/android/exoplayer2/MediaItem$Builder;
    .registers 3
    .param p1, "adTagUri"    # Landroid/net/Uri;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 449
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/exoplayer2/MediaItem$Builder;->setAdTagUri(Landroid/net/Uri;Ljava/lang/Object;)Lcom/google/android/exoplayer2/MediaItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setAdTagUri(Landroid/net/Uri;Ljava/lang/Object;)Lcom/google/android/exoplayer2/MediaItem$Builder;
    .registers 4
    .param p1, "adTagUri"    # Landroid/net/Uri;
    .param p2, "adsId"    # Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 460
    nop

    .line 461
    if-eqz p1, :cond_11

    new-instance v0, Lcom/google/android/exoplayer2/MediaItem$AdsConfiguration$Builder;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/MediaItem$AdsConfiguration$Builder;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v0, p2}, Lcom/google/android/exoplayer2/MediaItem$AdsConfiguration$Builder;->setAdsId(Ljava/lang/Object;)Lcom/google/android/exoplayer2/MediaItem$AdsConfiguration$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaItem$AdsConfiguration$Builder;->build()Lcom/google/android/exoplayer2/MediaItem$AdsConfiguration;

    move-result-object v0

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->adsConfiguration:Lcom/google/android/exoplayer2/MediaItem$AdsConfiguration;

    .line 462
    return-object p0
.end method

.method public setAdTagUri(Ljava/lang/String;)Lcom/google/android/exoplayer2/MediaItem$Builder;
    .registers 3
    .param p1, "adTagUri"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 439
    if-eqz p1, :cond_7

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/MediaItem$Builder;->setAdTagUri(Landroid/net/Uri;)Lcom/google/android/exoplayer2/MediaItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setAdsConfiguration(Lcom/google/android/exoplayer2/MediaItem$AdsConfiguration;)Lcom/google/android/exoplayer2/MediaItem$Builder;
    .registers 2
    .param p1, "adsConfiguration"    # Lcom/google/android/exoplayer2/MediaItem$AdsConfiguration;

    .line 427
    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->adsConfiguration:Lcom/google/android/exoplayer2/MediaItem$AdsConfiguration;

    .line 428
    return-object p0
.end method

.method public setClipEndPositionMs(J)Lcom/google/android/exoplayer2/MediaItem$Builder;
    .registers 4
    .param p1, "endPositionMs"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 204
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->clippingConfiguration:Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;->setEndPositionMs(J)Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;

    .line 205
    return-object p0
.end method

.method public setClipRelativeToDefaultPosition(Z)Lcom/google/android/exoplayer2/MediaItem$Builder;
    .registers 3
    .param p1, "relativeToDefaultPosition"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 226
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->clippingConfiguration:Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;->setRelativeToDefaultPosition(Z)Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;

    .line 227
    return-object p0
.end method

.method public setClipRelativeToLiveWindow(Z)Lcom/google/android/exoplayer2/MediaItem$Builder;
    .registers 3
    .param p1, "relativeToLiveWindow"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 215
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->clippingConfiguration:Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;->setRelativeToLiveWindow(Z)Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;

    .line 216
    return-object p0
.end method

.method public setClipStartPositionMs(J)Lcom/google/android/exoplayer2/MediaItem$Builder;
    .registers 4
    .param p1, "startPositionMs"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 193
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->clippingConfiguration:Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;->setStartPositionMs(J)Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;

    .line 194
    return-object p0
.end method

.method public setClipStartsAtKeyFrame(Z)Lcom/google/android/exoplayer2/MediaItem$Builder;
    .registers 3
    .param p1, "startsAtKeyFrame"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 237
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->clippingConfiguration:Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;->setStartsAtKeyFrame(Z)Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;

    .line 238
    return-object p0
.end method

.method public setClippingConfiguration(Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;)Lcom/google/android/exoplayer2/MediaItem$Builder;
    .registers 3
    .param p1, "clippingConfiguration"    # Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;

    .line 182
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;->buildUpon()Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->clippingConfiguration:Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;

    .line 183
    return-object p0
.end method

.method public setCustomCacheKey(Ljava/lang/String;)Lcom/google/android/exoplayer2/MediaItem$Builder;
    .registers 2
    .param p1, "customCacheKey"    # Ljava/lang/String;

    .line 392
    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->customCacheKey:Ljava/lang/String;

    .line 393
    return-object p0
.end method

.method public setDrmConfiguration(Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;)Lcom/google/android/exoplayer2/MediaItem$Builder;
    .registers 4
    .param p1, "drmConfiguration"    # Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;

    .line 244
    nop

    .line 245
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->buildUpon()Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;

    move-result-object v0

    goto :goto_e

    :cond_8
    new-instance v0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;-><init>(Lcom/google/android/exoplayer2/MediaItem$1;)V

    :goto_e
    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->drmConfiguration:Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;

    .line 246
    return-object p0
.end method

.method public setDrmForceDefaultLicenseUri(Z)Lcom/google/android/exoplayer2/MediaItem$Builder;
    .registers 3
    .param p1, "forceDefaultLicenseUri"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 315
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->drmConfiguration:Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->setForceDefaultLicenseUri(Z)Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;

    .line 316
    return-object p0
.end method

.method public setDrmKeySetId([B)Lcom/google/android/exoplayer2/MediaItem$Builder;
    .registers 3
    .param p1, "keySetId"    # [B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 363
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->drmConfiguration:Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->setKeySetId([B)Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;

    .line 364
    return-object p0
.end method

.method public setDrmLicenseRequestHeaders(Ljava/util/Map;)Lcom/google/android/exoplayer2/MediaItem$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/exoplayer2/MediaItem$Builder;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 281
    .local p1, "licenseRequestHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->drmConfiguration:Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;

    .line 282
    if-eqz p1, :cond_6

    move-object v1, p1

    goto :goto_a

    :cond_6
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->of()Lcom/google/common/collect/ImmutableMap;

    move-result-object v1

    .line 281
    :goto_a
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->setLicenseRequestHeaders(Ljava/util/Map;)Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;

    .line 283
    return-object p0
.end method

.method public setDrmLicenseUri(Landroid/net/Uri;)Lcom/google/android/exoplayer2/MediaItem$Builder;
    .registers 3
    .param p1, "licenseUri"    # Landroid/net/Uri;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 256
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->drmConfiguration:Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->setLicenseUri(Landroid/net/Uri;)Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;

    .line 257
    return-object p0
.end method

.method public setDrmLicenseUri(Ljava/lang/String;)Lcom/google/android/exoplayer2/MediaItem$Builder;
    .registers 3
    .param p1, "licenseUri"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 267
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->drmConfiguration:Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->setLicenseUri(Ljava/lang/String;)Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;

    .line 268
    return-object p0
.end method

.method public setDrmMultiSession(Z)Lcom/google/android/exoplayer2/MediaItem$Builder;
    .registers 3
    .param p1, "multiSession"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 304
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->drmConfiguration:Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->setMultiSession(Z)Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;

    .line 305
    return-object p0
.end method

.method public setDrmPlayClearContentWithoutKey(Z)Lcom/google/android/exoplayer2/MediaItem$Builder;
    .registers 3
    .param p1, "playClearContentWithoutKey"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 326
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->drmConfiguration:Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->setPlayClearContentWithoutKey(Z)Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;

    .line 327
    return-object p0
.end method

.method public setDrmSessionForClearPeriods(Z)Lcom/google/android/exoplayer2/MediaItem$Builder;
    .registers 3
    .param p1, "sessionForClearPeriods"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 337
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->drmConfiguration:Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->setForceSessionsForAudioAndVideoTracks(Z)Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;

    .line 338
    return-object p0
.end method

.method public setDrmSessionForClearTypes(Ljava/util/List;)Lcom/google/android/exoplayer2/MediaItem$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/google/android/exoplayer2/MediaItem$Builder;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 351
    .local p1, "sessionForClearTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->drmConfiguration:Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;

    .line 352
    if-eqz p1, :cond_6

    move-object v1, p1

    goto :goto_a

    :cond_6
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    .line 351
    :goto_a
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->setForcedSessionTrackTypes(Ljava/util/List;)Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;

    .line 353
    return-object p0
.end method

.method public setDrmUuid(Ljava/util/UUID;)Lcom/google/android/exoplayer2/MediaItem$Builder;
    .registers 3
    .param p1, "uuid"    # Ljava/util/UUID;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 293
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->drmConfiguration:Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;

    # invokes: Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->setNullableScheme(Ljava/util/UUID;)Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;
    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->access$100(Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;Ljava/util/UUID;)Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;

    .line 294
    return-object p0
.end method

.method public setLiveConfiguration(Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;)Lcom/google/android/exoplayer2/MediaItem$Builder;
    .registers 3
    .param p1, "liveConfiguration"    # Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    .line 468
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->buildUpon()Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->liveConfiguration:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;

    .line 469
    return-object p0
.end method

.method public setLiveMaxOffsetMs(J)Lcom/google/android/exoplayer2/MediaItem$Builder;
    .registers 4
    .param p1, "liveMaxOffsetMs"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 501
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->liveConfiguration:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;->setMaxOffsetMs(J)Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;

    .line 502
    return-object p0
.end method

.method public setLiveMaxPlaybackSpeed(F)Lcom/google/android/exoplayer2/MediaItem$Builder;
    .registers 3
    .param p1, "maxPlaybackSpeed"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 523
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->liveConfiguration:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;->setMaxPlaybackSpeed(F)Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;

    .line 524
    return-object p0
.end method

.method public setLiveMinOffsetMs(J)Lcom/google/android/exoplayer2/MediaItem$Builder;
    .registers 4
    .param p1, "liveMinOffsetMs"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 490
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->liveConfiguration:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;->setMinOffsetMs(J)Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;

    .line 491
    return-object p0
.end method

.method public setLiveMinPlaybackSpeed(F)Lcom/google/android/exoplayer2/MediaItem$Builder;
    .registers 3
    .param p1, "minPlaybackSpeed"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 512
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->liveConfiguration:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;->setMinPlaybackSpeed(F)Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;

    .line 513
    return-object p0
.end method

.method public setLiveTargetOffsetMs(J)Lcom/google/android/exoplayer2/MediaItem$Builder;
    .registers 4
    .param p1, "liveTargetOffsetMs"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 479
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->liveConfiguration:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;->setTargetOffsetMs(J)Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;

    .line 480
    return-object p0
.end method

.method public setMediaId(Ljava/lang/String;)Lcom/google/android/exoplayer2/MediaItem$Builder;
    .registers 3
    .param p1, "mediaId"    # Ljava/lang/String;

    .line 135
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->mediaId:Ljava/lang/String;

    .line 136
    return-object p0
.end method

.method public setMediaMetadata(Lcom/google/android/exoplayer2/MediaMetadata;)Lcom/google/android/exoplayer2/MediaItem$Builder;
    .registers 2
    .param p1, "mediaMetadata"    # Lcom/google/android/exoplayer2/MediaMetadata;

    .line 543
    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->mediaMetadata:Lcom/google/android/exoplayer2/MediaMetadata;

    .line 544
    return-object p0
.end method

.method public setMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/MediaItem$Builder;
    .registers 2
    .param p1, "mimeType"    # Ljava/lang/String;

    .line 175
    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->mimeType:Ljava/lang/String;

    .line 176
    return-object p0
.end method

.method public setRequestMetadata(Lcom/google/android/exoplayer2/MediaItem$RequestMetadata;)Lcom/google/android/exoplayer2/MediaItem$Builder;
    .registers 2
    .param p1, "requestMetadata"    # Lcom/google/android/exoplayer2/MediaItem$RequestMetadata;

    .line 550
    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->requestMetadata:Lcom/google/android/exoplayer2/MediaItem$RequestMetadata;

    .line 551
    return-object p0
.end method

.method public setStreamKeys(Ljava/util/List;)Lcom/google/android/exoplayer2/MediaItem$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/offline/StreamKey;",
            ">;)",
            "Lcom/google/android/exoplayer2/MediaItem$Builder;"
        }
    .end annotation

    .line 378
    .local p1, "streamKeys":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/offline/StreamKey;>;"
    nop

    .line 379
    if-eqz p1, :cond_13

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_13

    .line 380
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_17

    .line 381
    :cond_13
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_17
    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->streamKeys:Ljava/util/List;

    .line 382
    return-object p0
.end method

.method public setSubtitleConfigurations(Ljava/util/List;)Lcom/google/android/exoplayer2/MediaItem$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;",
            ">;)",
            "Lcom/google/android/exoplayer2/MediaItem$Builder;"
        }
    .end annotation

    .line 416
    .local p1, "subtitleConfigurations":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;>;"
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->subtitleConfigurations:Lcom/google/common/collect/ImmutableList;

    .line 417
    return-object p0
.end method

.method public setSubtitles(Ljava/util/List;)Lcom/google/android/exoplayer2/MediaItem$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/MediaItem$Subtitle;",
            ">;)",
            "Lcom/google/android/exoplayer2/MediaItem$Builder;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 404
    .local p1, "subtitles":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/MediaItem$Subtitle;>;"
    nop

    .line 405
    if-eqz p1, :cond_8

    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    goto :goto_c

    :cond_8
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    :goto_c
    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->subtitleConfigurations:Lcom/google/common/collect/ImmutableList;

    .line 406
    return-object p0
.end method

.method public setTag(Ljava/lang/Object;)Lcom/google/android/exoplayer2/MediaItem$Builder;
    .registers 2
    .param p1, "tag"    # Ljava/lang/Object;

    .line 536
    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->tag:Ljava/lang/Object;

    .line 537
    return-object p0
.end method

.method public setUri(Landroid/net/Uri;)Lcom/google/android/exoplayer2/MediaItem$Builder;
    .registers 2
    .param p1, "uri"    # Landroid/net/Uri;

    .line 160
    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->uri:Landroid/net/Uri;

    .line 161
    return-object p0
.end method

.method public setUri(Ljava/lang/String;)Lcom/google/android/exoplayer2/MediaItem$Builder;
    .registers 3
    .param p1, "uri"    # Ljava/lang/String;

    .line 148
    if-nez p1, :cond_4

    const/4 v0, 0x0

    goto :goto_8

    :cond_4
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :goto_8
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/MediaItem$Builder;->setUri(Landroid/net/Uri;)Lcom/google/android/exoplayer2/MediaItem$Builder;

    move-result-object v0

    return-object v0
.end method
