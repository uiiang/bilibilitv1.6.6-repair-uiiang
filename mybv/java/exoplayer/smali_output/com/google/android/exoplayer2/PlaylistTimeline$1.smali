.class Lcom/google/android/exoplayer2/PlaylistTimeline$1;
.super Lcom/google/android/exoplayer2/source/ForwardingTimeline;
.source "PlaylistTimeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/exoplayer2/PlaylistTimeline;->copyWithPlaceholderTimeline(Lcom/google/android/exoplayer2/source/ShuffleOrder;)Lcom/google/android/exoplayer2/PlaylistTimeline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer2/PlaylistTimeline;

.field private final window:Lcom/google/android/exoplayer2/Timeline$Window;


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer2/PlaylistTimeline;Lcom/google/android/exoplayer2/Timeline;)V
    .registers 4
    .param p1, "this$0"    # Lcom/google/android/exoplayer2/PlaylistTimeline;
    .param p2, "timeline"    # Lcom/google/android/exoplayer2/Timeline;

    .line 145
    iput-object p1, p0, Lcom/google/android/exoplayer2/PlaylistTimeline$1;->this$0:Lcom/google/android/exoplayer2/PlaylistTimeline;

    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/source/ForwardingTimeline;-><init>(Lcom/google/android/exoplayer2/Timeline;)V

    .line 146
    new-instance v0, Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/Timeline$Window;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/PlaylistTimeline$1;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    return-void
.end method


# virtual methods
.method public getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;Z)Lcom/google/android/exoplayer2/Timeline$Period;
    .registers 15
    .param p1, "periodIndex"    # I
    .param p2, "period"    # Lcom/google/android/exoplayer2/Timeline$Period;
    .param p3, "setIds"    # Z

    .line 150
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/ForwardingTimeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;Z)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v10

    .line 151
    .local v10, "superPeriod":Lcom/google/android/exoplayer2/Timeline$Period;
    iget v0, v10, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    iget-object v1, p0, Lcom/google/android/exoplayer2/PlaylistTimeline$1;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-super {p0, v0, v1}, Lcom/google/android/exoplayer2/source/ForwardingTimeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline$Window;->isLive()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 153
    iget-object v1, p2, Lcom/google/android/exoplayer2/Timeline$Period;->id:Ljava/lang/Object;

    iget-object v2, p2, Lcom/google/android/exoplayer2/Timeline$Period;->uid:Ljava/lang/Object;

    iget v3, p2, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    iget-wide v4, p2, Lcom/google/android/exoplayer2/Timeline$Period;->durationUs:J

    iget-wide v6, p2, Lcom/google/android/exoplayer2/Timeline$Period;->positionInWindowUs:J

    sget-object v8, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->NONE:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    const/4 v9, 0x1

    move-object v0, v10

    invoke-virtual/range {v0 .. v9}, Lcom/google/android/exoplayer2/Timeline$Period;->set(Ljava/lang/Object;Ljava/lang/Object;IJJLcom/google/android/exoplayer2/source/ads/AdPlaybackState;Z)Lcom/google/android/exoplayer2/Timeline$Period;

    goto :goto_27

    .line 162
    :cond_24
    const/4 v0, 0x1

    iput-boolean v0, v10, Lcom/google/android/exoplayer2/Timeline$Period;->isPlaceholder:Z

    .line 164
    :goto_27
    return-object v10
.end method
