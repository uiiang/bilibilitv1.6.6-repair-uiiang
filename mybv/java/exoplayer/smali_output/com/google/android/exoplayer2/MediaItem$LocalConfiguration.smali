.class public final Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;
.super Ljava/lang/Object;
.source "MediaItem.java"

# interfaces
.implements Lcom/google/android/exoplayer2/Bundleable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/MediaItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LocalConfiguration"
.end annotation


# static fields
.field public static final CREATOR:Lcom/google/android/exoplayer2/Bundleable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/Bundleable$Creator<",
            "Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private static final FIELD_ADS_CONFIGURATION:Ljava/lang/String;

.field private static final FIELD_CUSTOM_CACHE_KEY:Ljava/lang/String;

.field private static final FIELD_DRM_CONFIGURATION:Ljava/lang/String;

.field private static final FIELD_MIME_TYPE:Ljava/lang/String;

.field private static final FIELD_STREAM_KEYS:Ljava/lang/String;

.field private static final FIELD_SUBTITLE_CONFIGURATION:Ljava/lang/String;

.field private static final FIELD_URI:Ljava/lang/String;


# instance fields
.field public final adsConfiguration:Lcom/google/android/exoplayer2/MediaItem$AdsConfiguration;

.field public final customCacheKey:Ljava/lang/String;

.field public final drmConfiguration:Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;

.field public final mimeType:Ljava/lang/String;

.field public final streamKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/offline/StreamKey;",
            ">;"
        }
    .end annotation
.end field

.field public final subtitleConfigurations:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field public final subtitles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/MediaItem$Subtitle;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final tag:Ljava/lang/Object;

.field public final uri:Landroid/net/Uri;


# direct methods
.method public static synthetic $r8$lambda$dSFy7cSvPraRCfVdhEZWsFISXos(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;
    .registers 1

    invoke-static {p0}, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;->fromBundle(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 1164
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;->FIELD_URI:Ljava/lang/String;

    .line 1165
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;->FIELD_MIME_TYPE:Ljava/lang/String;

    .line 1166
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;->FIELD_DRM_CONFIGURATION:Ljava/lang/String;

    .line 1167
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;->FIELD_ADS_CONFIGURATION:Ljava/lang/String;

    .line 1168
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;->FIELD_STREAM_KEYS:Ljava/lang/String;

    .line 1169
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;->FIELD_CUSTOM_CACHE_KEY:Ljava/lang/String;

    .line 1170
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;->FIELD_SUBTITLE_CONFIGURATION:Ljava/lang/String;

    .line 1206
    new-instance v0, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;->CREATOR:Lcom/google/android/exoplayer2/Bundleable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/net/Uri;Ljava/lang/String;Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;Lcom/google/android/exoplayer2/MediaItem$AdsConfiguration;Ljava/util/List;Ljava/lang/String;Lcom/google/common/collect/ImmutableList;Ljava/lang/Object;)V
    .registers 12
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "drmConfiguration"    # Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;
    .param p4, "adsConfiguration"    # Lcom/google/android/exoplayer2/MediaItem$AdsConfiguration;
    .param p6, "customCacheKey"    # Ljava/lang/String;
    .param p8, "tag"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;",
            "Lcom/google/android/exoplayer2/MediaItem$AdsConfiguration;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/offline/StreamKey;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1113
    .local p5, "streamKeys":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/offline/StreamKey;>;"
    .local p7, "subtitleConfigurations":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1114
    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;->uri:Landroid/net/Uri;

    .line 1115
    iput-object p2, p0, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;->mimeType:Ljava/lang/String;

    .line 1116
    iput-object p3, p0, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;->drmConfiguration:Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;

    .line 1117
    iput-object p4, p0, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;->adsConfiguration:Lcom/google/android/exoplayer2/MediaItem$AdsConfiguration;

    .line 1118
    iput-object p5, p0, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;->streamKeys:Ljava/util/List;

    .line 1119
    iput-object p6, p0, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;->customCacheKey:Ljava/lang/String;

    .line 1120
    iput-object p7, p0, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;->subtitleConfigurations:Lcom/google/common/collect/ImmutableList;

    .line 1121
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    .line 1122
    .local v0, "subtitles":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Lcom/google/android/exoplayer2/MediaItem$Subtitle;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_16
    invoke-virtual {p7}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v2

    if-ge v1, v2, :cond_30

    .line 1123
    invoke-virtual {p7, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;->buildUpon()Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;

    move-result-object v2

    # invokes: Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;->buildSubtitle()Lcom/google/android/exoplayer2/MediaItem$Subtitle;
    invoke-static {v2}, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;->access$1800(Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;)Lcom/google/android/exoplayer2/MediaItem$Subtitle;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 1122
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 1125
    .end local v1    # "i":I
    :cond_30
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;->subtitles:Ljava/util/List;

    .line 1126
    iput-object p8, p0, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;->tag:Ljava/lang/Object;

    .line 1127
    return-void
.end method

.method synthetic constructor <init>(Landroid/net/Uri;Ljava/lang/String;Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;Lcom/google/android/exoplayer2/MediaItem$AdsConfiguration;Ljava/util/List;Ljava/lang/String;Lcom/google/common/collect/ImmutableList;Ljava/lang/Object;Lcom/google/android/exoplayer2/MediaItem$1;)V
    .registers 10
    .param p1, "x0"    # Landroid/net/Uri;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;
    .param p4, "x3"    # Lcom/google/android/exoplayer2/MediaItem$AdsConfiguration;
    .param p5, "x4"    # Ljava/util/List;
    .param p6, "x5"    # Ljava/lang/String;
    .param p7, "x6"    # Lcom/google/common/collect/ImmutableList;
    .param p8, "x7"    # Ljava/lang/Object;
    .param p9, "x8"    # Lcom/google/android/exoplayer2/MediaItem$1;

    .line 1065
    invoke-direct/range {p0 .. p8}, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;-><init>(Landroid/net/Uri;Ljava/lang/String;Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;Lcom/google/android/exoplayer2/MediaItem$AdsConfiguration;Ljava/util/List;Ljava/lang/String;Lcom/google/common/collect/ImmutableList;Ljava/lang/Object;)V

    return-void
.end method

.method private static fromBundle(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;
    .registers 15
    .param p0, "bundle"    # Landroid/os/Bundle;

    .line 1209
    sget-object v0, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;->FIELD_DRM_CONFIGURATION:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 1211
    .local v0, "drmBundle":Landroid/os/Bundle;
    const/4 v1, 0x0

    if-nez v0, :cond_b

    move-object v6, v1

    goto :goto_14

    :cond_b
    sget-object v2, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->CREATOR:Lcom/google/android/exoplayer2/Bundleable$Creator;

    invoke-interface {v2, v0}, Lcom/google/android/exoplayer2/Bundleable$Creator;->fromBundle(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/Bundleable;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;

    move-object v6, v2

    .line 1212
    .local v6, "drmConfiguration":Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;
    :goto_14
    sget-object v2, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;->FIELD_ADS_CONFIGURATION:Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 1214
    .local v2, "adsBundle":Landroid/os/Bundle;
    if-nez v2, :cond_1d

    goto :goto_25

    :cond_1d
    sget-object v1, Lcom/google/android/exoplayer2/MediaItem$AdsConfiguration;->CREATOR:Lcom/google/android/exoplayer2/Bundleable$Creator;

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/Bundleable$Creator;->fromBundle(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/Bundleable;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/MediaItem$AdsConfiguration;

    :goto_25
    move-object v7, v1

    .line 1215
    .local v7, "adsConfiguration":Lcom/google/android/exoplayer2/MediaItem$AdsConfiguration;
    sget-object v1, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;->FIELD_STREAM_KEYS:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1217
    .local v1, "streamKeysBundles":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    if-nez v1, :cond_34

    .line 1218
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    move-object v8, v3

    goto :goto_3e

    .line 1219
    :cond_34
    new-instance v3, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v3, v1}, Lcom/google/android/exoplayer2/util/BundleableUtil;->fromBundleList(Lcom/google/android/exoplayer2/Bundleable$Creator;Ljava/util/List;)Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    move-object v8, v3

    :goto_3e
    nop

    .line 1221
    .local v8, "streamKeys":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/offline/StreamKey;>;"
    sget-object v3, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;->FIELD_SUBTITLE_CONFIGURATION:Ljava/lang/String;

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v12

    .line 1223
    .local v12, "subtitleBundles":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    if-nez v12, :cond_4d

    .line 1224
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    move-object v10, v3

    goto :goto_54

    .line 1225
    :cond_4d
    sget-object v3, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;->CREATOR:Lcom/google/android/exoplayer2/Bundleable$Creator;

    invoke-static {v3, v12}, Lcom/google/android/exoplayer2/util/BundleableUtil;->fromBundleList(Lcom/google/android/exoplayer2/Bundleable$Creator;Ljava/util/List;)Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    move-object v10, v3

    :goto_54
    nop

    .line 1227
    .local v10, "subtitleConfiguration":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;>;"
    new-instance v13, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;

    sget-object v3, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;->FIELD_URI:Ljava/lang/String;

    .line 1228
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Landroid/net/Uri;

    sget-object v3, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;->FIELD_MIME_TYPE:Ljava/lang/String;

    .line 1229
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v3, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;->FIELD_CUSTOM_CACHE_KEY:Ljava/lang/String;

    .line 1233
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x0

    move-object v3, v13

    invoke-direct/range {v3 .. v11}, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;-><init>(Landroid/net/Uri;Ljava/lang/String;Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;Lcom/google/android/exoplayer2/MediaItem$AdsConfiguration;Ljava/util/List;Ljava/lang/String;Lcom/google/common/collect/ImmutableList;Ljava/lang/Object;)V

    .line 1227
    return-object v13
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 1131
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 1132
    return v0

    .line 1134
    :cond_4
    instance-of v1, p1, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 1135
    return v2

    .line 1137
    :cond_a
    move-object v1, p1

    check-cast v1, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;

    .line 1139
    .local v1, "other":Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;
    iget-object v3, p0, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;->uri:Landroid/net/Uri;

    iget-object v4, v1, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;->uri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5e

    iget-object v3, p0, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;->mimeType:Ljava/lang/String;

    iget-object v4, v1, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;->mimeType:Ljava/lang/String;

    .line 1140
    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5e

    iget-object v3, p0, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;->drmConfiguration:Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;

    iget-object v4, v1, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;->drmConfiguration:Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;

    .line 1141
    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5e

    iget-object v3, p0, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;->adsConfiguration:Lcom/google/android/exoplayer2/MediaItem$AdsConfiguration;

    iget-object v4, v1, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;->adsConfiguration:Lcom/google/android/exoplayer2/MediaItem$AdsConfiguration;

    .line 1142
    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5e

    iget-object v3, p0, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;->streamKeys:Ljava/util/List;

    iget-object v4, v1, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;->streamKeys:Ljava/util/List;

    .line 1143
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5e

    iget-object v3, p0, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;->customCacheKey:Ljava/lang/String;

    iget-object v4, v1, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;->customCacheKey:Ljava/lang/String;

    .line 1144
    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5e

    iget-object v3, p0, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;->subtitleConfigurations:Lcom/google/common/collect/ImmutableList;

    iget-object v4, v1, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;->subtitleConfigurations:Lcom/google/common/collect/ImmutableList;

    .line 1145
    invoke-virtual {v3, v4}, Lcom/google/common/collect/ImmutableList;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5e

    iget-object v3, p0, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;->tag:Ljava/lang/Object;

    iget-object v4, v1, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;->tag:Ljava/lang/Object;

    .line 1146
    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5e

    goto :goto_5f

    :cond_5e
    const/4 v0, 0x0

    .line 1139
    :goto_5f
    return v0
.end method

.method public hashCode()I
    .registers 5

    .line 1151
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->hashCode()I

    move-result v0

    .line 1152
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;->mimeType:Ljava/lang/String;

    const/4 v3, 0x0

    if-nez v2, :cond_f

    const/4 v2, 0x0

    goto :goto_13

    :cond_f
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_13
    add-int/2addr v1, v2

    .line 1153
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;->drmConfiguration:Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;

    if-nez v2, :cond_1c

    const/4 v2, 0x0

    goto :goto_20

    :cond_1c
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->hashCode()I

    move-result v2

    :goto_20
    add-int/2addr v0, v2

    .line 1154
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;->adsConfiguration:Lcom/google/android/exoplayer2/MediaItem$AdsConfiguration;

    if-nez v2, :cond_29

    const/4 v2, 0x0

    goto :goto_2d

    :cond_29
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/MediaItem$AdsConfiguration;->hashCode()I

    move-result v2

    :goto_2d
    add-int/2addr v1, v2

    .line 1155
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;->streamKeys:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 1156
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;->customCacheKey:Ljava/lang/String;

    if-nez v2, :cond_3f

    const/4 v2, 0x0

    goto :goto_43

    :cond_3f
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_43
    add-int/2addr v1, v2

    .line 1157
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;->subtitleConfigurations:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 1158
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;->tag:Ljava/lang/Object;

    if-nez v2, :cond_54

    goto :goto_58

    :cond_54
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_58
    add-int/2addr v1, v3

    .line 1159
    .end local v0    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public toBundle()Landroid/os/Bundle;
    .registers 4

    .line 1180
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1181
    .local v0, "bundle":Landroid/os/Bundle;
    sget-object v1, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;->FIELD_URI:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;->uri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1182
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;->mimeType:Ljava/lang/String;

    if-eqz v1, :cond_15

    .line 1183
    sget-object v2, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;->FIELD_MIME_TYPE:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1185
    :cond_15
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;->drmConfiguration:Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;

    if-eqz v1, :cond_22

    .line 1186
    sget-object v2, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;->FIELD_DRM_CONFIGURATION:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1188
    :cond_22
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;->adsConfiguration:Lcom/google/android/exoplayer2/MediaItem$AdsConfiguration;

    if-eqz v1, :cond_2f

    .line 1189
    sget-object v2, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;->FIELD_ADS_CONFIGURATION:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/MediaItem$AdsConfiguration;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1191
    :cond_2f
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;->streamKeys:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_42

    .line 1192
    sget-object v1, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;->FIELD_STREAM_KEYS:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;->streamKeys:Ljava/util/List;

    .line 1193
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/BundleableUtil;->toBundleArrayList(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v2

    .line 1192
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1195
    :cond_42
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;->customCacheKey:Ljava/lang/String;

    if-eqz v1, :cond_4b

    .line 1196
    sget-object v2, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;->FIELD_CUSTOM_CACHE_KEY:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1198
    :cond_4b
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;->subtitleConfigurations:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5e

    .line 1199
    sget-object v1, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;->FIELD_SUBTITLE_CONFIGURATION:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;->subtitleConfigurations:Lcom/google/common/collect/ImmutableList;

    .line 1200
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/BundleableUtil;->toBundleArrayList(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v2

    .line 1199
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1202
    :cond_5e
    return-object v0
.end method
