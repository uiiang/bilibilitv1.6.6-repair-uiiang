.class public final Lcom/google/android/exoplayer2/extractor/Id3Peeker;
.super Ljava/lang/Object;
.source "Id3Peeker.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/Id3Peeker;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 41
    return-void
.end method


# virtual methods
.method public peekId3Data(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$FramePredicate;)Lcom/google/android/exoplayer2/metadata/Metadata;
    .registers 11
    .param p1, "input"    # Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    .param p2, "id3FramePredicate"    # Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$FramePredicate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    const/4 v0, 0x0

    .line 58
    .local v0, "peekedId3Bytes":I
    const/4 v1, 0x0

    .line 61
    .local v1, "metadata":Lcom/google/android/exoplayer2/metadata/Metadata;
    :goto_2
    :try_start_2
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/Id3Peeker;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v2

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-interface {p1, v2, v4, v3}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V
    :try_end_e
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_e} :catch_4d

    .line 65
    nop

    .line 66
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/Id3Peeker;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 67
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/Id3Peeker;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v2

    const v5, 0x494433

    if-eq v2, v5, :cond_20

    .line 69
    goto :goto_4f

    .line 71
    :cond_20
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/Id3Peeker;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/4 v5, 0x3

    invoke-virtual {v2, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 72
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/Id3Peeker;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readSynchSafeInt()I

    move-result v2

    .line 73
    .local v2, "framesLength":I
    add-int/lit8 v5, v2, 0xa

    .line 75
    .local v5, "tagLength":I
    if-nez v1, :cond_48

    .line 76
    new-array v6, v5, [B

    .line 77
    .local v6, "id3Data":[B
    iget-object v7, p0, Lcom/google/android/exoplayer2/extractor/Id3Peeker;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v7

    invoke-static {v7, v4, v6, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 78
    invoke-interface {p1, v6, v3, v2}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 80
    new-instance v3, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;

    invoke-direct {v3, p2}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;-><init>(Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$FramePredicate;)V

    invoke-virtual {v3, v6, v5}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->decode([BI)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object v1

    .line 81
    .end local v6    # "id3Data":[B
    goto :goto_4b

    .line 82
    :cond_48
    invoke-interface {p1, v2}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->advancePeekPosition(I)V

    .line 85
    :goto_4b
    add-int/2addr v0, v5

    .line 86
    .end local v2    # "framesLength":I
    .end local v5    # "tagLength":I
    goto :goto_2

    .line 62
    :catch_4d
    move-exception v2

    .line 64
    .local v2, "e":Ljava/io/EOFException;
    nop

    .line 88
    .end local v2    # "e":Ljava/io/EOFException;
    :goto_4f
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    .line 89
    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->advancePeekPosition(I)V

    .line 90
    return-object v1
.end method
