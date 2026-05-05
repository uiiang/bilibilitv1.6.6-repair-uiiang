.class final Lcom/google/android/exoplayer2/source/dash/manifest/SingleSegmentIndex;
.super Ljava/lang/Object;
.source "SingleSegmentIndex.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final uri:Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;)V
    .registers 2
    .param p1, "uri"    # Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/manifest/SingleSegmentIndex;->uri:Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    .line 39
    return-void
.end method


# virtual methods
.method public getAvailableSegmentCount(JJ)J
    .registers 7
    .param p1, "periodDurationUs"    # J
    .param p3, "nowUnixTimeUs"    # J

    .line 78
    const-wide/16 v0, 0x1

    return-wide v0
.end method

.method public getDurationUs(JJ)J
    .registers 5
    .param p1, "segmentNum"    # J
    .param p3, "periodDurationUs"    # J

    .line 53
    return-wide p3
.end method

.method public getFirstAvailableSegmentNum(JJ)J
    .registers 7
    .param p1, "periodDurationUs"    # J
    .param p3, "nowUnixTimeUs"    # J

    .line 68
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getFirstSegmentNum()J
    .registers 3

    .line 63
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getNextSegmentAvailableTimeUs(JJ)J
    .registers 7
    .param p1, "periodDurationUs"    # J
    .param p3, "nowUnixTimeUs"    # J

    .line 83
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method public getSegmentCount(J)J
    .registers 5
    .param p1, "periodDurationUs"    # J

    .line 73
    const-wide/16 v0, 0x1

    return-wide v0
.end method

.method public getSegmentNum(JJ)J
    .registers 7
    .param p1, "timeUs"    # J
    .param p3, "periodDurationUs"    # J

    .line 43
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getSegmentUrl(J)Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    .registers 4
    .param p1, "segmentNum"    # J

    .line 58
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/SingleSegmentIndex;->uri:Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    return-object v0
.end method

.method public getTimeUs(J)J
    .registers 5
    .param p1, "segmentNum"    # J

    .line 48
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public isExplicit()Z
    .registers 2

    .line 88
    const/4 v0, 0x1

    return v0
.end method
