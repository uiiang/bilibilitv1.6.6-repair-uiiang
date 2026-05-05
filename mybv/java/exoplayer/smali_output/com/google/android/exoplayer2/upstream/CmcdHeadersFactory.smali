.class public final Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory;
.super Ljava/lang/Object;
.source "CmcdHeadersFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdObject;,
        Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdRequest;,
        Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdSession;,
        Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdStatus;,
        Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$ObjectType;,
        Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$StreamType;,
        Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$StreamingFormat;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final OBJECT_TYPE_AUDIO_ONLY:Ljava/lang/String; = "a"

.field public static final OBJECT_TYPE_INIT_SEGMENT:Ljava/lang/String; = "i"

.field public static final OBJECT_TYPE_MUXED_AUDIO_AND_VIDEO:Ljava/lang/String; = "av"

.field public static final OBJECT_TYPE_VIDEO_ONLY:Ljava/lang/String; = "v"

.field public static final STREAMING_FORMAT_DASH:Ljava/lang/String; = "d"

.field public static final STREAMING_FORMAT_HLS:Ljava/lang/String; = "h"

.field public static final STREAMING_FORMAT_SS:Ljava/lang/String; = "s"

.field public static final STREAM_TYPE_LIVE:Ljava/lang/String; = "l"

.field public static final STREAM_TYPE_VOD:Ljava/lang/String; = "v"


# instance fields
.field private final bufferedDurationUs:J

.field private chunkDurationUs:J

.field private final cmcdConfiguration:Lcom/google/android/exoplayer2/upstream/CmcdConfiguration;

.field private final isLive:Z

.field private objectType:Ljava/lang/String;

.field private final streamingFormat:Ljava/lang/String;

.field private final trackSelection:Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/CmcdConfiguration;Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;JLjava/lang/String;Z)V
    .registers 10
    .param p1, "cmcdConfiguration"    # Lcom/google/android/exoplayer2/upstream/CmcdConfiguration;
    .param p2, "trackSelection"    # Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;
    .param p3, "bufferedDurationUs"    # J
    .param p5, "streamingFormat"    # Ljava/lang/String;
    .param p6, "isLive"    # Z

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    if-ltz v2, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 162
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory;->cmcdConfiguration:Lcom/google/android/exoplayer2/upstream/CmcdConfiguration;

    .line 163
    iput-object p2, p0, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory;->trackSelection:Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    .line 164
    iput-wide p3, p0, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory;->bufferedDurationUs:J

    .line 165
    iput-object p5, p0, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory;->streamingFormat:Ljava/lang/String;

    .line 166
    iput-boolean p6, p0, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory;->isLive:Z

    .line 167
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory;->chunkDurationUs:J

    .line 168
    return-void
.end method

.method private getIsInitSegment()Z
    .registers 3

    .line 266
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory;->objectType:Ljava/lang/String;

    if-eqz v0, :cond_e

    const-string v1, "i"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public static getObjectType(Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;)Ljava/lang/String;
    .registers 4
    .param p0, "trackSelection"    # Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    .line 64
    const/4 v0, 0x1

    if-eqz p0, :cond_5

    const/4 v1, 0x1

    goto :goto_6

    :cond_5
    const/4 v1, 0x0

    :goto_6
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 66
    invoke-interface {p0}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;->getSelectedFormat()Lcom/google/android/exoplayer2/Format;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/MimeTypes;->getTrackType(Ljava/lang/String;)I

    move-result v1

    .line 67
    .local v1, "trackType":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_20

    .line 68
    invoke-interface {p0}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;->getSelectedFormat()Lcom/google/android/exoplayer2/Format;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/exoplayer2/Format;->containerMimeType:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/MimeTypes;->getTrackType(Ljava/lang/String;)I

    move-result v1

    .line 71
    :cond_20
    if-ne v1, v0, :cond_25

    .line 72
    const-string v0, "a"

    return-object v0

    .line 73
    :cond_25
    const/4 v0, 0x2

    if-ne v1, v0, :cond_2b

    .line 74
    const-string v0, "v"

    return-object v0

    .line 77
    :cond_2b
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public createHttpRequestHeaders()Lcom/google/common/collect/ImmutableMap;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 197
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory;->cmcdConfiguration:Lcom/google/android/exoplayer2/upstream/CmcdConfiguration;

    iget-object v0, v0, Lcom/google/android/exoplayer2/upstream/CmcdConfiguration;->requestConfig:Lcom/google/android/exoplayer2/upstream/CmcdConfiguration$RequestConfig;

    .line 198
    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/CmcdConfiguration$RequestConfig;->getCustomData()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    .line 199
    .local v0, "customData":Lcom/google/common/collect/ImmutableMap;, "Lcom/google/common/collect/ImmutableMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory;->trackSelection:Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;->getSelectedFormat()Lcom/google/android/exoplayer2/Format;

    move-result-object v1

    iget v1, v1, Lcom/google/android/exoplayer2/Format;->bitrate:I

    const/16 v2, 0x3e8

    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/util/Util;->ceilDivide(II)I

    move-result v1

    .line 201
    .local v1, "bitrateKbps":I
    new-instance v3, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdObject$Builder;

    invoke-direct {v3}, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdObject$Builder;-><init>()V

    .line 202
    const-string v4, "CMCD-Object"

    invoke-virtual {v0, v4}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdObject$Builder;->setCustomData(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdObject$Builder;

    move-result-object v3

    .line 203
    .local v3, "cmcdObject":Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdObject$Builder;
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory;->getIsInitSegment()Z

    move-result v4

    const-wide/16 v5, 0x3e8

    if-nez v4, :cond_80

    .line 204
    iget-object v4, p0, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory;->cmcdConfiguration:Lcom/google/android/exoplayer2/upstream/CmcdConfiguration;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/upstream/CmcdConfiguration;->isBitrateLoggingAllowed()Z

    move-result v4

    if-eqz v4, :cond_3a

    .line 205
    invoke-virtual {v3, v1}, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdObject$Builder;->setBitrateKbps(I)Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdObject$Builder;

    .line 207
    :cond_3a
    iget-object v4, p0, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory;->cmcdConfiguration:Lcom/google/android/exoplayer2/upstream/CmcdConfiguration;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/upstream/CmcdConfiguration;->isTopBitrateLoggingAllowed()Z

    move-result v4

    if-eqz v4, :cond_69

    .line 208
    iget-object v4, p0, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory;->trackSelection:Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    invoke-interface {v4}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;->getTrackGroup()Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v4

    .line 209
    .local v4, "trackGroup":Lcom/google/android/exoplayer2/source/TrackGroup;
    iget-object v7, p0, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory;->trackSelection:Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    invoke-interface {v7}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;->getSelectedFormat()Lcom/google/android/exoplayer2/Format;

    move-result-object v7

    iget v7, v7, Lcom/google/android/exoplayer2/Format;->bitrate:I

    .line 210
    .local v7, "topBitrate":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_51
    iget v9, v4, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    if-ge v8, v9, :cond_62

    .line 211
    invoke-virtual {v4, v8}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v9

    iget v9, v9, Lcom/google/android/exoplayer2/Format;->bitrate:I

    invoke-static {v7, v9}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 210
    add-int/lit8 v8, v8, 0x1

    goto :goto_51

    .line 213
    .end local v8    # "i":I
    :cond_62
    invoke-static {v7, v2}, Lcom/google/android/exoplayer2/util/Util;->ceilDivide(II)I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdObject$Builder;->setTopBitrateKbps(I)Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdObject$Builder;

    .line 215
    .end local v4    # "trackGroup":Lcom/google/android/exoplayer2/source/TrackGroup;
    .end local v7    # "topBitrate":I
    :cond_69
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory;->cmcdConfiguration:Lcom/google/android/exoplayer2/upstream/CmcdConfiguration;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/upstream/CmcdConfiguration;->isObjectDurationLoggingAllowed()Z

    move-result v2

    if-eqz v2, :cond_80

    iget-wide v7, p0, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory;->chunkDurationUs:J

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v7, v9

    if-eqz v2, :cond_80

    .line 216
    div-long/2addr v7, v5

    invoke-virtual {v3, v7, v8}, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdObject$Builder;->setObjectDurationMs(J)Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdObject$Builder;

    .line 220
    :cond_80
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory;->cmcdConfiguration:Lcom/google/android/exoplayer2/upstream/CmcdConfiguration;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/upstream/CmcdConfiguration;->isObjectTypeLoggingAllowed()Z

    move-result v2

    if-eqz v2, :cond_8d

    .line 221
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory;->objectType:Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdObject$Builder;->setObjectType(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdObject$Builder;

    .line 224
    :cond_8d
    new-instance v2, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdRequest$Builder;

    invoke-direct {v2}, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdRequest$Builder;-><init>()V

    .line 225
    const-string v4, "CMCD-Request"

    invoke-virtual {v0, v4}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdRequest$Builder;->setCustomData(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdRequest$Builder;

    move-result-object v2

    .line 226
    .local v2, "cmcdRequest":Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdRequest$Builder;
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory;->getIsInitSegment()Z

    move-result v4

    if-nez v4, :cond_b2

    iget-object v4, p0, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory;->cmcdConfiguration:Lcom/google/android/exoplayer2/upstream/CmcdConfiguration;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/upstream/CmcdConfiguration;->isBufferLengthLoggingAllowed()Z

    move-result v4

    if-eqz v4, :cond_b2

    .line 227
    iget-wide v7, p0, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory;->bufferedDurationUs:J

    div-long/2addr v7, v5

    invoke-virtual {v2, v7, v8}, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdRequest$Builder;->setBufferLengthMs(J)Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdRequest$Builder;

    .line 229
    :cond_b2
    iget-object v4, p0, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory;->cmcdConfiguration:Lcom/google/android/exoplayer2/upstream/CmcdConfiguration;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/upstream/CmcdConfiguration;->isMeasuredThroughputLoggingAllowed()Z

    move-result v4

    if-eqz v4, :cond_d3

    iget-object v4, p0, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory;->trackSelection:Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    .line 230
    invoke-interface {v4}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;->getLatestBitrateEstimate()J

    move-result-wide v7

    const-wide/high16 v9, -0x8000000000000000L

    cmp-long v4, v7, v9

    if-eqz v4, :cond_d3

    .line 231
    iget-object v4, p0, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory;->trackSelection:Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    .line 232
    invoke-interface {v4}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;->getLatestBitrateEstimate()J

    move-result-wide v7

    invoke-static {v7, v8, v5, v6}, Lcom/google/android/exoplayer2/util/Util;->ceilDivide(JJ)J

    move-result-wide v4

    .line 231
    invoke-virtual {v2, v4, v5}, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdRequest$Builder;->setMeasuredThroughputInKbps(J)Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdRequest$Builder;

    .line 235
    :cond_d3
    new-instance v4, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdSession$Builder;

    invoke-direct {v4}, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdSession$Builder;-><init>()V

    .line 236
    const-string v5, "CMCD-Session"

    invoke-virtual {v0, v5}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdSession$Builder;->setCustomData(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdSession$Builder;

    move-result-object v4

    .line 237
    .local v4, "cmcdSession":Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdSession$Builder;
    iget-object v5, p0, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory;->cmcdConfiguration:Lcom/google/android/exoplayer2/upstream/CmcdConfiguration;

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/upstream/CmcdConfiguration;->isContentIdLoggingAllowed()Z

    move-result v5

    if-eqz v5, :cond_f3

    .line 238
    iget-object v5, p0, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory;->cmcdConfiguration:Lcom/google/android/exoplayer2/upstream/CmcdConfiguration;

    iget-object v5, v5, Lcom/google/android/exoplayer2/upstream/CmcdConfiguration;->contentId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdSession$Builder;->setContentId(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdSession$Builder;

    .line 240
    :cond_f3
    iget-object v5, p0, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory;->cmcdConfiguration:Lcom/google/android/exoplayer2/upstream/CmcdConfiguration;

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/upstream/CmcdConfiguration;->isSessionIdLoggingAllowed()Z

    move-result v5

    if-eqz v5, :cond_102

    .line 241
    iget-object v5, p0, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory;->cmcdConfiguration:Lcom/google/android/exoplayer2/upstream/CmcdConfiguration;

    iget-object v5, v5, Lcom/google/android/exoplayer2/upstream/CmcdConfiguration;->sessionId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdSession$Builder;->setSessionId(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdSession$Builder;

    .line 243
    :cond_102
    iget-object v5, p0, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory;->cmcdConfiguration:Lcom/google/android/exoplayer2/upstream/CmcdConfiguration;

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/upstream/CmcdConfiguration;->isStreamingFormatLoggingAllowed()Z

    move-result v5

    if-eqz v5, :cond_10f

    .line 244
    iget-object v5, p0, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory;->streamingFormat:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdSession$Builder;->setStreamingFormat(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdSession$Builder;

    .line 246
    :cond_10f
    iget-object v5, p0, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory;->cmcdConfiguration:Lcom/google/android/exoplayer2/upstream/CmcdConfiguration;

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/upstream/CmcdConfiguration;->isStreamTypeLoggingAllowed()Z

    move-result v5

    if-eqz v5, :cond_123

    .line 247
    iget-boolean v5, p0, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory;->isLive:Z

    if-eqz v5, :cond_11e

    const-string v5, "l"

    goto :goto_120

    :cond_11e
    const-string v5, "v"

    :goto_120
    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdSession$Builder;->setStreamType(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdSession$Builder;

    .line 250
    :cond_123
    new-instance v5, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdStatus$Builder;

    invoke-direct {v5}, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdStatus$Builder;-><init>()V

    .line 251
    const-string v6, "CMCD-Status"

    invoke-virtual {v0, v6}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdStatus$Builder;->setCustomData(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdStatus$Builder;

    move-result-object v5

    .line 252
    .local v5, "cmcdStatus":Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdStatus$Builder;
    iget-object v6, p0, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory;->cmcdConfiguration:Lcom/google/android/exoplayer2/upstream/CmcdConfiguration;

    invoke-virtual {v6}, Lcom/google/android/exoplayer2/upstream/CmcdConfiguration;->isMaximumRequestThroughputLoggingAllowed()Z

    move-result v6

    if-eqz v6, :cond_147

    .line 253
    iget-object v6, p0, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory;->cmcdConfiguration:Lcom/google/android/exoplayer2/upstream/CmcdConfiguration;

    iget-object v6, v6, Lcom/google/android/exoplayer2/upstream/CmcdConfiguration;->requestConfig:Lcom/google/android/exoplayer2/upstream/CmcdConfiguration$RequestConfig;

    .line 254
    invoke-interface {v6, v1}, Lcom/google/android/exoplayer2/upstream/CmcdConfiguration$RequestConfig;->getRequestedMaximumThroughputKbps(I)I

    move-result v6

    .line 253
    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdStatus$Builder;->setMaximumRequestedThroughputKbps(I)Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdStatus$Builder;

    .line 257
    :cond_147
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v6

    .line 258
    .local v6, "httpRequestHeaders":Lcom/google/common/collect/ImmutableMap$Builder;, "Lcom/google/common/collect/ImmutableMap$Builder<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdObject$Builder;->build()Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdObject;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdObject;->populateHttpRequestHeaders(Lcom/google/common/collect/ImmutableMap$Builder;)V

    .line 259
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdRequest$Builder;->build()Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdRequest;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdRequest;->populateHttpRequestHeaders(Lcom/google/common/collect/ImmutableMap$Builder;)V

    .line 260
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdSession$Builder;->build()Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdSession;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdSession;->populateHttpRequestHeaders(Lcom/google/common/collect/ImmutableMap$Builder;)V

    .line 261
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdStatus$Builder;->build()Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdStatus;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdStatus;->populateHttpRequestHeaders(Lcom/google/common/collect/ImmutableMap$Builder;)V

    .line 262
    invoke-virtual {v6}, Lcom/google/common/collect/ImmutableMap$Builder;->buildOrThrow()Lcom/google/common/collect/ImmutableMap;

    move-result-object v7

    return-object v7
.end method

.method public setChunkDurationUs(J)Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory;
    .registers 6
    .param p1, "chunkDurationUs"    # J

    .line 178
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 179
    iput-wide p1, p0, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory;->chunkDurationUs:J

    .line 180
    return-object p0
.end method

.method public setObjectType(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory;
    .registers 2
    .param p1, "objectType"    # Ljava/lang/String;

    .line 191
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory;->objectType:Ljava/lang/String;

    .line 192
    return-object p0
.end method
