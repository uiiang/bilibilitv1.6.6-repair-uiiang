.class public final Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;
.super Ljava/lang/Object;
.source "Mp4Extractor.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/Extractor;
.implements Lcom/google/android/exoplayer2/extractor/SeekMap;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;,
        Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Flags;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final FACTORY:Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;

.field private static final FILE_TYPE_HEIC:I = 0x2

.field private static final FILE_TYPE_MP4:I = 0x0

.field private static final FILE_TYPE_QUICKTIME:I = 0x1

.field public static final FLAG_READ_MOTION_PHOTO_METADATA:I = 0x2

.field public static final FLAG_READ_SEF_DATA:I = 0x4

.field public static final FLAG_WORKAROUND_IGNORE_EDIT_LISTS:I = 0x1

.field private static final MAXIMUM_READ_AHEAD_BYTES_STREAM:J = 0xa00000L

.field private static final RELOAD_MINIMUM_SEEK_DISTANCE:J = 0x40000L

.field private static final STATE_READING_ATOM_HEADER:I = 0x0

.field private static final STATE_READING_ATOM_PAYLOAD:I = 0x1

.field private static final STATE_READING_SAMPLE:I = 0x2

.field private static final STATE_READING_SEF:I = 0x3


# instance fields
.field private accumulatedSampleSizes:[[J

.field private atomData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field private final atomHeader:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field private atomHeaderBytesRead:I

.field private atomSize:J

.field private atomType:I

.field private final containerAtoms:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;",
            ">;"
        }
    .end annotation
.end field

.field private durationUs:J

.field private extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

.field private fileType:I

.field private firstVideoTrackIndex:I

.field private final flags:I

.field private motionPhotoMetadata:Lcom/google/android/exoplayer2/metadata/mp4/MotionPhotoMetadata;

.field private final nalLength:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field private final nalStartCode:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field private parserState:I

.field private sampleBytesRead:I

.field private sampleBytesWritten:I

.field private sampleCurrentNalBytesRemaining:I

.field private sampleTrackIndex:I

.field private final scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field private final sefReader:Lcom/google/android/exoplayer2/extractor/mp4/SefReader;

.field private final slowMotionMetadataEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/metadata/Metadata$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private tracks:[Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 74
    new-instance v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->FACTORY:Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 183
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;-><init>(I)V

    .line 184
    return-void
.end method

.method public constructor <init>(I)V
    .registers 5
    .param p1, "flags"    # I

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->flags:I

    .line 194
    nop

    .line 195
    and-int/lit8 v0, p1, 0x4

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    const/4 v0, 0x3

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->parserState:I

    .line 196
    new-instance v0, Lcom/google/android/exoplayer2/extractor/mp4/SefReader;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/mp4/SefReader;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sefReader:Lcom/google/android/exoplayer2/extractor/mp4/SefReader;

    .line 197
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->slowMotionMetadataEntries:Ljava/util/List;

    .line 198
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/16 v2, 0x10

    invoke-direct {v0, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeader:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 199
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    .line 200
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    sget-object v2, Lcom/google/android/exoplayer2/util/NalUnitUtil;->NAL_START_CODE:[B

    invoke-direct {v0, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->nalStartCode:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 201
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/4 v2, 0x4

    invoke-direct {v0, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->nalLength:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 202
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 203
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleTrackIndex:I

    .line 204
    sget-object v0, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->PLACEHOLDER:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    .line 205
    new-array v0, v1, [Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->tracks:[Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;

    .line 206
    return-void
.end method

.method private static brandToFileType(I)I
    .registers 2
    .param p0, "brand"    # I

    .line 912
    sparse-switch p0, :sswitch_data_a

    .line 918
    const/4 v0, 0x0

    return v0

    .line 914
    :sswitch_5
    const/4 v0, 0x1

    return v0

    .line 916
    :sswitch_7
    const/4 v0, 0x2

    return v0

    nop

    :sswitch_data_a
    .sparse-switch
        0x68656963 -> :sswitch_7
        0x71742020 -> :sswitch_5
    .end sparse-switch
.end method

.method private static calculateAccumulatedSampleSizes([Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;)[[J
    .registers 15
    .param p0, "tracks"    # [Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;

    .line 815
    array-length v0, p0

    new-array v0, v0, [[J

    .line 816
    .local v0, "accumulatedSampleSizes":[[J
    array-length v1, p0

    new-array v1, v1, [I

    .line 817
    .local v1, "nextSampleIndex":[I
    array-length v2, p0

    new-array v2, v2, [J

    .line 818
    .local v2, "nextSampleTimesUs":[J
    array-length v3, p0

    new-array v3, v3, [Z

    .line 819
    .local v3, "tracksFinished":[Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_d
    array-length v5, p0

    if-ge v4, v5, :cond_28

    .line 820
    aget-object v5, p0, v4

    iget-object v5, v5, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    iget v5, v5, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->sampleCount:I

    new-array v5, v5, [J

    aput-object v5, v0, v4

    .line 821
    aget-object v5, p0, v4

    iget-object v5, v5, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    iget-object v5, v5, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->timestampsUs:[J

    const/4 v6, 0x0

    aget-wide v6, v5, v6

    aput-wide v6, v2, v4

    .line 819
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    .line 823
    .end local v4    # "i":I
    :cond_28
    const-wide/16 v4, 0x0

    .line 824
    .local v4, "accumulatedSampleSize":J
    const/4 v6, 0x0

    .line 825
    .local v6, "finishedTracks":I
    :goto_2b
    array-length v7, p0

    if-ge v6, v7, :cond_71

    .line 826
    const-wide v7, 0x7fffffffffffffffL

    .line 827
    .local v7, "minTimeUs":J
    const/4 v9, -0x1

    .line 828
    .local v9, "minTimeTrackIndex":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_35
    array-length v11, p0

    if-ge v10, v11, :cond_48

    .line 829
    aget-boolean v11, v3, v10

    if-nez v11, :cond_45

    aget-wide v11, v2, v10

    cmp-long v13, v11, v7

    if-gtz v13, :cond_45

    .line 830
    move v9, v10

    .line 831
    aget-wide v7, v2, v10

    .line 828
    :cond_45
    add-int/lit8 v10, v10, 0x1

    goto :goto_35

    .line 834
    .end local v10    # "i":I
    :cond_48
    aget v10, v1, v9

    .line 835
    .local v10, "trackSampleIndex":I
    aget-object v11, v0, v9

    aput-wide v4, v11, v10

    .line 836
    aget-object v11, p0, v9

    iget-object v11, v11, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    iget-object v11, v11, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->sizes:[I

    aget v11, v11, v10

    int-to-long v11, v11

    add-long/2addr v4, v11

    .line 837
    const/4 v11, 0x1

    add-int/2addr v10, v11

    aput v10, v1, v9

    .line 838
    aget-object v12, v0, v9

    array-length v12, v12

    if-ge v10, v12, :cond_6c

    .line 839
    aget-object v11, p0, v9

    iget-object v11, v11, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    iget-object v11, v11, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->timestampsUs:[J

    aget-wide v12, v11, v10

    aput-wide v12, v2, v9

    goto :goto_70

    .line 842
    :cond_6c
    aput-boolean v11, v3, v9

    .line 843
    add-int/lit8 v6, v6, 0x1

    .line 845
    .end local v7    # "minTimeUs":J
    .end local v9    # "minTimeTrackIndex":I
    .end local v10    # "trackSampleIndex":I
    :goto_70
    goto :goto_2b

    .line 846
    :cond_71
    return-object v0
.end method

.method private enterReadingAtomHeaderState()V
    .registers 2

    .line 363
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->parserState:I

    .line 364
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    .line 365
    return-void
.end method

.method private static getSynchronizationSampleIndex(Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;J)I
    .registers 5
    .param p0, "sampleTable"    # Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;
    .param p1, "timeUs"    # J

    .line 880
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->getIndexOfEarlierOrEqualSynchronizationSample(J)I

    move-result v0

    .line 881
    .local v0, "sampleIndex":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_b

    .line 883
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->getIndexOfLaterOrEqualSynchronizationSample(J)I

    move-result v0

    .line 885
    :cond_b
    return v0
.end method

.method private getTrackIndexOfNextReadSample(J)I
    .registers 26
    .param p1, "inputPosition"    # J

    .line 726
    move-object/from16 v0, p0

    const-wide v1, 0x7fffffffffffffffL

    .line 727
    .local v1, "preferredSkipAmount":J
    const/4 v3, 0x1

    .line 728
    .local v3, "preferredRequiresReload":Z
    const/4 v4, -0x1

    .line 729
    .local v4, "preferredTrackIndex":I
    const-wide v5, 0x7fffffffffffffffL

    .line 730
    .local v5, "preferredAccumulatedBytes":J
    const-wide v7, 0x7fffffffffffffffL

    .line 731
    .local v7, "minAccumulatedBytes":J
    const/4 v9, 0x1

    .line 732
    .local v9, "minAccumulatedBytesRequiresReload":Z
    const/4 v10, -0x1

    .line 733
    .local v10, "minAccumulatedBytesTrackIndex":I
    const/4 v11, 0x0

    .local v11, "trackIndex":I
    :goto_16
    iget-object v12, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->tracks:[Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;

    array-length v13, v12

    if-ge v11, v13, :cond_66

    .line 734
    aget-object v12, v12, v11

    .line 735
    .local v12, "track":Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;
    iget v13, v12, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->sampleIndex:I

    .line 736
    .local v13, "sampleIndex":I
    iget-object v14, v12, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    iget v14, v14, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->sampleCount:I

    if-ne v13, v14, :cond_26

    .line 737
    goto :goto_63

    .line 739
    :cond_26
    iget-object v14, v12, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    iget-object v14, v14, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->offsets:[J

    aget-wide v15, v14, v13

    .line 740
    .local v15, "sampleOffset":J
    iget-object v14, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->accumulatedSampleSizes:[[J

    invoke-static {v14}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [[J

    aget-object v14, v14, v11

    aget-wide v17, v14, v13

    .line 741
    .local v17, "sampleAccumulatedBytes":J
    sub-long v19, v15, p1

    .line 742
    .local v19, "skipAmount":J
    const-wide/16 v21, 0x0

    cmp-long v14, v19, v21

    if-ltz v14, :cond_4a

    const-wide/32 v21, 0x40000

    cmp-long v14, v19, v21

    if-ltz v14, :cond_48

    goto :goto_4a

    :cond_48
    const/4 v14, 0x0

    goto :goto_4b

    :cond_4a
    :goto_4a
    const/4 v14, 0x1

    .line 743
    .local v14, "requiresReload":Z
    :goto_4b
    if-nez v14, :cond_4f

    if-nez v3, :cond_55

    :cond_4f
    if-ne v14, v3, :cond_5b

    cmp-long v21, v19, v1

    if-gez v21, :cond_5b

    .line 745
    :cond_55
    move v3, v14

    .line 746
    move-wide/from16 v1, v19

    .line 747
    move v4, v11

    .line 748
    move-wide/from16 v5, v17

    .line 750
    :cond_5b
    cmp-long v21, v17, v7

    if-gez v21, :cond_63

    .line 751
    move-wide/from16 v7, v17

    .line 752
    move v9, v14

    .line 753
    move v10, v11

    .line 733
    .end local v12    # "track":Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;
    .end local v13    # "sampleIndex":I
    .end local v14    # "requiresReload":Z
    .end local v15    # "sampleOffset":J
    .end local v17    # "sampleAccumulatedBytes":J
    .end local v19    # "skipAmount":J
    :cond_63
    :goto_63
    add-int/lit8 v11, v11, 0x1

    goto :goto_16

    .line 758
    .end local v11    # "trackIndex":I
    :cond_66
    const-wide v11, 0x7fffffffffffffffL

    cmp-long v13, v7, v11

    if-eqz v13, :cond_7c

    if-eqz v9, :cond_7c

    const-wide/32 v11, 0xa00000

    add-long/2addr v11, v7

    cmp-long v13, v5, v11

    if-gez v13, :cond_7a

    goto :goto_7c

    .line 760
    :cond_7a
    move v11, v10

    goto :goto_7d

    .line 759
    :cond_7c
    :goto_7c
    move v11, v4

    .line 756
    :goto_7d
    return v11
.end method

.method static synthetic lambda$processMoovAtom$1(Lcom/google/android/exoplayer2/extractor/mp4/Track;)Lcom/google/android/exoplayer2/extractor/mp4/Track;
    .registers 1
    .param p0, "track"    # Lcom/google/android/exoplayer2/extractor/mp4/Track;

    .line 533
    return-object p0
.end method

.method static synthetic lambda$static$0()[Lcom/google/android/exoplayer2/extractor/Extractor;
    .registers 3

    .line 74
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/android/exoplayer2/extractor/Extractor;

    new-instance v1, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method private static maybeAdjustSeekOffset(Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;JJ)J
    .registers 11
    .param p0, "sampleTable"    # Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;
    .param p1, "seekTimeUs"    # J
    .param p3, "offset"    # J

    .line 860
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->getSynchronizationSampleIndex(Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;J)I

    move-result v0

    .line 861
    .local v0, "sampleIndex":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    .line 862
    return-wide p3

    .line 864
    :cond_8
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->offsets:[J

    aget-wide v2, v1, v0

    .line 865
    .local v2, "sampleOffset":J
    invoke-static {v2, v3, p3, p4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    return-wide v4
.end method

.method private maybeSkipRemainingMetaAtomHeaderBytes(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)V
    .registers 5
    .param p1, "input"    # Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 788
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset(I)V

    .line 789
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 790
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->maybeSkipRemainingMetaAtomHeaderBytes(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V

    .line 791
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    .line 792
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    .line 793
    return-void
.end method

.method private processAtomEnded(J)V
    .registers 7
    .param p1, "atomEndPosition"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 477
    nop

    :goto_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    const/4 v1, 0x2

    if-nez v0, :cond_46

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    iget-wide v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->endPosition:J

    cmp-long v0, v2, p1

    if-nez v0, :cond_46

    .line 478
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    .line 479
    .local v0, "containerAtom":Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;
    iget v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->type:I

    const v3, 0x6d6f6f76

    if-ne v2, v3, :cond_32

    .line 481
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->processMoovAtom(Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;)V

    .line 482
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->clear()V

    .line 483
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->parserState:I

    goto :goto_45

    .line 484
    :cond_32
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_45

    .line 485
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->add(Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;)V

    .line 487
    .end local v0    # "containerAtom":Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;
    :cond_45
    :goto_45
    goto :goto_1

    .line 488
    :cond_46
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->parserState:I

    if-eq v0, v1, :cond_4d

    .line 489
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->enterReadingAtomHeaderState()V

    .line 491
    :cond_4d
    return-void
.end method

.method private processEndOfStreamReadingAtomHeader()V
    .registers 7

    .line 776
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->fileType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_48

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->flags:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_48

    .line 778
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->track(II)Lcom/google/android/exoplayer2/extractor/TrackOutput;

    move-result-object v0

    .line 780
    .local v0, "trackOutput":Lcom/google/android/exoplayer2/extractor/TrackOutput;
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->motionPhotoMetadata:Lcom/google/android/exoplayer2/metadata/mp4/MotionPhotoMetadata;

    if-nez v1, :cond_18

    const/4 v1, 0x0

    goto :goto_24

    :cond_18
    new-instance v1, Lcom/google/android/exoplayer2/metadata/Metadata;

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->motionPhotoMetadata:Lcom/google/android/exoplayer2/metadata/mp4/MotionPhotoMetadata;

    aput-object v4, v3, v2

    invoke-direct {v1, v3}, Lcom/google/android/exoplayer2/metadata/Metadata;-><init>([Lcom/google/android/exoplayer2/metadata/Metadata$Entry;)V

    .line 781
    .local v1, "metadata":Lcom/google/android/exoplayer2/metadata/Metadata;
    :goto_24
    new-instance v2, Lcom/google/android/exoplayer2/Format$Builder;

    invoke-direct {v2}, Lcom/google/android/exoplayer2/Format$Builder;-><init>()V

    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/Format$Builder;->setMetadata(Lcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->format(Lcom/google/android/exoplayer2/Format;)V

    .line 782
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    invoke-interface {v2}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->endTracks()V

    .line 783
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    new-instance v3, Lcom/google/android/exoplayer2/extractor/SeekMap$Unseekable;

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v3, v4, v5}, Lcom/google/android/exoplayer2/extractor/SeekMap$Unseekable;-><init>(J)V

    invoke-interface {v2, v3}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->seekMap(Lcom/google/android/exoplayer2/extractor/SeekMap;)V

    .line 785
    .end local v0    # "trackOutput":Lcom/google/android/exoplayer2/extractor/TrackOutput;
    .end local v1    # "metadata":Lcom/google/android/exoplayer2/metadata/Metadata;
    :cond_48
    return-void
.end method

.method private static processFtypAtom(Lcom/google/android/exoplayer2/util/ParsableByteArray;)I
    .registers 4
    .param p0, "atomData"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 895
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 896
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 897
    .local v0, "majorBrand":I
    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->brandToFileType(I)I

    move-result v1

    .line 898
    .local v1, "fileType":I
    if-eqz v1, :cond_10

    .line 899
    return v1

    .line 901
    :cond_10
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 902
    :cond_14
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v2

    if-lez v2, :cond_25

    .line 903
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->brandToFileType(I)I

    move-result v1

    .line 904
    if-eqz v1, :cond_14

    .line 905
    return v1

    .line 908
    :cond_25
    const/4 v2, 0x0

    return v2
.end method

.method private processMoovAtom(Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;)V
    .registers 35
    .param p1, "moov"    # Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 495
    move-object/from16 v0, p0

    move-object/from16 v9, p1

    const/4 v10, -0x1

    .line 496
    .local v10, "firstVideoTrackIndex":I
    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    .line 497
    .local v11, "durationUs":J
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v13, v1

    .line 500
    .local v13, "tracks":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;>;"
    const/4 v1, 0x0

    .line 501
    .local v1, "udtaMetaMetadata":Lcom/google/android/exoplayer2/metadata/Metadata;
    const/4 v2, 0x0

    .line 502
    .local v2, "smtaMetadata":Lcom/google/android/exoplayer2/metadata/Metadata;
    const/4 v3, 0x0

    .line 503
    .local v3, "xyzMetadata":Lcom/google/android/exoplayer2/metadata/Metadata;
    iget v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->fileType:I

    const/4 v15, 0x1

    if-ne v4, v15, :cond_1a

    const/4 v7, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v7, 0x0

    .line 504
    .local v7, "isQuickTime":Z
    :goto_1b
    new-instance v4, Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;

    invoke-direct {v4}, Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;-><init>()V

    move-object v8, v4

    .line 505
    .local v8, "gaplessInfoHolder":Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;
    const v4, 0x75647461

    invoke-virtual {v9, v4}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v16

    .line 506
    .local v16, "udta":Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;
    if-eqz v16, :cond_3f

    .line 507
    invoke-static/range {v16 .. v16}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseUdta(Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;)Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$UdtaInfo;

    move-result-object v4

    .line 508
    .local v4, "udtaInfo":Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$UdtaInfo;
    iget-object v1, v4, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$UdtaInfo;->metaMetadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 509
    iget-object v2, v4, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$UdtaInfo;->smtaMetadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 510
    iget-object v3, v4, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$UdtaInfo;->xyzMetadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 511
    if-eqz v1, :cond_39

    .line 512
    invoke-virtual {v8, v1}, Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;->setFromMetadata(Lcom/google/android/exoplayer2/metadata/Metadata;)Z

    .line 515
    .end local v4    # "udtaInfo":Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$UdtaInfo;
    :cond_39
    move-object v5, v1

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    goto :goto_44

    .line 506
    :cond_3f
    move-object v5, v1

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    .line 515
    .end local v1    # "udtaMetaMetadata":Lcom/google/android/exoplayer2/metadata/Metadata;
    .end local v2    # "smtaMetadata":Lcom/google/android/exoplayer2/metadata/Metadata;
    .end local v3    # "xyzMetadata":Lcom/google/android/exoplayer2/metadata/Metadata;
    .local v5, "udtaMetaMetadata":Lcom/google/android/exoplayer2/metadata/Metadata;
    .local v17, "smtaMetadata":Lcom/google/android/exoplayer2/metadata/Metadata;
    .local v18, "xyzMetadata":Lcom/google/android/exoplayer2/metadata/Metadata;
    :goto_44
    const/4 v1, 0x0

    .line 516
    .local v1, "mdtaMetadata":Lcom/google/android/exoplayer2/metadata/Metadata;
    const v2, 0x6d657461

    invoke-virtual {v9, v2}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    move-result-object v19

    .line 517
    .local v19, "meta":Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;
    if-eqz v19, :cond_54

    .line 518
    invoke-static/range {v19 .. v19}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseMdtaFromMeta(Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object v1

    move-object v3, v1

    goto :goto_55

    .line 517
    :cond_54
    move-object v3, v1

    .line 521
    .end local v1    # "mdtaMetadata":Lcom/google/android/exoplayer2/metadata/Metadata;
    .local v3, "mdtaMetadata":Lcom/google/android/exoplayer2/metadata/Metadata;
    :goto_55
    nop

    .line 522
    const v1, 0x6d766864

    invoke-virtual {v9, v1}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    iget-object v1, v1, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-static {v1}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseMvhd(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$MvhdInfo;

    move-result-object v1

    iget-object v4, v1, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$MvhdInfo;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 524
    .local v4, "mvhdMetadata":Lcom/google/android/exoplayer2/metadata/Metadata;
    iget v1, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->flags:I

    and-int/2addr v1, v15

    if-eqz v1, :cond_72

    const/4 v6, 0x1

    goto :goto_73

    :cond_72
    const/4 v6, 0x0

    .line 525
    .local v6, "ignoreEditLists":Z
    :goto_73
    const-wide v20, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v22, 0x0

    new-instance v23, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$$ExternalSyntheticLambda1;

    invoke-direct/range {v23 .. v23}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$$ExternalSyntheticLambda1;-><init>()V

    .line 526
    move-object/from16 v1, p1

    move-object v2, v8

    move-object/from16 v25, v3

    move-object/from16 v24, v4

    .end local v3    # "mdtaMetadata":Lcom/google/android/exoplayer2/metadata/Metadata;
    .end local v4    # "mvhdMetadata":Lcom/google/android/exoplayer2/metadata/Metadata;
    .local v24, "mvhdMetadata":Lcom/google/android/exoplayer2/metadata/Metadata;
    .local v25, "mdtaMetadata":Lcom/google/android/exoplayer2/metadata/Metadata;
    move-wide/from16 v3, v20

    move-object/from16 v26, v5

    .end local v5    # "udtaMetaMetadata":Lcom/google/android/exoplayer2/metadata/Metadata;
    .local v26, "udtaMetaMetadata":Lcom/google/android/exoplayer2/metadata/Metadata;
    move-object/from16 v5, v22

    move-object v14, v8

    .end local v8    # "gaplessInfoHolder":Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;
    .local v14, "gaplessInfoHolder":Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;
    move-object/from16 v8, v23

    invoke-static/range {v1 .. v8}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseTraks(Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;JLcom/google/android/exoplayer2/drm/DrmInitData;ZZLcom/google/common/base/Function;)Ljava/util/List;

    move-result-object v1

    .line 535
    .local v1, "trackSampleTables":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 536
    .local v2, "trackCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_98
    if-ge v3, v2, :cond_177

    .line 537
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    .line 538
    .local v4, "trackSampleTable":Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;
    iget v5, v4, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->sampleCount:I

    if-nez v5, :cond_b2

    .line 539
    move-object/from16 v29, v1

    move/from16 v21, v2

    move/from16 v23, v6

    move/from16 v27, v7

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    goto/16 :goto_166

    .line 541
    :cond_b2
    iget-object v5, v4, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->track:Lcom/google/android/exoplayer2/extractor/mp4/Track;

    .line 543
    .local v5, "track":Lcom/google/android/exoplayer2/extractor/mp4/Track;
    move-object v8, v1

    move/from16 v21, v2

    .end local v1    # "trackSampleTables":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;>;"
    .end local v2    # "trackCount":I
    .local v8, "trackSampleTables":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;>;"
    .local v21, "trackCount":I
    iget-wide v1, v5, Lcom/google/android/exoplayer2/extractor/mp4/Track;->durationUs:J

    const-wide v22, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v27, v1, v22

    if-eqz v27, :cond_c5

    iget-wide v1, v5, Lcom/google/android/exoplayer2/extractor/mp4/Track;->durationUs:J

    goto :goto_c7

    :cond_c5
    iget-wide v1, v4, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->durationUs:J

    .line 544
    .local v1, "trackDurationUs":J
    :goto_c7
    invoke-static {v11, v12, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    .line 545
    new-instance v15, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;

    move/from16 v23, v6

    .end local v6    # "ignoreEditLists":Z
    .local v23, "ignoreEditLists":Z
    iget-object v6, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    move/from16 v27, v7

    .end local v7    # "isQuickTime":Z
    .local v27, "isQuickTime":Z
    iget v7, v5, Lcom/google/android/exoplayer2/extractor/mp4/Track;->type:I

    .line 546
    invoke-interface {v6, v3, v7}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->track(II)Lcom/google/android/exoplayer2/extractor/TrackOutput;

    move-result-object v6

    invoke-direct {v15, v5, v4, v6}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;-><init>(Lcom/google/android/exoplayer2/extractor/mp4/Track;Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;Lcom/google/android/exoplayer2/extractor/TrackOutput;)V

    move-object v6, v15

    .line 549
    .local v6, "mp4Track":Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;
    iget-object v7, v5, Lcom/google/android/exoplayer2/extractor/mp4/Track;->format:Lcom/google/android/exoplayer2/Format;

    iget-object v7, v7, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    const-string v15, "audio/true-hd"

    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_ee

    .line 551
    iget v7, v4, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->maximumSize:I

    mul-int/lit8 v7, v7, 0x10

    .local v7, "maxInputSize":I
    goto :goto_f2

    .line 555
    .end local v7    # "maxInputSize":I
    :cond_ee
    iget v7, v4, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->maximumSize:I

    add-int/lit8 v7, v7, 0x1e

    .line 558
    .restart local v7    # "maxInputSize":I
    :goto_f2
    iget-object v15, v5, Lcom/google/android/exoplayer2/extractor/mp4/Track;->format:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {v15}, Lcom/google/android/exoplayer2/Format;->buildUpon()Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v15

    .line 559
    .local v15, "formatBuilder":Lcom/google/android/exoplayer2/Format$Builder;
    invoke-virtual {v15, v7}, Lcom/google/android/exoplayer2/Format$Builder;->setMaxInputSize(I)Lcom/google/android/exoplayer2/Format$Builder;

    .line 560
    move/from16 v28, v7

    .end local v7    # "maxInputSize":I
    .local v28, "maxInputSize":I
    iget v7, v5, Lcom/google/android/exoplayer2/extractor/mp4/Track;->type:I

    move-object/from16 v29, v8

    .end local v8    # "trackSampleTables":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;>;"
    .local v29, "trackSampleTables":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;>;"
    const/4 v8, 0x2

    if-ne v7, v8, :cond_11c

    const-wide/16 v30, 0x0

    cmp-long v7, v1, v30

    if-lez v7, :cond_11c

    iget v7, v4, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->sampleCount:I

    const/4 v8, 0x1

    if-le v7, v8, :cond_11c

    .line 563
    iget v7, v4, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->sampleCount:I

    int-to-float v7, v7

    long-to-float v8, v1

    const v31, 0x49742400    # 1000000.0f

    div-float v8, v8, v31

    div-float/2addr v7, v8

    .line 564
    .local v7, "frameRate":F
    invoke-virtual {v15, v7}, Lcom/google/android/exoplayer2/Format$Builder;->setFrameRate(F)Lcom/google/android/exoplayer2/Format$Builder;

    .line 567
    .end local v7    # "frameRate":F
    :cond_11c
    iget v7, v5, Lcom/google/android/exoplayer2/extractor/mp4/Track;->type:I

    invoke-static {v7, v14, v15}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->setFormatGaplessInfo(ILcom/google/android/exoplayer2/extractor/GaplessInfoHolder;Lcom/google/android/exoplayer2/Format$Builder;)V

    .line 568
    iget v7, v5, Lcom/google/android/exoplayer2/extractor/mp4/Track;->type:I

    const/4 v8, 0x4

    new-array v8, v8, [Lcom/google/android/exoplayer2/metadata/Metadata;

    const/16 v20, 0x0

    aput-object v17, v8, v20

    .line 574
    move-wide/from16 v31, v1

    .end local v1    # "trackDurationUs":J
    .local v31, "trackDurationUs":J
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->slowMotionMetadataEntries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_136

    const/4 v1, 0x0

    goto :goto_13d

    :cond_136
    new-instance v1, Lcom/google/android/exoplayer2/metadata/Metadata;

    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->slowMotionMetadataEntries:Ljava/util/List;

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/metadata/Metadata;-><init>(Ljava/util/List;)V

    :goto_13d
    const/4 v2, 0x1

    aput-object v1, v8, v2

    const/4 v1, 0x2

    aput-object v18, v8, v1

    const/16 v22, 0x3

    aput-object v24, v8, v22

    .line 568
    move-object/from16 v1, v25

    move-object/from16 v2, v26

    .end local v25    # "mdtaMetadata":Lcom/google/android/exoplayer2/metadata/Metadata;
    .end local v26    # "udtaMetaMetadata":Lcom/google/android/exoplayer2/metadata/Metadata;
    .local v1, "mdtaMetadata":Lcom/google/android/exoplayer2/metadata/Metadata;
    .local v2, "udtaMetaMetadata":Lcom/google/android/exoplayer2/metadata/Metadata;
    invoke-static {v7, v2, v1, v15, v8}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->setFormatMetadata(ILcom/google/android/exoplayer2/metadata/Metadata;Lcom/google/android/exoplayer2/metadata/Metadata;Lcom/google/android/exoplayer2/Format$Builder;[Lcom/google/android/exoplayer2/metadata/Metadata;)V

    .line 577
    iget-object v7, v6, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-virtual {v15}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->format(Lcom/google/android/exoplayer2/Format;)V

    .line 579
    iget v7, v5, Lcom/google/android/exoplayer2/extractor/mp4/Track;->type:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_163

    const/4 v7, -0x1

    if-ne v10, v7, :cond_163

    .line 580
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v10

    .line 582
    :cond_163
    invoke-interface {v13, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 536
    .end local v4    # "trackSampleTable":Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;
    .end local v5    # "track":Lcom/google/android/exoplayer2/extractor/mp4/Track;
    .end local v6    # "mp4Track":Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;
    .end local v15    # "formatBuilder":Lcom/google/android/exoplayer2/Format$Builder;
    .end local v28    # "maxInputSize":I
    .end local v31    # "trackDurationUs":J
    :goto_166
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v25, v1

    move-object/from16 v26, v2

    move/from16 v2, v21

    move/from16 v6, v23

    move/from16 v7, v27

    move-object/from16 v1, v29

    const/4 v15, 0x1

    goto/16 :goto_98

    .line 584
    .end local v3    # "i":I
    .end local v21    # "trackCount":I
    .end local v23    # "ignoreEditLists":Z
    .end local v27    # "isQuickTime":Z
    .end local v29    # "trackSampleTables":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;>;"
    .local v1, "trackSampleTables":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;>;"
    .local v2, "trackCount":I
    .local v6, "ignoreEditLists":Z
    .local v7, "isQuickTime":Z
    .restart local v25    # "mdtaMetadata":Lcom/google/android/exoplayer2/metadata/Metadata;
    .restart local v26    # "udtaMetaMetadata":Lcom/google/android/exoplayer2/metadata/Metadata;
    :cond_177
    iput v10, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->firstVideoTrackIndex:I

    .line 585
    iput-wide v11, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->durationUs:J

    .line 586
    const/4 v3, 0x0

    new-array v3, v3, [Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;

    invoke-interface {v13, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;

    iput-object v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->tracks:[Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;

    .line 587
    invoke-static {v3}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->calculateAccumulatedSampleSizes([Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;)[[J

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->accumulatedSampleSizes:[[J

    .line 589
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    invoke-interface {v3}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->endTracks()V

    .line 590
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    invoke-interface {v3, v0}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->seekMap(Lcom/google/android/exoplayer2/extractor/SeekMap;)V

    .line 591
    return-void
.end method

.method private processUnparsedAtom(J)V
    .registers 16
    .param p1, "atomStartPosition"    # J

    .line 797
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomType:I

    const v1, 0x6d707664

    if-ne v0, v1, :cond_21

    .line 800
    new-instance v0, Lcom/google/android/exoplayer2/metadata/mp4/MotionPhotoMetadata;

    const-wide/16 v3, 0x0

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    int-to-long v5, v1

    add-long v9, p1, v5

    iget-wide v5, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomSize:J

    int-to-long v1, v1

    sub-long v11, v5, v1

    move-object v2, v0

    move-wide v5, p1

    invoke-direct/range {v2 .. v12}, Lcom/google/android/exoplayer2/metadata/mp4/MotionPhotoMetadata;-><init>(JJJJJ)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->motionPhotoMetadata:Lcom/google/android/exoplayer2/metadata/mp4/MotionPhotoMetadata;

    .line 808
    :cond_21
    return-void
.end method

.method private readAtomHeader(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z
    .registers 12
    .param p1, "input"    # Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 368
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    const/16 v1, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_2f

    .line 370
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeader:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v0

    invoke-interface {p1, v0, v3, v1, v2}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BIIZ)Z

    move-result v0

    if-nez v0, :cond_18

    .line 371
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->processEndOfStreamReadingAtomHeader()V

    .line 372
    return v3

    .line 374
    :cond_18
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    .line 375
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeader:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 376
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeader:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomSize:J

    .line 377
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeader:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomType:I

    .line 380
    :cond_2f
    iget-wide v4, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomSize:J

    const-wide/16 v6, 0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_50

    .line 382
    const/16 v0, 0x8

    .line 383
    .local v0, "headerBytesRemaining":I
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeader:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v4

    invoke-interface {p1, v4, v1, v0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    .line 384
    iget v4, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    add-int/2addr v4, v0

    iput v4, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    .line 385
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeader:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomSize:J

    .end local v0    # "headerBytesRemaining":I
    goto :goto_7d

    .line 386
    :cond_50
    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-nez v0, :cond_7d

    .line 389
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getLength()J

    move-result-wide v4

    .line 390
    .local v4, "endPosition":J
    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_6c

    .line 391
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    .line 392
    .local v0, "containerAtom":Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;
    if-eqz v0, :cond_6c

    .line 393
    iget-wide v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->endPosition:J

    .line 396
    .end local v0    # "containerAtom":Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;
    :cond_6c
    cmp-long v0, v4, v6

    if-eqz v0, :cond_7e

    .line 397
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v6

    sub-long v6, v4, v6

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    int-to-long v8, v0

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomSize:J

    goto :goto_7e

    .line 386
    .end local v4    # "endPosition":J
    :cond_7d
    :goto_7d
    nop

    .line 401
    :cond_7e
    :goto_7e
    iget-wide v4, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomSize:J

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    int-to-long v6, v0

    cmp-long v0, v4, v6

    if-ltz v0, :cond_112

    .line 406
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomType:I

    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->shouldParseContainerAtom(I)Z

    move-result v0

    if-eqz v0, :cond_c6

    .line 407
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v0

    iget-wide v3, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomSize:J

    add-long/2addr v0, v3

    iget v5, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    int-to-long v6, v5

    sub-long/2addr v0, v6

    .line 408
    .local v0, "endPosition":J
    int-to-long v5, v5

    cmp-long v7, v3, v5

    if-eqz v7, :cond_a9

    iget v3, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomType:I

    const v4, 0x6d657461

    if-ne v3, v4, :cond_a9

    .line 409
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->maybeSkipRemainingMetaAtomHeaderBytes(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)V

    .line 411
    :cond_a9
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    new-instance v4, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    iget v5, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomType:I

    invoke-direct {v4, v5, v0, v1}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;-><init>(IJ)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 412
    iget-wide v3, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomSize:J

    iget v5, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    int-to-long v5, v5

    cmp-long v7, v3, v5

    if-nez v7, :cond_c2

    .line 413
    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->processAtomEnded(J)V

    goto :goto_c5

    .line 416
    :cond_c2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->enterReadingAtomHeaderState()V

    .line 418
    .end local v0    # "endPosition":J
    :goto_c5
    goto :goto_111

    :cond_c6
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomType:I

    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->shouldParseLeafAtom(I)Z

    move-result v0

    if-eqz v0, :cond_101

    .line 421
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    if-ne v0, v1, :cond_d4

    const/4 v0, 0x1

    goto :goto_d5

    :cond_d4
    const/4 v0, 0x0

    :goto_d5
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 422
    iget-wide v4, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomSize:J

    const-wide/32 v6, 0x7fffffff

    cmp-long v0, v4, v6

    if-gtz v0, :cond_e3

    const/4 v0, 0x1

    goto :goto_e4

    :cond_e3
    const/4 v0, 0x0

    :goto_e4
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 423
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-wide v4, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomSize:J

    long-to-int v5, v4

    invoke-direct {v0, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    .line 424
    .local v0, "atomData":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeader:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v4

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v5

    invoke-static {v4, v3, v5, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 425
    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 426
    iput v2, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->parserState:I

    .line 427
    .end local v0    # "atomData":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    goto :goto_111

    .line 428
    :cond_101
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v0

    iget v3, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    int-to-long v3, v3

    sub-long/2addr v0, v3

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->processUnparsedAtom(J)V

    .line 429
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 430
    iput v2, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->parserState:I

    .line 433
    :goto_111
    return v2

    .line 402
    :cond_112
    const-string v0, "Atom size less than header length (unsupported)."

    invoke-static {v0}, Lcom/google/android/exoplayer2/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v0

    throw v0
.end method

.method private readAtomPayload(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;)Z
    .registers 12
    .param p1, "input"    # Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    .param p2, "positionHolder"    # Lcom/google/android/exoplayer2/extractor/PositionHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 443
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomSize:J

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    .line 444
    .local v0, "atomPayloadSize":J
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    add-long/2addr v2, v0

    .line 445
    .local v2, "atomEndPosition":J
    const/4 v4, 0x0

    .line 446
    .local v4, "seekRequired":Z
    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 447
    .local v5, "atomData":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    if-eqz v5, :cond_43

    .line 448
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v6

    iget v7, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    long-to-int v8, v0

    invoke-interface {p1, v6, v7, v8}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    .line 449
    iget v6, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomType:I

    const v7, 0x66747970

    if-ne v6, v7, :cond_28

    .line 450
    invoke-static {v5}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->processFtypAtom(Lcom/google/android/exoplayer2/util/ParsableByteArray;)I

    move-result v6

    iput v6, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->fileType:I

    goto :goto_57

    .line 451
    :cond_28
    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v6}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_57

    .line 452
    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v6}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    new-instance v7, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    iget v8, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomType:I

    invoke-direct {v7, v8, v5}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;-><init>(ILcom/google/android/exoplayer2/util/ParsableByteArray;)V

    invoke-virtual {v6, v7}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->add(Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;)V

    goto :goto_57

    .line 456
    :cond_43
    const-wide/32 v6, 0x40000

    cmp-long v8, v0, v6

    if-gez v8, :cond_4f

    .line 457
    long-to-int v6, v0

    invoke-interface {p1, v6}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    goto :goto_57

    .line 459
    :cond_4f
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v6

    add-long/2addr v6, v0

    iput-wide v6, p2, Lcom/google/android/exoplayer2/extractor/PositionHolder;->position:J

    .line 460
    const/4 v4, 0x1

    .line 463
    :cond_57
    :goto_57
    invoke-direct {p0, v2, v3}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->processAtomEnded(J)V

    .line 464
    if-eqz v4, :cond_63

    iget v6, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->parserState:I

    const/4 v7, 0x2

    if-eq v6, v7, :cond_63

    const/4 v6, 0x1

    goto :goto_64

    :cond_63
    const/4 v6, 0x0

    :goto_64
    return v6
.end method

.method private readSample(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;)I
    .registers 30
    .param p1, "input"    # Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    .param p2, "positionHolder"    # Lcom/google/android/exoplayer2/extractor/PositionHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 609
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    .line 610
    .local v2, "inputPosition":J
    iget v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleTrackIndex:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_16

    .line 611
    invoke-direct {v0, v2, v3}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->getTrackIndexOfNextReadSample(J)I

    move-result v4

    iput v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleTrackIndex:I

    .line 612
    if-ne v4, v5, :cond_16

    .line 613
    return v5

    .line 616
    :cond_16
    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->tracks:[Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;

    iget v6, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleTrackIndex:I

    aget-object v4, v4, v6

    .line 617
    .local v4, "track":Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;
    iget-object v14, v4, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    .line 618
    .local v14, "trackOutput":Lcom/google/android/exoplayer2/extractor/TrackOutput;
    iget v15, v4, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->sampleIndex:I

    .line 619
    .local v15, "sampleIndex":I
    iget-object v6, v4, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    iget-object v6, v6, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->offsets:[J

    aget-wide v12, v6, v15

    .line 620
    .local v12, "position":J
    iget-object v6, v4, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    iget-object v6, v6, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->sizes:[I

    aget v6, v6, v15

    .line 621
    .local v6, "sampleSize":I
    iget-object v11, v4, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->trueHdSampleRechunker:Lcom/google/android/exoplayer2/extractor/TrueHdSampleRechunker;

    .line 622
    .local v11, "trueHdSampleRechunker":Lcom/google/android/exoplayer2/extractor/TrueHdSampleRechunker;
    sub-long v7, v12, v2

    iget v9, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesRead:I

    int-to-long v9, v9

    add-long/2addr v7, v9

    .line 623
    .local v7, "skipAmount":J
    const-wide/16 v9, 0x0

    const/4 v5, 0x1

    cmp-long v16, v7, v9

    if-ltz v16, :cond_175

    const-wide/32 v9, 0x40000

    cmp-long v16, v7, v9

    if-ltz v16, :cond_49

    move-wide/from16 v18, v2

    move-object v5, v11

    move-wide/from16 v25, v12

    goto/16 :goto_17a

    .line 627
    :cond_49
    iget-object v9, v4, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->track:Lcom/google/android/exoplayer2/extractor/mp4/Track;

    iget v9, v9, Lcom/google/android/exoplayer2/extractor/mp4/Track;->sampleTransformation:I

    if-ne v9, v5, :cond_56

    .line 630
    const-wide/16 v9, 0x8

    add-long/2addr v7, v9

    .line 631
    add-int/lit8 v6, v6, -0x8

    move-wide v8, v7

    goto :goto_57

    .line 627
    :cond_56
    move-wide v8, v7

    .line 633
    .end local v7    # "skipAmount":J
    .local v8, "skipAmount":J
    :goto_57
    long-to-int v7, v8

    invoke-interface {v1, v7}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    .line 634
    iget-object v7, v4, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->track:Lcom/google/android/exoplayer2/extractor/mp4/Track;

    iget v7, v7, Lcom/google/android/exoplayer2/extractor/mp4/Track;->nalUnitLengthFieldLength:I

    move-wide/from16 v16, v12

    .end local v12    # "position":J
    .local v16, "position":J
    const/4 v13, 0x0

    if-eqz v7, :cond_db

    .line 637
    iget-object v7, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->nalLength:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v7

    .line 638
    .local v7, "nalLengthData":[B
    aput-byte v13, v7, v13

    .line 639
    aput-byte v13, v7, v5

    .line 640
    const/4 v12, 0x2

    aput-byte v13, v7, v12

    .line 641
    iget-object v12, v4, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->track:Lcom/google/android/exoplayer2/extractor/mp4/Track;

    iget v12, v12, Lcom/google/android/exoplayer2/extractor/mp4/Track;->nalUnitLengthFieldLength:I

    .line 642
    .local v12, "nalUnitLengthFieldLength":I
    iget-object v5, v4, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->track:Lcom/google/android/exoplayer2/extractor/mp4/Track;

    iget v5, v5, Lcom/google/android/exoplayer2/extractor/mp4/Track;->nalUnitLengthFieldLength:I

    const/4 v10, 0x4

    rsub-int/lit8 v5, v5, 0x4

    .line 646
    .local v5, "nalUnitLengthFieldLengthDiff":I
    :goto_7c
    iget v10, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    if-ge v10, v6, :cond_d7

    .line 647
    iget v10, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleCurrentNalBytesRemaining:I

    if-nez v10, :cond_bc

    .line 649
    invoke-interface {v1, v7, v5, v12}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    .line 650
    iget v10, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesRead:I

    add-int/2addr v10, v12

    iput v10, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesRead:I

    .line 651
    iget-object v10, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->nalLength:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v10, v13}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 652
    iget-object v10, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->nalLength:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v10}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v10

    .line 653
    .local v10, "nalLengthInt":I
    if-ltz v10, :cond_b2

    .line 657
    iput v10, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleCurrentNalBytesRemaining:I

    .line 659
    move-wide/from16 v18, v2

    .end local v2    # "inputPosition":J
    .local v18, "inputPosition":J
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->nalStartCode:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v2, v13}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 660
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->nalStartCode:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/4 v3, 0x4

    invoke-interface {v14, v2, v3}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V

    .line 661
    iget v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    add-int/2addr v2, v3

    iput v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    .line 662
    add-int/2addr v6, v5

    .line 663
    .end local v10    # "nalLengthInt":I
    move-wide/from16 v2, v18

    const/4 v10, 0x4

    goto :goto_7c

    .line 654
    .end local v18    # "inputPosition":J
    .restart local v2    # "inputPosition":J
    .restart local v10    # "nalLengthInt":I
    :cond_b2
    move-wide/from16 v18, v2

    .end local v2    # "inputPosition":J
    .restart local v18    # "inputPosition":J
    const-string v2, "Invalid NAL length"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v2

    throw v2

    .line 665
    .end local v10    # "nalLengthInt":I
    .end local v18    # "inputPosition":J
    .restart local v2    # "inputPosition":J
    :cond_bc
    move-wide/from16 v18, v2

    const/4 v2, 0x0

    const/4 v3, 0x4

    .end local v2    # "inputPosition":J
    .restart local v18    # "inputPosition":J
    invoke-interface {v14, v1, v10, v13}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/upstream/DataReader;IZ)I

    move-result v10

    .line 666
    .local v10, "writtenBytes":I
    iget v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesRead:I

    add-int/2addr v2, v10

    iput v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesRead:I

    .line 667
    iget v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    add-int/2addr v2, v10

    iput v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    .line 668
    iget v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleCurrentNalBytesRemaining:I

    sub-int/2addr v2, v10

    iput v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleCurrentNalBytesRemaining:I

    .line 669
    .end local v10    # "writtenBytes":I
    move-wide/from16 v2, v18

    const/4 v10, 0x4

    goto :goto_7c

    .line 646
    .end local v18    # "inputPosition":J
    .restart local v2    # "inputPosition":J
    :cond_d7
    move-wide/from16 v18, v2

    .line 671
    .end local v2    # "inputPosition":J
    .end local v5    # "nalUnitLengthFieldLengthDiff":I
    .end local v7    # "nalLengthData":[B
    .end local v12    # "nalUnitLengthFieldLength":I
    .restart local v18    # "inputPosition":J
    move v2, v6

    goto :goto_122

    .line 672
    .end local v18    # "inputPosition":J
    .restart local v2    # "inputPosition":J
    :cond_db
    move-wide/from16 v18, v2

    .end local v2    # "inputPosition":J
    .restart local v18    # "inputPosition":J
    iget-object v2, v4, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->track:Lcom/google/android/exoplayer2/extractor/mp4/Track;

    iget-object v2, v2, Lcom/google/android/exoplayer2/extractor/mp4/Track;->format:Lcom/google/android/exoplayer2/Format;

    iget-object v2, v2, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    const-string v3, "audio/ac4"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_102

    .line 673
    iget v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    if-nez v2, :cond_ff

    .line 674
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-static {v6, v2}, Lcom/google/android/exoplayer2/audio/Ac4Util;->getAc4SampleHeader(ILcom/google/android/exoplayer2/util/ParsableByteArray;)V

    .line 675
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/4 v3, 0x7

    invoke-interface {v14, v2, v3}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V

    .line 676
    iget v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    add-int/2addr v2, v3

    iput v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    .line 678
    :cond_ff
    add-int/lit8 v6, v6, 0x7

    goto :goto_107

    .line 679
    :cond_102
    if-eqz v11, :cond_107

    .line 680
    invoke-virtual {v11, v1}, Lcom/google/android/exoplayer2/extractor/TrueHdSampleRechunker;->startSample(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)V

    .line 683
    :cond_107
    :goto_107
    iget v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    if-ge v2, v6, :cond_121

    .line 684
    sub-int v2, v6, v2

    invoke-interface {v14, v1, v2, v13}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/upstream/DataReader;IZ)I

    move-result v2

    .line 685
    .local v2, "writtenBytes":I
    iget v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesRead:I

    add-int/2addr v3, v2

    iput v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesRead:I

    .line 686
    iget v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    add-int/2addr v3, v2

    iput v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    .line 687
    iget v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleCurrentNalBytesRemaining:I

    sub-int/2addr v3, v2

    iput v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleCurrentNalBytesRemaining:I

    .line 688
    .end local v2    # "writtenBytes":I
    goto :goto_107

    .line 683
    :cond_121
    move v2, v6

    .line 691
    .end local v6    # "sampleSize":I
    .local v2, "sampleSize":I
    :goto_122
    iget-object v3, v4, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    iget-object v3, v3, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->timestampsUs:[J

    aget-wide v20, v3, v15

    .line 692
    .local v20, "timeUs":J
    iget-object v3, v4, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    iget-object v3, v3, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->flags:[I

    aget v3, v3, v15

    .line 693
    .local v3, "flags":I
    if-eqz v11, :cond_155

    .line 694
    const/4 v12, 0x0

    const/4 v5, 0x0

    move-object v6, v11

    move-object v7, v14

    move-wide/from16 v22, v8

    .end local v8    # "skipAmount":J
    .local v22, "skipAmount":J
    move-wide/from16 v8, v20

    move v10, v3

    move-object/from16 v24, v11

    .end local v11    # "trueHdSampleRechunker":Lcom/google/android/exoplayer2/extractor/TrueHdSampleRechunker;
    .local v24, "trueHdSampleRechunker":Lcom/google/android/exoplayer2/extractor/TrueHdSampleRechunker;
    move v11, v2

    move-wide/from16 v25, v16

    .end local v16    # "position":J
    .local v25, "position":J
    const/4 v1, 0x0

    move-object v13, v5

    invoke-virtual/range {v6 .. v13}, Lcom/google/android/exoplayer2/extractor/TrueHdSampleRechunker;->sampleMetadata(Lcom/google/android/exoplayer2/extractor/TrackOutput;JIIILcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;)V

    .line 696
    add-int/lit8 v5, v15, 0x1

    iget-object v6, v4, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    iget v6, v6, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->sampleCount:I

    if-ne v5, v6, :cond_152

    .line 697
    move-object/from16 v5, v24

    const/4 v6, 0x0

    .end local v24    # "trueHdSampleRechunker":Lcom/google/android/exoplayer2/extractor/TrueHdSampleRechunker;
    .local v5, "trueHdSampleRechunker":Lcom/google/android/exoplayer2/extractor/TrueHdSampleRechunker;
    invoke-virtual {v5, v14, v6}, Lcom/google/android/exoplayer2/extractor/TrueHdSampleRechunker;->outputPendingSampleMetadata(Lcom/google/android/exoplayer2/extractor/TrackOutput;Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;)V

    goto :goto_165

    .line 696
    .end local v5    # "trueHdSampleRechunker":Lcom/google/android/exoplayer2/extractor/TrueHdSampleRechunker;
    .restart local v24    # "trueHdSampleRechunker":Lcom/google/android/exoplayer2/extractor/TrueHdSampleRechunker;
    :cond_152
    move-object/from16 v5, v24

    .end local v24    # "trueHdSampleRechunker":Lcom/google/android/exoplayer2/extractor/TrueHdSampleRechunker;
    .restart local v5    # "trueHdSampleRechunker":Lcom/google/android/exoplayer2/extractor/TrueHdSampleRechunker;
    goto :goto_165

    .line 700
    .end local v5    # "trueHdSampleRechunker":Lcom/google/android/exoplayer2/extractor/TrueHdSampleRechunker;
    .end local v22    # "skipAmount":J
    .end local v25    # "position":J
    .restart local v8    # "skipAmount":J
    .restart local v11    # "trueHdSampleRechunker":Lcom/google/android/exoplayer2/extractor/TrueHdSampleRechunker;
    .restart local v16    # "position":J
    :cond_155
    move-wide/from16 v22, v8

    move-object v5, v11

    move-wide/from16 v25, v16

    const/4 v1, 0x0

    .end local v8    # "skipAmount":J
    .end local v11    # "trueHdSampleRechunker":Lcom/google/android/exoplayer2/extractor/TrueHdSampleRechunker;
    .end local v16    # "position":J
    .restart local v5    # "trueHdSampleRechunker":Lcom/google/android/exoplayer2/extractor/TrueHdSampleRechunker;
    .restart local v22    # "skipAmount":J
    .restart local v25    # "position":J
    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v6, v14

    move-wide/from16 v7, v20

    move v9, v3

    move v10, v2

    invoke-interface/range {v6 .. v12}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleMetadata(JIIILcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;)V

    .line 704
    :goto_165
    iget v6, v4, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->sampleIndex:I

    const/4 v7, 0x1

    add-int/2addr v6, v7

    iput v6, v4, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->sampleIndex:I

    .line 705
    const/4 v6, -0x1

    iput v6, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleTrackIndex:I

    .line 706
    iput v1, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesRead:I

    .line 707
    iput v1, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    .line 708
    iput v1, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleCurrentNalBytesRemaining:I

    .line 709
    return v1

    .line 623
    .end local v3    # "flags":I
    .end local v5    # "trueHdSampleRechunker":Lcom/google/android/exoplayer2/extractor/TrueHdSampleRechunker;
    .end local v18    # "inputPosition":J
    .end local v20    # "timeUs":J
    .end local v22    # "skipAmount":J
    .end local v25    # "position":J
    .local v2, "inputPosition":J
    .restart local v6    # "sampleSize":I
    .local v7, "skipAmount":J
    .restart local v11    # "trueHdSampleRechunker":Lcom/google/android/exoplayer2/extractor/TrueHdSampleRechunker;
    .local v12, "position":J
    :cond_175
    move-wide/from16 v18, v2

    move-object v5, v11

    move-wide/from16 v25, v12

    .line 624
    .end local v2    # "inputPosition":J
    .end local v11    # "trueHdSampleRechunker":Lcom/google/android/exoplayer2/extractor/TrueHdSampleRechunker;
    .end local v12    # "position":J
    .restart local v5    # "trueHdSampleRechunker":Lcom/google/android/exoplayer2/extractor/TrueHdSampleRechunker;
    .restart local v18    # "inputPosition":J
    .restart local v25    # "position":J
    :goto_17a
    move-object/from16 v1, p2

    move-wide/from16 v2, v25

    .end local v25    # "position":J
    .local v2, "position":J
    iput-wide v2, v1, Lcom/google/android/exoplayer2/extractor/PositionHolder;->position:J

    .line 625
    const/4 v9, 0x1

    return v9
.end method

.method private readSefData(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;)I
    .registers 9
    .param p1, "input"    # Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    .param p2, "seekPosition"    # Lcom/google/android/exoplayer2/extractor/PositionHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 469
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sefReader:Lcom/google/android/exoplayer2/extractor/mp4/SefReader;

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->slowMotionMetadataEntries:Ljava/util/List;

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/exoplayer2/extractor/mp4/SefReader;->read(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;Ljava/util/List;)I

    move-result v0

    .line 470
    .local v0, "result":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_16

    iget-wide v1, p2, Lcom/google/android/exoplayer2/extractor/PositionHolder;->position:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_16

    .line 471
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->enterReadingAtomHeaderState()V

    .line 473
    :cond_16
    return v0
.end method

.method private static shouldParseContainerAtom(I)Z
    .registers 2
    .param p0, "atom"    # I

    .line 946
    const v0, 0x6d6f6f76

    if-eq p0, v0, :cond_26

    const v0, 0x7472616b

    if-eq p0, v0, :cond_26

    const v0, 0x6d646961

    if-eq p0, v0, :cond_26

    const v0, 0x6d696e66

    if-eq p0, v0, :cond_26

    const v0, 0x7374626c

    if-eq p0, v0, :cond_26

    const v0, 0x65647473

    if-eq p0, v0, :cond_26

    const v0, 0x6d657461

    if-ne p0, v0, :cond_24

    goto :goto_26

    :cond_24
    const/4 v0, 0x0

    goto :goto_27

    :cond_26
    :goto_26
    const/4 v0, 0x1

    :goto_27
    return v0
.end method

.method private static shouldParseLeafAtom(I)Z
    .registers 2
    .param p0, "atom"    # I

    .line 924
    const v0, 0x6d646864

    if-eq p0, v0, :cond_5d

    const v0, 0x6d766864

    if-eq p0, v0, :cond_5d

    const v0, 0x68646c72    # 4.3148E24f

    if-eq p0, v0, :cond_5d

    const v0, 0x73747364

    if-eq p0, v0, :cond_5d

    const v0, 0x73747473

    if-eq p0, v0, :cond_5d

    const v0, 0x73747373

    if-eq p0, v0, :cond_5d

    const v0, 0x63747473

    if-eq p0, v0, :cond_5d

    const v0, 0x656c7374

    if-eq p0, v0, :cond_5d

    const v0, 0x73747363

    if-eq p0, v0, :cond_5d

    const v0, 0x7374737a

    if-eq p0, v0, :cond_5d

    const v0, 0x73747a32

    if-eq p0, v0, :cond_5d

    const v0, 0x7374636f

    if-eq p0, v0, :cond_5d

    const v0, 0x636f3634

    if-eq p0, v0, :cond_5d

    const v0, 0x746b6864

    if-eq p0, v0, :cond_5d

    const v0, 0x66747970

    if-eq p0, v0, :cond_5d

    const v0, 0x75647461

    if-eq p0, v0, :cond_5d

    const v0, 0x6b657973

    if-eq p0, v0, :cond_5d

    const v0, 0x696c7374

    if-ne p0, v0, :cond_5b

    goto :goto_5d

    :cond_5b
    const/4 v0, 0x0

    goto :goto_5e

    :cond_5d
    :goto_5d
    const/4 v0, 0x1

    :goto_5e
    return v0
.end method

.method private updateSampleIndex(Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;J)V
    .registers 7
    .param p1, "track"    # Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;
    .param p2, "timeUs"    # J

    .line 765
    iget-object v0, p1, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    .line 766
    .local v0, "sampleTable":Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;
    invoke-virtual {v0, p2, p3}, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->getIndexOfEarlierOrEqualSynchronizationSample(J)I

    move-result v1

    .line 767
    .local v1, "sampleIndex":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_d

    .line 769
    invoke-virtual {v0, p2, p3}, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->getIndexOfLaterOrEqualSynchronizationSample(J)I

    move-result v1

    .line 771
    :cond_d
    iput v1, p1, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->sampleIndex:I

    .line 772
    return-void
.end method


# virtual methods
.method public getDurationUs()J
    .registers 3

    .line 284
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->durationUs:J

    return-wide v0
.end method

.method public getSeekPoints(J)Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;
    .registers 4
    .param p1, "timeUs"    # J

    .line 289
    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->getSeekPoints(JI)Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;

    move-result-object v0

    return-object v0
.end method

.method public getSeekPoints(JI)Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;
    .registers 23
    .param p1, "timeUs"    # J
    .param p3, "trackId"    # I

    .line 305
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move/from16 v3, p3

    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->tracks:[Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;

    array-length v5, v4

    if-nez v5, :cond_13

    .line 306
    new-instance v4, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;

    sget-object v5, Lcom/google/android/exoplayer2/extractor/SeekPoint;->START:Lcom/google/android/exoplayer2/extractor/SeekPoint;

    invoke-direct {v4, v5}, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;-><init>(Lcom/google/android/exoplayer2/extractor/SeekPoint;)V

    return-object v4

    .line 311
    :cond_13
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    .line 312
    .local v5, "secondTimeUs":J
    const-wide/16 v7, -0x1

    .line 315
    .local v7, "secondOffset":J
    const/4 v9, -0x1

    if-eq v3, v9, :cond_1f

    move v10, v3

    goto :goto_21

    :cond_1f
    iget v10, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->firstVideoTrackIndex:I

    .line 317
    .local v10, "mainTrackIndex":I
    :goto_21
    if-eq v10, v9, :cond_5a

    .line 318
    aget-object v4, v4, v10

    iget-object v4, v4, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    .line 319
    .local v4, "sampleTable":Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;
    invoke-static {v4, v1, v2}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->getSynchronizationSampleIndex(Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;J)I

    move-result v11

    .line 320
    .local v11, "sampleIndex":I
    if-ne v11, v9, :cond_35

    .line 321
    new-instance v9, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;

    sget-object v12, Lcom/google/android/exoplayer2/extractor/SeekPoint;->START:Lcom/google/android/exoplayer2/extractor/SeekPoint;

    invoke-direct {v9, v12}, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;-><init>(Lcom/google/android/exoplayer2/extractor/SeekPoint;)V

    return-object v9

    .line 323
    :cond_35
    iget-object v12, v4, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->timestampsUs:[J

    aget-wide v13, v12, v11

    .line 324
    .local v13, "sampleTimeUs":J
    move-wide v15, v13

    .line 325
    .local v15, "firstTimeUs":J
    iget-object v12, v4, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->offsets:[J

    aget-wide v17, v12, v11

    .line 326
    .local v17, "firstOffset":J
    cmp-long v12, v13, v1

    if-gez v12, :cond_58

    iget v12, v4, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->sampleCount:I

    add-int/lit8 v12, v12, -0x1

    if-ge v11, v12, :cond_58

    .line 327
    invoke-virtual {v4, v1, v2}, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->getIndexOfLaterOrEqualSynchronizationSample(J)I

    move-result v12

    .line 328
    .local v12, "secondSampleIndex":I
    if-eq v12, v9, :cond_58

    if-eq v12, v11, :cond_58

    .line 329
    iget-object v9, v4, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->timestampsUs:[J

    aget-wide v5, v9, v12

    .line 330
    iget-object v9, v4, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->offsets:[J

    aget-wide v7, v9, v12

    .line 333
    .end local v4    # "sampleTable":Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;
    .end local v11    # "sampleIndex":I
    .end local v12    # "secondSampleIndex":I
    .end local v13    # "sampleTimeUs":J
    :cond_58
    move-wide v11, v15

    goto :goto_62

    .line 334
    .end local v15    # "firstTimeUs":J
    .end local v17    # "firstOffset":J
    :cond_5a
    move-wide/from16 v15, p1

    .line 335
    .restart local v15    # "firstTimeUs":J
    const-wide v17, 0x7fffffffffffffffL

    move-wide v11, v15

    .line 338
    .end local v15    # "firstTimeUs":J
    .local v11, "firstTimeUs":J
    .restart local v17    # "firstOffset":J
    :goto_62
    const/4 v4, -0x1

    if-ne v3, v4, :cond_89

    .line 340
    const/4 v4, 0x0

    move-wide/from16 v13, v17

    .end local v17    # "firstOffset":J
    .local v4, "i":I
    .local v13, "firstOffset":J
    :goto_68
    iget-object v9, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->tracks:[Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;

    array-length v15, v9

    if-ge v4, v15, :cond_8b

    .line 341
    iget v15, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->firstVideoTrackIndex:I

    if-eq v4, v15, :cond_86

    .line 342
    aget-object v9, v9, v4

    iget-object v9, v9, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    .line 343
    .local v9, "sampleTable":Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;
    invoke-static {v9, v11, v12, v13, v14}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->maybeAdjustSeekOffset(Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;JJ)J

    move-result-wide v13

    .line 344
    const-wide v15, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v17, v5, v15

    if-eqz v17, :cond_86

    .line 345
    invoke-static {v9, v5, v6, v7, v8}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->maybeAdjustSeekOffset(Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;JJ)J

    move-result-wide v7

    .line 340
    .end local v9    # "sampleTable":Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;
    :cond_86
    add-int/lit8 v4, v4, 0x1

    goto :goto_68

    .line 338
    .end local v4    # "i":I
    .end local v13    # "firstOffset":J
    .restart local v17    # "firstOffset":J
    :cond_89
    move-wide/from16 v13, v17

    .line 351
    .end local v17    # "firstOffset":J
    .restart local v13    # "firstOffset":J
    :cond_8b
    new-instance v4, Lcom/google/android/exoplayer2/extractor/SeekPoint;

    invoke-direct {v4, v11, v12, v13, v14}, Lcom/google/android/exoplayer2/extractor/SeekPoint;-><init>(JJ)V

    .line 352
    .local v4, "firstSeekPoint":Lcom/google/android/exoplayer2/extractor/SeekPoint;
    const-wide v15, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v9, v5, v15

    if-nez v9, :cond_9f

    .line 353
    new-instance v9, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;

    invoke-direct {v9, v4}, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;-><init>(Lcom/google/android/exoplayer2/extractor/SeekPoint;)V

    return-object v9

    .line 355
    :cond_9f
    new-instance v9, Lcom/google/android/exoplayer2/extractor/SeekPoint;

    invoke-direct {v9, v5, v6, v7, v8}, Lcom/google/android/exoplayer2/extractor/SeekPoint;-><init>(JJ)V

    .line 356
    .local v9, "secondSeekPoint":Lcom/google/android/exoplayer2/extractor/SeekPoint;
    new-instance v15, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;

    invoke-direct {v15, v4, v9}, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;-><init>(Lcom/google/android/exoplayer2/extractor/SeekPoint;Lcom/google/android/exoplayer2/extractor/SeekPoint;)V

    return-object v15
.end method

.method public init(Lcom/google/android/exoplayer2/extractor/ExtractorOutput;)V
    .registers 2
    .param p1, "output"    # Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    .line 216
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    .line 217
    return-void
.end method

.method public isSeekable()Z
    .registers 2

    .line 279
    const/4 v0, 0x1

    return v0
.end method

.method public read(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;)I
    .registers 4
    .param p1, "input"    # Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    .param p2, "seekPosition"    # Lcom/google/android/exoplayer2/extractor/PositionHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 254
    nop

    :cond_1
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->parserState:I

    packed-switch v0, :pswitch_data_26

    .line 270
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 268
    :pswitch_c
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->readSefData(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;)I

    move-result v0

    return v0

    .line 266
    :pswitch_11
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->readSample(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;)I

    move-result v0

    return v0

    .line 261
    :pswitch_16
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->readAtomPayload(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 262
    const/4 v0, 0x1

    return v0

    .line 256
    :pswitch_1e
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->readAtomHeader(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 257
    const/4 v0, -0x1

    return v0

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_1e
        :pswitch_16
        :pswitch_11
        :pswitch_c
    .end packed-switch
.end method

.method public release()V
    .registers 1

    .line 249
    return-void
.end method

.method public seek(JJ)V
    .registers 10
    .param p1, "position"    # J
    .param p3, "timeUs"    # J

    .line 221
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 222
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    .line 223
    const/4 v1, -0x1

    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleTrackIndex:I

    .line 224
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesRead:I

    .line 225
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    .line 226
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleCurrentNalBytesRemaining:I

    .line 227
    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-nez v3, :cond_2b

    .line 230
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->parserState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_20

    .line 231
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->enterReadingAtomHeaderState()V

    goto :goto_41

    .line 233
    :cond_20
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sefReader:Lcom/google/android/exoplayer2/extractor/mp4/SefReader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/mp4/SefReader;->reset()V

    .line 234
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->slowMotionMetadataEntries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_41

    .line 237
    :cond_2b
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->tracks:[Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;

    array-length v2, v1

    :goto_2e
    if-ge v0, v2, :cond_41

    aget-object v3, v1, v0

    .line 238
    .local v3, "track":Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;
    invoke-direct {p0, v3, p3, p4}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->updateSampleIndex(Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;J)V

    .line 239
    iget-object v4, v3, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->trueHdSampleRechunker:Lcom/google/android/exoplayer2/extractor/TrueHdSampleRechunker;

    if-eqz v4, :cond_3e

    .line 240
    iget-object v4, v3, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->trueHdSampleRechunker:Lcom/google/android/exoplayer2/extractor/TrueHdSampleRechunker;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/extractor/TrueHdSampleRechunker;->reset()V

    .line 237
    .end local v3    # "track":Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;
    :cond_3e
    add-int/lit8 v0, v0, 0x1

    goto :goto_2e

    .line 244
    :cond_41
    :goto_41
    return-void
.end method

.method public sniff(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z
    .registers 3
    .param p1, "input"    # Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 210
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/extractor/mp4/Sniffer;->sniffUnfragmented(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Z)Z

    move-result v0

    return v0
.end method
