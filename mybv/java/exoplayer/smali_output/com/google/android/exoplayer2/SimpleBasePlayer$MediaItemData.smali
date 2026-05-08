.class public final Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;
.super Ljava/lang/Object;
.source "SimpleBasePlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/SimpleBasePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "MediaItemData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;
    }
.end annotation


# instance fields
.field private final combinedMediaMetadata:Lcom/google/android/exoplayer2/MediaMetadata;

.field public final defaultPositionUs:J

.field public final durationUs:J

.field public final elapsedRealtimeEpochOffsetMs:J

.field public final isDynamic:Z

.field public final isPlaceholder:Z

.field public final isSeekable:Z

.field public final liveConfiguration:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

.field public final manifest:Ljava/lang/Object;

.field public final mediaItem:Lcom/google/android/exoplayer2/MediaItem;

.field public final mediaMetadata:Lcom/google/android/exoplayer2/MediaMetadata;

.field private final periodPositionInWindowUs:[J

.field public final periods:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/android/exoplayer2/SimpleBasePlayer$PeriodData;",
            ">;"
        }
    .end annotation
.end field

.field public final positionInFirstPeriodUs:J

.field public final presentationStartTimeMs:J

.field public final tracks:Lcom/google/android/exoplayer2/Tracks;

.field public final uid:Ljava/lang/Object;

.field public final windowStartTimeMs:J


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;)V
    .registers 11
    .param p1, "builder"    # Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;

    .line 1598
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1599
    # getter for: Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->liveConfiguration:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->access$4700(Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;)Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    move-result-object v0

    const/4 v1, 0x0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v4, 0x1

    if-nez v0, :cond_44

    .line 1600
    nop

    .line 1601
    # getter for: Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->presentationStartTimeMs:J
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->access$4800(Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;)J

    move-result-wide v5

    cmp-long v0, v5, v2

    if-nez v0, :cond_1b

    const/4 v0, 0x1

    goto :goto_1c

    :cond_1b
    const/4 v0, 0x0

    .line 1600
    :goto_1c
    const-string v5, "presentationStartTimeMs can only be set if liveConfiguration != null"

    invoke-static {v0, v5}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 1603
    nop

    .line 1604
    # getter for: Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->windowStartTimeMs:J
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->access$4900(Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;)J

    move-result-wide v5

    cmp-long v0, v5, v2

    if-nez v0, :cond_2c

    const/4 v0, 0x1

    goto :goto_2d

    :cond_2c
    const/4 v0, 0x0

    .line 1603
    :goto_2d
    const-string v5, "windowStartTimeMs can only be set if liveConfiguration != null"

    invoke-static {v0, v5}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 1606
    nop

    .line 1607
    # getter for: Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->elapsedRealtimeEpochOffsetMs:J
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->access$5000(Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;)J

    move-result-wide v5

    cmp-long v0, v5, v2

    if-nez v0, :cond_3d

    const/4 v0, 0x1

    goto :goto_3e

    :cond_3d
    const/4 v0, 0x0

    .line 1606
    :goto_3e
    const-string v5, "elapsedRealtimeEpochOffsetMs can only be set if liveConfiguration != null"

    invoke-static {v0, v5}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    goto :goto_69

    .line 1609
    :cond_44
    # getter for: Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->presentationStartTimeMs:J
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->access$4800(Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;)J

    move-result-wide v5

    cmp-long v0, v5, v2

    if-eqz v0, :cond_69

    .line 1610
    # getter for: Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->windowStartTimeMs:J
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->access$4900(Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;)J

    move-result-wide v5

    cmp-long v0, v5, v2

    if-eqz v0, :cond_69

    .line 1611
    nop

    .line 1612
    # getter for: Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->windowStartTimeMs:J
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->access$4900(Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;)J

    move-result-wide v5

    # getter for: Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->presentationStartTimeMs:J
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->access$4800(Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;)J

    move-result-wide v7

    cmp-long v0, v5, v7

    if-ltz v0, :cond_63

    const/4 v0, 0x1

    goto :goto_64

    :cond_63
    const/4 v0, 0x0

    .line 1611
    :goto_64
    const-string v5, "windowStartTimeMs can\'t be less than presentationStartTimeMs"

    invoke-static {v0, v5}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 1615
    :cond_69
    :goto_69
    # getter for: Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->periods:Lcom/google/common/collect/ImmutableList;
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->access$5100(Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    .line 1616
    .local v0, "periodCount":I
    # getter for: Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->durationUs:J
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->access$5200(Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;)J

    move-result-wide v5

    cmp-long v7, v5, v2

    if-eqz v7, :cond_8d

    .line 1617
    nop

    .line 1618
    # getter for: Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->defaultPositionUs:J
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->access$5300(Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;)J

    move-result-wide v2

    # getter for: Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->durationUs:J
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->access$5200(Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;)J

    move-result-wide v5

    cmp-long v7, v2, v5

    if-gtz v7, :cond_87

    goto :goto_88

    :cond_87
    const/4 v4, 0x0

    .line 1617
    :goto_88
    const-string v2, "defaultPositionUs can\'t be greater than durationUs"

    invoke-static {v4, v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 1621
    :cond_8d
    # getter for: Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->uid:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->access$5400(Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->uid:Ljava/lang/Object;

    .line 1622
    # getter for: Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->tracks:Lcom/google/android/exoplayer2/Tracks;
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->access$5500(Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;)Lcom/google/android/exoplayer2/Tracks;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->tracks:Lcom/google/android/exoplayer2/Tracks;

    .line 1623
    # getter for: Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->mediaItem:Lcom/google/android/exoplayer2/MediaItem;
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->access$5600(Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;)Lcom/google/android/exoplayer2/MediaItem;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->mediaItem:Lcom/google/android/exoplayer2/MediaItem;

    .line 1624
    # getter for: Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->mediaMetadata:Lcom/google/android/exoplayer2/MediaMetadata;
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->access$5700(Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;)Lcom/google/android/exoplayer2/MediaMetadata;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->mediaMetadata:Lcom/google/android/exoplayer2/MediaMetadata;

    .line 1625
    # getter for: Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->manifest:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->access$5800(Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->manifest:Ljava/lang/Object;

    .line 1626
    # getter for: Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->liveConfiguration:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->access$4700(Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;)Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->liveConfiguration:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    .line 1627
    # getter for: Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->presentationStartTimeMs:J
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->access$4800(Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->presentationStartTimeMs:J

    .line 1628
    # getter for: Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->windowStartTimeMs:J
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->access$4900(Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->windowStartTimeMs:J

    .line 1629
    # getter for: Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->elapsedRealtimeEpochOffsetMs:J
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->access$5000(Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->elapsedRealtimeEpochOffsetMs:J

    .line 1630
    # getter for: Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->isSeekable:Z
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->access$5900(Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->isSeekable:Z

    .line 1631
    # getter for: Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->isDynamic:Z
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->access$6000(Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->isDynamic:Z

    .line 1632
    # getter for: Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->defaultPositionUs:J
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->access$5300(Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->defaultPositionUs:J

    .line 1633
    # getter for: Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->durationUs:J
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->access$5200(Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->durationUs:J

    .line 1634
    # getter for: Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->positionInFirstPeriodUs:J
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->access$6100(Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->positionInFirstPeriodUs:J

    .line 1635
    # getter for: Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->isPlaceholder:Z
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->access$6200(Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->isPlaceholder:Z

    .line 1636
    # getter for: Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->periods:Lcom/google/common/collect/ImmutableList;
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->access$5100(Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;)Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->periods:Lcom/google/common/collect/ImmutableList;

    .line 1637
    invoke-virtual {v4}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v5

    new-array v5, v5, [J

    iput-object v5, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->periodPositionInWindowUs:[J

    .line 1638
    invoke-virtual {v4}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_119

    .line 1639
    neg-long v2, v2

    aput-wide v2, v5, v1

    .line 1640
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_ff
    add-int/lit8 v2, v0, -0x1

    if-ge v1, v2, :cond_119

    .line 1641
    iget-object v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->periodPositionInWindowUs:[J

    add-int/lit8 v3, v1, 0x1

    aget-wide v4, v2, v1

    iget-object v6, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->periods:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v6, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/exoplayer2/SimpleBasePlayer$PeriodData;

    iget-wide v6, v6, Lcom/google/android/exoplayer2/SimpleBasePlayer$PeriodData;->durationUs:J

    add-long/2addr v4, v6

    aput-wide v4, v2, v3

    .line 1640
    add-int/lit8 v1, v1, 0x1

    goto :goto_ff

    .line 1644
    .end local v1    # "i":I
    :cond_119
    nop

    .line 1645
    iget-object v1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->mediaMetadata:Lcom/google/android/exoplayer2/MediaMetadata;

    if-eqz v1, :cond_11f

    goto :goto_127

    :cond_11f
    iget-object v1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->mediaItem:Lcom/google/android/exoplayer2/MediaItem;

    iget-object v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->tracks:Lcom/google/android/exoplayer2/Tracks;

    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->getCombinedMediaMetadata(Lcom/google/android/exoplayer2/MediaItem;Lcom/google/android/exoplayer2/Tracks;)Lcom/google/android/exoplayer2/MediaMetadata;

    move-result-object v1

    :goto_127
    iput-object v1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->combinedMediaMetadata:Lcom/google/android/exoplayer2/MediaMetadata;

    .line 1646
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;Lcom/google/android/exoplayer2/SimpleBasePlayer$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;
    .param p2, "x1"    # Lcom/google/android/exoplayer2/SimpleBasePlayer$1;

    .line 1211
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;-><init>(Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;)V

    return-void
.end method

.method static synthetic access$4300(Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;I)Ljava/lang/Object;
    .registers 3
    .param p0, "x0"    # Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;
    .param p1, "x1"    # I

    .line 1211
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->getPeriodUid(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4400(Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;
    .registers 4
    .param p0, "x0"    # Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/google/android/exoplayer2/Timeline$Window;

    .line 1211
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4500(Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;IILcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;
    .registers 5
    .param p0, "x0"    # Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Lcom/google/android/exoplayer2/Timeline$Period;

    .line 1211
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->getPeriod(IILcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7100(Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;)Lcom/google/android/exoplayer2/MediaMetadata;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;

    .line 1211
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->combinedMediaMetadata:Lcom/google/android/exoplayer2/MediaMetadata;

    return-object v0
.end method

.method private static getCombinedMediaMetadata(Lcom/google/android/exoplayer2/MediaItem;Lcom/google/android/exoplayer2/Tracks;)Lcom/google/android/exoplayer2/MediaMetadata;
    .registers 10
    .param p0, "mediaItem"    # Lcom/google/android/exoplayer2/MediaItem;
    .param p1, "tracks"    # Lcom/google/android/exoplayer2/Tracks;

    .line 1761
    new-instance v0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;-><init>()V

    .line 1762
    .local v0, "metadataBuilder":Lcom/google/android/exoplayer2/MediaMetadata$Builder;
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/Tracks;->getGroups()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v1

    .line 1763
    .local v1, "trackGroupCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_e
    if-ge v2, v1, :cond_48

    .line 1764
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/Tracks;->getGroups()Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/Tracks$Group;

    .line 1765
    .local v3, "group":Lcom/google/android/exoplayer2/Tracks$Group;
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1b
    iget v5, v3, Lcom/google/android/exoplayer2/Tracks$Group;->length:I

    if-ge v4, v5, :cond_45

    .line 1766
    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/Tracks$Group;->isTrackSelected(I)Z

    move-result v5

    if-eqz v5, :cond_42

    .line 1767
    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/Tracks$Group;->getTrackFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v5

    .line 1768
    .local v5, "format":Lcom/google/android/exoplayer2/Format;
    iget-object v6, v5, Lcom/google/android/exoplayer2/Format;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    if-eqz v6, :cond_42

    .line 1769
    const/4 v6, 0x0

    .local v6, "k":I
    :goto_2e
    iget-object v7, v5, Lcom/google/android/exoplayer2/Format;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    invoke-virtual {v7}, Lcom/google/android/exoplayer2/metadata/Metadata;->length()I

    move-result v7

    if-ge v6, v7, :cond_42

    .line 1770
    iget-object v7, v5, Lcom/google/android/exoplayer2/Format;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    invoke-virtual {v7, v6}, Lcom/google/android/exoplayer2/metadata/Metadata;->get(I)Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    move-result-object v7

    invoke-interface {v7, v0}, Lcom/google/android/exoplayer2/metadata/Metadata$Entry;->populateMediaMetadata(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)V

    .line 1769
    add-int/lit8 v6, v6, 0x1

    goto :goto_2e

    .line 1765
    .end local v5    # "format":Lcom/google/android/exoplayer2/Format;
    .end local v6    # "k":I
    :cond_42
    add-int/lit8 v4, v4, 0x1

    goto :goto_1b

    .line 1763
    .end local v3    # "group":Lcom/google/android/exoplayer2/Tracks$Group;
    .end local v4    # "j":I
    :cond_45
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 1776
    .end local v2    # "i":I
    :cond_48
    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaItem;->mediaMetadata:Lcom/google/android/exoplayer2/MediaMetadata;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->populate(Lcom/google/android/exoplayer2/MediaMetadata;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->build()Lcom/google/android/exoplayer2/MediaMetadata;

    move-result-object v2

    return-object v2
.end method

.method private getPeriod(IILcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;
    .registers 19
    .param p1, "windowIndex"    # I
    .param p2, "periodIndexInMediaItem"    # I
    .param p3, "period"    # Lcom/google/android/exoplayer2/Timeline$Period;

    .line 1727
    move-object v0, p0

    move/from16 v1, p2

    iget-object v2, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->periods:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_25

    .line 1728
    iget-object v5, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->uid:Ljava/lang/Object;

    iget-wide v2, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->positionInFirstPeriodUs:J

    iget-wide v6, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->durationUs:J

    add-long v8, v2, v6

    const-wide/16 v10, 0x0

    sget-object v2, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->NONE:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    iget-boolean v12, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->isPlaceholder:Z

    move-object/from16 v3, p3

    move-object v4, v5

    move/from16 v6, p1

    move-wide v7, v8

    move-wide v9, v10

    move-object v11, v2

    invoke-virtual/range {v3 .. v12}, Lcom/google/android/exoplayer2/Timeline$Period;->set(Ljava/lang/Object;Ljava/lang/Object;IJJLcom/google/android/exoplayer2/source/ads/AdPlaybackState;Z)Lcom/google/android/exoplayer2/Timeline$Period;

    goto :goto_48

    .line 1737
    :cond_25
    iget-object v2, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->periods:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/SimpleBasePlayer$PeriodData;

    .line 1738
    .local v2, "periodData":Lcom/google/android/exoplayer2/SimpleBasePlayer$PeriodData;
    iget-object v13, v2, Lcom/google/android/exoplayer2/SimpleBasePlayer$PeriodData;->uid:Ljava/lang/Object;

    .line 1739
    .local v13, "periodId":Ljava/lang/Object;
    iget-object v3, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->uid:Ljava/lang/Object;

    invoke-static {v3, v13}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v14

    .line 1740
    .local v14, "periodUid":Ljava/lang/Object;
    iget-wide v7, v2, Lcom/google/android/exoplayer2/SimpleBasePlayer$PeriodData;->durationUs:J

    iget-object v3, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->periodPositionInWindowUs:[J

    aget-wide v9, v3, v1

    iget-object v11, v2, Lcom/google/android/exoplayer2/SimpleBasePlayer$PeriodData;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    iget-boolean v12, v2, Lcom/google/android/exoplayer2/SimpleBasePlayer$PeriodData;->isPlaceholder:Z

    move-object/from16 v3, p3

    move-object v4, v13

    move-object v5, v14

    move/from16 v6, p1

    invoke-virtual/range {v3 .. v12}, Lcom/google/android/exoplayer2/Timeline$Period;->set(Ljava/lang/Object;Ljava/lang/Object;IJJLcom/google/android/exoplayer2/source/ads/AdPlaybackState;Z)Lcom/google/android/exoplayer2/Timeline$Period;

    .line 1749
    .end local v2    # "periodData":Lcom/google/android/exoplayer2/SimpleBasePlayer$PeriodData;
    .end local v13    # "periodId":Ljava/lang/Object;
    .end local v14    # "periodUid":Ljava/lang/Object;
    :goto_48
    return-object p3
.end method

.method private getPeriodUid(I)Ljava/lang/Object;
    .registers 4
    .param p1, "periodIndexInMediaItem"    # I

    .line 1753
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->periods:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1754
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->uid:Ljava/lang/Object;

    return-object v0

    .line 1756
    :cond_b
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->periods:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/SimpleBasePlayer$PeriodData;

    iget-object v0, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer$PeriodData;->uid:Ljava/lang/Object;

    .line 1757
    .local v0, "periodId":Ljava/lang/Object;
    iget-object v1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->uid:Ljava/lang/Object;

    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    return-object v1
.end method

.method private getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;
    .registers 27
    .param p1, "firstPeriodIndex"    # I
    .param p2, "window"    # Lcom/google/android/exoplayer2/Timeline$Window;

    .line 1705
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iget-object v2, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->periods:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v2

    const/16 v18, 0x1

    if-eqz v2, :cond_10

    const/4 v2, 0x1

    goto :goto_16

    :cond_10
    iget-object v2, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->periods:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v2

    :goto_16
    move/from16 v22, v2

    .line 1706
    .local v22, "periodCount":I
    iget-object v2, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->uid:Ljava/lang/Object;

    iget-object v3, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->mediaItem:Lcom/google/android/exoplayer2/MediaItem;

    iget-object v4, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->manifest:Ljava/lang/Object;

    iget-wide v5, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->presentationStartTimeMs:J

    iget-wide v7, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->windowStartTimeMs:J

    iget-wide v9, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->elapsedRealtimeEpochOffsetMs:J

    iget-boolean v11, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->isSeekable:Z

    iget-boolean v12, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->isDynamic:Z

    iget-object v13, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->liveConfiguration:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    iget-wide v14, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->defaultPositionUs:J

    move-object/from16 v23, v2

    iget-wide v1, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->durationUs:J

    move-wide/from16 v16, v1

    add-int v1, p1, v22

    add-int/lit8 v19, v1, -0x1

    iget-wide v1, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->positionInFirstPeriodUs:J

    move-wide/from16 v20, v1

    move-object/from16 v2, p2

    move-object/from16 v1, p2

    move/from16 v18, p1

    move-object/from16 v2, v23

    invoke-virtual/range {v1 .. v21}, Lcom/google/android/exoplayer2/Timeline$Window;->set(Ljava/lang/Object;Lcom/google/android/exoplayer2/MediaItem;Ljava/lang/Object;JJJZZLcom/google/android/exoplayer2/MediaItem$LiveConfiguration;JJIIJ)Lcom/google/android/exoplayer2/Timeline$Window;

    .line 1721
    iget-boolean v1, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->isPlaceholder:Z

    move-object/from16 v2, p2

    iput-boolean v1, v2, Lcom/google/android/exoplayer2/Timeline$Window;->isPlaceholder:Z

    .line 1722
    return-object v2
.end method


# virtual methods
.method public buildUpon()Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;
    .registers 3

    .line 1650
    new-instance v0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;-><init>(Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;Lcom/google/android/exoplayer2/SimpleBasePlayer$1;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 10
    .param p1, "o"    # Ljava/lang/Object;

    .line 1655
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 1656
    return v0

    .line 1658
    :cond_4
    instance-of v1, p1, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 1659
    return v2

    .line 1661
    :cond_a
    move-object v1, p1

    check-cast v1, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;

    .line 1662
    .local v1, "mediaItemData":Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;
    iget-object v3, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->uid:Ljava/lang/Object;

    iget-object v4, v1, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->uid:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_96

    iget-object v3, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->tracks:Lcom/google/android/exoplayer2/Tracks;

    iget-object v4, v1, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->tracks:Lcom/google/android/exoplayer2/Tracks;

    .line 1663
    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/Tracks;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_96

    iget-object v3, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->mediaItem:Lcom/google/android/exoplayer2/MediaItem;

    iget-object v4, v1, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->mediaItem:Lcom/google/android/exoplayer2/MediaItem;

    .line 1664
    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/MediaItem;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_96

    iget-object v3, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->mediaMetadata:Lcom/google/android/exoplayer2/MediaMetadata;

    iget-object v4, v1, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->mediaMetadata:Lcom/google/android/exoplayer2/MediaMetadata;

    .line 1665
    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_96

    iget-object v3, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->manifest:Ljava/lang/Object;

    iget-object v4, v1, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->manifest:Ljava/lang/Object;

    .line 1666
    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_96

    iget-object v3, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->liveConfiguration:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    iget-object v4, v1, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->liveConfiguration:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    .line 1667
    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_96

    iget-wide v3, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->presentationStartTimeMs:J

    iget-wide v5, v1, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->presentationStartTimeMs:J

    cmp-long v7, v3, v5

    if-nez v7, :cond_96

    iget-wide v3, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->windowStartTimeMs:J

    iget-wide v5, v1, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->windowStartTimeMs:J

    cmp-long v7, v3, v5

    if-nez v7, :cond_96

    iget-wide v3, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->elapsedRealtimeEpochOffsetMs:J

    iget-wide v5, v1, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->elapsedRealtimeEpochOffsetMs:J

    cmp-long v7, v3, v5

    if-nez v7, :cond_96

    iget-boolean v3, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->isSeekable:Z

    iget-boolean v4, v1, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->isSeekable:Z

    if-ne v3, v4, :cond_96

    iget-boolean v3, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->isDynamic:Z

    iget-boolean v4, v1, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->isDynamic:Z

    if-ne v3, v4, :cond_96

    iget-wide v3, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->defaultPositionUs:J

    iget-wide v5, v1, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->defaultPositionUs:J

    cmp-long v7, v3, v5

    if-nez v7, :cond_96

    iget-wide v3, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->durationUs:J

    iget-wide v5, v1, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->durationUs:J

    cmp-long v7, v3, v5

    if-nez v7, :cond_96

    iget-wide v3, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->positionInFirstPeriodUs:J

    iget-wide v5, v1, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->positionInFirstPeriodUs:J

    cmp-long v7, v3, v5

    if-nez v7, :cond_96

    iget-boolean v3, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->isPlaceholder:Z

    iget-boolean v4, v1, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->isPlaceholder:Z

    if-ne v3, v4, :cond_96

    iget-object v3, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->periods:Lcom/google/common/collect/ImmutableList;

    iget-object v4, v1, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->periods:Lcom/google/common/collect/ImmutableList;

    .line 1677
    invoke-virtual {v3, v4}, Lcom/google/common/collect/ImmutableList;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_96

    goto :goto_97

    :cond_96
    const/4 v0, 0x0

    .line 1662
    :goto_97
    return v0
.end method

.method public hashCode()I
    .registers 8

    .line 1682
    const/4 v0, 0x7

    .line 1683
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->uid:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 1684
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->tracks:Lcom/google/android/exoplayer2/Tracks;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/Tracks;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 1685
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->mediaItem:Lcom/google/android/exoplayer2/MediaItem;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/MediaItem;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 1686
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->mediaMetadata:Lcom/google/android/exoplayer2/MediaMetadata;

    const/4 v3, 0x0

    if-nez v2, :cond_25

    const/4 v2, 0x0

    goto :goto_29

    :cond_25
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/MediaMetadata;->hashCode()I

    move-result v2

    :goto_29
    add-int/2addr v0, v2

    .line 1687
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->manifest:Ljava/lang/Object;

    if-nez v2, :cond_32

    const/4 v2, 0x0

    goto :goto_36

    :cond_32
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_36
    add-int/2addr v1, v2

    .line 1688
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->liveConfiguration:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    if-nez v2, :cond_3e

    goto :goto_42

    :cond_3e
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->hashCode()I

    move-result v3

    :goto_42
    add-int/2addr v0, v3

    .line 1689
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->presentationStartTimeMs:J

    const/16 v4, 0x20

    ushr-long v5, v2, v4

    xor-long/2addr v2, v5

    long-to-int v3, v2

    add-int/2addr v1, v3

    .line 1690
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-wide v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->windowStartTimeMs:J

    ushr-long v5, v2, v4

    xor-long/2addr v2, v5

    long-to-int v3, v2

    add-int/2addr v0, v3

    .line 1691
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->elapsedRealtimeEpochOffsetMs:J

    ushr-long v5, v2, v4

    xor-long/2addr v2, v5

    long-to-int v3, v2

    add-int/2addr v1, v3

    .line 1694
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->isSeekable:Z

    add-int/2addr v0, v2

    .line 1695
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->isDynamic:Z

    add-int/2addr v1, v2

    .line 1696
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-wide v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->defaultPositionUs:J

    ushr-long v5, v2, v4

    xor-long/2addr v2, v5

    long-to-int v3, v2

    add-int/2addr v0, v3

    .line 1697
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->durationUs:J

    ushr-long v5, v2, v4

    xor-long/2addr v2, v5

    long-to-int v3, v2

    add-int/2addr v1, v3

    .line 1698
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-wide v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->positionInFirstPeriodUs:J

    ushr-long v4, v2, v4

    xor-long/2addr v2, v4

    long-to-int v3, v2

    add-int/2addr v0, v3

    .line 1699
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->isPlaceholder:Z

    add-int/2addr v1, v2

    .line 1700
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->periods:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 1701
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method
