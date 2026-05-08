.class final Lcom/google/android/exoplayer2/source/SilenceMediaSource$SilenceMediaPeriod;
.super Ljava/lang/Object;
.source "SilenceMediaSource.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/MediaPeriod;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/SilenceMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SilenceMediaPeriod"
.end annotation


# static fields
.field private static final TRACKS:Lcom/google/android/exoplayer2/source/TrackGroupArray;


# instance fields
.field private final durationUs:J

.field private final sampleStreams:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/source/SampleStream;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 172
    new-instance v0, Lcom/google/android/exoplayer2/source/TrackGroupArray;

    const/4 v1, 0x1

    new-array v2, v1, [Lcom/google/android/exoplayer2/source/TrackGroup;

    new-instance v3, Lcom/google/android/exoplayer2/source/TrackGroup;

    new-array v1, v1, [Lcom/google/android/exoplayer2/Format;

    # getter for: Lcom/google/android/exoplayer2/source/SilenceMediaSource;->FORMAT:Lcom/google/android/exoplayer2/Format;
    invoke-static {}, Lcom/google/android/exoplayer2/source/SilenceMediaSource;->access$200()Lcom/google/android/exoplayer2/Format;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v1, v5

    invoke-direct {v3, v1}, Lcom/google/android/exoplayer2/source/TrackGroup;-><init>([Lcom/google/android/exoplayer2/Format;)V

    aput-object v3, v2, v5

    invoke-direct {v0, v2}, Lcom/google/android/exoplayer2/source/TrackGroupArray;-><init>([Lcom/google/android/exoplayer2/source/TrackGroup;)V

    sput-object v0, Lcom/google/android/exoplayer2/source/SilenceMediaSource$SilenceMediaPeriod;->TRACKS:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    return-void
.end method

.method public constructor <init>(J)V
    .registers 4
    .param p1, "durationUs"    # J

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/SilenceMediaSource$SilenceMediaPeriod;->durationUs:J

    .line 179
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/SilenceMediaSource$SilenceMediaPeriod;->sampleStreams:Ljava/util/ArrayList;

    .line 180
    return-void
.end method

.method private constrainSeekPosition(J)J
    .registers 9
    .param p1, "positionUs"    # J

    .line 265
    const-wide/16 v2, 0x0

    iget-wide v4, p0, Lcom/google/android/exoplayer2/source/SilenceMediaSource$SilenceMediaPeriod;->durationUs:J

    move-wide v0, p1

    invoke-static/range {v0 .. v5}, Lcom/google/android/exoplayer2/util/Util;->constrainValue(JJJ)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public continueLoading(J)Z
    .registers 4
    .param p1, "positionUs"    # J

    .line 253
    const/4 v0, 0x0

    return v0
.end method

.method public discardBuffer(JZ)V
    .registers 4
    .param p1, "positionUs"    # J
    .param p3, "toKeyframe"    # Z

    .line 220
    return-void
.end method

.method public getAdjustedSeekPositionUs(JLcom/google/android/exoplayer2/SeekParameters;)J
    .registers 6
    .param p1, "positionUs"    # J
    .param p3, "seekParameters"    # Lcom/google/android/exoplayer2/SeekParameters;

    .line 238
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/SilenceMediaSource$SilenceMediaPeriod;->constrainSeekPosition(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getBufferedPositionUs()J
    .registers 3

    .line 243
    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0
.end method

.method public getNextLoadPositionUs()J
    .registers 3

    .line 248
    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0
.end method

.method public synthetic getStreamKeys(Ljava/util/List;)Ljava/util/List;
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/source/MediaPeriod$-CC;->$default$getStreamKeys(Lcom/google/android/exoplayer2/source/MediaPeriod;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getTrackGroups()Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .registers 2

    .line 192
    sget-object v0, Lcom/google/android/exoplayer2/source/SilenceMediaSource$SilenceMediaPeriod;->TRACKS:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    return-object v0
.end method

.method public isLoading()Z
    .registers 2

    .line 258
    const/4 v0, 0x0

    return v0
.end method

.method public maybeThrowPrepareError()V
    .registers 1

    .line 188
    return-void
.end method

.method public prepare(Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;J)V
    .registers 4
    .param p1, "callback"    # Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;
    .param p2, "positionUs"    # J

    .line 184
    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;->onPrepared(Lcom/google/android/exoplayer2/source/MediaPeriod;)V

    .line 185
    return-void
.end method

.method public readDiscontinuity()J
    .registers 3

    .line 224
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method public reevaluateBuffer(J)V
    .registers 3
    .param p1, "positionUs"    # J

    .line 262
    return-void
.end method

.method public seekToUs(J)J
    .registers 5
    .param p1, "positionUs"    # J

    .line 229
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/SilenceMediaSource$SilenceMediaPeriod;->constrainSeekPosition(J)J

    move-result-wide p1

    .line 230
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/SilenceMediaSource$SilenceMediaPeriod;->sampleStreams:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 231
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/SilenceMediaSource$SilenceMediaPeriod;->sampleStreams:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/SilenceMediaSource$SilenceSampleStream;

    invoke-virtual {v1, p1, p2}, Lcom/google/android/exoplayer2/source/SilenceMediaSource$SilenceSampleStream;->seekTo(J)V

    .line 230
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 233
    .end local v0    # "i":I
    :cond_1b
    return-wide p1
.end method

.method public selectTracks([Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;[Z[Lcom/google/android/exoplayer2/source/SampleStream;[ZJ)J
    .registers 11
    .param p1, "selections"    # [Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;
    .param p2, "mayRetainStreamFlags"    # [Z
    .param p3, "streams"    # [Lcom/google/android/exoplayer2/source/SampleStream;
    .param p4, "streamResetFlags"    # [Z
    .param p5, "positionUs"    # J

    .line 202
    invoke-direct {p0, p5, p6}, Lcom/google/android/exoplayer2/source/SilenceMediaSource$SilenceMediaPeriod;->constrainSeekPosition(J)J

    move-result-wide p5

    .line 203
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    array-length v1, p1

    if-ge v0, v1, :cond_3d

    .line 204
    aget-object v1, p3, v0

    if-eqz v1, :cond_1e

    aget-object v1, p1, v0

    if-eqz v1, :cond_14

    aget-boolean v1, p2, v0

    if-nez v1, :cond_1e

    .line 205
    :cond_14
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/SilenceMediaSource$SilenceMediaPeriod;->sampleStreams:Ljava/util/ArrayList;

    aget-object v2, p3, v0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 206
    const/4 v1, 0x0

    aput-object v1, p3, v0

    .line 208
    :cond_1e
    aget-object v1, p3, v0

    if-nez v1, :cond_3a

    aget-object v1, p1, v0

    if-eqz v1, :cond_3a

    .line 209
    new-instance v1, Lcom/google/android/exoplayer2/source/SilenceMediaSource$SilenceSampleStream;

    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/SilenceMediaSource$SilenceMediaPeriod;->durationUs:J

    invoke-direct {v1, v2, v3}, Lcom/google/android/exoplayer2/source/SilenceMediaSource$SilenceSampleStream;-><init>(J)V

    .line 210
    .local v1, "stream":Lcom/google/android/exoplayer2/source/SilenceMediaSource$SilenceSampleStream;
    invoke-virtual {v1, p5, p6}, Lcom/google/android/exoplayer2/source/SilenceMediaSource$SilenceSampleStream;->seekTo(J)V

    .line 211
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/SilenceMediaSource$SilenceMediaPeriod;->sampleStreams:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    aput-object v1, p3, v0

    .line 213
    const/4 v2, 0x1

    aput-boolean v2, p4, v0

    .line 203
    .end local v1    # "stream":Lcom/google/android/exoplayer2/source/SilenceMediaSource$SilenceSampleStream;
    :cond_3a
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 216
    .end local v0    # "i":I
    :cond_3d
    return-wide p5
.end method
