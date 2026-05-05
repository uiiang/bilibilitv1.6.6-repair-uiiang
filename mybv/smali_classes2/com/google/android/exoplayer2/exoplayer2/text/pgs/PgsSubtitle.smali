.class final Lcom/google/android/exoplayer2/text/pgs/PgsSubtitle;
.super Ljava/lang/Object;
.source "PgsSubtitle.java"

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

    .line 36
    .local p1, "cues":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/text/Cue;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/google/android/exoplayer2/text/pgs/PgsSubtitle;->cues:Ljava/util/List;

    .line 38
    return-void
.end method


# virtual methods
.method public getCues(J)Ljava/util/List;
    .registers 4
    .param p1, "timeUs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/Cue;",
            ">;"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/pgs/PgsSubtitle;->cues:Ljava/util/List;

    return-object v0
.end method

.method public getEventTime(I)J
    .registers 4
    .param p1, "index"    # I

    .line 52
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getEventTimeCount()I
    .registers 2

    .line 47
    const/4 v0, 0x1

    return v0
.end method

.method public getNextEventTimeIndex(J)I
    .registers 4
    .param p1, "timeUs"    # J

    .line 42
    const/4 v0, -0x1

    return v0
.end method
