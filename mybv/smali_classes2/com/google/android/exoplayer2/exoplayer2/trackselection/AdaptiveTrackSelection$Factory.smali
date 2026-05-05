.class public Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;
.super Ljava/lang/Object;
.source "AdaptiveTrackSelection.java"

# interfaces
.implements Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# instance fields
.field private final bandwidthFraction:F

.field private final bufferedFractionToLiveEdgeForQualityIncrease:F

.field private final clock:Lcom/google/android/exoplayer2/util/Clock;

.field private final maxDurationForQualityDecreaseMs:I

.field private final maxHeightToDiscard:I

.field private final maxWidthToDiscard:I

.field private final minDurationForQualityIncreaseMs:I

.field private final minDurationToRetainAfterDiscardMs:I


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 71
    const/16 v0, 0x61a8

    const v1, 0x3f333333    # 0.7f

    const/16 v2, 0x2710

    invoke-direct {p0, v2, v0, v0, v1}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;-><init>(IIIF)V

    .line 76
    return-void
.end method

.method public constructor <init>(IIIF)V
    .registers 14
    .param p1, "minDurationForQualityIncreaseMs"    # I
    .param p2, "maxDurationForQualityDecreaseMs"    # I
    .param p3, "minDurationToRetainAfterDiscardMs"    # I
    .param p4, "bandwidthFraction"    # F

    .line 99
    const/16 v4, 0x4ff

    const/16 v5, 0x2cf

    const/high16 v7, 0x3f400000    # 0.75f

    sget-object v8, Lcom/google/android/exoplayer2/util/Clock;->DEFAULT:Lcom/google/android/exoplayer2/util/Clock;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v6, p4

    invoke-direct/range {v0 .. v8}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;-><init>(IIIIIFFLcom/google/android/exoplayer2/util/Clock;)V

    .line 108
    return-void
.end method

.method public constructor <init>(IIIFFLcom/google/android/exoplayer2/util/Clock;)V
    .registers 16
    .param p1, "minDurationForQualityIncreaseMs"    # I
    .param p2, "maxDurationForQualityDecreaseMs"    # I
    .param p3, "minDurationToRetainAfterDiscardMs"    # I
    .param p4, "bandwidthFraction"    # F
    .param p5, "bufferedFractionToLiveEdgeForQualityIncrease"    # F
    .param p6, "clock"    # Lcom/google/android/exoplayer2/util/Clock;

    .line 178
    const/16 v4, 0x4ff

    const/16 v5, 0x2cf

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v6, p4

    move v7, p5

    move-object v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;-><init>(IIIIIFFLcom/google/android/exoplayer2/util/Clock;)V

    .line 187
    return-void
.end method

.method public constructor <init>(IIIIIF)V
    .registers 16
    .param p1, "minDurationForQualityIncreaseMs"    # I
    .param p2, "maxDurationForQualityDecreaseMs"    # I
    .param p3, "minDurationToRetainAfterDiscardMs"    # I
    .param p4, "maxWidthToDiscard"    # I
    .param p5, "maxHeightToDiscard"    # I
    .param p6, "bandwidthFraction"    # F

    .line 137
    const/high16 v7, 0x3f400000    # 0.75f

    sget-object v8, Lcom/google/android/exoplayer2/util/Clock;->DEFAULT:Lcom/google/android/exoplayer2/util/Clock;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v8}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;-><init>(IIIIIFFLcom/google/android/exoplayer2/util/Clock;)V

    .line 146
    return-void
.end method

.method public constructor <init>(IIIIIFFLcom/google/android/exoplayer2/util/Clock;)V
    .registers 9
    .param p1, "minDurationForQualityIncreaseMs"    # I
    .param p2, "maxDurationForQualityDecreaseMs"    # I
    .param p3, "minDurationToRetainAfterDiscardMs"    # I
    .param p4, "maxWidthToDiscard"    # I
    .param p5, "maxHeightToDiscard"    # I
    .param p6, "bandwidthFraction"    # F
    .param p7, "bufferedFractionToLiveEdgeForQualityIncrease"    # F
    .param p8, "clock"    # Lcom/google/android/exoplayer2/util/Clock;

    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 225
    iput p1, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;->minDurationForQualityIncreaseMs:I

    .line 226
    iput p2, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;->maxDurationForQualityDecreaseMs:I

    .line 227
    iput p3, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;->minDurationToRetainAfterDiscardMs:I

    .line 228
    iput p4, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;->maxWidthToDiscard:I

    .line 229
    iput p5, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;->maxHeightToDiscard:I

    .line 230
    iput p6, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;->bandwidthFraction:F

    .line 231
    iput p7, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;->bufferedFractionToLiveEdgeForQualityIncrease:F

    .line 233
    iput-object p8, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;->clock:Lcom/google/android/exoplayer2/util/Clock;

    .line 234
    return-void
.end method


# virtual methods
.method protected createAdaptiveTrackSelection(Lcom/google/android/exoplayer2/source/TrackGroup;[IILcom/google/android/exoplayer2/upstream/BandwidthMeter;Lcom/google/common/collect/ImmutableList;)Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;
    .registers 26
    .param p1, "group"    # Lcom/google/android/exoplayer2/source/TrackGroup;
    .param p2, "tracks"    # [I
    .param p3, "type"    # I
    .param p4, "bandwidthMeter"    # Lcom/google/android/exoplayer2/upstream/BandwidthMeter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/source/TrackGroup;",
            "[II",
            "Lcom/google/android/exoplayer2/upstream/BandwidthMeter;",
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$AdaptationCheckpoint;",
            ">;)",
            "Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;"
        }
    .end annotation

    .local p5, "adaptationCheckpoints":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$AdaptationCheckpoint;>;"
    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v16, p5

    .line 283
    new-instance v18, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;

    move-object/from16 v1, v18

    iget v6, v0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;->minDurationForQualityIncreaseMs:I

    int-to-long v6, v6

    iget v8, v0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;->maxDurationForQualityDecreaseMs:I

    int-to-long v8, v8

    iget v10, v0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;->minDurationToRetainAfterDiscardMs:I

    int-to-long v10, v10

    iget v12, v0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;->maxWidthToDiscard:I

    iget v13, v0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;->maxHeightToDiscard:I

    iget v14, v0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;->bandwidthFraction:F

    iget v15, v0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;->bufferedFractionToLiveEdgeForQualityIncrease:F

    move-object/from16 v19, v1

    iget-object v1, v0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;->clock:Lcom/google/android/exoplayer2/util/Clock;

    move-object/from16 v17, v1

    move-object/from16 v1, v19

    invoke-direct/range {v1 .. v17}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;-><init>(Lcom/google/android/exoplayer2/source/TrackGroup;[IILcom/google/android/exoplayer2/upstream/BandwidthMeter;JJJIIFFLjava/util/List;Lcom/google/android/exoplayer2/util/Clock;)V

    return-object v18
.end method

.method public final createTrackSelections([Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;Lcom/google/android/exoplayer2/upstream/BandwidthMeter;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/Timeline;)[Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;
    .registers 20
    .param p1, "definitions"    # [Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;
    .param p2, "bandwidthMeter"    # Lcom/google/android/exoplayer2/upstream/BandwidthMeter;
    .param p3, "mediaPeriodId"    # Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .param p4, "timeline"    # Lcom/google/android/exoplayer2/Timeline;

    .line 242
    move-object/from16 v0, p1

    .line 243
    # invokes: Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->getAdaptationCheckpoints([Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;)Lcom/google/common/collect/ImmutableList;
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->access$000([Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    .line 244
    .local v1, "adaptationCheckpoints":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Lcom/google/common/collect/ImmutableList<Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$AdaptationCheckpoint;>;>;"
    array-length v2, v0

    new-array v2, v2, [Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    .line 245
    .local v2, "selections":[Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_a
    array-length v4, v0

    if-ge v3, v4, :cond_46

    .line 246
    aget-object v4, v0, v3

    .line 247
    .local v4, "definition":Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;
    if-eqz v4, :cond_43

    iget-object v5, v4, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;->tracks:[I

    array-length v5, v5

    if-nez v5, :cond_17

    .line 248
    goto :goto_43

    .line 250
    :cond_17
    nop

    .line 251
    iget-object v5, v4, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;->tracks:[I

    array-length v5, v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2d

    .line 252
    new-instance v5, Lcom/google/android/exoplayer2/trackselection/FixedTrackSelection;

    iget-object v6, v4, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;->group:Lcom/google/android/exoplayer2/source/TrackGroup;

    iget-object v7, v4, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;->tracks:[I

    const/4 v8, 0x0

    aget v7, v7, v8

    iget v8, v4, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;->type:I

    invoke-direct {v5, v6, v7, v8}, Lcom/google/android/exoplayer2/trackselection/FixedTrackSelection;-><init>(Lcom/google/android/exoplayer2/source/TrackGroup;II)V

    goto :goto_41

    .line 256
    :cond_2d
    iget-object v10, v4, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;->group:Lcom/google/android/exoplayer2/source/TrackGroup;

    iget-object v11, v4, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;->tracks:[I

    iget v12, v4, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;->type:I

    .line 261
    invoke-virtual {v1, v3}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v14, v5

    check-cast v14, Lcom/google/common/collect/ImmutableList;

    .line 256
    move-object v9, p0

    move-object/from16 v13, p2

    invoke-virtual/range {v9 .. v14}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;->createAdaptiveTrackSelection(Lcom/google/android/exoplayer2/source/TrackGroup;[IILcom/google/android/exoplayer2/upstream/BandwidthMeter;Lcom/google/common/collect/ImmutableList;)Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;

    move-result-object v5

    :goto_41
    aput-object v5, v2, v3

    .line 245
    .end local v4    # "definition":Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;
    :cond_43
    :goto_43
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 263
    .end local v3    # "i":I
    :cond_46
    return-object v2
.end method
