.class public final Lcom/google/android/exoplayer2/analytics/PlaybackStats$EventTimeAndPlaybackState;
.super Ljava/lang/Object;
.source "PlaybackStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/analytics/PlaybackStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EventTimeAndPlaybackState"
.end annotation


# instance fields
.field public final eventTime:Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

.field public final playbackState:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;I)V
    .registers 3
    .param p1, "eventTime"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p2, "playbackState"    # I

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats$EventTimeAndPlaybackState;->eventTime:Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    .line 61
    iput p2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats$EventTimeAndPlaybackState;->playbackState:I

    .line 62
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 66
    if-ne p0, p1, :cond_4

    .line 67
    const/4 v0, 0x1

    return v0

    .line 69
    :cond_4
    const/4 v0, 0x0

    if-eqz p1, :cond_25

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_12

    goto :goto_25

    .line 72
    :cond_12
    move-object v1, p1

    check-cast v1, Lcom/google/android/exoplayer2/analytics/PlaybackStats$EventTimeAndPlaybackState;

    .line 73
    .local v1, "that":Lcom/google/android/exoplayer2/analytics/PlaybackStats$EventTimeAndPlaybackState;
    iget v2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats$EventTimeAndPlaybackState;->playbackState:I

    iget v3, v1, Lcom/google/android/exoplayer2/analytics/PlaybackStats$EventTimeAndPlaybackState;->playbackState:I

    if-eq v2, v3, :cond_1c

    .line 74
    return v0

    .line 76
    :cond_1c
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats$EventTimeAndPlaybackState;->eventTime:Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    iget-object v2, v1, Lcom/google/android/exoplayer2/analytics/PlaybackStats$EventTimeAndPlaybackState;->eventTime:Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 70
    .end local v1    # "that":Lcom/google/android/exoplayer2/analytics/PlaybackStats$EventTimeAndPlaybackState;
    :cond_25
    :goto_25
    return v0
.end method

.method public hashCode()I
    .registers 4

    .line 81
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats$EventTimeAndPlaybackState;->eventTime:Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->hashCode()I

    move-result v0

    .line 82
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats$EventTimeAndPlaybackState;->playbackState:I

    add-int/2addr v1, v2

    .line 83
    .end local v0    # "result":I
    .local v1, "result":I
    return v1
.end method
