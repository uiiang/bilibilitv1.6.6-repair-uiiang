.class public Ltv/danmaku/videoplayer/core/commander/ExoCommander;
.super Ltv/danmaku/videoplayer/core/commander/AbsPlayerCommander;
.source "ExoCommander.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ExoCommander"


# instance fields
.field private mExoPlayer:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

.field private mOnExtraInfoListener:Ltv/danmaku/videoplayer/core/videoview/IVideoView$OnExtraInfoListener;

.field private mProxy:Lmybl/ProgressiveLocalHttpProxy;


# direct methods
.method public constructor <init>(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0, p1}, Ltv/danmaku/videoplayer/core/commander/AbsPlayerCommander;-><init>(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V

    .line 49
    invoke-static {p1}, Ltv/danmaku/videoplayer/core/media/PlayerProxyUtils;->getActualPlayer(Ltv/danmaku/ijk/media/player/IMediaPlayer;)Ltv/danmaku/ijk/media/player/IMediaPlayer;

    move-result-object v0

    .line 50
    check-cast v0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    iput-object v0, p0, Ltv/danmaku/videoplayer/core/commander/ExoCommander;->mExoPlayer:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    .line 51
    return-void
.end method

.method private buildBiliDashMediaSource(Lorg/json/JSONObject;ILcom/google/android/exoplayer2/upstream/DataSource$Factory;)Lcom/google/android/exoplayer2/source/MediaSource;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 209
    :try_start_0
    const-string v0, "video"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 210
    const-string v1, "audio"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 212
    invoke-direct {p0, v0, p2}, Ltv/danmaku/videoplayer/core/commander/ExoCommander;->findMediaByQuality(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object v2

    .line 213
    if-eqz v1, :cond_48

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_48

    const/4 v0, 0x0

    .line 214
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 216
    :goto_1d
    if-nez v2, :cond_4a

    .line 217
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
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_38} :catch_38

    .line 259
    :catch_38
    move-exception v0

    .line 260
    const-string v1, "ExoCommander"

    const-string v2, "[DASH_BILI] Failed to build DASH source"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 261
    new-instance v1, Ljava/io/IOException;

    const-string v2, "DASH source error"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 214
    :cond_48
    const/4 v0, 0x0

    goto :goto_1d

    .line 220
    :cond_4a
    :try_start_4a
    const-string v1, "base_url"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 221
    const-string v3, "id"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    .line 222
    const-string v4, "ExoCommander"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[DASH_BILI] Selected video: id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", url="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    const-string v3, "video"

    invoke-direct {p0, v1, v3}, Ltv/danmaku/videoplayer/core/commander/ExoCommander;->checkUrlExpiration(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    iget-object v3, p0, Ltv/danmaku/videoplayer/core/commander/ExoCommander;->mProxy:Lmybl/ProgressiveLocalHttpProxy;

    if-nez v3, :cond_a6

    .line 227
    new-instance v3, Lmybl/ProgressiveLocalHttpProxy;

    invoke-direct {v3}, Lmybl/ProgressiveLocalHttpProxy;-><init>()V

    iput-object v3, p0, Ltv/danmaku/videoplayer/core/commander/ExoCommander;->mProxy:Lmybl/ProgressiveLocalHttpProxy;

    .line 228
    const-string v3, "ExoCommander"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[PROXY] Created local HTTP proxy on port "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Ltv/danmaku/videoplayer/core/commander/ExoCommander;->mProxy:Lmybl/ProgressiveLocalHttpProxy;

    invoke-virtual {v5}, Lmybl/ProgressiveLocalHttpProxy;->getPort()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    :cond_a6
    invoke-direct {p0, v2, v1}, Ltv/danmaku/videoplayer/core/commander/ExoCommander;->getDashUrlCandidates(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 232
    const-string v2, "ExoCommander"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[DASH_PROXY] Video URL candidates: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iget-object v2, p0, Ltv/danmaku/videoplayer/core/commander/ExoCommander;->mProxy:Lmybl/ProgressiveLocalHttpProxy;

    invoke-virtual {v2, v1}, Lmybl/ProgressiveLocalHttpProxy;->registerWithBackup(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    .line 234
    const-string v2, "ExoCommander"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[DASH_PROXY] Video proxy URL: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    new-instance v2, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;

    invoke-direct {v2, p3}, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    .line 237
    invoke-static {v1}, Lcom/google/android/exoplayer2/MediaItem;->fromUri(Ljava/lang/String;)Lcom/google/android/exoplayer2/MediaItem;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;->createMediaSource(Lcom/google/android/exoplayer2/MediaItem;)Lcom/google/android/exoplayer2/source/ProgressiveMediaSource;

    move-result-object v1

    .line 239
    if-eqz v0, :cond_189

    .line 240
    const-string v2, "base_url"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 241
    const-string v3, "id"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    .line 242
    const-string v4, "ExoCommander"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[DASH_BILI] Selected audio: id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", url="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    const-string v3, "audio"

    invoke-direct {p0, v2, v3}, Ltv/danmaku/videoplayer/core/commander/ExoCommander;->checkUrlExpiration(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    invoke-direct {p0, v0, v2}, Ltv/danmaku/videoplayer/core/commander/ExoCommander;->getDashUrlCandidates(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 247
    const-string v2, "ExoCommander"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[DASH_PROXY] Audio URL candidates: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    iget-object v2, p0, Ltv/danmaku/videoplayer/core/commander/ExoCommander;->mProxy:Lmybl/ProgressiveLocalHttpProxy;

    invoke-virtual {v2, v0}, Lmybl/ProgressiveLocalHttpProxy;->registerWithBackup(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 249
    const-string v2, "ExoCommander"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[DASH_PROXY] Audio proxy URL: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    new-instance v2, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;

    invoke-direct {v2, p3}, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    .line 252
    invoke-static {v0}, Lcom/google/android/exoplayer2/MediaItem;->fromUri(Ljava/lang/String;)Lcom/google/android/exoplayer2/MediaItem;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;->createMediaSource(Lcom/google/android/exoplayer2/MediaItem;)Lcom/google/android/exoplayer2/source/ProgressiveMediaSource;

    move-result-object v2

    .line 253
    const-string v0, "ExoCommander"

    const-string v3, "[DASH_BILI] Merging video and audio sources"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
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

    .line 258
    :goto_188
    return-object v0

    .line 257
    :cond_189
    const-string v0, "ExoCommander"

    const-string v2, "[DASH_BILI] Video only (no audio track)"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_190
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_190} :catch_38

    move-object v0, v1

    .line 258
    goto :goto_188
.end method

.method private buildHlsSource(Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)Lcom/google/android/exoplayer2/source/MediaSource;
    .locals 3

    .prologue
    .line 202
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

    .line 203
    new-instance v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;

    invoke-direct {v0, p2}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    .line 204
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaItem;->fromUri(Ljava/lang/String;)Lcom/google/android/exoplayer2/MediaItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->createMediaSource(Lcom/google/android/exoplayer2/MediaItem;)Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;

    move-result-object v0

    return-object v0
.end method

.method private buildStandardDashSource(Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)Lcom/google/android/exoplayer2/source/MediaSource;
    .locals 3

    .prologue
    .line 196
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

    .line 197
    new-instance v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;

    invoke-direct {v0, p2}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    .line 198
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaItem;->fromUri(Ljava/lang/String;)Lcom/google/android/exoplayer2/MediaItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;->createMediaSource(Lcom/google/android/exoplayer2/MediaItem;)Lcom/google/android/exoplayer2/source/dash/DashMediaSource;

    move-result-object v0

    return-object v0
.end method

.method private checkUrlExpiration(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 291
    invoke-static {p1, p2}, Ltv/danmaku/videoplayer/core/media/resource/UrlExpirationChecker;->checkUrlExpiration(Ljava/lang/String;Ljava/lang/String;)Ltv/danmaku/videoplayer/core/media/resource/UrlExpirationChecker$ExpirationInfo;

    .line 292
    return-void
.end method

.method private createDataSourceFactory()Lcom/google/android/exoplayer2/upstream/DataSource$Factory;
    .locals 3

    .prologue
    .line 170
    const-string v0, "ExoCommander"

    const-string v1, "[DATASOURCE] Creating DefaultHttpDataSource factory"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    new-instance v0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;-><init>()V

    const-string v1, "Bilibili Freedoooooom/MarkII"

    .line 173
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;->setUserAgent(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;

    move-result-object v0

    const/16 v1, 0x2710

    .line 174
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;->setConnectTimeoutMs(I)Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;

    move-result-object v0

    const/16 v1, 0x7530

    .line 175
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;->setReadTimeoutMs(I)Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;

    move-result-object v0

    const/4 v1, 0x1

    .line 176
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;->setAllowCrossProtocolRedirects(Z)Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;

    move-result-object v0

    .line 178
    const-string v1, "ExoCommander"

    const-string v2, "[DATASOURCE] DefaultHttpDataSource factory created (headers will be set by local proxy)"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    return-object v0
.end method

.method private findMediaByQuality(Lorg/json/JSONArray;I)Lorg/json/JSONObject;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 295
    if-nez p1, :cond_5

    const/4 v0, 0x0

    .line 304
    :goto_4
    return-object v0

    :cond_5
    move v0, v1

    .line 297
    :goto_6
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_1f

    .line 298
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 299
    if-eqz v2, :cond_1c

    const-string v3, "id"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    if-ne v3, p2, :cond_1c

    move-object v0, v2

    .line 300
    goto :goto_4

    .line 297
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 304
    :cond_1f
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_4
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

    .line 266
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 267
    invoke-interface {v3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 269
    if-nez p1, :cond_f

    move-object v0, v3

    .line 287
    :goto_e
    return-object v0

    .line 273
    :cond_f
    const-string v0, "backup_url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 274
    if-eqz v4, :cond_91

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_91

    .line 275
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

    .line 276
    :goto_40
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_98

    .line 277
    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v2

    .line 278
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_8e

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8e

    .line 279
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 280
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

    .line 276
    :cond_8e
    add-int/lit8 v0, v0, 0x1

    goto :goto_40

    .line 284
    :cond_91
    const-string v0, "ExoCommander"

    const-string v1, "[DASH_BACKUP] No backup URLs found"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_98
    move-object v0, v3

    .line 287
    goto/16 :goto_e
.end method

.method private getPlaybackSpeed()F
    .locals 1

    .prologue
    .line 412
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

    .line 429
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 430
    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 432
    if-eqz p1, :cond_10

    iget-object v0, p1, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mMediaResource:Lcom/bilibili/lib/media/resource/MediaResource;

    if-nez v0, :cond_19

    .line 433
    :cond_10
    const-string v0, "ExoCommander"

    const-string v2, "[BACKUP_URLS] No MediaResource available"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 495
    :goto_18
    return-object v0

    .line 437
    :cond_19
    iget-object v0, p1, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mMediaResource:Lcom/bilibili/lib/media/resource/MediaResource;

    .line 439
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

    .line 440
    :cond_2f
    const-string v0, "ExoCommander"

    const-string v2, "[BACKUP_URLS] No VodIndex or PlayIndex list available"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 441
    goto :goto_18

    .line 444
    :cond_38
    invoke-virtual {v0}, Lcom/bilibili/lib/media/resource/MediaResource;->e()I

    move-result v2

    .line 445
    if-ltz v2, :cond_48

    iget-object v3, v0, Lcom/bilibili/lib/media/resource/MediaResource;->a:Lcom/bilibili/lib/media/resource/VodIndex;

    iget-object v3, v3, Lcom/bilibili/lib/media/resource/VodIndex;->a:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v2, v3, :cond_62

    .line 446
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

    .line 447
    goto :goto_18

    .line 450
    :cond_62
    iget-object v0, v0, Lcom/bilibili/lib/media/resource/MediaResource;->a:Lcom/bilibili/lib/media/resource/VodIndex;

    iget-object v0, v0, Lcom/bilibili/lib/media/resource/VodIndex;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 451
    if-nez v0, :cond_86

    .line 452
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

    .line 453
    goto :goto_18

    .line 457
    :cond_86
    :try_start_86
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 458
    const-string v3, "f"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 459
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 461
    if-nez v0, :cond_a0

    .line 462
    const-string v0, "ExoCommander"

    const-string v2, "[BACKUP_URLS] Segment list is null"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 463
    goto/16 :goto_18

    .line 466
    :cond_a0
    check-cast v0, Ljava/util/ArrayList;

    .line 467
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_b2

    .line 468
    const-string v0, "ExoCommander"

    const-string v2, "[BACKUP_URLS] Segment list is empty"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 469
    goto/16 :goto_18

    .line 472
    :cond_b2
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 473
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 475
    const-string v3, "e"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 476
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 478
    if-eqz v0, :cond_163

    .line 479
    check-cast v0, Ljava/util/ArrayList;

    .line 480
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

    .line 482
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

    .line 483
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_ef

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_ef

    .line 484
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 485
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

    .line 491
    :catch_143
    move-exception v0

    .line 492
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

    .line 495
    goto/16 :goto_18

    .line 489
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

    .line 190
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 192
    :cond_7
    :goto_7
    return v0

    .line 191
    :cond_8
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 192
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

    .line 416
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 417
    if-eqz p2, :cond_15

    iget-object v1, p2, Ltv/danmaku/videoplayer/core/media/resource/MediaSource;->mSegmentList:Ljava/util/ArrayList;

    if-eqz v1, :cond_15

    iget-object v1, p2, Ltv/danmaku/videoplayer/core/media/resource/MediaSource;->mSegmentList:Ljava/util/ArrayList;

    .line 418
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 425
    :cond_15
    :goto_15
    return v0

    .line 421
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

    .line 422
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 425
    :cond_2e
    const/4 v0, 0x1

    goto :goto_15
.end method

.method private isStandardDash(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 184
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 186
    :cond_7
    :goto_7
    return v0

    .line 185
    :cond_8
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 186
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
    .line 398
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/commander/ExoCommander;->mExoPlayer:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    invoke-virtual {v0, p1}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->setSpeed(F)V

    .line 399
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

    .line 342
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_66

    .line 368
    :cond_d
    :goto_d
    packed-switch v0, :pswitch_data_74

    .line 388
    :cond_10
    :goto_10
    return-object v4

    .line 344
    :sswitch_11
    const-string v3, "SetOnExtraInfoListener"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    move v0, v1

    .line 346
    goto :goto_d

    .line 351
    :sswitch_1b
    const-string v3, "SetPlaybackSpeed"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    move v0, v2

    .line 353
    goto :goto_d

    .line 358
    :sswitch_25
    const-string v3, "SetAudioBalanceLevel"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 359
    const/4 v0, 0x2

    .line 360
    goto :goto_d

    .line 370
    :pswitch_2f
    array-length v0, p2

    if-lt v0, v2, :cond_10

    aget-object v0, p2, v1

    instance-of v0, v0, Ltv/danmaku/videoplayer/core/videoview/IVideoView$OnExtraInfoListener;

    if-eqz v0, :cond_10

    .line 373
    aget-object v0, p2, v1

    check-cast v0, Ltv/danmaku/videoplayer/core/videoview/IVideoView$OnExtraInfoListener;

    iput-object v0, p0, Ltv/danmaku/videoplayer/core/commander/ExoCommander;->mOnExtraInfoListener:Ltv/danmaku/videoplayer/core/videoview/IVideoView$OnExtraInfoListener;

    goto :goto_10

    .line 376
    :pswitch_3f
    array-length v0, p2

    if-lt v0, v2, :cond_10

    aget-object v0, p2, v1

    instance-of v0, v0, Ljava/lang/Float;

    if-eqz v0, :cond_10

    .line 379
    aget-object v0, p2, v1

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-direct {p0, v0}, Ltv/danmaku/videoplayer/core/commander/ExoCommander;->setPlaybackSpeed(F)V

    goto :goto_10

    .line 382
    :pswitch_54
    array-length v0, p2

    if-lt v0, v2, :cond_10

    aget-object v0, p2, v1

    instance-of v0, v0, Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;

    if-eqz v0, :cond_10

    .line 385
    aget-object v0, p2, v1

    check-cast v0, Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;

    invoke-virtual {p0, v0}, Ltv/danmaku/videoplayer/core/commander/ExoCommander;->setAudioBalanceLevel(Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;)V

    goto :goto_10

    .line 342
    nop

    :sswitch_data_66
    .sparse-switch
        -0x41c19c0f -> :sswitch_11
        -0x1978c636 -> :sswitch_1b
        0x76f4ccdc -> :sswitch_25
    .end sparse-switch

    .line 368
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
    .line 40
    invoke-super {p0}, Ltv/danmaku/videoplayer/core/commander/AbsPlayerCommander;->getAudioSessionId()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getCurrentPosition()J
    .locals 2

    .prologue
    .line 40
    invoke-super {p0}, Ltv/danmaku/videoplayer/core/commander/AbsPlayerCommander;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getDataSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    invoke-super {p0}, Ltv/danmaku/videoplayer/core/commander/AbsPlayerCommander;->getDataSource()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDuration()J
    .locals 2

    .prologue
    .line 40
    invoke-super {p0}, Ltv/danmaku/videoplayer/core/commander/AbsPlayerCommander;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getMediaInfo()Ltv/danmaku/ijk/media/player/MediaInfo;
    .locals 1

    .prologue
    .line 40
    invoke-super {p0}, Ltv/danmaku/videoplayer/core/commander/AbsPlayerCommander;->getMediaInfo()Ltv/danmaku/ijk/media/player/MediaInfo;

    move-result-object v0

    return-object v0
.end method

.method public getMediaPlayer()Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;
    .locals 1

    .prologue
    .line 408
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/commander/ExoCommander;->mExoPlayer:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    return-object v0
.end method

.method public bridge synthetic getPlayer()Ltv/danmaku/ijk/media/player/IMediaPlayer;
    .locals 1

    .prologue
    .line 40
    invoke-super {p0}, Ltv/danmaku/videoplayer/core/commander/AbsPlayerCommander;->getPlayer()Ltv/danmaku/ijk/media/player/IMediaPlayer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTrackInfo()[Ltv/danmaku/ijk/media/player/misc/ITrackInfo;
    .locals 1

    .prologue
    .line 40
    invoke-super {p0}, Ltv/danmaku/videoplayer/core/commander/AbsPlayerCommander;->getTrackInfo()[Ltv/danmaku/ijk/media/player/misc/ITrackInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getVideoHeight()I
    .locals 1

    .prologue
    .line 40
    invoke-super {p0}, Ltv/danmaku/videoplayer/core/commander/AbsPlayerCommander;->getVideoHeight()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getVideoSarDen()I
    .locals 1

    .prologue
    .line 40
    invoke-super {p0}, Ltv/danmaku/videoplayer/core/commander/AbsPlayerCommander;->getVideoSarDen()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getVideoSarNum()I
    .locals 1

    .prologue
    .line 40
    invoke-super {p0}, Ltv/danmaku/videoplayer/core/commander/AbsPlayerCommander;->getVideoSarNum()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getVideoWidth()I
    .locals 1

    .prologue
    .line 40
    invoke-super {p0}, Ltv/danmaku/videoplayer/core/commander/AbsPlayerCommander;->getVideoWidth()I

    move-result v0

    return v0
.end method

.method public bridge synthetic isLooping()Z
    .locals 1

    .prologue
    .line 40
    invoke-super {p0}, Ltv/danmaku/videoplayer/core/commander/AbsPlayerCommander;->isLooping()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isPlayable()Z
    .locals 1

    .prologue
    .line 40
    invoke-super {p0}, Ltv/danmaku/videoplayer/core/commander/AbsPlayerCommander;->isPlayable()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isPlaying()Z
    .locals 1

    .prologue
    .line 40
    invoke-super {p0}, Ltv/danmaku/videoplayer/core/commander/AbsPlayerCommander;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public onRelease()V
    .locals 0

    .prologue
    .line 394
    invoke-super {p0}, Ltv/danmaku/videoplayer/core/commander/AbsPlayerCommander;->onRelease()V

    .line 395
    return-void
.end method

.method public openVideo(Landroid/content/Context;Ltv/danmaku/videoplayer/core/videoview/IVideoParams;Landroid/net/Uri;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v8, 0x3e8

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 55
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 56
    const-string v1, "ExoCommander"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "preparing video -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    .line 59
    invoke-interface {p2}, Ltv/danmaku/videoplayer/core/videoview/IVideoParams;->getMediaSource()Ltv/danmaku/videoplayer/core/media/resource/MediaSource;

    move-result-object v1

    .line 61
    invoke-direct {p0, v4, v1}, Ltv/danmaku/videoplayer/core/commander/ExoCommander;->isMultiSegmentVideo(Ljava/lang/String;Ltv/danmaku/videoplayer/core/media/resource/MediaSource;)Z

    move-result v5

    if-eqz v5, :cond_9a

    .line 62
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ffconcat version 1.0\n"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    iget-object v1, v1, Ltv/danmaku/videoplayer/core/media/resource/MediaSource;->mSegmentList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    .line 65
    :goto_3c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 66
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/danmaku/videoplayer/core/media/resource/SegmentSource;

    .line 67
    const-string v4, "file ijksegment:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 69
    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    const-string v4, "duration "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    iget v4, v0, Ltv/danmaku/videoplayer/core/media/resource/SegmentSource;->mDuration:I

    div-int/lit16 v4, v4, 0x3e8

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 72
    iget v4, v0, Ltv/danmaku/videoplayer/core/media/resource/SegmentSource;->mDuration:I

    rem-int/lit16 v4, v4, 0x3e8

    if-eqz v4, :cond_73

    .line 73
    const-string v4, "."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    iget v0, v0, Ltv/danmaku/videoplayer/core/media/resource/SegmentSource;->mDuration:I

    rem-int/lit16 v0, v0, 0x3e8

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 76
    :cond_73
    const-string v0, "\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 78
    goto :goto_3c

    .line 79
    :cond_7c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 80
    iget-object v1, p0, Ltv/danmaku/videoplayer/core/commander/ExoCommander;->mExoPlayer:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    invoke-virtual {v1, v0}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->setDataSource(Ljava/lang/String;)V

    .line 162
    :goto_85
    sget v0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->speed_id:I

    if-ltz v0, :cond_277

    sget v0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->speed_id:I

    .line 164
    :goto_8b
    iget-object v1, p0, Ltv/danmaku/videoplayer/core/commander/ExoCommander;->mExoPlayer:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    invoke-static {v0}, Lbl/abd;->get_speed(I)F

    move-result v0

    invoke-virtual {v1, v0}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->setSpeed(F)V

    .line 166
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/commander/ExoCommander;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->prepareAsync()V

    .line 167
    return-void

    .line 82
    :cond_9a
    check-cast p2, Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    .line 84
    iget-object v1, p2, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mMediaResource:Lcom/bilibili/lib/media/resource/MediaResource;

    if-eqz v1, :cond_112

    iget-object v1, p2, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mMediaResource:Lcom/bilibili/lib/media/resource/MediaResource;

    iget-object v1, v1, Lcom/bilibili/lib/media/resource/MediaResource;->dash:Lorg/json/JSONObject;

    if-eqz v1, :cond_112

    const/4 v1, 0x1

    .line 87
    :goto_a7
    invoke-direct {p0}, Ltv/danmaku/videoplayer/core/commander/ExoCommander;->createDataSourceFactory()Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    move-result-object v6

    .line 89
    if-eqz v1, :cond_11b

    .line 90
    const-string v1, "ExoCommander"

    const-string v4, "[DASH_BILI] Bilibili DASH JSON format detected"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    const-string v1, "ExoCommander"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[DASH_BILI] video_count="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p2, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mMediaResource:Lcom/bilibili/lib/media/resource/MediaResource;

    iget-object v5, v5, Lcom/bilibili/lib/media/resource/MediaResource;->dash:Lorg/json/JSONObject;

    const-string v7, "video"

    .line 92
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", quality="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p2, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mMediaResource:Lcom/bilibili/lib/media/resource/MediaResource;

    iget v5, v5, Lcom/bilibili/lib/media/resource/MediaResource;->quality:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 91
    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget-object v1, p2, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mMediaResource:Lcom/bilibili/lib/media/resource/MediaResource;

    iget-object v4, v1, Lcom/bilibili/lib/media/resource/MediaResource;->dash:Lorg/json/JSONObject;

    .line 96
    iget-object v1, p2, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mMediaResource:Lcom/bilibili/lib/media/resource/MediaResource;

    iget v5, v1, Lcom/bilibili/lib/media/resource/MediaResource;->quality:I

    .line 98
    iget-object v1, p2, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mResolveParams:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    if-eqz v1, :cond_f8

    iget-object v0, p2, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mResolveParams:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    iget v0, v0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mProgress:I

    .line 101
    :cond_f8
    if-lez v0, :cond_288

    .line 102
    int-to-long v0, v0

    mul-long/2addr v0, v8

    .line 105
    :goto_fc
    invoke-direct {p0, v4, v5, v6}, Ltv/danmaku/videoplayer/core/commander/ExoCommander;->buildBiliDashMediaSource(Lorg/json/JSONObject;ILcom/google/android/exoplayer2/upstream/DataSource$Factory;)Lcom/google/android/exoplayer2/source/MediaSource;

    move-result-object v4

    .line 106
    const-string v5, "ExoCommander"

    const-string v6, "[DASH_BILI] Using MergingMediaSource for Bilibili DASH"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    cmp-long v2, v0, v2

    if-lez v2, :cond_114

    .line 108
    iget-object v2, p0, Ltv/danmaku/videoplayer/core/commander/ExoCommander;->mExoPlayer:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    invoke-virtual {v2, v4, v0, v1}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->setDataSourceWithSeek(Lcom/google/android/exoplayer2/source/MediaSource;J)V

    goto/16 :goto_85

    :cond_112
    move v1, v0

    .line 84
    goto :goto_a7

    .line 110
    :cond_114
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/commander/ExoCommander;->mExoPlayer:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    invoke-virtual {v0, v4}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->setDataSource(Lcom/google/android/exoplayer2/source/MediaSource;)V

    goto/16 :goto_85

    .line 112
    :cond_11b
    invoke-direct {p0, v4}, Ltv/danmaku/videoplayer/core/commander/ExoCommander;->isStandardDash(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14b

    .line 113
    const-string v0, "ExoCommander"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DASH_NATIVE] Standard DASH (MPD) format detected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    invoke-direct {p0, v4, v6}, Ltv/danmaku/videoplayer/core/commander/ExoCommander;->buildStandardDashSource(Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)Lcom/google/android/exoplayer2/source/MediaSource;

    move-result-object v0

    .line 115
    const-string v1, "ExoCommander"

    const-string v2, "[DASH_NATIVE] Using DashMediaSource for standard DASH"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-object v1, p0, Ltv/danmaku/videoplayer/core/commander/ExoCommander;->mExoPlayer:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    invoke-virtual {v1, v0}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->setDataSource(Lcom/google/android/exoplayer2/source/MediaSource;)V

    goto/16 :goto_85

    .line 117
    :cond_14b
    invoke-direct {p0, v4}, Ltv/danmaku/videoplayer/core/commander/ExoCommander;->isHls(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17b

    .line 118
    const-string v0, "ExoCommander"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HLS_NATIVE] HLS format detected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    invoke-direct {p0, v4, v6}, Ltv/danmaku/videoplayer/core/commander/ExoCommander;->buildHlsSource(Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)Lcom/google/android/exoplayer2/source/MediaSource;

    move-result-object v0

    .line 120
    const-string v1, "ExoCommander"

    const-string v2, "[HLS_NATIVE] Using HlsMediaSource for HLS"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget-object v1, p0, Ltv/danmaku/videoplayer/core/commander/ExoCommander;->mExoPlayer:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    invoke-virtual {v1, v0}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->setDataSource(Lcom/google/android/exoplayer2/source/MediaSource;)V

    goto/16 :goto_85

    .line 123
    :cond_17b
    const-string v1, "ExoCommander"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[PROGRESSIVE] Progressive format: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object v1, p2, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mResolveParams:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    if-eqz v1, :cond_19b

    iget-object v0, p2, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mResolveParams:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    iget v0, v0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mProgress:I

    .line 128
    :cond_19b
    if-lez v0, :cond_285

    .line 129
    int-to-long v0, v0

    mul-long/2addr v0, v8

    .line 130
    const-string v5, "ExoCommander"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[PROGRESSIVE] Will seek to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "ms on start"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :goto_1bd
    const-string v5, "http://"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1cd

    const-string v5, "https://"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_23a

    .line 136
    :cond_1cd
    :try_start_1cd
    iget-object v5, p0, Ltv/danmaku/videoplayer/core/commander/ExoCommander;->mProxy:Lmybl/ProgressiveLocalHttpProxy;

    if-nez v5, :cond_1f6

    .line 137
    new-instance v5, Lmybl/ProgressiveLocalHttpProxy;

    invoke-direct {v5}, Lmybl/ProgressiveLocalHttpProxy;-><init>()V

    iput-object v5, p0, Ltv/danmaku/videoplayer/core/commander/ExoCommander;->mProxy:Lmybl/ProgressiveLocalHttpProxy;

    .line 138
    const-string v5, "ExoCommander"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[PROXY] Created local HTTP proxy on port "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Ltv/danmaku/videoplayer/core/commander/ExoCommander;->mProxy:Lmybl/ProgressiveLocalHttpProxy;

    invoke-virtual {v8}, Lmybl/ProgressiveLocalHttpProxy;->getPort()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :cond_1f6
    invoke-direct {p0, p2, v4}, Ltv/danmaku/videoplayer/core/commander/ExoCommander;->getUrlCandidates(Lcom/bilibili/tv/player/basic/context/VideoViewParams;Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 142
    const-string v7, "ExoCommander"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[PROXY] Found "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " URL candidates"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v7, p0, Ltv/danmaku/videoplayer/core/commander/ExoCommander;->mProxy:Lmybl/ProgressiveLocalHttpProxy;

    invoke-virtual {v7, v5}, Lmybl/ProgressiveLocalHttpProxy;->registerWithBackup(Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    .line 145
    const-string v5, "ExoCommander"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[PROXY] Using proxy URL: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_23a
    .catch Ljava/lang/Exception; {:try_start_1cd .. :try_end_23a} :catch_252

    .line 151
    :cond_23a
    :goto_23a
    new-instance v5, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;

    invoke-direct {v5, v6}, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    .line 152
    invoke-static {v4}, Lcom/google/android/exoplayer2/MediaItem;->fromUri(Ljava/lang/String;)Lcom/google/android/exoplayer2/MediaItem;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;->createMediaSource(Lcom/google/android/exoplayer2/MediaItem;)Lcom/google/android/exoplayer2/source/ProgressiveMediaSource;

    move-result-object v4

    .line 154
    cmp-long v2, v0, v2

    if-lez v2, :cond_270

    .line 155
    iget-object v2, p0, Ltv/danmaku/videoplayer/core/commander/ExoCommander;->mExoPlayer:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    invoke-virtual {v2, v4, v0, v1}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->setDataSourceWithSeek(Lcom/google/android/exoplayer2/source/MediaSource;J)V

    goto/16 :goto_85

    .line 146
    :catch_252
    move-exception v5

    .line 147
    const-string v7, "ExoCommander"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[PROXY] Failed to create proxy: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23a

    .line 157
    :cond_270
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/commander/ExoCommander;->mExoPlayer:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    invoke-virtual {v0, v4}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->setDataSource(Lcom/google/android/exoplayer2/source/MediaSource;)V

    goto/16 :goto_85

    .line 163
    :cond_277
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/MainApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lbl/abd;->get_speed_id(Landroid/content/Context;)I

    move-result v0

    goto/16 :goto_8b

    :cond_285
    move-wide v0, v2

    goto/16 :goto_1bd

    :cond_288
    move-wide v0, v2

    goto/16 :goto_fc
.end method

.method public bridge synthetic pause()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 40
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
    .line 40
    invoke-super {p0}, Ltv/danmaku/videoplayer/core/commander/AbsPlayerCommander;->prepareAsync()V

    return-void
.end method

.method public release()V
    .locals 4

    .prologue
    .line 499
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/commander/ExoCommander;->mProxy:Lmybl/ProgressiveLocalHttpProxy;

    if-eqz v0, :cond_13

    .line 501
    :try_start_4
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/commander/ExoCommander;->mProxy:Lmybl/ProgressiveLocalHttpProxy;

    invoke-virtual {v0}, Lmybl/ProgressiveLocalHttpProxy;->close()V

    .line 502
    const-string v0, "ExoCommander"

    const-string v1, "[PROXY] Local HTTP proxy closed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_10} :catch_14

    .line 506
    :goto_10
    const/4 v0, 0x0

    iput-object v0, p0, Ltv/danmaku/videoplayer/core/commander/ExoCommander;->mProxy:Lmybl/ProgressiveLocalHttpProxy;

    .line 508
    :cond_13
    return-void

    .line 503
    :catch_14
    move-exception v0

    .line 504
    const-string v1, "ExoCommander"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[PROXY] Error closing proxy: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10
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

    .line 315
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 316
    const v1, -0x2c46c472

    if-ne v0, v1, :cond_18

    .line 317
    const-string v0, "GetAsyncPos"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 329
    :cond_14
    :goto_14
    packed-switch v2, :pswitch_data_42

    .line 335
    :goto_17
    return-object p2

    .line 321
    :cond_18
    const v1, 0x53b0d356

    if-ne v0, v1, :cond_14

    .line 322
    const-string v0, "GetPlaybackSpeed"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    goto :goto_14

    .line 331
    :pswitch_26
    invoke-direct {p0}, Ltv/danmaku/videoplayer/core/commander/ExoCommander;->getPlaybackSpeed()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Ltv/danmaku/videoplayer/core/commander/ExoCommander;->cast(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_17

    .line 333
    :pswitch_33
    invoke-virtual {p0}, Ltv/danmaku/videoplayer/core/commander/ExoCommander;->getCurrentPosition()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Ltv/danmaku/videoplayer/core/commander/ExoCommander;->cast(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_17

    .line 329
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
    .line 40
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
    .line 40
    invoke-super {p0, p1, p2}, Ltv/danmaku/videoplayer/core/commander/AbsPlayerCommander;->seekTo(J)V

    return-void
.end method

.method public setAudioBalanceLevel(Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;)V
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/commander/ExoCommander;->mExoPlayer:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    if-eqz v0, :cond_9

    .line 403
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/commander/ExoCommander;->mExoPlayer:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    invoke-virtual {v0, p1}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->setAudioBalanceLevel(Ltv/danmaku/videoplayer/core/media/exo/AudioBalanceLevel;)V

    .line 405
    :cond_9
    return-void
.end method

.method public bridge synthetic setAudioStreamType(I)V
    .locals 0

    .prologue
    .line 40
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
    .line 40
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
    .line 40
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
    .line 40
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
    .line 40
    invoke-super {p0, p1}, Ltv/danmaku/videoplayer/core/commander/AbsPlayerCommander;->setDataSource(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setDataSource(Ltv/danmaku/ijk/media/player/misc/IMediaDataSource;)V
    .locals 0

    .prologue
    .line 40
    invoke-super {p0, p1}, Ltv/danmaku/videoplayer/core/commander/AbsPlayerCommander;->setDataSource(Ltv/danmaku/ijk/media/player/misc/IMediaDataSource;)V

    return-void
.end method

.method public bridge synthetic setDisplay(Landroid/view/SurfaceHolder;)V
    .locals 0

    .prologue
    .line 40
    invoke-super {p0, p1}, Ltv/danmaku/videoplayer/core/commander/AbsPlayerCommander;->setDisplay(Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method public bridge synthetic setKeepInBackground(Z)V
    .locals 0

    .prologue
    .line 40
    invoke-super {p0, p1}, Ltv/danmaku/videoplayer/core/commander/AbsPlayerCommander;->setKeepInBackground(Z)V

    return-void
.end method

.method public bridge synthetic setLogEnabled(Z)V
    .locals 0

    .prologue
    .line 40
    invoke-super {p0, p1}, Ltv/danmaku/videoplayer/core/commander/AbsPlayerCommander;->setLogEnabled(Z)V

    return-void
.end method

.method public bridge synthetic setLooping(Z)V
    .locals 0

    .prologue
    .line 40
    invoke-super {p0, p1}, Ltv/danmaku/videoplayer/core/commander/AbsPlayerCommander;->setLooping(Z)V

    return-void
.end method

.method public bridge synthetic setOnBufferingUpdateListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;)V
    .locals 0

    .prologue
    .line 40
    invoke-super {p0, p1}, Ltv/danmaku/videoplayer/core/commander/AbsPlayerCommander;->setOnBufferingUpdateListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;)V

    return-void
.end method

.method public bridge synthetic setOnCompletionListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;)V
    .locals 0

    .prologue
    .line 40
    invoke-super {p0, p1}, Ltv/danmaku/videoplayer/core/commander/AbsPlayerCommander;->setOnCompletionListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;)V

    return-void
.end method

.method public bridge synthetic setOnErrorListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;)V
    .locals 0

    .prologue
    .line 40
    invoke-super {p0, p1}, Ltv/danmaku/videoplayer/core/commander/AbsPlayerCommander;->setOnErrorListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;)V

    return-void
.end method

.method public bridge synthetic setOnInfoListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;)V
    .locals 0

    .prologue
    .line 40
    invoke-super {p0, p1}, Ltv/danmaku/videoplayer/core/commander/AbsPlayerCommander;->setOnInfoListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;)V

    return-void
.end method

.method public bridge synthetic setOnPreparedListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;)V
    .locals 0

    .prologue
    .line 40
    invoke-super {p0, p1}, Ltv/danmaku/videoplayer/core/commander/AbsPlayerCommander;->setOnPreparedListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;)V

    return-void
.end method

.method public bridge synthetic setOnSeekCompleteListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;)V
    .locals 0

    .prologue
    .line 40
    invoke-super {p0, p1}, Ltv/danmaku/videoplayer/core/commander/AbsPlayerCommander;->setOnSeekCompleteListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;)V

    return-void
.end method

.method public bridge synthetic setOnTimedTextListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnTimedTextListener;)V
    .locals 0

    .prologue
    .line 40
    invoke-super {p0, p1}, Ltv/danmaku/videoplayer/core/commander/AbsPlayerCommander;->setOnTimedTextListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnTimedTextListener;)V

    return-void
.end method

.method public bridge synthetic setOnVideoSizeChangedListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;)V
    .locals 0

    .prologue
    .line 40
    invoke-super {p0, p1}, Ltv/danmaku/videoplayer/core/commander/AbsPlayerCommander;->setOnVideoSizeChangedListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;)V

    return-void
.end method

.method public bridge synthetic setScreenOnWhilePlaying(Z)V
    .locals 0

    .prologue
    .line 40
    invoke-super {p0, p1}, Ltv/danmaku/videoplayer/core/commander/AbsPlayerCommander;->setScreenOnWhilePlaying(Z)V

    return-void
.end method

.method public bridge synthetic setSpeed(F)V
    .locals 0

    .prologue
    .line 40
    invoke-super {p0, p1}, Ltv/danmaku/videoplayer/core/commander/AbsPlayerCommander;->setSpeed(F)V

    return-void
.end method

.method public bridge synthetic setSurface(Landroid/view/Surface;)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 40
    invoke-super {p0, p1}, Ltv/danmaku/videoplayer/core/commander/AbsPlayerCommander;->setSurface(Landroid/view/Surface;)V

    return-void
.end method

.method public bridge synthetic setVolume(FF)V
    .locals 0

    .prologue
    .line 40
    invoke-super {p0, p1, p2}, Ltv/danmaku/videoplayer/core/commander/AbsPlayerCommander;->setVolume(FF)V

    return-void
.end method

.method public bridge synthetic setWakeMode(Landroid/content/Context;I)V
    .locals 0

    .prologue
    .line 40
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
    .line 309
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/commander/ExoCommander;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->start()V

    .line 310
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
    .line 40
    invoke-super {p0}, Ltv/danmaku/videoplayer/core/commander/AbsPlayerCommander;->stop()V

    return-void
.end method
