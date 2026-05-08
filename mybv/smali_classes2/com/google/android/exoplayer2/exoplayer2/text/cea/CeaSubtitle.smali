.class final Lcom/google/android/exoplayer2/text/cea/CeaSubtitle;
.super Ljava/lang/Object;
.source "CeaSubtitle.java"

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
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/Cue;",
            ">;)V"
        }
    .end annotation

    .line 41
    .local p1, "cues":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/text/Cue;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/google/android/exoplayer2/text/cea/CeaSubtitle;->cues:Ljava/util/List;

    .line 43
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

    .line 63
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_9

    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/CeaSubtitle;->cues:Ljava/util/List;

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

    .line 57
    if-nez p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 58
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getEventTimeCount()I
    .registers 2

    .line 52
    const/4 v0, 0x1

    return v0
.end method

.method public getNextEventTimeIndex(J)I
    .registers 6
    .param p1, "timeUs"    # J

    .line 47
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
