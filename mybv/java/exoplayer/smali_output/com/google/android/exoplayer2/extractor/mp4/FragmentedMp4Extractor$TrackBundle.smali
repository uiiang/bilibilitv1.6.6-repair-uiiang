.class final Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;
.super Ljava/lang/Object;
.source "FragmentedMp4Extractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TrackBundle"
.end annotation


# static fields
.field private static final SINGLE_SUBSAMPLE_ENCRYPTION_DATA_LENGTH:I = 0x8


# instance fields
.field public currentSampleInTrackRun:I

.field public currentSampleIndex:I

.field public currentTrackRunIndex:I

.field private currentlyInFragment:Z

.field private final defaultInitializationVector:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field public defaultSampleValues:Lcom/google/android/exoplayer2/extractor/mp4/DefaultSampleValues;

.field private final encryptionSignalByte:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field public firstSampleToOutputIndex:I

.field public final fragment:Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;

.field public moovSampleTable:Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

.field public final output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

.field public final scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/extractor/TrackOutput;Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;Lcom/google/android/exoplayer2/extractor/mp4/DefaultSampleValues;)V
    .registers 6
    .param p1, "output"    # Lcom/google/android/exoplayer2/extractor/TrackOutput;
    .param p2, "moovSampleTable"    # Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;
    .param p3, "defaultSampleValues"    # Lcom/google/android/exoplayer2/extractor/mp4/DefaultSampleValues;

    .line 1667
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1668
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    .line 1669
    iput-object p2, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->moovSampleTable:Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    .line 1670
    iput-object p3, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->defaultSampleValues:Lcom/google/android/exoplayer2/extractor/mp4/DefaultSampleValues;

    .line 1671
    new-instance v0, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;

    .line 1672
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 1673
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->encryptionSignalByte:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 1674
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->defaultInitializationVector:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 1675
    invoke-virtual {p0, p2, p3}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->reset(Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;Lcom/google/android/exoplayer2/extractor/mp4/DefaultSampleValues;)V

    .line 1676
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;)Z
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    .line 1644
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentlyInFragment:Z

    return v0
.end method

.method static synthetic access$002(Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;
    .param p1, "x1"    # Z

    .line 1644
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentlyInFragment:Z

    return p1
.end method


# virtual methods
.method public getCurrentSampleFlags()I
    .registers 3

    .line 1748
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentlyInFragment:Z

    if-nez v0, :cond_d

    .line 1749
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->moovSampleTable:Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->flags:[I

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    aget v0, v0, v1

    goto :goto_1a

    .line 1750
    :cond_d
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;

    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->sampleIsSyncFrameTable:[Z

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_19

    const/4 v0, 0x1

    goto :goto_1a

    :cond_19
    const/4 v0, 0x0

    :goto_1a
    nop

    .line 1751
    .local v0, "flags":I
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->getEncryptionBoxIfEncrypted()Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    move-result-object v1

    if-eqz v1, :cond_24

    .line 1752
    const/high16 v1, 0x40000000    # 2.0f

    or-int/2addr v0, v1

    .line 1754
    :cond_24
    return v0
.end method

.method public getCurrentSampleOffset()J
    .registers 4

    .line 1733
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentlyInFragment:Z

    if-nez v0, :cond_d

    .line 1734
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->moovSampleTable:Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->offsets:[J

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    aget-wide v1, v0, v1

    goto :goto_15

    .line 1735
    :cond_d
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;

    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->trunDataPosition:[J

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentTrackRunIndex:I

    aget-wide v1, v0, v1

    .line 1733
    :goto_15
    return-wide v1
.end method

.method public getCurrentSamplePresentationTimeUs()J
    .registers 4

    .line 1726
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentlyInFragment:Z

    if-nez v0, :cond_d

    .line 1727
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->moovSampleTable:Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->timestampsUs:[J

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    aget-wide v1, v0, v1

    goto :goto_15

    .line 1728
    :cond_d
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->getSamplePresentationTimeUs(I)J

    move-result-wide v1

    .line 1726
    :goto_15
    return-wide v1
.end method

.method public getCurrentSampleSize()I
    .registers 3

    .line 1740
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentlyInFragment:Z

    if-nez v0, :cond_d

    .line 1741
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->moovSampleTable:Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->sizes:[I

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    aget v0, v0, v1

    goto :goto_15

    .line 1742
    :cond_d
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;

    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->sampleSizeTable:[I

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    aget v0, v0, v1

    .line 1740
    :goto_15
    return v0
.end method

.method public getEncryptionBoxIfEncrypted()Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;
    .registers 5

    .line 1901
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentlyInFragment:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 1903
    return-object v1

    .line 1905
    :cond_6
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;

    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->header:Lcom/google/android/exoplayer2/extractor/mp4/DefaultSampleValues;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/mp4/DefaultSampleValues;

    iget v0, v0, Lcom/google/android/exoplayer2/extractor/mp4/DefaultSampleValues;->sampleDescriptionIndex:I

    .line 1908
    .local v0, "sampleDescriptionIndex":I
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;

    iget-object v2, v2, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->trackEncryptionBox:Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    if-eqz v2, :cond_1d

    .line 1909
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;

    iget-object v2, v2, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->trackEncryptionBox:Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    goto :goto_25

    .line 1910
    :cond_1d
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->moovSampleTable:Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    iget-object v2, v2, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->track:Lcom/google/android/exoplayer2/extractor/mp4/Track;

    invoke-virtual {v2, v0}, Lcom/google/android/exoplayer2/extractor/mp4/Track;->getSampleDescriptionEncryptionBox(I)Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    move-result-object v2

    :goto_25
    nop

    .line 1911
    .local v2, "encryptionBox":Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;
    if-eqz v2, :cond_2d

    iget-boolean v3, v2, Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;->isEncrypted:Z

    if-eqz v3, :cond_2d

    move-object v1, v2

    :cond_2d
    return-object v1
.end method

.method public next()Z
    .registers 6

    .line 1771
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    .line 1772
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentlyInFragment:Z

    const/4 v2, 0x0

    if-nez v0, :cond_c

    .line 1773
    return v2

    .line 1775
    :cond_c
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleInTrackRun:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleInTrackRun:I

    .line 1776
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;

    iget-object v3, v3, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->trunLength:[I

    iget v4, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentTrackRunIndex:I

    aget v3, v3, v4

    if-ne v0, v3, :cond_21

    .line 1777
    add-int/2addr v4, v1

    iput v4, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentTrackRunIndex:I

    .line 1778
    iput v2, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleInTrackRun:I

    .line 1779
    return v2

    .line 1781
    :cond_21
    return v1
.end method

.method public outputSampleEncryptionData(II)I
    .registers 19
    .param p1, "sampleSize"    # I
    .param p2, "clearHeaderSize"    # I

    .line 1796
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->getEncryptionBoxIfEncrypted()Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    move-result-object v3

    .line 1797
    .local v3, "encryptionBox":Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;
    const/4 v4, 0x0

    if-nez v3, :cond_e

    .line 1798
    return v4

    .line 1803
    :cond_e
    iget v5, v3, Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;->perSampleIvSize:I

    if-eqz v5, :cond_19

    .line 1804
    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;

    iget-object v5, v5, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->sampleEncryptionData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 1805
    .local v5, "initializationVectorData":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    iget v6, v3, Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;->perSampleIvSize:I

    .local v6, "vectorSize":I
    goto :goto_2c

    .line 1808
    .end local v5    # "initializationVectorData":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .end local v6    # "vectorSize":I
    :cond_19
    iget-object v5, v3, Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;->defaultInitializationVector:[B

    invoke-static {v5}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    .line 1809
    .local v5, "initVectorData":[B
    iget-object v6, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->defaultInitializationVector:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    array-length v7, v5

    invoke-virtual {v6, v5, v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset([BI)V

    .line 1810
    iget-object v6, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->defaultInitializationVector:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 1811
    .local v6, "initializationVectorData":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    array-length v7, v5

    move-object v5, v6

    move v6, v7

    .line 1814
    .local v5, "initializationVectorData":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .local v6, "vectorSize":I
    :goto_2c
    iget-object v7, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;

    iget v8, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    .line 1815
    invoke-virtual {v7, v8}, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->sampleHasSubsampleEncryptionTable(I)Z

    move-result v7

    .line 1816
    .local v7, "haveSubsampleEncryptionTable":Z
    const/4 v8, 0x1

    if-nez v7, :cond_3c

    if-eqz v2, :cond_3a

    goto :goto_3c

    :cond_3a
    const/4 v9, 0x0

    goto :goto_3d

    :cond_3c
    :goto_3c
    const/4 v9, 0x1

    .line 1819
    .local v9, "writeSubsampleEncryptionData":Z
    :goto_3d
    iget-object v10, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->encryptionSignalByte:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v10}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v10

    .line 1820
    if-eqz v9, :cond_48

    const/16 v11, 0x80

    goto :goto_49

    :cond_48
    const/4 v11, 0x0

    :goto_49
    or-int/2addr v11, v6

    int-to-byte v11, v11

    aput-byte v11, v10, v4

    .line 1821
    iget-object v10, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->encryptionSignalByte:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v10, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 1822
    iget-object v10, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    iget-object v11, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->encryptionSignalByte:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-interface {v10, v11, v8, v8}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/util/ParsableByteArray;II)V

    .line 1824
    iget-object v10, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-interface {v10, v5, v6, v8}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/util/ParsableByteArray;II)V

    .line 1827
    if-nez v9, :cond_63

    .line 1828
    add-int/lit8 v4, v6, 0x1

    return v4

    .line 1831
    :cond_63
    const/4 v10, 0x3

    const/4 v11, 0x2

    const/16 v12, 0x8

    if-nez v7, :cond_ad

    .line 1835
    iget-object v13, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v13, v12}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset(I)V

    .line 1837
    iget-object v13, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v13}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v13

    .line 1838
    .local v13, "data":[B
    aput-byte v4, v13, v4

    .line 1839
    aput-byte v8, v13, v8

    .line 1841
    shr-int/lit8 v4, v2, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v13, v11

    .line 1842
    and-int/lit16 v4, v2, 0xff

    int-to-byte v4, v4

    aput-byte v4, v13, v10

    .line 1844
    shr-int/lit8 v4, v1, 0x18

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    const/4 v10, 0x4

    aput-byte v4, v13, v10

    .line 1845
    shr-int/lit8 v4, v1, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    const/4 v10, 0x5

    aput-byte v4, v13, v10

    .line 1846
    shr-int/lit8 v4, v1, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    const/4 v10, 0x6

    aput-byte v4, v13, v10

    .line 1847
    and-int/lit16 v4, v1, 0xff

    int-to-byte v4, v4

    const/4 v10, 0x7

    aput-byte v4, v13, v10

    .line 1848
    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    iget-object v10, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-interface {v4, v10, v12, v8}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/util/ParsableByteArray;II)V

    .line 1852
    add-int/lit8 v4, v6, 0x1

    add-int/2addr v4, v12

    return v4

    .line 1855
    .end local v13    # "data":[B
    :cond_ad
    iget-object v13, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;

    iget-object v13, v13, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->sampleEncryptionData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 1856
    .local v13, "subsampleEncryptionData":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    invoke-virtual {v13}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v14

    .line 1857
    .local v14, "subsampleCount":I
    const/4 v15, -0x2

    invoke-virtual {v13, v15}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 1858
    mul-int/lit8 v15, v14, 0x6

    add-int/2addr v15, v11

    .line 1860
    .local v15, "subsampleDataLength":I
    if-eqz v2, :cond_e7

    .line 1863
    iget-object v8, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v8, v15}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset(I)V

    .line 1864
    iget-object v8, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v8}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v8

    .line 1865
    .local v8, "scratchData":[B
    invoke-virtual {v13, v8, v4, v15}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 1867
    aget-byte v4, v8, v11

    and-int/lit16 v4, v4, 0xff

    shl-int/2addr v4, v12

    aget-byte v12, v8, v10

    and-int/lit16 v12, v12, 0xff

    or-int/2addr v4, v12

    .line 1868
    .local v4, "clearDataSize":I
    add-int v12, v4, v2

    .line 1869
    .local v12, "adjustedClearDataSize":I
    shr-int/lit8 v10, v12, 0x8

    and-int/lit16 v10, v10, 0xff

    int-to-byte v10, v10

    aput-byte v10, v8, v11

    .line 1870
    and-int/lit16 v10, v12, 0xff

    int-to-byte v10, v10

    const/4 v11, 0x3

    aput-byte v10, v8, v11

    .line 1871
    iget-object v13, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 1874
    .end local v4    # "clearDataSize":I
    .end local v8    # "scratchData":[B
    .end local v12    # "adjustedClearDataSize":I
    :cond_e7
    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    const/4 v8, 0x1

    invoke-interface {v4, v13, v15, v8}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/util/ParsableByteArray;II)V

    .line 1876
    add-int/lit8 v4, v6, 0x1

    add-int/2addr v4, v15

    return v4
.end method

.method public reset(Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;Lcom/google/android/exoplayer2/extractor/mp4/DefaultSampleValues;)V
    .registers 5
    .param p1, "moovSampleTable"    # Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;
    .param p2, "defaultSampleValues"    # Lcom/google/android/exoplayer2/extractor/mp4/DefaultSampleValues;

    .line 1679
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->moovSampleTable:Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    .line 1680
    iput-object p2, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->defaultSampleValues:Lcom/google/android/exoplayer2/extractor/mp4/DefaultSampleValues;

    .line 1681
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    iget-object v1, p1, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->track:Lcom/google/android/exoplayer2/extractor/mp4/Track;

    iget-object v1, v1, Lcom/google/android/exoplayer2/extractor/mp4/Track;->format:Lcom/google/android/exoplayer2/Format;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->format(Lcom/google/android/exoplayer2/Format;)V

    .line 1682
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->resetFragmentInfo()V

    .line 1683
    return-void
.end method

.method public resetFragmentInfo()V
    .registers 2

    .line 1699
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->reset()V

    .line 1700
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    .line 1701
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentTrackRunIndex:I

    .line 1702
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleInTrackRun:I

    .line 1703
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->firstSampleToOutputIndex:I

    .line 1704
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentlyInFragment:Z

    .line 1705
    return-void
.end method

.method public seek(J)V
    .registers 7
    .param p1, "timeUs"    # J

    .line 1714
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    .line 1715
    .local v0, "searchIndex":I
    :goto_2
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;

    iget v1, v1, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->sampleCount:I

    if-ge v0, v1, :cond_1f

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;

    .line 1716
    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->getSamplePresentationTimeUs(I)J

    move-result-wide v1

    cmp-long v3, v1, p1

    if-gtz v3, :cond_1f

    .line 1717
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;

    iget-object v1, v1, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->sampleIsSyncFrameTable:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_1c

    .line 1718
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->firstSampleToOutputIndex:I

    .line 1720
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1722
    :cond_1f
    return-void
.end method

.method public skipSampleEncryptionData()V
    .registers 5

    .line 1885
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->getEncryptionBoxIfEncrypted()Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    move-result-object v0

    .line 1886
    .local v0, "encryptionBox":Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;
    if-nez v0, :cond_7

    .line 1887
    return-void

    .line 1890
    :cond_7
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;

    iget-object v1, v1, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->sampleEncryptionData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 1891
    .local v1, "sampleEncryptionData":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    iget v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;->perSampleIvSize:I

    if-eqz v2, :cond_14

    .line 1892
    iget v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;->perSampleIvSize:I

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 1894
    :cond_14
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;

    iget v3, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->sampleHasSubsampleEncryptionTable(I)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 1895
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v2

    mul-int/lit8 v2, v2, 0x6

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 1897
    :cond_27
    return-void
.end method

.method public updateDrmInitData(Lcom/google/android/exoplayer2/drm/DrmInitData;)V
    .registers 7
    .param p1, "drmInitData"    # Lcom/google/android/exoplayer2/drm/DrmInitData;

    .line 1687
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->moovSampleTable:Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->track:Lcom/google/android/exoplayer2/extractor/mp4/Track;

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;

    iget-object v1, v1, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->header:Lcom/google/android/exoplayer2/extractor/mp4/DefaultSampleValues;

    .line 1689
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/extractor/mp4/DefaultSampleValues;

    iget v1, v1, Lcom/google/android/exoplayer2/extractor/mp4/DefaultSampleValues;->sampleDescriptionIndex:I

    .line 1688
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/extractor/mp4/Track;->getSampleDescriptionEncryptionBox(I)Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    move-result-object v0

    .line 1690
    .local v0, "encryptionBox":Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;
    if-eqz v0, :cond_19

    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;->schemeType:Ljava/lang/String;

    goto :goto_1a

    :cond_19
    const/4 v1, 0x0

    .line 1691
    .local v1, "schemeType":Ljava/lang/String;
    :goto_1a
    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/drm/DrmInitData;->copyWithSchemeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/drm/DrmInitData;

    move-result-object v2

    .line 1692
    .local v2, "updatedDrmInitData":Lcom/google/android/exoplayer2/drm/DrmInitData;
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->moovSampleTable:Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    iget-object v3, v3, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->track:Lcom/google/android/exoplayer2/extractor/mp4/Track;

    iget-object v3, v3, Lcom/google/android/exoplayer2/extractor/mp4/Track;->format:Lcom/google/android/exoplayer2/Format;

    .line 1693
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/Format;->buildUpon()Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/exoplayer2/Format$Builder;->setDrmInitData(Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object v3

    .line 1694
    .local v3, "format":Lcom/google/android/exoplayer2/Format;
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-interface {v4, v3}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->format(Lcom/google/android/exoplayer2/Format;)V

    .line 1695
    return-void
.end method
