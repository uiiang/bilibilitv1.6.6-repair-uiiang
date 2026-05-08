.class Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$ChunkHeaderHolder;
.super Ljava/lang/Object;
.source "AviExtractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ChunkHeaderHolder"
.end annotation


# instance fields
.field public chunkType:I

.field public listType:I

.field public size:I


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 541
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$1;

    .line 541
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$ChunkHeaderHolder;-><init>()V

    return-void
.end method


# virtual methods
.method public populateFrom(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V
    .registers 3
    .param p1, "headerBytes"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 556
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$ChunkHeaderHolder;->chunkType:I

    .line 557
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$ChunkHeaderHolder;->size:I

    .line 558
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$ChunkHeaderHolder;->listType:I

    .line 559
    return-void
.end method

.method public populateWithListHeaderFrom(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V
    .registers 4
    .param p1, "headerBytes"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 547
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$ChunkHeaderHolder;->populateFrom(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V

    .line 548
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$ChunkHeaderHolder;->chunkType:I

    const v1, 0x5453494c

    if-ne v0, v1, :cond_11

    .line 552
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$ChunkHeaderHolder;->listType:I

    .line 553
    return-void

    .line 549
    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LIST expected, found: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$ChunkHeaderHolder;->chunkType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v0

    throw v0
.end method
