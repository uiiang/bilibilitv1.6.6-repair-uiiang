.class public Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;
.super Ljava/lang/Object;
.source "FragmentedMp4Extractor.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/Extractor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;,
        Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;,
        Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$Flags;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final EMSG_FORMAT:Lcom/google/android/exoplayer2/Format;

.field private static final EXTRA_TRACKS_BASE_ID:I = 0x64

.field public static final FACTORY:Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;

.field public static final FLAG_ENABLE_EMSG_TRACK:I = 0x4

.field public static final FLAG_WORKAROUND_EVERY_VIDEO_FRAME_IS_SYNC_FRAME:I = 0x1

.field public static final FLAG_WORKAROUND_IGNORE_EDIT_LISTS:I = 0x10

.field public static final FLAG_WORKAROUND_IGNORE_TFDT_BOX:I = 0x2

.field private static final PIFF_SAMPLE_ENCRYPTION_BOX_EXTENDED_TYPE:[B

.field private static final SAMPLE_GROUP_TYPE_seig:I = 0x73656967

.field private static final STATE_READING_ATOM_HEADER:I = 0x0

.field private static final STATE_READING_ATOM_PAYLOAD:I = 0x1

.field private static final STATE_READING_ENCRYPTION_DATA:I = 0x2

.field private static final STATE_READING_SAMPLE_CONTINUE:I = 0x4

.field private static final STATE_READING_SAMPLE_START:I = 0x3

.field private static final TAG:Ljava/lang/String; = "FragmentedMp4Extractor"


# instance fields
.field private final additionalEmsgTrackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

.field private atomData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field private final atomHeader:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field private atomHeaderBytesRead:I

.field private atomSize:J

.field private atomType:I

.field private ceaTrackOutputs:[Lcom/google/android/exoplayer2/extractor/TrackOutput;

.field private final closedCaptionFormats:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/Format;",
            ">;"
        }
    .end annotation
.end field

.field private final containerAtoms:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;",
            ">;"
        }
    .end annotation
.end field

.field private currentTrackBundle:Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

.field private durationUs:J

.field private emsgTrackOutputs:[Lcom/google/android/exoplayer2/extractor/TrackOutput;

.field private endOfMdatPosition:J

.field private final eventMessageEncoder:Lcom/google/android/exoplayer2/metadata/emsg/EventMessageEncoder;

.field private extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

.field private final flags:I

.field private haveOutputSeekMap:Z

.field private final nalBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field private final nalPrefix:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field private final nalStartCode:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field private parserState:I

.field private pendingMetadataSampleBytes:I

.field private final pendingMetadataSampleInfos:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;",
            ">;"
        }
    .end annotation
.end field

.field private pendingSeekTimeUs:J

.field private processSeiNalUnitPayload:Z

.field private sampleBytesWritten:I

.field private sampleCurrentNalBytesRemaining:I

.field private sampleSize:I

.field private final scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field private final scratchBytes:[B

.field private segmentIndexEarliestPresentationTimeUs:J

.field private final sideloadedTrack:Lcom/google/android/exoplayer2/extractor/mp4/Track;

.field private final timestampAdjuster:Lcom/google/android/exoplayer2/util/TimestampAdjuster;

.field private final trackBundles:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 81
    new-instance v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->FACTORY:Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;

    .line 125
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_22

    sput-object v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->PIFF_SAMPLE_ENCRYPTION_BOX_EXTENDED_TYPE:[B

    .line 129
    new-instance v0, Lcom/google/android/exoplayer2/Format$Builder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/Format$Builder;-><init>()V

    .line 130
    const-string v1, "application/x-emsg"

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->EMSG_FORMAT:Lcom/google/android/exoplayer2/Format;

    .line 129
    return-void

    :array_22
    .array-data 1
        -0x5et
        0x39t
        0x4ft
        0x52t
        0x5at
        -0x65t
        0x4ft
        0x14t
        -0x5et
        0x44t
        0x6ct
        0x42t
        0x7ct
        0x64t
        -0x73t
        -0xct
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    .line 194
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;-><init>(I)V

    .line 195
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .param p1, "flags"    # I

    .line 201
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;-><init>(ILcom/google/android/exoplayer2/util/TimestampAdjuster;)V

    .line 202
    return-void
.end method

.method public constructor <init>(ILcom/google/android/exoplayer2/util/TimestampAdjuster;)V
    .registers 5
    .param p1, "flags"    # I
    .param p2, "timestampAdjuster"    # Lcom/google/android/exoplayer2/util/TimestampAdjuster;

    .line 209
    const/4 v0, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;-><init>(ILcom/google/android/exoplayer2/util/TimestampAdjuster;Lcom/google/android/exoplayer2/extractor/mp4/Track;Ljava/util/List;)V

    .line 210
    return-void
.end method

.method public constructor <init>(ILcom/google/android/exoplayer2/util/TimestampAdjuster;Lcom/google/android/exoplayer2/extractor/mp4/Track;)V
    .registers 5
    .param p1, "flags"    # I
    .param p2, "timestampAdjuster"    # Lcom/google/android/exoplayer2/util/TimestampAdjuster;
    .param p3, "sideloadedTrack"    # Lcom/google/android/exoplayer2/extractor/mp4/Track;

    .line 222
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;-><init>(ILcom/google/android/exoplayer2/util/TimestampAdjuster;Lcom/google/android/exoplayer2/extractor/mp4/Track;Ljava/util/List;)V

    .line 223
    return-void
.end method

.method public constructor <init>(ILcom/google/android/exoplayer2/util/TimestampAdjuster;Lcom/google/android/exoplayer2/extractor/mp4/Track;Ljava/util/List;)V
    .registers 11
    .param p1, "flags"    # I
    .param p2, "timestampAdjuster"    # Lcom/google/android/exoplayer2/util/TimestampAdjuster;
    .param p3, "sideloadedTrack"    # Lcom/google/android/exoplayer2/extractor/mp4/Track;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/android/exoplayer2/util/TimestampAdjuster;",
            "Lcom/google/android/exoplayer2/extractor/mp4/Track;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/Format;",
            ">;)V"
        }
    .end annotation

    .line 238
    .local p4, "closedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/Format;>;"
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;-><init>(ILcom/google/android/exoplayer2/util/TimestampAdjuster;Lcom/google/android/exoplayer2/extractor/mp4/Track;Ljava/util/List;Lcom/google/android/exoplayer2/extractor/TrackOutput;)V

    .line 244
    return-void
.end method

.method public constructor <init>(ILcom/google/android/exoplayer2/util/TimestampAdjuster;Lcom/google/android/exoplayer2/extractor/mp4/Track;Ljava/util/List;Lcom/google/android/exoplayer2/extractor/TrackOutput;)V
    .registers 9
    .param p1, "flags"    # I
    .param p2, "timestampAdjuster"    # Lcom/google/android/exoplayer2/util/TimestampAdjuster;
    .param p3, "sideloadedTrack"    # Lcom/google/android/exoplayer2/extractor/mp4/Track;
    .param p5, "additionalEmsgTrackOutput"    # Lcom/google/android/exoplayer2/extractor/TrackOutput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/android/exoplayer2/util/TimestampAdjuster;",
            "Lcom/google/android/exoplayer2/extractor/mp4/Track;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/Format;",
            ">;",
            "Lcom/google/android/exoplayer2/extractor/TrackOutput;",
            ")V"
        }
    .end annotation

    .line 262
    .local p4, "closedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/Format;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 263
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->flags:I

    .line 264
    iput-object p2, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->timestampAdjuster:Lcom/google/android/exoplayer2/util/TimestampAdjuster;

    .line 265
    iput-object p3, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sideloadedTrack:Lcom/google/android/exoplayer2/extractor/mp4/Track;

    .line 266
    invoke-static {p4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->closedCaptionFormats:Ljava/util/List;

    .line 267
    iput-object p5, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->additionalEmsgTrackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    .line 268
    new-instance v0, Lcom/google/android/exoplayer2/metadata/emsg/EventMessageEncoder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/metadata/emsg/EventMessageEncoder;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->eventMessageEncoder:Lcom/google/android/exoplayer2/metadata/emsg/EventMessageEncoder;

    .line 269
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomHeader:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 270
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    sget-object v2, Lcom/google/android/exoplayer2/util/NalUnitUtil;->NAL_START_CODE:[B

    invoke-direct {v0, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->nalStartCode:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 271
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/4 v2, 0x5

    invoke-direct {v0, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->nalPrefix:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 272
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->nalBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 273
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->scratchBytes:[B

    .line 274
    new-instance v1, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>([B)V

    iput-object v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 275
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    .line 276
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->pendingMetadataSampleInfos:Ljava/util/ArrayDeque;

    .line 277
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    .line 278
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->durationUs:J

    .line 279
    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->pendingSeekTimeUs:J

    .line 280
    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->segmentIndexEarliestPresentationTimeUs:J

    .line 281
    sget-object v0, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->PLACEHOLDER:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    .line 282
    const/4 v0, 0x0

    new-array v1, v0, [Lcom/google/android/exoplayer2/extractor/TrackOutput;

    iput-object v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->emsgTrackOutputs:[Lcom/google/android/exoplayer2/extractor/TrackOutput;

    .line 283
    new-array v0, v0, [Lcom/google/android/exoplayer2/extractor/TrackOutput;

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->ceaTrackOutputs:[Lcom/google/android/exoplayer2/extractor/TrackOutput;

    .line 284
    return-void
.end method

.method private static checkNonNegative(I)I
    .registers 3
    .param p0, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 1104
    if-ltz p0, :cond_3

    .line 1108
    return p0

    .line 1105
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected negative value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v0

    throw v0
.end method

.method private enterReadingAtomHeaderState()V
    .registers 2

    .line 360
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    .line 361
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    .line 362
    return-void
.end method

.method private getDefaultSampleValues(Landroid/util/SparseArray;I)Lcom/google/android/exoplayer2/extractor/mp4/DefaultSampleValues;
    .registers 5
    .param p2, "trackId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/google/android/exoplayer2/extractor/mp4/DefaultSampleValues;",
            ">;I)",
            "Lcom/google/android/exoplayer2/extractor/mp4/DefaultSampleValues;"
        }
    .end annotation

    .line 567
    .local p1, "defaultSampleValuesArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/google/android/exoplayer2/extractor/mp4/DefaultSampleValues;>;"
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    .line 570
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/mp4/DefaultSampleValues;

    return-object v0

    .line 572
    :cond_f
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/mp4/DefaultSampleValues;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/mp4/DefaultSampleValues;

    return-object v0
.end method

.method private static getDrmInitDataFromAtoms(Ljava/util/List;)Lcom/google/android/exoplayer2/drm/DrmInitData;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;",
            ">;)",
            "Lcom/google/android/exoplayer2/drm/DrmInitData;"
        }
    .end annotation

    .line 1564
    .local p0, "leafChildren":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;>;"
    const/4 v0, 0x0

    .line 1565
    .local v0, "schemeDatas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    .line 1566
    .local v1, "leafChildrenSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    if-ge v2, v1, :cond_3e

    .line 1567
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    .line 1568
    .local v3, "child":Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;
    iget v4, v3, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->type:I

    const v5, 0x70737368    # 3.013775E29f

    if-ne v4, v5, :cond_3b

    .line 1569
    if-nez v0, :cond_1d

    .line 1570
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v4

    .line 1572
    :cond_1d
    iget-object v4, v3, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v4

    .line 1573
    .local v4, "psshData":[B
    invoke-static {v4}, Lcom/google/android/exoplayer2/extractor/mp4/PsshAtomUtil;->parseUuid([B)Ljava/util/UUID;

    move-result-object v5

    .line 1574
    .local v5, "uuid":Ljava/util/UUID;
    if-nez v5, :cond_31

    .line 1575
    const-string v6, "FragmentedMp4Extractor"

    const-string v7, "Skipped pssh atom (failed to extract uuid)"

    invoke-static {v6, v7}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3b

    .line 1577
    :cond_31
    new-instance v6, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    const-string v7, "video/mp4"

    invoke-direct {v6, v5, v7, v4}, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;-><init>(Ljava/util/UUID;Ljava/lang/String;[B)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1566
    .end local v3    # "child":Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;
    .end local v4    # "psshData":[B
    .end local v5    # "uuid":Ljava/util/UUID;
    :cond_3b
    :goto_3b
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 1581
    .end local v2    # "i":I
    :cond_3e
    if-nez v0, :cond_42

    const/4 v2, 0x0

    goto :goto_47

    :cond_42
    new-instance v2, Lcom/google/android/exoplayer2/drm/DrmInitData;

    invoke-direct {v2, v0}, Lcom/google/android/exoplayer2/drm/DrmInitData;-><init>(Ljava/util/List;)V

    :goto_47
    return-object v2
.end method

.method private static getNextTrackBundle(Landroid/util/SparseArray;)Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;",
            ">;)",
            "Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;"
        }
    .end annotation

    .line 1539
    .local p0, "trackBundles":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;>;"
    const/4 v0, 0x0

    .line 1540
    .local v0, "nextTrackBundle":Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;
    const-wide v1, 0x7fffffffffffffffL

    .line 1542
    .local v1, "nextSampleOffset":J
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 1543
    .local v3, "trackBundlesSize":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_b
    if-ge v4, v3, :cond_3d

    .line 1544
    invoke-virtual {p0, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    .line 1545
    .local v5, "trackBundle":Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;
    # getter for: Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentlyInFragment:Z
    invoke-static {v5}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->access$000(Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;)Z

    move-result v6

    if-nez v6, :cond_21

    iget v6, v5, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    iget-object v7, v5, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->moovSampleTable:Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    iget v7, v7, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->sampleCount:I

    if-eq v6, v7, :cond_3a

    .line 1547
    :cond_21
    # getter for: Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentlyInFragment:Z
    invoke-static {v5}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->access$000(Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;)Z

    move-result v6

    if-eqz v6, :cond_30

    iget v6, v5, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentTrackRunIndex:I

    iget-object v7, v5, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;

    iget v7, v7, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->trunCount:I

    if-ne v6, v7, :cond_30

    goto :goto_3a

    .line 1551
    :cond_30
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->getCurrentSampleOffset()J

    move-result-wide v6

    .line 1552
    .local v6, "sampleOffset":J
    cmp-long v8, v6, v1

    if-gez v8, :cond_3a

    .line 1553
    move-object v0, v5

    .line 1554
    move-wide v1, v6

    .line 1543
    .end local v5    # "trackBundle":Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;
    .end local v6    # "sampleOffset":J
    :cond_3a
    :goto_3a
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    .line 1558
    .end local v4    # "i":I
    :cond_3d
    return-object v0
.end method

.method private initExtraTracks()V
    .registers 8

    .line 596
    const/16 v0, 0x64

    .line 598
    .local v0, "nextExtraTrackId":I
    const/4 v1, 0x2

    new-array v1, v1, [Lcom/google/android/exoplayer2/extractor/TrackOutput;

    iput-object v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->emsgTrackOutputs:[Lcom/google/android/exoplayer2/extractor/TrackOutput;

    .line 599
    const/4 v2, 0x0

    .line 600
    .local v2, "emsgTrackOutputCount":I
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->additionalEmsgTrackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    if-eqz v3, :cond_11

    .line 601
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "emsgTrackOutputCount":I
    .local v4, "emsgTrackOutputCount":I
    aput-object v3, v1, v2

    move v2, v4

    .line 603
    .end local v4    # "emsgTrackOutputCount":I
    .restart local v2    # "emsgTrackOutputCount":I
    :cond_11
    iget v3, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->flags:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_26

    .line 604
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "emsgTrackOutputCount":I
    .local v3, "emsgTrackOutputCount":I
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    add-int/lit8 v5, v0, 0x1

    .line 605
    .end local v0    # "nextExtraTrackId":I
    .local v5, "nextExtraTrackId":I
    const/4 v6, 0x5

    invoke-interface {v4, v0, v6}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->track(II)Lcom/google/android/exoplayer2/extractor/TrackOutput;

    move-result-object v0

    aput-object v0, v1, v2

    move v2, v3

    move v0, v5

    .line 607
    .end local v3    # "emsgTrackOutputCount":I
    .end local v5    # "nextExtraTrackId":I
    .restart local v0    # "nextExtraTrackId":I
    .restart local v2    # "emsgTrackOutputCount":I
    :cond_26
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->emsgTrackOutputs:[Lcom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/util/Util;->nullSafeArrayCopy([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/android/exoplayer2/extractor/TrackOutput;

    iput-object v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->emsgTrackOutputs:[Lcom/google/android/exoplayer2/extractor/TrackOutput;

    .line 608
    array-length v3, v1

    const/4 v4, 0x0

    :goto_32
    if-ge v4, v3, :cond_3e

    aget-object v5, v1, v4

    .line 609
    .local v5, "eventMessageTrackOutput":Lcom/google/android/exoplayer2/extractor/TrackOutput;
    sget-object v6, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->EMSG_FORMAT:Lcom/google/android/exoplayer2/Format;

    invoke-interface {v5, v6}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->format(Lcom/google/android/exoplayer2/Format;)V

    .line 608
    .end local v5    # "eventMessageTrackOutput":Lcom/google/android/exoplayer2/extractor/TrackOutput;
    add-int/lit8 v4, v4, 0x1

    goto :goto_32

    .line 612
    :cond_3e
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->closedCaptionFormats:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/google/android/exoplayer2/extractor/TrackOutput;

    iput-object v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->ceaTrackOutputs:[Lcom/google/android/exoplayer2/extractor/TrackOutput;

    .line 613
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_49
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->ceaTrackOutputs:[Lcom/google/android/exoplayer2/extractor/TrackOutput;

    array-length v3, v3

    if-ge v1, v3, :cond_6a

    .line 614
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    add-int/lit8 v4, v0, 0x1

    .end local v0    # "nextExtraTrackId":I
    .local v4, "nextExtraTrackId":I
    const/4 v5, 0x3

    invoke-interface {v3, v0, v5}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->track(II)Lcom/google/android/exoplayer2/extractor/TrackOutput;

    move-result-object v0

    .line 615
    .local v0, "output":Lcom/google/android/exoplayer2/extractor/TrackOutput;
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->closedCaptionFormats:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/Format;

    invoke-interface {v0, v3}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->format(Lcom/google/android/exoplayer2/Format;)V

    .line 616
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->ceaTrackOutputs:[Lcom/google/android/exoplayer2/extractor/TrackOutput;

    aput-object v0, v3, v1

    .line 613
    .end local v0    # "output":Lcom/google/android/exoplayer2/extractor/TrackOutput;
    add-int/lit8 v1, v1, 0x1

    move v0, v4

    goto :goto_49

    .line 618
    .end local v1    # "i":I
    .end local v4    # "nextExtraTrackId":I
    .local v0, "nextExtraTrackId":I
    :cond_6a
    return-void
.end method

.method private static isEdtsListDurationForEntireMediaTimeline(Lcom/google/android/exoplayer2/extractor/mp4/Track;)Z
    .registers 14
    .param p0, "track"    # Lcom/google/android/exoplayer2/extractor/mp4/Track;

    .line 990
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    const/4 v1, 0x0

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    array-length v0, v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_36

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListMediaTimes:[J

    if-nez v0, :cond_10

    goto :goto_36

    .line 995
    :cond_10
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    aget-wide v3, v0, v1

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-nez v0, :cond_1b

    .line 996
    return v2

    .line 998
    :cond_1b
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    aget-wide v3, v0, v1

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListMediaTimes:[J

    aget-wide v5, v0, v1

    add-long v7, v3, v5

    const-wide/32 v9, 0xf4240

    iget-wide v11, p0, Lcom/google/android/exoplayer2/extractor/mp4/Track;->movieTimescale:J

    .line 999
    invoke-static/range {v7 .. v12}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v3

    .line 1003
    .local v3, "editListEndMediaTimeUs":J
    iget-wide v5, p0, Lcom/google/android/exoplayer2/extractor/mp4/Track;->durationUs:J

    cmp-long v0, v3, v5

    if-ltz v0, :cond_35

    const/4 v1, 0x1

    :cond_35
    return v1

    .line 993
    .end local v3    # "editListEndMediaTimeUs":J
    :cond_36
    :goto_36
    return v1
.end method

.method static synthetic lambda$static$0()[Lcom/google/android/exoplayer2/extractor/Extractor;
    .registers 3

    .line 82
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/android/exoplayer2/extractor/Extractor;

    new-instance v1, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method private onContainerAtomRead(Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;)V
    .registers 4
    .param p1, "container"    # Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 493
    iget v0, p1, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->type:I

    const v1, 0x6d6f6f76

    if-ne v0, v1, :cond_b

    .line 494
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->onMoovContainerAtomRead(Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;)V

    goto :goto_29

    .line 495
    :cond_b
    iget v0, p1, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->type:I

    const v1, 0x6d6f6f66

    if-ne v0, v1, :cond_16

    .line 496
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->onMoofContainerAtomRead(Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;)V

    goto :goto_29

    .line 497
    :cond_16
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_29

    .line 498
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->add(Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;)V

    .line 500
    :cond_29
    :goto_29
    return-void
.end method

.method private onEmsgLeafAtomRead(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V
    .registers 36
    .param p1, "atom"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 622
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->emsgTrackOutputs:[Lcom/google/android/exoplayer2/extractor/TrackOutput;

    array-length v2, v2

    if-nez v2, :cond_a

    .line 623
    return-void

    .line 625
    :cond_a
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 626
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v2

    .line 627
    .local v2, "fullAtom":I
    invoke-static {v2}, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v3

    .line 631
    .local v3, "version":I
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 632
    .local v4, "presentationTimeDeltaUs":J
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .line 635
    .local v6, "sampleTimeUs":J
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    packed-switch v3, :pswitch_data_17e

    .line 660
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Skipping unsupported emsg version: "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v8, "FragmentedMp4Extractor"

    invoke-static {v8, v1}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    return-void

    .line 650
    :pswitch_42
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v16

    .line 651
    .local v16, "timescale":J
    nop

    .line 652
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v10

    const-wide/32 v12, 0xf4240

    move-wide/from16 v14, v16

    invoke-static/range {v10 .. v15}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v6

    .line 653
    nop

    .line 654
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    invoke-static/range {v10 .. v15}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v10

    .line 655
    .local v10, "durationMs":J
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v12

    .line 656
    .local v12, "id":J
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readNullTerminatedString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 657
    .local v14, "schemeIdUri":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readNullTerminatedString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 658
    .local v15, "value":Ljava/lang/String;
    move-wide/from16 v18, v10

    move-wide/from16 v20, v12

    move-object/from16 v22, v14

    move-object/from16 v23, v15

    move-wide/from16 v24, v16

    goto :goto_cd

    .line 637
    .end local v10    # "durationMs":J
    .end local v12    # "id":J
    .end local v14    # "schemeIdUri":Ljava/lang/String;
    .end local v15    # "value":Ljava/lang/String;
    .end local v16    # "timescale":J
    :pswitch_82
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readNullTerminatedString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move-object v14, v10

    check-cast v14, Ljava/lang/String;

    .line 638
    .restart local v14    # "schemeIdUri":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readNullTerminatedString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move-object v15, v10

    check-cast v15, Ljava/lang/String;

    .line 639
    .restart local v15    # "value":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v10

    .line 640
    .local v10, "timescale":J
    nop

    .line 641
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v16

    const-wide/32 v18, 0xf4240

    move-wide/from16 v20, v10

    invoke-static/range {v16 .. v21}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v4

    .line 642
    iget-wide v12, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->segmentIndexEarliestPresentationTimeUs:J

    cmp-long v16, v12, v8

    if-eqz v16, :cond_b2

    .line 643
    add-long v6, v12, v4

    .line 645
    :cond_b2
    nop

    .line 646
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v16

    const-wide/16 v18, 0x3e8

    move-wide/from16 v20, v10

    invoke-static/range {v16 .. v21}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v12

    .line 647
    .local v12, "durationMs":J
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v16

    .line 648
    .local v16, "id":J
    move-wide/from16 v24, v10

    move-wide/from16 v18, v12

    move-object/from16 v22, v14

    move-object/from16 v23, v15

    move-wide/from16 v20, v16

    .line 664
    .end local v10    # "timescale":J
    .end local v12    # "durationMs":J
    .end local v14    # "schemeIdUri":Ljava/lang/String;
    .end local v15    # "value":Ljava/lang/String;
    .end local v16    # "id":J
    .local v18, "durationMs":J
    .local v20, "id":J
    .local v22, "schemeIdUri":Ljava/lang/String;
    .local v23, "value":Ljava/lang/String;
    .local v24, "timescale":J
    :goto_cd
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v10

    new-array v15, v10, [B

    .line 665
    .local v15, "messageData":[B
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v10

    const/4 v13, 0x0

    invoke-virtual {v1, v15, v13, v10}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 666
    new-instance v26, Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;

    move-object/from16 v10, v26

    move-object/from16 v11, v22

    move-object/from16 v12, v23

    const/4 v8, 0x0

    move-wide/from16 v13, v18

    move-object v9, v15

    .end local v15    # "messageData":[B
    .local v9, "messageData":[B
    move-wide/from16 v15, v20

    move-object/from16 v17, v9

    invoke-direct/range {v10 .. v17}, Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;-><init>(Ljava/lang/String;Ljava/lang/String;JJ[B)V

    .line 667
    .local v10, "eventMessage":Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;
    new-instance v11, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v12, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->eventMessageEncoder:Lcom/google/android/exoplayer2/metadata/emsg/EventMessageEncoder;

    .line 668
    invoke-virtual {v12, v10}, Lcom/google/android/exoplayer2/metadata/emsg/EventMessageEncoder;->encode(Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;)[B

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>([B)V

    .line 669
    .local v11, "encodedEventMessage":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    invoke-virtual {v11}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v12

    .line 672
    .local v12, "sampleSize":I
    iget-object v13, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->emsgTrackOutputs:[Lcom/google/android/exoplayer2/extractor/TrackOutput;

    array-length v14, v13

    const/4 v15, 0x0

    :goto_101
    if-ge v15, v14, :cond_110

    aget-object v1, v13, v15

    .line 673
    .local v1, "emsgTrackOutput":Lcom/google/android/exoplayer2/extractor/TrackOutput;
    invoke-virtual {v11, v8}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 674
    invoke-interface {v1, v11, v12}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V

    .line 672
    .end local v1    # "emsgTrackOutput":Lcom/google/android/exoplayer2/extractor/TrackOutput;
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v1, p1

    goto :goto_101

    .line 678
    :cond_110
    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v6, v13

    if-nez v1, :cond_12a

    .line 681
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->pendingMetadataSampleInfos:Ljava/util/ArrayDeque;

    new-instance v8, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;

    const/4 v13, 0x1

    invoke-direct {v8, v4, v5, v13, v12}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;-><init>(JZI)V

    invoke-virtual {v1, v8}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 684
    iget v1, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->pendingMetadataSampleBytes:I

    add-int/2addr v1, v12

    iput v1, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->pendingMetadataSampleBytes:I

    goto :goto_17d

    .line 685
    :cond_12a
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->pendingMetadataSampleInfos:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_142

    .line 689
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->pendingMetadataSampleInfos:Ljava/util/ArrayDeque;

    new-instance v13, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;

    invoke-direct {v13, v6, v7, v8, v12}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;-><init>(JZI)V

    invoke-virtual {v1, v13}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 691
    iget v1, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->pendingMetadataSampleBytes:I

    add-int/2addr v1, v12

    iput v1, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->pendingMetadataSampleBytes:I

    goto :goto_17d

    .line 692
    :cond_142
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->timestampAdjuster:Lcom/google/android/exoplayer2/util/TimestampAdjuster;

    if-eqz v1, :cond_15c

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_15c

    .line 696
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->pendingMetadataSampleInfos:Ljava/util/ArrayDeque;

    new-instance v13, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;

    invoke-direct {v13, v6, v7, v8, v12}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;-><init>(JZI)V

    invoke-virtual {v1, v13}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 698
    iget v1, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->pendingMetadataSampleBytes:I

    add-int/2addr v1, v12

    iput v1, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->pendingMetadataSampleBytes:I

    goto :goto_17d

    .line 701
    :cond_15c
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->timestampAdjuster:Lcom/google/android/exoplayer2/util/TimestampAdjuster;

    if-eqz v1, :cond_164

    .line 702
    invoke-virtual {v1, v6, v7}, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->adjustSampleTimestamp(J)J

    move-result-wide v6

    .line 704
    :cond_164
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->emsgTrackOutputs:[Lcom/google/android/exoplayer2/extractor/TrackOutput;

    array-length v13, v1

    :goto_167
    if-ge v8, v13, :cond_17d

    aget-object v14, v1, v8

    .line 705
    .local v14, "emsgTrackOutput":Lcom/google/android/exoplayer2/extractor/TrackOutput;
    const/16 v30, 0x1

    const/16 v32, 0x0

    const/16 v33, 0x0

    move-object/from16 v27, v14

    move-wide/from16 v28, v6

    move/from16 v31, v12

    invoke-interface/range {v27 .. v33}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleMetadata(JIIILcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;)V

    .line 704
    .end local v14    # "emsgTrackOutput":Lcom/google/android/exoplayer2/extractor/TrackOutput;
    add-int/lit8 v8, v8, 0x1

    goto :goto_167

    .line 709
    :cond_17d
    :goto_17d
    return-void

    :pswitch_data_17e
    .packed-switch 0x0
        :pswitch_82
        :pswitch_42
    .end packed-switch
.end method

.method private onLeafAtomRead(Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;J)V
    .registers 7
    .param p1, "leaf"    # Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;
    .param p2, "inputPosition"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 480
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    .line 481
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->add(Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;)V

    goto :goto_46

    .line 482
    :cond_14
    iget v0, p1, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->type:I

    const v1, 0x73696478

    if-ne v0, v1, :cond_38

    .line 483
    iget-object v0, p1, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-static {v0, p2, p3}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->parseSidx(Lcom/google/android/exoplayer2/util/ParsableByteArray;J)Landroid/util/Pair;

    move-result-object v0

    .line 484
    .local v0, "result":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Lcom/google/android/exoplayer2/extractor/ChunkIndex;>;"
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->segmentIndexEarliestPresentationTimeUs:J

    .line 485
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/exoplayer2/extractor/SeekMap;

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->seekMap(Lcom/google/android/exoplayer2/extractor/SeekMap;)V

    .line 486
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->haveOutputSeekMap:Z

    .end local v0    # "result":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Lcom/google/android/exoplayer2/extractor/ChunkIndex;>;"
    goto :goto_45

    .line 487
    :cond_38
    iget v0, p1, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->type:I

    const v1, 0x656d7367

    if-ne v0, v1, :cond_45

    .line 488
    iget-object v0, p1, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->onEmsgLeafAtomRead(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V

    goto :goto_46

    .line 487
    :cond_45
    :goto_45
    nop

    .line 490
    :goto_46
    return-void
.end method

.method private onMoofContainerAtomRead(Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;)V
    .registers 10
    .param p1, "moof"    # Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 576
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sideloadedTrack:Lcom/google/android/exoplayer2/extractor/mp4/Track;

    if-eqz v1, :cond_8

    const/4 v1, 0x1

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    iget v2, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->flags:I

    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->scratchBytes:[B

    invoke-static {p1, v0, v1, v2, v3}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->parseMoof(Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;Landroid/util/SparseArray;ZI[B)V

    .line 578
    iget-object v0, p1, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->leafChildren:Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->getDrmInitDataFromAtoms(Ljava/util/List;)Lcom/google/android/exoplayer2/drm/DrmInitData;

    move-result-object v0

    .line 579
    .local v0, "drmInitData":Lcom/google/android/exoplayer2/drm/DrmInitData;
    if-eqz v0, :cond_2f

    .line 580
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 581
    .local v1, "trackCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1f
    if-ge v2, v1, :cond_2f

    .line 582
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    invoke-virtual {v3, v0}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->updateDrmInitData(Lcom/google/android/exoplayer2/drm/DrmInitData;)V

    .line 581
    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    .line 586
    .end local v1    # "trackCount":I
    .end local v2    # "i":I
    :cond_2f
    iget-wide v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->pendingSeekTimeUs:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v1, v3

    if-eqz v5, :cond_55

    .line 587
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 588
    .restart local v1    # "trackCount":I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_41
    if-ge v2, v1, :cond_53

    .line 589
    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget-wide v6, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->pendingSeekTimeUs:J

    invoke-virtual {v5, v6, v7}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->seek(J)V

    .line 588
    add-int/lit8 v2, v2, 0x1

    goto :goto_41

    .line 591
    .end local v2    # "i":I
    :cond_53
    iput-wide v3, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->pendingSeekTimeUs:J

    .line 593
    .end local v1    # "trackCount":I
    :cond_55
    return-void
.end method

.method private onMoovContainerAtomRead(Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;)V
    .registers 20
    .param p1, "moov"    # Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 503
    move-object/from16 v0, p0

    move-object/from16 v9, p1

    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sideloadedTrack:Lcom/google/android/exoplayer2/extractor/mp4/Track;

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-nez v1, :cond_c

    const/4 v1, 0x1

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    const-string v2, "Unexpected moov box."

    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(ZLjava/lang/Object;)V

    .line 505
    iget-object v1, v9, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->leafChildren:Ljava/util/List;

    invoke-static {v1}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->getDrmInitDataFromAtoms(Ljava/util/List;)Lcom/google/android/exoplayer2/drm/DrmInitData;

    move-result-object v12

    .line 508
    .local v12, "drmInitData":Lcom/google/android/exoplayer2/drm/DrmInitData;
    const v1, 0x6d766578

    invoke-virtual {v9, v1}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    .line 509
    .local v13, "mvex":Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    move-object v14, v1

    .line 510
    .local v14, "defaultSampleValuesArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/google/android/exoplayer2/extractor/mp4/DefaultSampleValues;>;"
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 511
    .local v1, "duration":J
    iget-object v3, v13, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->leafChildren:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v15

    .line 512
    .local v15, "mvexChildrenSize":I
    const/4 v3, 0x0

    move-wide/from16 v16, v1

    .end local v1    # "duration":J
    .local v3, "i":I
    .local v16, "duration":J
    :goto_3a
    if-ge v3, v15, :cond_75

    .line 513
    iget-object v1, v13, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->leafChildren:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    .line 514
    .local v1, "atom":Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;
    iget v2, v1, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->type:I

    const v4, 0x74726578

    if-ne v2, v4, :cond_61

    .line 515
    iget-object v2, v1, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-static {v2}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->parseTrex(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Landroid/util/Pair;

    move-result-object v2

    .line 516
    .local v2, "trexData":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Lcom/google/android/exoplayer2/extractor/mp4/DefaultSampleValues;>;"
    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Lcom/google/android/exoplayer2/extractor/mp4/DefaultSampleValues;

    invoke-virtual {v14, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .end local v2    # "trexData":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Lcom/google/android/exoplayer2/extractor/mp4/DefaultSampleValues;>;"
    goto :goto_71

    .line 517
    :cond_61
    iget v2, v1, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->type:I

    const v4, 0x6d656864

    if-ne v2, v4, :cond_71

    .line 518
    iget-object v2, v1, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-static {v2}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->parseMehd(Lcom/google/android/exoplayer2/util/ParsableByteArray;)J

    move-result-wide v4

    move-wide/from16 v16, v4

    .end local v16    # "duration":J
    .local v4, "duration":J
    goto :goto_72

    .line 517
    .end local v4    # "duration":J
    .restart local v16    # "duration":J
    :cond_71
    :goto_71
    nop

    .line 512
    .end local v1    # "atom":Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;
    :goto_72
    add-int/lit8 v3, v3, 0x1

    goto :goto_3a

    .line 523
    .end local v3    # "i":I
    :cond_75
    new-instance v2, Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;

    invoke-direct {v2}, Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;-><init>()V

    iget v1, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->flags:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_82

    const/4 v6, 0x1

    goto :goto_83

    :cond_82
    const/4 v6, 0x0

    :goto_83
    const/4 v7, 0x0

    new-instance v8, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$$ExternalSyntheticLambda0;

    invoke-direct {v8, v0}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;)V

    .line 524
    move-object/from16 v1, p1

    move-wide/from16 v3, v16

    move-object v5, v12

    invoke-static/range {v1 .. v8}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseTraks(Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;JLcom/google/android/exoplayer2/drm/DrmInitData;ZZLcom/google/common/base/Function;)Ljava/util/List;

    move-result-object v1

    .line 533
    .local v1, "sampleTables":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 534
    .local v2, "trackCount":I
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-nez v3, :cond_d6

    .line 536
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_9f
    if-ge v3, v2, :cond_d0

    .line 537
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    .line 538
    .local v4, "sampleTable":Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;
    iget-object v5, v4, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->track:Lcom/google/android/exoplayer2/extractor/mp4/Track;

    .line 539
    .local v5, "track":Lcom/google/android/exoplayer2/extractor/mp4/Track;
    new-instance v6, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget-object v7, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    iget v8, v5, Lcom/google/android/exoplayer2/extractor/mp4/Track;->type:I

    .line 541
    invoke-interface {v7, v3, v8}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->track(II)Lcom/google/android/exoplayer2/extractor/TrackOutput;

    move-result-object v7

    iget v8, v5, Lcom/google/android/exoplayer2/extractor/mp4/Track;->id:I

    .line 543
    invoke-direct {v0, v14, v8}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->getDefaultSampleValues(Landroid/util/SparseArray;I)Lcom/google/android/exoplayer2/extractor/mp4/DefaultSampleValues;

    move-result-object v8

    invoke-direct {v6, v7, v4, v8}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;-><init>(Lcom/google/android/exoplayer2/extractor/TrackOutput;Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;Lcom/google/android/exoplayer2/extractor/mp4/DefaultSampleValues;)V

    .line 544
    .local v6, "trackBundle":Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;
    iget-object v7, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    iget v8, v5, Lcom/google/android/exoplayer2/extractor/mp4/Track;->id:I

    invoke-virtual {v7, v8, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 545
    iget-wide v7, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->durationUs:J

    iget-wide v10, v5, Lcom/google/android/exoplayer2/extractor/mp4/Track;->durationUs:J

    invoke-static {v7, v8, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    iput-wide v7, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->durationUs:J

    .line 536
    .end local v4    # "sampleTable":Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;
    .end local v5    # "track":Lcom/google/android/exoplayer2/extractor/mp4/Track;
    .end local v6    # "trackBundle":Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;
    add-int/lit8 v3, v3, 0x1

    goto :goto_9f

    .line 547
    .end local v3    # "i":I
    :cond_d0
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    invoke-interface {v3}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->endTracks()V

    goto :goto_103

    .line 549
    :cond_d6
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ne v3, v2, :cond_df

    const/4 v10, 0x1

    :cond_df
    invoke-static {v10}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 550
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_e3
    if-ge v3, v2, :cond_103

    .line 551
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    .line 552
    .restart local v4    # "sampleTable":Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;
    iget-object v5, v4, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->track:Lcom/google/android/exoplayer2/extractor/mp4/Track;

    .line 553
    .restart local v5    # "track":Lcom/google/android/exoplayer2/extractor/mp4/Track;
    iget-object v6, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    iget v7, v5, Lcom/google/android/exoplayer2/extractor/mp4/Track;->id:I

    .line 554
    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget v7, v5, Lcom/google/android/exoplayer2/extractor/mp4/Track;->id:I

    .line 555
    invoke-direct {v0, v14, v7}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->getDefaultSampleValues(Landroid/util/SparseArray;I)Lcom/google/android/exoplayer2/extractor/mp4/DefaultSampleValues;

    move-result-object v7

    invoke-virtual {v6, v4, v7}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->reset(Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;Lcom/google/android/exoplayer2/extractor/mp4/DefaultSampleValues;)V

    .line 550
    .end local v4    # "sampleTable":Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;
    .end local v5    # "track":Lcom/google/android/exoplayer2/extractor/mp4/Track;
    add-int/lit8 v3, v3, 0x1

    goto :goto_e3

    .line 558
    .end local v3    # "i":I
    :cond_103
    :goto_103
    return-void
.end method

.method private outputPendingMetadataSamples(J)V
    .registers 18
    .param p1, "sampleTimeUs"    # J

    .line 1510
    move-object v0, p0

    :goto_1
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->pendingMetadataSampleInfos:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_40

    .line 1511
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->pendingMetadataSampleInfos:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;

    .line 1512
    .local v1, "metadataSampleInfo":Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;
    iget v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->pendingMetadataSampleBytes:I

    iget v3, v1, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;->size:I

    sub-int/2addr v2, v3

    iput v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->pendingMetadataSampleBytes:I

    .line 1513
    iget-wide v2, v1, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;->sampleTimeUs:J

    .line 1514
    .local v2, "metadataSampleTimeUs":J
    iget-boolean v4, v1, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;->sampleTimeIsRelative:Z

    if-eqz v4, :cond_20

    .line 1517
    add-long v2, v2, p1

    .line 1519
    :cond_20
    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->timestampAdjuster:Lcom/google/android/exoplayer2/util/TimestampAdjuster;

    if-eqz v4, :cond_28

    .line 1520
    invoke-virtual {v4, v2, v3}, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->adjustSampleTimestamp(J)J

    move-result-wide v2

    .line 1522
    :cond_28
    iget-object v11, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->emsgTrackOutputs:[Lcom/google/android/exoplayer2/extractor/TrackOutput;

    array-length v12, v11

    const/4 v4, 0x0

    const/4 v13, 0x0

    :goto_2d
    if-ge v13, v12, :cond_3f

    aget-object v14, v11, v13

    .line 1523
    .local v14, "emsgTrackOutput":Lcom/google/android/exoplayer2/extractor/TrackOutput;
    const/4 v7, 0x1

    iget v8, v1, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;->size:I

    iget v9, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->pendingMetadataSampleBytes:I

    const/4 v10, 0x0

    move-object v4, v14

    move-wide v5, v2

    invoke-interface/range {v4 .. v10}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleMetadata(JIIILcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;)V

    .line 1522
    .end local v14    # "emsgTrackOutput":Lcom/google/android/exoplayer2/extractor/TrackOutput;
    add-int/lit8 v13, v13, 0x1

    goto :goto_2d

    .line 1530
    .end local v1    # "metadataSampleInfo":Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;
    .end local v2    # "metadataSampleTimeUs":J
    :cond_3f
    goto :goto_1

    .line 1531
    :cond_40
    return-void
.end method

.method private static parseMehd(Lcom/google/android/exoplayer2/util/ParsableByteArray;)J
    .registers 5
    .param p0, "mehd"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 731
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 732
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 733
    .local v0, "fullAtom":I
    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v1

    .line 734
    .local v1, "version":I
    if-nez v1, :cond_14

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v2

    goto :goto_18

    :cond_14
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v2

    :goto_18
    return-wide v2
.end method

.method private static parseMoof(Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;Landroid/util/SparseArray;ZI[B)V
    .registers 10
    .param p0, "moof"    # Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;
    .param p2, "haveSideloadedTrack"    # Z
    .param p3, "flags"    # I
    .param p4, "extendedTypeScratch"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;",
            "Landroid/util/SparseArray<",
            "Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;",
            ">;ZI[B)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 744
    .local p1, "trackBundles":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;>;"
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->containerChildren:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 745
    .local v0, "moofContainerChildrenSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_1e

    .line 746
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->containerChildren:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    .line 748
    .local v2, "child":Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;
    iget v3, v2, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->type:I

    const v4, 0x74726166

    if-ne v3, v4, :cond_1b

    .line 749
    invoke-static {v2, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->parseTraf(Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;Landroid/util/SparseArray;ZI[B)V

    .line 745
    .end local v2    # "child":Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;
    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 752
    .end local v1    # "i":I
    :cond_1e
    return-void
.end method

.method private static parseSaio(Lcom/google/android/exoplayer2/util/ParsableByteArray;Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;)V
    .registers 10
    .param p0, "saio"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p1, "out"    # Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 897
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 898
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 899
    .local v1, "fullAtom":I
    invoke-static {v1}, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->parseFullAtomFlags(I)I

    move-result v2

    .line 900
    .local v2, "flags":I
    and-int/lit8 v3, v2, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_15

    .line 901
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 904
    :cond_15
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v0

    .line 905
    .local v0, "entryCount":I
    if-ne v0, v4, :cond_30

    .line 911
    invoke-static {v1}, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v3

    .line 912
    .local v3, "version":I
    iget-wide v4, p1, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->auxiliaryDataPosition:J

    .line 913
    if-nez v3, :cond_28

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v6

    goto :goto_2c

    :cond_28
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v6

    :goto_2c
    add-long/2addr v4, v6

    iput-wide v4, p1, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->auxiliaryDataPosition:J

    .line 914
    return-void

    .line 907
    .end local v3    # "version":I
    :cond_30
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected saio entry count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v3

    throw v3
.end method

.method private static parseSaiz(Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;Lcom/google/android/exoplayer2/util/ParsableByteArray;Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;)V
    .registers 15
    .param p0, "encryptionBox"    # Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;
    .param p1, "saiz"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p2, "out"    # Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 852
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;->perSampleIvSize:I

    .line 853
    .local v0, "vectorSize":I
    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 854
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v2

    .line 855
    .local v2, "fullAtom":I
    invoke-static {v2}, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->parseFullAtomFlags(I)I

    move-result v3

    .line 856
    .local v3, "flags":I
    and-int/lit8 v4, v3, 0x1

    const/4 v5, 0x1

    if-ne v4, v5, :cond_17

    .line 857
    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 859
    :cond_17
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    .line 861
    .local v1, "defaultSampleInfoSize":I
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v4

    .line 862
    .local v4, "sampleCount":I
    iget v6, p2, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->sampleCount:I

    if-gt v4, v6, :cond_55

    .line 871
    const/4 v6, 0x0

    .line 872
    .local v6, "totalSize":I
    const/4 v7, 0x0

    if-nez v1, :cond_3c

    .line 873
    iget-object v8, p2, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->sampleHasSubsampleEncryptionTable:[Z

    .line 874
    .local v8, "sampleHasSubsampleEncryptionTable":[Z
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_2a
    if-ge v9, v4, :cond_3b

    .line 875
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v10

    .line 876
    .local v10, "sampleInfoSize":I
    add-int/2addr v6, v10

    .line 877
    if-le v10, v0, :cond_35

    const/4 v11, 0x1

    goto :goto_36

    :cond_35
    const/4 v11, 0x0

    :goto_36
    aput-boolean v11, v8, v9

    .line 874
    .end local v10    # "sampleInfoSize":I
    add-int/lit8 v9, v9, 0x1

    goto :goto_2a

    .line 879
    .end local v8    # "sampleHasSubsampleEncryptionTable":[Z
    .end local v9    # "i":I
    :cond_3b
    goto :goto_48

    .line 880
    :cond_3c
    if-le v1, v0, :cond_3f

    goto :goto_40

    :cond_3f
    const/4 v5, 0x0

    .line 881
    .local v5, "subsampleEncryption":Z
    :goto_40
    mul-int v8, v1, v4

    add-int/2addr v6, v8

    .line 882
    iget-object v8, p2, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->sampleHasSubsampleEncryptionTable:[Z

    invoke-static {v8, v7, v4, v5}, Ljava/util/Arrays;->fill([ZIIZ)V

    .line 884
    .end local v5    # "subsampleEncryption":Z
    :goto_48
    iget-object v5, p2, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->sampleHasSubsampleEncryptionTable:[Z

    iget v8, p2, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->sampleCount:I

    invoke-static {v5, v4, v8, v7}, Ljava/util/Arrays;->fill([ZIIZ)V

    .line 885
    if-lez v6, :cond_54

    .line 886
    invoke-virtual {p2, v6}, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->initEncryptionData(I)V

    .line 888
    :cond_54
    return-void

    .line 863
    .end local v6    # "totalSize":I
    :cond_55
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Saiz sample count "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is greater than fragment sample count"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p2, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->sampleCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v5

    goto :goto_7b

    :goto_7a
    throw v5

    :goto_7b
    goto :goto_7a
.end method

.method private static parseSampleGroups(Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;Ljava/lang/String;Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;)V
    .registers 25
    .param p0, "traf"    # Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;
    .param p1, "schemeType"    # Ljava/lang/String;
    .param p2, "out"    # Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 1167
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const/4 v2, 0x0

    .line 1168
    .local v2, "sbgp":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    const/4 v3, 0x0

    .line 1169
    .local v3, "sgpd":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_7
    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->leafChildren:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_44

    .line 1170
    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->leafChildren:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    .line 1171
    .local v5, "leafAtom":Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;
    iget-object v6, v5, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 1172
    .local v6, "leafAtomData":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    iget v7, v5, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->type:I

    const v8, 0x73626770

    const v9, 0x73656967

    const/16 v10, 0xc

    if-ne v7, v8, :cond_30

    .line 1173
    invoke-virtual {v6, v10}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 1174
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v7

    if-ne v7, v9, :cond_41

    .line 1175
    move-object v2, v6

    goto :goto_41

    .line 1177
    :cond_30
    iget v7, v5, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->type:I

    const v8, 0x73677064

    if-ne v7, v8, :cond_41

    .line 1178
    invoke-virtual {v6, v10}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 1179
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v7

    if-ne v7, v9, :cond_41

    .line 1180
    move-object v3, v6

    .line 1169
    .end local v5    # "leafAtom":Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;
    .end local v6    # "leafAtomData":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    :cond_41
    :goto_41
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 1184
    .end local v4    # "i":I
    :cond_44
    if-eqz v2, :cond_f9

    if-nez v3, :cond_4a

    goto/16 :goto_f9

    .line 1188
    :cond_4a
    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 1189
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v5

    invoke-static {v5}, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v5

    .line 1190
    .local v5, "sbgpVersion":I
    const/4 v6, 0x4

    invoke-virtual {v2, v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 1191
    const/4 v7, 0x1

    if-ne v5, v7, :cond_61

    .line 1192
    invoke-virtual {v2, v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 1194
    :cond_61
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v8

    if-ne v8, v7, :cond_f2

    .line 1199
    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 1200
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v4

    invoke-static {v4}, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v4

    .line 1201
    .local v4, "sgpdVersion":I
    invoke-virtual {v3, v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 1202
    if-ne v4, v7, :cond_89

    .line 1203
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v12, v8, v10

    if-eqz v12, :cond_82

    goto :goto_8f

    .line 1204
    :cond_82
    const-string v6, "Variable length description in sgpd found (unsupported)"

    invoke-static {v6}, Lcom/google/android/exoplayer2/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v6

    throw v6

    .line 1207
    :cond_89
    const/4 v8, 0x2

    if-lt v4, v8, :cond_8f

    .line 1208
    invoke-virtual {v3, v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 1210
    :cond_8f
    :goto_8f
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v8

    const-wide/16 v10, 0x1

    cmp-long v12, v8, v10

    if-nez v12, :cond_eb

    .line 1216
    invoke-virtual {v3, v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 1217
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v8

    .line 1218
    .local v8, "patternByte":I
    and-int/lit16 v9, v8, 0xf0

    shr-int/lit8 v6, v9, 0x4

    .line 1219
    .local v6, "cryptByteBlock":I
    and-int/lit8 v9, v8, 0xf

    .line 1220
    .local v9, "skipByteBlock":I
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v10

    const/4 v11, 0x0

    if-ne v10, v7, :cond_af

    const/4 v10, 0x1

    goto :goto_b0

    :cond_af
    const/4 v10, 0x0

    :goto_b0
    move/from16 v18, v10

    .line 1221
    .local v18, "isProtected":Z
    if-nez v18, :cond_b5

    .line 1222
    return-void

    .line 1224
    :cond_b5
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v19

    .line 1225
    .local v19, "perSampleIvSize":I
    const/16 v10, 0x10

    new-array v15, v10, [B

    .line 1226
    .local v15, "keyId":[B
    array-length v10, v15

    invoke-virtual {v3, v15, v11, v10}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 1227
    const/4 v10, 0x0

    .line 1228
    .local v10, "constantIv":[B
    if-nez v19, :cond_d0

    .line 1229
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v12

    .line 1230
    .local v12, "constantIvSize":I
    new-array v10, v12, [B

    .line 1231
    invoke-virtual {v3, v10, v11, v12}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    move-object/from16 v20, v10

    goto :goto_d2

    .line 1228
    .end local v12    # "constantIvSize":I
    :cond_d0
    move-object/from16 v20, v10

    .line 1233
    .end local v10    # "constantIv":[B
    .local v20, "constantIv":[B
    :goto_d2
    iput-boolean v7, v1, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->definesEncryptionData:Z

    .line 1234
    new-instance v7, Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    move-object v10, v7

    move/from16 v11, v18

    move-object/from16 v12, p1

    move/from16 v13, v19

    move-object v14, v15

    move-object/from16 v21, v15

    .end local v15    # "keyId":[B
    .local v21, "keyId":[B
    move v15, v6

    move/from16 v16, v9

    move-object/from16 v17, v20

    invoke-direct/range {v10 .. v17}, Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;-><init>(ZLjava/lang/String;I[BII[B)V

    iput-object v7, v1, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->trackEncryptionBox:Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    .line 1243
    return-void

    .line 1211
    .end local v6    # "cryptByteBlock":I
    .end local v8    # "patternByte":I
    .end local v9    # "skipByteBlock":I
    .end local v18    # "isProtected":Z
    .end local v19    # "perSampleIvSize":I
    .end local v20    # "constantIv":[B
    .end local v21    # "keyId":[B
    :cond_eb
    const-string v6, "Entry count in sgpd != 1 (unsupported)."

    invoke-static {v6}, Lcom/google/android/exoplayer2/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v6

    throw v6

    .line 1195
    .end local v4    # "sgpdVersion":I
    :cond_f2
    const-string v4, "Entry count in sbgp != 1 (unsupported)."

    invoke-static {v4}, Lcom/google/android/exoplayer2/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v4

    throw v4

    .line 1185
    .end local v5    # "sbgpVersion":I
    :cond_f9
    :goto_f9
    return-void
.end method

.method private static parseSenc(Lcom/google/android/exoplayer2/util/ParsableByteArray;ILcom/google/android/exoplayer2/extractor/mp4/TrackFragment;)V
    .registers 10
    .param p0, "senc"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p1, "offset"    # I
    .param p2, "out"    # Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 1134
    add-int/lit8 v0, p1, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 1135
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 1136
    .local v0, "fullAtom":I
    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->parseFullAtomFlags(I)I

    move-result v1

    .line 1138
    .local v1, "flags":I
    and-int/lit8 v2, v1, 0x1

    if-nez v2, :cond_60

    .line 1144
    and-int/lit8 v2, v1, 0x2

    const/4 v3, 0x0

    if-eqz v2, :cond_18

    const/4 v2, 0x1

    goto :goto_19

    :cond_18
    const/4 v2, 0x0

    .line 1145
    .local v2, "subsampleEncryption":Z
    :goto_19
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v4

    .line 1146
    .local v4, "sampleCount":I
    if-nez v4, :cond_27

    .line 1148
    iget-object v5, p2, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->sampleHasSubsampleEncryptionTable:[Z

    iget v6, p2, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->sampleCount:I

    invoke-static {v5, v3, v6, v3}, Ljava/util/Arrays;->fill([ZIIZ)V

    .line 1149
    return-void

    .line 1150
    :cond_27
    iget v5, p2, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->sampleCount:I

    if-ne v4, v5, :cond_3b

    .line 1159
    iget-object v5, p2, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->sampleHasSubsampleEncryptionTable:[Z

    invoke-static {v5, v3, v4, v2}, Ljava/util/Arrays;->fill([ZIIZ)V

    .line 1160
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v3

    invoke-virtual {p2, v3}, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->initEncryptionData(I)V

    .line 1161
    invoke-virtual {p2, p0}, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->fillEncryptionData(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V

    .line 1162
    return-void

    .line 1151
    :cond_3b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Senc sample count "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " is different from fragment sample count"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p2, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->sampleCount:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-static {v3, v5}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v3

    throw v3

    .line 1140
    .end local v2    # "subsampleEncryption":Z
    .end local v4    # "sampleCount":I
    :cond_60
    const-string v2, "Overriding TrackEncryptionBox parameters is unsupported."

    invoke-static {v2}, Lcom/google/android/exoplayer2/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v2

    throw v2
.end method

.method private static parseSenc(Lcom/google/android/exoplayer2/util/ParsableByteArray;Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;)V
    .registers 3
    .param p0, "senc"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p1, "out"    # Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 1129
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->parseSenc(Lcom/google/android/exoplayer2/util/ParsableByteArray;ILcom/google/android/exoplayer2/extractor/mp4/TrackFragment;)V

    .line 1130
    return-void
.end method

.method private static parseSidx(Lcom/google/android/exoplayer2/util/ParsableByteArray;J)Landroid/util/Pair;
    .registers 34
    .param p0, "atom"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p1, "inputPosition"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/util/ParsableByteArray;",
            "J)",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Lcom/google/android/exoplayer2/extractor/ChunkIndex;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 1255
    move-object/from16 v0, p0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 1256
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 1257
    .local v1, "fullAtom":I
    invoke-static {v1}, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v2

    .line 1259
    .local v2, "version":I
    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 1260
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v10

    .line 1262
    .local v10, "timescale":J
    move-wide/from16 v4, p1

    .line 1263
    .local v4, "offset":J
    if-nez v2, :cond_27

    .line 1264
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v6

    .line 1265
    .local v6, "earliestPresentationTime":J
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v8

    add-long/2addr v4, v8

    move-wide v12, v4

    move-wide v14, v6

    goto :goto_32

    .line 1267
    .end local v6    # "earliestPresentationTime":J
    :cond_27
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v6

    .line 1268
    .restart local v6    # "earliestPresentationTime":J
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v8

    add-long/2addr v4, v8

    move-wide v12, v4

    move-wide v14, v6

    .line 1270
    .end local v4    # "offset":J
    .end local v6    # "earliestPresentationTime":J
    .local v12, "offset":J
    .local v14, "earliestPresentationTime":J
    :goto_32
    const-wide/32 v6, 0xf4240

    .line 1271
    move-wide v4, v14

    move-wide v8, v10

    invoke-static/range {v4 .. v9}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v16

    .line 1273
    .local v16, "earliestPresentationTimeUs":J
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 1275
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v8

    .line 1276
    .local v8, "referenceCount":I
    new-array v9, v8, [I

    .line 1277
    .local v9, "sizes":[I
    new-array v6, v8, [J

    .line 1278
    .local v6, "offsets":[J
    new-array v7, v8, [J

    .line 1279
    .local v7, "durationsUs":[J
    new-array v4, v8, [J

    .line 1281
    .local v4, "timesUs":[J
    move-wide/from16 v18, v14

    .line 1282
    .local v18, "time":J
    move-wide/from16 v20, v16

    .line 1283
    .local v20, "timeUs":J
    const/4 v5, 0x0

    move-wide/from16 v22, v20

    move-wide/from16 v20, v18

    move-wide/from16 v18, v12

    move v12, v5

    .local v12, "i":I
    .local v18, "offset":J
    .local v20, "time":J
    .local v22, "timeUs":J
    :goto_57
    if-ge v12, v8, :cond_b1

    .line 1284
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v13

    .line 1286
    .local v13, "firstInt":I
    const/high16 v5, -0x80000000

    and-int v24, v13, v5

    .line 1287
    .local v24, "type":I
    if-nez v24, :cond_a8

    .line 1291
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v25

    .line 1293
    .local v25, "referenceDuration":J
    const v5, 0x7fffffff

    and-int/2addr v5, v13

    aput v5, v9, v12

    .line 1294
    aput-wide v18, v6, v12

    .line 1298
    aput-wide v22, v4, v12

    .line 1299
    add-long v20, v20, v25

    .line 1300
    const-wide/32 v27, 0xf4240

    move-object v3, v4

    .end local v4    # "timesUs":[J
    .local v3, "timesUs":[J
    move-wide/from16 v4, v20

    move/from16 v29, v1

    move/from16 v30, v2

    move-object v1, v6

    move-object v2, v7

    .end local v6    # "offsets":[J
    .end local v7    # "durationsUs":[J
    .local v1, "offsets":[J
    .local v2, "durationsUs":[J
    .local v29, "fullAtom":I
    .local v30, "version":I
    move-wide/from16 v6, v27

    move/from16 v27, v8

    move/from16 v28, v13

    move-object v13, v9

    .end local v8    # "referenceCount":I
    .end local v9    # "sizes":[I
    .local v13, "sizes":[I
    .local v27, "referenceCount":I
    .local v28, "firstInt":I
    move-wide v8, v10

    invoke-static/range {v4 .. v9}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v22

    .line 1301
    aget-wide v4, v3, v12

    sub-long v4, v22, v4

    aput-wide v4, v2, v12

    .line 1303
    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 1304
    aget v5, v13, v12

    int-to-long v5, v5

    add-long v18, v18, v5

    .line 1283
    .end local v24    # "type":I
    .end local v25    # "referenceDuration":J
    .end local v28    # "firstInt":I
    add-int/lit8 v12, v12, 0x1

    move-object v6, v1

    move-object v7, v2

    move-object v4, v3

    move-object v9, v13

    move/from16 v8, v27

    move/from16 v1, v29

    move/from16 v2, v30

    const/4 v3, 0x4

    goto :goto_57

    .line 1288
    .end local v3    # "timesUs":[J
    .end local v27    # "referenceCount":I
    .end local v29    # "fullAtom":I
    .end local v30    # "version":I
    .local v1, "fullAtom":I
    .local v2, "version":I
    .restart local v4    # "timesUs":[J
    .restart local v6    # "offsets":[J
    .restart local v7    # "durationsUs":[J
    .restart local v8    # "referenceCount":I
    .restart local v9    # "sizes":[I
    .local v13, "firstInt":I
    .restart local v24    # "type":I
    :cond_a8
    move-object v3, v4

    .end local v4    # "timesUs":[J
    .restart local v3    # "timesUs":[J
    const-string v4, "Unhandled indirect reference"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v4

    throw v4

    .line 1283
    .end local v3    # "timesUs":[J
    .end local v13    # "firstInt":I
    .end local v24    # "type":I
    .restart local v4    # "timesUs":[J
    :cond_b1
    move/from16 v29, v1

    move/from16 v30, v2

    move-object v3, v4

    move-object v1, v6

    move-object v2, v7

    move-object v13, v9

    .line 1307
    .end local v4    # "timesUs":[J
    .end local v6    # "offsets":[J
    .end local v7    # "durationsUs":[J
    .end local v9    # "sizes":[I
    .end local v12    # "i":I
    .local v1, "offsets":[J
    .local v2, "durationsUs":[J
    .restart local v3    # "timesUs":[J
    .local v13, "sizes":[I
    .restart local v29    # "fullAtom":I
    .restart local v30    # "version":I
    nop

    .line 1308
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    new-instance v5, Lcom/google/android/exoplayer2/extractor/ChunkIndex;

    invoke-direct {v5, v13, v1, v2, v3}, Lcom/google/android/exoplayer2/extractor/ChunkIndex;-><init>([I[J[J[J)V

    .line 1307
    invoke-static {v4, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    return-object v4
.end method

.method private static parseTfdt(Lcom/google/android/exoplayer2/util/ParsableByteArray;)J
    .registers 5
    .param p0, "tfdt"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 980
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 981
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 982
    .local v0, "fullAtom":I
    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v1

    .line 983
    .local v1, "version":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_15

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v2

    goto :goto_19

    :cond_15
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v2

    :goto_19
    return-wide v2
.end method

.method private static parseTfhd(Lcom/google/android/exoplayer2/util/ParsableByteArray;Landroid/util/SparseArray;Z)Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;
    .registers 14
    .param p0, "tfhd"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p2, "haveSideloadedTrack"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/util/ParsableByteArray;",
            "Landroid/util/SparseArray<",
            "Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;",
            ">;Z)",
            "Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;"
        }
    .end annotation

    .line 931
    .local p1, "trackBundles":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;>;"
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 932
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 933
    .local v0, "fullAtom":I
    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->parseFullAtomFlags(I)I

    move-result v1

    .line 934
    .local v1, "atomFlags":I
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v2

    .line 937
    .local v2, "trackId":I
    if-eqz p2, :cond_19

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    goto :goto_1d

    :cond_19
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    :goto_1d
    check-cast v3, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    .line 938
    .local v3, "trackBundle":Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;
    if-nez v3, :cond_23

    .line 939
    const/4 v4, 0x0

    return-object v4

    .line 941
    :cond_23
    and-int/lit8 v4, v1, 0x1

    if-eqz v4, :cond_33

    .line 942
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v4

    .line 943
    .local v4, "baseDataPosition":J
    iget-object v6, v3, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;

    iput-wide v4, v6, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->dataPosition:J

    .line 944
    iget-object v6, v3, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;

    iput-wide v4, v6, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->auxiliaryDataPosition:J

    .line 947
    .end local v4    # "baseDataPosition":J
    :cond_33
    iget-object v4, v3, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->defaultSampleValues:Lcom/google/android/exoplayer2/extractor/mp4/DefaultSampleValues;

    .line 949
    .local v4, "defaultSampleValues":Lcom/google/android/exoplayer2/extractor/mp4/DefaultSampleValues;
    and-int/lit8 v5, v1, 0x2

    if-eqz v5, :cond_40

    .line 950
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    goto :goto_42

    .line 951
    :cond_40
    iget v5, v4, Lcom/google/android/exoplayer2/extractor/mp4/DefaultSampleValues;->sampleDescriptionIndex:I

    :goto_42
    nop

    .line 953
    .local v5, "defaultSampleDescriptionIndex":I
    and-int/lit8 v6, v1, 0x8

    if-eqz v6, :cond_4c

    .line 954
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v6

    goto :goto_4e

    .line 955
    :cond_4c
    iget v6, v4, Lcom/google/android/exoplayer2/extractor/mp4/DefaultSampleValues;->duration:I

    :goto_4e
    nop

    .line 957
    .local v6, "defaultSampleDuration":I
    and-int/lit8 v7, v1, 0x10

    if-eqz v7, :cond_58

    .line 958
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v7

    goto :goto_5a

    .line 959
    :cond_58
    iget v7, v4, Lcom/google/android/exoplayer2/extractor/mp4/DefaultSampleValues;->size:I

    :goto_5a
    nop

    .line 961
    .local v7, "defaultSampleSize":I
    and-int/lit8 v8, v1, 0x20

    if-eqz v8, :cond_64

    .line 962
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v8

    goto :goto_66

    .line 963
    :cond_64
    iget v8, v4, Lcom/google/android/exoplayer2/extractor/mp4/DefaultSampleValues;->flags:I

    :goto_66
    nop

    .line 964
    .local v8, "defaultSampleFlags":I
    iget-object v9, v3, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;

    new-instance v10, Lcom/google/android/exoplayer2/extractor/mp4/DefaultSampleValues;

    invoke-direct {v10, v5, v6, v7, v8}, Lcom/google/android/exoplayer2/extractor/mp4/DefaultSampleValues;-><init>(IIII)V

    iput-object v10, v9, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->header:Lcom/google/android/exoplayer2/extractor/mp4/DefaultSampleValues;

    .line 970
    return-object v3
.end method

.method private static parseTraf(Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;Landroid/util/SparseArray;ZI[B)V
    .registers 23
    .param p0, "traf"    # Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;
    .param p2, "haveSideloadedTrack"    # Z
    .param p3, "flags"    # I
    .param p4, "extendedTypeScratch"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;",
            "Landroid/util/SparseArray<",
            "Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;",
            ">;ZI[B)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 762
    .local p1, "trackBundles":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;>;"
    move-object/from16 v0, p0

    move/from16 v1, p3

    const v2, 0x74666864

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    .line 763
    .local v2, "tfhd":Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;
    iget-object v3, v2, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    move-object/from16 v4, p1

    move/from16 v5, p2

    invoke-static {v3, v4, v5}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->parseTfhd(Lcom/google/android/exoplayer2/util/ParsableByteArray;Landroid/util/SparseArray;Z)Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    move-result-object v3

    .line 764
    .local v3, "trackBundle":Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;
    if-nez v3, :cond_1e

    .line 765
    return-void

    .line 768
    :cond_1e
    iget-object v6, v3, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;

    .line 769
    .local v6, "fragment":Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;
    iget-wide v7, v6, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->nextFragmentDecodeTime:J

    .line 770
    .local v7, "fragmentDecodeTime":J
    iget-boolean v9, v6, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->nextFragmentDecodeTimeIncludesMoov:Z

    .line 771
    .local v9, "fragmentDecodeTimeIncludesMoov":Z
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->resetFragmentInfo()V

    .line 772
    const/4 v10, 0x1

    # setter for: Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentlyInFragment:Z
    invoke-static {v3, v10}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->access$002(Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;Z)Z

    .line 773
    const v11, 0x74666474

    invoke-virtual {v0, v11}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v11

    .line 774
    .local v11, "tfdtAtom":Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;
    if-eqz v11, :cond_43

    and-int/lit8 v12, v1, 0x2

    if-nez v12, :cond_43

    .line 775
    iget-object v12, v11, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-static {v12}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->parseTfdt(Lcom/google/android/exoplayer2/util/ParsableByteArray;)J

    move-result-wide v12

    iput-wide v12, v6, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->nextFragmentDecodeTime:J

    .line 776
    iput-boolean v10, v6, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->nextFragmentDecodeTimeIncludesMoov:Z

    goto :goto_47

    .line 778
    :cond_43
    iput-wide v7, v6, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->nextFragmentDecodeTime:J

    .line 779
    iput-boolean v9, v6, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->nextFragmentDecodeTimeIncludesMoov:Z

    .line 782
    :goto_47
    invoke-static {v0, v3, v1}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->parseTruns(Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;I)V

    .line 785
    iget-object v10, v3, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->moovSampleTable:Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    iget-object v10, v10, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->track:Lcom/google/android/exoplayer2/extractor/mp4/Track;

    iget-object v12, v6, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->header:Lcom/google/android/exoplayer2/extractor/mp4/DefaultSampleValues;

    .line 787
    invoke-static {v12}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/exoplayer2/extractor/mp4/DefaultSampleValues;

    iget v12, v12, Lcom/google/android/exoplayer2/extractor/mp4/DefaultSampleValues;->sampleDescriptionIndex:I

    .line 786
    invoke-virtual {v10, v12}, Lcom/google/android/exoplayer2/extractor/mp4/Track;->getSampleDescriptionEncryptionBox(I)Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    move-result-object v10

    .line 789
    .local v10, "encryptionBox":Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;
    const v12, 0x7361697a

    invoke-virtual {v0, v12}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v12

    .line 790
    .local v12, "saiz":Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;
    if-eqz v12, :cond_70

    .line 791
    invoke-static {v10}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    iget-object v14, v12, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-static {v13, v14, v6}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->parseSaiz(Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;Lcom/google/android/exoplayer2/util/ParsableByteArray;Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;)V

    .line 794
    :cond_70
    const v13, 0x7361696f

    invoke-virtual {v0, v13}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v13

    .line 795
    .local v13, "saio":Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;
    if-eqz v13, :cond_7e

    .line 796
    iget-object v14, v13, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-static {v14, v6}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->parseSaio(Lcom/google/android/exoplayer2/util/ParsableByteArray;Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;)V

    .line 799
    :cond_7e
    const v14, 0x73656e63

    invoke-virtual {v0, v14}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v14

    .line 800
    .local v14, "senc":Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;
    if-eqz v14, :cond_8c

    .line 801
    iget-object v15, v14, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-static {v15, v6}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->parseSenc(Lcom/google/android/exoplayer2/util/ParsableByteArray;Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;)V

    .line 804
    :cond_8c
    if-eqz v10, :cond_91

    iget-object v15, v10, Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;->schemeType:Ljava/lang/String;

    goto :goto_92

    :cond_91
    const/4 v15, 0x0

    :goto_92
    invoke-static {v0, v15, v6}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->parseSampleGroups(Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;Ljava/lang/String;Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;)V

    .line 806
    iget-object v15, v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->leafChildren:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    .line 807
    .local v15, "leafChildrenSize":I
    const/16 v16, 0x0

    move/from16 v1, v16

    .local v1, "i":I
    :goto_9f
    if-ge v1, v15, :cond_c7

    .line 808
    move-object/from16 v16, v2

    .end local v2    # "tfhd":Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;
    .local v16, "tfhd":Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->leafChildren:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    .line 809
    .local v2, "atom":Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;
    iget v0, v2, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->type:I

    move-object/from16 v17, v3

    .end local v3    # "trackBundle":Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;
    .local v17, "trackBundle":Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;
    const v3, 0x75756964

    if-ne v0, v3, :cond_bc

    .line 810
    iget-object v0, v2, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    move-object/from16 v3, p4

    invoke-static {v0, v6, v3}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->parseUuid(Lcom/google/android/exoplayer2/util/ParsableByteArray;Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;[B)V

    goto :goto_be

    .line 809
    :cond_bc
    move-object/from16 v3, p4

    .line 807
    .end local v2    # "atom":Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;
    :goto_be
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p0

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    goto :goto_9f

    .line 813
    .end local v1    # "i":I
    .end local v16    # "tfhd":Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;
    .end local v17    # "trackBundle":Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;
    .local v2, "tfhd":Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;
    .restart local v3    # "trackBundle":Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;
    :cond_c7
    return-void
.end method

.method private static parseTrex(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Landroid/util/Pair;
    .registers 8
    .param p0, "trex"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/util/ParsableByteArray;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/exoplayer2/extractor/mp4/DefaultSampleValues;",
            ">;"
        }
    .end annotation

    .line 713
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 714
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 715
    .local v0, "trackId":I
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 716
    .local v1, "defaultSampleDescriptionIndex":I
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v2

    .line 717
    .local v2, "defaultSampleDuration":I
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v3

    .line 718
    .local v3, "defaultSampleSize":I
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v4

    .line 720
    .local v4, "defaultSampleFlags":I
    nop

    .line 721
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/google/android/exoplayer2/extractor/mp4/DefaultSampleValues;

    invoke-direct {v6, v1, v2, v3, v4}, Lcom/google/android/exoplayer2/extractor/mp4/DefaultSampleValues;-><init>(IIII)V

    .line 720
    invoke-static {v5, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    return-object v5
.end method

.method private static parseTrun(Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;IILcom/google/android/exoplayer2/util/ParsableByteArray;I)I
    .registers 42
    .param p0, "trackBundle"    # Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;
    .param p1, "index"    # I
    .param p2, "flags"    # I
    .param p3, "trun"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p4, "trackRunStart"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 1023
    move-object/from16 v0, p0

    const/16 v1, 0x8

    move-object/from16 v2, p3

    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 1024
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 1025
    .local v1, "fullAtom":I
    invoke-static {v1}, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->parseFullAtomFlags(I)I

    move-result v3

    .line 1027
    .local v3, "atomFlags":I
    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->moovSampleTable:Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    iget-object v4, v4, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->track:Lcom/google/android/exoplayer2/extractor/mp4/Track;

    .line 1028
    .local v4, "track":Lcom/google/android/exoplayer2/extractor/mp4/Track;
    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;

    .line 1029
    .local v5, "fragment":Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;
    iget-object v6, v5, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->header:Lcom/google/android/exoplayer2/extractor/mp4/DefaultSampleValues;

    invoke-static {v6}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/exoplayer2/extractor/mp4/DefaultSampleValues;

    .line 1031
    .local v6, "defaultSampleValues":Lcom/google/android/exoplayer2/extractor/mp4/DefaultSampleValues;
    iget-object v7, v5, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->trunLength:[I

    invoke-virtual/range {p3 .. p3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v8

    aput v8, v7, p1

    .line 1032
    iget-object v7, v5, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->trunDataPosition:[J

    iget-wide v8, v5, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->dataPosition:J

    aput-wide v8, v7, p1

    .line 1033
    and-int/lit8 v7, v3, 0x1

    if-eqz v7, :cond_3d

    .line 1034
    iget-object v7, v5, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->trunDataPosition:[J

    aget-wide v8, v7, p1

    invoke-virtual/range {p3 .. p3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v10

    int-to-long v10, v10

    add-long/2addr v8, v10

    aput-wide v8, v7, p1

    .line 1037
    :cond_3d
    and-int/lit8 v7, v3, 0x4

    const/4 v8, 0x0

    if-eqz v7, :cond_44

    const/4 v7, 0x1

    goto :goto_45

    :cond_44
    const/4 v7, 0x0

    .line 1038
    .local v7, "firstSampleFlagsPresent":Z
    :goto_45
    iget v10, v6, Lcom/google/android/exoplayer2/extractor/mp4/DefaultSampleValues;->flags:I

    .line 1039
    .local v10, "firstSampleFlags":I
    if-eqz v7, :cond_4d

    .line 1040
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v10

    .line 1043
    :cond_4d
    and-int/lit16 v11, v3, 0x100

    if-eqz v11, :cond_53

    const/4 v11, 0x1

    goto :goto_54

    :cond_53
    const/4 v11, 0x0

    .line 1044
    .local v11, "sampleDurationsPresent":Z
    :goto_54
    and-int/lit16 v12, v3, 0x200

    if-eqz v12, :cond_5a

    const/4 v12, 0x1

    goto :goto_5b

    :cond_5a
    const/4 v12, 0x0

    .line 1045
    .local v12, "sampleSizesPresent":Z
    :goto_5b
    and-int/lit16 v13, v3, 0x400

    if-eqz v13, :cond_61

    const/4 v13, 0x1

    goto :goto_62

    :cond_61
    const/4 v13, 0x0

    .line 1046
    .local v13, "sampleFlagsPresent":Z
    :goto_62
    and-int/lit16 v14, v3, 0x800

    if-eqz v14, :cond_68

    const/4 v14, 0x1

    goto :goto_69

    :cond_68
    const/4 v14, 0x0

    .line 1051
    .local v14, "sampleCompositionTimeOffsetsPresent":Z
    :goto_69
    const-wide/16 v15, 0x0

    .line 1054
    .local v15, "edtsOffset":J
    invoke-static {v4}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->isEdtsListDurationForEntireMediaTimeline(Lcom/google/android/exoplayer2/extractor/mp4/Track;)Z

    move-result v17

    if-eqz v17, :cond_7b

    .line 1055
    iget-object v9, v4, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListMediaTimes:[J

    invoke-static {v9}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [J

    aget-wide v15, v9, v8

    .line 1058
    :cond_7b
    iget-object v9, v5, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->sampleSizeTable:[I

    .line 1059
    .local v9, "sampleSizeTable":[I
    iget-object v8, v5, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->samplePresentationTimesUs:[J

    .line 1060
    .local v8, "samplePresentationTimesUs":[J
    move/from16 v18, v1

    .end local v1    # "fullAtom":I
    .local v18, "fullAtom":I
    iget-object v1, v5, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->sampleIsSyncFrameTable:[Z

    .line 1062
    .local v1, "sampleIsSyncFrameTable":[Z
    iget v2, v4, Lcom/google/android/exoplayer2/extractor/mp4/Track;->type:I

    move/from16 v19, v3

    .end local v3    # "atomFlags":I
    .local v19, "atomFlags":I
    const/4 v3, 0x2

    if-ne v2, v3, :cond_90

    and-int/lit8 v2, p2, 0x1

    if-eqz v2, :cond_90

    const/4 v2, 0x1

    goto :goto_91

    :cond_90
    const/4 v2, 0x0

    .line 1066
    .local v2, "workaroundEveryVideoFrameIsSyncFrame":Z
    :goto_91
    iget-object v3, v5, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->trunLength:[I

    aget v3, v3, p1

    add-int v3, p4, v3

    .line 1067
    .local v3, "trackRunEnd":I
    move-object/from16 v26, v1

    move/from16 v27, v2

    .end local v1    # "sampleIsSyncFrameTable":[Z
    .end local v2    # "workaroundEveryVideoFrameIsSyncFrame":Z
    .local v26, "sampleIsSyncFrameTable":[Z
    .local v27, "workaroundEveryVideoFrameIsSyncFrame":Z
    iget-wide v1, v4, Lcom/google/android/exoplayer2/extractor/mp4/Track;->timescale:J

    .line 1068
    .local v1, "timescale":J
    move-object/from16 v29, v9

    move/from16 v28, v10

    .end local v9    # "sampleSizeTable":[I
    .end local v10    # "firstSampleFlags":I
    .local v28, "firstSampleFlags":I
    .local v29, "sampleSizeTable":[I
    iget-wide v9, v5, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->nextFragmentDecodeTime:J

    .line 1069
    .local v9, "cumulativeTime":J
    move/from16 v20, p4

    move-object/from16 v30, v4

    move/from16 v4, v20

    .local v4, "i":I
    .local v30, "track":Lcom/google/android/exoplayer2/extractor/mp4/Track;
    :goto_a9
    if-ge v4, v3, :cond_14d

    .line 1072
    if-eqz v11, :cond_b4

    invoke-virtual/range {p3 .. p3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v20

    move/from16 v31, v11

    goto :goto_ba

    :cond_b4
    move/from16 v31, v11

    .end local v11    # "sampleDurationsPresent":Z
    .local v31, "sampleDurationsPresent":Z
    iget v11, v6, Lcom/google/android/exoplayer2/extractor/mp4/DefaultSampleValues;->duration:I

    move/from16 v20, v11

    :goto_ba
    invoke-static/range {v20 .. v20}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->checkNonNegative(I)I

    move-result v11

    .line 1074
    .local v11, "sampleDuration":I
    if-eqz v12, :cond_c7

    invoke-virtual/range {p3 .. p3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v20

    move/from16 v32, v12

    goto :goto_cd

    :cond_c7
    move/from16 v32, v12

    .end local v12    # "sampleSizesPresent":Z
    .local v32, "sampleSizesPresent":Z
    iget v12, v6, Lcom/google/android/exoplayer2/extractor/mp4/DefaultSampleValues;->size:I

    move/from16 v20, v12

    :goto_cd
    invoke-static/range {v20 .. v20}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->checkNonNegative(I)I

    move-result v12

    .line 1076
    .local v12, "sampleSize":I
    if-eqz v13, :cond_da

    .line 1077
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v20

    move/from16 v33, v7

    goto :goto_e9

    .line 1078
    :cond_da
    if-nez v4, :cond_e3

    if-eqz v7, :cond_e3

    move/from16 v33, v7

    move/from16 v20, v28

    goto :goto_e9

    :cond_e3
    move/from16 v33, v7

    .end local v7    # "firstSampleFlagsPresent":Z
    .local v33, "firstSampleFlagsPresent":Z
    iget v7, v6, Lcom/google/android/exoplayer2/extractor/mp4/DefaultSampleValues;->flags:I

    move/from16 v20, v7

    :goto_e9
    move/from16 v7, v20

    .line 1079
    .local v7, "sampleFlags":I
    const/16 v20, 0x0

    .line 1080
    .local v20, "sampleCompositionTimeOffset":I
    if-eqz v14, :cond_f8

    .line 1086
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v20

    move-object/from16 v34, v6

    move/from16 v6, v20

    goto :goto_fc

    .line 1080
    :cond_f8
    move-object/from16 v34, v6

    move/from16 v6, v20

    .line 1088
    .end local v20    # "sampleCompositionTimeOffset":I
    .local v6, "sampleCompositionTimeOffset":I
    .local v34, "defaultSampleValues":Lcom/google/android/exoplayer2/extractor/mp4/DefaultSampleValues;
    :goto_fc
    move/from16 v35, v13

    move/from16 v36, v14

    .end local v13    # "sampleFlagsPresent":Z
    .end local v14    # "sampleCompositionTimeOffsetsPresent":Z
    .local v35, "sampleFlagsPresent":Z
    .local v36, "sampleCompositionTimeOffsetsPresent":Z
    int-to-long v13, v6

    add-long/2addr v13, v9

    sub-long/2addr v13, v15

    .line 1089
    .local v13, "samplePresentationTime":J
    const-wide/32 v22, 0xf4240

    .line 1090
    move-wide/from16 v20, v13

    move-wide/from16 v24, v1

    invoke-static/range {v20 .. v25}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v20

    aput-wide v20, v8, v4

    .line 1091
    move-wide/from16 v20, v1

    .end local v1    # "timescale":J
    .local v20, "timescale":J
    iget-boolean v1, v5, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->nextFragmentDecodeTimeIncludesMoov:Z

    if-nez v1, :cond_124

    .line 1092
    aget-wide v1, v8, v4

    move/from16 v22, v6

    .end local v6    # "sampleCompositionTimeOffset":I
    .local v22, "sampleCompositionTimeOffset":I
    iget-object v6, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->moovSampleTable:Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    move-wide/from16 v23, v13

    .end local v13    # "samplePresentationTime":J
    .local v23, "samplePresentationTime":J
    iget-wide v13, v6, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->durationUs:J

    add-long/2addr v1, v13

    aput-wide v1, v8, v4

    goto :goto_128

    .line 1091
    .end local v22    # "sampleCompositionTimeOffset":I
    .end local v23    # "samplePresentationTime":J
    .restart local v6    # "sampleCompositionTimeOffset":I
    .restart local v13    # "samplePresentationTime":J
    :cond_124
    move/from16 v22, v6

    move-wide/from16 v23, v13

    .line 1094
    .end local v6    # "sampleCompositionTimeOffset":I
    .end local v13    # "samplePresentationTime":J
    .restart local v22    # "sampleCompositionTimeOffset":I
    .restart local v23    # "samplePresentationTime":J
    :goto_128
    aput v12, v29, v4

    .line 1095
    shr-int/lit8 v1, v7, 0x10

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-nez v1, :cond_136

    if-eqz v27, :cond_134

    if-nez v4, :cond_136

    :cond_134
    const/4 v1, 0x1

    goto :goto_137

    :cond_136
    const/4 v1, 0x0

    :goto_137
    aput-boolean v1, v26, v4

    .line 1097
    int-to-long v13, v11

    add-long/2addr v9, v13

    .line 1069
    .end local v7    # "sampleFlags":I
    .end local v11    # "sampleDuration":I
    .end local v12    # "sampleSize":I
    .end local v22    # "sampleCompositionTimeOffset":I
    .end local v23    # "samplePresentationTime":J
    add-int/lit8 v4, v4, 0x1

    move-wide/from16 v1, v20

    move/from16 v11, v31

    move/from16 v12, v32

    move/from16 v7, v33

    move-object/from16 v6, v34

    move/from16 v13, v35

    move/from16 v14, v36

    goto/16 :goto_a9

    .line 1099
    .end local v4    # "i":I
    .end local v20    # "timescale":J
    .end local v31    # "sampleDurationsPresent":Z
    .end local v32    # "sampleSizesPresent":Z
    .end local v33    # "firstSampleFlagsPresent":Z
    .end local v34    # "defaultSampleValues":Lcom/google/android/exoplayer2/extractor/mp4/DefaultSampleValues;
    .end local v35    # "sampleFlagsPresent":Z
    .end local v36    # "sampleCompositionTimeOffsetsPresent":Z
    .restart local v1    # "timescale":J
    .local v6, "defaultSampleValues":Lcom/google/android/exoplayer2/extractor/mp4/DefaultSampleValues;
    .local v7, "firstSampleFlagsPresent":Z
    .local v11, "sampleDurationsPresent":Z
    .local v12, "sampleSizesPresent":Z
    .local v13, "sampleFlagsPresent":Z
    .restart local v14    # "sampleCompositionTimeOffsetsPresent":Z
    :cond_14d
    iput-wide v9, v5, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->nextFragmentDecodeTime:J

    .line 1100
    return v3
.end method

.method private static parseTruns(Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;I)V
    .registers 14
    .param p0, "traf"    # Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;
    .param p1, "trackBundle"    # Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 817
    const/4 v0, 0x0

    .line 818
    .local v0, "trunCount":I
    const/4 v1, 0x0

    .line 819
    .local v1, "totalSampleCount":I
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->leafChildren:Ljava/util/List;

    .line 820
    .local v2, "leafChildren":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 821
    .local v3, "leafChildrenSize":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_9
    const v5, 0x7472756e

    if-ge v4, v3, :cond_2b

    .line 822
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    .line 823
    .local v6, "atom":Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;
    iget v7, v6, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->type:I

    if-ne v7, v5, :cond_28

    .line 824
    iget-object v5, v6, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 825
    .local v5, "trunData":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    const/16 v7, 0xc

    invoke-virtual {v5, v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 826
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v7

    .line 827
    .local v7, "trunSampleCount":I
    if-lez v7, :cond_28

    .line 828
    add-int/2addr v1, v7

    .line 829
    add-int/lit8 v0, v0, 0x1

    .line 821
    .end local v5    # "trunData":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .end local v6    # "atom":Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;
    .end local v7    # "trunSampleCount":I
    :cond_28
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 833
    .end local v4    # "i":I
    :cond_2b
    const/4 v4, 0x0

    iput v4, p1, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentTrackRunIndex:I

    .line 834
    iput v4, p1, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleInTrackRun:I

    .line 835
    iput v4, p1, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    .line 836
    iget-object v4, p1, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;

    invoke-virtual {v4, v0, v1}, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->initTables(II)V

    .line 838
    const/4 v4, 0x0

    .line 839
    .local v4, "trunIndex":I
    const/4 v6, 0x0

    .line 840
    .local v6, "trunStartPosition":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_3a
    if-ge v7, v3, :cond_53

    .line 841
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    .line 842
    .local v8, "trun":Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;
    iget v9, v8, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->type:I

    if-ne v9, v5, :cond_50

    .line 843
    add-int/lit8 v9, v4, 0x1

    .end local v4    # "trunIndex":I
    .local v9, "trunIndex":I
    iget-object v10, v8, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 844
    invoke-static {p1, v4, p2, v10, v6}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->parseTrun(Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;IILcom/google/android/exoplayer2/util/ParsableByteArray;I)I

    move-result v4

    move v6, v4

    move v4, v9

    .line 840
    .end local v8    # "trun":Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;
    .end local v9    # "trunIndex":I
    .restart local v4    # "trunIndex":I
    :cond_50
    add-int/lit8 v7, v7, 0x1

    goto :goto_3a

    .line 847
    .end local v7    # "i":I
    :cond_53
    return-void
.end method

.method private static parseUuid(Lcom/google/android/exoplayer2/util/ParsableByteArray;Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;[B)V
    .registers 5
    .param p0, "uuid"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p1, "out"    # Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;
    .param p2, "extendedTypeScratch"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 1114
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 1115
    const/4 v0, 0x0

    const/16 v1, 0x10

    invoke-virtual {p0, p2, v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 1118
    sget-object v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->PIFF_SAMPLE_ENCRYPTION_BOX_EXTENDED_TYPE:[B

    invoke-static {p2, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_14

    .line 1119
    return-void

    .line 1125
    :cond_14
    invoke-static {p0, v1, p1}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->parseSenc(Lcom/google/android/exoplayer2/util/ParsableByteArray;ILcom/google/android/exoplayer2/extractor/mp4/TrackFragment;)V

    .line 1126
    return-void
.end method

.method private processAtomEnded(J)V
    .registers 6
    .param p1, "atomEndPosition"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 473
    nop

    :goto_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_23

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->endPosition:J

    cmp-long v2, v0, p1

    if-nez v2, :cond_23

    .line 474
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->onContainerAtomRead(Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;)V

    goto :goto_1

    .line 476
    :cond_23
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->enterReadingAtomHeaderState()V

    .line 477
    return-void
.end method

.method private readAtomHeader(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z
    .registers 13
    .param p1, "input"    # Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 365
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    const/16 v1, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_2c

    .line 367
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomHeader:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v0

    invoke-interface {p1, v0, v2, v1, v3}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BIIZ)Z

    move-result v0

    if-nez v0, :cond_15

    .line 368
    return v2

    .line 370
    :cond_15
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    .line 371
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomHeader:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 372
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomHeader:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    .line 373
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomHeader:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomType:I

    .line 376
    :cond_2c
    iget-wide v4, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    const-wide/16 v6, 0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_4d

    .line 378
    const/16 v0, 0x8

    .line 379
    .local v0, "headerBytesRemaining":I
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomHeader:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v4

    invoke-interface {p1, v4, v1, v0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    .line 380
    iget v4, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    add-int/2addr v4, v0

    iput v4, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    .line 381
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomHeader:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    .end local v0    # "headerBytesRemaining":I
    goto :goto_80

    .line 382
    :cond_4d
    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-nez v0, :cond_80

    .line 385
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getLength()J

    move-result-wide v4

    .line 386
    .local v4, "endPosition":J
    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_6f

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6f

    .line 387
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    iget-wide v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->endPosition:J

    .line 389
    :cond_6f
    cmp-long v0, v4, v6

    if-eqz v0, :cond_81

    .line 390
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v6

    sub-long v6, v4, v6

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    int-to-long v8, v0

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    goto :goto_81

    .line 382
    .end local v4    # "endPosition":J
    :cond_80
    :goto_80
    nop

    .line 394
    :cond_81
    :goto_81
    iget-wide v4, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    int-to-long v6, v0

    cmp-long v0, v4, v6

    if-ltz v0, :cond_15c

    .line 399
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v4

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    int-to-long v6, v0

    sub-long/2addr v4, v6

    .line 400
    .local v4, "atomPosition":J
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomType:I

    const v6, 0x6d646174

    const v7, 0x6d6f6f66

    if-eq v0, v7, :cond_9e

    if-ne v0, v6, :cond_b0

    .line 401
    :cond_9e
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->haveOutputSeekMap:Z

    if-nez v0, :cond_b0

    .line 403
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    new-instance v8, Lcom/google/android/exoplayer2/extractor/SeekMap$Unseekable;

    iget-wide v9, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->durationUs:J

    invoke-direct {v8, v9, v10, v4, v5}, Lcom/google/android/exoplayer2/extractor/SeekMap$Unseekable;-><init>(JJ)V

    invoke-interface {v0, v8}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->seekMap(Lcom/google/android/exoplayer2/extractor/SeekMap;)V

    .line 404
    iput-boolean v3, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->haveOutputSeekMap:Z

    .line 408
    :cond_b0
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomType:I

    if-ne v0, v7, :cond_d0

    .line 410
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 411
    .local v0, "trackCount":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_bb
    if-ge v7, v0, :cond_d0

    .line 412
    iget-object v8, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget-object v8, v8, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;

    .line 413
    .local v8, "fragment":Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;
    iput-wide v4, v8, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->atomPosition:J

    .line 414
    iput-wide v4, v8, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->auxiliaryDataPosition:J

    .line 415
    iput-wide v4, v8, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->dataPosition:J

    .line 411
    .end local v8    # "fragment":Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;
    add-int/lit8 v7, v7, 0x1

    goto :goto_bb

    .line 419
    .end local v0    # "trackCount":I
    .end local v7    # "i":I
    :cond_d0
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomType:I

    const/4 v7, 0x0

    if-ne v0, v6, :cond_e0

    .line 420
    iput-object v7, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    .line 421
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->endOfMdatPosition:J

    .line 422
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    .line 423
    return v3

    .line 426
    :cond_e0
    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->shouldParseContainerAtom(I)Z

    move-result v0

    if-eqz v0, :cond_10d

    .line 427
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v0

    iget-wide v6, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    add-long/2addr v0, v6

    const-wide/16 v6, 0x8

    sub-long/2addr v0, v6

    .line 428
    .local v0, "endPosition":J
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    new-instance v6, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    iget v7, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomType:I

    invoke-direct {v6, v7, v0, v1}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;-><init>(IJ)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 429
    iget-wide v6, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    int-to-long v8, v2

    cmp-long v2, v6, v8

    if-nez v2, :cond_109

    .line 430
    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->processAtomEnded(J)V

    goto :goto_10c

    .line 433
    :cond_109
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->enterReadingAtomHeaderState()V

    .line 435
    .end local v0    # "endPosition":J
    :goto_10c
    goto :goto_154

    :cond_10d
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomType:I

    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->shouldParseLeafAtom(I)Z

    move-result v0

    const-wide/32 v8, 0x7fffffff

    if-eqz v0, :cond_14a

    .line 436
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    if-ne v0, v1, :cond_143

    .line 440
    iget-wide v6, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    cmp-long v0, v6, v8

    if-gtz v0, :cond_13c

    .line 444
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-wide v6, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    long-to-int v7, v6

    invoke-direct {v0, v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    .line 445
    .local v0, "atomData":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomHeader:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v6

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v7

    invoke-static {v6, v2, v7, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 446
    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 447
    iput v3, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    .line 448
    .end local v0    # "atomData":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    goto :goto_154

    .line 441
    :cond_13c
    const-string v0, "Leaf atom with length > 2147483647 (unsupported)."

    invoke-static {v0}, Lcom/google/android/exoplayer2/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v0

    throw v0

    .line 437
    :cond_143
    const-string v0, "Leaf atom defines extended atom size (unsupported)."

    invoke-static {v0}, Lcom/google/android/exoplayer2/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v0

    throw v0

    .line 449
    :cond_14a
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    cmp-long v2, v0, v8

    if-gtz v2, :cond_155

    .line 453
    iput-object v7, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 454
    iput v3, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    .line 457
    :goto_154
    return v3

    .line 450
    :cond_155
    const-string v0, "Skipping atom with length > 2147483647 (unsupported)."

    invoke-static {v0}, Lcom/google/android/exoplayer2/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v0

    throw v0

    .line 395
    .end local v4    # "atomPosition":J
    :cond_15c
    const-string v0, "Atom size less than header length (unsupported)."

    invoke-static {v0}, Lcom/google/android/exoplayer2/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v0

    goto :goto_164

    :goto_163
    throw v0

    :goto_164
    goto :goto_163
.end method

.method private readAtomPayload(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)V
    .registers 7
    .param p1, "input"    # Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 461
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    long-to-int v1, v0

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    sub-int/2addr v1, v0

    .line 462
    .local v1, "atomPayloadSize":I
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 463
    .local v0, "atomData":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    if-eqz v0, :cond_22

    .line 464
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v2

    const/16 v3, 0x8

    invoke-interface {p1, v2, v3, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    .line 465
    new-instance v2, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    iget v3, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomType:I

    invoke-direct {v2, v3, v0}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;-><init>(ILcom/google/android/exoplayer2/util/ParsableByteArray;)V

    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v3

    invoke-direct {p0, v2, v3, v4}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->onLeafAtomRead(Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;J)V

    goto :goto_25

    .line 467
    :cond_22
    invoke-interface {p1, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    .line 469
    :goto_25
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->processAtomEnded(J)V

    .line 470
    return-void
.end method

.method private readEncryptionData(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)V
    .registers 11
    .param p1, "input"    # Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1312
    const/4 v0, 0x0

    .line 1313
    .local v0, "nextTrackBundle":Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;
    const-wide v1, 0x7fffffffffffffffL

    .line 1314
    .local v1, "nextDataOffset":J
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 1315
    .local v3, "trackBundlesSize":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_d
    if-ge v4, v3, :cond_31

    .line 1316
    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget-object v5, v5, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;

    .line 1317
    .local v5, "trackFragment":Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;
    iget-boolean v6, v5, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->sampleEncryptionDataNeedsFill:Z

    if-eqz v6, :cond_2e

    iget-wide v6, v5, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->auxiliaryDataPosition:J

    cmp-long v8, v6, v1

    if-gez v8, :cond_2e

    .line 1319
    iget-wide v1, v5, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->auxiliaryDataPosition:J

    .line 1320
    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    .line 1315
    .end local v5    # "trackFragment":Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;
    :cond_2e
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    .line 1323
    .end local v4    # "i":I
    :cond_31
    if-nez v0, :cond_37

    .line 1324
    const/4 v4, 0x3

    iput v4, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    .line 1325
    return-void

    .line 1327
    :cond_37
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v4

    sub-long v4, v1, v4

    long-to-int v5, v4

    .line 1328
    .local v5, "bytesToSkip":I
    if-ltz v5, :cond_49

    .line 1332
    invoke-interface {p1, v5}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    .line 1333
    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;

    invoke-virtual {v4, p1}, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->fillEncryptionData(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)V

    .line 1334
    return-void

    .line 1329
    :cond_49
    const-string v4, "Offset to encryption data was negative."

    const/4 v6, 0x0

    invoke-static {v4, v6}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v4

    goto :goto_52

    :goto_51
    throw v4

    :goto_52
    goto :goto_51
.end method

.method private readSample(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z
    .registers 20
    .param p1, "input"    # Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1352
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    .line 1353
    .local v2, "trackBundle":Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;
    const/4 v3, 0x0

    const/4 v4, 0x0

    if-nez v2, :cond_44

    .line 1354
    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-static {v5}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->getNextTrackBundle(Landroid/util/SparseArray;)Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    move-result-object v2

    .line 1355
    if-nez v2, :cond_2a

    .line 1358
    iget-wide v5, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->endOfMdatPosition:J

    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v7

    sub-long/2addr v5, v7

    long-to-int v6, v5

    .line 1359
    .local v6, "bytesToSkip":I
    if-ltz v6, :cond_23

    .line 1363
    invoke-interface {v1, v6}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    .line 1364
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->enterReadingAtomHeaderState()V

    .line 1365
    return v4

    .line 1360
    :cond_23
    const-string v4, "Offset to end of mdat was negative."

    invoke-static {v4, v3}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v3

    throw v3

    .line 1368
    .end local v6    # "bytesToSkip":I
    :cond_2a
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->getCurrentSampleOffset()J

    move-result-wide v5

    .line 1370
    .local v5, "nextDataPosition":J
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v7

    sub-long v7, v5, v7

    long-to-int v8, v7

    .line 1371
    .local v8, "bytesToSkip":I
    if-gez v8, :cond_3f

    .line 1373
    const-string v7, "FragmentedMp4Extractor"

    const-string v9, "Ignoring negative offset to sample data."

    invoke-static {v7, v9}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1374
    const/4 v8, 0x0

    .line 1376
    :cond_3f
    invoke-interface {v1, v8}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    .line 1377
    iput-object v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    .line 1379
    .end local v5    # "nextDataPosition":J
    .end local v8    # "bytesToSkip":I
    :cond_44
    iget v5, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    const/4 v6, 0x3

    const/4 v7, 0x4

    const/4 v8, 0x1

    if-ne v5, v6, :cond_bc

    .line 1380
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->getCurrentSampleSize()I

    move-result v5

    iput v5, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    .line 1382
    iget v5, v2, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    iget v9, v2, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->firstSampleToOutputIndex:I

    if-ge v5, v9, :cond_6a

    .line 1383
    iget v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    invoke-interface {v1, v4}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    .line 1384
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->skipSampleEncryptionData()V

    .line 1385
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->next()Z

    move-result v4

    if-nez v4, :cond_67

    .line 1386
    iput-object v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    .line 1388
    :cond_67
    iput v6, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    .line 1389
    return v8

    .line 1392
    :cond_6a
    iget-object v5, v2, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->moovSampleTable:Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    iget-object v5, v5, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->track:Lcom/google/android/exoplayer2/extractor/mp4/Track;

    iget v5, v5, Lcom/google/android/exoplayer2/extractor/mp4/Track;->sampleTransformation:I

    if-ne v5, v8, :cond_7c

    .line 1394
    iget v5, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    const/16 v9, 0x8

    sub-int/2addr v5, v9

    iput v5, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    .line 1395
    invoke-interface {v1, v9}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    .line 1398
    :cond_7c
    iget-object v5, v2, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->moovSampleTable:Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    iget-object v5, v5, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->track:Lcom/google/android/exoplayer2/extractor/mp4/Track;

    iget-object v5, v5, Lcom/google/android/exoplayer2/extractor/mp4/Track;->format:Lcom/google/android/exoplayer2/Format;

    iget-object v5, v5, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    const-string v9, "audio/ac4"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a9

    .line 1400
    iget v5, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    .line 1401
    const/4 v9, 0x7

    invoke-virtual {v2, v5, v9}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->outputSampleEncryptionData(II)I

    move-result v5

    iput v5, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    .line 1402
    iget v5, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    iget-object v10, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-static {v5, v10}, Lcom/google/android/exoplayer2/audio/Ac4Util;->getAc4SampleHeader(ILcom/google/android/exoplayer2/util/ParsableByteArray;)V

    .line 1403
    iget-object v5, v2, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    iget-object v10, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-interface {v5, v10, v9}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V

    .line 1404
    iget v5, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    add-int/2addr v5, v9

    iput v5, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    goto :goto_b1

    .line 1406
    :cond_a9
    iget v5, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    .line 1407
    invoke-virtual {v2, v5, v4}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->outputSampleEncryptionData(II)I

    move-result v5

    iput v5, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    .line 1409
    :goto_b1
    iget v5, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    iget v9, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    add-int/2addr v5, v9

    iput v5, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    .line 1410
    iput v7, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    .line 1411
    iput v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleCurrentNalBytesRemaining:I

    .line 1414
    :cond_bc
    iget-object v5, v2, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->moovSampleTable:Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    iget-object v5, v5, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->track:Lcom/google/android/exoplayer2/extractor/mp4/Track;

    .line 1415
    .local v5, "track":Lcom/google/android/exoplayer2/extractor/mp4/Track;
    iget-object v15, v2, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    .line 1416
    .local v15, "output":Lcom/google/android/exoplayer2/extractor/TrackOutput;
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->getCurrentSamplePresentationTimeUs()J

    move-result-wide v9

    .line 1417
    .local v9, "sampleTimeUs":J
    iget-object v11, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->timestampAdjuster:Lcom/google/android/exoplayer2/util/TimestampAdjuster;

    if-eqz v11, :cond_d0

    .line 1418
    invoke-virtual {v11, v9, v10}, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->adjustSampleTimestamp(J)J

    move-result-wide v9

    move-wide v13, v9

    goto :goto_d1

    .line 1417
    :cond_d0
    move-wide v13, v9

    .line 1420
    .end local v9    # "sampleTimeUs":J
    .local v13, "sampleTimeUs":J
    :goto_d1
    iget v9, v5, Lcom/google/android/exoplayer2/extractor/mp4/Track;->nalUnitLengthFieldLength:I

    if-eqz v9, :cond_19f

    .line 1423
    iget-object v9, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->nalPrefix:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v9}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v9

    .line 1424
    .local v9, "nalPrefixData":[B
    aput-byte v4, v9, v4

    .line 1425
    aput-byte v4, v9, v8

    .line 1426
    const/4 v10, 0x2

    aput-byte v4, v9, v10

    .line 1427
    iget v10, v5, Lcom/google/android/exoplayer2/extractor/mp4/Track;->nalUnitLengthFieldLength:I

    add-int/2addr v10, v8

    .line 1428
    .local v10, "nalUnitPrefixLength":I
    iget v11, v5, Lcom/google/android/exoplayer2/extractor/mp4/Track;->nalUnitLengthFieldLength:I

    rsub-int/lit8 v11, v11, 0x4

    .line 1432
    .local v11, "nalUnitLengthFieldLengthDiff":I
    :goto_e9
    iget v12, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    iget v6, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    if-ge v12, v6, :cond_19e

    .line 1433
    iget v6, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleCurrentNalBytesRemaining:I

    if-nez v6, :cond_141

    .line 1435
    invoke-interface {v1, v9, v11, v10}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    .line 1436
    iget-object v6, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->nalPrefix:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v6, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 1437
    iget-object v6, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->nalPrefix:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v6

    .line 1438
    .local v6, "nalLengthInt":I
    if-lt v6, v8, :cond_13a

    .line 1442
    add-int/lit8 v12, v6, -0x1

    iput v12, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleCurrentNalBytesRemaining:I

    .line 1444
    iget-object v12, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->nalStartCode:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v12, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 1445
    iget-object v12, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->nalStartCode:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-interface {v15, v12, v7}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V

    .line 1447
    iget-object v12, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->nalPrefix:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-interface {v15, v12, v8}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V

    .line 1448
    iget-object v12, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->ceaTrackOutputs:[Lcom/google/android/exoplayer2/extractor/TrackOutput;

    array-length v12, v12

    if-lez v12, :cond_129

    iget-object v12, v5, Lcom/google/android/exoplayer2/extractor/mp4/Track;->format:Lcom/google/android/exoplayer2/Format;

    iget-object v12, v12, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    aget-byte v8, v9, v7

    .line 1450
    invoke-static {v12, v8}, Lcom/google/android/exoplayer2/util/NalUnitUtil;->isNalUnitSei(Ljava/lang/String;B)Z

    move-result v8

    if-eqz v8, :cond_129

    const/4 v8, 0x1

    goto :goto_12a

    :cond_129
    const/4 v8, 0x0

    :goto_12a
    iput-boolean v8, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->processSeiNalUnitPayload:Z

    .line 1451
    iget v8, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    add-int/lit8 v8, v8, 0x5

    iput v8, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    .line 1452
    iget v8, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    add-int/2addr v8, v11

    iput v8, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    .line 1453
    .end local v6    # "nalLengthInt":I
    const/4 v6, 0x3

    const/4 v8, 0x1

    goto :goto_e9

    .line 1439
    .restart local v6    # "nalLengthInt":I
    :cond_13a
    const-string v4, "Invalid NAL length"

    invoke-static {v4, v3}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v3

    throw v3

    .line 1455
    .end local v6    # "nalLengthInt":I
    :cond_141
    iget-boolean v8, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->processSeiNalUnitPayload:Z

    if-eqz v8, :cond_18a

    .line 1457
    iget-object v8, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->nalBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v8, v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset(I)V

    .line 1458
    iget-object v6, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->nalBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v6

    iget v8, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleCurrentNalBytesRemaining:I

    invoke-interface {v1, v6, v4, v8}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    .line 1459
    iget-object v6, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->nalBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget v8, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleCurrentNalBytesRemaining:I

    invoke-interface {v15, v6, v8}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V

    .line 1460
    iget v6, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleCurrentNalBytesRemaining:I

    .line 1462
    .local v6, "writtenBytes":I
    iget-object v8, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->nalBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 1463
    invoke-virtual {v8}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v8

    iget-object v12, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->nalBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v12}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v12

    invoke-static {v8, v12}, Lcom/google/android/exoplayer2/util/NalUnitUtil;->unescapeStream([BI)I

    move-result v8

    .line 1465
    .local v8, "unescapedLength":I
    iget-object v12, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->nalBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v7, v5, Lcom/google/android/exoplayer2/extractor/mp4/Track;->format:Lcom/google/android/exoplayer2/Format;

    iget-object v7, v7, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    const-string v3, "video/hevc"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v12, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 1466
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->nalBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v3, v8}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setLimit(I)V

    .line 1467
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->nalBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v7, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->ceaTrackOutputs:[Lcom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-static {v13, v14, v3, v7}, Lcom/google/android/exoplayer2/extractor/CeaUtil;->consume(JLcom/google/android/exoplayer2/util/ParsableByteArray;[Lcom/google/android/exoplayer2/extractor/TrackOutput;)V

    .line 1468
    .end local v8    # "unescapedLength":I
    goto :goto_18e

    .line 1470
    .end local v6    # "writtenBytes":I
    :cond_18a
    invoke-interface {v15, v1, v6, v4}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/upstream/DataReader;IZ)I

    move-result v6

    .line 1472
    .restart local v6    # "writtenBytes":I
    :goto_18e
    iget v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    add-int/2addr v3, v6

    iput v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    .line 1473
    iget v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleCurrentNalBytesRemaining:I

    sub-int/2addr v3, v6

    iput v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleCurrentNalBytesRemaining:I

    .line 1474
    .end local v6    # "writtenBytes":I
    const/4 v3, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x4

    const/4 v8, 0x1

    goto/16 :goto_e9

    .line 1476
    .end local v9    # "nalPrefixData":[B
    .end local v10    # "nalUnitPrefixLength":I
    .end local v11    # "nalUnitLengthFieldLengthDiff":I
    :cond_19e
    goto :goto_1b0

    .line 1477
    :cond_19f
    :goto_19f
    iget v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    iget v6, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    if-ge v3, v6, :cond_1b0

    .line 1478
    sub-int/2addr v6, v3

    invoke-interface {v15, v1, v6, v4}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/upstream/DataReader;IZ)I

    move-result v3

    .line 1479
    .local v3, "writtenBytes":I
    iget v6, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    add-int/2addr v6, v3

    iput v6, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    .line 1480
    .end local v3    # "writtenBytes":I
    goto :goto_19f

    .line 1483
    :cond_1b0
    :goto_1b0
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->getCurrentSampleFlags()I

    move-result v3

    .line 1486
    .local v3, "sampleFlags":I
    const/4 v4, 0x0

    .line 1487
    .local v4, "cryptoData":Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->getEncryptionBoxIfEncrypted()Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    move-result-object v6

    .line 1488
    .local v6, "encryptionBox":Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;
    if-eqz v6, :cond_1bd

    .line 1489
    iget-object v4, v6, Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;->cryptoData:Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;

    .line 1492
    :cond_1bd
    iget v7, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    const/4 v8, 0x0

    move-object v9, v15

    move-wide v10, v13

    move v12, v3

    move-object/from16 v16, v5

    move-object/from16 v17, v6

    move-wide v5, v13

    .end local v6    # "encryptionBox":Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;
    .end local v13    # "sampleTimeUs":J
    .local v5, "sampleTimeUs":J
    .local v16, "track":Lcom/google/android/exoplayer2/extractor/mp4/Track;
    .local v17, "encryptionBox":Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;
    move v13, v7

    move v14, v8

    move-object v7, v15

    .end local v15    # "output":Lcom/google/android/exoplayer2/extractor/TrackOutput;
    .local v7, "output":Lcom/google/android/exoplayer2/extractor/TrackOutput;
    move-object v15, v4

    invoke-interface/range {v9 .. v15}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleMetadata(JIIILcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;)V

    .line 1495
    invoke-direct {v0, v5, v6}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->outputPendingMetadataSamples(J)V

    .line 1496
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->next()Z

    move-result v8

    if-nez v8, :cond_1db

    .line 1497
    const/4 v8, 0x0

    iput-object v8, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    .line 1499
    :cond_1db
    const/4 v8, 0x3

    iput v8, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    .line 1500
    const/4 v8, 0x1

    return v8
.end method

.method private static shouldParseContainerAtom(I)Z
    .registers 2
    .param p0, "atom"    # I

    .line 1618
    const v0, 0x6d6f6f76

    if-eq p0, v0, :cond_30

    const v0, 0x7472616b

    if-eq p0, v0, :cond_30

    const v0, 0x6d646961

    if-eq p0, v0, :cond_30

    const v0, 0x6d696e66

    if-eq p0, v0, :cond_30

    const v0, 0x7374626c

    if-eq p0, v0, :cond_30

    const v0, 0x6d6f6f66

    if-eq p0, v0, :cond_30

    const v0, 0x74726166

    if-eq p0, v0, :cond_30

    const v0, 0x6d766578

    if-eq p0, v0, :cond_30

    const v0, 0x65647473

    if-ne p0, v0, :cond_2e

    goto :goto_30

    :cond_2e
    const/4 v0, 0x0

    goto :goto_31

    :cond_30
    :goto_30
    const/4 v0, 0x1

    :goto_31
    return v0
.end method

.method private static shouldParseLeafAtom(I)Z
    .registers 2
    .param p0, "atom"    # I

    .line 1586
    const v0, 0x68646c72    # 4.3148E24f

    if-eq p0, v0, :cond_8f

    const v0, 0x6d646864

    if-eq p0, v0, :cond_8f

    const v0, 0x6d766864

    if-eq p0, v0, :cond_8f

    const v0, 0x73696478

    if-eq p0, v0, :cond_8f

    const v0, 0x73747364

    if-eq p0, v0, :cond_8f

    const v0, 0x73747473

    if-eq p0, v0, :cond_8f

    const v0, 0x63747473

    if-eq p0, v0, :cond_8f

    const v0, 0x73747363

    if-eq p0, v0, :cond_8f

    const v0, 0x7374737a

    if-eq p0, v0, :cond_8f

    const v0, 0x73747a32

    if-eq p0, v0, :cond_8f

    const v0, 0x7374636f

    if-eq p0, v0, :cond_8f

    const v0, 0x636f3634

    if-eq p0, v0, :cond_8f

    const v0, 0x73747373

    if-eq p0, v0, :cond_8f

    const v0, 0x74666474

    if-eq p0, v0, :cond_8f

    const v0, 0x74666864

    if-eq p0, v0, :cond_8f

    const v0, 0x746b6864

    if-eq p0, v0, :cond_8f

    const v0, 0x74726578

    if-eq p0, v0, :cond_8f

    const v0, 0x7472756e

    if-eq p0, v0, :cond_8f

    const v0, 0x70737368    # 3.013775E29f

    if-eq p0, v0, :cond_8f

    const v0, 0x7361697a

    if-eq p0, v0, :cond_8f

    const v0, 0x7361696f

    if-eq p0, v0, :cond_8f

    const v0, 0x73656e63

    if-eq p0, v0, :cond_8f

    const v0, 0x75756964

    if-eq p0, v0, :cond_8f

    const v0, 0x73626770

    if-eq p0, v0, :cond_8f

    const v0, 0x73677064

    if-eq p0, v0, :cond_8f

    const v0, 0x656c7374

    if-eq p0, v0, :cond_8f

    const v0, 0x6d656864

    if-eq p0, v0, :cond_8f

    const v0, 0x656d7367

    if-ne p0, v0, :cond_8d

    goto :goto_8f

    :cond_8d
    const/4 v0, 0x0

    goto :goto_90

    :cond_8f
    :goto_8f
    const/4 v0, 0x1

    :goto_90
    return v0
.end method


# virtual methods
.method public init(Lcom/google/android/exoplayer2/extractor/ExtractorOutput;)V
    .registers 15
    .param p1, "output"    # Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    .line 293
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    .line 294
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->enterReadingAtomHeaderState()V

    .line 295
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->initExtraTracks()V

    .line 296
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sideloadedTrack:Lcom/google/android/exoplayer2/extractor/mp4/Track;

    if-eqz v0, :cond_3b

    .line 297
    new-instance v1, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget v0, v0, Lcom/google/android/exoplayer2/extractor/mp4/Track;->type:I

    .line 299
    const/4 v2, 0x0

    invoke-interface {p1, v2, v0}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->track(II)Lcom/google/android/exoplayer2/extractor/TrackOutput;

    move-result-object v0

    new-instance v12, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sideloadedTrack:Lcom/google/android/exoplayer2/extractor/mp4/Track;

    new-array v5, v2, [J

    new-array v6, v2, [I

    const/4 v7, 0x0

    new-array v8, v2, [J

    new-array v9, v2, [I

    const-wide/16 v10, 0x0

    move-object v3, v12

    invoke-direct/range {v3 .. v11}, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;-><init>(Lcom/google/android/exoplayer2/extractor/mp4/Track;[J[II[J[IJ)V

    new-instance v3, Lcom/google/android/exoplayer2/extractor/mp4/DefaultSampleValues;

    invoke-direct {v3, v2, v2, v2, v2}, Lcom/google/android/exoplayer2/extractor/mp4/DefaultSampleValues;-><init>(IIII)V

    invoke-direct {v1, v0, v12, v3}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;-><init>(Lcom/google/android/exoplayer2/extractor/TrackOutput;Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;Lcom/google/android/exoplayer2/extractor/mp4/DefaultSampleValues;)V

    move-object v0, v1

    .line 313
    .local v0, "bundle":Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 314
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->endTracks()V

    .line 316
    .end local v0    # "bundle":Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;
    :cond_3b
    return-void
.end method

.method protected modifyTrack(Lcom/google/android/exoplayer2/extractor/mp4/Track;)Lcom/google/android/exoplayer2/extractor/mp4/Track;
    .registers 2
    .param p1, "track"    # Lcom/google/android/exoplayer2/extractor/mp4/Track;

    .line 562
    return-object p1
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

    .line 339
    nop

    :cond_1
    :goto_1
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    packed-switch v0, :pswitch_data_1e

    .line 352
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->readSample(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 353
    const/4 v0, 0x0

    return v0

    .line 349
    :pswitch_e
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->readEncryptionData(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)V

    .line 350
    goto :goto_1

    .line 346
    :pswitch_12
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->readAtomPayload(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)V

    .line 347
    goto :goto_1

    .line 341
    :pswitch_16
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->readAtomHeader(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 342
    const/4 v0, -0x1

    return v0

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_16
        :pswitch_12
        :pswitch_e
    .end packed-switch
.end method

.method public release()V
    .registers 1

    .line 334
    return-void
.end method

.method public seek(JJ)V
    .registers 8
    .param p1, "position"    # J
    .param p3, "timeUs"    # J

    .line 320
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 321
    .local v0, "trackCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_17

    .line 322
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->resetFragmentInfo()V

    .line 321
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 324
    .end local v1    # "i":I
    :cond_17
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->pendingMetadataSampleInfos:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->clear()V

    .line 325
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->pendingMetadataSampleBytes:I

    .line 326
    iput-wide p3, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->pendingSeekTimeUs:J

    .line 327
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->clear()V

    .line 328
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->enterReadingAtomHeaderState()V

    .line 329
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

    .line 288
    invoke-static {p1}, Lcom/google/android/exoplayer2/extractor/mp4/Sniffer;->sniffFragmented(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z

    move-result v0

    return v0
.end method
