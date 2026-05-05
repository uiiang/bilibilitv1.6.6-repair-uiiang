.class public final Lcom/google/android/exoplayer2/extractor/ExtractorUtil;
.super Ljava/lang/Object;
.source "ExtractorUtil.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkContainerInput(ZLjava/lang/String;)V
    .registers 3
    .param p0, "expression"    # Z
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 43
    if-eqz p0, :cond_3

    .line 46
    return-void

    .line 44
    :cond_3
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v0

    throw v0
.end method

.method public static peekFullyQuietly(Lcom/google/android/exoplayer2/extractor/ExtractorInput;[BIIZ)Z
    .registers 7
    .param p0, "input"    # Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    .param p1, "output"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "allowEndOfInput"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 121
    :try_start_0
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BIIZ)Z

    move-result v0
    :try_end_4
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_4} :catch_5

    return v0

    .line 122
    :catch_5
    move-exception v0

    .line 123
    .local v0, "e":Ljava/io/EOFException;
    if-eqz p4, :cond_a

    .line 124
    const/4 v1, 0x0

    return v1

    .line 126
    :cond_a
    throw v0
.end method

.method public static peekToLength(Lcom/google/android/exoplayer2/extractor/ExtractorInput;[BII)I
    .registers 7
    .param p0, "input"    # Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    .param p1, "target"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    const/4 v0, 0x0

    .line 64
    .local v0, "totalBytesPeeked":I
    :goto_1
    if-ge v0, p3, :cond_11

    .line 65
    add-int v1, p2, v0

    sub-int v2, p3, v0

    invoke-interface {p0, p1, v1, v2}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peek([BII)I

    move-result v1

    .line 66
    .local v1, "bytesPeeked":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_f

    .line 67
    goto :goto_11

    .line 69
    :cond_f
    add-int/2addr v0, v1

    .line 70
    .end local v1    # "bytesPeeked":I
    goto :goto_1

    .line 71
    :cond_11
    :goto_11
    return v0
.end method

.method public static readFullyQuietly(Lcom/google/android/exoplayer2/extractor/ExtractorInput;[BII)Z
    .registers 6
    .param p0, "input"    # Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    .param p1, "output"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    :try_start_0
    invoke-interface {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BII)V
    :try_end_3
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_3} :catch_6

    .line 85
    nop

    .line 86
    const/4 v0, 0x1

    return v0

    .line 83
    :catch_6
    move-exception v0

    .line 84
    .local v0, "e":Ljava/io/EOFException;
    const/4 v1, 0x0

    return v1
.end method

.method public static skipFullyQuietly(Lcom/google/android/exoplayer2/extractor/ExtractorInput;I)Z
    .registers 4
    .param p0, "input"    # Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 96
    :try_start_0
    invoke-interface {p0, p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V
    :try_end_3
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_3} :catch_6

    .line 99
    nop

    .line 100
    const/4 v0, 0x1

    return v0

    .line 97
    :catch_6
    move-exception v0

    .line 98
    .local v0, "e":Ljava/io/EOFException;
    const/4 v1, 0x0

    return v1
.end method
