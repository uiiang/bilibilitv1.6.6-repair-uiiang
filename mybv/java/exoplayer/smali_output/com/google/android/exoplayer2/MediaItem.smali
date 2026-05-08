.class public final Lcom/google/android/exoplayer2/MediaItem;
.super Ljava/lang/Object;
.source "MediaItem.java"

# interfaces
.implements Lcom/google/android/exoplayer2/Bundleable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/MediaItem$ClippingProperties;,
        Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;,
        Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;,
        Lcom/google/android/exoplayer2/MediaItem$RequestMetadata;,
        Lcom/google/android/exoplayer2/MediaItem$Builder;,
        Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;,
        Lcom/google/android/exoplayer2/MediaItem$Subtitle;,
        Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;,
        Lcom/google/android/exoplayer2/MediaItem$AdsConfiguration;,
        Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CREATOR:Lcom/google/android/exoplayer2/Bundleable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/Bundleable$Creator<",
            "Lcom/google/android/exoplayer2/MediaItem;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_MEDIA_ID:Ljava/lang/String; = ""

.field public static final EMPTY:Lcom/google/android/exoplayer2/MediaItem;

.field private static final FIELD_CLIPPING_PROPERTIES:Ljava/lang/String;

.field private static final FIELD_LIVE_CONFIGURATION:Ljava/lang/String;

.field private static final FIELD_LOCAL_CONFIGURATION:Ljava/lang/String;

.field private static final FIELD_MEDIA_ID:Ljava/lang/String;

.field private static final FIELD_MEDIA_METADATA:Ljava/lang/String;

.field private static final FIELD_REQUEST_METADATA:Ljava/lang/String;


# instance fields
.field public final clippingConfiguration:Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;

.field public final clippingProperties:Lcom/google/android/exoplayer2/MediaItem$ClippingProperties;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final liveConfiguration:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

.field public final localConfiguration:Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;

.field public final mediaId:Ljava/lang/String;

.field public final mediaMetadata:Lcom/google/android/exoplayer2/MediaMetadata;

.field public final playbackProperties:Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final requestMetadata:Lcom/google/android/exoplayer2/MediaItem$RequestMetadata;


# direct methods
.method public static synthetic $r8$lambda$jV0pUJ-BLiCLPyDyDvfHo6BdOSE(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/MediaItem;
    .registers 1

    invoke-static {p0}, Lcom/google/android/exoplayer2/MediaItem;->fromBundle(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/MediaItem;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 2114
    new-instance v0, Lcom/google/android/exoplayer2/MediaItem$Builder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/MediaItem$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaItem$Builder;->build()Lcom/google/android/exoplayer2/MediaItem;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/MediaItem;->EMPTY:Lcom/google/android/exoplayer2/MediaItem;

    .line 2200
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/MediaItem;->FIELD_MEDIA_ID:Ljava/lang/String;

    .line 2201
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/MediaItem;->FIELD_LIVE_CONFIGURATION:Ljava/lang/String;

    .line 2202
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/MediaItem;->FIELD_MEDIA_METADATA:Ljava/lang/String;

    .line 2203
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/MediaItem;->FIELD_CLIPPING_PROPERTIES:Ljava/lang/String;

    .line 2204
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/MediaItem;->FIELD_REQUEST_METADATA:Ljava/lang/String;

    .line 2205
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/MediaItem;->FIELD_LOCAL_CONFIGURATION:Ljava/lang/String;

    .line 2254
    new-instance v0, Lcom/google/android/exoplayer2/MediaItem$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/MediaItem$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/MediaItem;->CREATOR:Lcom/google/android/exoplayer2/Bundleable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/google/android/exoplayer2/MediaItem$ClippingProperties;Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;Lcom/google/android/exoplayer2/MediaMetadata;Lcom/google/android/exoplayer2/MediaItem$RequestMetadata;)V
    .registers 7
    .param p1, "mediaId"    # Ljava/lang/String;
    .param p2, "clippingConfiguration"    # Lcom/google/android/exoplayer2/MediaItem$ClippingProperties;
    .param p3, "localConfiguration"    # Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;
    .param p4, "liveConfiguration"    # Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;
    .param p5, "mediaMetadata"    # Lcom/google/android/exoplayer2/MediaMetadata;
    .param p6, "requestMetadata"    # Lcom/google/android/exoplayer2/MediaItem$RequestMetadata;

    .line 2153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2154
    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaItem;->mediaId:Ljava/lang/String;

    .line 2155
    iput-object p3, p0, Lcom/google/android/exoplayer2/MediaItem;->localConfiguration:Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;

    .line 2156
    iput-object p3, p0, Lcom/google/android/exoplayer2/MediaItem;->playbackProperties:Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;

    .line 2157
    iput-object p4, p0, Lcom/google/android/exoplayer2/MediaItem;->liveConfiguration:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    .line 2158
    iput-object p5, p0, Lcom/google/android/exoplayer2/MediaItem;->mediaMetadata:Lcom/google/android/exoplayer2/MediaMetadata;

    .line 2159
    iput-object p2, p0, Lcom/google/android/exoplayer2/MediaItem;->clippingConfiguration:Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;

    .line 2160
    iput-object p2, p0, Lcom/google/android/exoplayer2/MediaItem;->clippingProperties:Lcom/google/android/exoplayer2/MediaItem$ClippingProperties;

    .line 2161
    iput-object p6, p0, Lcom/google/android/exoplayer2/MediaItem;->requestMetadata:Lcom/google/android/exoplayer2/MediaItem$RequestMetadata;

    .line 2162
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/google/android/exoplayer2/MediaItem$ClippingProperties;Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;Lcom/google/android/exoplayer2/MediaMetadata;Lcom/google/android/exoplayer2/MediaItem$RequestMetadata;Lcom/google/android/exoplayer2/MediaItem$1;)V
    .registers 8
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Lcom/google/android/exoplayer2/MediaItem$ClippingProperties;
    .param p3, "x2"    # Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;
    .param p4, "x3"    # Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;
    .param p5, "x4"    # Lcom/google/android/exoplayer2/MediaMetadata;
    .param p6, "x5"    # Lcom/google/android/exoplayer2/MediaItem$RequestMetadata;
    .param p7, "x6"    # Lcom/google/android/exoplayer2/MediaItem$1;

    .line 49
    invoke-direct/range {p0 .. p6}, Lcom/google/android/exoplayer2/MediaItem;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/MediaItem$ClippingProperties;Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;Lcom/google/android/exoplayer2/MediaMetadata;Lcom/google/android/exoplayer2/MediaItem$RequestMetadata;)V

    return-void
.end method

.method private static fromBundle(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/MediaItem;
    .registers 21
    .param p0, "bundle"    # Landroid/os/Bundle;

    .line 2258
    move-object/from16 v0, p0

    sget-object v1, Lcom/google/android/exoplayer2/MediaItem;->FIELD_MEDIA_ID:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2259
    .local v1, "mediaId":Ljava/lang/String;
    sget-object v2, Lcom/google/android/exoplayer2/MediaItem;->FIELD_LIVE_CONFIGURATION:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v9

    .line 2261
    .local v9, "liveConfigurationBundle":Landroid/os/Bundle;
    if-nez v9, :cond_1c

    .line 2262
    sget-object v2, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->UNSET:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    move-object v10, v2

    .local v2, "liveConfiguration":Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;
    goto :goto_25

    .line 2264
    .end local v2    # "liveConfiguration":Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;
    :cond_1c
    sget-object v2, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->CREATOR:Lcom/google/android/exoplayer2/Bundleable$Creator;

    invoke-interface {v2, v9}, Lcom/google/android/exoplayer2/Bundleable$Creator;->fromBundle(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/Bundleable;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    move-object v10, v2

    .line 2266
    .local v10, "liveConfiguration":Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;
    :goto_25
    sget-object v2, Lcom/google/android/exoplayer2/MediaItem;->FIELD_MEDIA_METADATA:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v11

    .line 2268
    .local v11, "mediaMetadataBundle":Landroid/os/Bundle;
    if-nez v11, :cond_31

    .line 2269
    sget-object v2, Lcom/google/android/exoplayer2/MediaMetadata;->EMPTY:Lcom/google/android/exoplayer2/MediaMetadata;

    move-object v12, v2

    .local v2, "mediaMetadata":Lcom/google/android/exoplayer2/MediaMetadata;
    goto :goto_3a

    .line 2271
    .end local v2    # "mediaMetadata":Lcom/google/android/exoplayer2/MediaMetadata;
    :cond_31
    sget-object v2, Lcom/google/android/exoplayer2/MediaMetadata;->CREATOR:Lcom/google/android/exoplayer2/Bundleable$Creator;

    invoke-interface {v2, v11}, Lcom/google/android/exoplayer2/Bundleable$Creator;->fromBundle(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/Bundleable;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/MediaMetadata;

    move-object v12, v2

    .line 2273
    .local v12, "mediaMetadata":Lcom/google/android/exoplayer2/MediaMetadata;
    :goto_3a
    sget-object v2, Lcom/google/android/exoplayer2/MediaItem;->FIELD_CLIPPING_PROPERTIES:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v13

    .line 2275
    .local v13, "clippingConfigurationBundle":Landroid/os/Bundle;
    if-nez v13, :cond_46

    .line 2276
    sget-object v2, Lcom/google/android/exoplayer2/MediaItem$ClippingProperties;->UNSET:Lcom/google/android/exoplayer2/MediaItem$ClippingProperties;

    move-object v14, v2

    .local v2, "clippingConfiguration":Lcom/google/android/exoplayer2/MediaItem$ClippingProperties;
    goto :goto_4f

    .line 2278
    .end local v2    # "clippingConfiguration":Lcom/google/android/exoplayer2/MediaItem$ClippingProperties;
    :cond_46
    sget-object v2, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;->CREATOR:Lcom/google/android/exoplayer2/Bundleable$Creator;

    invoke-interface {v2, v13}, Lcom/google/android/exoplayer2/Bundleable$Creator;->fromBundle(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/Bundleable;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/MediaItem$ClippingProperties;

    move-object v14, v2

    .line 2280
    .local v14, "clippingConfiguration":Lcom/google/android/exoplayer2/MediaItem$ClippingProperties;
    :goto_4f
    sget-object v2, Lcom/google/android/exoplayer2/MediaItem;->FIELD_REQUEST_METADATA:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v15

    .line 2282
    .local v15, "requestMetadataBundle":Landroid/os/Bundle;
    if-nez v15, :cond_5c

    .line 2283
    sget-object v2, Lcom/google/android/exoplayer2/MediaItem$RequestMetadata;->EMPTY:Lcom/google/android/exoplayer2/MediaItem$RequestMetadata;

    move-object/from16 v16, v2

    .local v2, "requestMetadata":Lcom/google/android/exoplayer2/MediaItem$RequestMetadata;
    goto :goto_66

    .line 2285
    .end local v2    # "requestMetadata":Lcom/google/android/exoplayer2/MediaItem$RequestMetadata;
    :cond_5c
    sget-object v2, Lcom/google/android/exoplayer2/MediaItem$RequestMetadata;->CREATOR:Lcom/google/android/exoplayer2/Bundleable$Creator;

    invoke-interface {v2, v15}, Lcom/google/android/exoplayer2/Bundleable$Creator;->fromBundle(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/Bundleable;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/MediaItem$RequestMetadata;

    move-object/from16 v16, v2

    .line 2287
    .local v16, "requestMetadata":Lcom/google/android/exoplayer2/MediaItem$RequestMetadata;
    :goto_66
    sget-object v2, Lcom/google/android/exoplayer2/MediaItem;->FIELD_LOCAL_CONFIGURATION:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v8

    .line 2289
    .local v8, "localConfigurationBundle":Landroid/os/Bundle;
    if-nez v8, :cond_72

    .line 2290
    const/4 v2, 0x0

    move-object/from16 v17, v2

    .local v2, "localConfiguration":Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;
    goto :goto_7c

    .line 2292
    .end local v2    # "localConfiguration":Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;
    :cond_72
    sget-object v2, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;->CREATOR:Lcom/google/android/exoplayer2/Bundleable$Creator;

    invoke-interface {v2, v8}, Lcom/google/android/exoplayer2/Bundleable$Creator;->fromBundle(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/Bundleable;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;

    move-object/from16 v17, v2

    .line 2294
    .local v17, "localConfiguration":Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;
    :goto_7c
    new-instance v18, Lcom/google/android/exoplayer2/MediaItem;

    move-object/from16 v2, v18

    move-object v3, v1

    move-object v4, v14

    move-object/from16 v5, v17

    move-object v6, v10

    move-object v7, v12

    move-object/from16 v19, v8

    .end local v8    # "localConfigurationBundle":Landroid/os/Bundle;
    .local v19, "localConfigurationBundle":Landroid/os/Bundle;
    move-object/from16 v8, v16

    invoke-direct/range {v2 .. v8}, Lcom/google/android/exoplayer2/MediaItem;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/MediaItem$ClippingProperties;Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;Lcom/google/android/exoplayer2/MediaMetadata;Lcom/google/android/exoplayer2/MediaItem$RequestMetadata;)V

    return-object v18
.end method

.method public static fromUri(Landroid/net/Uri;)Lcom/google/android/exoplayer2/MediaItem;
    .registers 2
    .param p0, "uri"    # Landroid/net/Uri;

    .line 68
    new-instance v0, Lcom/google/android/exoplayer2/MediaItem$Builder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/MediaItem$Builder;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/MediaItem$Builder;->setUri(Landroid/net/Uri;)Lcom/google/android/exoplayer2/MediaItem$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaItem$Builder;->build()Lcom/google/android/exoplayer2/MediaItem;

    move-result-object v0

    return-object v0
.end method

.method public static fromUri(Ljava/lang/String;)Lcom/google/android/exoplayer2/MediaItem;
    .registers 2
    .param p0, "uri"    # Ljava/lang/String;

    .line 58
    new-instance v0, Lcom/google/android/exoplayer2/MediaItem$Builder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/MediaItem$Builder;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/MediaItem$Builder;->setUri(Ljava/lang/String;)Lcom/google/android/exoplayer2/MediaItem$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaItem$Builder;->build()Lcom/google/android/exoplayer2/MediaItem;

    move-result-object v0

    return-object v0
.end method

.method private toBundle(Z)Landroid/os/Bundle;
    .registers 5
    .param p1, "includeLocalConfiguration"    # Z

    .line 2208
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2209
    .local v0, "bundle":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaItem;->mediaId:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 2210
    sget-object v1, Lcom/google/android/exoplayer2/MediaItem;->FIELD_MEDIA_ID:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaItem;->mediaId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2212
    :cond_16
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaItem;->liveConfiguration:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    sget-object v2, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->UNSET:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2b

    .line 2213
    sget-object v1, Lcom/google/android/exoplayer2/MediaItem;->FIELD_LIVE_CONFIGURATION:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaItem;->liveConfiguration:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2215
    :cond_2b
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaItem;->mediaMetadata:Lcom/google/android/exoplayer2/MediaMetadata;

    sget-object v2, Lcom/google/android/exoplayer2/MediaMetadata;->EMPTY:Lcom/google/android/exoplayer2/MediaMetadata;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/MediaMetadata;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_40

    .line 2216
    sget-object v1, Lcom/google/android/exoplayer2/MediaItem;->FIELD_MEDIA_METADATA:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaItem;->mediaMetadata:Lcom/google/android/exoplayer2/MediaMetadata;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/MediaMetadata;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2218
    :cond_40
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaItem;->clippingConfiguration:Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;

    sget-object v2, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;->UNSET:Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_55

    .line 2219
    sget-object v1, Lcom/google/android/exoplayer2/MediaItem;->FIELD_CLIPPING_PROPERTIES:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaItem;->clippingConfiguration:Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2221
    :cond_55
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaItem;->requestMetadata:Lcom/google/android/exoplayer2/MediaItem$RequestMetadata;

    sget-object v2, Lcom/google/android/exoplayer2/MediaItem$RequestMetadata;->EMPTY:Lcom/google/android/exoplayer2/MediaItem$RequestMetadata;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/MediaItem$RequestMetadata;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6a

    .line 2222
    sget-object v1, Lcom/google/android/exoplayer2/MediaItem;->FIELD_REQUEST_METADATA:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaItem;->requestMetadata:Lcom/google/android/exoplayer2/MediaItem$RequestMetadata;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/MediaItem$RequestMetadata;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2224
    :cond_6a
    if-eqz p1, :cond_79

    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaItem;->localConfiguration:Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;

    if-eqz v1, :cond_79

    .line 2225
    sget-object v2, Lcom/google/android/exoplayer2/MediaItem;->FIELD_LOCAL_CONFIGURATION:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2227
    :cond_79
    return-object v0
.end method


# virtual methods
.method public buildUpon()Lcom/google/android/exoplayer2/MediaItem$Builder;
    .registers 3

    .line 2166
    new-instance v0, Lcom/google/android/exoplayer2/MediaItem$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer2/MediaItem$Builder;-><init>(Lcom/google/android/exoplayer2/MediaItem;Lcom/google/android/exoplayer2/MediaItem$1;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 2171
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 2172
    return v0

    .line 2174
    :cond_4
    instance-of v1, p1, Lcom/google/android/exoplayer2/MediaItem;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 2175
    return v2

    .line 2178
    :cond_a
    move-object v1, p1

    check-cast v1, Lcom/google/android/exoplayer2/MediaItem;

    .line 2180
    .local v1, "other":Lcom/google/android/exoplayer2/MediaItem;
    iget-object v3, p0, Lcom/google/android/exoplayer2/MediaItem;->mediaId:Ljava/lang/String;

    iget-object v4, v1, Lcom/google/android/exoplayer2/MediaItem;->mediaId:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4a

    iget-object v3, p0, Lcom/google/android/exoplayer2/MediaItem;->clippingConfiguration:Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;

    iget-object v4, v1, Lcom/google/android/exoplayer2/MediaItem;->clippingConfiguration:Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;

    .line 2181
    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4a

    iget-object v3, p0, Lcom/google/android/exoplayer2/MediaItem;->localConfiguration:Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;

    iget-object v4, v1, Lcom/google/android/exoplayer2/MediaItem;->localConfiguration:Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;

    .line 2182
    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4a

    iget-object v3, p0, Lcom/google/android/exoplayer2/MediaItem;->liveConfiguration:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    iget-object v4, v1, Lcom/google/android/exoplayer2/MediaItem;->liveConfiguration:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    .line 2183
    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4a

    iget-object v3, p0, Lcom/google/android/exoplayer2/MediaItem;->mediaMetadata:Lcom/google/android/exoplayer2/MediaMetadata;

    iget-object v4, v1, Lcom/google/android/exoplayer2/MediaItem;->mediaMetadata:Lcom/google/android/exoplayer2/MediaMetadata;

    .line 2184
    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4a

    iget-object v3, p0, Lcom/google/android/exoplayer2/MediaItem;->requestMetadata:Lcom/google/android/exoplayer2/MediaItem$RequestMetadata;

    iget-object v4, v1, Lcom/google/android/exoplayer2/MediaItem;->requestMetadata:Lcom/google/android/exoplayer2/MediaItem$RequestMetadata;

    .line 2185
    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4a

    goto :goto_4b

    :cond_4a
    const/4 v0, 0x0

    .line 2180
    :goto_4b
    return v0
.end method

.method public hashCode()I
    .registers 4

    .line 2190
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaItem;->mediaId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 2191
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaItem;->localConfiguration:Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;

    if-eqz v2, :cond_11

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;->hashCode()I

    move-result v2

    goto :goto_12

    :cond_11
    const/4 v2, 0x0

    :goto_12
    add-int/2addr v1, v2

    .line 2192
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaItem;->liveConfiguration:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 2193
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaItem;->clippingConfiguration:Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 2194
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaItem;->mediaMetadata:Lcom/google/android/exoplayer2/MediaMetadata;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/MediaMetadata;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 2195
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaItem;->requestMetadata:Lcom/google/android/exoplayer2/MediaItem$RequestMetadata;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/MediaItem$RequestMetadata;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 2196
    .end local v0    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public toBundle()Landroid/os/Bundle;
    .registers 2

    .line 2238
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/MediaItem;->toBundle(Z)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public toBundleIncludeLocalConfiguration()Landroid/os/Bundle;
    .registers 2

    .line 2246
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/MediaItem;->toBundle(Z)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
