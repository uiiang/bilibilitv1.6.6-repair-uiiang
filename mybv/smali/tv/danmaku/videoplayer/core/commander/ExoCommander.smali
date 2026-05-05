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
    .line 44
    invoke-direct {p0, p1}, Ltv/danmaku/videoplayer/core/commander/AbsPlayerCommander;-><init>(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V

    .line 45
    invoke-static {p1}, Ltv/danmaku/videoplayer/core/media/PlayerProxyUtils;->getActualPlayer(Ltv/danmaku/ijk/media/player/IMediaPlayer;)Ltv/danmaku/ijk/media/player/IMediaPlayer;

    move-result-object v0

    .line 46
    check-cast v0, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    iput-object v0, p0, Ltv/danmaku/videoplayer/core/commander/ExoCommander;->mExoPlayer:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    .line 47
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
    .line 172
    :try_start_0
    const-string v0, "video"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 173
    const-string v1, "audio"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 175
    invoke-direct {p0, v0, p2}, Ltv/danmaku/videoplayer/core/commander/ExoCommander;->findMediaByQuality(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object v2

    .line 176
    if-eqz v1, :cond_48

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_48

    const/4 v0, 0x0

    .line 177
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 179
    :goto_1d
    if-nez v2, :cond_4a

    .line 180
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

    .line 202
    :catch_38
    move-exception v0

    .line 203
    const-string v1, "ExoCommander"

    const-string v2, "[DASH_BILI] Failed to build DASH source"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 204
    new-instance v1, Ljava/io/IOException;

    const-string v2, "DASH source error"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 177
    :cond_48
    const/4 v0, 0x0

    goto :goto_1d

    .line 183
    :cond_4a
    :try_start_4a
    const-string v1, "base_url"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 184
    const-string v3, "id"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    .line 185
    const-string v3, "ExoCommander"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[DASH_BILI] Selected video: id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", url="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    new-instance v2, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;

    invoke-direct {v2, p3}, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    .line 188
    invoke-static {v1}, Lcom/google/android/exoplayer2/MediaItem;->fromUri(Ljava/lang/String;)Lcom/google/android/exoplayer2/MediaItem;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;->createMediaSource(Lcom/google/android/exoplayer2/MediaItem;)Lcom/google/android/exoplayer2/source/ProgressiveMediaSource;

    move-result-object v1

    .line 190
    if-eqz v0, :cond_da

    .line 191
    const-string v2, "base_url"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 192
    const-string v3, "id"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 193
    const-string v3, "ExoCommander"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[DASH_BILI] Selected audio: id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", url="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    new-instance v0, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;

    invoke-direct {v0, p3}, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    .line 195
    invoke-static {v2}, Lcom/google/android/exoplayer2/MediaItem;->fromUri(Ljava/lang/String;)Lcom/google/android/exoplayer2/MediaItem;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;->createMediaSource(Lcom/google/android/exoplayer2/MediaItem;)Lcom/google/android/exoplayer2/source/ProgressiveMediaSource;

    move-result-object v2

    .line 196
    const-string v0, "ExoCommander"

    const-string v3, "[DASH_BILI] Merging video and audio sources"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
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

    .line 201
    :goto_d9
    return-object v0

    .line 200
    :cond_da
    const-string v0, "ExoCommander"

    const-string v2, "[DASH_BILI] Video only (no audio track)"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e1
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_e1} :catch_38

    move-object v0, v1

    .line 201
    goto :goto_d9
.end method

.method private buildHlsSource(Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)Lcom/google/android/exoplayer2/source/MediaSource;
    .locals 3

    .prologue
    .line 165
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

    .line 166
    new-instance v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;

    invoke-direct {v0, p2}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    .line 167
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaItem;->fromUri(Ljava/lang/String;)Lcom/google/android/exoplayer2/MediaItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->createMediaSource(Lcom/google/android/exoplayer2/MediaItem;)Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;

    move-result-object v0

    return-object v0
.end method

.method private buildStandardDashSource(Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)Lcom/google/android/exoplayer2/source/MediaSource;
    .locals 3

    .prologue
    .line 159
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

    .line 160
    new-instance v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;

    invoke-direct {v0, p2}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    .line 161
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaItem;->fromUri(Ljava/lang/String;)Lcom/google/android/exoplayer2/MediaItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;->createMediaSource(Lcom/google/android/exoplayer2/MediaItem;)Lcom/google/android/exoplayer2/source/dash/DashMediaSource;

    move-result-object v0

    return-object v0
.end method

.method private createDataSourceFactory()Lcom/google/android/exoplayer2/upstream/DataSource$Factory;
    .locals 4

    .prologue
    .line 134
    new-instance v0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;-><init>()V

    const-string v1, "Bilibili Freedoooooom/MarkII"

    .line 135
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;->setUserAgent(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;

    move-result-object v0

    const/16 v1, 0x2710

    .line 136
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;->setConnectTimeoutMs(I)Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;

    move-result-object v0

    const/16 v1, 0x7530

    .line 137
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;->setReadTimeoutMs(I)Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;

    move-result-object v0

    .line 139
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 140
    const-string v2, "Referer"

    const-string v3, "https://www.bilibili.com"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;->setDefaultRequestProperties(Ljava/util/Map;)Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;

    .line 143
    return-object v0
.end method

.method private findMediaByQuality(Lorg/json/JSONArray;I)Lorg/json/JSONObject;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 209
    if-nez p1, :cond_5

    const/4 v0, 0x0

    .line 218
    :goto_4
    return-object v0

    :cond_5
    move v0, v1

    .line 211
    :goto_6
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_1f

    .line 212
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 213
    if-eqz v2, :cond_1c

    const-string v3, "id"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    if-ne v3, p2, :cond_1c

    move-object v0, v2

    .line 214
    goto :goto_4

    .line 211
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 218
    :cond_1f
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_4
.end method

.method private getPlaybackSpeed()F
    .locals 1

    .prologue
    .line 303
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method private isHls(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 153
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 155
    :cond_7
    :goto_7
    return v0

    .line 154
    :cond_8
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 155
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

    .line 307
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 308
    if-eqz p2, :cond_15

    iget-object v1, p2, Ltv/danmaku/videoplayer/core/media/resource/MediaSource;->mSegmentList:Ljava/util/ArrayList;

    if-eqz v1, :cond_15

    iget-object v1, p2, Ltv/danmaku/videoplayer/core/media/resource/MediaSource;->mSegmentList:Ljava/util/ArrayList;

    .line 309
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 316
    :cond_15
    :goto_15
    return v0

    .line 312
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

    .line 313
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 316
    :cond_2e
    const/4 v0, 0x1

    goto :goto_15
.end method

.method private isStandardDash(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 147
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 149
    :cond_7
    :goto_7
    return v0

    .line 148
    :cond_8
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 149
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
    .line 299
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/commander/ExoCommander;->mExoPlayer:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    invoke-virtual {v0, p1}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->setSpeed(F)V

    .line 300
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

    .line 256
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_4a

    .line 275
    :cond_d
    :goto_d
    packed-switch v0, :pswitch_data_54

    .line 289
    :cond_10
    :goto_10
    return-object v4

    .line 258
    :sswitch_11
    const-string v3, "SetOnExtraInfoListener"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    move v0, v1

    .line 260
    goto :goto_d

    .line 265
    :sswitch_1b
    const-string v3, "SetPlaybackSpeed"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    move v0, v2

    .line 267
    goto :goto_d

    .line 277
    :pswitch_25
    array-length v0, p2

    if-lt v0, v2, :cond_10

    aget-object v0, p2, v1

    instance-of v0, v0, Ltv/danmaku/videoplayer/core/videoview/IVideoView$OnExtraInfoListener;

    if-eqz v0, :cond_10

    .line 280
    aget-object v0, p2, v1

    check-cast v0, Ltv/danmaku/videoplayer/core/videoview/IVideoView$OnExtraInfoListener;

    iput-object v0, p0, Ltv/danmaku/videoplayer/core/commander/ExoCommander;->mOnExtraInfoListener:Ltv/danmaku/videoplayer/core/videoview/IVideoView$OnExtraInfoListener;

    goto :goto_10

    .line 283
    :pswitch_35
    array-length v0, p2

    if-lt v0, v2, :cond_10

    aget-object v0, p2, v1

    instance-of v0, v0, Ljava/lang/Float;

    if-eqz v0, :cond_10

    .line 286
    aget-object v0, p2, v1

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-direct {p0, v0}, Ltv/danmaku/videoplayer/core/commander/ExoCommander;->setPlaybackSpeed(F)V

    goto :goto_10

    .line 256
    :sswitch_data_4a
    .sparse-switch
        -0x41c19c0f -> :sswitch_11
        -0x1978c636 -> :sswitch_1b
    .end sparse-switch

    .line 275
    :pswitch_data_54
    .packed-switch 0x0
        :pswitch_25
        :pswitch_35
    .end packed-switch
.end method

.method public bridge synthetic getAudioSessionId()I
    .locals 1

    .prologue
    .line 37
    invoke-super {p0}, Ltv/danmaku/videoplayer/core/commander/AbsPlayerCommander;->getAudioSessionId()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getCurrentPosition()J
    .locals 2

    .prologue
    .line 37
    invoke-super {p0}, Ltv/danmaku/videoplayer/core/commander/AbsPlayerCommander;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getDataSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    invoke-super {p0}, Ltv/danmaku/videoplayer/core/commander/AbsPlayerCommander;->getDataSource()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDuration()J
    .locals 2

    .prologue
    .line 37
    invoke-super {p0}, Ltv/danmaku/videoplayer/core/commander/AbsPlayerCommander;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getMediaInfo()Ltv/danmaku/ijk/media/player/MediaInfo;
    .locals 1

    .prologue
    .line 37
    invoke-super {p0}, Ltv/danmaku/videoplayer/core/commander/AbsPlayerCommander;->getMediaInfo()Ltv/danmaku/ijk/media/player/MediaInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPlayer()Ltv/danmaku/ijk/media/player/IMediaPlayer;
    .locals 1

    .prologue
    .line 37
    invoke-super {p0}, Ltv/danmaku/videoplayer/core/commander/AbsPlayerCommander;->getPlayer()Ltv/danmaku/ijk/media/player/IMediaPlayer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTrackInfo()[Ltv/danmaku/ijk/media/player/misc/ITrackInfo;
    .locals 1

    .prologue
    .line 37
    invoke-super {p0}, Ltv/danmaku/videoplayer/core/commander/AbsPlayerCommander;->getTrackInfo()[Ltv/danmaku/ijk/media/player/misc/ITrackInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getVideoHeight()I
    .locals 1

    .prologue
    .line 37
    invoke-super {p0}, Ltv/danmaku/videoplayer/core/commander/AbsPlayerCommander;->getVideoHeight()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getVideoSarDen()I
    .locals 1

    .prologue
    .line 37
    invoke-super {p0}, Ltv/danmaku/videoplayer/core/commander/AbsPlayerCommander;->getVideoSarDen()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getVideoSarNum()I
    .locals 1

    .prologue
    .line 37
    invoke-super {p0}, Ltv/danmaku/videoplayer/core/commander/AbsPlayerCommander;->getVideoSarNum()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getVideoWidth()I
    .locals 1

    .prologue
    .line 37
    invoke-super {p0}, Ltv/danmaku/videoplayer/core/commander/AbsPlayerCommander;->getVideoWidth()I

    move-result v0

    return v0
.end method

.method public bridge synthetic isLooping()Z
    .locals 1

    .prologue
    .line 37
    invoke-super {p0}, Ltv/danmaku/videoplayer/core/commander/AbsPlayerCommander;->isLooping()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isPlayable()Z
    .locals 1

    .prologue
    .line 37
    invoke-super {p0}, Ltv/danmaku/videoplayer/core/commander/AbsPlayerCommander;->isPlayable()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isPlaying()Z
    .locals 1

    .prologue
    .line 37
    invoke-super {p0}, Ltv/danmaku/videoplayer/core/commander/AbsPlayerCommander;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public onRelease()V
    .locals 0

    .prologue
    .line 295
    invoke-super {p0}, Ltv/danmaku/videoplayer/core/commander/AbsPlayerCommander;->onRelease()V

    .line 296
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
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 51
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 52
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

    .line 54
    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    .line 55
    invoke-interface {p2}, Ltv/danmaku/videoplayer/core/videoview/IVideoParams;->getMediaSource()Ltv/danmaku/videoplayer/core/media/resource/MediaSource;

    move-result-object v1

    .line 57
    invoke-direct {p0, v4, v1}, Ltv/danmaku/videoplayer/core/commander/ExoCommander;->isMultiSegmentVideo(Ljava/lang/String;Ltv/danmaku/videoplayer/core/media/resource/MediaSource;)Z

    move-result v5

    if-eqz v5, :cond_98

    .line 58
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ffconcat version 1.0\n"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    iget-object v1, v1, Ltv/danmaku/videoplayer/core/media/resource/MediaSource;->mSegmentList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    .line 61
    :goto_3a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7a

    .line 62
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/danmaku/videoplayer/core/media/resource/SegmentSource;

    .line 63
    const-string v4, "file ijksegment:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 65
    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    const-string v4, "duration "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    iget v4, v0, Ltv/danmaku/videoplayer/core/media/resource/SegmentSource;->mDuration:I

    div-int/lit16 v4, v4, 0x3e8

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 68
    iget v4, v0, Ltv/danmaku/videoplayer/core/media/resource/SegmentSource;->mDuration:I

    rem-int/lit16 v4, v4, 0x3e8

    if-eqz v4, :cond_71

    .line 69
    const-string v4, "."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    iget v0, v0, Ltv/danmaku/videoplayer/core/media/resource/SegmentSource;->mDuration:I

    rem-int/lit16 v0, v0, 0x3e8

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 72
    :cond_71
    const-string v0, "\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 74
    goto :goto_3a

    .line 75
    :cond_7a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 76
    iget-object v1, p0, Ltv/danmaku/videoplayer/core/commander/ExoCommander;->mExoPlayer:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    invoke-virtual {v1, v0}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->setDataSource(Ljava/lang/String;)V

    .line 126
    :goto_83
    sget v0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->speed_id:I

    if-ltz v0, :cond_1a7

    sget v0, Lcom/bilibili/tv/player/widget/PlayerMenuRight;->speed_id:I

    .line 128
    :goto_89
    iget-object v1, p0, Ltv/danmaku/videoplayer/core/commander/ExoCommander;->mExoPlayer:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    invoke-static {v0}, Lbl/abd;->get_speed(I)F

    move-result v0

    invoke-virtual {v1, v0}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->setSpeed(F)V

    .line 130
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/commander/ExoCommander;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->prepareAsync()V

    .line 131
    return-void

    .line 78
    :cond_98
    check-cast p2, Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    .line 80
    iget-object v1, p2, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mMediaResource:Lcom/bilibili/lib/media/resource/MediaResource;

    if-eqz v1, :cond_112

    iget-object v1, p2, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mMediaResource:Lcom/bilibili/lib/media/resource/MediaResource;

    iget-object v1, v1, Lcom/bilibili/lib/media/resource/MediaResource;->dash:Lorg/json/JSONObject;

    if-eqz v1, :cond_112

    const/4 v1, 0x1

    .line 83
    :goto_a5
    invoke-direct {p0}, Ltv/danmaku/videoplayer/core/commander/ExoCommander;->createDataSourceFactory()Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    move-result-object v5

    .line 85
    if-eqz v1, :cond_11b

    .line 86
    const-string v1, "ExoCommander"

    const-string v4, "[DASH_BILI] Bilibili DASH JSON format detected"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    const-string v1, "ExoCommander"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[DASH_BILI] video_count="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p2, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mMediaResource:Lcom/bilibili/lib/media/resource/MediaResource;

    iget-object v6, v6, Lcom/bilibili/lib/media/resource/MediaResource;->dash:Lorg/json/JSONObject;

    const-string v7, "video"

    .line 88
    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", quality="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p2, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mMediaResource:Lcom/bilibili/lib/media/resource/MediaResource;

    iget v6, v6, Lcom/bilibili/lib/media/resource/MediaResource;->quality:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 87
    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object v1, p2, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mMediaResource:Lcom/bilibili/lib/media/resource/MediaResource;

    iget-object v4, v1, Lcom/bilibili/lib/media/resource/MediaResource;->dash:Lorg/json/JSONObject;

    .line 92
    iget-object v1, p2, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mMediaResource:Lcom/bilibili/lib/media/resource/MediaResource;

    iget v6, v1, Lcom/bilibili/lib/media/resource/MediaResource;->quality:I

    .line 94
    iget-object v1, p2, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mResolveParams:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    if-eqz v1, :cond_f6

    iget-object v0, p2, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mResolveParams:Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    iget v0, v0, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mProgress:I

    .line 97
    :cond_f6
    if-lez v0, :cond_1b5

    .line 98
    int-to-long v0, v0

    const-wide/16 v8, 0x3e8

    mul-long/2addr v0, v8

    .line 101
    :goto_fc
    invoke-direct {p0, v4, v6, v5}, Ltv/danmaku/videoplayer/core/commander/ExoCommander;->buildBiliDashMediaSource(Lorg/json/JSONObject;ILcom/google/android/exoplayer2/upstream/DataSource$Factory;)Lcom/google/android/exoplayer2/source/MediaSource;

    move-result-object v4

    .line 102
    const-string v5, "ExoCommander"

    const-string v6, "[DASH_BILI] Using MergingMediaSource for Bilibili DASH"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    cmp-long v2, v0, v2

    if-lez v2, :cond_114

    .line 104
    iget-object v2, p0, Ltv/danmaku/videoplayer/core/commander/ExoCommander;->mExoPlayer:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    invoke-virtual {v2, v4, v0, v1}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->setDataSourceWithSeek(Lcom/google/android/exoplayer2/source/MediaSource;J)V

    goto/16 :goto_83

    :cond_112
    move v1, v0

    .line 80
    goto :goto_a5

    .line 106
    :cond_114
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/commander/ExoCommander;->mExoPlayer:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    invoke-virtual {v0, v4}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->setDataSource(Lcom/google/android/exoplayer2/source/MediaSource;)V

    goto/16 :goto_83

    .line 108
    :cond_11b
    invoke-direct {p0, v4}, Ltv/danmaku/videoplayer/core/commander/ExoCommander;->isStandardDash(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14b

    .line 109
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

    .line 110
    invoke-direct {p0, v4, v5}, Ltv/danmaku/videoplayer/core/commander/ExoCommander;->buildStandardDashSource(Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)Lcom/google/android/exoplayer2/source/MediaSource;

    move-result-object v0

    .line 111
    const-string v1, "ExoCommander"

    const-string v2, "[DASH_NATIVE] Using DashMediaSource for standard DASH"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-object v1, p0, Ltv/danmaku/videoplayer/core/commander/ExoCommander;->mExoPlayer:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    invoke-virtual {v1, v0}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->setDataSource(Lcom/google/android/exoplayer2/source/MediaSource;)V

    goto/16 :goto_83

    .line 113
    :cond_14b
    invoke-direct {p0, v4}, Ltv/danmaku/videoplayer/core/commander/ExoCommander;->isHls(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17b

    .line 114
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

    .line 115
    invoke-direct {p0, v4, v5}, Ltv/danmaku/videoplayer/core/commander/ExoCommander;->buildHlsSource(Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)Lcom/google/android/exoplayer2/source/MediaSource;

    move-result-object v0

    .line 116
    const-string v1, "ExoCommander"

    const-string v2, "[HLS_NATIVE] Using HlsMediaSource for HLS"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object v1, p0, Ltv/danmaku/videoplayer/core/commander/ExoCommander;->mExoPlayer:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    invoke-virtual {v1, v0}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->setDataSource(Lcom/google/android/exoplayer2/source/MediaSource;)V

    goto/16 :goto_83

    .line 119
    :cond_17b
    const-string v0, "ExoCommander"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PROGRESSIVE] Progressive format: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    new-instance v0, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;

    invoke-direct {v0, v5}, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    .line 121
    invoke-static {v4}, Lcom/google/android/exoplayer2/MediaItem;->fromUri(Ljava/lang/String;)Lcom/google/android/exoplayer2/MediaItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;->createMediaSource(Lcom/google/android/exoplayer2/MediaItem;)Lcom/google/android/exoplayer2/source/ProgressiveMediaSource;

    move-result-object v0

    .line 122
    iget-object v1, p0, Ltv/danmaku/videoplayer/core/commander/ExoCommander;->mExoPlayer:Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;

    invoke-virtual {v1, v0}, Ltv/danmaku/videoplayer/core/media/exo/ExoPlayerImpl;->setDataSource(Lcom/google/android/exoplayer2/source/MediaSource;)V

    goto/16 :goto_83

    .line 127
    :cond_1a7
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/MainApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lbl/abd;->get_speed_id(Landroid/content/Context;)I

    move-result v0

    goto/16 :goto_89

    :cond_1b5
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
    .line 37
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
    .line 37
    invoke-super {p0}, Ltv/danmaku/videoplayer/core/commander/AbsPlayerCommander;->prepareAsync()V

    return-void
.end method

.method public bridge synthetic release()V
    .locals 0

    .prologue
    .line 37
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

    .line 229
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 230
    const v1, -0x2c46c472

    if-ne v0, v1, :cond_18

    .line 231
    const-string v0, "GetAsyncPos"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 243
    :cond_14
    :goto_14
    packed-switch v2, :pswitch_data_42

    .line 249
    :goto_17
    return-object p2

    .line 235
    :cond_18
    const v1, 0x53b0d356

    if-ne v0, v1, :cond_14

    .line 236
    const-string v0, "GetPlaybackSpeed"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    goto :goto_14

    .line 245
    :pswitch_26
    invoke-direct {p0}, Ltv/danmaku/videoplayer/core/commander/ExoCommander;->getPlaybackSpeed()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Ltv/danmaku/videoplayer/core/commander/ExoCommander;->cast(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_17

    .line 247
    :pswitch_33
    invoke-virtual {p0}, Ltv/danmaku/videoplayer/core/commander/ExoCommander;->getCurrentPosition()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Ltv/danmaku/videoplayer/core/commander/ExoCommander;->cast(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_17

    .line 243
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
    .line 37
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
    .line 37
    invoke-super {p0, p1, p2}, Ltv/danmaku/videoplayer/core/commander/AbsPlayerCommander;->seekTo(J)V

    return-void
.end method

.method public bridge synthetic setAudioStreamType(I)V
    .locals 0

    .prologue
    .line 37
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
    .line 37
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
    .line 37
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
    .line 37
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
    .line 37
    invoke-super {p0, p1}, Ltv/danmaku/videoplayer/core/commander/AbsPlayerCommander;->setDataSource(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setDataSource(Ltv/danmaku/ijk/media/player/misc/IMediaDataSource;)V
    .locals 0

    .prologue
    .line 37
    invoke-super {p0, p1}, Ltv/danmaku/videoplayer/core/commander/AbsPlayerCommander;->setDataSource(Ltv/danmaku/ijk/media/player/misc/IMediaDataSource;)V

    return-void
.end method

.method public bridge synthetic setDisplay(Landroid/view/SurfaceHolder;)V
    .locals 0

    .prologue
    .line 37
    invoke-super {p0, p1}, Ltv/danmaku/videoplayer/core/commander/AbsPlayerCommander;->setDisplay(Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method public bridge synthetic setKeepInBackground(Z)V
    .locals 0

    .prologue
    .line 37
    invoke-super {p0, p1}, Ltv/danmaku/videoplayer/core/commander/AbsPlayerCommander;->setKeepInBackground(Z)V

    return-void
.end method

.method public bridge synthetic setLogEnabled(Z)V
    .locals 0

    .prologue
    .line 37
    invoke-super {p0, p1}, Ltv/danmaku/videoplayer/core/commander/AbsPlayerCommander;->setLogEnabled(Z)V

    return-void
.end method

.method public bridge synthetic setLooping(Z)V
    .locals 0

    .prologue
    .line 37
    invoke-super {p0, p1}, Ltv/danmaku/videoplayer/core/commander/AbsPlayerCommander;->setLooping(Z)V

    return-void
.end method

.method public bridge synthetic setOnBufferingUpdateListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;)V
    .locals 0

    .prologue
    .line 37
    invoke-super {p0, p1}, Ltv/danmaku/videoplayer/core/commander/AbsPlayerCommander;->setOnBufferingUpdateListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;)V

    return-void
.end method

.method public bridge synthetic setOnCompletionListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;)V
    .locals 0

    .prologue
    .line 37
    invoke-super {p0, p1}, Ltv/danmaku/videoplayer/core/commander/AbsPlayerCommander;->setOnCompletionListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;)V

    return-void
.end method

.method public bridge synthetic setOnErrorListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;)V
    .locals 0

    .prologue
    .line 37
    invoke-super {p0, p1}, Ltv/danmaku/videoplayer/core/commander/AbsPlayerCommander;->setOnErrorListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;)V

    return-void
.end method

.method public bridge synthetic setOnInfoListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;)V
    .locals 0

    .prologue
    .line 37
    invoke-super {p0, p1}, Ltv/danmaku/videoplayer/core/commander/AbsPlayerCommander;->setOnInfoListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;)V

    return-void
.end method

.method public bridge synthetic setOnPreparedListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;)V
    .locals 0

    .prologue
    .line 37
    invoke-super {p0, p1}, Ltv/danmaku/videoplayer/core/commander/AbsPlayerCommander;->setOnPreparedListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;)V

    return-void
.end method

.method public bridge synthetic setOnSeekCompleteListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;)V
    .locals 0

    .prologue
    .line 37
    invoke-super {p0, p1}, Ltv/danmaku/videoplayer/core/commander/AbsPlayerCommander;->setOnSeekCompleteListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;)V

    return-void
.end method

.method public bridge synthetic setOnTimedTextListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnTimedTextListener;)V
    .locals 0

    .prologue
    .line 37
    invoke-super {p0, p1}, Ltv/danmaku/videoplayer/core/commander/AbsPlayerCommander;->setOnTimedTextListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnTimedTextListener;)V

    return-void
.end method

.method public bridge synthetic setOnVideoSizeChangedListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;)V
    .locals 0

    .prologue
    .line 37
    invoke-super {p0, p1}, Ltv/danmaku/videoplayer/core/commander/AbsPlayerCommander;->setOnVideoSizeChangedListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;)V

    return-void
.end method

.method public bridge synthetic setScreenOnWhilePlaying(Z)V
    .locals 0

    .prologue
    .line 37
    invoke-super {p0, p1}, Ltv/danmaku/videoplayer/core/commander/AbsPlayerCommander;->setScreenOnWhilePlaying(Z)V

    return-void
.end method

.method public bridge synthetic setSpeed(F)V
    .locals 0

    .prologue
    .line 37
    invoke-super {p0, p1}, Ltv/danmaku/videoplayer/core/commander/AbsPlayerCommander;->setSpeed(F)V

    return-void
.end method

.method public bridge synthetic setSurface(Landroid/view/Surface;)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 37
    invoke-super {p0, p1}, Ltv/danmaku/videoplayer/core/commander/AbsPlayerCommander;->setSurface(Landroid/view/Surface;)V

    return-void
.end method

.method public bridge synthetic setVolume(FF)V
    .locals 0

    .prologue
    .line 37
    invoke-super {p0, p1, p2}, Ltv/danmaku/videoplayer/core/commander/AbsPlayerCommander;->setVolume(FF)V

    return-void
.end method

.method public bridge synthetic setWakeMode(Landroid/content/Context;I)V
    .locals 0

    .prologue
    .line 37
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
    .line 223
    iget-object v0, p0, Ltv/danmaku/videoplayer/core/commander/ExoCommander;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->start()V

    .line 224
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
    .line 37
    invoke-super {p0}, Ltv/danmaku/videoplayer/core/commander/AbsPlayerCommander;->stop()V

    return-void
.end method
