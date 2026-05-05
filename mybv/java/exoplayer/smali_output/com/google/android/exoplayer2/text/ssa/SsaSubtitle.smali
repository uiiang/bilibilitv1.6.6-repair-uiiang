.class final Lcom/google/android/exoplayer2/text/ssa/SsaSubtitle;
.super Ljava/lang/Object;
.source "SsaSubtitle.java"

# interfaces
.implements Lcom/google/android/exoplayer2/text/Subtitle;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final cueTimesUs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final cues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/Cue;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/Cue;",
            ">;>;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 44
    .local p1, "cues":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lcom/google/android/exoplayer2/text/Cue;>;>;"
    .local p2, "cueTimesUs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/google/android/exoplayer2/text/ssa/SsaSubtitle;->cues:Ljava/util/List;

    .line 46
    iput-object p2, p0, Lcom/google/android/exoplayer2/text/ssa/SsaSubtitle;->cueTimesUs:Ljava/util/List;

    .line 47
    return-void
.end method


# virtual methods
.method public getCues(J)Ljava/util/List;
    .registers 7
    .param p1, "timeUs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/Cue;",
            ">;"
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/ssa/SsaSubtitle;->cueTimesUs:Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/util/Util;->binarySearchFloor(Ljava/util/List;Ljava/lang/Comparable;ZZ)I

    move-result v0

    .line 70
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_14

    .line 72
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 74
    :cond_14
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/ssa/SsaSubtitle;->cues:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    return-object v1
.end method

.method public getEventTime(I)J
    .registers 5
    .param p1, "index"    # I

    .line 62
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p1, :cond_6

    const/4 v2, 0x1

    goto :goto_7

    :cond_6
    const/4 v2, 0x0

    :goto_7
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 63
    iget-object v2, p0, Lcom/google/android/exoplayer2/text/ssa/SsaSubtitle;->cueTimesUs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge p1, v2, :cond_13

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 64
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/ssa/SsaSubtitle;->cueTimesUs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getEventTimeCount()I
    .registers 2

    .line 57
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/ssa/SsaSubtitle;->cueTimesUs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getNextEventTimeIndex(J)I
    .registers 6
    .param p1, "timeUs"    # J

    .line 51
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/ssa/SsaSubtitle;->cueTimesUs:Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v2}, Lcom/google/android/exoplayer2/util/Util;->binarySearchCeil(Ljava/util/List;Ljava/lang/Comparable;ZZ)I

    move-result v0

    .line 52
    .local v0, "index":I
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/ssa/SsaSubtitle;->cueTimesUs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_15

    move v1, v0

    goto :goto_16

    :cond_15
    const/4 v1, -0x1

    :goto_16
    return v1
.end method
