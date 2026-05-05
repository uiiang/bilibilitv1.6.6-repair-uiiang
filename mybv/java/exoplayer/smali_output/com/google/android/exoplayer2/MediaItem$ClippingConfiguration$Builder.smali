.class public final Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;
.super Ljava/lang/Object;
.source "MediaItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private endPositionMs:J

.field private relativeToDefaultPosition:Z

.field private relativeToLiveWindow:Z

.field private startPositionMs:J

.field private startsAtKeyFrame:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1762
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1763
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;->endPositionMs:J

    .line 1764
    return-void
.end method

.method private constructor <init>(Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;)V
    .registers 4
    .param p1, "clippingConfiguration"    # Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;

    .line 1766
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1767
    iget-wide v0, p1, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;->startPositionMs:J

    iput-wide v0, p0, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;->startPositionMs:J

    .line 1768
    iget-wide v0, p1, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;->endPositionMs:J

    iput-wide v0, p0, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;->endPositionMs:J

    .line 1769
    iget-boolean v0, p1, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;->relativeToLiveWindow:Z

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;->relativeToLiveWindow:Z

    .line 1770
    iget-boolean v0, p1, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;->relativeToDefaultPosition:Z

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;->relativeToDefaultPosition:Z

    .line 1771
    iget-boolean v0, p1, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;->startsAtKeyFrame:Z

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;->startsAtKeyFrame:Z

    .line 1772
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;Lcom/google/android/exoplayer2/MediaItem$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;
    .param p2, "x1"    # Lcom/google/android/exoplayer2/MediaItem$1;

    .line 1754
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;-><init>(Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;)V

    return-void
.end method

.method static synthetic access$3800(Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;)J
    .registers 3
    .param p0, "x0"    # Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;

    .line 1754
    iget-wide v0, p0, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;->startPositionMs:J

    return-wide v0
.end method

.method static synthetic access$3900(Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;)J
    .registers 3
    .param p0, "x0"    # Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;

    .line 1754
    iget-wide v0, p0, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;->endPositionMs:J

    return-wide v0
.end method

.method static synthetic access$4000(Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;)Z
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;

    .line 1754
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;->relativeToLiveWindow:Z

    return v0
.end method

.method static synthetic access$4100(Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;)Z
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;

    .line 1754
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;->relativeToDefaultPosition:Z

    return v0
.end method

.method static synthetic access$4200(Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;)Z
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;

    .line 1754
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;->startsAtKeyFrame:Z

    return v0
.end method


# virtual methods
.method public build()Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;
    .registers 2

    .line 1833
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;->buildClippingProperties()Lcom/google/android/exoplayer2/MediaItem$ClippingProperties;

    move-result-object v0

    return-object v0
.end method

.method public buildClippingProperties()Lcom/google/android/exoplayer2/MediaItem$ClippingProperties;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1841
    new-instance v0, Lcom/google/android/exoplayer2/MediaItem$ClippingProperties;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer2/MediaItem$ClippingProperties;-><init>(Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;Lcom/google/android/exoplayer2/MediaItem$1;)V

    return-object v0
.end method

.method public setEndPositionMs(J)Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;
    .registers 6
    .param p1, "endPositionMs"    # J

    .line 1792
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-eqz v2, :cond_f

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 1793
    iput-wide p1, p0, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;->endPositionMs:J

    .line 1794
    return-object p0
.end method

.method public setRelativeToDefaultPosition(Z)Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;
    .registers 2
    .param p1, "relativeToDefaultPosition"    # Z

    .line 1814
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;->relativeToDefaultPosition:Z

    .line 1815
    return-object p0
.end method

.method public setRelativeToLiveWindow(Z)Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;
    .registers 2
    .param p1, "relativeToLiveWindow"    # Z

    .line 1804
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;->relativeToLiveWindow:Z

    .line 1805
    return-object p0
.end method

.method public setStartPositionMs(J)Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;
    .registers 6
    .param p1, "startPositionMs"    # J

    .line 1780
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 1781
    iput-wide p1, p0, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;->startPositionMs:J

    .line 1782
    return-object p0
.end method

.method public setStartsAtKeyFrame(Z)Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;
    .registers 2
    .param p1, "startsAtKeyFrame"    # Z

    .line 1824
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;->startsAtKeyFrame:Z

    .line 1825
    return-object p0
.end method
