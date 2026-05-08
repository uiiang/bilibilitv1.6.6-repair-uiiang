.class final Lcom/google/android/exoplayer2/text/webvtt/WebvttSubtitle;
.super Ljava/lang/Object;
.source "WebvttSubtitle.java"

# interfaces
.implements Lcom/google/android/exoplayer2/text/Subtitle;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final cueInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/webvtt/WebvttCueInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final cueTimesUs:[J

.field private final sortedCueTimesUs:[J


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/webvtt/WebvttCueInfo;",
            ">;)V"
        }
    .end annotation

    .line 44
    .local p1, "cueInfos":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/text/webvtt/WebvttCueInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttSubtitle;->cueInfos:Ljava/util/List;

    .line 46
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttSubtitle;->cueTimesUs:[J

    .line 47
    const/4 v0, 0x0

    .local v0, "cueIndex":I
    :goto_19
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_38

    .line 48
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueInfo;

    .line 49
    .local v1, "cueInfo":Lcom/google/android/exoplayer2/text/webvtt/WebvttCueInfo;
    mul-int/lit8 v2, v0, 0x2

    .line 50
    .local v2, "arrayIndex":I
    iget-object v3, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttSubtitle;->cueTimesUs:[J

    iget-wide v4, v1, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueInfo;->startTimeUs:J

    aput-wide v4, v3, v2

    .line 51
    iget-object v3, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttSubtitle;->cueTimesUs:[J

    add-int/lit8 v4, v2, 0x1

    iget-wide v5, v1, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueInfo;->endTimeUs:J

    aput-wide v5, v3, v4

    .line 47
    .end local v1    # "cueInfo":Lcom/google/android/exoplayer2/text/webvtt/WebvttCueInfo;
    .end local v2    # "arrayIndex":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 53
    .end local v0    # "cueIndex":I
    :cond_38
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttSubtitle;->cueTimesUs:[J

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttSubtitle;->sortedCueTimesUs:[J

    .line 54
    invoke-static {v0}, Ljava/util/Arrays;->sort([J)V

    .line 55
    return-void
.end method

.method static synthetic lambda$getCues$0(Lcom/google/android/exoplayer2/text/webvtt/WebvttCueInfo;Lcom/google/android/exoplayer2/text/webvtt/WebvttCueInfo;)I
    .registers 6
    .param p0, "c1"    # Lcom/google/android/exoplayer2/text/webvtt/WebvttCueInfo;
    .param p1, "c2"    # Lcom/google/android/exoplayer2/text/webvtt/WebvttCueInfo;

    .line 91
    iget-wide v0, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueInfo;->startTimeUs:J

    iget-wide v2, p1, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueInfo;->startTimeUs:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    return v0
.end method


# virtual methods
.method public getCues(J)Ljava/util/List;
    .registers 11
    .param p1, "timeUs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/Cue;",
            ">;"
        }
    .end annotation

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 78
    .local v0, "currentCues":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/text/Cue;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 79
    .local v1, "cuesWithUnsetLine":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/text/webvtt/WebvttCueInfo;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    iget-object v3, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttSubtitle;->cueInfos:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v2, v3, :cond_46

    .line 80
    iget-object v3, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttSubtitle;->cueTimesUs:[J

    mul-int/lit8 v5, v2, 0x2

    aget-wide v5, v3, v5

    cmp-long v7, v5, p1

    if-gtz v7, :cond_43

    mul-int/lit8 v5, v2, 0x2

    add-int/2addr v5, v4

    aget-wide v4, v3, v5

    cmp-long v3, p1, v4

    if-gez v3, :cond_43

    .line 81
    iget-object v3, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttSubtitle;->cueInfos:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueInfo;

    .line 82
    .local v3, "cueInfo":Lcom/google/android/exoplayer2/text/webvtt/WebvttCueInfo;
    iget-object v4, v3, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueInfo;->cue:Lcom/google/android/exoplayer2/text/Cue;

    iget v4, v4, Lcom/google/android/exoplayer2/text/Cue;->line:F

    const v5, -0x800001

    cmpl-float v4, v4, v5

    if-nez v4, :cond_3e

    .line 83
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_43

    .line 85
    :cond_3e
    iget-object v4, v3, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueInfo;->cue:Lcom/google/android/exoplayer2/text/Cue;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    .end local v3    # "cueInfo":Lcom/google/android/exoplayer2/text/webvtt/WebvttCueInfo;
    :cond_43
    :goto_43
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 91
    .end local v2    # "i":I
    :cond_46
    new-instance v2, Lcom/google/android/exoplayer2/text/webvtt/WebvttSubtitle$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/google/android/exoplayer2/text/webvtt/WebvttSubtitle$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 92
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_4f
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_72

    .line 93
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueInfo;

    iget-object v3, v3, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueInfo;->cue:Lcom/google/android/exoplayer2/text/Cue;

    .line 94
    .local v3, "cue":Lcom/google/android/exoplayer2/text/Cue;
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/text/Cue;->buildUpon()Lcom/google/android/exoplayer2/text/Cue$Builder;

    move-result-object v5

    rsub-int/lit8 v6, v2, -0x1

    int-to-float v6, v6

    invoke-virtual {v5, v6, v4}, Lcom/google/android/exoplayer2/text/Cue$Builder;->setLine(FI)Lcom/google/android/exoplayer2/text/Cue$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/text/Cue$Builder;->build()Lcom/google/android/exoplayer2/text/Cue;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    .end local v3    # "cue":Lcom/google/android/exoplayer2/text/Cue;
    add-int/lit8 v2, v2, 0x1

    goto :goto_4f

    .line 96
    .end local v2    # "i":I
    :cond_72
    return-object v0
.end method

.method public getEventTime(I)J
    .registers 5
    .param p1, "index"    # I

    .line 70
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p1, :cond_6

    const/4 v2, 0x1

    goto :goto_7

    :cond_6
    const/4 v2, 0x0

    :goto_7
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 71
    iget-object v2, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttSubtitle;->sortedCueTimesUs:[J

    array-length v2, v2

    if-ge p1, v2, :cond_10

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 72
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttSubtitle;->sortedCueTimesUs:[J

    aget-wide v1, v0, p1

    return-wide v1
.end method

.method public getEventTimeCount()I
    .registers 2

    .line 65
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttSubtitle;->sortedCueTimesUs:[J

    array-length v0, v0

    return v0
.end method

.method public getNextEventTimeIndex(J)I
    .registers 5
    .param p1, "timeUs"    # J

    .line 59
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttSubtitle;->sortedCueTimesUs:[J

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1, v1}, Lcom/google/android/exoplayer2/util/Util;->binarySearchCeil([JJZZ)I

    move-result v0

    .line 60
    .local v0, "index":I
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttSubtitle;->sortedCueTimesUs:[J

    array-length v1, v1

    if-ge v0, v1, :cond_e

    move v1, v0

    goto :goto_f

    :cond_e
    const/4 v1, -0x1

    :goto_f
    return v1
.end method
