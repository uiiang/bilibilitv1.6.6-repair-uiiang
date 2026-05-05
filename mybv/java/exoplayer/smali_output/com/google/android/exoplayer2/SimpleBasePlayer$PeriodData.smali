.class public final Lcom/google/android/exoplayer2/SimpleBasePlayer$PeriodData;
.super Ljava/lang/Object;
.source "SimpleBasePlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/SimpleBasePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "PeriodData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/SimpleBasePlayer$PeriodData$Builder;
    }
.end annotation


# instance fields
.field public final adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

.field public final durationUs:J

.field public final isPlaceholder:Z

.field public final uid:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/SimpleBasePlayer$PeriodData$Builder;)V
    .registers 4
    .param p1, "builder"    # Lcom/google/android/exoplayer2/SimpleBasePlayer$PeriodData$Builder;

    .line 1889
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1890
    # getter for: Lcom/google/android/exoplayer2/SimpleBasePlayer$PeriodData$Builder;->uid:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$PeriodData$Builder;->access$6500(Lcom/google/android/exoplayer2/SimpleBasePlayer$PeriodData$Builder;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$PeriodData;->uid:Ljava/lang/Object;

    .line 1891
    # getter for: Lcom/google/android/exoplayer2/SimpleBasePlayer$PeriodData$Builder;->durationUs:J
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$PeriodData$Builder;->access$6600(Lcom/google/android/exoplayer2/SimpleBasePlayer$PeriodData$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$PeriodData;->durationUs:J

    .line 1892
    # getter for: Lcom/google/android/exoplayer2/SimpleBasePlayer$PeriodData$Builder;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$PeriodData$Builder;->access$6700(Lcom/google/android/exoplayer2/SimpleBasePlayer$PeriodData$Builder;)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$PeriodData;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    .line 1893
    # getter for: Lcom/google/android/exoplayer2/SimpleBasePlayer$PeriodData$Builder;->isPlaceholder:Z
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$PeriodData$Builder;->access$6800(Lcom/google/android/exoplayer2/SimpleBasePlayer$PeriodData$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$PeriodData;->isPlaceholder:Z

    .line 1894
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/SimpleBasePlayer$PeriodData$Builder;Lcom/google/android/exoplayer2/SimpleBasePlayer$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/google/android/exoplayer2/SimpleBasePlayer$PeriodData$Builder;
    .param p2, "x1"    # Lcom/google/android/exoplayer2/SimpleBasePlayer$1;

    .line 1781
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$PeriodData;-><init>(Lcom/google/android/exoplayer2/SimpleBasePlayer$PeriodData$Builder;)V

    return-void
.end method


# virtual methods
.method public buildUpon()Lcom/google/android/exoplayer2/SimpleBasePlayer$PeriodData$Builder;
    .registers 3

    .line 1898
    new-instance v0, Lcom/google/android/exoplayer2/SimpleBasePlayer$PeriodData$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$PeriodData$Builder;-><init>(Lcom/google/android/exoplayer2/SimpleBasePlayer$PeriodData;Lcom/google/android/exoplayer2/SimpleBasePlayer$1;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 10
    .param p1, "o"    # Ljava/lang/Object;

    .line 1903
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 1904
    return v0

    .line 1906
    :cond_4
    instance-of v1, p1, Lcom/google/android/exoplayer2/SimpleBasePlayer$PeriodData;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 1907
    return v2

    .line 1909
    :cond_a
    move-object v1, p1

    check-cast v1, Lcom/google/android/exoplayer2/SimpleBasePlayer$PeriodData;

    .line 1910
    .local v1, "periodData":Lcom/google/android/exoplayer2/SimpleBasePlayer$PeriodData;
    iget-object v3, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$PeriodData;->uid:Ljava/lang/Object;

    iget-object v4, v1, Lcom/google/android/exoplayer2/SimpleBasePlayer$PeriodData;->uid:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_30

    iget-wide v3, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$PeriodData;->durationUs:J

    iget-wide v5, v1, Lcom/google/android/exoplayer2/SimpleBasePlayer$PeriodData;->durationUs:J

    cmp-long v7, v3, v5

    if-nez v7, :cond_30

    iget-object v3, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$PeriodData;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    iget-object v4, v1, Lcom/google/android/exoplayer2/SimpleBasePlayer$PeriodData;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    .line 1912
    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_30

    iget-boolean v3, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$PeriodData;->isPlaceholder:Z

    iget-boolean v4, v1, Lcom/google/android/exoplayer2/SimpleBasePlayer$PeriodData;->isPlaceholder:Z

    if-ne v3, v4, :cond_30

    goto :goto_31

    :cond_30
    const/4 v0, 0x0

    .line 1910
    :goto_31
    return v0
.end method

.method public hashCode()I
    .registers 7

    .line 1918
    const/4 v0, 0x7

    .line 1919
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$PeriodData;->uid:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 1920
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-wide v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$PeriodData;->durationUs:J

    const/16 v4, 0x20

    ushr-long v4, v2, v4

    xor-long/2addr v2, v4

    long-to-int v3, v2

    add-int/2addr v0, v3

    .line 1921
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$PeriodData;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 1922
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$PeriodData;->isPlaceholder:Z

    add-int/2addr v0, v2

    .line 1923
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method
