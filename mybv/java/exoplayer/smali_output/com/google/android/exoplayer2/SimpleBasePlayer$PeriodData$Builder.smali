.class public final Lcom/google/android/exoplayer2/SimpleBasePlayer$PeriodData$Builder;
.super Ljava/lang/Object;
.source "SimpleBasePlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/SimpleBasePlayer$PeriodData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

.field private durationUs:J

.field private isPlaceholder:Z

.field private uid:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/SimpleBasePlayer$PeriodData;)V
    .registers 4
    .param p1, "periodData"    # Lcom/google/android/exoplayer2/SimpleBasePlayer$PeriodData;

    .line 1803
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1804
    iget-object v0, p1, Lcom/google/android/exoplayer2/SimpleBasePlayer$PeriodData;->uid:Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$PeriodData$Builder;->uid:Ljava/lang/Object;

    .line 1805
    iget-wide v0, p1, Lcom/google/android/exoplayer2/SimpleBasePlayer$PeriodData;->durationUs:J

    iput-wide v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$PeriodData$Builder;->durationUs:J

    .line 1806
    iget-object v0, p1, Lcom/google/android/exoplayer2/SimpleBasePlayer$PeriodData;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    iput-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$PeriodData$Builder;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    .line 1807
    iget-boolean v0, p1, Lcom/google/android/exoplayer2/SimpleBasePlayer$PeriodData;->isPlaceholder:Z

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$PeriodData$Builder;->isPlaceholder:Z

    .line 1808
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/SimpleBasePlayer$PeriodData;Lcom/google/android/exoplayer2/SimpleBasePlayer$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/google/android/exoplayer2/SimpleBasePlayer$PeriodData;
    .param p2, "x1"    # Lcom/google/android/exoplayer2/SimpleBasePlayer$1;

    .line 1784
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$PeriodData$Builder;-><init>(Lcom/google/android/exoplayer2/SimpleBasePlayer$PeriodData;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .registers 4
    .param p1, "uid"    # Ljava/lang/Object;

    .line 1796
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1797
    iput-object p1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$PeriodData$Builder;->uid:Ljava/lang/Object;

    .line 1798
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$PeriodData$Builder;->durationUs:J

    .line 1799
    sget-object v0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->NONE:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    iput-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$PeriodData$Builder;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    .line 1800
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$PeriodData$Builder;->isPlaceholder:Z

    .line 1801
    return-void
.end method

.method static synthetic access$6500(Lcom/google/android/exoplayer2/SimpleBasePlayer$PeriodData$Builder;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/SimpleBasePlayer$PeriodData$Builder;

    .line 1784
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$PeriodData$Builder;->uid:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$6600(Lcom/google/android/exoplayer2/SimpleBasePlayer$PeriodData$Builder;)J
    .registers 3
    .param p0, "x0"    # Lcom/google/android/exoplayer2/SimpleBasePlayer$PeriodData$Builder;

    .line 1784
    iget-wide v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$PeriodData$Builder;->durationUs:J

    return-wide v0
.end method

.method static synthetic access$6700(Lcom/google/android/exoplayer2/SimpleBasePlayer$PeriodData$Builder;)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/SimpleBasePlayer$PeriodData$Builder;

    .line 1784
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$PeriodData$Builder;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    return-object v0
.end method

.method static synthetic access$6800(Lcom/google/android/exoplayer2/SimpleBasePlayer$PeriodData$Builder;)Z
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/SimpleBasePlayer$PeriodData$Builder;

    .line 1784
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$PeriodData$Builder;->isPlaceholder:Z

    return v0
.end method


# virtual methods
.method public build()Lcom/google/android/exoplayer2/SimpleBasePlayer$PeriodData;
    .registers 3

    .line 1867
    new-instance v0, Lcom/google/android/exoplayer2/SimpleBasePlayer$PeriodData;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$PeriodData;-><init>(Lcom/google/android/exoplayer2/SimpleBasePlayer$PeriodData$Builder;Lcom/google/android/exoplayer2/SimpleBasePlayer$1;)V

    return-object v0
.end method

.method public setAdPlaybackState(Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;)Lcom/google/android/exoplayer2/SimpleBasePlayer$PeriodData$Builder;
    .registers 2
    .param p1, "adPlaybackState"    # Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    .line 1847
    iput-object p1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$PeriodData$Builder;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    .line 1848
    return-object p0
.end method

.method public setDurationUs(J)Lcom/google/android/exoplayer2/SimpleBasePlayer$PeriodData$Builder;
    .registers 6
    .param p1, "durationUs"    # J

    .line 1833
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p1, v0

    if-eqz v2, :cond_12

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_10

    goto :goto_12

    :cond_10
    const/4 v0, 0x0

    goto :goto_13

    :cond_12
    :goto_12
    const/4 v0, 0x1

    :goto_13
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 1834
    iput-wide p1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$PeriodData$Builder;->durationUs:J

    .line 1835
    return-object p0
.end method

.method public setIsPlaceholder(Z)Lcom/google/android/exoplayer2/SimpleBasePlayer$PeriodData$Builder;
    .registers 2
    .param p1, "isPlaceholder"    # Z

    .line 1861
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$PeriodData$Builder;->isPlaceholder:Z

    .line 1862
    return-object p0
.end method

.method public setUid(Ljava/lang/Object;)Lcom/google/android/exoplayer2/SimpleBasePlayer$PeriodData$Builder;
    .registers 2
    .param p1, "uid"    # Ljava/lang/Object;

    .line 1818
    iput-object p1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$PeriodData$Builder;->uid:Ljava/lang/Object;

    .line 1819
    return-object p0
.end method
