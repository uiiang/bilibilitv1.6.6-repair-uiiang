.class final Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator;
.super Ljava/lang/Object;
.source "FixedFrameRateEstimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CONSECUTIVE_MATCHING_FRAME_DURATIONS_FOR_SYNC:I = 0xf

.field static final MAX_MATCHING_FRAME_DIFFERENCE_NS:J = 0xf4240L


# instance fields
.field private candidateMatcher:Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;

.field private candidateMatcherActive:Z

.field private currentMatcher:Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;

.field private framesWithoutSyncCount:I

.field private lastFramePresentationTimeNs:J

.field private switchToCandidateMatcherWhenSynced:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator;->currentMatcher:Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;

    .line 56
    new-instance v0, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator;->candidateMatcher:Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;

    .line 57
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator;->lastFramePresentationTimeNs:J

    .line 58
    return-void
.end method


# virtual methods
.method public getFrameDurationNs()J
    .registers 3

    .line 125
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator;->isSynced()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator;->currentMatcher:Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;->getFrameDurationNs()J

    move-result-wide v0

    goto :goto_12

    :cond_d
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    :goto_12
    return-wide v0
.end method

.method public getFrameRate()F
    .registers 5

    .line 134
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator;->isSynced()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 135
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator;->currentMatcher:Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;->getFrameDurationNs()J

    move-result-wide v0

    long-to-double v0, v0

    const-wide v2, 0x41cdcd6500000000L    # 1.0E9

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v0

    double-to-float v0, v2

    goto :goto_1a

    .line 136
    :cond_18
    const/high16 v0, -0x40800000    # -1.0f

    .line 134
    :goto_1a
    return v0
.end method

.method public getFramesWithoutSyncCount()I
    .registers 2

    .line 108
    iget v0, p0, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator;->framesWithoutSyncCount:I

    return v0
.end method

.method public getMatchingFrameDurationSumNs()J
    .registers 3

    .line 116
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator;->isSynced()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator;->currentMatcher:Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;->getMatchingFrameDurationSumNs()J

    move-result-wide v0

    goto :goto_12

    :cond_d
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    :goto_12
    return-wide v0
.end method

.method public isSynced()Z
    .registers 2

    .line 103
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator;->currentMatcher:Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;->isSynced()Z

    move-result v0

    return v0
.end method

.method public onNextFrame(J)V
    .registers 10
    .param p1, "framePresentationTimeNs"    # J

    .line 75
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator;->currentMatcher:Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;->onNextFrame(J)V

    .line 76
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator;->currentMatcher:Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;->isSynced()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_16

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator;->switchToCandidateMatcherWhenSynced:Z

    if-nez v0, :cond_16

    .line 77
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator;->candidateMatcherActive:Z

    goto :goto_40

    .line 78
    :cond_16
    iget-wide v3, p0, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator;->lastFramePresentationTimeNs:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v3, v5

    if-eqz v0, :cond_40

    .line 79
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator;->candidateMatcherActive:Z

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator;->candidateMatcher:Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;->isLastFrameOutlier()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 82
    :cond_2d
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator;->candidateMatcher:Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;->reset()V

    .line 83
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator;->candidateMatcher:Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;

    iget-wide v3, p0, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator;->lastFramePresentationTimeNs:J

    invoke-virtual {v0, v3, v4}, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;->onNextFrame(J)V

    .line 85
    :cond_39
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator;->candidateMatcherActive:Z

    .line 86
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator;->candidateMatcher:Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;->onNextFrame(J)V

    .line 88
    :cond_40
    :goto_40
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator;->candidateMatcherActive:Z

    if-eqz v0, :cond_58

    iget-object v0, p0, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator;->candidateMatcher:Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;->isSynced()Z

    move-result v0

    if-eqz v0, :cond_58

    .line 91
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator;->currentMatcher:Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;

    .line 92
    .local v0, "previousMatcher":Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;
    iget-object v3, p0, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator;->candidateMatcher:Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;

    iput-object v3, p0, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator;->currentMatcher:Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;

    .line 93
    iput-object v0, p0, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator;->candidateMatcher:Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;

    .line 94
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator;->candidateMatcherActive:Z

    .line 95
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator;->switchToCandidateMatcherWhenSynced:Z

    .line 97
    .end local v0    # "previousMatcher":Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;
    :cond_58
    iput-wide p1, p0, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator;->lastFramePresentationTimeNs:J

    .line 98
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator;->currentMatcher:Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;->isSynced()Z

    move-result v0

    if-eqz v0, :cond_63

    goto :goto_67

    :cond_63
    iget v0, p0, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator;->framesWithoutSyncCount:I

    add-int/lit8 v2, v0, 0x1

    :goto_67
    iput v2, p0, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator;->framesWithoutSyncCount:I

    .line 99
    return-void
.end method

.method public reset()V
    .registers 4

    .line 62
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator;->currentMatcher:Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;->reset()V

    .line 63
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator;->candidateMatcher:Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;->reset()V

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator;->candidateMatcherActive:Z

    .line 65
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v1, p0, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator;->lastFramePresentationTimeNs:J

    .line 66
    iput v0, p0, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator;->framesWithoutSyncCount:I

    .line 67
    return-void
.end method
