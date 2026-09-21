.class public Ltv/danmaku/videoplayer/core/commander/ExoCommander;
.super Ltv/danmaku/videoplayer/core/commander/AbsPlayerCommander;
.source "ExoCommander.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ExoCommander"


# instance fields
.field private mExoPlayer:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

.field private mOnExtraInfoListener:Ltv/danmaku/videoplayer/core/videoview/IVideoView$OnExtraInfoListener;


# direct methods
.method public constructor <init>(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0, p1}, Ltv/danmaku/videoplayer/core/commander/AbsPlayerCommander;-><init>(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V

    .line 51
    invoke-static {p1}, Ltv/danmaku/videoplayer/core/media/PlayerProxyUtils;->getActualPlayer(Ltv/danmaku/ijk/media/player/IMediaPlayer;)Ltv/danmaku/ijk/media/player/IMediaPlayer;

    move-result-object v0

    .line 52
    check-cast v0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    iput-object v0, p0, Ltv/danmaku/videoplayer/core/commander/ExoCommander;->mExoPlayer:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    .line 53
    return-void
.end method

.method private buildBiliDashMediaSource(Lorg/json/JSONObject;ILcom/google/android/exoplayer2/upstream/DataSource$Factory;)Lcom/google/android/exoplayer2/source/MediaSource;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 259
    :try_start_1
    const-string v0, "video"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 260
    const-string v1, "audio"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 262
    invoke-direct {p0, v0, p2}, Ltv/danmaku/videoplayer/core/commander/ExoCommander;->findMediaByQuality(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object v3

    .line 263
    if-eqz v1, :cond_4a

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_4a

    .line 264
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    move-object v2, v0

    .line 266
    :goto_1f
    if-nez v3, :cond_4d

    .line 267
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No video track found for quality: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_3a} :catch_3a

    .line 324
    :catch_3a
    move-exception v0

    .line 325
    const-string v1, "ExoCommander"

    const-string v2, "[DASH_BILI] Failed to build DASH source"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 326
    new-instance v1, Ljava/io/IOException;

    const-string v2, "DASH source error"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 264
    :cond_4a
    const/4 v0, 0x0

    move-object v2, v0

    goto :goto_1f

    .line 270
    :cond_4d
    :try_start_4d
    const-string v0, "base_url"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 271
    invoke-direct {p0, v0}, Ltv/danmaku/videoplayer/core/commander/ExoCommander;->fixPlatformInUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 272
    const-string v0, "id"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 273
    const-string v4, "ExoCommander"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[DASH_BILI] Selected video: id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ", url="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    const-string v0, "video"

    invoke-direct {p0, v1, v0}, Ltv/danmaku/videoplayer/core/commander/ExoCommander;->checkUrlExpiration(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    invoke-direct {p0, v3, v1}, Ltv/danmaku/videoplayer/core/commander/ExoCommander;->getDashUrlCandidates(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 278
    const-string v3, "ExoCommander"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[DASH_CDN] Video URL candidates: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v7, :cond_1d9

    .line 282
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 283
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_b3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_cb

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 284
    invoke-direct {p0, v0}, Ltv/danmaku/videoplayer/core/commander/ExoCommander;->fixPlatformInUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 285
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b3

    .line 287
    :cond_cb
    new-instance v0, Lmybl/CdnFailoverDataSourceFactory;

    const-string v4, "DASH_VIDEO"

    invoke-direct {v0, p3, v3, v4}, Lmybl/CdnFailoverDataSourceFactory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Ljava/util/List;Ljava/lang/String;)V

    .line 288
    const-string v4, "ExoCommander"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[DASH_CDN] Using CdnFailoverDataSource for video with "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " candidates"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    :goto_f4
    new-instance v3, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;

    invoke-direct {v3, v0}, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    .line 292
    invoke-static {v1}, Lcom/google/android/exoplayer2/MediaItem;->fromUri(Ljava/lang/String;)Lcom/google/android/exoplayer2/MediaItem;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;->createMediaSource(Lcom/google/android/exoplayer2/MediaItem;)Lcom/google/android/exoplayer2/source/ProgressiveMediaSource;

    move-result-object v1

    .line 294
    if-eqz v2, :cond_1d0

    .line 295
    const-string v0, "base_url"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 296
    invoke-direct {p0, v0}, Ltv/danmaku/videoplayer/core/commander/ExoCommander;->fixPlatformInUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 297
    const-string v0, "id"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 298
    const-string v4, "ExoCommander"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[DASH_BILI] Selected audio: id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ", url="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    const-string v0, "audio"

    invoke-direct {p0, v3, v0}, Ltv/danmaku/videoplayer/core/commander/ExoCommander;->checkUrlExpiration(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    invoke-direct {p0, v2, v3}, Ltv/danmaku/videoplayer/core/commander/ExoCommander;->getDashUrlCandidates(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 303
    const-string v2, "ExoCommander"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[DASH_CDN] Audio URL candidates: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v7, :cond_1ab

    .line 307
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 308
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_169
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_181

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 309
    invoke-direct {p0, v0}, Ltv/danmaku/videoplayer/core/commander/ExoCommander;->fixPlatformInUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 310
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_169

    .line 312
    :cond_181
    new-instance v0, Lmybl/CdnFailoverDataSourceFactory;

    const-string v4, "DASH_AUDIO"

    invoke-direct {v0, p3, v2, v4}, Lmybl/CdnFailoverDataSourceFactory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Ljava/util/List;Ljava/lang/String;)V

    .line 313
    const-string v4, "ExoCommander"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[DASH_CDN] Using CdnFailoverDataSource for audio with "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " candidates"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object p3, v0

    .line 316
    :cond_1ab
    new-instance v0, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;

    invoke-direct {v0, p3}, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    .line 317
    invoke-static {v3}, Lcom/google/android/exoplayer2/MediaItem;->fromUri(Ljava/lang/String;)Lcom/google/android/exoplayer2/MediaItem;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;->createMediaSource(Lcom/google/android/exoplayer2/MediaItem;)Lcom/google/android/exoplayer2/source/ProgressiveMediaSource;

    move-result-object v2

    .line 318
    const-string v0, "ExoCommander"

    const-string v3, "[DASH_BILI] Merging video and audio sources"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    new-instance v0, Lcom/google/android/exoplayer2/source/MergingMediaSource;

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x2

    new-array v5, v5, [Lcom/google/android/exoplayer2/source/MediaSource;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v1, 0x1

    aput-object v2, v5, v1

    invoke-direct {v0, v3, v4, v5}, Lcom/google/android/exoplayer2/source/MergingMediaSource;-><init>(ZZ[Lcom/google/android/exoplayer2/source/MediaSource;)V

    .line 323
    :goto_1cf
    return-object v0

    .line 322
    :cond_1d0
    const-string v0, "ExoCommander"

    const-string v2, "[DASH_BILI] Video only (no audio track)"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1d7
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_1d7} :catch_3a

    move-object v0, v1

    .line 323
    goto :goto_1cf

    :cond_1d9
    move-object v0, p3

    goto/16 :goto_f4
.end method

.method private buildHlsSource(Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)Lcom/google/android/exoplayer2/source/MediaSource;
    .locals 3

    .prologue
    .line 232
    const-string v0, "ExoCommander"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HLS_NATIVE] Creating HlsMediaSource for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    new-instance v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;

    invoke-direct {v0, p2}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    .line 234
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaItem;->fromUri(Ljava/lang/String;)Lcom/google/android/exoplayer2/MediaItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->createMediaSource(Lcom/google/android/exoplayer2/MediaItem;)Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;

    move-result-object v0

    return-object v0
.end method

.method private buildStandardDashSource(Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)Lcom/google/android/exoplayer2/source/MediaSource;
    .locals 3

    .prologue
    .line 226
    const-string v0, "ExoCommander"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DASH_NATIVE] Creating DashMediaSource for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    new-instance v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;

    invoke-direct {v0, p2}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    .line 228
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaItem;->fromUri(Ljava/lang/String;)Lcom/google/android/exoplayer2/MediaItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;->createMediaSource(Lcom/google/android/exoplayer2/MediaItem;)Lcom/google/android/exoplayer2/source/dash/DashMediaSource;

    move-result-object v0

    return-object v0
.end method

.method private checkUrlExpiration(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 356
    invoke-static {p1, p2}, Ltv/danmaku/videoplayer/core/media/resource/UrlExpirationChecker;->checkUrlExpiration(Ljava/lang/String;Ljava/lang/String;)Ltv/danmaku/videoplayer/core/media/resource/UrlExpirationChecker$ExpirationInfo;

    .line 357
    return-void
.end method

.method private createDataSourceFactory()Lcom/google/android/exoplayer2/upstream/DataSource$Factory;
    .locals 6

    .prologue
    .line 184
    const-string v0, "ExoCommander"

    const-string v1, "[DATASOURCE] Creating DefaultHttpDataSource factory"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    const-string v0, "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36"

    .line 188
    new-instance v1, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;-><init>()V

    .line 189
    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;->setUserAgent(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;

    move-result-object v0

    const/16 v1, 0x2710

    .line 190
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;->setConnectTimeoutMs(I)Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;

    move-result-object v0

    const/16 v1, 0x7530

    .line 191
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;->setReadTimeoutMs(I)Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;

    move-result-object v0

    const/4 v1, 0x1

    .line 192
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;->setAllowCrossProtocolRedirects(Z)Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;

    move-result-object v0

    .line 194
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 195
    const-string v2, "Referer"

    const-string v3, "https://www.bilibili.com/"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v2

    invoke-static {v2}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v2

    .line 198
    invoke-static {v2}, Lmybl/CookieUtil;->getFullCookieWithDevice(Lbl/mg;)Ljava/lang/String;

    move-result-object v2

    .line 199
    if-eqz v2, :cond_6f

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6f

    .line 200
    const-string v3, "Cookie"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    const-string v3, "ExoCommander"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[DATASOURCE] Added Cookie header, length="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :goto_64
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;->setDefaultRequestProperties(Ljava/util/Map;)Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;

    .line 208
    const-string v1, "ExoCommander"

    const-string v2, "[DATASOURCE] DefaultHttpDataSource factory created with PC User-Agent, Referer and Cookie headers"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    return-object v0

    .line 203
    :cond_6f
    const-string v2, "ExoCommander"

    const-string v3, "[DATASOURCE] No Cookie available"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_64
.end method

.method private findMediaByQuality(Lorg/json/JSONArray;I)Lorg/json/JSONObject;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 360
    if-nez p1, :cond_5

    const/4 v0, 0x0

    .line 369
    :goto_4
    return-object v0

    :cond_5
    move v0, v1

    .line 362
    :goto_6
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_1f

    .line 363
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 364
    if-eqz v2, :cond_1c

    const-string v3, "id"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    if-ne v3, p2, :cond_1c

    move-object v0, v2

    .line 365
    goto :goto_4

    .line 362
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 369
    :cond_1f
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_4
.end method

.method private fixPlatformInUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x64

    .line 238
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 254
    :goto_9
    return-object p1

    .line 241
    :cond_a
    const-string v0, "platform=android_tv"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_94

    .line 242
    const-string v0, "platform=android_tv"

    const-string v1, "platform=pc"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 243
    const-string v1, "ExoCommander"

    const-string v2, "[URL_FIX] Fixed platform parameter: android_tv -> pc"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    :goto_21
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_91

    .line 250
    const-string v1, "ExoCommander"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[URL_FIX] Original URL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v5, :cond_51

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_51
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    const-string v2, "ExoCommander"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[URL_FIX] Fixed URL: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v5, :cond_ad

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "..."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_86
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_91
    move-object p1, v0

    .line 254
    goto/16 :goto_9

    .line 244
    :cond_94
    const-string v0, "platform=android"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_af

    .line 245
    const-string v0, "platform=android"

    const-string v1, "platform=pc"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 246
    const-string v1, "ExoCommander"

    const-string v2, "[URL_FIX] Fixed platform parameter: android -> pc"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_21

    :cond_ad
    move-object v1, v0

    .line 251
    goto :goto_86

    :cond_af
    move-object v0, p1

    goto/16 :goto_21
.end method

.method private getDashUrlCandidates(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v8, 0x50

    const/4 v1, 0x0

    .line 331
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 332
    invoke-interface {v3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 334
    if-nez p1, :cond_f

    move-object v0, v3

    .line 352
    :goto_e
    return-object v0

    .line 338
    :cond_f
    const-string v0, "backup_url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 339
    if-eqz v4, :cond_91

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_91

    .line 340
    const-string v0, "ExoCommander"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[DASH_BACKUP] Found "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " backup URLs"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 341
    :goto_40
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_98

    .line 342
    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v2

    .line 343
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_8e

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8e

    .line 344
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 345
    const-string v5, "ExoCommander"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[DASH_BACKUP] Added backup URL: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v8, :cond_83

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "..."

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_83
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    :cond_8e
    add-int/lit8 v0, v0, 0x1

    goto :goto_40

    .line 349
    :cond_91
    const-string v0, "ExoCommander"

    const-string v1, "[DASH_BACKUP] No backup URLs found"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_98
    move-object v0, v3

    .line 352
    goto/16 :goto_e
.end method

.method private getPlaybackSpeed()F
    .locals 1

    .prologue
    .line 477
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method private getUrlCandidates(Lcom/bilibili/tv/player/basic/context/VideoViewParams;Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bilibili/tv/player/basic/context/VideoViewParams;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v8, 0x50

    .line 494
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 495
    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 497
    if-eqz p1, :cond_10

    iget-object v0, p1, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mMediaResource:Lcom/bilibili/lib/media/resource/MediaResource;

    if-nez v0, :cond_19

    .line 498
    :cond_10
    const-string v0, "ExoCommander"

    const-string v2, "[BACKUP_URLS] No MediaResource available"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 560
    :goto_18
    return-object v0

    .line 502
    :cond_19
    iget-object v0, p1, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mMediaResource:Lcom/bilibili/lib/media/resource/MediaResource;

    .line 504
    iget-object v2, v0, Lcom/bilibili/lib/media/resource/MediaResource;->a:Lcom/bilibili/lib/media/resource/VodIndex;

    if-eqz v2, :cond_2f

    iget-object v2, v0, Lcom/bilibili/lib/media/resource/MediaResource;->a:Lcom/bilibili/lib/media/resource/VodIndex;

    iget-object v2, v2, Lcom/bilibili/lib/media/resource/VodIndex;->a:Ljava/util/ArrayList;

    if-eqz v2, :cond_2f

    iget-object v2, v0, Lcom/bilibili/lib/media/resource/MediaResource;->a:Lcom/bilibili/lib/media/resource/VodIndex;

    iget-object v2, v2, Lcom/bilibili/lib/media/resource/VodIndex;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_38

    .line 505
    :cond_2f
    const-string v0, "ExoCommander"

    const-string v2, "[BACKUP_URLS] No VodIndex or PlayIndex list available"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 506
    goto :goto_18

    .line 509
    :cond_38
    invoke-virtual {v0}, Lcom/bilibili/lib/media/resource/MediaResource;->e()I

    move-result v2

    .line 510
    if-ltz v2, :cond_48

    iget-object v3, v0, Lcom/bilibili/lib/media/resource/MediaResource;->a:Lcom/bilibili/lib/media/resource/VodIndex;

    iget-object v3, v3, Lcom/bilibili/lib/media/resource/VodIndex;->a:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v2, v3, :cond_62

    .line 511
    :cond_48
    const-string v0, "ExoCommander"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[BACKUP_URLS] Invalid resolved index: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 512
    goto :goto_18

    .line 515
    :cond_62
    iget-object v0, v0, Lcom/bilibili/lib/media/resource/MediaResource;->a:Lcom/bilibili/lib/media/resource/VodIndex;

    iget-object v0, v0, Lcom/bilibili/lib/media/resource/VodIndex;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 516
    if-nez v0, :cond_86

    .line 517
    const-string v0, "ExoCommander"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[BACKUP_URLS] PlayIndex is null at index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 518
    goto :goto_18

    .line 522
    :cond_86
    :try_start_86
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 523
    const-string v3, "f"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 524
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 526
    if-nez v0, :cond_a0

    .line 527
    const-string v0, "ExoCommander"

    const-string v2, "[BACKUP_URLS] Segment list is null"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 528
    goto/16 :goto_18

    .line 531
    :cond_a0
    check-cast v0, Ljava/util/ArrayList;

    .line 532
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_b2

    .line 533
    const-string v0, "ExoCommander"

    const-string v2, "[BACKUP_URLS] Segment list is empty"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 534
    goto/16 :goto_18

    .line 537
    :cond_b2
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 538
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 540
    const-string v3, "e"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 541
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 543
    if-eqz v0, :cond_163

    .line 544
    check-cast v0, Ljava/util/ArrayList;

    .line 545
    const-string v2, "ExoCommander"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[BACKUP_URLS] Found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " backup URLs"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_ef
    :goto_ef
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_160

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 548
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_ef

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_ef

    .line 549
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 550
    const-string v3, "ExoCommander"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[BACKUP_URLS] Added backup URL: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v8, :cond_137

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    const/16 v7, 0x50

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "..."

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_137
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_142
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_142} :catch_143

    goto :goto_ef

    .line 556
    :catch_143
    move-exception v0

    .line 557
    const-string v2, "ExoCommander"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[BACKUP_URLS] Error getting backup URLs: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_160
    :goto_160
    move-object v0, v1

    .line 560
    goto/16 :goto_18

    .line 554
    :cond_163
    :try_start_163
    const-string v0, "ExoCommander"

    const-string v2, "[BACKUP_URLS] No backup URLs field"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16a
    .catch Ljava/lang/Exception; {:try_start_163 .. :try_end_16a} :catch_143

    goto :goto_160
.end method

.method private isHls(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 220
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 222
    :cond_7
    :goto_7
    return v0

    .line 221
    :cond_8
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 222
    const-string v2, ".m3u8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1c

    const-string v2, ".m3u8?"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_1c
    const/4 v0, 0x1

    goto :goto_7
.end method

.method private isMultiSegmentVideo(Ljava/lang/String;Ltv/danmaku/videoplayer/core/media/resource/MediaSource;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 481
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 482
    if-eqz p2, :cond_15

    iget-object v1, p2, Ltv/danmaku/videoplayer/core/media/resource/MediaSource;->mSegmentList:Ljava/util/ArrayList;

    if-eqz v1, :cond_15

    iget-object v1, p2, Ltv/danmaku/videoplayer/core/media/resource/MediaSource;->mSegmentList:Ljava/util/ArrayList;

    .line 483
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 490
    :cond_15
    :goto_15
    return v0

    .line 486
    :cond_16
    const-string v1, "vsl://"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2e

    const-string v1, "down://"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2e

    const-string v1, "vsindex://"

    .line 487
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 490
    :cond_2e
    const/4 v0, 0x1

    goto :goto_15
.end method

.method private isStandardDash(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 214
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 216
    :cond_7
    :goto_7
    return v0

    .line 215
    :cond_8
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 216
    const-string v2, ".mpd"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1c

    const-string v2, ".mpd?"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_1c
    const/4 v0, 0x1

    goto :goto_7
.end method

.method private setPlaybackSpeed(F)V
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/commander/ExoCommander;->mExoPlayer:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    invoke-virtual {v0, p1}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->setSpeed(F)V

    .line 464
    return-void
.end method


# virtual methods
.method public varargs act(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .prologue
    const v0, 0xffff

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 407
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_66

    .line 433
    :cond_d
    :goto_d
    packed-switch v0, :pswitch_data_74

    .line 453
    :cond_10
    :goto_10
    return-object v4

    .line 409
    :sswitch_11
    const-string v3, "SetOnExtraInfoListener"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    move v0, v1

    .line 411
    goto :goto_d

    .line 416
    :sswitch_1b
    const-string v3, "SetPlaybackSpeed"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    move v0, v2

    .line 418
    goto :goto_d

    .line 423
    :sswitch_25
    const-string v3, "SetAudioBalanceLevel"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 424
    const/4 v0, 0x2

    .line 425
    goto :goto_d

    .line 435
    :pswitch_2f
    array-length v0, p2

    if-lt v0, v2, :cond_10

    aget-object v0, p2, v1

    instance-of v0, v0, Ltv/danmaku/videoplayer/core/videoview/IVideoView$OnExtraInfoListener;

    if-eqz v0, :cond_10

    .line 438
    aget-object v0, p2, v1

    check-cast v0, Ltv/danmaku/videoplayer/core/videoview/IVideoView$OnExtraInfoListener;

    iput-object v0, p0, Ltv/danmaku/videoplayer/core/commander/ExoCommander;->mOnExtraInfoListener:Ltv/danmaku/videoplayer/core/videoview/IVideoView$OnExtraInfoListener;

    goto :goto_10

    .line 441
    :pswitch_3f
    array-length v0, p2

    if-lt v0, v2, :cond_10

    aget-object v0, p2, v1

    instance-of v0, v0, Ljava/lang/Float;

    if-eqz v0, :cond_10

    .line 444
    aget-object v0, p2, v1

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-direct {p0, v0}, Ltv/danmaku/videoplayer/core/commander/ExoCommander;->setPlaybackSpeed(F)V

    goto :goto_10

    .line 447
    :pswitch_54
    array-length v0, p2

    if-lt v0, v2, :cond_10

    aget-object v0, p2, v1

    instance-of v0, v0, Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;

    if-eqz v0, :cond_10

    .line 450
    aget-object v0, p2, v1

    check-cast v0, Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;

    invoke-virtual {p0, v0}, Ltv/danmaku/videoplayer/core/commander/ExoCommander;->setAudioBalanceLevel(Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;)V

    goto :goto_10

    .line 407
    nop

    :sswitch_data_66
    .sparse-switch
        -0x41c19c0f -> :sswitch_11
        -0x1978c636 -> :sswitch_1b
        0x76f4ccdc -> :sswitch_25
    .end sparse-switch

    .line 433
    :pswitch_data_74
    .packed-switch 0x0
        :pswitch_2f
        :pswitch_3f
        :pswitch_54
    .end packed-switch
.end method

.method public bridge synthetic getAudioSessionId()I
    .locals 1

    .prologue
    .line 43
    invoke-super {p0}, Ltv/danmaku/videoplayer/core/commander/AbsPlayerCommander;->getAudioSessionId()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getCurrentPosition()J
    .locals 2

    .prologue
    .line 43
    invoke-super {p0}, Ltv/danmaku/videoplayer/core/commander/AbsPlayerCommander;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getDataSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    invoke-super {p0}, Ltv/danmaku/videoplayer/core/commander/AbsPlayerCommander;->getDataSource()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDuration()J
    .locals 2

    .prologue
    .line 43
    invoke-super {p0}, Ltv/danmaku/videoplayer/core/commander/AbsPlayerCommander;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getMediaInfo()Ltv/danmaku/ijk/media/player/MediaInfo;
    .locals 1

    .prologue
    .line 43
    invoke-super {p0}, Ltv/danmaku/videoplayer/core/commander/AbsPlayerCommander;->getMediaInfo()Ltv/danmaku/ijk/media/player/MediaInfo;

    move-result-object v0

    return-object v0
.end method

.method public getMediaPlayer()Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;
    .locals 1

    .prologue
    .line 473
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/commander/ExoCommander;->mExoPlayer:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    return-object v0
.end method

.method public bridge synthetic getPlayer()Ltv/danmaku/ijk/media/player/IMediaPlayer;
    .locals 1

    .prologue
    .line 43
    invoke-super {p0}, Ltv/danmaku/videoplayer/core/commander/AbsPlayerCommander;->getPlayer()Ltv/danmaku/ijk/media/player/IMediaPlayer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTrackInfo()[Ltv/danmaku/ijk/media/player/misc/ITrackInfo;
    .locals 1

    .prologue
    .line 43
    invoke-super {p0}, Ltv/danmaku/videoplayer/core/commander/AbsPlayerCommander;->getTrackInfo()[Ltv/danmaku/ijk/media/player/misc/ITrackInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getVideoHeight()I
    .locals 1

    .prologue
    .line 43
    invoke-super {p0}, Ltv/danmaku/videoplayer/core/commander/AbsPlayerCommander;->getVideoHeight()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getVideoSarDen()I
    .locals 1

    .prologue
    .line 43
    invoke-super {p0}, Ltv/danmaku/videoplayer/core/commander/AbsPlayerCommander;->getVideoSarDen()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getVideoSarNum()I
    .locals 1

    .prologue
    .line 43
    invoke-super {p0}, Ltv/danmaku/videoplayer/core/commander/AbsPlayerCommander;->getVideoSarNum()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getVideoWidth()I
    .locals 1

    .prologue
    .line 43
    invoke-super {p0}, Ltv/danmaku/videoplayer/core/commander/AbsPlayerCommander;->getVideoWidth()I

    move-result v0

    return v0
.end method

.method public bridge synthetic isLooping()Z
    .locals 1

    .prologue
    .line 43
    invoke-super {p0}, Ltv/danmaku/videoplayer/core/commander/AbsPlayerCommander;->isLooping()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isPlayable()Z
    .locals 1

    .prologue
    .line 43
    invoke-super {p0}, Ltv/danmaku/videoplayer/core/commander/AbsPlayerCommander;->isPlayable()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isPlaying()Z
    .locals 1

    .prologue
    .line 43
    invoke-super {p0}, Ltv/danmaku/videoplayer/core/commander/AbsPlayerCommander;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public onRelease()V
    .locals 0

    .prologue
    .line 459
    invoke-super {p0}, Ltv/danmaku/videoplayer/core/commander/AbsPlayerCommander;->onRelease()V

    .line 460
    return-void
.end method

.method public openVideo(Landroid/content/Context;Ltv/danmaku/videoplayer/core/videoview/IVideoParams;Landroid/net/Uri;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 57
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 58
    const-string v0, "ExoCommander"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OPEN_VIDEO] preparing video -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    .line 61
    invoke-interface {p2}, Ltv/danmaku/videoplayer/core/videoview/IVideoParams;->getMediaSource()Ltv/danmaku/videoplayer/core/media/resource/MediaSource;

    move-result-object v0

    .line 63
    invoke-direct {p0, v5, v0}, Ltv/danmaku/videoplayer/core/commander/ExoCommander;->isMultiSegmentVideo(Ljava/lang/String;Ltv/danmaku/videoplayer/core/media/resource/MediaSource;)Z

    move-result v1

    if-eqz v1, :cond_f6

    .line 64
    const-string v1, "ExoCommander"

    const-string v2, "[OPEN_VIDEO] Multi-segment video detected"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v1, "ffconcat version 1.0\n"

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 66
    iget-object v0, v0, Ltv/danmaku/videoplayer/core/media/resource/MediaSource;->mSegmentList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 67
    const/4 v0, 0x0

    move v1, v0

    .line 68
    :goto_3f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7f

    .line 69
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/danmaku/videoplayer/core/media/resource/SegmentSource;

    .line 70
    const-string v4, "file ijksegment:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 72
    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    const-string v4, "duration "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    iget v4, v0, Ltv/danmaku/videoplayer/core/media/resource/SegmentSource;->mDuration:I

    div-int/lit16 v4, v4, 0x3e8

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 75
    iget v4, v0, Ltv/danmaku/videoplayer/core/media/resource/SegmentSource;->mDuration:I

    rem-int/lit16 v4, v4, 0x3e8

    if-eqz v4, :cond_76

    .line 76
    const-string v4, "."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    iget v0, v0, Ltv/danmaku/videoplayer/core/media/resource/SegmentSource;->mDuration:I

    rem-int/lit16 v0, v0, 0x3e8

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 79
    :cond_76
    const-string v0, "\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 81
    goto :goto_3f

    .line 82
    :cond_7f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 83
    iget-object v1, p0, Ltv/danmaku/videoplayer/core/commander/ExoCommander;->mExoPlayer:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    invoke-virtual {v1, v0}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->setDataSource(Ljava/lang/String;)V

    .line 168
    :goto_88
    const/4 v0, 0x0

    .line 169
    instance-of v1, p2, Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    if-eqz v1, :cond_91

    .line 170
    check-cast p2, Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    iget-object v0, p2, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mResolveParams:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    .line 172
    :cond_91
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bilibili/tv/MainApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lbl/abd;->getSpeedSettingByParams(Landroid/content/Context;Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;)I

    move-result v1

    .line 173
    if-gez v1, :cond_a5

    .line 174
    sget v1, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->speed_id:I

    if-ltz v1, :cond_2f1

    sget v1, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->speed_id:I

    .line 177
    :cond_a5
    :goto_a5
    const-string v4, "ExoCommander"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[PLAY_SPEED] speed_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Lbl/abd;->get_speed(I)F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x), mListKey="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v0, :cond_2ff

    iget-object v2, v0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mListKey:Ljava/lang/String;

    :goto_ce
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mAvid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v0, :cond_302

    iget-wide v2, v0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mAvid:J

    :goto_dc
    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/commander/ExoCommander;->mExoPlayer:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    invoke-static {v1}, Lbl/abd;->get_speed(I)F

    move-result v1

    invoke-virtual {v0, v1}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->setSpeed(F)V

    .line 180
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/commander/ExoCommander;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->prepareAsync()V

    .line 181
    return-void

    :cond_f6
    move-object v0, p2

    .line 85
    check-cast v0, Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    .line 87
    iget-object v1, v0, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mMediaResource:Lcom/bilibili/lib/media/resource/MediaResource;

    if-eqz v1, :cond_18e

    iget-object v1, v0, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mMediaResource:Lcom/bilibili/lib/media/resource/MediaResource;

    iget-object v1, v1, Lcom/bilibili/lib/media/resource/MediaResource;->dash:Lorg/json/JSONObject;

    if-eqz v1, :cond_18e

    const/4 v1, 0x1

    .line 90
    :goto_104
    const-string v2, "ExoCommander"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[OPEN_VIDEO] hasDash="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    invoke-direct {p0}, Ltv/danmaku/videoplayer/core/commander/ExoCommander;->createDataSourceFactory()Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    move-result-object v4

    .line 94
    if-eqz v1, :cond_19b

    .line 95
    const-string v1, "ExoCommander"

    const-string v2, "[DASH_BILI] Bilibili DASH JSON format detected"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    const-string v1, "ExoCommander"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[DASH_BILI] video_count="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mMediaResource:Lcom/bilibili/lib/media/resource/MediaResource;

    iget-object v3, v3, Lcom/bilibili/lib/media/resource/MediaResource;->dash:Lorg/json/JSONObject;

    const-string v5, "video"

    .line 97
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", quality="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mMediaResource:Lcom/bilibili/lib/media/resource/MediaResource;

    iget v3, v3, Lcom/bilibili/lib/media/resource/MediaResource;->quality:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 96
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object v1, v0, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mMediaResource:Lcom/bilibili/lib/media/resource/MediaResource;

    iget-object v3, v1, Lcom/bilibili/lib/media/resource/MediaResource;->dash:Lorg/json/JSONObject;

    .line 101
    iget-object v1, v0, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mMediaResource:Lcom/bilibili/lib/media/resource/MediaResource;

    iget v5, v1, Lcom/bilibili/lib/media/resource/MediaResource;->quality:I

    .line 103
    iget-object v1, v0, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mResolveParams:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    if-eqz v1, :cond_191

    .line 104
    iget-object v0, v0, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mResolveParams:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    iget v0, v0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mProgress:I

    move v2, v0

    .line 105
    :goto_16e
    const-wide/16 v0, 0x0

    .line 106
    if-lez v2, :cond_176

    .line 107
    int-to-long v0, v2

    const-wide/16 v6, 0x3e8

    mul-long/2addr v0, v6

    .line 110
    :cond_176
    invoke-direct {p0, v3, v5, v4}, Ltv/danmaku/videoplayer/core/commander/ExoCommander;->buildBiliDashMediaSource(Lorg/json/JSONObject;ILcom/google/android/exoplayer2/upstream/DataSource$Factory;)Lcom/google/android/exoplayer2/source/MediaSource;

    move-result-object v2

    .line 111
    const-string v3, "ExoCommander"

    const-string v4, "[DASH_BILI] Using MergingMediaSource for Bilibili DASH"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-lez v3, :cond_194

    .line 113
    iget-object v3, p0, Ltv/danmaku/videoplayer/core/commander/ExoCommander;->mExoPlayer:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    invoke-virtual {v3, v2, v0, v1}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->setDataSourceWithSeek(Lcom/google/android/exoplayer2/source/MediaSource;J)V

    goto/16 :goto_88

    .line 87
    :cond_18e
    const/4 v1, 0x0

    goto/16 :goto_104

    .line 104
    :cond_191
    const/4 v0, 0x0

    move v2, v0

    goto :goto_16e

    .line 115
    :cond_194
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/commander/ExoCommander;->mExoPlayer:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    invoke-virtual {v0, v2}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->setDataSource(Lcom/google/android/exoplayer2/source/MediaSource;)V

    goto/16 :goto_88

    .line 117
    :cond_19b
    invoke-direct {p0, v5}, Ltv/danmaku/videoplayer/core/commander/ExoCommander;->isStandardDash(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1cb

    .line 118
    const-string v0, "ExoCommander"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DASH_NATIVE] Standard DASH (MPD) format detected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    invoke-direct {p0, v5, v4}, Ltv/danmaku/videoplayer/core/commander/ExoCommander;->buildStandardDashSource(Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)Lcom/google/android/exoplayer2/source/MediaSource;

    move-result-object v0

    .line 120
    const-string v1, "ExoCommander"

    const-string v2, "[DASH_NATIVE] Using DashMediaSource for standard DASH"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget-object v1, p0, Ltv/danmaku/videoplayer/core/commander/ExoCommander;->mExoPlayer:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    invoke-virtual {v1, v0}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->setDataSource(Lcom/google/android/exoplayer2/source/MediaSource;)V

    goto/16 :goto_88

    .line 122
    :cond_1cb
    invoke-direct {p0, v5}, Ltv/danmaku/videoplayer/core/commander/ExoCommander;->isHls(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1fb

    .line 123
    const-string v0, "ExoCommander"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HLS_NATIVE] HLS format detected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-direct {p0, v5, v4}, Ltv/danmaku/videoplayer/core/commander/ExoCommander;->buildHlsSource(Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)Lcom/google/android/exoplayer2/source/MediaSource;

    move-result-object v0

    .line 125
    const-string v1, "ExoCommander"

    const-string v2, "[HLS_NATIVE] Using HlsMediaSource for HLS"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object v1, p0, Ltv/danmaku/videoplayer/core/commander/ExoCommander;->mExoPlayer:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    invoke-virtual {v1, v0}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->setDataSource(Lcom/google/android/exoplayer2/source/MediaSource;)V

    goto/16 :goto_88

    .line 128
    :cond_1fb
    const-string v1, "ExoCommander"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[PROGRESSIVE] Progressive format: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object v1, v0, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mResolveParams:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    if-eqz v1, :cond_29b

    .line 131
    iget-object v1, v0, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mResolveParams:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    iget v1, v1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mProgress:I

    .line 132
    :goto_21b
    const-wide/16 v2, 0x0

    .line 133
    if-lez v1, :cond_241

    .line 134
    int-to-long v2, v1

    const-wide/16 v6, 0x3e8

    mul-long/2addr v2, v6

    .line 135
    const-string v1, "ExoCommander"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[PROGRESSIVE] Will seek to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "ms on start"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :cond_241
    const-string v1, "http://"

    invoke-virtual {v5, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_251

    const-string v1, "https://"

    invoke-virtual {v5, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2e8

    .line 141
    :cond_251
    invoke-direct {p0, v0, v5}, Ltv/danmaku/videoplayer/core/commander/ExoCommander;->getUrlCandidates(Lcom/bilibili/tv/player/basic/context/VideoViewParams;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 142
    const-string v1, "ExoCommander"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[CDN_FAILOVER] Found "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " URL candidates"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v6, 0x1

    if-le v1, v6, :cond_2e1

    .line 145
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 146
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_287
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 147
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_287

    .line 131
    :cond_29b
    const/4 v1, 0x0

    goto/16 :goto_21b

    .line 149
    :cond_29e
    new-instance v0, Lmybl/CdnFailoverDataSourceFactory;

    const-string v6, "PROGRESSIVE"

    invoke-direct {v0, v4, v1, v6}, Lmybl/CdnFailoverDataSourceFactory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Ljava/util/List;Ljava/lang/String;)V

    .line 150
    const-string v4, "ExoCommander"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[CDN_FAILOVER] Using CdnFailoverDataSource with "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " candidates"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :goto_2c7
    new-instance v1, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    .line 157
    invoke-static {v5}, Lcom/google/android/exoplayer2/MediaItem;->fromUri(Ljava/lang/String;)Lcom/google/android/exoplayer2/MediaItem;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;->createMediaSource(Lcom/google/android/exoplayer2/MediaItem;)Lcom/google/android/exoplayer2/source/ProgressiveMediaSource;

    move-result-object v0

    .line 159
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_2ea

    .line 160
    iget-object v1, p0, Ltv/danmaku/videoplayer/core/commander/ExoCommander;->mExoPlayer:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    invoke-virtual {v1, v0, v2, v3}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->setDataSourceWithSeek(Lcom/google/android/exoplayer2/source/MediaSource;J)V

    goto/16 :goto_88

    .line 152
    :cond_2e1
    const-string v0, "ExoCommander"

    const-string v1, "[CDN_FAILOVER] Only one URL candidate, using default DataSource"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2e8
    move-object v0, v4

    goto :goto_2c7

    .line 162
    :cond_2ea
    iget-object v1, p0, Ltv/danmaku/videoplayer/core/commander/ExoCommander;->mExoPlayer:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    invoke-virtual {v1, v0}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->setDataSource(Lcom/google/android/exoplayer2/source/MediaSource;)V

    goto/16 :goto_88

    .line 175
    :cond_2f1
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bilibili/tv/MainApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lbl/abd;->get_speed_id(Landroid/content/Context;)I

    move-result v1

    goto/16 :goto_a5

    .line 177
    :cond_2ff
    const/4 v2, 0x0

    goto/16 :goto_ce

    :cond_302
    const-wide/16 v2, 0x0

    goto/16 :goto_dc
.end method

.method public bridge synthetic pause()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 43
    invoke-super {p0}, Ltv/danmaku/videoplayer/core/commander/AbsPlayerCommander;->pause()V

    return-void
.end method

.method public bridge synthetic prepareAsync()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 43
    invoke-super {p0}, Ltv/danmaku/videoplayer/core/commander/AbsPlayerCommander;->prepareAsync()V

    return-void
.end method

.method public bridge synthetic release()V
    .locals 0

    .prologue
    .line 43
    invoke-super {p0}, Ltv/danmaku/videoplayer/core/commander/AbsPlayerCommander;->release()V

    return-void
.end method

.method public require(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    .prologue
    const v2, 0xffff

    .line 380
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 381
    const v1, -0x2c46c472

    if-ne v0, v1, :cond_18

    .line 382
    const-string v0, "GetAsyncPos"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 394
    :cond_14
    :goto_14
    packed-switch v2, :pswitch_data_42

    .line 400
    :goto_17
    return-object p2

    .line 386
    :cond_18
    const v1, 0x53b0d356

    if-ne v0, v1, :cond_14

    .line 387
    const-string v0, "GetPlaybackSpeed"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    goto :goto_14

    .line 396
    :pswitch_26
    invoke-direct {p0}, Ltv/danmaku/videoplayer/core/commander/ExoCommander;->getPlaybackSpeed()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Ltv/danmaku/videoplayer/core/commander/ExoCommander;->cast(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_17

    .line 398
    :pswitch_33
    invoke-virtual {p0}, Ltv/danmaku/videoplayer/core/commander/ExoCommander;->getCurrentPosition()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Ltv/danmaku/videoplayer/core/commander/ExoCommander;->cast(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_17

    .line 394
    nop

    :pswitch_data_42
    .packed-switch 0x0
        :pswitch_26
        :pswitch_33
    .end packed-switch
.end method

.method public bridge synthetic reset()V
    .locals 0

    .prologue
    .line 43
    invoke-super {p0}, Ltv/danmaku/videoplayer/core/commander/AbsPlayerCommander;->reset()V

    return-void
.end method

.method public bridge synthetic seekTo(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 43
    invoke-super {p0, p1, p2}, Ltv/danmaku/videoplayer/core/commander/AbsPlayerCommander;->seekTo(J)V

    return-void
.end method

.method public setAudioBalanceLevel(Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;)V
    .locals 1

    .prologue
    .line 467
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/commander/ExoCommander;->mExoPlayer:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    if-eqz v0, :cond_9

    .line 468
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/commander/ExoCommander;->mExoPlayer:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    invoke-virtual {v0, p1}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->setAudioBalanceLevel(Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;)V

    .line 470
    :cond_9
    return-void
.end method

.method public bridge synthetic setAudioStreamType(I)V
    .locals 0

    .prologue
    .line 43
    invoke-super {p0, p1}, Ltv/danmaku/videoplayer/core/commander/AbsPlayerCommander;->setAudioStreamType(I)V

    return-void
.end method

.method public bridge synthetic setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 43
    invoke-super {p0, p1, p2}, Ltv/danmaku/videoplayer/core/commander/AbsPlayerCommander;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    return-void
.end method

.method public bridge synthetic setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 43
    invoke-super {p0, p1, p2, p3}, Ltv/danmaku/videoplayer/core/commander/AbsPlayerCommander;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    return-void
.end method

.method public bridge synthetic setDataSource(Ljava/io/FileDescriptor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 43
    invoke-super {p0, p1}, Ltv/danmaku/videoplayer/core/commander/AbsPlayerCommander;->setDataSource(Ljava/io/FileDescriptor;)V

    return-void
.end method

.method public bridge synthetic setDataSource(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 43
    invoke-super {p0, p1}, Ltv/danmaku/videoplayer/core/commander/AbsPlayerCommander;->setDataSource(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setDataSource(Ltv/danmaku/ijk/media/player/misc/IMediaDataSource;)V
    .locals 0

    .prologue
    .line 43
    invoke-super {p0, p1}, Ltv/danmaku/videoplayer/core/commander/AbsPlayerCommander;->setDataSource(Ltv/danmaku/ijk/media/player/misc/IMediaDataSource;)V

    return-void
.end method

.method public bridge synthetic setDisplay(Landroid/view/SurfaceHolder;)V
    .locals 0

    .prologue
    .line 43
    invoke-super {p0, p1}, Ltv/danmaku/videoplayer/core/commander/AbsPlayerCommander;->setDisplay(Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method public bridge synthetic setKeepInBackground(Z)V
    .locals 0

    .prologue
    .line 43
    invoke-super {p0, p1}, Ltv/danmaku/videoplayer/core/commander/AbsPlayerCommander;->setKeepInBackground(Z)V

    return-void
.end method

.method public bridge synthetic setLogEnabled(Z)V
    .locals 0

    .prologue
    .line 43
    invoke-super {p0, p1}, Ltv/danmaku/videoplayer/core/commander/AbsPlayerCommander;->setLogEnabled(Z)V

    return-void
.end method

.method public bridge synthetic setLooping(Z)V
    .locals 0

    .prologue
    .line 43
    invoke-super {p0, p1}, Ltv/danmaku/videoplayer/core/commander/AbsPlayerCommander;->setLooping(Z)V

    return-void
.end method

.method public bridge synthetic setOnBufferingUpdateListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;)V
    .locals 0

    .prologue
    .line 43
    invoke-super {p0, p1}, Ltv/danmaku/videoplayer/core/commander/AbsPlayerCommander;->setOnBufferingUpdateListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;)V

    return-void
.end method

.method public bridge synthetic setOnCompletionListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;)V
    .locals 0

    .prologue
    .line 43
    invoke-super {p0, p1}, Ltv/danmaku/videoplayer/core/commander/AbsPlayerCommander;->setOnCompletionListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;)V

    return-void
.end method

.method public bridge synthetic setOnErrorListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;)V
    .locals 0

    .prologue
    .line 43
    invoke-super {p0, p1}, Ltv/danmaku/videoplayer/core/commander/AbsPlayerCommander;->setOnErrorListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;)V

    return-void
.end method

.method public bridge synthetic setOnInfoListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;)V
    .locals 0

    .prologue
    .line 43
    invoke-super {p0, p1}, Ltv/danmaku/videoplayer/core/commander/AbsPlayerCommander;->setOnInfoListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;)V

    return-void
.end method

.method public bridge synthetic setOnPreparedListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;)V
    .locals 0

    .prologue
    .line 43
    invoke-super {p0, p1}, Ltv/danmaku/videoplayer/core/commander/AbsPlayerCommander;->setOnPreparedListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;)V

    return-void
.end method

.method public bridge synthetic setOnSeekCompleteListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;)V
    .locals 0

    .prologue
    .line 43
    invoke-super {p0, p1}, Ltv/danmaku/videoplayer/core/commander/AbsPlayerCommander;->setOnSeekCompleteListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;)V

    return-void
.end method

.method public bridge synthetic setOnTimedTextListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnTimedTextListener;)V
    .locals 0

    .prologue
    .line 43
    invoke-super {p0, p1}, Ltv/danmaku/videoplayer/core/commander/AbsPlayerCommander;->setOnTimedTextListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnTimedTextListener;)V

    return-void
.end method

.method public bridge synthetic setOnVideoSizeChangedListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;)V
    .locals 0

    .prologue
    .line 43
    invoke-super {p0, p1}, Ltv/danmaku/videoplayer/core/commander/AbsPlayerCommander;->setOnVideoSizeChangedListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;)V

    return-void
.end method

.method public bridge synthetic setScreenOnWhilePlaying(Z)V
    .locals 0

    .prologue
    .line 43
    invoke-super {p0, p1}, Ltv/danmaku/videoplayer/core/commander/AbsPlayerCommander;->setScreenOnWhilePlaying(Z)V

    return-void
.end method

.method public bridge synthetic setSpeed(F)V
    .locals 0

    .prologue
    .line 43
    invoke-super {p0, p1}, Ltv/danmaku/videoplayer/core/commander/AbsPlayerCommander;->setSpeed(F)V

    return-void
.end method

.method public bridge synthetic setSurface(Landroid/view/Surface;)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 43
    invoke-super {p0, p1}, Ltv/danmaku/videoplayer/core/commander/AbsPlayerCommander;->setSurface(Landroid/view/Surface;)V

    return-void
.end method

.method public bridge synthetic setVolume(FF)V
    .locals 0

    .prologue
    .line 43
    invoke-super {p0, p1, p2}, Ltv/danmaku/videoplayer/core/commander/AbsPlayerCommander;->setVolume(FF)V

    return-void
.end method

.method public bridge synthetic setWakeMode(Landroid/content/Context;I)V
    .locals 0

    .prologue
    .line 43
    invoke-super {p0, p1, p2}, Ltv/danmaku/videoplayer/core/commander/AbsPlayerCommander;->setWakeMode(Landroid/content/Context;I)V

    return-void
.end method

.method public start()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 374
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/commander/ExoCommander;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->start()V

    .line 375
    return-void
.end method

.method public bridge synthetic stop()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 43
    invoke-super {p0}, Ltv/danmaku/videoplayer/core/commander/AbsPlayerCommander;->stop()V

    return-void
.end method
