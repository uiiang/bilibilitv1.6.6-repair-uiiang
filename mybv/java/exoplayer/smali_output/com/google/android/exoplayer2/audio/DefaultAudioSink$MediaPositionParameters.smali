.class final Lcom/google/android/exoplayer2/audio/DefaultAudioSink$MediaPositionParameters;
.super Ljava/lang/Object;
.source "DefaultAudioSink.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/audio/DefaultAudioSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MediaPositionParameters"
.end annotation


# instance fields
.field public final audioTrackPositionUs:J

.field public final mediaTimeUs:J

.field public final playbackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/PlaybackParameters;JJ)V
    .registers 6
    .param p1, "playbackParameters"    # Lcom/google/android/exoplayer2/PlaybackParameters;
    .param p2, "mediaTimeUs"    # J
    .param p4, "audioTrackPositionUs"    # J

    .line 1924
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1925
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$MediaPositionParameters;->playbackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    .line 1926
    iput-wide p2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$MediaPositionParameters;->mediaTimeUs:J

    .line 1927
    iput-wide p4, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$MediaPositionParameters;->audioTrackPositionUs:J

    .line 1928
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/PlaybackParameters;JJLcom/google/android/exoplayer2/audio/DefaultAudioSink$1;)V
    .registers 7
    .param p1, "x0"    # Lcom/google/android/exoplayer2/PlaybackParameters;
    .param p2, "x1"    # J
    .param p4, "x2"    # J
    .param p6, "x3"    # Lcom/google/android/exoplayer2/audio/DefaultAudioSink$1;

    .line 1914
    invoke-direct/range {p0 .. p5}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$MediaPositionParameters;-><init>(Lcom/google/android/exoplayer2/PlaybackParameters;JJ)V

    return-void
.end method
