.class public final Lorg/jsoup/parser/CharacterReader;
.super Ljava/lang/Object;
.source "CharacterReader.java"


# static fields
.field static final EOF:C = '\uffff'

.field static final maxBufferLen:I = 0x8000

.field private static final maxStringCacheLen:I = 0xc

.field private static final minReadAheadLen:I = 0x400

.field static final readAheadLimit:I = 0x6000

.field private static final stringCacheSize:I = 0x200


# instance fields
.field private bufLength:I

.field private bufMark:I

.field private bufPos:I

.field private bufSplitPoint:I

.field private charBuf:[C

.field private lastIcIndex:I

.field private lastIcSeq:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private lineNumberOffset:I

.field private newlinePositions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private readFully:Z

.field private reader:Ljava/io/Reader;

.field private readerPos:I

.field private stringCache:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .registers 3
    .param p1, "input"    # Ljava/io/Reader;

    .prologue
    .line 47
    const v0, 0x8000

    invoke-direct {p0, p1, v0}, Lorg/jsoup/parser/CharacterReader;-><init>(Ljava/io/Reader;I)V

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;I)V
    .registers 4
    .param p1, "input"    # Ljava/io/Reader;
    .param p2, "sz"    # I

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, -0x1

    iput v0, p0, Lorg/jsoup/parser/CharacterReader;->bufMark:I

    .line 33
    const/16 v0, 0x200

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/jsoup/parser/CharacterReader;->stringCache:[Ljava/lang/String;

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jsoup/parser/CharacterReader;->newlinePositions:Ljava/util/ArrayList;

    .line 36
    const/4 v0, 0x1

    iput v0, p0, Lorg/jsoup/parser/CharacterReader;->lineNumberOffset:I

    .line 39
    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 40
    invoke-virtual {p1}, Ljava/io/Reader;->markSupported()Z

    move-result v0

    invoke-static {v0}, Lorg/jsoup/helper/Validate;->isTrue(Z)V

    .line 41
    iput-object p1, p0, Lorg/jsoup/parser/CharacterReader;->reader:Ljava/io/Reader;

    .line 42
    const v0, 0x8000

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-array v0, v0, [C

    iput-object v0, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    .line 43
    invoke-direct {p0}, Lorg/jsoup/parser/CharacterReader;->bufferUp()V

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    .line 51
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lorg/jsoup/parser/CharacterReader;-><init>(Ljava/io/Reader;I)V

    .line 52
    return-void
.end method

.method private bufferUp()V
    .registers 14

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v12, -0x1

    .line 69
    iget-boolean v9, p0, Lorg/jsoup/parser/CharacterReader;->readFully:Z

    if-nez v9, :cond_d

    iget v9, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    iget v10, p0, Lorg/jsoup/parser/CharacterReader;->bufSplitPoint:I

    if-ge v9, v10, :cond_e

    .line 109
    :cond_d
    :goto_d
    return-void

    .line 74
    :cond_e
    iget v9, p0, Lorg/jsoup/parser/CharacterReader;->bufMark:I

    if-eq v9, v12, :cond_71

    .line 75
    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->bufMark:I

    .line 76
    .local v2, "pos":I
    iget v9, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    iget v10, p0, Lorg/jsoup/parser/CharacterReader;->bufMark:I

    sub-int v1, v9, v10

    .line 83
    .local v1, "offset":I
    :goto_1a
    :try_start_1a
    iget-object v9, p0, Lorg/jsoup/parser/CharacterReader;->reader:Ljava/io/Reader;

    int-to-long v10, v2

    invoke-virtual {v9, v10, v11}, Ljava/io/Reader;->skip(J)J

    move-result-wide v4

    .line 84
    .local v4, "skipped":J
    iget-object v9, p0, Lorg/jsoup/parser/CharacterReader;->reader:Ljava/io/Reader;

    const v10, 0x8000

    invoke-virtual {v9, v10}, Ljava/io/Reader;->mark(I)V

    .line 85
    const/4 v3, 0x0

    .line 86
    .local v3, "read":I
    :goto_2a
    const/16 v9, 0x400

    if-gt v3, v9, :cond_41

    .line 87
    iget-object v9, p0, Lorg/jsoup/parser/CharacterReader;->reader:Ljava/io/Reader;

    iget-object v10, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    iget-object v11, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    array-length v11, v11

    sub-int/2addr v11, v3

    invoke-virtual {v9, v10, v3, v11}, Ljava/io/Reader;->read([CII)I

    move-result v6

    .line 88
    .local v6, "thisRead":I
    if-ne v6, v12, :cond_3f

    .line 89
    const/4 v9, 0x1

    iput-boolean v9, p0, Lorg/jsoup/parser/CharacterReader;->readFully:Z

    .line 90
    :cond_3f
    if-gtz v6, :cond_75

    .line 94
    .end local v6    # "thisRead":I
    :cond_41
    iget-object v9, p0, Lorg/jsoup/parser/CharacterReader;->reader:Ljava/io/Reader;

    invoke-virtual {v9}, Ljava/io/Reader;->reset()V

    .line 95
    if-lez v3, :cond_6a

    .line 96
    int-to-long v10, v2

    cmp-long v9, v4, v10

    if-nez v9, :cond_77

    :goto_4d
    invoke-static {v7}, Lorg/jsoup/helper/Validate;->isTrue(Z)V

    .line 97
    iput v3, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    .line 98
    iget v7, p0, Lorg/jsoup/parser/CharacterReader;->readerPos:I

    add-int/2addr v7, v2

    iput v7, p0, Lorg/jsoup/parser/CharacterReader;->readerPos:I

    .line 99
    iput v1, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 100
    iget v7, p0, Lorg/jsoup/parser/CharacterReader;->bufMark:I

    if-eq v7, v12, :cond_60

    .line 101
    const/4 v7, 0x0

    iput v7, p0, Lorg/jsoup/parser/CharacterReader;->bufMark:I

    .line 102
    :cond_60
    iget v7, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    const/16 v8, 0x6000

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    iput v7, p0, Lorg/jsoup/parser/CharacterReader;->bufSplitPoint:I
    :try_end_6a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_6a} :catch_79

    .line 107
    :cond_6a
    invoke-direct {p0}, Lorg/jsoup/parser/CharacterReader;->scanBufferForNewlines()V

    .line 108
    const/4 v7, 0x0

    iput-object v7, p0, Lorg/jsoup/parser/CharacterReader;->lastIcSeq:Ljava/lang/String;

    goto :goto_d

    .line 78
    .end local v1    # "offset":I
    .end local v2    # "pos":I
    .end local v3    # "read":I
    .end local v4    # "skipped":J
    :cond_71
    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 79
    .restart local v2    # "pos":I
    const/4 v1, 0x0

    .restart local v1    # "offset":I
    goto :goto_1a

    .line 92
    .restart local v3    # "read":I
    .restart local v4    # "skipped":J
    .restart local v6    # "thisRead":I
    :cond_75
    add-int/2addr v3, v6

    .line 93
    goto :goto_2a

    .end local v6    # "thisRead":I
    :cond_77
    move v7, v8

    .line 96
    goto :goto_4d

    .line 104
    .end local v3    # "read":I
    .end local v4    # "skipped":J
    :catch_79
    move-exception v0

    .line 105
    .local v0, "e":Ljava/io/IOException;
    new-instance v7, Lorg/jsoup/UncheckedIOException;

    invoke-direct {v7, v0}, Lorg/jsoup/UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v7
.end method

.method private static cacheString([C[Ljava/lang/String;II)Ljava/lang/String;
    .registers 10
    .param p0, "charBuf"    # [C
    .param p1, "stringCache"    # [Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "count"    # I

    .prologue
    .line 703
    const/16 v4, 0xc

    if-le p3, v4, :cond_a

    .line 704
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p2, p3}, Ljava/lang/String;-><init>([CII)V

    .line 725
    :cond_9
    :goto_9
    return-object v0

    .line 705
    :cond_a
    const/4 v4, 0x1

    if-ge p3, v4, :cond_10

    .line 706
    const-string v0, ""

    goto :goto_9

    .line 709
    :cond_10
    const/4 v1, 0x0

    .line 710
    .local v1, "hash":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_12
    if-ge v2, p3, :cond_1f

    .line 711
    mul-int/lit8 v4, v1, 0x1f

    add-int v5, p2, v2

    aget-char v5, p0, v5

    add-int v1, v4, v5

    .line 710
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 715
    :cond_1f
    and-int/lit16 v3, v1, 0x1ff

    .line 716
    .local v3, "index":I
    aget-object v0, p1, v3

    .line 718
    .local v0, "cached":Ljava/lang/String;
    if-eqz v0, :cond_2b

    invoke-static {p0, p2, p3, v0}, Lorg/jsoup/parser/CharacterReader;->rangeEquals([CIILjava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 721
    :cond_2b
    new-instance v0, Ljava/lang/String;

    .end local v0    # "cached":Ljava/lang/String;
    invoke-direct {v0, p0, p2, p3}, Ljava/lang/String;-><init>([CII)V

    .line 722
    .restart local v0    # "cached":Ljava/lang/String;
    aput-object v0, p1, v3

    goto :goto_9
.end method

.method private isEmptyNoBufferUp()Z
    .registers 3

    .prologue
    .line 227
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private lineNumIndex()I
    .registers 3

    .prologue
    .line 193
    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->isTrackNewlines()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    .line 194
    :goto_7
    return v0

    :cond_8
    iget-object v0, p0, Lorg/jsoup/parser/CharacterReader;->newlinePositions:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->pos()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    goto :goto_7
.end method

.method static rangeEquals([CIILjava/lang/String;)Z
    .registers 12
    .param p0, "charBuf"    # [C
    .param p1, "start"    # I
    .param p2, "count"    # I
    .param p3, "cached"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 732
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v6

    if-ne p2, v6, :cond_1c

    .line 733
    move v1, p1

    .line 734
    .local v1, "i":I
    const/4 v3, 0x0

    .local v3, "j":I
    move v4, v3

    .end local v3    # "j":I
    .local v4, "j":I
    move v2, v1

    .end local v1    # "i":I
    .local v2, "i":I
    move v0, p2

    .line 735
    .end local p2    # "count":I
    .local v0, "count":I
    :goto_c
    add-int/lit8 p2, v0, -0x1

    .end local v0    # "count":I
    .restart local p2    # "count":I
    if-eqz v0, :cond_1d

    .line 736
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    aget-char v6, p0, v2

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "j":I
    .restart local v3    # "j":I
    invoke-virtual {p3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v6, v7, :cond_1f

    .line 741
    .end local v1    # "i":I
    .end local v3    # "j":I
    :cond_1c
    :goto_1c
    return v5

    .line 739
    .restart local v2    # "i":I
    .restart local v4    # "j":I
    :cond_1d
    const/4 v5, 0x1

    goto :goto_1c

    .end local v2    # "i":I
    .end local v4    # "j":I
    .restart local v1    # "i":I
    .restart local v3    # "j":I
    :cond_1f
    move v4, v3

    .end local v3    # "j":I
    .restart local v4    # "j":I
    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    move v0, p2

    .end local p2    # "count":I
    .restart local v0    # "count":I
    goto :goto_c
.end method

.method private scanBufferForNewlines()V
    .registers 6

    .prologue
    const/4 v3, -0x1

    .line 201
    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->isTrackNewlines()Z

    move-result v2

    if-nez v2, :cond_8

    .line 215
    :cond_7
    return-void

    .line 204
    :cond_8
    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->lineNumberOffset:I

    iget-object v4, p0, Lorg/jsoup/parser/CharacterReader;->newlinePositions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v2, v4

    iput v2, p0, Lorg/jsoup/parser/CharacterReader;->lineNumberOffset:I

    .line 205
    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->newlinePositions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_64

    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->newlinePositions:Ljava/util/ArrayList;

    iget-object v4, p0, Lorg/jsoup/parser/CharacterReader;->newlinePositions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 206
    .local v1, "lastPos":I
    :goto_2f
    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->newlinePositions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 207
    if-eq v1, v3, :cond_45

    .line 208
    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->newlinePositions:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 209
    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->lineNumberOffset:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/jsoup/parser/CharacterReader;->lineNumberOffset:I

    .line 211
    :cond_45
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .local v0, "i":I
    :goto_47
    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    if-ge v0, v2, :cond_7

    .line 212
    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    aget-char v2, v2, v0

    const/16 v3, 0xa

    if-ne v2, v3, :cond_61

    .line 213
    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->newlinePositions:Ljava/util/ArrayList;

    iget v3, p0, Lorg/jsoup/parser/CharacterReader;->readerPos:I

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 211
    :cond_61
    add-int/lit8 v0, v0, 0x1

    goto :goto_47

    .end local v0    # "i":I
    .end local v1    # "lastPos":I
    :cond_64
    move v1, v3

    .line 205
    goto :goto_2f
.end method


# virtual methods
.method public advance()V
    .registers 2

    .prologue
    .line 260
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 261
    return-void
.end method

.method public close()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 55
    iget-object v0, p0, Lorg/jsoup/parser/CharacterReader;->reader:Ljava/io/Reader;

    if-nez v0, :cond_6

    .line 65
    :goto_5
    return-void

    .line 58
    :cond_6
    :try_start_6
    iget-object v0, p0, Lorg/jsoup/parser/CharacterReader;->reader:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_b} :catch_12
    .catchall {:try_start_6 .. :try_end_b} :catchall_1a

    .line 61
    iput-object v1, p0, Lorg/jsoup/parser/CharacterReader;->reader:Ljava/io/Reader;

    .line 62
    iput-object v1, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    .line 63
    iput-object v1, p0, Lorg/jsoup/parser/CharacterReader;->stringCache:[Ljava/lang/String;

    goto :goto_5

    .line 59
    :catch_12
    move-exception v0

    .line 61
    iput-object v1, p0, Lorg/jsoup/parser/CharacterReader;->reader:Ljava/io/Reader;

    .line 62
    iput-object v1, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    .line 63
    iput-object v1, p0, Lorg/jsoup/parser/CharacterReader;->stringCache:[Ljava/lang/String;

    goto :goto_5

    .line 61
    :catchall_1a
    move-exception v0

    iput-object v1, p0, Lorg/jsoup/parser/CharacterReader;->reader:Ljava/io/Reader;

    .line 62
    iput-object v1, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    .line 63
    iput-object v1, p0, Lorg/jsoup/parser/CharacterReader;->stringCache:[Ljava/lang/String;

    .line 64
    throw v0
.end method

.method columnNumber()I
    .registers 4

    .prologue
    .line 170
    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->isTrackNewlines()Z

    move-result v1

    if-nez v1, :cond_d

    .line 171
    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->pos()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 178
    :goto_c
    return v1

    .line 173
    :cond_d
    invoke-direct {p0}, Lorg/jsoup/parser/CharacterReader;->lineNumIndex()I

    move-result v0

    .line 174
    .local v0, "i":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1b

    .line 175
    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->pos()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 176
    :cond_1b
    if-gez v0, :cond_23

    .line 177
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/lit8 v0, v1, -0x2

    .line 178
    :cond_23
    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->pos()I

    move-result v2

    iget-object v1, p0, Lorg/jsoup/parser/CharacterReader;->newlinePositions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int v1, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_c
.end method

.method consume()C
    .registers 4

    .prologue
    .line 240
    invoke-direct {p0}, Lorg/jsoup/parser/CharacterReader;->bufferUp()V

    .line 241
    invoke-direct {p0}, Lorg/jsoup/parser/CharacterReader;->isEmptyNoBufferUp()Z

    move-result v1

    if-eqz v1, :cond_13

    const v0, 0xffff

    .line 242
    .local v0, "val":C
    :goto_c
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 243
    return v0

    .line 241
    .end local v0    # "val":C
    :cond_13
    iget-object v1, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    aget-char v0, v1, v2

    goto :goto_c
.end method

.method consumeAttributeQuoted(Z)Ljava/lang/String;
    .registers 9
    .param p1, "single"    # Z

    .prologue
    .line 426
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 427
    .local v0, "pos":I
    move v2, v0

    .line 428
    .local v2, "start":I
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    .line 429
    .local v1, "remaining":I
    iget-object v3, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    .line 431
    .local v3, "val":[C
    :goto_7
    if-ge v0, v1, :cond_13

    .line 432
    aget-char v4, v3, v0

    sparse-switch v4, :sswitch_data_28

    .line 441
    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 437
    :sswitch_11
    if-eqz p1, :cond_22

    .line 444
    :cond_13
    :goto_13
    :sswitch_13
    iput v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 445
    if-le v0, v2, :cond_25

    iget-object v4, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    iget-object v5, p0, Lorg/jsoup/parser/CharacterReader;->stringCache:[Ljava/lang/String;

    sub-int v6, v0, v2

    invoke-static {v4, v5, v2, v6}, Lorg/jsoup/parser/CharacterReader;->cacheString([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v4

    :goto_21
    return-object v4

    .line 439
    :cond_22
    :sswitch_22
    if-nez p1, :cond_e

    goto :goto_13

    .line 445
    :cond_25
    const-string v4, ""

    goto :goto_21

    .line 432
    :sswitch_data_28
    .sparse-switch
        0x0 -> :sswitch_13
        0x22 -> :sswitch_22
        0x26 -> :sswitch_13
        0x27 -> :sswitch_11
    .end sparse-switch
.end method

.method consumeData()Ljava/lang/String;
    .registers 8

    .prologue
    .line 404
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 405
    .local v0, "pos":I
    move v2, v0

    .line 406
    .local v2, "start":I
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    .line 407
    .local v1, "remaining":I
    iget-object v3, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    .line 409
    .local v3, "val":[C
    :goto_7
    if-ge v0, v1, :cond_11

    .line 410
    aget-char v4, v3, v0

    sparse-switch v4, :sswitch_data_24

    .line 416
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 419
    :cond_11
    :sswitch_11
    iput v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 420
    if-le v0, v2, :cond_20

    iget-object v4, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    iget-object v5, p0, Lorg/jsoup/parser/CharacterReader;->stringCache:[Ljava/lang/String;

    sub-int v6, v0, v2

    invoke-static {v4, v5, v2, v6}, Lorg/jsoup/parser/CharacterReader;->cacheString([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v4

    :goto_1f
    return-object v4

    :cond_20
    const-string v4, ""

    goto :goto_1f

    .line 410
    nop

    :sswitch_data_24
    .sparse-switch
        0x0 -> :sswitch_11
        0x26 -> :sswitch_11
        0x3c -> :sswitch_11
    .end sparse-switch
.end method

.method consumeDigitSequence()Ljava/lang/String;
    .registers 6

    .prologue
    .line 554
    invoke-direct {p0}, Lorg/jsoup/parser/CharacterReader;->bufferUp()V

    .line 555
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 556
    .local v1, "start":I
    :goto_5
    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    iget v3, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    if-ge v2, v3, :cond_20

    .line 557
    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    iget v3, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    aget-char v0, v2, v3

    .line 558
    .local v0, "c":C
    const/16 v2, 0x30

    if-lt v0, v2, :cond_20

    const/16 v2, 0x39

    if-gt v0, v2, :cond_20

    .line 559
    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    goto :goto_5

    .line 563
    .end local v0    # "c":C
    :cond_20
    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    iget-object v3, p0, Lorg/jsoup/parser/CharacterReader;->stringCache:[Ljava/lang/String;

    iget v4, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    sub-int/2addr v4, v1

    invoke-static {v2, v3, v1, v4}, Lorg/jsoup/parser/CharacterReader;->cacheString([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method consumeHexSequence()Ljava/lang/String;
    .registers 6

    .prologue
    .line 541
    invoke-direct {p0}, Lorg/jsoup/parser/CharacterReader;->bufferUp()V

    .line 542
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 543
    .local v1, "start":I
    :goto_5
    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    iget v3, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    if-ge v2, v3, :cond_30

    .line 544
    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    iget v3, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    aget-char v0, v2, v3

    .line 545
    .local v0, "c":C
    const/16 v2, 0x30

    if-lt v0, v2, :cond_19

    const/16 v2, 0x39

    if-le v0, v2, :cond_29

    :cond_19
    const/16 v2, 0x41

    if-lt v0, v2, :cond_21

    const/16 v2, 0x46

    if-le v0, v2, :cond_29

    :cond_21
    const/16 v2, 0x61

    if-lt v0, v2, :cond_30

    const/16 v2, 0x66

    if-gt v0, v2, :cond_30

    .line 546
    :cond_29
    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    goto :goto_5

    .line 550
    .end local v0    # "c":C
    :cond_30
    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    iget-object v3, p0, Lorg/jsoup/parser/CharacterReader;->stringCache:[Ljava/lang/String;

    iget v4, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    sub-int/2addr v4, v1

    invoke-static {v2, v3, v1, v4}, Lorg/jsoup/parser/CharacterReader;->cacheString([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method consumeLetterSequence()Ljava/lang/String;
    .registers 6

    .prologue
    .line 506
    invoke-direct {p0}, Lorg/jsoup/parser/CharacterReader;->bufferUp()V

    .line 507
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 508
    .local v1, "start":I
    :goto_5
    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    iget v3, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    if-ge v2, v3, :cond_2e

    .line 509
    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    iget v3, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    aget-char v0, v2, v3

    .line 510
    .local v0, "c":C
    const/16 v2, 0x41

    if-lt v0, v2, :cond_19

    const/16 v2, 0x5a

    if-le v0, v2, :cond_27

    :cond_19
    const/16 v2, 0x61

    if-lt v0, v2, :cond_21

    const/16 v2, 0x7a

    if-le v0, v2, :cond_27

    :cond_21
    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 511
    :cond_27
    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    goto :goto_5

    .line 516
    .end local v0    # "c":C
    :cond_2e
    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    iget-object v3, p0, Lorg/jsoup/parser/CharacterReader;->stringCache:[Ljava/lang/String;

    iget v4, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    sub-int/2addr v4, v1

    invoke-static {v2, v3, v1, v4}, Lorg/jsoup/parser/CharacterReader;->cacheString([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method consumeLetterThenDigitSequence()Ljava/lang/String;
    .registers 6

    .prologue
    .line 520
    invoke-direct {p0}, Lorg/jsoup/parser/CharacterReader;->bufferUp()V

    .line 521
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 522
    .local v1, "start":I
    :goto_5
    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    iget v3, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    if-ge v2, v3, :cond_2e

    .line 523
    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    iget v3, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    aget-char v0, v2, v3

    .line 524
    .local v0, "c":C
    const/16 v2, 0x41

    if-lt v0, v2, :cond_19

    const/16 v2, 0x5a

    if-le v0, v2, :cond_27

    :cond_19
    const/16 v2, 0x61

    if-lt v0, v2, :cond_21

    const/16 v2, 0x7a

    if-le v0, v2, :cond_27

    :cond_21
    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 525
    :cond_27
    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    goto :goto_5

    .line 529
    .end local v0    # "c":C
    :cond_2e
    :goto_2e
    invoke-direct {p0}, Lorg/jsoup/parser/CharacterReader;->isEmptyNoBufferUp()Z

    move-result v2

    if-nez v2, :cond_49

    .line 530
    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    iget v3, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    aget-char v0, v2, v3

    .line 531
    .restart local v0    # "c":C
    const/16 v2, 0x30

    if-lt v0, v2, :cond_49

    const/16 v2, 0x39

    if-gt v0, v2, :cond_49

    .line 532
    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    goto :goto_2e

    .line 537
    .end local v0    # "c":C
    :cond_49
    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    iget-object v3, p0, Lorg/jsoup/parser/CharacterReader;->stringCache:[Ljava/lang/String;

    iget v4, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    sub-int/2addr v4, v1

    invoke-static {v2, v3, v1, v4}, Lorg/jsoup/parser/CharacterReader;->cacheString([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method consumeRawData()Ljava/lang/String;
    .registers 8

    .prologue
    .line 452
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 453
    .local v0, "pos":I
    move v2, v0

    .line 454
    .local v2, "start":I
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    .line 455
    .local v1, "remaining":I
    iget-object v3, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    .line 457
    .local v3, "val":[C
    :goto_7
    if-ge v0, v1, :cond_11

    .line 458
    aget-char v4, v3, v0

    sparse-switch v4, :sswitch_data_24

    .line 463
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 466
    :cond_11
    :sswitch_11
    iput v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 467
    if-le v0, v2, :cond_20

    iget-object v4, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    iget-object v5, p0, Lorg/jsoup/parser/CharacterReader;->stringCache:[Ljava/lang/String;

    sub-int v6, v0, v2

    invoke-static {v4, v5, v2, v6}, Lorg/jsoup/parser/CharacterReader;->cacheString([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v4

    :goto_1f
    return-object v4

    :cond_20
    const-string v4, ""

    goto :goto_1f

    .line 458
    nop

    :sswitch_data_24
    .sparse-switch
        0x0 -> :sswitch_11
        0x3c -> :sswitch_11
    .end sparse-switch
.end method

.method consumeTagName()Ljava/lang/String;
    .registers 8

    .prologue
    .line 473
    invoke-direct {p0}, Lorg/jsoup/parser/CharacterReader;->bufferUp()V

    .line 474
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 475
    .local v0, "pos":I
    move v2, v0

    .line 476
    .local v2, "start":I
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    .line 477
    .local v1, "remaining":I
    iget-object v3, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    .line 479
    .local v3, "val":[C
    :goto_a
    if-ge v0, v1, :cond_14

    .line 480
    aget-char v4, v3, v0

    sparse-switch v4, :sswitch_data_26

    .line 491
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 494
    :cond_14
    :sswitch_14
    iput v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 495
    if-le v0, v2, :cond_23

    iget-object v4, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    iget-object v5, p0, Lorg/jsoup/parser/CharacterReader;->stringCache:[Ljava/lang/String;

    sub-int v6, v0, v2

    invoke-static {v4, v5, v2, v6}, Lorg/jsoup/parser/CharacterReader;->cacheString([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v4

    :goto_22
    return-object v4

    :cond_23
    const-string v4, ""

    goto :goto_22

    .line 480
    :sswitch_data_26
    .sparse-switch
        0x9 -> :sswitch_14
        0xa -> :sswitch_14
        0xc -> :sswitch_14
        0xd -> :sswitch_14
        0x20 -> :sswitch_14
        0x2f -> :sswitch_14
        0x3c -> :sswitch_14
        0x3e -> :sswitch_14
    .end sparse-switch
.end method

.method public consumeTo(C)Ljava/lang/String;
    .registers 7
    .param p1, "c"    # C

    .prologue
    .line 330
    invoke-virtual {p0, p1}, Lorg/jsoup/parser/CharacterReader;->nextIndexOf(C)I

    move-result v1

    .line 331
    .local v1, "offset":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_17

    .line 332
    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    iget-object v3, p0, Lorg/jsoup/parser/CharacterReader;->stringCache:[Ljava/lang/String;

    iget v4, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    invoke-static {v2, v3, v4, v1}, Lorg/jsoup/parser/CharacterReader;->cacheString([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    .line 333
    .local v0, "consumed":Ljava/lang/String;
    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    add-int/2addr v2, v1

    iput v2, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 336
    .end local v0    # "consumed":Ljava/lang/String;
    :goto_16
    return-object v0

    :cond_17
    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->consumeToEnd()Ljava/lang/String;

    move-result-object v0

    goto :goto_16
.end method

.method consumeTo(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p1, "seq"    # Ljava/lang/String;

    .prologue
    .line 341
    invoke-virtual {p0, p1}, Lorg/jsoup/parser/CharacterReader;->nextIndexOf(Ljava/lang/CharSequence;)I

    move-result v2

    .line 342
    .local v2, "offset":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_17

    .line 343
    iget-object v3, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    iget-object v4, p0, Lorg/jsoup/parser/CharacterReader;->stringCache:[Ljava/lang/String;

    iget v5, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    invoke-static {v3, v4, v5, v2}, Lorg/jsoup/parser/CharacterReader;->cacheString([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    .line 344
    .local v0, "consumed":Ljava/lang/String;
    iget v3, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    add-int/2addr v3, v2

    iput v3, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 355
    .end local v0    # "consumed":Ljava/lang/String;
    :goto_16
    return-object v0

    .line 346
    :cond_17
    iget v3, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    iget v4, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    sub-int/2addr v3, v4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_27

    .line 348
    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->consumeToEnd()Ljava/lang/String;

    move-result-object v0

    goto :goto_16

    .line 352
    :cond_27
    iget v3, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/lit8 v1, v3, 0x1

    .line 353
    .local v1, "endPos":I
    iget-object v3, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    iget-object v4, p0, Lorg/jsoup/parser/CharacterReader;->stringCache:[Ljava/lang/String;

    iget v5, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    iget v6, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    sub-int v6, v1, v6

    invoke-static {v3, v4, v5, v6}, Lorg/jsoup/parser/CharacterReader;->cacheString([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    .line 354
    .restart local v0    # "consumed":Ljava/lang/String;
    iput v1, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    goto :goto_16
.end method

.method public varargs consumeToAny([C)Ljava/lang/String;
    .registers 11
    .param p1, "chars"    # [C

    .prologue
    .line 365
    invoke-direct {p0}, Lorg/jsoup/parser/CharacterReader;->bufferUp()V

    .line 366
    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 367
    .local v2, "pos":I
    move v4, v2

    .line 368
    .local v4, "start":I
    iget v3, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    .line 369
    .local v3, "remaining":I
    iget-object v5, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    .line 370
    .local v5, "val":[C
    array-length v0, p1

    .line 373
    .local v0, "charLen":I
    :goto_b
    if-ge v2, v3, :cond_16

    .line 374
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    if-ge v1, v0, :cond_28

    .line 375
    aget-char v6, v5, v2

    aget-char v7, p1, v1

    if-ne v6, v7, :cond_25

    .line 381
    .end local v1    # "i":I
    :cond_16
    iput v2, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 382
    if-le v2, v4, :cond_2b

    iget-object v6, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    iget-object v7, p0, Lorg/jsoup/parser/CharacterReader;->stringCache:[Ljava/lang/String;

    sub-int v8, v2, v4

    invoke-static {v6, v7, v4, v8}, Lorg/jsoup/parser/CharacterReader;->cacheString([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v6

    :goto_24
    return-object v6

    .line 374
    .restart local v1    # "i":I
    :cond_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 378
    :cond_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 382
    .end local v1    # "i":I
    :cond_2b
    const-string v6, ""

    goto :goto_24
.end method

.method varargs consumeToAnySorted([C)Ljava/lang/String;
    .registers 9
    .param p1, "chars"    # [C

    .prologue
    .line 386
    invoke-direct {p0}, Lorg/jsoup/parser/CharacterReader;->bufferUp()V

    .line 387
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 388
    .local v0, "pos":I
    move v2, v0

    .line 389
    .local v2, "start":I
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    .line 390
    .local v1, "remaining":I
    iget-object v3, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    .line 392
    .local v3, "val":[C
    :goto_a
    if-ge v0, v1, :cond_14

    .line 393
    aget-char v4, v3, v0

    invoke-static {p1, v4}, Ljava/util/Arrays;->binarySearch([CC)I

    move-result v4

    if-ltz v4, :cond_25

    .line 397
    :cond_14
    iput v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 398
    iget v4, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    if-le v4, v2, :cond_28

    iget-object v4, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    iget-object v5, p0, Lorg/jsoup/parser/CharacterReader;->stringCache:[Ljava/lang/String;

    sub-int v6, v0, v2

    invoke-static {v4, v5, v2, v6}, Lorg/jsoup/parser/CharacterReader;->cacheString([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v4

    :goto_24
    return-object v4

    .line 395
    :cond_25
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 398
    :cond_28
    const-string v4, ""

    goto :goto_24
.end method

.method consumeToEnd()Ljava/lang/String;
    .registers 7

    .prologue
    .line 499
    invoke-direct {p0}, Lorg/jsoup/parser/CharacterReader;->bufferUp()V

    .line 500
    iget-object v1, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->stringCache:[Ljava/lang/String;

    iget v3, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    iget v4, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    iget v5, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    sub-int/2addr v4, v5

    invoke-static {v1, v2, v3, v4}, Lorg/jsoup/parser/CharacterReader;->cacheString([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    .line 501
    .local v0, "data":Ljava/lang/String;
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    iput v1, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 502
    return-object v0
.end method

.method containsIgnoreCase(Ljava/lang/String;)Z
    .registers 11
    .param p1, "seq"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    const/4 v6, 0x1

    const/4 v5, -0x1

    .line 668
    iget-object v7, p0, Lorg/jsoup/parser/CharacterReader;->lastIcSeq:Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_18

    .line 669
    iget v7, p0, Lorg/jsoup/parser/CharacterReader;->lastIcIndex:I

    if-ne v7, v5, :cond_10

    .line 684
    :goto_f
    return v0

    .line 670
    :cond_10
    iget v7, p0, Lorg/jsoup/parser/CharacterReader;->lastIcIndex:I

    iget v8, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    if-lt v7, v8, :cond_18

    move v0, v6

    goto :goto_f

    .line 672
    :cond_18
    iput-object p1, p0, Lorg/jsoup/parser/CharacterReader;->lastIcSeq:Ljava/lang/String;

    .line 674
    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 675
    .local v4, "loScan":Ljava/lang/String;
    invoke-virtual {p0, v4}, Lorg/jsoup/parser/CharacterReader;->nextIndexOf(Ljava/lang/CharSequence;)I

    move-result v3

    .line 676
    .local v3, "lo":I
    if-le v3, v5, :cond_2d

    .line 677
    iget v5, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    add-int/2addr v5, v3

    iput v5, p0, Lorg/jsoup/parser/CharacterReader;->lastIcIndex:I

    move v0, v6

    goto :goto_f

    .line 680
    :cond_2d
    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v7}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 681
    .local v2, "hiScan":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lorg/jsoup/parser/CharacterReader;->nextIndexOf(Ljava/lang/CharSequence;)I

    move-result v1

    .line 682
    .local v1, "hi":I
    if-le v1, v5, :cond_3a

    move v0, v6

    .line 683
    .local v0, "found":Z
    :cond_3a
    if-eqz v0, :cond_3f

    iget v5, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    add-int/2addr v5, v1

    :cond_3f
    iput v5, p0, Lorg/jsoup/parser/CharacterReader;->lastIcIndex:I

    goto :goto_f
.end method

.method public current()C
    .registers 3

    .prologue
    .line 235
    invoke-direct {p0}, Lorg/jsoup/parser/CharacterReader;->bufferUp()V

    .line 236
    invoke-direct {p0}, Lorg/jsoup/parser/CharacterReader;->isEmptyNoBufferUp()Z

    move-result v0

    if-eqz v0, :cond_d

    const v0, 0xffff

    :goto_c
    return v0

    :cond_d
    iget-object v0, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    aget-char v0, v0, v1

    goto :goto_c
.end method

.method cursorPos()Ljava/lang/String;
    .registers 3

    .prologue
    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->lineNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->columnNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isEmpty()Z
    .registers 3

    .prologue
    .line 222
    invoke-direct {p0}, Lorg/jsoup/parser/CharacterReader;->bufferUp()V

    .line 223
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    if-lt v0, v1, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public isTrackNewlines()Z
    .registers 2

    .prologue
    .line 142
    iget-object v0, p0, Lorg/jsoup/parser/CharacterReader;->newlinePositions:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public lineNumber()I
    .registers 4

    .prologue
    .line 152
    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->isTrackNewlines()Z

    move-result v1

    if-nez v1, :cond_8

    .line 153
    const/4 v1, 0x1

    .line 160
    :goto_7
    return v1

    .line 155
    :cond_8
    invoke-direct {p0}, Lorg/jsoup/parser/CharacterReader;->lineNumIndex()I

    move-result v0

    .line 156
    .local v0, "i":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_12

    .line 157
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->lineNumberOffset:I

    goto :goto_7

    .line 158
    :cond_12
    if-gez v0, :cond_1e

    .line 159
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->lineNumberOffset:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    goto :goto_7

    .line 160
    :cond_1e
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->lineNumberOffset:I

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_7
.end method

.method mark()V
    .registers 3

    .prologue
    .line 265
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    sub-int/2addr v0, v1

    const/16 v1, 0x400

    if-ge v0, v1, :cond_c

    .line 266
    const/4 v0, 0x0

    iput v0, p0, Lorg/jsoup/parser/CharacterReader;->bufSplitPoint:I

    .line 268
    :cond_c
    invoke-direct {p0}, Lorg/jsoup/parser/CharacterReader;->bufferUp()V

    .line 269
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    iput v0, p0, Lorg/jsoup/parser/CharacterReader;->bufMark:I

    .line 270
    return-void
.end method

.method matchConsume(Ljava/lang/String;)Z
    .registers 4
    .param p1, "seq"    # Ljava/lang/String;

    .prologue
    .line 642
    invoke-direct {p0}, Lorg/jsoup/parser/CharacterReader;->bufferUp()V

    .line 643
    invoke-virtual {p0, p1}, Lorg/jsoup/parser/CharacterReader;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 644
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 645
    const/4 v0, 0x1

    .line 647
    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method matchConsumeIgnoreCase(Ljava/lang/String;)Z
    .registers 4
    .param p1, "seq"    # Ljava/lang/String;

    .prologue
    .line 652
    invoke-virtual {p0, p1}, Lorg/jsoup/parser/CharacterReader;->matchesIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 653
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 654
    const/4 v0, 0x1

    .line 656
    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method matches(C)Z
    .registers 4
    .param p1, "c"    # C

    .prologue
    .line 567
    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    aget-char v0, v0, v1

    if-ne v0, p1, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method matches(Ljava/lang/String;)Z
    .registers 8
    .param p1, "seq"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 572
    invoke-direct {p0}, Lorg/jsoup/parser/CharacterReader;->bufferUp()V

    .line 573
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 574
    .local v1, "scanLength":I
    iget v3, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    iget v4, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    sub-int/2addr v3, v4

    if-le v1, v3, :cond_10

    .line 580
    :cond_f
    :goto_f
    return v2

    .line 577
    :cond_10
    const/4 v0, 0x0

    .local v0, "offset":I
    :goto_11
    if-ge v0, v1, :cond_23

    .line 578
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    iget-object v4, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    iget v5, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    add-int/2addr v5, v0

    aget-char v4, v4, v5

    if-ne v3, v4, :cond_f

    .line 577
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 580
    :cond_23
    const/4 v2, 0x1

    goto :goto_f
.end method

.method varargs matchesAny([C)Z
    .registers 7
    .param p1, "seq"    # [C

    .prologue
    const/4 v2, 0x0

    .line 599
    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 608
    :cond_7
    :goto_7
    return v2

    .line 602
    :cond_8
    invoke-direct {p0}, Lorg/jsoup/parser/CharacterReader;->bufferUp()V

    .line 603
    iget-object v3, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    iget v4, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    aget-char v0, v3, v4

    .line 604
    .local v0, "c":C
    array-length v4, p1

    move v3, v2

    :goto_13
    if-ge v3, v4, :cond_7

    aget-char v1, p1, v3

    .line 605
    .local v1, "seek":C
    if-ne v1, v0, :cond_1b

    .line 606
    const/4 v2, 0x1

    goto :goto_7

    .line 604
    :cond_1b
    add-int/lit8 v3, v3, 0x1

    goto :goto_13
.end method

.method matchesAnySorted([C)Z
    .registers 4
    .param p1, "seq"    # [C

    .prologue
    .line 612
    invoke-direct {p0}, Lorg/jsoup/parser/CharacterReader;->bufferUp()V

    .line 613
    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    aget-char v0, v0, v1

    invoke-static {p1, v0}, Ljava/util/Arrays;->binarySearch([CC)I

    move-result v0

    if-ltz v0, :cond_17

    const/4 v0, 0x1

    :goto_16
    return v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method matchesAsciiAlpha()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 628
    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 631
    :cond_7
    :goto_7
    return v1

    .line 630
    :cond_8
    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    iget v3, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    aget-char v0, v2, v3

    .line 631
    .local v0, "c":C
    const/16 v2, 0x41

    if-lt v0, v2, :cond_16

    const/16 v2, 0x5a

    if-le v0, v2, :cond_1e

    :cond_16
    const/16 v2, 0x61

    if-lt v0, v2, :cond_7

    const/16 v2, 0x7a

    if-gt v0, v2, :cond_7

    :cond_1e
    const/4 v1, 0x1

    goto :goto_7
.end method

.method matchesDigit()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 635
    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 638
    :cond_7
    :goto_7
    return v1

    .line 637
    :cond_8
    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    iget v3, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    aget-char v0, v2, v3

    .line 638
    .local v0, "c":C
    const/16 v2, 0x30

    if-lt v0, v2, :cond_7

    const/16 v2, 0x39

    if-gt v0, v2, :cond_7

    const/4 v1, 0x1

    goto :goto_7
.end method

.method matchesIgnoreCase(Ljava/lang/String;)Z
    .registers 9
    .param p1, "seq"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 584
    invoke-direct {p0}, Lorg/jsoup/parser/CharacterReader;->bufferUp()V

    .line 585
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 586
    .local v1, "scanLength":I
    iget v5, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    iget v6, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    sub-int/2addr v5, v6

    if-le v1, v5, :cond_10

    .line 595
    :cond_f
    :goto_f
    return v4

    .line 589
    :cond_10
    const/4 v0, 0x0

    .local v0, "offset":I
    :goto_11
    if-ge v0, v1, :cond_2b

    .line 590
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v2

    .line 591
    .local v2, "upScan":C
    iget-object v5, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    iget v6, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    add-int/2addr v6, v0

    aget-char v5, v5, v6

    invoke-static {v5}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    .line 592
    .local v3, "upTarget":C
    if-ne v2, v3, :cond_f

    .line 589
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 595
    .end local v2    # "upScan":C
    .end local v3    # "upTarget":C
    :cond_2b
    const/4 v4, 0x1

    goto :goto_f
.end method

.method matchesLetter()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 617
    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 620
    :cond_7
    :goto_7
    return v1

    .line 619
    :cond_8
    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    iget v3, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    aget-char v0, v2, v3

    .line 620
    .local v0, "c":C
    const/16 v2, 0x41

    if-lt v0, v2, :cond_16

    const/16 v2, 0x5a

    if-le v0, v2, :cond_24

    :cond_16
    const/16 v2, 0x61

    if-lt v0, v2, :cond_1e

    const/16 v2, 0x7a

    if-le v0, v2, :cond_24

    :cond_1e
    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_24
    const/4 v1, 0x1

    goto :goto_7
.end method

.method nextIndexOf(C)I
    .registers 4
    .param p1, "c"    # C

    .prologue
    .line 291
    invoke-direct {p0}, Lorg/jsoup/parser/CharacterReader;->bufferUp()V

    .line 292
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .local v0, "i":I
    :goto_5
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    if-ge v0, v1, :cond_17

    .line 293
    iget-object v1, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    aget-char v1, v1, v0

    if-ne p1, v1, :cond_14

    .line 294
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    sub-int v1, v0, v1

    .line 296
    :goto_13
    return v1

    .line 292
    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 296
    :cond_17
    const/4 v1, -0x1

    goto :goto_13
.end method

.method nextIndexOf(Ljava/lang/CharSequence;)I
    .registers 9
    .param p1, "seq"    # Ljava/lang/CharSequence;

    .prologue
    .line 306
    invoke-direct {p0}, Lorg/jsoup/parser/CharacterReader;->bufferUp()V

    .line 308
    const/4 v5, 0x0

    invoke-interface {p1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 309
    .local v4, "startChar":C
    iget v3, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .local v3, "offset":I
    :goto_a
    iget v5, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    if-ge v3, v5, :cond_4d

    .line 311
    iget-object v5, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    aget-char v5, v5, v3

    if-eq v4, v5, :cond_20

    .line 312
    :cond_14
    add-int/lit8 v3, v3, 0x1

    iget v5, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    if-ge v3, v5, :cond_20

    iget-object v5, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    aget-char v5, v5, v3

    if-ne v4, v5, :cond_14

    .line 313
    :cond_20
    add-int/lit8 v0, v3, 0x1

    .line 314
    .local v0, "i":I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    add-int/2addr v5, v0

    add-int/lit8 v2, v5, -0x1

    .line 315
    .local v2, "last":I
    iget v5, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    if-ge v3, v5, :cond_4a

    iget v5, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    if-gt v2, v5, :cond_4a

    .line 316
    const/4 v1, 0x1

    .local v1, "j":I
    :goto_32
    if-ge v0, v2, :cond_43

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    iget-object v6, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    aget-char v6, v6, v0

    if-ne v5, v6, :cond_43

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_32

    .line 317
    :cond_43
    if-ne v0, v2, :cond_4a

    .line 318
    iget v5, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    sub-int v5, v3, v5

    .line 321
    .end local v0    # "i":I
    .end local v1    # "j":I
    .end local v2    # "last":I
    :goto_49
    return v5

    .line 309
    .restart local v0    # "i":I
    .restart local v2    # "last":I
    :cond_4a
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 321
    .end local v0    # "i":I
    .end local v2    # "last":I
    :cond_4d
    const/4 v5, -0x1

    goto :goto_49
.end method

.method public pos()I
    .registers 3

    .prologue
    .line 116
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->readerPos:I

    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    add-int/2addr v0, v1

    return v0
.end method

.method rangeEquals(IILjava/lang/String;)Z
    .registers 5
    .param p1, "start"    # I
    .param p2, "count"    # I
    .param p3, "cached"    # Ljava/lang/String;

    .prologue
    .line 746
    iget-object v0, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    invoke-static {v0, p1, p2, p3}, Lorg/jsoup/parser/CharacterReader;->rangeEquals([CIILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method rewindToMark()V
    .registers 4

    .prologue
    .line 277
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->bufMark:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_12

    .line 278
    new-instance v0, Lorg/jsoup/UncheckedIOException;

    new-instance v1, Ljava/io/IOException;

    const-string v2, "Mark invalid"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/jsoup/UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v0

    .line 280
    :cond_12
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->bufMark:I

    iput v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 281
    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->unmark()V

    .line 282
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .prologue
    .line 689
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    sub-int/2addr v0, v1

    if-gez v0, :cond_a

    .line 690
    const-string v0, ""

    .line 691
    :goto_9
    return-object v0

    :cond_a
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    iget v3, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    iget v4, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    sub-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    goto :goto_9
.end method

.method public trackNewlines(Z)V
    .registers 4
    .param p1, "track"    # Z

    .prologue
    .line 128
    if-eqz p1, :cond_13

    iget-object v0, p0, Lorg/jsoup/parser/CharacterReader;->newlinePositions:Ljava/util/ArrayList;

    if-nez v0, :cond_13

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x199

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/jsoup/parser/CharacterReader;->newlinePositions:Ljava/util/ArrayList;

    .line 130
    invoke-direct {p0}, Lorg/jsoup/parser/CharacterReader;->scanBufferForNewlines()V

    .line 134
    :cond_12
    :goto_12
    return-void

    .line 132
    :cond_13
    if-nez p1, :cond_12

    .line 133
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jsoup/parser/CharacterReader;->newlinePositions:Ljava/util/ArrayList;

    goto :goto_12
.end method

.method unconsume()V
    .registers 4

    .prologue
    .line 250
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_12

    .line 251
    new-instance v0, Lorg/jsoup/UncheckedIOException;

    new-instance v1, Ljava/io/IOException;

    const-string v2, "WTF: No buffer left to unconsume."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/jsoup/UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v0

    .line 253
    :cond_12
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 254
    return-void
.end method

.method unmark()V
    .registers 2

    .prologue
    .line 273
    const/4 v0, -0x1

    iput v0, p0, Lorg/jsoup/parser/CharacterReader;->bufMark:I

    .line 274
    return-void
.end method
