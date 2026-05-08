.class final Lcom/google/android/exoplayer2/extractor/mkv/Sniffer;
.super Ljava/lang/Object;
.source "Sniffer.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final ID_EBML:I = 0x1a45dfa3

.field private static final SEARCH_LENGTH:I = 0x400


# instance fields
.field private peekLength:I

.field private final scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/Sniffer;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 46
    return-void
.end method

.method private readUint(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)J
    .registers 8
    .param p1, "input"    # Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/Sniffer;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 99
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/Sniffer;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v0

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    .line 100
    .local v0, "value":I
    if-nez v0, :cond_1a

    .line 101
    const-wide/high16 v1, -0x8000000000000000L

    return-wide v1

    .line 103
    :cond_1a
    const/16 v1, 0x80

    .line 104
    .local v1, "mask":I
    const/4 v3, 0x0

    .line 105
    .local v3, "length":I
    :goto_1d
    and-int v4, v0, v1

    if-nez v4, :cond_26

    .line 106
    shr-int/lit8 v1, v1, 0x1

    .line 107
    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    .line 109
    :cond_26
    xor-int/lit8 v4, v1, -0x1

    and-int/2addr v0, v4

    .line 110
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/mkv/Sniffer;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v4

    invoke-interface {p1, v4, v2, v3}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 111
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_33
    if-ge v2, v3, :cond_47

    .line 112
    shl-int/lit8 v0, v0, 0x8

    .line 113
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/mkv/Sniffer;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v4

    add-int/lit8 v5, v2, 0x1

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v0, v4

    .line 111
    add-int/lit8 v2, v2, 0x1

    goto :goto_33

    .line 115
    .end local v2    # "i":I
    :cond_47
    iget v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/Sniffer;->peekLength:I

    add-int/lit8 v4, v3, 0x1

    add-int/2addr v2, v4

    iput v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/Sniffer;->peekLength:I

    .line 116
    int-to-long v4, v0

    return-wide v4
.end method


# virtual methods
.method public sniff(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z
    .registers 26
    .param p1, "input"    # Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getLength()J

    move-result-wide v2

    .line 53
    .local v2, "inputLength":J
    const-wide/16 v4, 0x400

    const-wide/16 v6, -0x1

    cmp-long v8, v2, v6

    if-eqz v8, :cond_17

    cmp-long v8, v2, v4

    if-lez v8, :cond_15

    goto :goto_17

    .line 55
    :cond_15
    move-wide v4, v2

    goto :goto_18

    .line 54
    :cond_17
    :goto_17
    nop

    .line 55
    :goto_18
    long-to-int v5, v4

    .line 57
    .local v5, "bytesToSearch":I
    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/mkv/Sniffer;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v4

    const/4 v8, 0x0

    const/4 v9, 0x4

    invoke-interface {v1, v4, v8, v9}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 58
    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/mkv/Sniffer;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v10

    .line 59
    .local v10, "tag":J
    iput v9, v0, Lcom/google/android/exoplayer2/extractor/mkv/Sniffer;->peekLength:I

    .line 60
    :goto_2c
    const-wide/32 v12, 0x1a45dfa3

    const/4 v4, 0x1

    cmp-long v9, v10, v12

    if-eqz v9, :cond_5b

    .line 61
    iget v9, v0, Lcom/google/android/exoplayer2/extractor/mkv/Sniffer;->peekLength:I

    add-int/2addr v9, v4

    iput v9, v0, Lcom/google/android/exoplayer2/extractor/mkv/Sniffer;->peekLength:I

    if-ne v9, v5, :cond_3c

    .line 62
    return v8

    .line 64
    :cond_3c
    iget-object v9, v0, Lcom/google/android/exoplayer2/extractor/mkv/Sniffer;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v9}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v9

    invoke-interface {v1, v9, v8, v4}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 65
    const/16 v4, 0x8

    shl-long v12, v10, v4

    const-wide/16 v14, -0x100

    and-long v9, v12, v14

    .line 66
    .end local v10    # "tag":J
    .local v9, "tag":J
    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/mkv/Sniffer;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v4

    aget-byte v4, v4, v8

    and-int/lit16 v4, v4, 0xff

    int-to-long v11, v4

    or-long/2addr v9, v11

    move-wide v10, v9

    goto :goto_2c

    .line 70
    .end local v9    # "tag":J
    .restart local v10    # "tag":J
    :cond_5b
    invoke-direct/range {p0 .. p1}, Lcom/google/android/exoplayer2/extractor/mkv/Sniffer;->readUint(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)J

    move-result-wide v12

    .line 71
    .local v12, "headerSize":J
    iget v9, v0, Lcom/google/android/exoplayer2/extractor/mkv/Sniffer;->peekLength:I

    int-to-long v14, v9

    .line 72
    .local v14, "headerStart":J
    const-wide/high16 v16, -0x8000000000000000L

    cmp-long v9, v12, v16

    if-eqz v9, :cond_bb

    cmp-long v9, v2, v6

    if-eqz v9, :cond_76

    add-long v6, v14, v12

    cmp-long v9, v6, v2

    if-ltz v9, :cond_76

    move v7, v5

    move-wide/from16 v18, v10

    goto :goto_be

    .line 78
    :cond_76
    :goto_76
    iget v6, v0, Lcom/google/android/exoplayer2/extractor/mkv/Sniffer;->peekLength:I

    move v7, v5

    .end local v5    # "bytesToSearch":I
    .local v7, "bytesToSearch":I
    int-to-long v4, v6

    add-long v18, v14, v12

    cmp-long v20, v4, v18

    if-gez v20, :cond_b0

    .line 79
    invoke-direct/range {p0 .. p1}, Lcom/google/android/exoplayer2/extractor/mkv/Sniffer;->readUint(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)J

    move-result-wide v4

    .line 80
    .local v4, "id":J
    cmp-long v6, v4, v16

    if-nez v6, :cond_89

    .line 81
    return v8

    .line 83
    :cond_89
    move-wide/from16 v18, v10

    .end local v10    # "tag":J
    .local v18, "tag":J
    invoke-direct/range {p0 .. p1}, Lcom/google/android/exoplayer2/extractor/mkv/Sniffer;->readUint(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)J

    move-result-wide v9

    .line 84
    .local v9, "size":J
    const-wide/16 v20, 0x0

    cmp-long v6, v9, v20

    if-ltz v6, :cond_af

    const-wide/32 v22, 0x7fffffff

    cmp-long v6, v9, v22

    if-lez v6, :cond_9d

    goto :goto_af

    .line 87
    :cond_9d
    cmp-long v6, v9, v20

    if-eqz v6, :cond_aa

    .line 88
    long-to-int v6, v9

    .line 89
    .local v6, "sizeInt":I
    invoke-interface {v1, v6}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->advancePeekPosition(I)V

    .line 90
    iget v11, v0, Lcom/google/android/exoplayer2/extractor/mkv/Sniffer;->peekLength:I

    add-int/2addr v11, v6

    iput v11, v0, Lcom/google/android/exoplayer2/extractor/mkv/Sniffer;->peekLength:I

    .line 92
    .end local v4    # "id":J
    .end local v6    # "sizeInt":I
    .end local v9    # "size":J
    :cond_aa
    move v5, v7

    move-wide/from16 v10, v18

    const/4 v4, 0x1

    goto :goto_76

    .line 85
    .restart local v4    # "id":J
    .restart local v9    # "size":J
    :cond_af
    :goto_af
    return v8

    .line 93
    .end local v4    # "id":J
    .end local v9    # "size":J
    .end local v18    # "tag":J
    .restart local v10    # "tag":J
    :cond_b0
    move-wide/from16 v18, v10

    .end local v10    # "tag":J
    .restart local v18    # "tag":J
    int-to-long v4, v6

    add-long v9, v14, v12

    cmp-long v6, v4, v9

    if-nez v6, :cond_ba

    const/4 v8, 0x1

    :cond_ba
    return v8

    .line 72
    .end local v7    # "bytesToSearch":I
    .end local v18    # "tag":J
    .restart local v5    # "bytesToSearch":I
    .restart local v10    # "tag":J
    :cond_bb
    move v7, v5

    move-wide/from16 v18, v10

    .line 74
    .end local v5    # "bytesToSearch":I
    .end local v10    # "tag":J
    .restart local v7    # "bytesToSearch":I
    .restart local v18    # "tag":J
    :goto_be
    return v8
.end method
