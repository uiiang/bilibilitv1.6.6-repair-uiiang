.class public final Lcom/google/android/exoplayer2/source/SilenceMediaSource;
.super Lcom/google/android/exoplayer2/source/BaseMediaSource;
.source "SilenceMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/SilenceMediaSource$SilenceMediaPeriod;,
        Lcom/google/android/exoplayer2/source/SilenceMediaSource$SilenceSampleStream;,
        Lcom/google/android/exoplayer2/source/SilenceMediaSource$Factory;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final CHANNEL_COUNT:I = 0x2

.field private static final FORMAT:Lcom/google/android/exoplayer2/Format;

.field public static final MEDIA_ID:Ljava/lang/String; = "SilenceMediaSource"

.field private static final MEDIA_ITEM:Lcom/google/android/exoplayer2/MediaItem;

.field private static final PCM_ENCODING:I = 0x2

.field private static final SAMPLE_RATE_HZ:I = 0xac44

.field private static final SILENCE_SAMPLE:[B


# instance fields
.field private final durationUs:J

.field private final mediaItem:Lcom/google/android/exoplayer2/MediaItem;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 99
    new-instance v0, Lcom/google/android/exoplayer2/Format$Builder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/Format$Builder;-><init>()V

    .line 101
    const-string v1, "audio/raw"

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    .line 102
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/Format$Builder;->setChannelCount(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    .line 103
    const v2, 0xac44

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/Format$Builder;->setSampleRate(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    .line 104
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/Format$Builder;->setPcmEncoding(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    .line 105
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/SilenceMediaSource;->FORMAT:Lcom/google/android/exoplayer2/Format;

    .line 106
    new-instance v2, Lcom/google/android/exoplayer2/MediaItem$Builder;

    invoke-direct {v2}, Lcom/google/android/exoplayer2/MediaItem$Builder;-><init>()V

    .line 108
    const-string v3, "SilenceMediaSource"

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/MediaItem$Builder;->setMediaId(Ljava/lang/String;)Lcom/google/android/exoplayer2/MediaItem$Builder;

    move-result-object v2

    sget-object v3, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 109
    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/MediaItem$Builder;->setUri(Landroid/net/Uri;)Lcom/google/android/exoplayer2/MediaItem$Builder;

    move-result-object v2

    iget-object v0, v0, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 110
    invoke-virtual {v2, v0}, Lcom/google/android/exoplayer2/MediaItem$Builder;->setMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/MediaItem$Builder;

    move-result-object v0

    .line 111
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaItem$Builder;->build()Lcom/google/android/exoplayer2/MediaItem;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/SilenceMediaSource;->MEDIA_ITEM:Lcom/google/android/exoplayer2/MediaItem;

    .line 112
    nop

    .line 113
    invoke-static {v1, v1}, Lcom/google/android/exoplayer2/util/Util;->getPcmFrameSize(II)I

    move-result v0

    mul-int/lit16 v0, v0, 0x400

    new-array v0, v0, [B

    sput-object v0, Lcom/google/android/exoplayer2/source/SilenceMediaSource;->SILENCE_SAMPLE:[B

    .line 112
    return-void
.end method

.method public constructor <init>(J)V
    .registers 4
    .param p1, "durationUs"    # J

    .line 124
    sget-object v0, Lcom/google/android/exoplayer2/source/SilenceMediaSource;->MEDIA_ITEM:Lcom/google/android/exoplayer2/MediaItem;

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/source/SilenceMediaSource;-><init>(JLcom/google/android/exoplayer2/MediaItem;)V

    .line 125
    return-void
.end method

.method private constructor <init>(JLcom/google/android/exoplayer2/MediaItem;)V
    .registers 7
    .param p1, "durationUs"    # J
    .param p3, "mediaItem"    # Lcom/google/android/exoplayer2/MediaItem;

    .line 133
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/BaseMediaSource;-><init>()V

    .line 134
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 135
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/SilenceMediaSource;->durationUs:J

    .line 136
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/SilenceMediaSource;->mediaItem:Lcom/google/android/exoplayer2/MediaItem;

    .line 137
    return-void
.end method

.method synthetic constructor <init>(JLcom/google/android/exoplayer2/MediaItem;Lcom/google/android/exoplayer2/source/SilenceMediaSource$1;)V
    .registers 5
    .param p1, "x0"    # J
    .param p3, "x1"    # Lcom/google/android/exoplayer2/MediaItem;
    .param p4, "x2"    # Lcom/google/android/exoplayer2/source/SilenceMediaSource$1;

    .line 49
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/SilenceMediaSource;-><init>(JLcom/google/android/exoplayer2/MediaItem;)V

    return-void
.end method

.method static synthetic access$000()Lcom/google/android/exoplayer2/MediaItem;
    .registers 1

    .line 49
    sget-object v0, Lcom/google/android/exoplayer2/source/SilenceMediaSource;->MEDIA_ITEM:Lcom/google/android/exoplayer2/MediaItem;

    return-object v0
.end method

.method static synthetic access$200()Lcom/google/android/exoplayer2/Format;
    .registers 1

    .line 49
    sget-object v0, Lcom/google/android/exoplayer2/source/SilenceMediaSource;->FORMAT:Lcom/google/android/exoplayer2/Format;

    return-object v0
.end method

.method static synthetic access$300(J)J
    .registers 4
    .param p0, "x0"    # J

    .line 49
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/source/SilenceMediaSource;->getAudioByteCount(J)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$400(J)J
    .registers 4
    .param p0, "x0"    # J

    .line 49
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/source/SilenceMediaSource;->getAudioPositionUs(J)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$500()[B
    .registers 1

    .line 49
    sget-object v0, Lcom/google/android/exoplayer2/source/SilenceMediaSource;->SILENCE_SAMPLE:[B

    return-object v0
.end method

.method private static getAudioByteCount(J)J
    .registers 6
    .param p0, "durationUs"    # J

    .line 330
    const-wide/32 v0, 0xac44

    mul-long v0, v0, p0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    .line 331
    .local v0, "audioSampleCount":J
    const/4 v2, 0x2

    invoke-static {v2, v2}, Lcom/google/android/exoplayer2/util/Util;->getPcmFrameSize(II)I

    move-result v2

    int-to-long v2, v2

    mul-long v2, v2, v0

    return-wide v2
.end method

.method private static getAudioPositionUs(J)J
    .registers 8
    .param p0, "bytes"    # J

    .line 335
    const/4 v0, 0x2

    invoke-static {v0, v0}, Lcom/google/android/exoplayer2/util/Util;->getPcmFrameSize(II)I

    move-result v0

    int-to-long v0, v0

    div-long v0, p0, v0

    .line 336
    .local v0, "audioSampleCount":J
    const-wide/32 v2, 0xf4240

    mul-long v2, v2, v0

    const-wide/32 v4, 0xac44

    div-long/2addr v2, v4

    return-wide v2
.end method


# virtual methods
.method public createPeriod(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/upstream/Allocator;J)Lcom/google/android/exoplayer2/source/MediaPeriod;
    .registers 8
    .param p1, "id"    # Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .param p2, "allocator"    # Lcom/google/android/exoplayer2/upstream/Allocator;
    .param p3, "startPositionUs"    # J

    .line 156
    new-instance v0, Lcom/google/android/exoplayer2/source/SilenceMediaSource$SilenceMediaPeriod;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/source/SilenceMediaSource;->durationUs:J

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/source/SilenceMediaSource$SilenceMediaPeriod;-><init>(J)V

    return-object v0
.end method

.method public getMediaItem()Lcom/google/android/exoplayer2/MediaItem;
    .registers 2

    .line 164
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SilenceMediaSource;->mediaItem:Lcom/google/android/exoplayer2/MediaItem;

    return-object v0
.end method

.method public maybeThrowSourceInfoRefreshError()V
    .registers 1

    .line 152
    return-void
.end method

.method protected prepareSourceInternal(Lcom/google/android/exoplayer2/upstream/TransferListener;)V
    .registers 11
    .param p1, "mediaTransferListener"    # Lcom/google/android/exoplayer2/upstream/TransferListener;

    .line 141
    new-instance v8, Lcom/google/android/exoplayer2/source/SinglePeriodTimeline;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/source/SilenceMediaSource;->durationUs:J

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/google/android/exoplayer2/source/SilenceMediaSource;->mediaItem:Lcom/google/android/exoplayer2/MediaItem;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/source/SinglePeriodTimeline;-><init>(JZZZLjava/lang/Object;Lcom/google/android/exoplayer2/MediaItem;)V

    invoke-virtual {p0, v8}, Lcom/google/android/exoplayer2/source/SilenceMediaSource;->refreshSourceInfo(Lcom/google/android/exoplayer2/Timeline;)V

    .line 149
    return-void
.end method

.method public releasePeriod(Lcom/google/android/exoplayer2/source/MediaPeriod;)V
    .registers 2
    .param p1, "mediaPeriod"    # Lcom/google/android/exoplayer2/source/MediaPeriod;

    .line 160
    return-void
.end method

.method protected releaseSourceInternal()V
    .registers 1

    .line 168
    return-void
.end method
