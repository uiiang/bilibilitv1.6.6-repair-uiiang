.class public Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;
.super Lcom/google/android/exoplayer2/trackselection/BaseTrackSelection;
.source "AdaptiveTrackSelection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$AdaptationCheckpoint;,
        Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final DEFAULT_BANDWIDTH_FRACTION:F = 0.7f

.field public static final DEFAULT_BUFFERED_FRACTION_TO_LIVE_EDGE_FOR_QUALITY_INCREASE:F = 0.75f

.field public static final DEFAULT_MAX_DURATION_FOR_QUALITY_DECREASE_MS:I = 0x61a8

.field public static final DEFAULT_MAX_HEIGHT_TO_DISCARD:I = 0x2cf

.field public static final DEFAULT_MAX_WIDTH_TO_DISCARD:I = 0x4ff

.field public static final DEFAULT_MIN_DURATION_FOR_QUALITY_INCREASE_MS:I = 0x2710

.field public static final DEFAULT_MIN_DURATION_TO_RETAIN_AFTER_DISCARD_MS:I = 0x61a8

.field private static final MIN_TIME_BETWEEN_BUFFER_REEVALUTATION_MS:J = 0x3e8L

.field private static final TAG:Ljava/lang/String; = "AdaptiveTrackSelection"


# instance fields
.field private final adaptationCheckpoints:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$AdaptationCheckpoint;",
            ">;"
        }
    .end annotation
.end field

.field private final bandwidthFraction:F

.field private final bandwidthMeter:Lcom/google/android/exoplayer2/upstream/BandwidthMeter;

.field private final bufferedFractionToLiveEdgeForQualityIncrease:F

.field private final clock:Lcom/google/android/exoplayer2/util/Clock;

.field private lastBufferEvaluationMediaChunk:Lcom/google/android/exoplayer2/source/chunk/MediaChunk;

.field private lastBufferEvaluationMs:J

.field private latestBitrateEstimate:J

.field private final maxDurationForQualityDecreaseUs:J

.field private final maxHeightToDiscard:I

.field private final maxWidthToDiscard:I

.field private final minDurationForQualityIncreaseUs:J

.field private final minDurationToRetainAfterDiscardUs:J

.field private playbackSpeed:F

.field private reason:I

.field private selectedIndex:I


# direct methods
.method protected constructor <init>(Lcom/google/android/exoplayer2/source/TrackGroup;[IILcom/google/android/exoplayer2/upstream/BandwidthMeter;JJJIIFFLjava/util/List;Lcom/google/android/exoplayer2/util/Clock;)V
    .registers 28
    .param p1, "group"    # Lcom/google/android/exoplayer2/source/TrackGroup;
    .param p2, "tracks"    # [I
    .param p3, "type"    # I
    .param p4, "bandwidthMeter"    # Lcom/google/android/exoplayer2/upstream/BandwidthMeter;
    .param p5, "minDurationForQualityIncreaseMs"    # J
    .param p7, "maxDurationForQualityDecreaseMs"    # J
    .param p9, "minDurationToRetainAfterDiscardMs"    # J
    .param p11, "maxWidthToDiscard"    # I
    .param p12, "maxHeightToDiscard"    # I
    .param p13, "bandwidthFraction"    # F
    .param p14, "bufferedFractionToLiveEdgeForQualityIncrease"    # F
    .param p16, "clock"    # Lcom/google/android/exoplayer2/util/Clock;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/source/TrackGroup;",
            "[II",
            "Lcom/google/android/exoplayer2/upstream/BandwidthMeter;",
            "JJJIIFF",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$AdaptationCheckpoint;",
            ">;",
            "Lcom/google/android/exoplayer2/util/Clock;",
            ")V"
        }
    .end annotation

    .line 396
    .local p15, "adaptationCheckpoints":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$AdaptationCheckpoint;>;"
    move-object v0, p0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/trackselection/BaseTrackSelection;-><init>(Lcom/google/android/exoplayer2/source/TrackGroup;[II)V

    .line 397
    cmp-long v1, p9, p5

    if-gez v1, :cond_12

    .line 398
    const-string v1, "AdaptiveTrackSelection"

    const-string v2, "Adjusting minDurationToRetainAfterDiscardMs to be at least minDurationForQualityIncreaseMs"

    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    move-wide/from16 v1, p5

    .end local p9    # "minDurationToRetainAfterDiscardMs":J
    .local v1, "minDurationToRetainAfterDiscardMs":J
    goto :goto_14

    .line 397
    .end local v1    # "minDurationToRetainAfterDiscardMs":J
    .restart local p9    # "minDurationToRetainAfterDiscardMs":J
    :cond_12
    move-wide/from16 v1, p9

    .line 404
    .end local p9    # "minDurationToRetainAfterDiscardMs":J
    .restart local v1    # "minDurationToRetainAfterDiscardMs":J
    :goto_14
    move-object v3, p4

    iput-object v3, v0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->bandwidthMeter:Lcom/google/android/exoplayer2/upstream/BandwidthMeter;

    .line 405
    const-wide/16 v4, 0x3e8

    mul-long v6, p5, v4

    iput-wide v6, v0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->minDurationForQualityIncreaseUs:J

    .line 406
    mul-long v6, p7, v4

    iput-wide v6, v0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->maxDurationForQualityDecreaseUs:J

    .line 407
    mul-long v4, v4, v1

    iput-wide v4, v0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->minDurationToRetainAfterDiscardUs:J

    .line 408
    move/from16 v4, p11

    iput v4, v0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->maxWidthToDiscard:I

    .line 409
    move/from16 v5, p12

    iput v5, v0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->maxHeightToDiscard:I

    .line 410
    move/from16 v6, p13

    iput v6, v0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->bandwidthFraction:F

    .line 411
    move/from16 v7, p14

    iput v7, v0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->bufferedFractionToLiveEdgeForQualityIncrease:F

    .line 413
    invoke-static/range {p15 .. p15}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v8

    iput-object v8, v0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->adaptationCheckpoints:Lcom/google/common/collect/ImmutableList;

    .line 414
    move-object/from16 v8, p16

    iput-object v8, v0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->clock:Lcom/google/android/exoplayer2/util/Clock;

    .line 415
    const/high16 v9, 0x3f800000    # 1.0f

    iput v9, v0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->playbackSpeed:F

    .line 416
    const/4 v9, 0x0

    iput v9, v0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->reason:I

    .line 417
    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v9, v0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->lastBufferEvaluationMs:J

    .line 418
    const-wide/high16 v9, -0x8000000000000000L

    iput-wide v9, v0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->latestBitrateEstimate:J

    .line 419
    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/source/TrackGroup;[ILcom/google/android/exoplayer2/upstream/BandwidthMeter;)V
    .registers 21
    .param p1, "group"    # Lcom/google/android/exoplayer2/source/TrackGroup;
    .param p2, "tracks"    # [I
    .param p3, "bandwidthMeter"    # Lcom/google/android/exoplayer2/upstream/BandwidthMeter;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v4, p3

    .line 335
    const/4 v3, 0x0

    const-wide/16 v5, 0x2710

    const-wide/16 v7, 0x61a8

    const-wide/16 v9, 0x61a8

    const/16 v11, 0x4ff

    const/16 v12, 0x2cf

    const v13, 0x3f333333    # 0.7f

    const/high16 v14, 0x3f400000    # 0.75f

    .line 347
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v15

    sget-object v16, Lcom/google/android/exoplayer2/util/Clock;->DEFAULT:Lcom/google/android/exoplayer2/util/Clock;

    .line 335
    invoke-direct/range {v0 .. v16}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;-><init>(Lcom/google/android/exoplayer2/source/TrackGroup;[IILcom/google/android/exoplayer2/upstream/BandwidthMeter;JJJIIFFLjava/util/List;Lcom/google/android/exoplayer2/util/Clock;)V

    .line 349
    return-void
.end method

.method static synthetic access$000([Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;)Lcom/google/common/collect/ImmutableList;
    .registers 2
    .param p0, "x0"    # [Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;

    .line 53
    invoke-static {p0}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->getAdaptationCheckpoints([Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method private static addCheckpoint(Ljava/util/List;[J)V
    .registers 9
    .param p1, "checkpointBitrates"    # [J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/common/collect/ImmutableList$Builder<",
            "Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$AdaptationCheckpoint;",
            ">;>;[J)V"
        }
    .end annotation

    .line 820
    .local p0, "checkPointBuilders":Ljava/util/List;, "Ljava/util/List<Lcom/google/common/collect/ImmutableList$Builder<Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$AdaptationCheckpoint;>;>;"
    const-wide/16 v0, 0x0

    .line 821
    .local v0, "totalBitrate":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    array-length v3, p1

    if-ge v2, v3, :cond_c

    .line 822
    aget-wide v3, p1, v2

    add-long/2addr v0, v3

    .line 821
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 824
    .end local v2    # "i":I
    :cond_c
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_d
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_29

    .line 825
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/common/collect/ImmutableList$Builder;

    .line 826
    .local v3, "builder":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$AdaptationCheckpoint;>;"
    if-nez v3, :cond_1c

    .line 827
    goto :goto_26

    .line 829
    :cond_1c
    new-instance v4, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$AdaptationCheckpoint;

    aget-wide v5, p1, v2

    invoke-direct {v4, v0, v1, v5, v6}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$AdaptationCheckpoint;-><init>(JJ)V

    invoke-virtual {v3, v4}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 824
    .end local v3    # "builder":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$AdaptationCheckpoint;>;"
    :goto_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 833
    .end local v2    # "i":I
    :cond_29
    return-void
.end method

.method private determineIdealSelectedIndex(JJ)I
    .registers 12
    .param p1, "nowMs"    # J
    .param p3, "chunkDurationUs"    # J

    .line 604
    invoke-direct {p0, p3, p4}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->getAllocatedBandwidth(J)J

    move-result-wide v0

    .line 605
    .local v0, "effectiveBitrate":J
    const/4 v2, 0x0

    .line 606
    .local v2, "lowestBitrateAllowedIndex":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_6
    iget v4, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->length:I

    if-ge v3, v4, :cond_27

    .line 607
    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v6, p1, v4

    if-eqz v6, :cond_16

    invoke-virtual {p0, v3, p1, p2}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->isTrackExcluded(IJ)Z

    move-result v4

    if-nez v4, :cond_24

    .line 608
    :cond_16
    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v4

    .line 609
    .local v4, "format":Lcom/google/android/exoplayer2/Format;
    iget v5, v4, Lcom/google/android/exoplayer2/Format;->bitrate:I

    invoke-virtual {p0, v4, v5, v0, v1}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->canSelectFormat(Lcom/google/android/exoplayer2/Format;IJ)Z

    move-result v5

    if-eqz v5, :cond_23

    .line 610
    return v3

    .line 612
    :cond_23
    move v2, v3

    .line 606
    .end local v4    # "format":Lcom/google/android/exoplayer2/Format;
    :cond_24
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 616
    .end local v3    # "i":I
    :cond_27
    return v2
.end method

.method private static getAdaptationCheckpoints([Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;)Lcom/google/common/collect/ImmutableList;
    .registers 13
    .param p0, "definitions"    # [Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;",
            ")",
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$AdaptationCheckpoint;",
            ">;>;"
        }
    .end annotation

    .line 716
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 718
    .local v0, "checkPointBuilders":Ljava/util/List;, "Ljava/util/List<Lcom/google/common/collect/ImmutableList$Builder<Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$AdaptationCheckpoint;>;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    array-length v2, p0

    const-wide/16 v3, 0x0

    const/4 v5, 0x1

    if-ge v1, v2, :cond_2e

    .line 719
    aget-object v2, p0, v1

    if-eqz v2, :cond_27

    aget-object v2, p0, v1

    iget-object v2, v2, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;->tracks:[I

    array-length v2, v2

    if-le v2, v5, :cond_27

    .line 720
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v2

    .line 722
    .local v2, "builder":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$AdaptationCheckpoint;>;"
    new-instance v5, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$AdaptationCheckpoint;

    invoke-direct {v5, v3, v4, v3, v4}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$AdaptationCheckpoint;-><init>(JJ)V

    invoke-virtual {v2, v5}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 723
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 724
    .end local v2    # "builder":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$AdaptationCheckpoint;>;"
    goto :goto_2b

    .line 725
    :cond_27
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 718
    :goto_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 729
    .end local v1    # "i":I
    :cond_2e
    invoke-static {p0}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->getSortedTrackBitrates([Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;)[[J

    move-result-object v1

    .line 730
    .local v1, "trackBitrates":[[J
    array-length v2, v1

    new-array v2, v2, [I

    .line 731
    .local v2, "currentTrackIndices":[I
    array-length v6, v1

    new-array v6, v6, [J

    .line 732
    .local v6, "currentTrackBitrates":[J
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_39
    array-length v8, v1

    if-ge v7, v8, :cond_4d

    .line 733
    aget-object v8, v1, v7

    array-length v8, v8

    if-nez v8, :cond_43

    move-wide v9, v3

    goto :goto_48

    :cond_43
    aget-object v8, v1, v7

    const/4 v9, 0x0

    aget-wide v9, v8, v9

    :goto_48
    aput-wide v9, v6, v7

    .line 732
    add-int/lit8 v7, v7, 0x1

    goto :goto_39

    .line 735
    .end local v7    # "i":I
    :cond_4d
    invoke-static {v0, v6}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->addCheckpoint(Ljava/util/List;[J)V

    .line 737
    invoke-static {v1}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->getSwitchOrder([[J)Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    .line 738
    .local v3, "switchOrder":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Ljava/lang/Integer;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_55
    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v7

    if-ge v4, v7, :cond_76

    .line 739
    invoke-virtual {v3, v4}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 740
    .local v7, "switchIndex":I
    aget v8, v2, v7

    add-int/2addr v8, v5

    aput v8, v2, v7

    .line 741
    .local v8, "newTrackIndex":I
    aget-object v9, v1, v7

    aget-wide v10, v9, v8

    aput-wide v10, v6, v7

    .line 742
    invoke-static {v0, v6}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->addCheckpoint(Ljava/util/List;[J)V

    .line 738
    .end local v7    # "switchIndex":I
    .end local v8    # "newTrackIndex":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_55

    .line 745
    .end local v4    # "i":I
    :cond_76
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_77
    array-length v5, p0

    if-ge v4, v5, :cond_8b

    .line 746
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_88

    .line 747
    aget-wide v7, v6, v4

    const-wide/16 v9, 0x2

    mul-long v7, v7, v9

    aput-wide v7, v6, v4

    .line 745
    :cond_88
    add-int/lit8 v4, v4, 0x1

    goto :goto_77

    .line 750
    .end local v4    # "i":I
    :cond_8b
    invoke-static {v0, v6}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->addCheckpoint(Ljava/util/List;[J)V

    .line 751
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v4

    .line 752
    .local v4, "output":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Lcom/google/common/collect/ImmutableList<Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$AdaptationCheckpoint;>;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_93
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    if-ge v5, v7, :cond_b0

    .line 753
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/common/collect/ImmutableList$Builder;

    .line 754
    .local v7, "builder":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$AdaptationCheckpoint;>;"
    if-nez v7, :cond_a6

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v8

    goto :goto_aa

    :cond_a6
    invoke-virtual {v7}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v8

    :goto_aa
    invoke-virtual {v4, v8}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 752
    .end local v7    # "builder":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$AdaptationCheckpoint;>;"
    add-int/lit8 v5, v5, 0x1

    goto :goto_93

    .line 756
    .end local v5    # "i":I
    :cond_b0
    invoke-virtual {v4}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v5

    return-object v5
.end method

.method private getAllocatedBandwidth(J)J
    .registers 15
    .param p1, "chunkDurationUs"    # J

    .line 675
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->getTotalAllocatableBandwidth(J)J

    move-result-wide v0

    .line 676
    .local v0, "totalBandwidth":J
    iget-object v2, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->adaptationCheckpoints:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 677
    return-wide v0

    .line 679
    :cond_d
    const/4 v2, 0x1

    .line 680
    .local v2, "nextIndex":I
    :goto_e
    iget-object v3, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->adaptationCheckpoints:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_29

    iget-object v3, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->adaptationCheckpoints:Lcom/google/common/collect/ImmutableList;

    .line 681
    invoke-virtual {v3, v2}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$AdaptationCheckpoint;

    iget-wide v3, v3, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$AdaptationCheckpoint;->totalBandwidth:J

    cmp-long v5, v3, v0

    if-gez v5, :cond_29

    .line 682
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 684
    :cond_29
    iget-object v3, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->adaptationCheckpoints:Lcom/google/common/collect/ImmutableList;

    add-int/lit8 v4, v2, -0x1

    invoke-virtual {v3, v4}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$AdaptationCheckpoint;

    .line 685
    .local v3, "previous":Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$AdaptationCheckpoint;
    iget-object v4, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->adaptationCheckpoints:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v4, v2}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$AdaptationCheckpoint;

    .line 686
    .local v4, "next":Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$AdaptationCheckpoint;
    iget-wide v5, v3, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$AdaptationCheckpoint;->totalBandwidth:J

    sub-long v5, v0, v5

    long-to-float v5, v5

    iget-wide v6, v4, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$AdaptationCheckpoint;->totalBandwidth:J

    iget-wide v8, v3, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$AdaptationCheckpoint;->totalBandwidth:J

    sub-long/2addr v6, v8

    long-to-float v6, v6

    div-float/2addr v5, v6

    .line 689
    .local v5, "fractionBetweenCheckpoints":F
    iget-wide v6, v3, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$AdaptationCheckpoint;->allocatedBandwidth:J

    iget-wide v8, v4, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$AdaptationCheckpoint;->allocatedBandwidth:J

    iget-wide v10, v3, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$AdaptationCheckpoint;->allocatedBandwidth:J

    sub-long/2addr v8, v10

    long-to-float v8, v8

    mul-float v8, v8, v5

    float-to-long v8, v8

    add-long/2addr v6, v8

    return-wide v6
.end method

.method private getLastChunkDurationUs(Ljava/util/List;)J
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/exoplayer2/source/chunk/MediaChunk;",
            ">;)J"
        }
    .end annotation

    .line 665
    .local p1, "queue":Ljava/util/List;, "Ljava/util/List<+Lcom/google/android/exoplayer2/source/chunk/MediaChunk;>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v0, :cond_c

    .line 666
    return-wide v1

    .line 668
    :cond_c
    invoke-static {p1}, Lcom/google/common/collect/Iterables;->getLast(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/chunk/MediaChunk;

    .line 669
    .local v0, "lastChunk":Lcom/google/android/exoplayer2/source/chunk/MediaChunk;
    iget-wide v3, v0, Lcom/google/android/exoplayer2/source/chunk/MediaChunk;->startTimeUs:J

    cmp-long v5, v3, v1

    if-eqz v5, :cond_24

    iget-wide v3, v0, Lcom/google/android/exoplayer2/source/chunk/MediaChunk;->endTimeUs:J

    cmp-long v5, v3, v1

    if-eqz v5, :cond_24

    .line 670
    iget-wide v1, v0, Lcom/google/android/exoplayer2/source/chunk/MediaChunk;->endTimeUs:J

    iget-wide v3, v0, Lcom/google/android/exoplayer2/source/chunk/MediaChunk;->startTimeUs:J

    sub-long/2addr v1, v3

    goto :goto_25

    .line 671
    :cond_24
    nop

    .line 669
    :goto_25
    return-wide v1
.end method

.method private getNextChunkDurationUs([Lcom/google/android/exoplayer2/source/chunk/MediaChunkIterator;Ljava/util/List;)J
    .registers 8
    .param p1, "mediaChunkIterators"    # [Lcom/google/android/exoplayer2/source/chunk/MediaChunkIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/google/android/exoplayer2/source/chunk/MediaChunkIterator;",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/exoplayer2/source/chunk/MediaChunk;",
            ">;)J"
        }
    .end annotation

    .line 644
    .local p2, "queue":Ljava/util/List;, "Ljava/util/List<+Lcom/google/android/exoplayer2/source/chunk/MediaChunk;>;"
    iget v0, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->selectedIndex:I

    array-length v1, p1

    if-ge v0, v1, :cond_1b

    aget-object v0, p1, v0

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/chunk/MediaChunkIterator;->next()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 645
    iget v0, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->selectedIndex:I

    aget-object v0, p1, v0

    .line 646
    .local v0, "iterator":Lcom/google/android/exoplayer2/source/chunk/MediaChunkIterator;
    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/chunk/MediaChunkIterator;->getChunkEndTimeUs()J

    move-result-wide v1

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/chunk/MediaChunkIterator;->getChunkStartTimeUs()J

    move-result-wide v3

    sub-long/2addr v1, v3

    return-wide v1

    .line 650
    .end local v0    # "iterator":Lcom/google/android/exoplayer2/source/chunk/MediaChunkIterator;
    :cond_1b
    array-length v0, p1

    const/4 v1, 0x0

    :goto_1d
    if-ge v1, v0, :cond_34

    aget-object v2, p1, v1

    .line 651
    .local v2, "iterator":Lcom/google/android/exoplayer2/source/chunk/MediaChunkIterator;
    invoke-interface {v2}, Lcom/google/android/exoplayer2/source/chunk/MediaChunkIterator;->next()Z

    move-result v3

    if-eqz v3, :cond_31

    .line 652
    invoke-interface {v2}, Lcom/google/android/exoplayer2/source/chunk/MediaChunkIterator;->getChunkEndTimeUs()J

    move-result-wide v0

    invoke-interface {v2}, Lcom/google/android/exoplayer2/source/chunk/MediaChunkIterator;->getChunkStartTimeUs()J

    move-result-wide v3

    sub-long/2addr v0, v3

    return-wide v0

    .line 650
    .end local v2    # "iterator":Lcom/google/android/exoplayer2/source/chunk/MediaChunkIterator;
    :cond_31
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 657
    :cond_34
    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->getLastChunkDurationUs(Ljava/util/List;)J

    move-result-wide v0

    return-wide v0
.end method

.method private static getSortedTrackBitrates([Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;)[[J
    .registers 11
    .param p0, "definitions"    # [Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;

    .line 761
    array-length v0, p0

    new-array v0, v0, [[J

    .line 762
    .local v0, "trackBitrates":[[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    array-length v2, p0

    if-ge v1, v2, :cond_44

    .line 763
    aget-object v2, p0, v1

    .line 764
    .local v2, "definition":Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;
    if-nez v2, :cond_11

    .line 765
    const/4 v3, 0x0

    new-array v3, v3, [J

    aput-object v3, v0, v1

    .line 766
    goto :goto_41

    .line 768
    :cond_11
    iget-object v3, v2, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;->tracks:[I

    array-length v3, v3

    new-array v3, v3, [J

    aput-object v3, v0, v1

    .line 769
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_19
    iget-object v4, v2, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;->tracks:[I

    array-length v4, v4

    if-ge v3, v4, :cond_3c

    .line 770
    iget-object v4, v2, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;->group:Lcom/google/android/exoplayer2/source/TrackGroup;

    iget-object v5, v2, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;->tracks:[I

    aget v5, v5, v3

    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v4

    iget v4, v4, Lcom/google/android/exoplayer2/Format;->bitrate:I

    int-to-long v4, v4

    .line 771
    .local v4, "bitrate":J
    aget-object v6, v0, v1

    const-wide/16 v7, -0x1

    cmp-long v9, v4, v7

    if-nez v9, :cond_36

    const-wide/16 v7, 0x0

    goto :goto_37

    :cond_36
    move-wide v7, v4

    :goto_37
    aput-wide v7, v6, v3

    .line 769
    .end local v4    # "bitrate":J
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    .line 773
    .end local v3    # "j":I
    :cond_3c
    aget-object v3, v0, v1

    invoke-static {v3}, Ljava/util/Arrays;->sort([J)V

    .line 762
    .end local v2    # "definition":Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;
    :goto_41
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 775
    .end local v1    # "i":I
    :cond_44
    return-object v0
.end method

.method private static getSwitchOrder([[J)Lcom/google/common/collect/ImmutableList;
    .registers 17
    .param p0, "trackBitrates"    # [[J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[J)",
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 789
    move-object/from16 v0, p0

    invoke-static {}, Lcom/google/common/collect/MultimapBuilder;->treeKeys()Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;->arrayListValues()Lcom/google/common/collect/MultimapBuilder$ListMultimapBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/MultimapBuilder$ListMultimapBuilder;->build()Lcom/google/common/collect/ListMultimap;

    move-result-object v1

    .line 790
    .local v1, "switchPoints":Lcom/google/common/collect/Multimap;, "Lcom/google/common/collect/Multimap<Ljava/lang/Double;Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_f
    array-length v3, v0

    if-ge v2, v3, :cond_76

    .line 791
    aget-object v3, v0, v2

    array-length v3, v3

    const/4 v4, 0x1

    if-gt v3, v4, :cond_19

    .line 792
    goto :goto_73

    .line 794
    :cond_19
    aget-object v3, v0, v2

    array-length v3, v3

    new-array v3, v3, [D

    .line 795
    .local v3, "logBitrates":[D
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1f
    aget-object v6, v0, v2

    array-length v6, v6

    const-wide/16 v7, 0x0

    if-ge v5, v6, :cond_40

    .line 796
    nop

    .line 797
    aget-object v6, v0, v2

    aget-wide v9, v6, v5

    const-wide/16 v11, -0x1

    cmp-long v6, v9, v11

    if-nez v6, :cond_32

    goto :goto_3b

    :cond_32
    aget-object v6, v0, v2

    aget-wide v7, v6, v5

    long-to-double v6, v7

    invoke-static {v6, v7}, Ljava/lang/Math;->log(D)D

    move-result-wide v7

    :goto_3b
    aput-wide v7, v3, v5

    .line 795
    add-int/lit8 v5, v5, 0x1

    goto :goto_1f

    .line 799
    .end local v5    # "j":I
    :cond_40
    array-length v5, v3

    sub-int/2addr v5, v4

    aget-wide v5, v3, v5

    const/4 v9, 0x0

    aget-wide v10, v3, v9

    sub-double/2addr v5, v10

    .line 800
    .local v5, "totalBitrateDiff":D
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_49
    array-length v11, v3

    sub-int/2addr v11, v4

    if-ge v10, v11, :cond_73

    .line 801
    aget-wide v11, v3, v10

    add-int/lit8 v13, v10, 0x1

    aget-wide v13, v3, v13

    add-double/2addr v11, v13

    const-wide/high16 v13, 0x3fe0000000000000L    # 0.5

    mul-double v11, v11, v13

    .line 803
    .local v11, "switchBitrate":D
    cmpl-double v13, v5, v7

    if-nez v13, :cond_5f

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    goto :goto_64

    :cond_5f
    aget-wide v13, v3, v9

    sub-double v13, v11, v13

    div-double/2addr v13, v5

    .line 804
    .local v13, "switchPoint":D
    :goto_64
    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v15

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v15, v4}, Lcom/google/common/collect/Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 800
    .end local v11    # "switchBitrate":D
    .end local v13    # "switchPoint":D
    add-int/lit8 v10, v10, 0x1

    const/4 v4, 0x1

    goto :goto_49

    .line 790
    .end local v3    # "logBitrates":[D
    .end local v5    # "totalBitrateDiff":D
    .end local v10    # "j":I
    :cond_73
    :goto_73
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 807
    .end local v2    # "i":I
    :cond_76
    invoke-interface {v1}, Lcom/google/common/collect/Multimap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    return-object v2
.end method

.method private getTotalAllocatableBandwidth(J)J
    .registers 10
    .param p1, "chunkDurationUs"    # J

    .line 695
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->bandwidthMeter:Lcom/google/android/exoplayer2/upstream/BandwidthMeter;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/BandwidthMeter;->getBitrateEstimate()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->latestBitrateEstimate:J

    .line 696
    long-to-float v0, v0

    iget v1, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->bandwidthFraction:F

    mul-float v0, v0, v1

    float-to-long v0, v0

    .line 697
    .local v0, "cautiousBandwidthEstimate":J
    iget-object v2, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->bandwidthMeter:Lcom/google/android/exoplayer2/upstream/BandwidthMeter;

    invoke-interface {v2}, Lcom/google/android/exoplayer2/upstream/BandwidthMeter;->getTimeToFirstByteEstimateUs()J

    move-result-wide v2

    .line 698
    .local v2, "timeToFirstByteEstimateUs":J
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v6, v2, v4

    if-eqz v6, :cond_34

    cmp-long v6, p1, v4

    if-nez v6, :cond_22

    goto :goto_34

    .line 701
    :cond_22
    long-to-float v4, p1

    iget v5, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->playbackSpeed:F

    div-float/2addr v4, v5

    long-to-float v5, v2

    sub-float/2addr v4, v5

    .line 702
    const/4 v5, 0x0

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 703
    .local v4, "availableTimeToLoadUs":F
    long-to-float v5, v0

    mul-float v5, v5, v4

    long-to-float v6, p1

    div-float/2addr v5, v6

    float-to-long v5, v5

    return-wide v5

    .line 699
    .end local v4    # "availableTimeToLoadUs":F
    :cond_34
    :goto_34
    long-to-float v4, v0

    iget v5, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->playbackSpeed:F

    div-float/2addr v4, v5

    float-to-long v4, v4

    return-wide v4
.end method

.method private minDurationForQualityIncreaseUs(JJ)J
    .registers 9
    .param p1, "availableDurationUs"    # J
    .param p3, "chunkDurationUs"    # J

    .line 620
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p1, v0

    if-nez v2, :cond_c

    .line 622
    iget-wide v0, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->minDurationForQualityIncreaseUs:J

    return-wide v0

    .line 624
    :cond_c
    cmp-long v2, p3, v0

    if-eqz v2, :cond_11

    .line 630
    sub-long/2addr p1, p3

    .line 632
    :cond_11
    long-to-float v0, p1

    iget v1, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->bufferedFractionToLiveEdgeForQualityIncrease:F

    mul-float v0, v0, v1

    float-to-long v0, v0

    .line 634
    .local v0, "adjustedMinDurationForQualityIncreaseUs":J
    iget-wide v2, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->minDurationForQualityIncreaseUs:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    return-wide v2
.end method


# virtual methods
.method protected canSelectFormat(Lcom/google/android/exoplayer2/Format;IJ)Z
    .registers 8
    .param p1, "format"    # Lcom/google/android/exoplayer2/Format;
    .param p2, "trackBitrate"    # I
    .param p3, "effectiveBitrate"    # J

    .line 568
    int-to-long v0, p2

    cmp-long v2, v0, p3

    if-gtz v2, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public disable()V
    .registers 2

    .line 432
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->lastBufferEvaluationMediaChunk:Lcom/google/android/exoplayer2/source/chunk/MediaChunk;

    .line 433
    return-void
.end method

.method public enable()V
    .registers 3

    .line 424
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->lastBufferEvaluationMs:J

    .line 425
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->lastBufferEvaluationMediaChunk:Lcom/google/android/exoplayer2/source/chunk/MediaChunk;

    .line 426
    return-void
.end method

.method public evaluateQueueSize(JLjava/util/List;)I
    .registers 25
    .param p1, "playbackPositionUs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/exoplayer2/source/chunk/MediaChunk;",
            ">;)I"
        }
    .end annotation

    .line 509
    .local p3, "queue":Ljava/util/List;, "Ljava/util/List<+Lcom/google/android/exoplayer2/source/chunk/MediaChunk;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    iget-object v2, v0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->clock:Lcom/google/android/exoplayer2/util/Clock;

    invoke-interface {v2}, Lcom/google/android/exoplayer2/util/Clock;->elapsedRealtime()J

    move-result-wide v2

    .line 510
    .local v2, "nowMs":J
    invoke-virtual {v0, v2, v3, v1}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->shouldEvaluateQueueSize(JLjava/util/List;)Z

    move-result v4

    if-nez v4, :cond_15

    .line 511
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v4

    return v4

    .line 513
    :cond_15
    iput-wide v2, v0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->lastBufferEvaluationMs:J

    .line 514
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1f

    const/4 v4, 0x0

    goto :goto_25

    :cond_1f
    invoke-static/range {p3 .. p3}, Lcom/google/common/collect/Iterables;->getLast(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/source/chunk/MediaChunk;

    :goto_25
    iput-object v4, v0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->lastBufferEvaluationMediaChunk:Lcom/google/android/exoplayer2/source/chunk/MediaChunk;

    .line 516
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 517
    const/4 v4, 0x0

    return v4

    .line 519
    :cond_2f
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v4

    .line 520
    .local v4, "queueSize":I
    add-int/lit8 v5, v4, -0x1

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/exoplayer2/source/chunk/MediaChunk;

    .line 521
    .local v5, "lastChunk":Lcom/google/android/exoplayer2/source/chunk/MediaChunk;
    iget-wide v6, v5, Lcom/google/android/exoplayer2/source/chunk/MediaChunk;->startTimeUs:J

    sub-long v6, v6, p1

    iget v8, v0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->playbackSpeed:F

    .line 522
    invoke-static {v6, v7, v8}, Lcom/google/android/exoplayer2/util/Util;->getPlayoutDurationForMediaDuration(JF)J

    move-result-wide v6

    .line 524
    .local v6, "playoutBufferedDurationBeforeLastChunkUs":J
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->getMinDurationToRetainAfterDiscardUs()J

    move-result-wide v8

    .line 525
    .local v8, "minDurationToRetainAfterDiscardUs":J
    cmp-long v10, v6, v8

    if-gez v10, :cond_4e

    .line 526
    return v4

    .line 528
    :cond_4e
    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->getLastChunkDurationUs(Ljava/util/List;)J

    move-result-wide v10

    invoke-direct {v0, v2, v3, v10, v11}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->determineIdealSelectedIndex(JJ)I

    move-result v10

    .line 529
    .local v10, "idealSelectedIndex":I
    invoke-virtual {v0, v10}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v11

    .line 533
    .local v11, "idealFormat":Lcom/google/android/exoplayer2/Format;
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_5b
    if-ge v12, v4, :cond_a0

    .line 534
    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/exoplayer2/source/chunk/MediaChunk;

    .line 535
    .local v13, "chunk":Lcom/google/android/exoplayer2/source/chunk/MediaChunk;
    iget-object v14, v13, Lcom/google/android/exoplayer2/source/chunk/MediaChunk;->trackFormat:Lcom/google/android/exoplayer2/Format;

    .line 536
    .local v14, "format":Lcom/google/android/exoplayer2/Format;
    move-wide v15, v2

    .end local v2    # "nowMs":J
    .local v15, "nowMs":J
    iget-wide v1, v13, Lcom/google/android/exoplayer2/source/chunk/MediaChunk;->startTimeUs:J

    sub-long v1, v1, p1

    .line 537
    .local v1, "mediaDurationBeforeThisChunkUs":J
    iget v3, v0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->playbackSpeed:F

    .line 538
    invoke-static {v1, v2, v3}, Lcom/google/android/exoplayer2/util/Util;->getPlayoutDurationForMediaDuration(JF)J

    move-result-wide v17

    .line 539
    .local v17, "playoutDurationBeforeThisChunkUs":J
    cmp-long v3, v17, v8

    if-ltz v3, :cond_98

    iget v3, v14, Lcom/google/android/exoplayer2/Format;->bitrate:I

    move-wide/from16 v19, v1

    .end local v1    # "mediaDurationBeforeThisChunkUs":J
    .local v19, "mediaDurationBeforeThisChunkUs":J
    iget v1, v11, Lcom/google/android/exoplayer2/Format;->bitrate:I

    if-ge v3, v1, :cond_9a

    iget v1, v14, Lcom/google/android/exoplayer2/Format;->height:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_9a

    iget v1, v14, Lcom/google/android/exoplayer2/Format;->height:I

    iget v3, v0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->maxHeightToDiscard:I

    if-gt v1, v3, :cond_9a

    iget v1, v14, Lcom/google/android/exoplayer2/Format;->width:I

    if-eq v1, v2, :cond_9a

    iget v1, v14, Lcom/google/android/exoplayer2/Format;->width:I

    iget v2, v0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->maxWidthToDiscard:I

    if-gt v1, v2, :cond_9a

    iget v1, v14, Lcom/google/android/exoplayer2/Format;->height:I

    iget v2, v11, Lcom/google/android/exoplayer2/Format;->height:I

    if-ge v1, v2, :cond_9a

    .line 546
    return v12

    .line 539
    .end local v19    # "mediaDurationBeforeThisChunkUs":J
    .restart local v1    # "mediaDurationBeforeThisChunkUs":J
    :cond_98
    move-wide/from16 v19, v1

    .line 533
    .end local v1    # "mediaDurationBeforeThisChunkUs":J
    .end local v13    # "chunk":Lcom/google/android/exoplayer2/source/chunk/MediaChunk;
    .end local v14    # "format":Lcom/google/android/exoplayer2/Format;
    .end local v17    # "playoutDurationBeforeThisChunkUs":J
    :cond_9a
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v1, p3

    move-wide v2, v15

    goto :goto_5b

    .line 549
    .end local v12    # "i":I
    .end local v15    # "nowMs":J
    .restart local v2    # "nowMs":J
    :cond_a0
    return v4
.end method

.method public getLatestBitrateEstimate()J
    .registers 3

    .line 554
    iget-wide v0, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->latestBitrateEstimate:J

    return-wide v0
.end method

.method protected getMinDurationToRetainAfterDiscardUs()J
    .registers 3

    .line 592
    iget-wide v0, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->minDurationToRetainAfterDiscardUs:J

    return-wide v0
.end method

.method public getSelectedIndex()I
    .registers 2

    .line 493
    iget v0, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->selectedIndex:I

    return v0
.end method

.method public getSelectionData()Ljava/lang/Object;
    .registers 2

    .line 504
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSelectionReason()I
    .registers 2

    .line 498
    iget v0, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->reason:I

    return v0
.end method

.method public onPlaybackSpeed(F)V
    .registers 2
    .param p1, "playbackSpeed"    # F

    .line 437
    iput p1, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->playbackSpeed:F

    .line 438
    return-void
.end method

.method protected shouldEvaluateQueueSize(JLjava/util/List;)Z
    .registers 9
    .param p1, "nowMs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/exoplayer2/source/chunk/MediaChunk;",
            ">;)Z"
        }
    .end annotation

    .line 580
    .local p3, "queue":Ljava/util/List;, "Ljava/util/List<+Lcom/google/android/exoplayer2/source/chunk/MediaChunk;>;"
    iget-wide v0, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->lastBufferEvaluationMs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2a

    sub-long v0, p1, v0

    const-wide/16 v2, 0x3e8

    cmp-long v4, v0, v2

    if-gez v4, :cond_2a

    .line 582
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_28

    invoke-static {p3}, Lcom/google/common/collect/Iterables;->getLast(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/chunk/MediaChunk;

    iget-object v1, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->lastBufferEvaluationMediaChunk:Lcom/google/android/exoplayer2/source/chunk/MediaChunk;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    goto :goto_2a

    :cond_28
    const/4 v0, 0x0

    goto :goto_2b

    :cond_2a
    :goto_2a
    const/4 v0, 0x1

    .line 580
    :goto_2b
    return v0
.end method

.method public updateSelectedTrack(JJJLjava/util/List;[Lcom/google/android/exoplayer2/source/chunk/MediaChunkIterator;)V
    .registers 29
    .param p1, "playbackPositionUs"    # J
    .param p3, "bufferedDurationUs"    # J
    .param p5, "availableDurationUs"    # J
    .param p8, "mediaChunkIterators"    # [Lcom/google/android/exoplayer2/source/chunk/MediaChunkIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJ",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/exoplayer2/source/chunk/MediaChunk;",
            ">;[",
            "Lcom/google/android/exoplayer2/source/chunk/MediaChunkIterator;",
            ")V"
        }
    .end annotation

    .line 447
    .local p7, "queue":Ljava/util/List;, "Ljava/util/List<+Lcom/google/android/exoplayer2/source/chunk/MediaChunk;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->clock:Lcom/google/android/exoplayer2/util/Clock;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/util/Clock;->elapsedRealtime()J

    move-result-wide v1

    .line 448
    .local v1, "nowMs":J
    move-object/from16 v3, p7

    move-object/from16 v4, p8

    invoke-direct {v0, v4, v3}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->getNextChunkDurationUs([Lcom/google/android/exoplayer2/source/chunk/MediaChunkIterator;Ljava/util/List;)J

    move-result-wide v5

    .line 451
    .local v5, "chunkDurationUs":J
    iget v7, v0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->reason:I

    if-nez v7, :cond_1e

    .line 452
    const/4 v7, 0x1

    iput v7, v0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->reason:I

    .line 453
    invoke-direct {v0, v1, v2, v5, v6}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->determineIdealSelectedIndex(JJ)I

    move-result v7

    iput v7, v0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->selectedIndex:I

    .line 454
    return-void

    .line 457
    :cond_1e
    iget v7, v0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->selectedIndex:I

    .line 458
    .local v7, "previousSelectedIndex":I
    iget v8, v0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->reason:I

    .line 460
    .local v8, "previousReason":I
    invoke-interface/range {p7 .. p7}, Ljava/util/List;->isEmpty()Z

    move-result v9

    const/4 v10, -0x1

    if-eqz v9, :cond_2b

    const/4 v9, -0x1

    goto :goto_37

    :cond_2b
    invoke-static/range {p7 .. p7}, Lcom/google/common/collect/Iterables;->getLast(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/exoplayer2/source/chunk/MediaChunk;

    iget-object v9, v9, Lcom/google/android/exoplayer2/source/chunk/MediaChunk;->trackFormat:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {v0, v9}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->indexOf(Lcom/google/android/exoplayer2/Format;)I

    move-result v9

    .line 461
    .local v9, "formatIndexOfPreviousChunk":I
    :goto_37
    if-eq v9, v10, :cond_42

    .line 462
    move v7, v9

    .line 463
    invoke-static/range {p7 .. p7}, Lcom/google/common/collect/Iterables;->getLast(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/exoplayer2/source/chunk/MediaChunk;

    iget v8, v10, Lcom/google/android/exoplayer2/source/chunk/MediaChunk;->trackSelectionReason:I

    .line 465
    :cond_42
    invoke-direct {v0, v1, v2, v5, v6}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->determineIdealSelectedIndex(JJ)I

    move-result v10

    .line 466
    .local v10, "newSelectedIndex":I
    if-eq v10, v7, :cond_7e

    .line 467
    invoke-virtual {v0, v7, v1, v2}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->isTrackExcluded(IJ)Z

    move-result v11

    if-nez v11, :cond_79

    .line 469
    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v11

    .line 470
    .local v11, "currentFormat":Lcom/google/android/exoplayer2/Format;
    invoke-virtual {v0, v10}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v12

    .line 471
    .local v12, "selectedFormat":Lcom/google/android/exoplayer2/Format;
    nop

    .line 472
    move-wide/from16 v13, p5

    invoke-direct {v0, v13, v14, v5, v6}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->minDurationForQualityIncreaseUs(JJ)J

    move-result-wide v15

    .line 473
    .local v15, "minDurationForQualityIncreaseUs":J
    move-wide/from16 v17, v1

    .end local v1    # "nowMs":J
    .local v17, "nowMs":J
    iget v1, v12, Lcom/google/android/exoplayer2/Format;->bitrate:I

    iget v2, v11, Lcom/google/android/exoplayer2/Format;->bitrate:I

    if-le v1, v2, :cond_6b

    cmp-long v1, p3, v15

    if-gez v1, :cond_6b

    .line 477
    move v10, v7

    goto :goto_82

    .line 478
    :cond_6b
    iget v1, v12, Lcom/google/android/exoplayer2/Format;->bitrate:I

    iget v2, v11, Lcom/google/android/exoplayer2/Format;->bitrate:I

    if-ge v1, v2, :cond_82

    iget-wide v1, v0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->maxDurationForQualityDecreaseUs:J

    cmp-long v19, p3, v1

    if-ltz v19, :cond_82

    .line 482
    move v10, v7

    goto :goto_82

    .line 467
    .end local v11    # "currentFormat":Lcom/google/android/exoplayer2/Format;
    .end local v12    # "selectedFormat":Lcom/google/android/exoplayer2/Format;
    .end local v15    # "minDurationForQualityIncreaseUs":J
    .end local v17    # "nowMs":J
    .restart local v1    # "nowMs":J
    :cond_79
    move-wide/from16 v13, p5

    move-wide/from16 v17, v1

    .end local v1    # "nowMs":J
    .restart local v17    # "nowMs":J
    goto :goto_82

    .line 466
    .end local v17    # "nowMs":J
    .restart local v1    # "nowMs":J
    :cond_7e
    move-wide/from16 v13, p5

    move-wide/from16 v17, v1

    .line 486
    .end local v1    # "nowMs":J
    .restart local v17    # "nowMs":J
    :cond_82
    :goto_82
    nop

    .line 487
    if-ne v10, v7, :cond_87

    move v1, v8

    goto :goto_88

    :cond_87
    const/4 v1, 0x3

    :goto_88
    iput v1, v0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->reason:I

    .line 488
    iput v10, v0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->selectedIndex:I

    .line 489
    return-void
.end method
