.class final Lcom/google/android/exoplayer2/text/webvtt/Mp4WebvttSubtitle;
.super Ljava/lang/Object;
.source "Mp4WebvttSubtitle.java"

# interfaces
.implements Lcom/google/android/exoplayer2/text/Subtitle;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final cues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/Cue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/Cue;",
            ">;)V"
        }
    .end annotation

    .line 38
    .local p1, "cueList":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/text/Cue;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/webvtt/Mp4WebvttSubtitle;->cues:Ljava/util/List;

    .line 40
    return-void
.end method


# virtual methods
.method public getCues(J)Ljava/util/List;
    .registers 6
    .param p1, "timeUs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/Cue;",
            ">;"
        }
    .end annotation

    .line 60
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_9

    iget-object v0, p0, Lcom/google/android/exoplayer2/text/webvtt/Mp4WebvttSubtitle;->cues:Ljava/util/List;

    goto :goto_d

    :cond_9
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_d
    return-object v0
.end method

.method public getEventTime(I)J
    .registers 4
    .param p1, "index"    # I

    .line 54
    if-nez p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 55
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getEventTimeCount()I
    .registers 2

    .line 49
    const/4 v0, 0x1

    return v0
.end method

.method public getNextEventTimeIndex(J)I
    .registers 6
    .param p1, "timeUs"    # J

    .line 44
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_8

    const/4 v0, 0x0

    goto :goto_9

    :cond_8
    const/4 v0, -0x1

    :goto_9
    return v0
.end method
