.class public final Lcom/google/android/exoplayer2/analytics/PlaybackStats$EventTimeAndException;
.super Ljava/lang/Object;
.source "PlaybackStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/analytics/PlaybackStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EventTimeAndException"
.end annotation


# instance fields
.field public final eventTime:Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

.field public final exception:Ljava/lang/Exception;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V
    .registers 3
    .param p1, "eventTime"    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
    .param p2, "exception"    # Ljava/lang/Exception;

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    iput-object p1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats$EventTimeAndException;->eventTime:Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    .line 146
    iput-object p2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats$EventTimeAndException;->exception:Ljava/lang/Exception;

    .line 147
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 151
    if-ne p0, p1, :cond_4

    .line 152
    const/4 v0, 0x1

    return v0

    .line 154
    :cond_4
    const/4 v0, 0x0

    if-eqz p1, :cond_29

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_12

    goto :goto_29

    .line 157
    :cond_12
    move-object v1, p1

    check-cast v1, Lcom/google/android/exoplayer2/analytics/PlaybackStats$EventTimeAndException;

    .line 158
    .local v1, "that":Lcom/google/android/exoplayer2/analytics/PlaybackStats$EventTimeAndException;
    iget-object v2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats$EventTimeAndException;->eventTime:Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    iget-object v3, v1, Lcom/google/android/exoplayer2/analytics/PlaybackStats$EventTimeAndException;->eventTime:Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20

    .line 159
    return v0

    .line 161
    :cond_20
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats$EventTimeAndException;->exception:Ljava/lang/Exception;

    iget-object v2, v1, Lcom/google/android/exoplayer2/analytics/PlaybackStats$EventTimeAndException;->exception:Ljava/lang/Exception;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 155
    .end local v1    # "that":Lcom/google/android/exoplayer2/analytics/PlaybackStats$EventTimeAndException;
    :cond_29
    :goto_29
    return v0
.end method

.method public hashCode()I
    .registers 4

    .line 166
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats$EventTimeAndException;->eventTime:Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->hashCode()I

    move-result v0

    .line 167
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats$EventTimeAndException;->exception:Ljava/lang/Exception;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 168
    .end local v0    # "result":I
    .local v1, "result":I
    return v1
.end method
