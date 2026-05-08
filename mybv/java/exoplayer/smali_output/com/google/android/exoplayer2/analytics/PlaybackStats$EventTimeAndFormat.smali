.class public final Lcom/google/android/exoplayer2/analytics/PlaybackStats$EventTimeAndFormat;
.super Ljava/lang/Object;
.source "PlaybackStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/analytics/PlaybackStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EventTimeAndFormat"
.end annotation


# instance fields
.field public final eventTime:Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

.field public final format:Lcom/google/android/exoplayer2/Format;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/Format;)V
    .registers 3
    .param p1, "eventTime"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p2, "format"    # Lcom/google/android/exoplayer2/Format;

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-object p1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats$EventTimeAndFormat;->eventTime:Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    .line 105
    iput-object p2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats$EventTimeAndFormat;->format:Lcom/google/android/exoplayer2/Format;

    .line 106
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 110
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 111
    return v0

    .line 113
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_32

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_32

    .line 116
    :cond_12
    move-object v2, p1

    check-cast v2, Lcom/google/android/exoplayer2/analytics/PlaybackStats$EventTimeAndFormat;

    .line 117
    .local v2, "that":Lcom/google/android/exoplayer2/analytics/PlaybackStats$EventTimeAndFormat;
    iget-object v3, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats$EventTimeAndFormat;->eventTime:Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    iget-object v4, v2, Lcom/google/android/exoplayer2/analytics/PlaybackStats$EventTimeAndFormat;->eventTime:Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_20

    .line 118
    return v1

    .line 120
    :cond_20
    iget-object v3, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats$EventTimeAndFormat;->format:Lcom/google/android/exoplayer2/Format;

    if-eqz v3, :cond_2b

    iget-object v0, v2, Lcom/google/android/exoplayer2/analytics/PlaybackStats$EventTimeAndFormat;->format:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {v3, v0}, Lcom/google/android/exoplayer2/Format;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_31

    :cond_2b
    iget-object v3, v2, Lcom/google/android/exoplayer2/analytics/PlaybackStats$EventTimeAndFormat;->format:Lcom/google/android/exoplayer2/Format;

    if-nez v3, :cond_30

    goto :goto_31

    :cond_30
    const/4 v0, 0x0

    :goto_31
    return v0

    .line 114
    .end local v2    # "that":Lcom/google/android/exoplayer2/analytics/PlaybackStats$EventTimeAndFormat;
    :cond_32
    :goto_32
    return v1
.end method

.method public hashCode()I
    .registers 4

    .line 125
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats$EventTimeAndFormat;->eventTime:Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->hashCode()I

    move-result v0

    .line 126
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats$EventTimeAndFormat;->format:Lcom/google/android/exoplayer2/Format;

    if-eqz v2, :cond_11

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/Format;->hashCode()I

    move-result v2

    goto :goto_12

    :cond_11
    const/4 v2, 0x0

    :goto_12
    add-int/2addr v1, v2

    .line 127
    .end local v0    # "result":I
    .local v1, "result":I
    return v1
.end method
