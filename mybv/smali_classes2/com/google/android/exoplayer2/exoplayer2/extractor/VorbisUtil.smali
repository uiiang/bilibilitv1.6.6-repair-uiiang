.class public final Lcom/google/android/exoplayer2/extractor/VorbisUtil;
.super Ljava/lang/Object;
.source "VorbisUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/VorbisUtil$VorbisIdHeader;,
        Lcom/google/android/exoplayer2/extractor/VorbisUtil$CommentHeader;,
        Lcom/google/android/exoplayer2/extractor/VorbisUtil$Mode;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VorbisUtil"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 605
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 607
    return-void
.end method

.method public static iLog(I)I
    .registers 2
    .param p0, "x"    # I

    .line 151
    const/4 v0, 0x0

    .line 152
    .local v0, "val":I
    :goto_1
    if-lez p0, :cond_8

    .line 153
    add-int/lit8 v0, v0, 0x1

    .line 154
    ushr-int/lit8 p0, p0, 0x1

    goto :goto_1

    .line 156
    :cond_8
    return v0
.end method

.method private static mapType1QuantValues(JJ)J
    .registers 10
    .param p0, "entries"    # J
    .param p2, "dimension"    # J

    .line 602
    long-to-double v0, p0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    long-to-double v4, p2

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-long v0, v0

    return-wide v0
.end method

.method public static parseVorbisComments(Ljava/util/List;)Lcom/google/android/exoplayer2/metadata/Metadata;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/exoplayer2/metadata/Metadata;"
        }
    .end annotation

    .line 283
    .local p0, "vorbisComments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 284
    .local v0, "metadataEntries":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/metadata/Metadata$Entry;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_6c

    .line 285
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 286
    .local v2, "vorbisComment":Ljava/lang/String;
    const-string v3, "="

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Util;->splitAtFirst(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 287
    .local v3, "keyAndValue":[Ljava/lang/String;
    array-length v4, v3

    const/4 v5, 0x2

    const-string v6, "VorbisUtil"

    if-eq v4, v5, :cond_35

    .line 288
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to parse Vorbis comment: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    goto :goto_69

    .line 292
    :cond_35
    const/4 v4, 0x0

    aget-object v5, v3, v4

    const-string v7, "METADATA_BLOCK_PICTURE"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v7, 0x1

    if-eqz v5, :cond_5c

    .line 297
    :try_start_41
    aget-object v5, v3, v7

    invoke-static {v5, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v4

    .line 298
    .local v4, "decoded":[B
    new-instance v5, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {v5, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>([B)V

    invoke-static {v5}, Lcom/google/android/exoplayer2/metadata/flac/PictureFrame;->fromPictureBlock(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/flac/PictureFrame;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_53
    .catch Ljava/lang/RuntimeException; {:try_start_41 .. :try_end_53} :catch_55

    .line 301
    nop

    .end local v4    # "decoded":[B
    goto :goto_69

    .line 299
    :catch_55
    move-exception v4

    .line 300
    .local v4, "e":Ljava/lang/RuntimeException;
    const-string v5, "Failed to parse vorbis picture"

    invoke-static {v6, v5, v4}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 301
    .end local v4    # "e":Ljava/lang/RuntimeException;
    goto :goto_69

    .line 303
    :cond_5c
    new-instance v5, Lcom/google/android/exoplayer2/metadata/vorbis/VorbisComment;

    aget-object v4, v3, v4

    aget-object v6, v3, v7

    invoke-direct {v5, v4, v6}, Lcom/google/android/exoplayer2/metadata/vorbis/VorbisComment;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v5

    .line 304
    .local v4, "entry":Lcom/google/android/exoplayer2/metadata/vorbis/VorbisComment;
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 284
    .end local v2    # "vorbisComment":Ljava/lang/String;
    .end local v3    # "keyAndValue":[Ljava/lang/String;
    .end local v4    # "entry":Lcom/google/android/exoplayer2/metadata/vorbis/VorbisComment;
    :goto_69
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 308
    .end local v1    # "i":I
    :cond_6c
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_74

    const/4 v1, 0x0

    goto :goto_79

    :cond_74
    new-instance v1, Lcom/google/android/exoplayer2/metadata/Metadata;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/metadata/Metadata;-><init>(Ljava/util/List;)V

    :goto_79
    return-object v1
.end method

.method private static readFloors(Lcom/google/android/exoplayer2/extractor/VorbisBitArray;)V
    .registers 16
    .param p0, "bitArray"    # Lcom/google/android/exoplayer2/extractor/VorbisBitArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 491
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->readBits(I)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    .line 492
    .local v1, "floorCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_8
    if-ge v3, v1, :cond_b0

    .line 493
    const/16 v4, 0x10

    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->readBits(I)I

    move-result v5

    .line 494
    .local v5, "floorType":I
    const/4 v6, 0x4

    const/16 v7, 0x8

    packed-switch v5, :pswitch_data_b2

    .line 539
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "floor type greater than 1 not decodable: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v0

    throw v0

    .line 507
    :pswitch_2f
    const/4 v4, 0x5

    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->readBits(I)I

    move-result v4

    .line 508
    .local v4, "partitions":I
    const/4 v8, -0x1

    .line 509
    .local v8, "maximumClass":I
    new-array v9, v4, [I

    .line 510
    .local v9, "partitionClassList":[I
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_38
    if-ge v10, v4, :cond_49

    .line 511
    invoke-virtual {p0, v6}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->readBits(I)I

    move-result v11

    aput v11, v9, v10

    .line 512
    aget v11, v9, v10

    if-le v11, v8, :cond_46

    .line 513
    aget v8, v9, v10

    .line 510
    :cond_46
    add-int/lit8 v10, v10, 0x1

    goto :goto_38

    .line 516
    .end local v10    # "j":I
    :cond_49
    add-int/lit8 v10, v8, 0x1

    new-array v10, v10, [I

    .line 517
    .local v10, "classDimensions":[I
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_4e
    array-length v12, v10

    const/4 v13, 0x2

    if-ge v11, v12, :cond_71

    .line 518
    const/4 v12, 0x3

    invoke-virtual {p0, v12}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->readBits(I)I

    move-result v12

    add-int/2addr v12, v2

    aput v12, v10, v11

    .line 519
    invoke-virtual {p0, v13}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->readBits(I)I

    move-result v12

    .line 520
    .local v12, "classSubclasses":I
    if-lez v12, :cond_63

    .line 521
    invoke-virtual {p0, v7}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->skipBits(I)V

    .line 523
    :cond_63
    const/4 v13, 0x0

    .local v13, "k":I
    :goto_64
    shl-int v14, v2, v12

    if-ge v13, v14, :cond_6e

    .line 524
    invoke-virtual {p0, v7}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->skipBits(I)V

    .line 523
    add-int/lit8 v13, v13, 0x1

    goto :goto_64

    .line 517
    .end local v12    # "classSubclasses":I
    .end local v13    # "k":I
    :cond_6e
    add-int/lit8 v11, v11, 0x1

    goto :goto_4e

    .line 527
    .end local v11    # "j":I
    :cond_71
    invoke-virtual {p0, v13}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->skipBits(I)V

    .line 528
    invoke-virtual {p0, v6}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->readBits(I)I

    move-result v6

    .line 529
    .local v6, "rangeBits":I
    const/4 v7, 0x0

    .line 530
    .local v7, "count":I
    const/4 v11, 0x0

    .restart local v11    # "j":I
    const/4 v12, 0x0

    .local v12, "k":I
    :goto_7b
    if-ge v11, v4, :cond_8d

    .line 531
    aget v13, v9, v11

    .line 532
    .local v13, "idx":I
    aget v14, v10, v13

    add-int/2addr v7, v14

    .line 533
    :goto_82
    if-ge v12, v7, :cond_8a

    .line 534
    invoke-virtual {p0, v6}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->skipBits(I)V

    .line 533
    add-int/lit8 v12, v12, 0x1

    goto :goto_82

    .line 530
    .end local v13    # "idx":I
    :cond_8a
    add-int/lit8 v11, v11, 0x1

    goto :goto_7b

    .line 537
    .end local v11    # "j":I
    .end local v12    # "k":I
    :cond_8d
    goto :goto_ac

    .line 496
    .end local v4    # "partitions":I
    .end local v6    # "rangeBits":I
    .end local v7    # "count":I
    .end local v8    # "maximumClass":I
    .end local v9    # "partitionClassList":[I
    .end local v10    # "classDimensions":[I
    :pswitch_8e
    invoke-virtual {p0, v7}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->skipBits(I)V

    .line 497
    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->skipBits(I)V

    .line 498
    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->skipBits(I)V

    .line 499
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->skipBits(I)V

    .line 500
    invoke-virtual {p0, v7}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->skipBits(I)V

    .line 501
    invoke-virtual {p0, v6}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->readBits(I)I

    move-result v4

    add-int/2addr v4, v2

    .line 502
    .local v4, "floorNumberOfBooks":I
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_a3
    if-ge v6, v4, :cond_ab

    .line 503
    invoke-virtual {p0, v7}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->skipBits(I)V

    .line 502
    add-int/lit8 v6, v6, 0x1

    goto :goto_a3

    .line 505
    .end local v6    # "j":I
    :cond_ab
    nop

    .line 492
    .end local v4    # "floorNumberOfBooks":I
    .end local v5    # "floorType":I
    :goto_ac
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_8

    .line 543
    .end local v3    # "i":I
    :cond_b0
    return-void

    nop

    :pswitch_data_b2
    .packed-switch 0x0
        :pswitch_8e
        :pswitch_2f
    .end packed-switch
.end method

.method private static readMappings(ILcom/google/android/exoplayer2/extractor/VorbisBitArray;)V
    .registers 12
    .param p0, "channels"    # I
    .param p1, "bitArray"    # Lcom/google/android/exoplayer2/extractor/VorbisBitArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 417
    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->readBits(I)I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 418
    .local v0, "mappingsCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    if-ge v2, v0, :cond_8a

    .line 419
    const/16 v3, 0x10

    invoke-virtual {p1, v3}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->readBits(I)I

    move-result v3

    .line 420
    .local v3, "mappingType":I
    if-eqz v3, :cond_2b

    .line 421
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mapping type other than 0 not supported: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "VorbisUtil"

    invoke-static {v5, v4}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    goto :goto_7f

    .line 425
    :cond_2b
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->readBit()Z

    move-result v4

    const/4 v5, 0x4

    if-eqz v4, :cond_38

    .line 426
    invoke-virtual {p1, v5}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->readBits(I)I

    move-result v4

    add-int/2addr v4, v1

    .local v4, "submaps":I
    goto :goto_39

    .line 428
    .end local v4    # "submaps":I
    :cond_38
    const/4 v4, 0x1

    .line 431
    .restart local v4    # "submaps":I
    :goto_39
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->readBit()Z

    move-result v6

    const/16 v7, 0x8

    if-eqz v6, :cond_5e

    .line 432
    invoke-virtual {p1, v7}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->readBits(I)I

    move-result v6

    add-int/2addr v6, v1

    .line 433
    .local v6, "couplingSteps":I
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_47
    if-ge v8, v6, :cond_5e

    .line 434
    add-int/lit8 v9, p0, -0x1

    invoke-static {v9}, Lcom/google/android/exoplayer2/extractor/VorbisUtil;->iLog(I)I

    move-result v9

    invoke-virtual {p1, v9}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->skipBits(I)V

    .line 435
    add-int/lit8 v9, p0, -0x1

    invoke-static {v9}, Lcom/google/android/exoplayer2/extractor/VorbisUtil;->iLog(I)I

    move-result v9

    invoke-virtual {p1, v9}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->skipBits(I)V

    .line 433
    add-int/lit8 v8, v8, 0x1

    goto :goto_47

    .line 440
    .end local v6    # "couplingSteps":I
    .end local v8    # "j":I
    :cond_5e
    const/4 v6, 0x2

    invoke-virtual {p1, v6}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->readBits(I)I

    move-result v6

    if-nez v6, :cond_82

    .line 444
    if-le v4, v1, :cond_70

    .line 445
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_68
    if-ge v6, p0, :cond_70

    .line 446
    invoke-virtual {p1, v5}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->skipBits(I)V

    .line 445
    add-int/lit8 v6, v6, 0x1

    goto :goto_68

    .line 449
    .end local v6    # "j":I
    :cond_70
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_71
    if-ge v5, v4, :cond_7f

    .line 450
    invoke-virtual {p1, v7}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->skipBits(I)V

    .line 451
    invoke-virtual {p1, v7}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->skipBits(I)V

    .line 452
    invoke-virtual {p1, v7}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->skipBits(I)V

    .line 449
    add-int/lit8 v5, v5, 0x1

    goto :goto_71

    .line 418
    .end local v3    # "mappingType":I
    .end local v4    # "submaps":I
    .end local v5    # "j":I
    :cond_7f
    :goto_7f
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 441
    .restart local v3    # "mappingType":I
    .restart local v4    # "submaps":I
    :cond_82
    const-string v1, "to reserved bits must be zero after mapping coupling steps"

    const/4 v5, 0x0

    invoke-static {v1, v5}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v1

    throw v1

    .line 455
    .end local v2    # "i":I
    .end local v3    # "mappingType":I
    .end local v4    # "submaps":I
    :cond_8a
    return-void
.end method

.method private static readModes(Lcom/google/android/exoplayer2/extractor/VorbisBitArray;)[Lcom/google/android/exoplayer2/extractor/VorbisUtil$Mode;
    .registers 9
    .param p0, "bitArray"    # Lcom/google/android/exoplayer2/extractor/VorbisBitArray;

    .line 404
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->readBits(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 405
    .local v0, "modeCount":I
    new-array v1, v0, [Lcom/google/android/exoplayer2/extractor/VorbisUtil$Mode;

    .line 406
    .local v1, "modes":[Lcom/google/android/exoplayer2/extractor/VorbisUtil$Mode;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v0, :cond_2a

    .line 407
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->readBit()Z

    move-result v3

    .line 408
    .local v3, "blockFlag":Z
    const/16 v4, 0x10

    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->readBits(I)I

    move-result v5

    .line 409
    .local v5, "windowType":I
    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->readBits(I)I

    move-result v4

    .line 410
    .local v4, "transformType":I
    const/16 v6, 0x8

    invoke-virtual {p0, v6}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->readBits(I)I

    move-result v6

    .line 411
    .local v6, "mapping":I
    new-instance v7, Lcom/google/android/exoplayer2/extractor/VorbisUtil$Mode;

    invoke-direct {v7, v3, v5, v4, v6}, Lcom/google/android/exoplayer2/extractor/VorbisUtil$Mode;-><init>(ZIII)V

    aput-object v7, v1, v2

    .line 406
    .end local v3    # "blockFlag":Z
    .end local v4    # "transformType":I
    .end local v5    # "windowType":I
    .end local v6    # "mapping":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 413
    .end local v2    # "i":I
    :cond_2a
    return-object v1
.end method

.method private static readResidues(Lcom/google/android/exoplayer2/extractor/VorbisBitArray;)V
    .registers 13
    .param p0, "bitArray"    # Lcom/google/android/exoplayer2/extractor/VorbisBitArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 458
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->readBits(I)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    .line 459
    .local v1, "residueCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_8
    if-ge v3, v1, :cond_67

    .line 460
    const/16 v4, 0x10

    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->readBits(I)I

    move-result v4

    .line 461
    .local v4, "residueType":I
    const/4 v5, 0x2

    if-gt v4, v5, :cond_5f

    .line 465
    const/16 v5, 0x18

    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->skipBits(I)V

    .line 466
    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->skipBits(I)V

    .line 467
    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->skipBits(I)V

    .line 468
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->readBits(I)I

    move-result v5

    add-int/2addr v5, v2

    .line 469
    .local v5, "classifications":I
    const/16 v6, 0x8

    invoke-virtual {p0, v6}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->skipBits(I)V

    .line 470
    new-array v7, v5, [I

    .line 471
    .local v7, "cascade":[I
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_2b
    if-ge v8, v5, :cond_46

    .line 472
    const/4 v9, 0x0

    .line 473
    .local v9, "highBits":I
    const/4 v10, 0x3

    invoke-virtual {p0, v10}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->readBits(I)I

    move-result v10

    .line 474
    .local v10, "lowBits":I
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->readBit()Z

    move-result v11

    if-eqz v11, :cond_3e

    .line 475
    const/4 v11, 0x5

    invoke-virtual {p0, v11}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->readBits(I)I

    move-result v9

    .line 477
    :cond_3e
    mul-int/lit8 v11, v9, 0x8

    add-int/2addr v11, v10

    aput v11, v7, v8

    .line 471
    .end local v9    # "highBits":I
    .end local v10    # "lowBits":I
    add-int/lit8 v8, v8, 0x1

    goto :goto_2b

    .line 479
    .end local v8    # "j":I
    :cond_46
    const/4 v8, 0x0

    .restart local v8    # "j":I
    :goto_47
    if-ge v8, v5, :cond_5c

    .line 480
    const/4 v9, 0x0

    .local v9, "k":I
    :goto_4a
    if-ge v9, v6, :cond_59

    .line 481
    aget v10, v7, v8

    shl-int v11, v2, v9

    and-int/2addr v10, v11

    if-eqz v10, :cond_56

    .line 482
    invoke-virtual {p0, v6}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->skipBits(I)V

    .line 480
    :cond_56
    add-int/lit8 v9, v9, 0x1

    goto :goto_4a

    .line 479
    .end local v9    # "k":I
    :cond_59
    add-int/lit8 v8, v8, 0x1

    goto :goto_47

    .line 459
    .end local v4    # "residueType":I
    .end local v5    # "classifications":I
    .end local v7    # "cascade":[I
    .end local v8    # "j":I
    :cond_5c
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 462
    .restart local v4    # "residueType":I
    :cond_5f
    const-string v0, "residueType greater than 2 is not decodable"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v0

    throw v0

    .line 488
    .end local v3    # "i":I
    .end local v4    # "residueType":I
    :cond_67
    return-void
.end method

.method public static readVorbisCommentHeader(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/extractor/VorbisUtil$CommentHeader;
    .registers 2
    .param p0, "headerData"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 222
    const/4 v0, 0x1

    invoke-static {p0, v0, v0}, Lcom/google/android/exoplayer2/extractor/VorbisUtil;->readVorbisCommentHeader(Lcom/google/android/exoplayer2/util/ParsableByteArray;ZZ)Lcom/google/android/exoplayer2/extractor/VorbisUtil$CommentHeader;

    move-result-object v0

    return-object v0
.end method

.method public static readVorbisCommentHeader(Lcom/google/android/exoplayer2/util/ParsableByteArray;ZZ)Lcom/google/android/exoplayer2/extractor/VorbisUtil$CommentHeader;
    .registers 13
    .param p0, "headerData"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p1, "hasMetadataHeader"    # Z
    .param p2, "hasFramingBit"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 245
    if-eqz p1, :cond_7

    .line 246
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/google/android/exoplayer2/extractor/VorbisUtil;->verifyVorbisHeaderCapturePattern(ILcom/google/android/exoplayer2/util/ParsableByteArray;Z)Z

    .line 248
    :cond_7
    const/4 v0, 0x7

    .line 250
    .local v0, "length":I
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianUnsignedInt()J

    move-result-wide v1

    long-to-int v2, v1

    .line 251
    .local v2, "len":I
    add-int/lit8 v0, v0, 0x4

    .line 252
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    move-result-object v1

    .line 253
    .local v1, "vendor":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v0, v3

    .line 255
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianUnsignedInt()J

    move-result-wide v3

    .line 256
    .local v3, "commentListLen":J
    long-to-int v5, v3

    new-array v5, v5, [Ljava/lang/String;

    .line 257
    .local v5, "comments":[Ljava/lang/String;
    add-int/lit8 v0, v0, 0x4

    .line 258
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_22
    int-to-long v7, v6

    cmp-long v9, v7, v3

    if-gez v9, :cond_3e

    .line 259
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianUnsignedInt()J

    move-result-wide v7

    long-to-int v2, v7

    .line 260
    add-int/lit8 v0, v0, 0x4

    .line 261
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 262
    aget-object v7, v5, v6

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v0, v7

    .line 258
    add-int/lit8 v6, v6, 0x1

    goto :goto_22

    .line 264
    .end local v6    # "i":I
    :cond_3e
    if-eqz p2, :cond_51

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v6

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_49

    goto :goto_51

    .line 265
    :cond_49
    const-string v6, "framing bit expected to be set"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v6

    throw v6

    .line 268
    :cond_51
    :goto_51
    add-int/lit8 v0, v0, 0x1

    .line 269
    new-instance v6, Lcom/google/android/exoplayer2/extractor/VorbisUtil$CommentHeader;

    invoke-direct {v6, v1, v5, v0}, Lcom/google/android/exoplayer2/extractor/VorbisUtil$CommentHeader;-><init>(Ljava/lang/String;[Ljava/lang/String;I)V

    return-object v6
.end method

.method public static readVorbisIdentificationHeader(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/extractor/VorbisUtil$VorbisIdHeader;
    .registers 24
    .param p0, "headerData"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 172
    const/4 v0, 0x1

    const/4 v1, 0x0

    move-object/from16 v2, p0

    invoke-static {v0, v2, v1}, Lcom/google/android/exoplayer2/extractor/VorbisUtil;->verifyVorbisHeaderCapturePattern(ILcom/google/android/exoplayer2/util/ParsableByteArray;Z)Z

    .line 174
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianUnsignedIntToInt()I

    move-result v14

    .line 175
    .local v14, "version":I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v15

    .line 176
    .local v15, "channels":I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianUnsignedIntToInt()I

    move-result v16

    .line 177
    .local v16, "sampleRate":I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v3

    .line 178
    .local v3, "bitrateMaximum":I
    if-gtz v3, :cond_1d

    .line 179
    const/4 v3, -0x1

    move/from16 v17, v3

    goto :goto_1f

    .line 178
    :cond_1d
    move/from16 v17, v3

    .line 181
    .end local v3    # "bitrateMaximum":I
    .local v17, "bitrateMaximum":I
    :goto_1f
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v3

    .line 182
    .local v3, "bitrateNominal":I
    if-gtz v3, :cond_29

    .line 183
    const/4 v3, -0x1

    move/from16 v18, v3

    goto :goto_2b

    .line 182
    :cond_29
    move/from16 v18, v3

    .line 185
    .end local v3    # "bitrateNominal":I
    .local v18, "bitrateNominal":I
    :goto_2b
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v3

    .line 186
    .local v3, "bitrateMinimum":I
    if-gtz v3, :cond_35

    .line 187
    const/4 v3, -0x1

    move/from16 v19, v3

    goto :goto_37

    .line 186
    :cond_35
    move/from16 v19, v3

    .line 189
    .end local v3    # "bitrateMinimum":I
    .local v19, "bitrateMinimum":I
    :goto_37
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v13

    .line 190
    .local v13, "blockSize":I
    and-int/lit8 v3, v13, 0xf

    int-to-double v3, v3

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-int v11, v3

    .line 191
    .local v11, "blockSize0":I
    and-int/lit16 v3, v13, 0xf0

    shr-int/lit8 v3, v3, 0x4

    int-to-double v3, v3

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-int v10, v3

    .line 193
    .local v10, "blockSize1":I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v3

    and-int/2addr v3, v0

    if-lez v3, :cond_58

    const/4 v12, 0x1

    goto :goto_59

    :cond_58
    const/4 v12, 0x0

    .line 195
    .local v12, "framingFlag":Z
    :goto_59
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    .line 197
    .local v0, "data":[B
    new-instance v1, Lcom/google/android/exoplayer2/extractor/VorbisUtil$VorbisIdHeader;

    move-object v3, v1

    move v4, v14

    move v5, v15

    move/from16 v6, v16

    move/from16 v7, v17

    move/from16 v8, v18

    move/from16 v9, v19

    move/from16 v20, v10

    .end local v10    # "blockSize1":I
    .local v20, "blockSize1":I
    move v10, v11

    move/from16 v21, v11

    .end local v11    # "blockSize0":I
    .local v21, "blockSize0":I
    move/from16 v11, v20

    move/from16 v22, v13

    .end local v13    # "blockSize":I
    .local v22, "blockSize":I
    move-object v13, v0

    invoke-direct/range {v3 .. v13}, Lcom/google/android/exoplayer2/extractor/VorbisUtil$VorbisIdHeader;-><init>(IIIIIIIIZ[B)V

    return-object v1
.end method

.method public static readVorbisModes(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)[Lcom/google/android/exoplayer2/extractor/VorbisUtil$Mode;
    .registers 8
    .param p0, "headerData"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p1, "channels"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 373
    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/google/android/exoplayer2/extractor/VorbisUtil;->verifyVorbisHeaderCapturePattern(ILcom/google/android/exoplayer2/util/ParsableByteArray;Z)Z

    .line 375
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 377
    .local v0, "numberOfBooks":I
    new-instance v1, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;-><init>([B)V

    .line 378
    .local v1, "bitArray":Lcom/google/android/exoplayer2/extractor/VorbisBitArray;
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v2

    mul-int/lit8 v2, v2, 0x8

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->skipBits(I)V

    .line 380
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1e
    if-ge v2, v0, :cond_26

    .line 381
    invoke-static {v1}, Lcom/google/android/exoplayer2/extractor/VorbisUtil;->skipBook(Lcom/google/android/exoplayer2/extractor/VorbisBitArray;)V

    .line 380
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    .line 384
    .end local v2    # "i":I
    :cond_26
    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->readBits(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 385
    .local v2, "timeCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2e
    const/4 v4, 0x0

    if-ge v3, v2, :cond_43

    .line 386
    const/16 v5, 0x10

    invoke-virtual {v1, v5}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->readBits(I)I

    move-result v5

    if-nez v5, :cond_3c

    .line 385
    add-int/lit8 v3, v3, 0x1

    goto :goto_2e

    .line 387
    :cond_3c
    const-string v5, "placeholder of time domain transforms not zeroed out"

    invoke-static {v5, v4}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v4

    throw v4

    .line 391
    .end local v3    # "i":I
    :cond_43
    invoke-static {v1}, Lcom/google/android/exoplayer2/extractor/VorbisUtil;->readFloors(Lcom/google/android/exoplayer2/extractor/VorbisBitArray;)V

    .line 392
    invoke-static {v1}, Lcom/google/android/exoplayer2/extractor/VorbisUtil;->readResidues(Lcom/google/android/exoplayer2/extractor/VorbisBitArray;)V

    .line 393
    invoke-static {p1, v1}, Lcom/google/android/exoplayer2/extractor/VorbisUtil;->readMappings(ILcom/google/android/exoplayer2/extractor/VorbisBitArray;)V

    .line 395
    invoke-static {v1}, Lcom/google/android/exoplayer2/extractor/VorbisUtil;->readModes(Lcom/google/android/exoplayer2/extractor/VorbisBitArray;)[Lcom/google/android/exoplayer2/extractor/VorbisUtil$Mode;

    move-result-object v3

    .line 396
    .local v3, "modes":[Lcom/google/android/exoplayer2/extractor/VorbisUtil$Mode;
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->readBit()Z

    move-result v5

    if-eqz v5, :cond_57

    .line 400
    return-object v3

    .line 397
    :cond_57
    const-string v5, "framing bit after modes not set as expected"

    invoke-static {v5, v4}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v4

    goto :goto_5f

    :goto_5e
    throw v4

    :goto_5f
    goto :goto_5e
.end method

.method private static skipBook(Lcom/google/android/exoplayer2/extractor/VorbisBitArray;)V
    .registers 11
    .param p0, "bitArray"    # Lcom/google/android/exoplayer2/extractor/VorbisBitArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 546
    const/16 v0, 0x18

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->readBits(I)I

    move-result v1

    const v2, 0x564342

    const/4 v3, 0x0

    if-ne v1, v2, :cond_98

    .line 551
    const/16 v1, 0x10

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->readBits(I)I

    move-result v1

    .line 552
    .local v1, "dimensions":I
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->readBits(I)I

    move-result v0

    .line 554
    .local v0, "entries":I
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->readBit()Z

    move-result v2

    .line 555
    .local v2, "isOrdered":Z
    const/4 v4, 0x5

    if-nez v2, :cond_37

    .line 556
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->readBit()Z

    move-result v5

    .line 557
    .local v5, "isSparse":Z
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_22
    if-ge v6, v0, :cond_36

    .line 558
    if-eqz v5, :cond_30

    .line 559
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->readBit()Z

    move-result v7

    if-eqz v7, :cond_33

    .line 560
    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->skipBits(I)V

    goto :goto_33

    .line 563
    :cond_30
    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->skipBits(I)V

    .line 557
    :cond_33
    :goto_33
    add-int/lit8 v6, v6, 0x1

    goto :goto_22

    .line 566
    .end local v5    # "isSparse":Z
    .end local v6    # "i":I
    :cond_36
    goto :goto_49

    .line 567
    :cond_37
    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->skipBits(I)V

    .line 568
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3b
    if-ge v4, v0, :cond_49

    .line 569
    sub-int v5, v0, v4

    invoke-static {v5}, Lcom/google/android/exoplayer2/extractor/VorbisUtil;->iLog(I)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->readBits(I)I

    move-result v5

    add-int/2addr v4, v5

    goto :goto_3b

    .line 573
    .end local v4    # "i":I
    :cond_49
    :goto_49
    const/4 v4, 0x4

    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->readBits(I)I

    move-result v5

    .line 574
    .local v5, "lookupType":I
    const/4 v6, 0x2

    if-gt v5, v6, :cond_80

    .line 577
    const/4 v3, 0x1

    if-eq v5, v3, :cond_56

    if-ne v5, v6, :cond_7f

    .line 578
    :cond_56
    const/16 v6, 0x20

    invoke-virtual {p0, v6}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->skipBits(I)V

    .line 579
    invoke-virtual {p0, v6}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->skipBits(I)V

    .line 580
    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->readBits(I)I

    move-result v4

    add-int/2addr v4, v3

    .line 581
    .local v4, "valueBits":I
    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->skipBits(I)V

    .line 583
    if-ne v5, v3, :cond_74

    .line 584
    if-eqz v1, :cond_71

    .line 585
    int-to-long v6, v0

    int-to-long v8, v1

    invoke-static {v6, v7, v8, v9}, Lcom/google/android/exoplayer2/extractor/VorbisUtil;->mapType1QuantValues(JJ)J

    move-result-wide v6

    .local v6, "lookupValuesCount":J
    goto :goto_78

    .line 587
    .end local v6    # "lookupValuesCount":J
    :cond_71
    const-wide/16 v6, 0x0

    .restart local v6    # "lookupValuesCount":J
    goto :goto_78

    .line 590
    .end local v6    # "lookupValuesCount":J
    :cond_74
    int-to-long v6, v0

    int-to-long v8, v1

    mul-long v6, v6, v8

    .line 593
    .restart local v6    # "lookupValuesCount":J
    :goto_78
    int-to-long v8, v4

    mul-long v8, v8, v6

    long-to-int v3, v8

    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->skipBits(I)V

    .line 595
    .end local v4    # "valueBits":I
    .end local v6    # "lookupValuesCount":J
    :cond_7f
    return-void

    .line 575
    :cond_80
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "lookup type greater than 2 not decodable: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v3

    throw v3

    .line 547
    .end local v0    # "entries":I
    .end local v1    # "dimensions":I
    .end local v2    # "isOrdered":Z
    .end local v5    # "lookupType":I
    :cond_98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "expected code book to start with [0x56, 0x43, 0x42] at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 548
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->getPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 547
    invoke-static {v0, v3}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v0

    goto :goto_b5

    :goto_b4
    throw v0

    :goto_b5
    goto :goto_b4
.end method

.method public static verifyVorbisHeaderCapturePattern(ILcom/google/android/exoplayer2/util/ParsableByteArray;Z)Z
    .registers 7
    .param p0, "headerType"    # I
    .param p1, "header"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p2, "quiet"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 323
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    const/4 v1, 0x7

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-ge v0, v1, :cond_28

    .line 324
    if-eqz p2, :cond_c

    .line 325
    return v2

    .line 327
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "too short header: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 328
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 327
    invoke-static {v0, v3}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v0

    throw v0

    .line 332
    :cond_28
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    if-eq v0, p0, :cond_4d

    .line 333
    if-eqz p2, :cond_31

    .line 334
    return v2

    .line 336
    :cond_31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "expected header type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 337
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 336
    invoke-static {v0, v3}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v0

    throw v0

    .line 341
    :cond_4d
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    const/16 v1, 0x76

    if-ne v0, v1, :cond_80

    .line 342
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    const/16 v1, 0x6f

    if-ne v0, v1, :cond_80

    .line 343
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    const/16 v1, 0x72

    if-ne v0, v1, :cond_80

    .line 344
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    const/16 v1, 0x62

    if-ne v0, v1, :cond_80

    .line 345
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    const/16 v1, 0x69

    if-ne v0, v1, :cond_80

    .line 346
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    const/16 v1, 0x73

    if-eq v0, v1, :cond_7e

    goto :goto_80

    .line 354
    :cond_7e
    const/4 v0, 0x1

    return v0

    .line 347
    :cond_80
    :goto_80
    if-eqz p2, :cond_83

    .line 348
    return v2

    .line 350
    :cond_83
    const-string v0, "expected characters \'vorbis\'"

    invoke-static {v0, v3}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v0

    throw v0
.end method
