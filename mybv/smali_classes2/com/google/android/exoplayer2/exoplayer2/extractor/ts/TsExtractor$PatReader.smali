.class Lcom/google/android/exoplayer2/extractor/ts/TsExtractor$PatReader;
.super Ljava/lang/Object;
.source "TsExtractor.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/ts/SectionPayloadReader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PatReader"
.end annotation


# instance fields
.field private final patScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

.field final synthetic this$0:Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;)V
    .registers 3

    .line 502
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor$PatReader;->this$0:Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 503
    new-instance p1, Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/4 v0, 0x4

    new-array v0, v0, [B

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;-><init>([B)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor$PatReader;->patScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    .line 504
    return-void
.end method


# virtual methods
.method public consume(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V
    .registers 13
    .param p1, "sectionData"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 516
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 517
    .local v0, "tableId":I
    if-eqz v0, :cond_7

    .line 519
    return-void

    .line 522
    :cond_7
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    .line 523
    .local v1, "secondHeaderByte":I
    and-int/lit16 v2, v1, 0x80

    if-nez v2, :cond_10

    .line 525
    return-void

    .line 529
    :cond_10
    const/4 v2, 0x6

    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 531
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v2

    const/4 v3, 0x4

    div-int/2addr v2, v3

    .line 532
    .local v2, "programCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1b
    if-ge v4, v2, :cond_69

    .line 533
    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor$PatReader;->patScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {p1, v5, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes(Lcom/google/android/exoplayer2/util/ParsableBitArray;I)V

    .line 534
    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor$PatReader;->patScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/16 v6, 0x10

    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v5

    .line 535
    .local v5, "programNumber":I
    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor$PatReader;->patScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 536
    const/16 v6, 0xd

    if-nez v5, :cond_3a

    .line 537
    iget-object v7, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor$PatReader;->patScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v7, v6}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    goto :goto_66

    .line 539
    :cond_3a
    iget-object v7, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor$PatReader;->patScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v7, v6}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v6

    .line 540
    .local v6, "pid":I
    iget-object v7, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor$PatReader;->this$0:Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;

    # getter for: Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->tsPayloadReaders:Landroid/util/SparseArray;
    invoke-static {v7}, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->access$000(Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;)Landroid/util/SparseArray;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_66

    .line 541
    iget-object v7, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor$PatReader;->this$0:Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;

    # getter for: Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->tsPayloadReaders:Landroid/util/SparseArray;
    invoke-static {v7}, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->access$000(Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;)Landroid/util/SparseArray;

    move-result-object v7

    new-instance v8, Lcom/google/android/exoplayer2/extractor/ts/SectionReader;

    new-instance v9, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor$PmtReader;

    iget-object v10, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor$PatReader;->this$0:Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;

    invoke-direct {v9, v10, v6}, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor$PmtReader;-><init>(Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;I)V

    invoke-direct {v8, v9}, Lcom/google/android/exoplayer2/extractor/ts/SectionReader;-><init>(Lcom/google/android/exoplayer2/extractor/ts/SectionPayloadReader;)V

    invoke-virtual {v7, v6, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 542
    iget-object v7, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor$PatReader;->this$0:Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;

    # operator++ for: Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->remainingPmts:I
    invoke-static {v7}, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->access$108(Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;)I

    .line 532
    .end local v5    # "programNumber":I
    .end local v6    # "pid":I
    :cond_66
    :goto_66
    add-int/lit8 v4, v4, 0x1

    goto :goto_1b

    .line 546
    .end local v4    # "i":I
    :cond_69
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor$PatReader;->this$0:Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;

    # getter for: Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->mode:I
    invoke-static {v3}, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->access$200(Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;)I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_7c

    .line 547
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor$PatReader;->this$0:Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;

    # getter for: Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->tsPayloadReaders:Landroid/util/SparseArray;
    invoke-static {v3}, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->access$000(Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;)Landroid/util/SparseArray;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->remove(I)V

    .line 549
    :cond_7c
    return-void
.end method

.method public init(Lcom/google/android/exoplayer2/util/TimestampAdjuster;Lcom/google/android/exoplayer2/extractor/ExtractorOutput;Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .registers 4
    .param p1, "timestampAdjuster"    # Lcom/google/android/exoplayer2/util/TimestampAdjuster;
    .param p2, "extractorOutput"    # Lcom/google/android/exoplayer2/extractor/ExtractorOutput;
    .param p3, "idGenerator"    # Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;

    .line 512
    return-void
.end method
