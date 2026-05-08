.class public final Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;
.super Ljava/lang/Object;
.source "TsExtractor.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/Extractor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/ts/TsExtractor$PatReader;,
        Lcom/google/android/exoplayer2/extractor/ts/TsExtractor$PmtReader;,
        Lcom/google/android/exoplayer2/extractor/ts/TsExtractor$Mode;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final AC3_FORMAT_IDENTIFIER:J = 0x41432d33L

.field private static final AC4_FORMAT_IDENTIFIER:J = 0x41432d34L

.field private static final BUFFER_SIZE:I = 0x24b8

.field public static final DEFAULT_TIMESTAMP_SEARCH_BYTES:I = 0x1b8a0

.field private static final E_AC3_FORMAT_IDENTIFIER:J = 0x45414333L

.field public static final FACTORY:Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;

.field private static final HEVC_FORMAT_IDENTIFIER:J = 0x48455643L

.field private static final MAX_PID_PLUS_ONE:I = 0x2000

.field public static final MODE_HLS:I = 0x2

.field public static final MODE_MULTI_PMT:I = 0x0

.field public static final MODE_SINGLE_PMT:I = 0x1

.field private static final SNIFF_TS_PACKET_COUNT:I = 0x5

.field public static final TS_PACKET_SIZE:I = 0xbc

.field private static final TS_PAT_PID:I = 0x0

.field public static final TS_STREAM_TYPE_AAC_ADTS:I = 0xf

.field public static final TS_STREAM_TYPE_AAC_LATM:I = 0x11

.field public static final TS_STREAM_TYPE_AC3:I = 0x81

.field public static final TS_STREAM_TYPE_AC4:I = 0xac

.field public static final TS_STREAM_TYPE_AIT:I = 0x101

.field public static final TS_STREAM_TYPE_DC2_H262:I = 0x80

.field public static final TS_STREAM_TYPE_DTS:I = 0x8a

.field public static final TS_STREAM_TYPE_DVBSUBS:I = 0x59

.field public static final TS_STREAM_TYPE_E_AC3:I = 0x87

.field public static final TS_STREAM_TYPE_H262:I = 0x2

.field public static final TS_STREAM_TYPE_H263:I = 0x10

.field public static final TS_STREAM_TYPE_H264:I = 0x1b

.field public static final TS_STREAM_TYPE_H265:I = 0x24

.field public static final TS_STREAM_TYPE_HDMV_DTS:I = 0x82

.field public static final TS_STREAM_TYPE_ID3:I = 0x15

.field public static final TS_STREAM_TYPE_MPA:I = 0x3

.field public static final TS_STREAM_TYPE_MPA_LSF:I = 0x4

.field public static final TS_STREAM_TYPE_SPLICE_INFO:I = 0x86

.field public static final TS_SYNC_BYTE:I = 0x47


# instance fields
.field private bytesSinceLastSync:I

.field private final continuityCounters:Landroid/util/SparseIntArray;

.field private final durationReader:Lcom/google/android/exoplayer2/extractor/ts/TsDurationReader;

.field private hasOutputSeekMap:Z

.field private id3Reader:Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader;

.field private final mode:I

.field private output:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

.field private final payloadReaderFactory:Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$Factory;

.field private pcrPid:I

.field private pendingSeekToStart:Z

.field private remainingPmts:I

.field private final timestampAdjusters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/util/TimestampAdjuster;",
            ">;"
        }
    .end annotation
.end field

.field private final timestampSearchBytes:I

.field private final trackIds:Landroid/util/SparseBooleanArray;

.field private final trackPids:Landroid/util/SparseBooleanArray;

.field private tracksEnded:Z

.field private tsBinarySearchSeeker:Lcom/google/android/exoplayer2/extractor/ts/TsBinarySearchSeeker;

.field private final tsPacketBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field private final tsPayloadReaders:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 68
    new-instance v0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->FACTORY:Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 150
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;-><init>(I)V

    .line 151
    return-void
.end method

.method public constructor <init>(I)V
    .registers 4
    .param p1, "defaultTsPayloadReaderFlags"    # I

    .line 158
    const/4 v0, 0x1

    const v1, 0x1b8a0

    invoke-direct {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;-><init>(III)V

    .line 159
    return-void
.end method

.method public constructor <init>(III)V
    .registers 7
    .param p1, "mode"    # I
    .param p2, "defaultTsPayloadReaderFlags"    # I
    .param p3, "timestampSearchBytes"    # I

    .line 177
    new-instance v0, Lcom/google/android/exoplayer2/util/TimestampAdjuster;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/util/TimestampAdjuster;-><init>(J)V

    new-instance v1, Lcom/google/android/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory;

    invoke-direct {v1, p2}, Lcom/google/android/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory;-><init>(I)V

    invoke-direct {p0, p1, v0, v1, p3}, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;-><init>(ILcom/google/android/exoplayer2/util/TimestampAdjuster;Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$Factory;I)V

    .line 182
    return-void
.end method

.method public constructor <init>(ILcom/google/android/exoplayer2/util/TimestampAdjuster;Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$Factory;)V
    .registers 5
    .param p1, "mode"    # I
    .param p2, "timestampAdjuster"    # Lcom/google/android/exoplayer2/util/TimestampAdjuster;
    .param p3, "payloadReaderFactory"    # Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$Factory;

    .line 194
    const v0, 0x1b8a0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;-><init>(ILcom/google/android/exoplayer2/util/TimestampAdjuster;Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$Factory;I)V

    .line 195
    return-void
.end method

.method public constructor <init>(ILcom/google/android/exoplayer2/util/TimestampAdjuster;Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$Factory;I)V
    .registers 8
    .param p1, "mode"    # I
    .param p2, "timestampAdjuster"    # Lcom/google/android/exoplayer2/util/TimestampAdjuster;
    .param p3, "payloadReaderFactory"    # Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$Factory;
    .param p4, "timestampSearchBytes"    # I

    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 216
    invoke-static {p3}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$Factory;

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->payloadReaderFactory:Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$Factory;

    .line 217
    iput p4, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->timestampSearchBytes:I

    .line 218
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->mode:I

    .line 219
    const/4 v0, 0x1

    if-eq p1, v0, :cond_21

    const/4 v0, 0x2

    if-ne p1, v0, :cond_16

    goto :goto_21

    .line 222
    :cond_16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->timestampAdjusters:Ljava/util/List;

    .line 223
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_27

    .line 220
    :cond_21
    :goto_21
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->timestampAdjusters:Ljava/util/List;

    .line 225
    :goto_27
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/16 v1, 0x24b8

    new-array v1, v1, [B

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>([BI)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->tsPacketBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 226
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->trackIds:Landroid/util/SparseBooleanArray;

    .line 227
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->trackPids:Landroid/util/SparseBooleanArray;

    .line 228
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->tsPayloadReaders:Landroid/util/SparseArray;

    .line 229
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->continuityCounters:Landroid/util/SparseIntArray;

    .line 230
    new-instance v0, Lcom/google/android/exoplayer2/extractor/ts/TsDurationReader;

    invoke-direct {v0, p4}, Lcom/google/android/exoplayer2/extractor/ts/TsDurationReader;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->durationReader:Lcom/google/android/exoplayer2/extractor/ts/TsDurationReader;

    .line 231
    sget-object v0, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->PLACEHOLDER:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->output:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    .line 232
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->pcrPid:I

    .line 233
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->resetPayloadReaders()V

    .line 234
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;)Landroid/util/SparseArray;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;

    .line 65
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->tsPayloadReaders:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;)I
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;

    .line 65
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->remainingPmts:I

    return v0
.end method

.method static synthetic access$1000(Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;)Z
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;

    .line 65
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->tracksEnded:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;
    .param p1, "x1"    # Z

    .line 65
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->tracksEnded:Z

    return p1
.end method

.method static synthetic access$102(Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;I)I
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;
    .param p1, "x1"    # I

    .line 65
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->remainingPmts:I

    return p1
.end method

.method static synthetic access$108(Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;)I
    .registers 3
    .param p0, "x0"    # Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;

    .line 65
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->remainingPmts:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->remainingPmts:I

    return v0
.end method

.method static synthetic access$200(Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;)I
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;

    .line 65
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->mode:I

    return v0
.end method

.method static synthetic access$300(Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;

    .line 65
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->timestampAdjusters:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$402(Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;I)I
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;
    .param p1, "x1"    # I

    .line 65
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->pcrPid:I

    return p1
.end method

.method static synthetic access$500(Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;)Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;

    .line 65
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->id3Reader:Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader;

    return-object v0
.end method

.method static synthetic access$502(Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader;)Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;
    .param p1, "x1"    # Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader;

    .line 65
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->id3Reader:Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader;

    return-object p1
.end method

.method static synthetic access$600(Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;)Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$Factory;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;

    .line 65
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->payloadReaderFactory:Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$Factory;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;)Lcom/google/android/exoplayer2/extractor/ExtractorOutput;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;

    .line 65
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->output:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;)Landroid/util/SparseBooleanArray;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;

    .line 65
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->trackIds:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;)Landroid/util/SparseBooleanArray;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;

    .line 65
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->trackPids:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method private fillBufferWithAtLeastOnePacket(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z
    .registers 9
    .param p1, "input"    # Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 429
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->tsPacketBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v0

    .line 431
    .local v0, "data":[B
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->tsPacketBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v1

    rsub-int v1, v1, 0x24b8

    const/4 v2, 0x0

    const/16 v3, 0xbc

    if-ge v1, v3, :cond_29

    .line 432
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->tsPacketBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v1

    .line 433
    .local v1, "bytesLeft":I
    if-lez v1, :cond_24

    .line 434
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->tsPacketBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v4

    invoke-static {v0, v4, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 436
    :cond_24
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->tsPacketBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v4, v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset([BI)V

    .line 439
    .end local v1    # "bytesLeft":I
    :cond_29
    :goto_29
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->tsPacketBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v1

    if-ge v1, v3, :cond_49

    .line 440
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->tsPacketBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v1

    .line 441
    .local v1, "limit":I
    rsub-int v4, v1, 0x24b8

    invoke-interface {p1, v0, v1, v4}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->read([BII)I

    move-result v4

    .line 442
    .local v4, "read":I
    const/4 v5, -0x1

    if-ne v4, v5, :cond_41

    .line 443
    return v2

    .line 445
    :cond_41
    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->tsPacketBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    add-int v6, v1, v4

    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setLimit(I)V

    .line 446
    .end local v1    # "limit":I
    .end local v4    # "read":I
    goto :goto_29

    .line 447
    :cond_49
    const/4 v1, 0x1

    return v1
.end method

.method private findEndOfFirstTsPacketInBuffer()I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 457
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->tsPacketBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v0

    .line 458
    .local v0, "searchStart":I
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->tsPacketBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v1

    .line 459
    .local v1, "limit":I
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->tsPacketBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 460
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v2

    invoke-static {v2, v0, v1}, Lcom/google/android/exoplayer2/extractor/ts/TsUtil;->findSyncBytePosition([BII)I

    move-result v2

    .line 463
    .local v2, "syncBytePosition":I
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->tsPacketBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v3, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 464
    add-int/lit16 v3, v2, 0xbc

    .line 465
    .local v3, "endOfPacket":I
    if-le v3, v1, :cond_38

    .line 466
    iget v4, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->bytesSinceLastSync:I

    sub-int v5, v2, v0

    add-int/2addr v4, v5

    iput v4, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->bytesSinceLastSync:I

    .line 467
    iget v5, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->mode:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3b

    const/16 v5, 0x178

    if-gt v4, v5, :cond_30

    goto :goto_3b

    .line 468
    :cond_30
    const-string v4, "Cannot find sync byte. Most likely not a Transport Stream."

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v4

    throw v4

    .line 473
    :cond_38
    const/4 v4, 0x0

    iput v4, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->bytesSinceLastSync:I

    .line 475
    :cond_3b
    :goto_3b
    return v3
.end method

.method static synthetic lambda$static$0()[Lcom/google/android/exoplayer2/extractor/Extractor;
    .registers 3

    .line 68
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/android/exoplayer2/extractor/Extractor;

    new-instance v1, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method private maybeOutputSeekMap(J)V
    .registers 16
    .param p1, "inputLength"    # J

    .line 411
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->hasOutputSeekMap:Z

    if-nez v0, :cond_49

    .line 412
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->hasOutputSeekMap:Z

    .line 413
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->durationReader:Lcom/google/android/exoplayer2/extractor/ts/TsDurationReader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/ts/TsDurationReader;->getDurationUs()J

    move-result-wide v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_39

    .line 414
    new-instance v0, Lcom/google/android/exoplayer2/extractor/ts/TsBinarySearchSeeker;

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->durationReader:Lcom/google/android/exoplayer2/extractor/ts/TsDurationReader;

    .line 416
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/extractor/ts/TsDurationReader;->getPcrTimestampAdjuster()Lcom/google/android/exoplayer2/util/TimestampAdjuster;

    move-result-object v6

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->durationReader:Lcom/google/android/exoplayer2/extractor/ts/TsDurationReader;

    .line 417
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/extractor/ts/TsDurationReader;->getDurationUs()J

    move-result-wide v7

    iget v11, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->pcrPid:I

    iget v12, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->timestampSearchBytes:I

    move-object v5, v0

    move-wide v9, p1

    invoke-direct/range {v5 .. v12}, Lcom/google/android/exoplayer2/extractor/ts/TsBinarySearchSeeker;-><init>(Lcom/google/android/exoplayer2/util/TimestampAdjuster;JJII)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->tsBinarySearchSeeker:Lcom/google/android/exoplayer2/extractor/ts/TsBinarySearchSeeker;

    .line 421
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->output:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/ts/TsBinarySearchSeeker;->getSeekMap()Lcom/google/android/exoplayer2/extractor/SeekMap;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->seekMap(Lcom/google/android/exoplayer2/extractor/SeekMap;)V

    goto :goto_49

    .line 423
    :cond_39
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->output:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    new-instance v1, Lcom/google/android/exoplayer2/extractor/SeekMap$Unseekable;

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->durationReader:Lcom/google/android/exoplayer2/extractor/ts/TsDurationReader;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/extractor/ts/TsDurationReader;->getDurationUs()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/google/android/exoplayer2/extractor/SeekMap$Unseekable;-><init>(J)V

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->seekMap(Lcom/google/android/exoplayer2/extractor/SeekMap;)V

    .line 426
    :cond_49
    :goto_49
    return-void
.end method

.method private resetPayloadReaders()V
    .registers 7

    .line 485
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->trackIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 486
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->tsPayloadReaders:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 487
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->payloadReaderFactory:Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$Factory;

    .line 488
    invoke-interface {v0}, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$Factory;->createInitialPayloadReaders()Landroid/util/SparseArray;

    move-result-object v0

    .line 489
    .local v0, "initialPayloadReaders":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader;>;"
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 490
    .local v1, "initialPayloadReadersSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_15
    if-ge v2, v1, :cond_29

    .line 491
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->tsPayloadReaders:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader;

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 490
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 493
    .end local v2    # "i":I
    :cond_29
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->tsPayloadReaders:Landroid/util/SparseArray;

    new-instance v3, Lcom/google/android/exoplayer2/extractor/ts/SectionReader;

    new-instance v4, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor$PatReader;

    invoke-direct {v4, p0}, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor$PatReader;-><init>(Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;)V

    invoke-direct {v3, v4}, Lcom/google/android/exoplayer2/extractor/ts/SectionReader;-><init>(Lcom/google/android/exoplayer2/extractor/ts/SectionPayloadReader;)V

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 494
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->id3Reader:Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader;

    .line 495
    return-void
.end method

.method private shouldConsumePacketPayload(I)Z
    .registers 4
    .param p1, "packetPid"    # I

    .line 479
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->mode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_12

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->tracksEnded:Z

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->trackPids:Landroid/util/SparseBooleanArray;

    .line 481
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v0

    if-nez v0, :cond_13

    :cond_12
    const/4 v1, 0x1

    .line 479
    :cond_13
    return v1
.end method


# virtual methods
.method public init(Lcom/google/android/exoplayer2/extractor/ExtractorOutput;)V
    .registers 2
    .param p1, "output"    # Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    .line 261
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->output:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    .line 262
    return-void
.end method

.method public read(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;)I
    .registers 20
    .param p1, "input"    # Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    .param p2, "seekPosition"    # Lcom/google/android/exoplayer2/extractor/PositionHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 309
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getLength()J

    move-result-wide v3

    .line 310
    .local v3, "inputLength":J
    iget-boolean v5, v0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->tracksEnded:Z

    const-wide/16 v6, -0x1

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v5, :cond_5b

    .line 311
    cmp-long v5, v3, v6

    if-eqz v5, :cond_1d

    iget v5, v0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->mode:I

    if-eq v5, v8, :cond_1d

    const/4 v5, 0x1

    goto :goto_1e

    :cond_1d
    const/4 v5, 0x0

    .line 312
    .local v5, "canReadDuration":Z
    :goto_1e
    if-eqz v5, :cond_31

    iget-object v11, v0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->durationReader:Lcom/google/android/exoplayer2/extractor/ts/TsDurationReader;

    invoke-virtual {v11}, Lcom/google/android/exoplayer2/extractor/ts/TsDurationReader;->isDurationReadFinished()Z

    move-result v11

    if-nez v11, :cond_31

    .line 313
    iget-object v6, v0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->durationReader:Lcom/google/android/exoplayer2/extractor/ts/TsDurationReader;

    iget v7, v0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->pcrPid:I

    invoke-virtual {v6, v1, v2, v7}, Lcom/google/android/exoplayer2/extractor/ts/TsDurationReader;->readDuration(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;I)I

    move-result v6

    return v6

    .line 315
    :cond_31
    invoke-direct {v0, v3, v4}, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->maybeOutputSeekMap(J)V

    .line 317
    iget-boolean v11, v0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->pendingSeekToStart:Z

    if-eqz v11, :cond_4a

    .line 318
    iput-boolean v10, v0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->pendingSeekToStart:Z

    .line 319
    const-wide/16 v11, 0x0

    invoke-virtual {v0, v11, v12, v11, v12}, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->seek(JJ)V

    .line 320
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v13

    cmp-long v15, v13, v11

    if-eqz v15, :cond_4a

    .line 321
    iput-wide v11, v2, Lcom/google/android/exoplayer2/extractor/PositionHolder;->position:J

    .line 322
    return v9

    .line 326
    :cond_4a
    iget-object v11, v0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->tsBinarySearchSeeker:Lcom/google/android/exoplayer2/extractor/ts/TsBinarySearchSeeker;

    if-eqz v11, :cond_5b

    invoke-virtual {v11}, Lcom/google/android/exoplayer2/extractor/ts/TsBinarySearchSeeker;->isSeeking()Z

    move-result v11

    if-eqz v11, :cond_5b

    .line 327
    iget-object v6, v0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->tsBinarySearchSeeker:Lcom/google/android/exoplayer2/extractor/ts/TsBinarySearchSeeker;

    invoke-virtual {v6, v1, v2}, Lcom/google/android/exoplayer2/extractor/ts/TsBinarySearchSeeker;->handlePendingSeek(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;)I

    move-result v6

    return v6

    .line 331
    .end local v5    # "canReadDuration":Z
    :cond_5b
    invoke-direct/range {p0 .. p1}, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->fillBufferWithAtLeastOnePacket(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z

    move-result v5

    if-nez v5, :cond_63

    .line 332
    const/4 v5, -0x1

    return v5

    .line 335
    :cond_63
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->findEndOfFirstTsPacketInBuffer()I

    move-result v5

    .line 336
    .local v5, "endOfPacket":I
    iget-object v11, v0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->tsPacketBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v11}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v11

    .line 337
    .local v11, "limit":I
    if-le v5, v11, :cond_70

    .line 338
    return v10

    .line 341
    :cond_70
    const/4 v12, 0x0

    .line 344
    .local v12, "packetHeaderFlags":I
    iget-object v13, v0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->tsPacketBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v13}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v13

    .line 345
    .local v13, "tsPacketHeader":I
    const/high16 v14, 0x800000

    and-int/2addr v14, v13

    if-eqz v14, :cond_82

    .line 347
    iget-object v6, v0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->tsPacketBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v6, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 348
    return v10

    .line 350
    :cond_82
    const/high16 v14, 0x400000

    and-int/2addr v14, v13

    if-eqz v14, :cond_89

    const/4 v14, 0x1

    goto :goto_8a

    :cond_89
    const/4 v14, 0x0

    :goto_8a
    or-int/2addr v12, v14

    .line 352
    const v14, 0x1fff00

    and-int/2addr v14, v13

    shr-int/lit8 v14, v14, 0x8

    .line 354
    .local v14, "pid":I
    and-int/lit8 v15, v13, 0x20

    if-eqz v15, :cond_97

    const/4 v15, 0x1

    goto :goto_98

    :cond_97
    const/4 v15, 0x0

    .line 355
    .local v15, "adaptationFieldExists":Z
    :goto_98
    and-int/lit8 v16, v13, 0x10

    if-eqz v16, :cond_9f

    const/16 v16, 0x1

    goto :goto_a1

    :cond_9f
    const/16 v16, 0x0

    .line 357
    .local v16, "payloadExists":Z
    :goto_a1
    if-eqz v16, :cond_ac

    iget-object v9, v0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->tsPayloadReaders:Landroid/util/SparseArray;

    invoke-virtual {v9, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader;

    goto :goto_ad

    :cond_ac
    const/4 v9, 0x0

    .line 358
    .local v9, "payloadReader":Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader;
    :goto_ad
    if-nez v9, :cond_b5

    .line 359
    iget-object v6, v0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->tsPacketBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v6, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 360
    return v10

    .line 364
    :cond_b5
    iget v6, v0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->mode:I

    if-eq v6, v8, :cond_d9

    .line 365
    and-int/lit8 v6, v13, 0xf

    .line 366
    .local v6, "continuityCounter":I
    iget-object v7, v0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->continuityCounters:Landroid/util/SparseIntArray;

    add-int/lit8 v8, v6, -0x1

    invoke-virtual {v7, v14, v8}, Landroid/util/SparseIntArray;->get(II)I

    move-result v7

    .line 367
    .local v7, "previousCounter":I
    iget-object v8, v0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->continuityCounters:Landroid/util/SparseIntArray;

    invoke-virtual {v8, v14, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 368
    if-ne v7, v6, :cond_d0

    .line 370
    iget-object v8, v0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->tsPacketBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v8, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 371
    return v10

    .line 372
    :cond_d0
    add-int/lit8 v8, v7, 0x1

    and-int/lit8 v8, v8, 0xf

    if-eq v6, v8, :cond_d9

    .line 374
    invoke-interface {v9}, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader;->seek()V

    .line 379
    .end local v6    # "continuityCounter":I
    .end local v7    # "previousCounter":I
    :cond_d9
    if-eqz v15, :cond_f7

    .line 380
    iget-object v6, v0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->tsPacketBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v6

    .line 381
    .local v6, "adaptationFieldLength":I
    iget-object v7, v0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->tsPacketBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v7

    .line 383
    .local v7, "adaptationFieldFlags":I
    nop

    .line 384
    and-int/lit8 v8, v7, 0x40

    if-eqz v8, :cond_ee

    .line 385
    const/4 v8, 0x2

    goto :goto_ef

    .line 386
    :cond_ee
    const/4 v8, 0x0

    :goto_ef
    or-int/2addr v12, v8

    .line 387
    iget-object v8, v0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->tsPacketBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    add-int/lit8 v10, v6, -0x1

    invoke-virtual {v8, v10}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 391
    .end local v6    # "adaptationFieldLength":I
    .end local v7    # "adaptationFieldFlags":I
    :cond_f7
    iget-boolean v6, v0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->tracksEnded:Z

    .line 392
    .local v6, "wereTracksEnded":Z
    invoke-direct {v0, v14}, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->shouldConsumePacketPayload(I)Z

    move-result v7

    if-eqz v7, :cond_10e

    .line 393
    iget-object v7, v0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->tsPacketBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v7, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setLimit(I)V

    .line 394
    iget-object v7, v0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->tsPacketBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-interface {v9, v7, v12}, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader;->consume(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V

    .line 395
    iget-object v7, v0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->tsPacketBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v7, v11}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setLimit(I)V

    .line 397
    :cond_10e
    iget v7, v0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->mode:I

    const/4 v8, 0x2

    if-eq v7, v8, :cond_122

    if-nez v6, :cond_122

    iget-boolean v7, v0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->tracksEnded:Z

    if-eqz v7, :cond_122

    const-wide/16 v7, -0x1

    cmp-long v10, v3, v7

    if-eqz v10, :cond_122

    .line 401
    const/4 v7, 0x1

    iput-boolean v7, v0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->pendingSeekToStart:Z

    .line 404
    :cond_122
    iget-object v7, v0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->tsPacketBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v7, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 405
    const/4 v7, 0x0

    return v7
.end method

.method public release()V
    .registers 1

    .line 304
    return-void
.end method

.method public seek(JJ)V
    .registers 21
    .param p1, "position"    # J
    .param p3, "timeUs"    # J

    .line 266
    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    iget v3, v0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->mode:I

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eq v3, v4, :cond_d

    const/4 v3, 0x1

    goto :goto_e

    :cond_d
    const/4 v3, 0x0

    :goto_e
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 267
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->timestampAdjusters:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 268
    .local v3, "timestampAdjustersCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_18
    const-wide/16 v7, 0x0

    if-ge v4, v3, :cond_52

    .line 269
    iget-object v9, v0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->timestampAdjusters:Ljava/util/List;

    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/exoplayer2/util/TimestampAdjuster;

    .line 275
    .local v9, "timestampAdjuster":Lcom/google/android/exoplayer2/util/TimestampAdjuster;
    invoke-virtual {v9}, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->getTimestampOffsetUs()J

    move-result-wide v10

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v14, v10, v12

    if-nez v14, :cond_33

    const/4 v10, 0x1

    goto :goto_34

    :cond_33
    const/4 v10, 0x0

    .line 276
    .local v10, "resetTimestampAdjuster":Z
    :goto_34
    if-nez v10, :cond_4a

    .line 277
    invoke-virtual {v9}, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->getFirstSampleTimestampUs()J

    move-result-wide v14

    .line 281
    .local v14, "adjusterFirstSampleTimestampUs":J
    cmp-long v11, v14, v12

    if-eqz v11, :cond_48

    cmp-long v11, v14, v7

    if-eqz v11, :cond_48

    cmp-long v7, v14, v1

    if-eqz v7, :cond_48

    const/4 v7, 0x1

    goto :goto_49

    :cond_48
    const/4 v7, 0x0

    :goto_49
    move v10, v7

    .line 286
    .end local v14    # "adjusterFirstSampleTimestampUs":J
    :cond_4a
    if-eqz v10, :cond_4f

    .line 287
    invoke-virtual {v9, v1, v2}, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->reset(J)V

    .line 268
    .end local v9    # "timestampAdjuster":Lcom/google/android/exoplayer2/util/TimestampAdjuster;
    .end local v10    # "resetTimestampAdjuster":Z
    :cond_4f
    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    .line 290
    .end local v4    # "i":I
    :cond_52
    cmp-long v4, v1, v7

    if-eqz v4, :cond_5d

    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->tsBinarySearchSeeker:Lcom/google/android/exoplayer2/extractor/ts/TsBinarySearchSeeker;

    if-eqz v4, :cond_5d

    .line 291
    invoke-virtual {v4, v1, v2}, Lcom/google/android/exoplayer2/extractor/ts/TsBinarySearchSeeker;->setSeekTargetUs(J)V

    .line 293
    :cond_5d
    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->tsPacketBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v4, v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset(I)V

    .line 294
    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->continuityCounters:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->clear()V

    .line 295
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_68
    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->tsPayloadReaders:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_7e

    .line 296
    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->tsPayloadReaders:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader;

    invoke-interface {v5}, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader;->seek()V

    .line 295
    add-int/lit8 v4, v4, 0x1

    goto :goto_68

    .line 298
    .end local v4    # "i":I
    :cond_7e
    iput v6, v0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->bytesSinceLastSync:I

    .line 299
    return-void
.end method

.method public sniff(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z
    .registers 9
    .param p1, "input"    # Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 240
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->tsPacketBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v0

    .line 241
    .local v0, "buffer":[B
    const/16 v1, 0x3ac

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 242
    const/4 v1, 0x0

    .local v1, "startPosCandidate":I
    :goto_d
    const/16 v3, 0xbc

    if-ge v1, v3, :cond_2e

    .line 244
    const/4 v3, 0x1

    .line 245
    .local v3, "isSyncBytePatternCorrect":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_13
    const/4 v5, 0x5

    if-ge v4, v5, :cond_24

    .line 246
    mul-int/lit16 v5, v4, 0xbc

    add-int/2addr v5, v1

    aget-byte v5, v0, v5

    const/16 v6, 0x47

    if-eq v5, v6, :cond_21

    .line 247
    const/4 v3, 0x0

    .line 248
    goto :goto_24

    .line 245
    :cond_21
    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    .line 251
    .end local v4    # "i":I
    :cond_24
    :goto_24
    if-eqz v3, :cond_2b

    .line 252
    invoke-interface {p1, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    .line 253
    const/4 v2, 0x1

    return v2

    .line 242
    .end local v3    # "isSyncBytePatternCorrect":Z
    :cond_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 256
    .end local v1    # "startPosCandidate":I
    :cond_2e
    return v2
.end method
