.class public final Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist;
.super Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylist;
.source "HlsMultivariantPlaylist.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Variant;,
        Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Rendition;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final EMPTY:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist;

.field public static final GROUP_INDEX_AUDIO:I = 0x1

.field public static final GROUP_INDEX_SUBTITLE:I = 0x2

.field public static final GROUP_INDEX_VARIANT:I


# instance fields
.field public final audios:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Rendition;",
            ">;"
        }
    .end annotation
.end field

.field public final closedCaptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Rendition;",
            ">;"
        }
    .end annotation
.end field

.field public final mediaPlaylistUrls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field public final muxedAudioFormat:Lcom/google/android/exoplayer2/Format;

.field public final muxedCaptionFormats:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/Format;",
            ">;"
        }
    .end annotation
.end field

.field public final sessionKeyDrmInitData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/drm/DrmInitData;",
            ">;"
        }
    .end annotation
.end field

.field public final subtitles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Rendition;",
            ">;"
        }
    .end annotation
.end field

.field public final variableDefinitions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final variants:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Variant;",
            ">;"
        }
    .end annotation
.end field

.field public final videos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Rendition;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 14

    .line 41
    new-instance v13, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist;

    const-string v1, ""

    .line 44
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    .line 45
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    .line 46
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    .line 47
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    .line 48
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    .line 49
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x0

    .line 51
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v9

    const/4 v10, 0x0

    .line 53
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v11

    .line 54
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v12

    move-object v0, v13

    invoke-direct/range {v0 .. v12}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/google/android/exoplayer2/Format;Ljava/util/List;ZLjava/util/Map;Ljava/util/List;)V

    sput-object v13, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist;->EMPTY:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist;

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/google/android/exoplayer2/Format;Ljava/util/List;ZLjava/util/Map;Ljava/util/List;)V
    .registers 14
    .param p1, "baseUri"    # Ljava/lang/String;
    .param p8, "muxedAudioFormat"    # Lcom/google/android/exoplayer2/Format;
    .param p10, "hasIndependentSegments"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Variant;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Rendition;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Rendition;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Rendition;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Rendition;",
            ">;",
            "Lcom/google/android/exoplayer2/Format;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/Format;",
            ">;Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/drm/DrmInitData;",
            ">;)V"
        }
    .end annotation

    .line 214
    .local p2, "tags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "variants":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Variant;>;"
    .local p4, "videos":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Rendition;>;"
    .local p5, "audios":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Rendition;>;"
    .local p6, "subtitles":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Rendition;>;"
    .local p7, "closedCaptions":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Rendition;>;"
    .local p9, "muxedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/Format;>;"
    .local p11, "variableDefinitions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p12, "sessionKeyDrmInitData":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/drm/DrmInitData;>;"
    invoke-direct {p0, p1, p2, p10}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylist;-><init>(Ljava/lang/String;Ljava/util/List;Z)V

    .line 215
    nop

    .line 217
    invoke-static {p3, p4, p5, p6, p7}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist;->getMediaPlaylistUrls(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 216
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist;->mediaPlaylistUrls:Ljava/util/List;

    .line 218
    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist;->variants:Ljava/util/List;

    .line 219
    invoke-static {p4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist;->videos:Ljava/util/List;

    .line 220
    invoke-static {p5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist;->audios:Ljava/util/List;

    .line 221
    invoke-static {p6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist;->subtitles:Ljava/util/List;

    .line 222
    invoke-static {p7}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist;->closedCaptions:Ljava/util/List;

    .line 223
    iput-object p8, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist;->muxedAudioFormat:Lcom/google/android/exoplayer2/Format;

    .line 224
    nop

    .line 225
    if-eqz p9, :cond_36

    invoke-static {p9}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_37

    :cond_36
    const/4 v0, 0x0

    :goto_37
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist;->muxedCaptionFormats:Ljava/util/List;

    .line 226
    invoke-static {p11}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist;->variableDefinitions:Ljava/util/Map;

    .line 227
    invoke-static {p12}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist;->sessionKeyDrmInitData:Ljava/util/List;

    .line 228
    return-void
.end method

.method private static addMediaPlaylistUrls(Ljava/util/List;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Rendition;",
            ">;",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 294
    .local p0, "renditions":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Rendition;>;"
    .local p1, "out":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1d

    .line 295
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Rendition;

    iget-object v1, v1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Rendition;->url:Landroid/net/Uri;

    .line 296
    .local v1, "uri":Landroid/net/Uri;
    if-eqz v1, :cond_1a

    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    .line 297
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 294
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 300
    .end local v0    # "i":I
    :cond_1d
    return-void
.end method

.method private static copyStreams(Ljava/util/List;ILjava/util/List;)Ljava/util/List;
    .registers 9
    .param p1, "groupIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;I",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/offline/StreamKey;",
            ">;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 304
    .local p0, "streams":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p2, "streamKeys":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/offline/StreamKey;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 315
    .local v0, "copiedStreams":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_33

    .line 316
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 317
    .local v2, "stream":Ljava/lang/Object;, "TT;"
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_15
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_30

    .line 318
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/offline/StreamKey;

    .line 319
    .local v4, "streamKey":Lcom/google/android/exoplayer2/offline/StreamKey;
    iget v5, v4, Lcom/google/android/exoplayer2/offline/StreamKey;->groupIndex:I

    if-ne v5, p1, :cond_2d

    iget v5, v4, Lcom/google/android/exoplayer2/offline/StreamKey;->streamIndex:I

    if-ne v5, v1, :cond_2d

    .line 320
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 321
    goto :goto_30

    .line 317
    .end local v4    # "streamKey":Lcom/google/android/exoplayer2/offline/StreamKey;
    :cond_2d
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 315
    .end local v2    # "stream":Ljava/lang/Object;, "TT;"
    .end local v3    # "j":I
    :cond_30
    :goto_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 325
    .end local v1    # "i":I
    :cond_33
    return-object v0
.end method

.method public static createSingleVariantMultivariantPlaylist(Ljava/lang/String;)Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist;
    .registers 16
    .param p0, "variantUrl"    # Ljava/lang/String;

    .line 256
    nop

    .line 257
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Variant;->createMediaPlaylistVariantUrl(Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Variant;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 258
    .local v0, "variant":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Variant;>;"
    new-instance v14, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist;

    const-string v2, ""

    .line 260
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    .line 262
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    .line 263
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    .line 264
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v7

    .line 265
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 269
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v12

    .line 270
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v13

    move-object v1, v14

    move-object v4, v0

    invoke-direct/range {v1 .. v13}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/google/android/exoplayer2/Format;Ljava/util/List;ZLjava/util/Map;Ljava/util/List;)V

    .line 258
    return-object v14
.end method

.method private static getMediaPlaylistUrls(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Variant;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Rendition;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Rendition;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Rendition;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Rendition;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .line 279
    .local p0, "variants":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Variant;>;"
    .local p1, "videos":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Rendition;>;"
    .local p2, "audios":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Rendition;>;"
    .local p3, "subtitles":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Rendition;>;"
    .local p4, "closedCaptions":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Rendition;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 280
    .local v0, "mediaPlaylistUrls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_20

    .line 281
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Variant;

    iget-object v2, v2, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist$Variant;->url:Landroid/net/Uri;

    .line 282
    .local v2, "uri":Landroid/net/Uri;
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1d

    .line 283
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 280
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 286
    .end local v1    # "i":I
    :cond_20
    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist;->addMediaPlaylistUrls(Ljava/util/List;Ljava/util/List;)V

    .line 287
    invoke-static {p2, v0}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist;->addMediaPlaylistUrls(Ljava/util/List;Ljava/util/List;)V

    .line 288
    invoke-static {p3, v0}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist;->addMediaPlaylistUrls(Ljava/util/List;Ljava/util/List;)V

    .line 289
    invoke-static {p4, v0}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist;->addMediaPlaylistUrls(Ljava/util/List;Ljava/util/List;)V

    .line 290
    return-object v0
.end method


# virtual methods
.method public copy(Ljava/util/List;)Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/offline/StreamKey;",
            ">;)",
            "Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist;"
        }
    .end annotation

    .line 232
    .local p1, "streamKeys":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/offline/StreamKey;>;"
    new-instance v13, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist;->baseUri:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist;->tags:Ljava/util/List;

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist;->variants:Ljava/util/List;

    .line 235
    const/4 v3, 0x0

    invoke-static {v0, v3, p1}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist;->copyStreams(Ljava/util/List;ILjava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 237
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist;->audios:Ljava/util/List;

    .line 238
    const/4 v5, 0x1

    invoke-static {v0, v5, p1}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist;->copyStreams(Ljava/util/List;ILjava/util/List;)Ljava/util/List;

    move-result-object v5

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist;->subtitles:Ljava/util/List;

    .line 239
    const/4 v6, 0x2

    invoke-static {v0, v6, p1}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist;->copyStreams(Ljava/util/List;ILjava/util/List;)Ljava/util/List;

    move-result-object v6

    .line 241
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist;->muxedAudioFormat:Lcom/google/android/exoplayer2/Format;

    iget-object v9, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist;->muxedCaptionFormats:Ljava/util/List;

    iget-boolean v10, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist;->hasIndependentSegments:Z

    iget-object v11, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist;->variableDefinitions:Ljava/util/Map;

    iget-object v12, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist;->sessionKeyDrmInitData:Ljava/util/List;

    move-object v0, v13

    invoke-direct/range {v0 .. v12}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/google/android/exoplayer2/Format;Ljava/util/List;ZLjava/util/Map;Ljava/util/List;)V

    .line 232
    return-object v13
.end method

.method public bridge synthetic copy(Ljava/util/List;)Ljava/lang/Object;
    .registers 2

    .line 37
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist;->copy(Ljava/util/List;)Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist;

    move-result-object p1

    return-object p1
.end method
