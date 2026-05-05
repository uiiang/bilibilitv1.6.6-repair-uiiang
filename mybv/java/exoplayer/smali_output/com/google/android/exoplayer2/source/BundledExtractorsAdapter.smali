.class public final Lcom/google/android/exoplayer2/source/BundledExtractorsAdapter;
.super Ljava/lang/Object;
.source "BundledExtractorsAdapter.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/ProgressiveMediaExtractor;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private extractor:Lcom/google/android/exoplayer2/extractor/Extractor;

.field private extractorInput:Lcom/google/android/exoplayer2/extractor/ExtractorInput;

.field private final extractorsFactory:Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;)V
    .registers 2
    .param p1, "extractorsFactory"    # Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/BundledExtractorsAdapter;->extractorsFactory:Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;

    .line 60
    return-void
.end method


# virtual methods
.method public disableSeekingOnMp3Streams()V
    .registers 3

    .line 115
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/BundledExtractorsAdapter;->extractor:Lcom/google/android/exoplayer2/extractor/Extractor;

    instance-of v1, v0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;

    if-eqz v1, :cond_b

    .line 116
    check-cast v0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->disableSeeking()V

    .line 118
    :cond_b
    return-void
.end method

.method public getCurrentInputPosition()J
    .registers 3

    .line 122
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/BundledExtractorsAdapter;->extractorInput:Lcom/google/android/exoplayer2/extractor/ExtractorInput;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v0

    goto :goto_b

    :cond_9
    const-wide/16 v0, -0x1

    :goto_b
    return-wide v0
.end method

.method public init(Lcom/google/android/exoplayer2/upstream/DataReader;Landroid/net/Uri;Ljava/util/Map;JJLcom/google/android/exoplayer2/extractor/ExtractorOutput;)V
    .registers 22
    .param p1, "dataReader"    # Lcom/google/android/exoplayer2/upstream/DataReader;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p4, "position"    # J
    .param p6, "length"    # J
    .param p8, "output"    # Lcom/google/android/exoplayer2/extractor/ExtractorOutput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/upstream/DataReader;",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;JJ",
            "Lcom/google/android/exoplayer2/extractor/ExtractorOutput;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    .local p3, "responseHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    move-object v1, p0

    new-instance v0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;

    move-object v2, v0

    move-object v3, p1

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    invoke-direct/range {v2 .. v7}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;-><init>(Lcom/google/android/exoplayer2/upstream/DataReader;JJ)V

    .line 72
    .local v2, "extractorInput":Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    iput-object v2, v1, Lcom/google/android/exoplayer2/source/BundledExtractorsAdapter;->extractorInput:Lcom/google/android/exoplayer2/extractor/ExtractorInput;

    .line 73
    iget-object v0, v1, Lcom/google/android/exoplayer2/source/BundledExtractorsAdapter;->extractor:Lcom/google/android/exoplayer2/extractor/Extractor;

    if-eqz v0, :cond_13

    .line 74
    return-void

    .line 76
    :cond_13
    iget-object v0, v1, Lcom/google/android/exoplayer2/source/BundledExtractorsAdapter;->extractorsFactory:Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;

    move-object v3, p2

    move-object/from16 v4, p3

    invoke-interface {v0, p2, v4}, Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;->createExtractors(Landroid/net/Uri;Ljava/util/Map;)[Lcom/google/android/exoplayer2/extractor/Extractor;

    move-result-object v5

    .line 77
    .local v5, "extractors":[Lcom/google/android/exoplayer2/extractor/Extractor;
    array-length v0, v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ne v0, v7, :cond_26

    .line 78
    aget-object v0, v5, v6

    iput-object v0, v1, Lcom/google/android/exoplayer2/source/BundledExtractorsAdapter;->extractor:Lcom/google/android/exoplayer2/extractor/Extractor;

    goto :goto_87

    .line 80
    :cond_26
    array-length v8, v5

    const/4 v9, 0x0

    :goto_28
    if-ge v9, v8, :cond_83

    aget-object v10, v5, v9

    .line 82
    .local v10, "extractor":Lcom/google/android/exoplayer2/extractor/Extractor;
    :try_start_2c
    invoke-interface {v10, v2}, Lcom/google/android/exoplayer2/extractor/Extractor;->sniff(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 83
    iput-object v10, v1, Lcom/google/android/exoplayer2/source/BundledExtractorsAdapter;->extractor:Lcom/google/android/exoplayer2/extractor/Extractor;
    :try_end_34
    .catch Ljava/io/EOFException; {:try_start_2c .. :try_end_34} :catch_68
    .catchall {:try_start_2c .. :try_end_34} :catchall_53

    .line 89
    if-nez v10, :cond_3e

    invoke-interface {v2}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v8

    cmp-long v0, v8, p4

    if-nez v0, :cond_3f

    :cond_3e
    const/4 v6, 0x1

    :cond_3f
    invoke-static {v6}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 90
    invoke-interface {v2}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    .line 84
    goto :goto_83

    .line 89
    :cond_46
    iget-object v0, v1, Lcom/google/android/exoplayer2/source/BundledExtractorsAdapter;->extractor:Lcom/google/android/exoplayer2/extractor/Extractor;

    if-nez v0, :cond_52

    invoke-interface {v2}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v11

    cmp-long v0, v11, p4

    if-nez v0, :cond_76

    :cond_52
    goto :goto_78

    :catchall_53
    move-exception v0

    iget-object v8, v1, Lcom/google/android/exoplayer2/source/BundledExtractorsAdapter;->extractor:Lcom/google/android/exoplayer2/extractor/Extractor;

    if-nez v8, :cond_60

    invoke-interface {v2}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v8

    cmp-long v11, v8, p4

    if-nez v11, :cond_61

    :cond_60
    const/4 v6, 0x1

    :cond_61
    invoke-static {v6}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 90
    invoke-interface {v2}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    .line 91
    throw v0

    .line 86
    :catch_68
    move-exception v0

    .line 89
    iget-object v0, v1, Lcom/google/android/exoplayer2/source/BundledExtractorsAdapter;->extractor:Lcom/google/android/exoplayer2/extractor/Extractor;

    if-nez v0, :cond_78

    invoke-interface {v2}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v11

    cmp-long v0, v11, p4

    if-nez v0, :cond_76

    goto :goto_78

    :cond_76
    const/4 v0, 0x0

    goto :goto_79

    :cond_78
    :goto_78
    const/4 v0, 0x1

    :goto_79
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 90
    invoke-interface {v2}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    .line 91
    nop

    .line 80
    .end local v10    # "extractor":Lcom/google/android/exoplayer2/extractor/Extractor;
    add-int/lit8 v9, v9, 0x1

    goto :goto_28

    .line 93
    :cond_83
    :goto_83
    iget-object v0, v1, Lcom/google/android/exoplayer2/source/BundledExtractorsAdapter;->extractor:Lcom/google/android/exoplayer2/extractor/Extractor;

    if-eqz v0, :cond_8f

    .line 101
    :goto_87
    iget-object v0, v1, Lcom/google/android/exoplayer2/source/BundledExtractorsAdapter;->extractor:Lcom/google/android/exoplayer2/extractor/Extractor;

    move-object/from16 v6, p8

    invoke-interface {v0, v6}, Lcom/google/android/exoplayer2/extractor/Extractor;->init(Lcom/google/android/exoplayer2/extractor/ExtractorOutput;)V

    .line 102
    return-void

    .line 94
    :cond_8f
    move-object/from16 v6, p8

    new-instance v0, Lcom/google/android/exoplayer2/source/UnrecognizedInputFormatException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "None of the available extractors ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 96
    invoke-static {v5}, Lcom/google/android/exoplayer2/util/Util;->getCommaDelimitedSimpleClassNames([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") could read the stream."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 98
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/Uri;

    invoke-direct {v0, v7, v8}, Lcom/google/android/exoplayer2/source/UnrecognizedInputFormatException;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_bb

    :goto_ba
    throw v0

    :goto_bb
    goto :goto_ba
.end method

.method public read(Lcom/google/android/exoplayer2/extractor/PositionHolder;)I
    .registers 4
    .param p1, "positionHolder"    # Lcom/google/android/exoplayer2/extractor/PositionHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 132
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/BundledExtractorsAdapter;->extractor:Lcom/google/android/exoplayer2/extractor/Extractor;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/Extractor;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/BundledExtractorsAdapter;->extractorInput:Lcom/google/android/exoplayer2/extractor/ExtractorInput;

    .line 133
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/extractor/ExtractorInput;

    invoke-interface {v0, v1, p1}, Lcom/google/android/exoplayer2/extractor/Extractor;->read(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;)I

    move-result v0

    .line 132
    return v0
.end method

.method public release()V
    .registers 3

    .line 106
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/BundledExtractorsAdapter;->extractor:Lcom/google/android/exoplayer2/extractor/Extractor;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 107
    invoke-interface {v0}, Lcom/google/android/exoplayer2/extractor/Extractor;->release()V

    .line 108
    iput-object v1, p0, Lcom/google/android/exoplayer2/source/BundledExtractorsAdapter;->extractor:Lcom/google/android/exoplayer2/extractor/Extractor;

    .line 110
    :cond_a
    iput-object v1, p0, Lcom/google/android/exoplayer2/source/BundledExtractorsAdapter;->extractorInput:Lcom/google/android/exoplayer2/extractor/ExtractorInput;

    .line 111
    return-void
.end method

.method public seek(JJ)V
    .registers 6
    .param p1, "position"    # J
    .param p3, "seekTimeUs"    # J

    .line 127
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/BundledExtractorsAdapter;->extractor:Lcom/google/android/exoplayer2/extractor/Extractor;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/Extractor;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/extractor/Extractor;->seek(JJ)V

    .line 128
    return-void
.end method
