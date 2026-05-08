.class final Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;
.super Ljava/lang/Object;
.source "AtomParsers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$UdtaInfo;,
        Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$MvhdInfo;,
        Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$TkhdData;,
        Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;,
        Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StszSampleSizeBox;,
        Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$Stz2SampleSizeBox;,
        Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$SampleSizeBox;,
        Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;,
        Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$EsdsData;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final MAX_GAPLESS_TRIM_SIZE_SAMPLES:I = 0x4

.field private static final TAG:Ljava/lang/String; = "AtomParsers"

.field private static final TYPE_clcp:I = 0x636c6370

.field private static final TYPE_mdta:I = 0x6d647461

.field private static final TYPE_meta:I = 0x6d657461

.field private static final TYPE_nclc:I = 0x6e636c63

.field private static final TYPE_nclx:I = 0x6e636c78

.field private static final TYPE_sbtl:I = 0x7362746c

.field private static final TYPE_soun:I = 0x736f756e

.field private static final TYPE_subt:I = 0x73756274

.field private static final TYPE_text:I = 0x74657874

.field private static final TYPE_vide:I = 0x76696465

.field private static final opusMagic:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 143
    const-string v0, "OpusHead"

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->getUtf8Bytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->opusMagic:[B

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1991
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1993
    return-void
.end method

.method private static allocateHdrStaticInfo()Ljava/nio/ByteBuffer;
    .registers 2

    .line 1447
    const/16 v0, 0x19

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method private static canApplyEditWithGaplessInfo([JJJJ)Z
    .registers 15
    .param p0, "timestamps"    # [J
    .param p1, "duration"    # J
    .param p3, "editStartTime"    # J
    .param p5, "editEndTime"    # J

    .line 1981
    array-length v0, p0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 1982
    .local v0, "lastIndex":I
    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-static {v2, v3, v0}, Lcom/google/android/exoplayer2/util/Util;->constrainValue(III)I

    move-result v4

    .line 1983
    .local v4, "latestDelayIndex":I
    array-length v5, p0

    sub-int/2addr v5, v2

    .line 1984
    invoke-static {v5, v3, v0}, Lcom/google/android/exoplayer2/util/Util;->constrainValue(III)I

    move-result v2

    .line 1985
    .local v2, "earliestPaddingIndex":I
    aget-wide v5, p0, v3

    cmp-long v7, v5, p3

    if-gtz v7, :cond_26

    aget-wide v5, p0, v4

    cmp-long v7, p3, v5

    if-gez v7, :cond_26

    aget-wide v5, p0, v2

    cmp-long v7, v5, p5

    if-gez v7, :cond_26

    cmp-long v5, p5, p1

    if-gtz v5, :cond_26

    goto :goto_27

    :cond_26
    const/4 v1, 0x0

    :goto_27
    return v1
.end method

.method private static canTrimSamplesWithTimestampChange(I)Z
    .registers 2
    .param p0, "trackType"    # I

    .line 820
    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    return v0
.end method

.method private static findBoxPosition(Lcom/google/android/exoplayer2/util/ParsableByteArray;III)I
    .registers 10
    .param p0, "parent"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p1, "boxType"    # I
    .param p2, "parentBoxPosition"    # I
    .param p3, "parentBoxSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 1767
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v0

    .line 1768
    .local v0, "childAtomPosition":I
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lt v0, p2, :cond_a

    const/4 v3, 0x1

    goto :goto_b

    :cond_a
    const/4 v3, 0x0

    :goto_b
    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    .line 1769
    :goto_f
    sub-int v3, v0, p2

    if-ge v3, p3, :cond_2d

    .line 1770
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 1771
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v3

    .line 1772
    .local v3, "childAtomSize":I
    if-lez v3, :cond_1e

    const/4 v4, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v4, 0x0

    :goto_1f
    const-string v5, "childAtomSize must be positive"

    invoke-static {v4, v5}, Lcom/google/android/exoplayer2/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    .line 1773
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v4

    .line 1774
    .local v4, "childType":I
    if-ne v4, p1, :cond_2b

    .line 1775
    return v0

    .line 1777
    :cond_2b
    add-int/2addr v0, v3

    .line 1778
    .end local v3    # "childAtomSize":I
    .end local v4    # "childType":I
    goto :goto_f

    .line 1779
    :cond_2d
    const/4 v1, -0x1

    return v1
.end method

.method private static getTrackTypeForHdlr(I)I
    .registers 2
    .param p0, "hdlr"    # I

    .line 978
    const v0, 0x736f756e

    if-ne p0, v0, :cond_7

    .line 979
    const/4 v0, 0x1

    return v0

    .line 980
    :cond_7
    const v0, 0x76696465

    if-ne p0, v0, :cond_e

    .line 981
    const/4 v0, 0x2

    return v0

    .line 982
    :cond_e
    const v0, 0x74657874

    if-eq p0, v0, :cond_2c

    const v0, 0x7362746c

    if-eq p0, v0, :cond_2c

    const v0, 0x73756274

    if-eq p0, v0, :cond_2c

    const v0, 0x636c6370

    if-ne p0, v0, :cond_23

    goto :goto_2c

    .line 984
    :cond_23
    const v0, 0x6d657461

    if-ne p0, v0, :cond_2a

    .line 985
    const/4 v0, 0x5

    return v0

    .line 987
    :cond_2a
    const/4 v0, -0x1

    return v0

    .line 983
    :cond_2c
    :goto_2c
    const/4 v0, 0x3

    return v0
.end method

.method public static maybeSkipRemainingMetaAtomHeaderBytes(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V
    .registers 4
    .param p0, "meta"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 326
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v0

    .line 331
    .local v0, "endPosition":I
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 332
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    const v2, 0x68646c72    # 4.3148E24f

    if-eq v1, v2, :cond_13

    .line 333
    add-int/lit8 v0, v0, 0x4

    .line 335
    :cond_13
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 336
    return-void
.end method

.method private static parseAudioSampleEntry(Lcom/google/android/exoplayer2/util/ParsableByteArray;IIIILjava/lang/String;ZLcom/google/android/exoplayer2/drm/DrmInitData;Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;I)V
    .registers 35
    .param p0, "parent"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p1, "atomType"    # I
    .param p2, "position"    # I
    .param p3, "size"    # I
    .param p4, "trackId"    # I
    .param p5, "language"    # Ljava/lang/String;
    .param p6, "isQuickTime"    # Z
    .param p7, "drmInitData"    # Lcom/google/android/exoplayer2/drm/DrmInitData;
    .param p8, "out"    # Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;
    .param p9, "entryIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 1515
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    add-int/lit8 v7, v1, 0x8

    const/16 v8, 0x8

    add-int/2addr v7, v8

    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 1517
    const/4 v7, 0x0

    .line 1518
    .local v7, "quickTimeSoundDescriptionVersion":I
    const/4 v9, 0x6

    if-eqz p6, :cond_22

    .line 1519
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v7

    .line 1520
    invoke-virtual {v0, v9}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_25

    .line 1522
    :cond_22
    invoke-virtual {v0, v8}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 1527
    :goto_25
    const/4 v8, 0x0

    .line 1528
    .local v8, "sampleRateMlp":I
    const/4 v10, -0x1

    .line 1529
    .local v10, "pcmEncoding":I
    const/4 v11, 0x0

    .line 1530
    .local v11, "codecs":Ljava/lang/String;
    const/4 v12, 0x0

    .line 1532
    .local v12, "esdsData":Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$EsdsData;
    const/4 v13, 0x2

    const/16 v14, 0x10

    const/4 v15, 0x1

    if-eqz v7, :cond_4b

    if-ne v7, v15, :cond_32

    goto :goto_4b

    .line 1544
    :cond_32
    if-ne v7, v13, :cond_4a

    .line 1545
    invoke-virtual {v0, v14}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 1547
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readDouble()D

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->round(D)J

    move-result-wide v13

    long-to-int v9, v13

    .line 1548
    .local v9, "sampleRate":I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v13

    .line 1552
    .local v13, "channelCount":I
    const/16 v14, 0x14

    invoke-virtual {v0, v14}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_6c

    .line 1555
    .end local v9    # "sampleRate":I
    .end local v13    # "channelCount":I
    :cond_4a
    return-void

    .line 1533
    :cond_4b
    :goto_4b
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v13

    .line 1534
    .restart local v13    # "channelCount":I
    invoke-virtual {v0, v9}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 1536
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedFixedPoint1616()I

    move-result v9

    .line 1538
    .restart local v9    # "sampleRate":I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v17

    const/16 v16, 0x4

    add-int/lit8 v14, v17, -0x4

    invoke-virtual {v0, v14}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 1539
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v8

    .line 1541
    if-ne v7, v15, :cond_6c

    .line 1542
    const/16 v14, 0x10

    invoke-virtual {v0, v14}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 1558
    :cond_6c
    :goto_6c
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v14

    .line 1559
    .local v14, "childPosition":I
    const v15, 0x656e6361

    move/from16 v18, v7

    .end local v7    # "quickTimeSoundDescriptionVersion":I
    .local v18, "quickTimeSoundDescriptionVersion":I
    move/from16 v7, p1

    if-ne v7, v15, :cond_b1

    .line 1561
    nop

    .line 1562
    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseSampleEntryEncryptionData(Lcom/google/android/exoplayer2/util/ParsableByteArray;II)Landroid/util/Pair;

    move-result-object v15

    .line 1563
    .local v15, "sampleEntryEncryptionData":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;>;"
    if-eqz v15, :cond_aa

    .line 1564
    iget-object v7, v15, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 1566
    .end local p1    # "atomType":I
    .local v7, "atomType":I
    if-nez v5, :cond_8e

    .line 1567
    move/from16 p1, v7

    const/4 v7, 0x0

    goto :goto_9a

    .line 1568
    :cond_8e
    move/from16 p1, v7

    .end local v7    # "atomType":I
    .restart local p1    # "atomType":I
    iget-object v7, v15, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    iget-object v7, v7, Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;->schemeType:Ljava/lang/String;

    invoke-virtual {v5, v7}, Lcom/google/android/exoplayer2/drm/DrmInitData;->copyWithSchemeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/drm/DrmInitData;

    move-result-object v7

    :goto_9a
    move-object v5, v7

    .line 1569
    .end local p7    # "drmInitData":Lcom/google/android/exoplayer2/drm/DrmInitData;
    .local v5, "drmInitData":Lcom/google/android/exoplayer2/drm/DrmInitData;
    iget-object v7, v6, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->trackEncryptionBoxes:[Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    move-object/from16 p7, v5

    .end local v5    # "drmInitData":Lcom/google/android/exoplayer2/drm/DrmInitData;
    .restart local p7    # "drmInitData":Lcom/google/android/exoplayer2/drm/DrmInitData;
    iget-object v5, v15, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    aput-object v5, v7, p9

    move/from16 v5, p1

    move-object/from16 v7, p7

    goto :goto_ad

    .line 1563
    :cond_aa
    move-object v7, v5

    move/from16 v5, p1

    .line 1571
    .end local p1    # "atomType":I
    .end local p7    # "drmInitData":Lcom/google/android/exoplayer2/drm/DrmInitData;
    .local v5, "atomType":I
    .local v7, "drmInitData":Lcom/google/android/exoplayer2/drm/DrmInitData;
    :goto_ad
    invoke-virtual {v0, v14}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    goto :goto_b4

    .line 1559
    .end local v5    # "atomType":I
    .end local v7    # "drmInitData":Lcom/google/android/exoplayer2/drm/DrmInitData;
    .end local v15    # "sampleEntryEncryptionData":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;>;"
    .restart local p1    # "atomType":I
    .restart local p7    # "drmInitData":Lcom/google/android/exoplayer2/drm/DrmInitData;
    :cond_b1
    move-object v7, v5

    move/from16 v5, p1

    .line 1579
    .end local p1    # "atomType":I
    .end local p7    # "drmInitData":Lcom/google/android/exoplayer2/drm/DrmInitData;
    .restart local v5    # "atomType":I
    .restart local v7    # "drmInitData":Lcom/google/android/exoplayer2/drm/DrmInitData;
    :goto_b4
    const/4 v15, 0x0

    .line 1580
    .local v15, "mimeType":Ljava/lang/String;
    move/from16 v20, v9

    .end local v9    # "sampleRate":I
    .local v20, "sampleRate":I
    const v9, 0x61632d33

    move/from16 v21, v10

    .end local v10    # "pcmEncoding":I
    .local v21, "pcmEncoding":I
    const v10, 0x616c6163

    if-ne v5, v9, :cond_c7

    .line 1581
    const-string v15, "audio/ac3"

    move/from16 v9, v21

    goto/16 :goto_19f

    .line 1582
    :cond_c7
    const v9, 0x65632d33

    if-ne v5, v9, :cond_d2

    .line 1583
    const-string v15, "audio/eac3"

    move/from16 v9, v21

    goto/16 :goto_19f

    .line 1584
    :cond_d2
    const v9, 0x61632d34

    if-ne v5, v9, :cond_dd

    .line 1585
    const-string v15, "audio/ac4"

    move/from16 v9, v21

    goto/16 :goto_19f

    .line 1586
    :cond_dd
    const v9, 0x64747363

    if-ne v5, v9, :cond_e8

    .line 1587
    const-string v15, "audio/vnd.dts"

    move/from16 v9, v21

    goto/16 :goto_19f

    .line 1588
    :cond_e8
    const v9, 0x64747368

    if-eq v5, v9, :cond_19b

    const v9, 0x6474736c

    if-ne v5, v9, :cond_f4

    goto/16 :goto_19b

    .line 1590
    :cond_f4
    const v9, 0x64747365

    if-ne v5, v9, :cond_ff

    .line 1591
    const-string v15, "audio/vnd.dts.hd;profile=lbr"

    move/from16 v9, v21

    goto/16 :goto_19f

    .line 1592
    :cond_ff
    const v9, 0x64747378

    if-ne v5, v9, :cond_10a

    .line 1593
    const-string v15, "audio/vnd.dts.uhd;profile=p2"

    move/from16 v9, v21

    goto/16 :goto_19f

    .line 1594
    :cond_10a
    const v9, 0x73616d72

    if-ne v5, v9, :cond_115

    .line 1595
    const-string v15, "audio/3gpp"

    move/from16 v9, v21

    goto/16 :goto_19f

    .line 1596
    :cond_115
    const v9, 0x73617762

    if-ne v5, v9, :cond_120

    .line 1597
    const-string v15, "audio/amr-wb"

    move/from16 v9, v21

    goto/16 :goto_19f

    .line 1598
    :cond_120
    const v9, 0x6c70636d

    if-eq v5, v9, :cond_197

    const v9, 0x736f7774

    if-ne v5, v9, :cond_12c

    goto/16 :goto_197

    .line 1601
    :cond_12c
    const v9, 0x74776f73

    if-ne v5, v9, :cond_137

    .line 1602
    const-string v15, "audio/raw"

    .line 1603
    const/high16 v9, 0x10000000

    .end local v21    # "pcmEncoding":I
    .local v9, "pcmEncoding":I
    goto/16 :goto_19f

    .line 1604
    .end local v9    # "pcmEncoding":I
    .restart local v21    # "pcmEncoding":I
    :cond_137
    const v9, 0x2e6d7032

    if-eq v5, v9, :cond_192

    const v9, 0x2e6d7033

    if-ne v5, v9, :cond_142

    goto :goto_192

    .line 1606
    :cond_142
    const v9, 0x6d686131

    if-ne v5, v9, :cond_14c

    .line 1607
    const-string v15, "audio/mha1"

    move/from16 v9, v21

    goto :goto_19f

    .line 1608
    :cond_14c
    const v9, 0x6d686d31

    if-ne v5, v9, :cond_156

    .line 1609
    const-string v15, "audio/mhm1"

    move/from16 v9, v21

    goto :goto_19f

    .line 1610
    :cond_156
    if-ne v5, v10, :cond_15d

    .line 1611
    const-string v15, "audio/alac"

    move/from16 v9, v21

    goto :goto_19f

    .line 1612
    :cond_15d
    const v9, 0x616c6177

    if-ne v5, v9, :cond_167

    .line 1613
    const-string v15, "audio/g711-alaw"

    move/from16 v9, v21

    goto :goto_19f

    .line 1614
    :cond_167
    const v9, 0x756c6177

    if-ne v5, v9, :cond_171

    .line 1615
    const-string v15, "audio/g711-mlaw"

    move/from16 v9, v21

    goto :goto_19f

    .line 1616
    :cond_171
    const v9, 0x4f707573

    if-ne v5, v9, :cond_17b

    .line 1617
    const-string v15, "audio/opus"

    move/from16 v9, v21

    goto :goto_19f

    .line 1618
    :cond_17b
    const v9, 0x664c6143

    if-ne v5, v9, :cond_185

    .line 1619
    const-string v15, "audio/flac"

    move/from16 v9, v21

    goto :goto_19f

    .line 1620
    :cond_185
    const v9, 0x6d6c7061

    if-ne v5, v9, :cond_18f

    .line 1621
    const-string v15, "audio/true-hd"

    move/from16 v9, v21

    goto :goto_19f

    .line 1620
    :cond_18f
    move/from16 v9, v21

    goto :goto_19f

    .line 1605
    :cond_192
    :goto_192
    const-string v15, "audio/mpeg"

    move/from16 v9, v21

    goto :goto_19f

    .line 1599
    :cond_197
    :goto_197
    const-string v15, "audio/raw"

    .line 1600
    const/4 v9, 0x2

    .end local v21    # "pcmEncoding":I
    .restart local v9    # "pcmEncoding":I
    goto :goto_19f

    .line 1589
    .end local v9    # "pcmEncoding":I
    .restart local v21    # "pcmEncoding":I
    :cond_19b
    :goto_19b
    const-string v15, "audio/vnd.dts.hd"

    move/from16 v9, v21

    .line 1624
    .end local v21    # "pcmEncoding":I
    .restart local v9    # "pcmEncoding":I
    :goto_19f
    const/16 v21, 0x0

    move-object/from16 v22, v15

    move-object/from16 v23, v21

    move v15, v14

    move v14, v13

    move-object v13, v12

    move-object v12, v11

    move/from16 v11, v20

    .line 1625
    .end local v20    # "sampleRate":I
    .local v11, "sampleRate":I
    .local v12, "codecs":Ljava/lang/String;
    .local v13, "esdsData":Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$EsdsData;
    .local v14, "channelCount":I
    .local v15, "childPosition":I
    .local v22, "mimeType":Ljava/lang/String;
    .local v23, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    :goto_1ab
    sub-int v10, v15, v1

    if-ge v10, v2, :cond_397

    .line 1626
    invoke-virtual {v0, v15}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 1627
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v10

    .line 1628
    .local v10, "childAtomSize":I
    if-lez v10, :cond_1ba

    const/4 v1, 0x1

    goto :goto_1bb

    :cond_1ba
    const/4 v1, 0x0

    :goto_1bb
    const-string v2, "childAtomSize must be positive"

    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    .line 1629
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 1630
    .local v1, "childAtomType":I
    const v2, 0x6d686143

    if-ne v1, v2, :cond_1ea

    .line 1634
    const/16 v2, 0xd

    .line 1635
    .local v2, "mhacHeaderSize":I
    move/from16 v20, v5

    .end local v5    # "atomType":I
    .local v20, "atomType":I
    sub-int v5, v10, v2

    .line 1636
    .local v5, "childAtomBodySize":I
    move-object/from16 v21, v13

    .end local v13    # "esdsData":Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$EsdsData;
    .local v21, "esdsData":Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$EsdsData;
    new-array v13, v5, [B

    .line 1637
    .local v13, "initializationDataBytes":[B
    move/from16 v24, v9

    .end local v9    # "pcmEncoding":I
    .local v24, "pcmEncoding":I
    add-int v9, v15, v2

    invoke-virtual {v0, v9}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 1638
    const/4 v9, 0x0

    invoke-virtual {v0, v13, v9, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 1639
    invoke-static {v13}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    .line 1640
    .end local v5    # "childAtomBodySize":I
    .end local v13    # "initializationDataBytes":[B
    .end local v23    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .local v2, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    move-object/from16 v23, v2

    move-object/from16 v13, v21

    const/16 v17, 0x2

    goto/16 :goto_387

    .end local v2    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .end local v20    # "atomType":I
    .end local v21    # "esdsData":Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$EsdsData;
    .end local v24    # "pcmEncoding":I
    .local v5, "atomType":I
    .restart local v9    # "pcmEncoding":I
    .local v13, "esdsData":Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$EsdsData;
    .restart local v23    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    :cond_1ea
    move/from16 v20, v5

    move/from16 v24, v9

    move-object/from16 v21, v13

    .end local v5    # "atomType":I
    .end local v9    # "pcmEncoding":I
    .end local v13    # "esdsData":Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$EsdsData;
    .restart local v20    # "atomType":I
    .restart local v21    # "esdsData":Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$EsdsData;
    .restart local v24    # "pcmEncoding":I
    const v2, 0x65736473

    if-eq v1, v2, :cond_348

    if-eqz p6, :cond_202

    const v5, 0x77617665

    if-ne v1, v5, :cond_202

    move-object/from16 v5, v22

    const/16 v17, 0x2

    goto/16 :goto_34c

    .line 1662
    :cond_202
    const v2, 0x64616333

    if-ne v1, v2, :cond_21d

    .line 1663
    add-int/lit8 v2, v15, 0x8

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 1664
    nop

    .line 1665
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v4, v7}, Lcom/google/android/exoplayer2/audio/Ac3Util;->parseAc3AnnexFFormat(Lcom/google/android/exoplayer2/util/ParsableByteArray;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;

    move-result-object v2

    iput-object v2, v6, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->format:Lcom/google/android/exoplayer2/Format;

    move-object/from16 v5, v22

    const/16 v17, 0x2

    goto/16 :goto_343

    .line 1666
    :cond_21d
    const v2, 0x64656333

    if-ne v1, v2, :cond_238

    .line 1667
    add-int/lit8 v2, v15, 0x8

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 1668
    nop

    .line 1669
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v4, v7}, Lcom/google/android/exoplayer2/audio/Ac3Util;->parseEAc3AnnexFFormat(Lcom/google/android/exoplayer2/util/ParsableByteArray;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;

    move-result-object v2

    iput-object v2, v6, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->format:Lcom/google/android/exoplayer2/Format;

    move-object/from16 v5, v22

    const/16 v17, 0x2

    goto/16 :goto_343

    .line 1670
    :cond_238
    const v2, 0x64616334

    if-ne v1, v2, :cond_253

    .line 1671
    add-int/lit8 v2, v15, 0x8

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 1672
    nop

    .line 1673
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v4, v7}, Lcom/google/android/exoplayer2/audio/Ac4Util;->parseAc4AnnexEFormat(Lcom/google/android/exoplayer2/util/ParsableByteArray;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;

    move-result-object v2

    iput-object v2, v6, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->format:Lcom/google/android/exoplayer2/Format;

    move-object/from16 v5, v22

    const/16 v17, 0x2

    goto/16 :goto_343

    .line 1674
    :cond_253
    const v2, 0x646d6c70

    if-ne v1, v2, :cond_27d

    .line 1675
    if-lez v8, :cond_264

    .line 1680
    move v2, v8

    .line 1684
    .end local v11    # "sampleRate":I
    .local v2, "sampleRate":I
    const/4 v5, 0x2

    move v11, v2

    move v14, v5

    move-object/from16 v13, v21

    const/16 v17, 0x2

    .end local v14    # "channelCount":I
    .local v5, "channelCount":I
    goto/16 :goto_387

    .line 1676
    .end local v2    # "sampleRate":I
    .end local v5    # "channelCount":I
    .restart local v11    # "sampleRate":I
    .restart local v14    # "channelCount":I
    :cond_264
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid sample rate for Dolby TrueHD MLP stream: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    invoke-static {v2, v5}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v2

    throw v2

    .line 1685
    :cond_27d
    const/4 v5, 0x0

    const v2, 0x64647473

    if-eq v1, v2, :cond_31c

    const v2, 0x75647473

    if-ne v1, v2, :cond_28c

    const/16 v17, 0x2

    goto/16 :goto_31e

    .line 1695
    :cond_28c
    const v2, 0x644f7073

    if-ne v1, v2, :cond_2b0

    .line 1698
    add-int/lit8 v2, v10, -0x8

    .line 1699
    .local v2, "childAtomBodySize":I
    sget-object v9, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->opusMagic:[B

    array-length v13, v9

    add-int/2addr v13, v2

    invoke-static {v9, v13}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v13

    .line 1700
    .local v13, "headerBytes":[B
    add-int/lit8 v5, v15, 0x8

    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 1701
    array-length v5, v9

    invoke-virtual {v0, v13, v5, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 1702
    invoke-static {v13}, Lcom/google/android/exoplayer2/audio/OpusUtil;->buildInitializationData([B)Ljava/util/List;

    move-result-object v2

    .line 1703
    .end local v13    # "headerBytes":[B
    .end local v23    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .local v2, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    move-object/from16 v23, v2

    move-object/from16 v13, v21

    const/16 v17, 0x2

    goto/16 :goto_387

    .end local v2    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .restart local v23    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    :cond_2b0
    const v2, 0x64664c61

    if-ne v1, v2, :cond_2e3

    .line 1704
    add-int/lit8 v2, v10, -0xc

    .line 1705
    .local v2, "childAtomBodySize":I
    add-int/lit8 v5, v2, 0x4

    new-array v5, v5, [B

    .line 1706
    .local v5, "initializationDataBytes":[B
    const/16 v9, 0x66

    const/4 v13, 0x0

    aput-byte v9, v5, v13

    .line 1707
    const/16 v9, 0x4c

    const/4 v13, 0x1

    aput-byte v9, v5, v13

    .line 1708
    const/16 v9, 0x61

    const/16 v17, 0x2

    aput-byte v9, v5, v17

    .line 1709
    const/4 v9, 0x3

    const/16 v19, 0x43

    aput-byte v19, v5, v9

    .line 1710
    add-int/lit8 v9, v15, 0xc

    invoke-virtual {v0, v9}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 1711
    const/4 v9, 0x4

    invoke-virtual {v0, v5, v9, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 1712
    invoke-static {v5}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    .line 1713
    .end local v5    # "initializationDataBytes":[B
    .end local v23    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .local v2, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    move-object/from16 v23, v2

    move-object/from16 v13, v21

    goto/16 :goto_387

    .end local v2    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .restart local v23    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    :cond_2e3
    const/4 v9, 0x4

    const/4 v13, 0x1

    const/16 v17, 0x2

    const v5, 0x616c6163

    if-ne v1, v5, :cond_319

    .line 1714
    add-int/lit8 v2, v10, -0xc

    .line 1715
    .local v2, "childAtomBodySize":I
    new-array v5, v2, [B

    .line 1716
    .restart local v5    # "initializationDataBytes":[B
    add-int/lit8 v9, v15, 0xc

    invoke-virtual {v0, v9}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 1717
    const/4 v9, 0x0

    invoke-virtual {v0, v5, v9, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 1720
    nop

    .line 1721
    invoke-static {v5}, Lcom/google/android/exoplayer2/util/CodecSpecificDataUtil;->parseAlacAudioSpecificConfig([B)Landroid/util/Pair;

    move-result-object v9

    .line 1722
    .local v9, "audioSpecificConfig":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v13, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 1723
    iget-object v13, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 1724
    .end local v14    # "channelCount":I
    .local v13, "channelCount":I
    invoke-static {v5}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v14

    move-object/from16 v23, v14

    move v14, v13

    move-object/from16 v13, v21

    .end local v23    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .local v14, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    goto/16 :goto_387

    .line 1713
    .end local v2    # "childAtomBodySize":I
    .end local v5    # "initializationDataBytes":[B
    .end local v9    # "audioSpecificConfig":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v13    # "channelCount":I
    .local v14, "channelCount":I
    .restart local v23    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    :cond_319
    move-object/from16 v5, v22

    goto :goto_343

    .line 1685
    :cond_31c
    const/16 v17, 0x2

    .line 1686
    :goto_31e
    new-instance v2, Lcom/google/android/exoplayer2/Format$Builder;

    invoke-direct {v2}, Lcom/google/android/exoplayer2/Format$Builder;-><init>()V

    .line 1688
    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/Format$Builder;->setId(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v2

    .line 1689
    move-object/from16 v5, v22

    .end local v22    # "mimeType":Ljava/lang/String;
    .local v5, "mimeType":Ljava/lang/String;
    invoke-virtual {v2, v5}, Lcom/google/android/exoplayer2/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v2

    .line 1690
    invoke-virtual {v2, v14}, Lcom/google/android/exoplayer2/Format$Builder;->setChannelCount(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v2

    .line 1691
    invoke-virtual {v2, v11}, Lcom/google/android/exoplayer2/Format$Builder;->setSampleRate(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v2

    .line 1692
    invoke-virtual {v2, v7}, Lcom/google/android/exoplayer2/Format$Builder;->setDrmInitData(Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v2

    .line 1693
    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/Format$Builder;->setLanguage(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v2

    .line 1694
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object v2

    iput-object v2, v6, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->format:Lcom/google/android/exoplayer2/Format;

    .line 1726
    .end local v5    # "mimeType":Ljava/lang/String;
    .restart local v22    # "mimeType":Ljava/lang/String;
    :goto_343
    move-object/from16 v22, v5

    move-object/from16 v13, v21

    .end local v22    # "mimeType":Ljava/lang/String;
    .restart local v5    # "mimeType":Ljava/lang/String;
    goto :goto_387

    .line 1640
    .end local v5    # "mimeType":Ljava/lang/String;
    .restart local v22    # "mimeType":Ljava/lang/String;
    :cond_348
    move-object/from16 v5, v22

    const/16 v17, 0x2

    .line 1643
    .end local v22    # "mimeType":Ljava/lang/String;
    .restart local v5    # "mimeType":Ljava/lang/String;
    :goto_34c
    if-ne v1, v2, :cond_350

    .line 1644
    move v2, v15

    goto :goto_354

    .line 1645
    :cond_350
    invoke-static {v0, v2, v15, v10}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->findBoxPosition(Lcom/google/android/exoplayer2/util/ParsableByteArray;III)I

    move-result v2

    :goto_354
    nop

    .line 1646
    .local v2, "esdsAtomPosition":I
    const/4 v9, -0x1

    if-eq v2, v9, :cond_382

    .line 1647
    invoke-static {v0, v2}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseEsdsFromParent(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$EsdsData;

    move-result-object v13

    .line 1648
    .end local v21    # "esdsData":Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$EsdsData;
    .local v13, "esdsData":Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$EsdsData;
    # getter for: Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$EsdsData;->mimeType:Ljava/lang/String;
    invoke-static {v13}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$EsdsData;->access$300(Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$EsdsData;)Ljava/lang/String;

    move-result-object v5

    .line 1649
    # getter for: Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$EsdsData;->initializationData:[B
    invoke-static {v13}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$EsdsData;->access$400(Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$EsdsData;)[B

    move-result-object v9

    .line 1650
    .local v9, "initializationDataBytes":[B
    if-eqz v9, :cond_37f

    .line 1651
    const-string v0, "audio/mp4a-latm"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_378

    .line 1654
    invoke-static {v9}, Lcom/google/android/exoplayer2/audio/AacUtil;->parseAudioSpecificConfig([B)Lcom/google/android/exoplayer2/audio/AacUtil$Config;

    move-result-object v0

    .line 1655
    .local v0, "aacConfig":Lcom/google/android/exoplayer2/audio/AacUtil$Config;
    iget v11, v0, Lcom/google/android/exoplayer2/audio/AacUtil$Config;->sampleRateHz:I

    .line 1656
    iget v14, v0, Lcom/google/android/exoplayer2/audio/AacUtil$Config;->channelCount:I

    .line 1657
    iget-object v12, v0, Lcom/google/android/exoplayer2/audio/AacUtil$Config;->codecs:Ljava/lang/String;

    .line 1659
    .end local v0    # "aacConfig":Lcom/google/android/exoplayer2/audio/AacUtil$Config;
    :cond_378
    invoke-static {v9}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v23

    move-object/from16 v22, v5

    goto :goto_386

    .line 1650
    :cond_37f
    move-object/from16 v22, v5

    goto :goto_386

    .line 1646
    .end local v9    # "initializationDataBytes":[B
    .end local v13    # "esdsData":Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$EsdsData;
    .restart local v21    # "esdsData":Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$EsdsData;
    :cond_382
    move-object/from16 v22, v5

    move-object/from16 v13, v21

    .line 1662
    .end local v2    # "esdsAtomPosition":I
    .end local v5    # "mimeType":Ljava/lang/String;
    .end local v21    # "esdsData":Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$EsdsData;
    .restart local v13    # "esdsData":Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$EsdsData;
    .restart local v22    # "mimeType":Ljava/lang/String;
    :goto_386
    nop

    .line 1726
    :goto_387
    add-int/2addr v15, v10

    .line 1727
    .end local v1    # "childAtomType":I
    .end local v10    # "childAtomSize":I
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v5, v20

    move/from16 v9, v24

    const v10, 0x616c6163

    goto/16 :goto_1ab

    .line 1729
    .end local v20    # "atomType":I
    .end local v24    # "pcmEncoding":I
    .local v5, "atomType":I
    .local v9, "pcmEncoding":I
    :cond_397
    move/from16 v20, v5

    move/from16 v24, v9

    move-object/from16 v21, v13

    move-object/from16 v5, v22

    .end local v9    # "pcmEncoding":I
    .end local v13    # "esdsData":Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$EsdsData;
    .end local v22    # "mimeType":Ljava/lang/String;
    .local v5, "mimeType":Ljava/lang/String;
    .restart local v20    # "atomType":I
    .restart local v21    # "esdsData":Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$EsdsData;
    .restart local v24    # "pcmEncoding":I
    iget-object v0, v6, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->format:Lcom/google/android/exoplayer2/Format;

    if-nez v0, :cond_3f3

    if-eqz v5, :cond_3f3

    .line 1730
    new-instance v0, Lcom/google/android/exoplayer2/Format$Builder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/Format$Builder;-><init>()V

    .line 1732
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/Format$Builder;->setId(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    .line 1733
    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    .line 1734
    invoke-virtual {v0, v12}, Lcom/google/android/exoplayer2/Format$Builder;->setCodecs(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    .line 1735
    invoke-virtual {v0, v14}, Lcom/google/android/exoplayer2/Format$Builder;->setChannelCount(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    .line 1736
    invoke-virtual {v0, v11}, Lcom/google/android/exoplayer2/Format$Builder;->setSampleRate(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    .line 1737
    move/from16 v9, v24

    .end local v24    # "pcmEncoding":I
    .restart local v9    # "pcmEncoding":I
    invoke-virtual {v0, v9}, Lcom/google/android/exoplayer2/Format$Builder;->setPcmEncoding(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    .line 1738
    move-object/from16 v1, v23

    .end local v23    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .local v1, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/Format$Builder;->setInitializationData(Ljava/util/List;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    .line 1739
    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/Format$Builder;->setDrmInitData(Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    .line 1740
    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/Format$Builder;->setLanguage(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    .line 1742
    .local v0, "formatBuilder":Lcom/google/android/exoplayer2/Format$Builder;
    if-eqz v21, :cond_3ec

    .line 1743
    nop

    .line 1744
    # getter for: Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$EsdsData;->bitrate:J
    invoke-static/range {v21 .. v21}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$EsdsData;->access$600(Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$EsdsData;)J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Lcom/google/common/primitives/Ints;->saturatedCast(J)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/Format$Builder;->setAverageBitrate(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v2

    .line 1745
    # getter for: Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$EsdsData;->peakBitrate:J
    invoke-static/range {v21 .. v21}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$EsdsData;->access$500(Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$EsdsData;)J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Lcom/google/common/primitives/Ints;->saturatedCast(J)I

    move-result v10

    invoke-virtual {v2, v10}, Lcom/google/android/exoplayer2/Format$Builder;->setPeakBitrate(I)Lcom/google/android/exoplayer2/Format$Builder;

    .line 1748
    :cond_3ec
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object v2

    iput-object v2, v6, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->format:Lcom/google/android/exoplayer2/Format;

    goto :goto_3f7

    .line 1729
    .end local v0    # "formatBuilder":Lcom/google/android/exoplayer2/Format$Builder;
    .end local v1    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .end local v9    # "pcmEncoding":I
    .restart local v23    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .restart local v24    # "pcmEncoding":I
    :cond_3f3
    move-object/from16 v1, v23

    move/from16 v9, v24

    .line 1750
    .end local v23    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .end local v24    # "pcmEncoding":I
    .restart local v1    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .restart local v9    # "pcmEncoding":I
    :goto_3f7
    return-void
.end method

.method static parseCommonEncryptionSinfFromParent(Lcom/google/android/exoplayer2/util/ParsableByteArray;II)Landroid/util/Pair;
    .registers 12
    .param p0, "parent"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p1, "position"    # I
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/util/ParsableByteArray;",
            "II)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 1866
    add-int/lit8 v0, p1, 0x8

    .line 1867
    .local v0, "childPosition":I
    const/4 v1, -0x1

    .line 1868
    .local v1, "schemeInformationBoxPosition":I
    const/4 v2, 0x0

    .line 1869
    .local v2, "schemeInformationBoxSize":I
    const/4 v3, 0x0

    .line 1870
    .local v3, "schemeType":Ljava/lang/String;
    const/4 v4, 0x0

    .line 1871
    .local v4, "dataFormat":Ljava/lang/Integer;
    :goto_6
    sub-int v5, v0, p1

    if-ge v5, p2, :cond_3a

    .line 1872
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 1873
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v5

    .line 1874
    .local v5, "childAtomSize":I
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v6

    .line 1875
    .local v6, "childAtomType":I
    const v7, 0x66726d61

    if-ne v6, v7, :cond_23

    .line 1876
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_38

    .line 1877
    :cond_23
    const v7, 0x7363686d

    if-ne v6, v7, :cond_31

    .line 1878
    const/4 v7, 0x4

    invoke-virtual {p0, v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 1880
    invoke-virtual {p0, v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_38

    .line 1881
    :cond_31
    const v7, 0x73636869

    if-ne v6, v7, :cond_38

    .line 1882
    move v1, v0

    .line 1883
    move v2, v5

    .line 1885
    :cond_38
    :goto_38
    add-int/2addr v0, v5

    .line 1886
    .end local v5    # "childAtomSize":I
    .end local v6    # "childAtomType":I
    goto :goto_6

    .line 1888
    :cond_3a
    const-string v5, "cenc"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5d

    .line 1889
    const-string v5, "cbc1"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5d

    .line 1890
    const-string v5, "cens"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5d

    .line 1891
    const-string v5, "cbcs"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5b

    goto :goto_5d

    .line 1902
    :cond_5b
    const/4 v5, 0x0

    return-object v5

    .line 1892
    :cond_5d
    :goto_5d
    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_63

    const/4 v7, 0x1

    goto :goto_64

    :cond_63
    const/4 v7, 0x0

    :goto_64
    const-string v8, "frma atom is mandatory"

    invoke-static {v7, v8}, Lcom/google/android/exoplayer2/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    .line 1893
    const/4 v7, -0x1

    if-eq v1, v7, :cond_6e

    const/4 v7, 0x1

    goto :goto_6f

    :cond_6e
    const/4 v7, 0x0

    :goto_6f
    const-string v8, "schi atom is mandatory"

    invoke-static {v7, v8}, Lcom/google/android/exoplayer2/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    .line 1896
    nop

    .line 1897
    invoke-static {p0, v1, v2, v3}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseSchiFromParent(Lcom/google/android/exoplayer2/util/ParsableByteArray;IILjava/lang/String;)Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    move-result-object v7

    .line 1899
    .local v7, "encryptionBox":Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;
    if-eqz v7, :cond_7c

    goto :goto_7d

    :cond_7c
    const/4 v5, 0x0

    :goto_7d
    const-string v6, "tenc atom is mandatory"

    invoke-static {v5, v6}, Lcom/google/android/exoplayer2/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    .line 1900
    invoke-static {v7}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    invoke-static {v4, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    return-object v5
.end method

.method private static parseEdts(Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;)Landroid/util/Pair;
    .registers 12
    .param p0, "edtsAtom"    # Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;",
            ")",
            "Landroid/util/Pair<",
            "[J[J>;"
        }
    .end annotation

    .line 1471
    const v0, 0x656c7374

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v0

    .line 1472
    .local v0, "elstAtom":Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;
    if-nez v0, :cond_b

    .line 1473
    const/4 v1, 0x0

    return-object v1

    .line 1475
    :cond_b
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 1476
    .local v1, "elstData":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 1477
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v2

    .line 1478
    .local v2, "fullAtom":I
    invoke-static {v2}, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v3

    .line 1479
    .local v3, "version":I
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v4

    .line 1480
    .local v4, "entryCount":I
    new-array v5, v4, [J

    .line 1481
    .local v5, "editListDurations":[J
    new-array v6, v4, [J

    .line 1482
    .local v6, "editListMediaTimes":[J
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_23
    if-ge v7, v4, :cond_57

    .line 1483
    nop

    .line 1484
    const/4 v8, 0x1

    if-ne v3, v8, :cond_2e

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v9

    goto :goto_32

    :cond_2e
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v9

    :goto_32
    aput-wide v9, v5, v7

    .line 1485
    if-ne v3, v8, :cond_3b

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLong()J

    move-result-wide v9

    goto :goto_40

    :cond_3b
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v9

    int-to-long v9, v9

    :goto_40
    aput-wide v9, v6, v7

    .line 1486
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readShort()S

    move-result v9

    .line 1487
    .local v9, "mediaRateInteger":I
    if-ne v9, v8, :cond_4f

    .line 1491
    const/4 v8, 0x2

    invoke-virtual {v1, v8}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 1482
    .end local v9    # "mediaRateInteger":I
    add-int/lit8 v7, v7, 0x1

    goto :goto_23

    .line 1489
    .restart local v9    # "mediaRateInteger":I
    :cond_4f
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v10, "Unsupported media rate."

    invoke-direct {v8, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1493
    .end local v7    # "i":I
    .end local v9    # "mediaRateInteger":I
    :cond_57
    invoke-static {v5, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v7

    return-object v7
.end method

.method private static parseEsdsFromParent(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$EsdsData;
    .registers 22
    .param p0, "parent"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p1, "position"    # I

    .line 1784
    move-object/from16 v0, p0

    add-int/lit8 v1, p1, 0x8

    const/4 v2, 0x4

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 1786
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 1787
    invoke-static/range {p0 .. p0}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseExpandableClassSize(Lcom/google/android/exoplayer2/util/ParsableByteArray;)I

    .line 1788
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 1790
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v4

    .line 1791
    .local v4, "flags":I
    and-int/lit16 v5, v4, 0x80

    if-eqz v5, :cond_1f

    .line 1792
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 1794
    :cond_1f
    and-int/lit8 v5, v4, 0x40

    if-eqz v5, :cond_2a

    .line 1795
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 1797
    :cond_2a
    and-int/lit8 v5, v4, 0x20

    if-eqz v5, :cond_31

    .line 1798
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 1802
    :cond_31
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 1803
    invoke-static/range {p0 .. p0}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseExpandableClassSize(Lcom/google/android/exoplayer2/util/ParsableByteArray;)I

    .line 1806
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v3

    .line 1807
    .local v3, "objectTypeIndication":I
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/MimeTypes;->getMimeTypeFromMp4ObjectType(I)Ljava/lang/String;

    move-result-object v12

    .line 1808
    .local v12, "mimeType":Ljava/lang/String;
    const-string v5, "audio/mpeg"

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_91

    .line 1809
    const-string v5, "audio/vnd.dts"

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_91

    .line 1810
    const-string v5, "audio/vnd.dts.hd"

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_58

    goto :goto_91

    .line 1818
    :cond_58
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 1819
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v13

    .line 1820
    .local v13, "peakBitrate":J
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v15

    .line 1823
    .local v15, "bitrate":J
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 1824
    invoke-static/range {p0 .. p0}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseExpandableClassSize(Lcom/google/android/exoplayer2/util/ParsableByteArray;)I

    move-result v1

    .line 1825
    .local v1, "initializationDataSize":I
    new-array v2, v1, [B

    .line 1826
    .local v2, "initializationData":[B
    const/4 v5, 0x0

    invoke-virtual {v0, v2, v5, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 1829
    new-instance v17, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$EsdsData;

    .line 1832
    const-wide/16 v5, -0x1

    const-wide/16 v7, 0x0

    cmp-long v9, v15, v7

    if-lez v9, :cond_7c

    move-wide v9, v15

    goto :goto_7d

    :cond_7c
    move-wide v9, v5

    .line 1833
    :goto_7d
    cmp-long v11, v13, v7

    if-lez v11, :cond_84

    move-wide/from16 v18, v13

    goto :goto_86

    :cond_84
    move-wide/from16 v18, v5

    :goto_86
    move-object/from16 v5, v17

    move-object v6, v12

    move-object v7, v2

    move-wide v8, v9

    move-wide/from16 v10, v18

    invoke-direct/range {v5 .. v11}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$EsdsData;-><init>(Ljava/lang/String;[BJJ)V

    .line 1829
    return-object v17

    .line 1811
    .end local v1    # "initializationDataSize":I
    .end local v2    # "initializationData":[B
    .end local v13    # "peakBitrate":J
    .end local v15    # "bitrate":J
    :cond_91
    :goto_91
    new-instance v1, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$EsdsData;

    const/4 v7, 0x0

    const-wide/16 v8, -0x1

    const-wide/16 v10, -0x1

    move-object v5, v1

    move-object v6, v12

    invoke-direct/range {v5 .. v11}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$EsdsData;-><init>(Ljava/lang/String;[BJJ)V

    return-object v1
.end method

.method private static parseExpandableClassSize(Lcom/google/android/exoplayer2/util/ParsableByteArray;)I
    .registers 5
    .param p0, "data"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 1969
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 1970
    .local v0, "currentByte":I
    and-int/lit8 v1, v0, 0x7f

    .line 1971
    .local v1, "size":I
    :goto_6
    and-int/lit16 v2, v0, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_17

    .line 1972
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 1973
    shl-int/lit8 v2, v1, 0x7

    and-int/lit8 v3, v0, 0x7f

    or-int v1, v2, v3

    goto :goto_6

    .line 1975
    :cond_17
    return v1
.end method

.method private static parseHdlr(Lcom/google/android/exoplayer2/util/ParsableByteArray;)I
    .registers 2
    .param p0, "hdlr"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 972
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 973
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v0

    return v0
.end method

.method private static parseIlst(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)Lcom/google/android/exoplayer2/metadata/Metadata;
    .registers 4
    .param p0, "ilst"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p1, "limit"    # I

    .line 842
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 843
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 844
    .local v0, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/metadata/Metadata$Entry;>;"
    :goto_a
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v1

    if-ge v1, p1, :cond_1a

    .line 845
    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->parseIlstElement(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    move-result-object v1

    .line 846
    .local v1, "entry":Lcom/google/android/exoplayer2/metadata/Metadata$Entry;
    if-eqz v1, :cond_19

    .line 847
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 849
    .end local v1    # "entry":Lcom/google/android/exoplayer2/metadata/Metadata$Entry;
    :cond_19
    goto :goto_a

    .line 850
    :cond_1a
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_22

    const/4 v1, 0x0

    goto :goto_27

    :cond_22
    new-instance v1, Lcom/google/android/exoplayer2/metadata/Metadata;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/metadata/Metadata;-><init>(Ljava/util/List;)V

    :goto_27
    return-object v1
.end method

.method private static parseMdhd(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Landroid/util/Pair;
    .registers 8
    .param p0, "mdhd"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/util/ParsableByteArray;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 999
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 1000
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 1001
    .local v1, "fullAtom":I
    invoke-static {v1}, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v2

    .line 1002
    .local v2, "version":I
    if-nez v2, :cond_12

    const/16 v3, 0x8

    goto :goto_14

    :cond_12
    const/16 v3, 0x10

    :goto_14
    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 1003
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v3

    .line 1004
    .local v3, "timescale":J
    if-nez v2, :cond_1e

    const/4 v0, 0x4

    :cond_1e
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 1005
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v0

    .line 1006
    .local v0, "languageCode":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    shr-int/lit8 v6, v0, 0xa

    and-int/lit8 v6, v6, 0x1f

    add-int/lit8 v6, v6, 0x60

    int-to-char v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    shr-int/lit8 v6, v0, 0x5

    and-int/lit8 v6, v6, 0x1f

    add-int/lit8 v6, v6, 0x60

    int-to-char v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    and-int/lit8 v6, v0, 0x1f

    add-int/lit8 v6, v6, 0x60

    int-to-char v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1011
    .local v5, "language":Ljava/lang/String;
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v6, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    return-object v6
.end method

.method public static parseMdtaFromMeta(Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;)Lcom/google/android/exoplayer2/metadata/Metadata;
    .registers 16
    .param p0, "meta"    # Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    .line 267
    const v0, 0x68646c72    # 4.3148E24f

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v0

    .line 268
    .local v0, "hdlrAtom":Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;
    const v1, 0x6b657973

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v1

    .line 269
    .local v1, "keysAtom":Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;
    const v2, 0x696c7374

    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v2

    .line 270
    .local v2, "ilstAtom":Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;
    const/4 v3, 0x0

    if-eqz v0, :cond_aa

    if-eqz v1, :cond_aa

    if-eqz v2, :cond_aa

    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 273
    invoke-static {v4}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseHdlr(Lcom/google/android/exoplayer2/util/ParsableByteArray;)I

    move-result v4

    const v5, 0x6d647461

    if-eq v4, v5, :cond_29

    goto/16 :goto_aa

    .line 279
    :cond_29
    iget-object v4, v1, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 280
    .local v4, "keys":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    const/16 v5, 0xc

    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 281
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v5

    .line 282
    .local v5, "entryCount":I
    new-array v6, v5, [Ljava/lang/String;

    .line 283
    .local v6, "keyNames":[Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_37
    if-ge v7, v5, :cond_4c

    .line 284
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v8

    .line 285
    .local v8, "entrySize":I
    const/4 v9, 0x4

    invoke-virtual {v4, v9}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 286
    add-int/lit8 v9, v8, -0x8

    .line 287
    .local v9, "keySize":I
    invoke-virtual {v4, v9}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v6, v7

    .line 283
    .end local v8    # "entrySize":I
    .end local v9    # "keySize":I
    add-int/lit8 v7, v7, 0x1

    goto :goto_37

    .line 291
    .end local v7    # "i":I
    :cond_4c
    iget-object v7, v2, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 292
    .local v7, "ilst":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 293
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 294
    .local v9, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/metadata/Metadata$Entry;>;"
    :goto_58
    invoke-virtual {v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v10

    if-le v10, v8, :cond_9d

    .line 295
    invoke-virtual {v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v10

    .line 296
    .local v10, "atomPosition":I
    invoke-virtual {v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v11

    .line 297
    .local v11, "atomSize":I
    invoke-virtual {v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    .line 298
    .local v12, "keyIndex":I
    if-ltz v12, :cond_7f

    array-length v13, v6

    if-ge v12, v13, :cond_7f

    .line 299
    aget-object v13, v6, v12

    .line 301
    .local v13, "key":Ljava/lang/String;
    add-int v14, v10, v11

    .line 302
    invoke-static {v7, v14, v13}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->parseMdtaMetadataEntryFromIlst(Lcom/google/android/exoplayer2/util/ParsableByteArray;ILjava/lang/String;)Lcom/google/android/exoplayer2/metadata/mp4/MdtaMetadataEntry;

    move-result-object v14

    .line 303
    .local v14, "entry":Lcom/google/android/exoplayer2/metadata/Metadata$Entry;
    if-eqz v14, :cond_7e

    .line 304
    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 306
    .end local v13    # "key":Ljava/lang/String;
    .end local v14    # "entry":Lcom/google/android/exoplayer2/metadata/Metadata$Entry;
    :cond_7e
    goto :goto_97

    .line 307
    :cond_7f
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Skipped metadata with unknown key index: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v14, "AtomParsers"

    invoke-static {v14, v13}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    :goto_97
    add-int v13, v10, v11

    invoke-virtual {v7, v13}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 310
    .end local v10    # "atomPosition":I
    .end local v11    # "atomSize":I
    .end local v12    # "keyIndex":I
    goto :goto_58

    .line 311
    :cond_9d
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_a4

    goto :goto_a9

    :cond_a4
    new-instance v3, Lcom/google/android/exoplayer2/metadata/Metadata;

    invoke-direct {v3, v9}, Lcom/google/android/exoplayer2/metadata/Metadata;-><init>(Ljava/util/List;)V

    :goto_a9
    return-object v3

    .line 275
    .end local v4    # "keys":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .end local v5    # "entryCount":I
    .end local v6    # "keyNames":[Ljava/lang/String;
    .end local v7    # "ilst":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .end local v9    # "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/metadata/Metadata$Entry;>;"
    :cond_aa
    :goto_aa
    return-object v3
.end method

.method private static parseMetaDataSampleEntry(Lcom/google/android/exoplayer2/util/ParsableByteArray;IIILcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;)V
    .registers 7
    .param p0, "parent"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p1, "atomType"    # I
    .param p2, "position"    # I
    .param p3, "trackId"    # I
    .param p4, "out"    # Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;

    .line 1452
    add-int/lit8 v0, p2, 0x8

    add-int/lit8 v0, v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 1453
    const v0, 0x6d657474

    if-ne p1, v0, :cond_28

    .line 1454
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readNullTerminatedString()Ljava/lang/String;

    .line 1455
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readNullTerminatedString()Ljava/lang/String;

    move-result-object v0

    .line 1456
    .local v0, "mimeType":Ljava/lang/String;
    if-eqz v0, :cond_28

    .line 1457
    new-instance v1, Lcom/google/android/exoplayer2/Format$Builder;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/Format$Builder;-><init>()V

    invoke-virtual {v1, p3}, Lcom/google/android/exoplayer2/Format$Builder;->setId(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object v1

    iput-object v1, p4, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->format:Lcom/google/android/exoplayer2/Format;

    .line 1460
    .end local v0    # "mimeType":Ljava/lang/String;
    :cond_28
    return-void
.end method

.method public static parseMvhd(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$MvhdInfo;
    .registers 15
    .param p0, "mvhd"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 237
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 238
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 239
    .local v1, "fullAtom":I
    invoke-static {v1}, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v2

    .line 241
    .local v2, "version":I
    if-nez v2, :cond_18

    .line 242
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v3

    .line 243
    .local v3, "creationTimestampSeconds":J
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_1f

    .line 245
    .end local v3    # "creationTimestampSeconds":J
    :cond_18
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLong()J

    move-result-wide v3

    .line 246
    .restart local v3    # "creationTimestampSeconds":J
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 252
    :goto_1f
    const v0, 0x7c25b080

    .line 253
    .local v0, "timeDeltaSeconds":I
    int-to-long v5, v0

    sub-long v5, v3, v5

    const-wide/16 v7, 0x3e8

    mul-long v5, v5, v7

    .line 255
    .local v5, "unixTimestampMs":J
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v7

    .line 256
    .local v7, "timescale":J
    new-instance v9, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$MvhdInfo;

    new-instance v10, Lcom/google/android/exoplayer2/metadata/Metadata;

    const/4 v11, 0x1

    new-array v11, v11, [Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    new-instance v12, Lcom/google/android/exoplayer2/container/CreationTime;

    invoke-direct {v12, v5, v6}, Lcom/google/android/exoplayer2/container/CreationTime;-><init>(J)V

    const/4 v13, 0x0

    aput-object v12, v11, v13

    invoke-direct {v10, v11}, Lcom/google/android/exoplayer2/metadata/Metadata;-><init>([Lcom/google/android/exoplayer2/metadata/Metadata$Entry;)V

    invoke-direct {v9, v10, v7, v8}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$MvhdInfo;-><init>(Lcom/google/android/exoplayer2/metadata/Metadata;J)V

    return-object v9
.end method

.method private static parsePaspFromParent(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)F
    .registers 6
    .param p0, "parent"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p1, "position"    # I

    .line 1497
    add-int/lit8 v0, p1, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 1498
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v0

    .line 1499
    .local v0, "hSpacing":I
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v1

    .line 1500
    .local v1, "vSpacing":I
    int-to-float v2, v0

    int-to-float v3, v1

    div-float/2addr v2, v3

    return v2
.end method

.method private static parseProjFromParent(Lcom/google/android/exoplayer2/util/ParsableByteArray;II)[B
    .registers 8
    .param p0, "parent"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p1, "position"    # I
    .param p2, "size"    # I

    .line 1954
    add-int/lit8 v0, p1, 0x8

    .line 1955
    .local v0, "childPosition":I
    :goto_2
    sub-int v1, v0, p1

    if-ge v1, p2, :cond_23

    .line 1956
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 1957
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 1958
    .local v1, "childAtomSize":I
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v2

    .line 1959
    .local v2, "childAtomType":I
    const v3, 0x70726f6a

    if-ne v2, v3, :cond_21

    .line 1960
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v3

    add-int v4, v0, v1

    invoke-static {v3, v0, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    return-object v3

    .line 1962
    :cond_21
    add-int/2addr v0, v1

    .line 1963
    .end local v1    # "childAtomSize":I
    .end local v2    # "childAtomType":I
    goto :goto_2

    .line 1964
    :cond_23
    const/4 v1, 0x0

    return-object v1
.end method

.method private static parseSampleEntryEncryptionData(Lcom/google/android/exoplayer2/util/ParsableByteArray;II)Landroid/util/Pair;
    .registers 7
    .param p0, "parent"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p1, "position"    # I
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/util/ParsableByteArray;",
            "II)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 1844
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v0

    .line 1845
    .local v0, "childPosition":I
    :goto_4
    sub-int v1, v0, p1

    if-ge v1, p2, :cond_2c

    .line 1846
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 1847
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 1848
    .local v1, "childAtomSize":I
    if-lez v1, :cond_13

    const/4 v2, 0x1

    goto :goto_14

    :cond_13
    const/4 v2, 0x0

    :goto_14
    const-string v3, "childAtomSize must be positive"

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    .line 1849
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v2

    .line 1850
    .local v2, "childAtomType":I
    const v3, 0x73696e66

    if-ne v2, v3, :cond_2a

    .line 1852
    nop

    .line 1853
    invoke-static {p0, v0, v1}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseCommonEncryptionSinfFromParent(Lcom/google/android/exoplayer2/util/ParsableByteArray;II)Landroid/util/Pair;

    move-result-object v3

    .line 1854
    .local v3, "result":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;>;"
    if-eqz v3, :cond_2a

    .line 1855
    return-object v3

    .line 1858
    .end local v3    # "result":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;>;"
    :cond_2a
    add-int/2addr v0, v1

    .line 1859
    .end local v1    # "childAtomSize":I
    .end local v2    # "childAtomType":I
    goto :goto_4

    .line 1860
    :cond_2c
    const/4 v1, 0x0

    return-object v1
.end method

.method private static parseSchiFromParent(Lcom/google/android/exoplayer2/util/ParsableByteArray;IILjava/lang/String;)Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;
    .registers 26
    .param p0, "parent"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p1, "position"    # I
    .param p2, "size"    # I
    .param p3, "schemeType"    # Ljava/lang/String;

    .line 1909
    move-object/from16 v0, p0

    add-int/lit8 v1, p1, 0x8

    .line 1910
    .local v1, "childPosition":I
    :goto_4
    sub-int v2, v1, p1

    move/from16 v3, p2

    if-ge v2, v3, :cond_76

    .line 1911
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 1912
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v2

    .line 1913
    .local v2, "childAtomSize":I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v4

    .line 1914
    .local v4, "childAtomType":I
    const v5, 0x74656e63

    if-ne v4, v5, :cond_74

    .line 1915
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v5

    .line 1916
    .local v5, "fullAtom":I
    invoke-static {v5}, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v6

    .line 1917
    .local v6, "version":I
    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 1918
    const/4 v8, 0x0

    .line 1919
    .local v8, "defaultCryptByteBlock":I
    const/4 v9, 0x0

    .line 1920
    .local v9, "defaultSkipByteBlock":I
    if-nez v6, :cond_2e

    .line 1921
    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_38

    .line 1923
    :cond_2e
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v10

    .line 1924
    .local v10, "patternByte":I
    and-int/lit16 v11, v10, 0xf0

    shr-int/lit8 v8, v11, 0x4

    .line 1925
    and-int/lit8 v9, v10, 0xf

    .line 1927
    .end local v10    # "patternByte":I
    :goto_38
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v10

    const/4 v11, 0x0

    if-ne v10, v7, :cond_40

    goto :goto_41

    :cond_40
    const/4 v7, 0x0

    .line 1928
    .local v7, "defaultIsProtected":Z
    :goto_41
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v10

    .line 1929
    .local v10, "defaultPerSampleIvSize":I
    const/16 v12, 0x10

    new-array v15, v12, [B

    .line 1930
    .local v15, "defaultKeyId":[B
    array-length v12, v15

    invoke-virtual {v0, v15, v11, v12}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 1931
    const/4 v12, 0x0

    .line 1932
    .local v12, "constantIv":[B
    if-eqz v7, :cond_5e

    if-nez v10, :cond_5e

    .line 1933
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v13

    .line 1934
    .local v13, "constantIvSize":I
    new-array v12, v13, [B

    .line 1935
    invoke-virtual {v0, v12, v11, v13}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    move-object/from16 v19, v12

    goto :goto_60

    .line 1937
    .end local v13    # "constantIvSize":I
    :cond_5e
    move-object/from16 v19, v12

    .end local v12    # "constantIv":[B
    .local v19, "constantIv":[B
    :goto_60
    new-instance v20, Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    move-object/from16 v11, v20

    move v12, v7

    move-object/from16 v13, p3

    move v14, v10

    move-object/from16 v21, v15

    .end local v15    # "defaultKeyId":[B
    .local v21, "defaultKeyId":[B
    move/from16 v16, v8

    move/from16 v17, v9

    move-object/from16 v18, v19

    invoke-direct/range {v11 .. v18}, Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;-><init>(ZLjava/lang/String;I[BII[B)V

    return-object v20

    .line 1946
    .end local v5    # "fullAtom":I
    .end local v6    # "version":I
    .end local v7    # "defaultIsProtected":Z
    .end local v8    # "defaultCryptByteBlock":I
    .end local v9    # "defaultSkipByteBlock":I
    .end local v10    # "defaultPerSampleIvSize":I
    .end local v19    # "constantIv":[B
    .end local v21    # "defaultKeyId":[B
    :cond_74
    add-int/2addr v1, v2

    .line 1947
    .end local v2    # "childAtomSize":I
    .end local v4    # "childAtomType":I
    goto :goto_4

    .line 1948
    :cond_76
    const/4 v2, 0x0

    return-object v2
.end method

.method private static parseSmta(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)Lcom/google/android/exoplayer2/metadata/Metadata;
    .registers 12
    .param p0, "smta"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p1, "limit"    # I

    .line 881
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 882
    :goto_5
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v1

    const/4 v2, 0x0

    if-ge v1, p1, :cond_56

    .line 883
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v1

    .line 884
    .local v1, "atomPosition":I
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v3

    .line 885
    .local v3, "atomSize":I
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v4

    .line 886
    .local v4, "atomType":I
    const v5, 0x73617574

    if-ne v4, v5, :cond_50

    .line 887
    const/16 v5, 0xe

    if-ge v3, v5, :cond_22

    .line 888
    return-object v2

    .line 890
    :cond_22
    const/4 v5, 0x5

    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 891
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v5

    .line 892
    .local v5, "recordingMode":I
    if-eq v5, v0, :cond_31

    const/16 v6, 0xd

    if-eq v5, v6, :cond_31

    .line 893
    return-object v2

    .line 895
    :cond_31
    if-ne v5, v0, :cond_36

    const/high16 v0, 0x43700000    # 240.0f

    goto :goto_38

    :cond_36
    const/high16 v0, 0x42f00000    # 120.0f

    .line 896
    .local v0, "captureFrameRate":F
    :goto_38
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 897
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v6

    .line 898
    .local v6, "svcTemporalLayerCount":I
    new-instance v7, Lcom/google/android/exoplayer2/metadata/Metadata;

    new-array v2, v2, [Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    new-instance v8, Lcom/google/android/exoplayer2/metadata/mp4/SmtaMetadataEntry;

    invoke-direct {v8, v0, v6}, Lcom/google/android/exoplayer2/metadata/mp4/SmtaMetadataEntry;-><init>(FI)V

    const/4 v9, 0x0

    aput-object v8, v2, v9

    invoke-direct {v7, v2}, Lcom/google/android/exoplayer2/metadata/Metadata;-><init>([Lcom/google/android/exoplayer2/metadata/Metadata$Entry;)V

    return-object v7

    .line 900
    .end local v0    # "captureFrameRate":F
    .end local v5    # "recordingMode":I
    .end local v6    # "svcTemporalLayerCount":I
    :cond_50
    add-int v2, v1, v3

    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 901
    .end local v1    # "atomPosition":I
    .end local v3    # "atomSize":I
    .end local v4    # "atomType":I
    goto :goto_5

    .line 902
    :cond_56
    return-object v2
.end method

.method private static parseStbl(Lcom/google/android/exoplayer2/extractor/mp4/Track;Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;)Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;
    .registers 83
    .param p0, "track"    # Lcom/google/android/exoplayer2/extractor/mp4/Track;
    .param p1, "stblAtom"    # Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;
    .param p2, "gaplessInfoHolder"    # Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 440
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    const v0, 0x7374737a

    invoke-virtual {v10, v0}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v12

    .line 441
    .local v12, "stszAtom":Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;
    const/4 v0, 0x0

    if-eqz v12, :cond_19

    .line 442
    new-instance v1, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StszSampleSizeBox;

    iget-object v2, v9, Lcom/google/android/exoplayer2/extractor/mp4/Track;->format:Lcom/google/android/exoplayer2/Format;

    invoke-direct {v1, v12, v2}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StszSampleSizeBox;-><init>(Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;Lcom/google/android/exoplayer2/Format;)V

    move-object v13, v1

    .local v1, "sampleSizeBox":Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$SampleSizeBox;
    goto :goto_28

    .line 444
    .end local v1    # "sampleSizeBox":Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$SampleSizeBox;
    :cond_19
    const v1, 0x73747a32

    invoke-virtual {v10, v1}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v1

    .line 445
    .local v1, "stz2Atom":Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;
    if-eqz v1, :cond_654

    .line 449
    new-instance v2, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$Stz2SampleSizeBox;

    invoke-direct {v2, v1}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$Stz2SampleSizeBox;-><init>(Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;)V

    move-object v13, v2

    .line 452
    .end local v1    # "stz2Atom":Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;
    .local v13, "sampleSizeBox":Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$SampleSizeBox;
    :goto_28
    invoke-interface {v13}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$SampleSizeBox;->getSampleCount()I

    move-result v14

    .line 453
    .local v14, "sampleCount":I
    const/4 v1, 0x0

    if-nez v14, :cond_43

    .line 454
    new-instance v15, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    new-array v2, v1, [J

    new-array v3, v1, [I

    const/4 v4, 0x0

    new-array v5, v1, [J

    new-array v6, v1, [I

    const-wide/16 v7, 0x0

    move-object v0, v15

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;-><init>(Lcom/google/android/exoplayer2/extractor/mp4/Track;[J[II[J[IJ)V

    return-object v15

    .line 465
    :cond_43
    const/4 v2, 0x0

    .line 466
    .local v2, "chunkOffsetsAreLongs":Z
    const v3, 0x7374636f

    invoke-virtual {v10, v3}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v3

    .line 467
    .local v3, "chunkOffsetsAtom":Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;
    if-nez v3, :cond_5f

    .line 468
    const/4 v2, 0x1

    .line 469
    const v4, 0x636f3634

    invoke-virtual {v10, v4}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    check-cast v3, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move v15, v2

    move-object v7, v3

    goto :goto_61

    .line 467
    :cond_5f
    move v15, v2

    move-object v7, v3

    .line 471
    .end local v2    # "chunkOffsetsAreLongs":Z
    .end local v3    # "chunkOffsetsAtom":Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;
    .local v7, "chunkOffsetsAtom":Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;
    .local v15, "chunkOffsetsAreLongs":Z
    :goto_61
    iget-object v8, v7, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 473
    .local v8, "chunkOffsets":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    const v2, 0x73747363

    invoke-virtual {v10, v2}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    iget-object v6, v2, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 475
    .local v6, "stsc":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    const v2, 0x73747473

    invoke-virtual {v10, v2}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    iget-object v5, v2, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 477
    .local v5, "stts":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    const v2, 0x73747373

    invoke-virtual {v10, v2}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v4

    .line 478
    .local v4, "stssAtom":Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;
    if-eqz v4, :cond_8d

    iget-object v2, v4, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    goto :goto_8e

    :cond_8d
    move-object v2, v0

    .line 480
    .local v2, "stss":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    :goto_8e
    const v3, 0x63747473

    invoke-virtual {v10, v3}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v3

    .line 481
    .local v3, "cttsAtom":Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;
    if-eqz v3, :cond_99

    iget-object v0, v3, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 484
    .local v0, "ctts":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    :cond_99
    new-instance v1, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;

    invoke-direct {v1, v6, v8, v15}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;-><init>(Lcom/google/android/exoplayer2/util/ParsableByteArray;Lcom/google/android/exoplayer2/util/ParsableByteArray;Z)V

    .line 487
    .local v1, "chunkIterator":Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;
    move-object/from16 v17, v3

    .end local v3    # "cttsAtom":Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;
    .local v17, "cttsAtom":Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;
    const/16 v3, 0xc

    invoke-virtual {v5, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 488
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v18

    const/4 v3, 0x1

    add-int/lit8 v18, v18, -0x1

    .line 489
    .local v18, "remainingTimestampDeltaChanges":I
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v20

    .line 490
    .local v20, "remainingSamplesAtTimestampDelta":I
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v3

    .line 493
    .local v3, "timestampDeltaInTimeUnits":I
    const/16 v22, 0x0

    .line 494
    .local v22, "remainingSamplesAtTimestampOffset":I
    const/16 v23, 0x0

    .line 495
    .local v23, "remainingTimestampOffsetChanges":I
    const/16 v24, 0x0

    .line 496
    .local v24, "timestampOffset":I
    if-eqz v0, :cond_c8

    .line 497
    move-object/from16 v25, v4

    const/16 v4, 0xc

    .end local v4    # "stssAtom":Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;
    .local v25, "stssAtom":Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;
    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 498
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v23

    goto :goto_ca

    .line 496
    .end local v25    # "stssAtom":Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;
    .restart local v4    # "stssAtom":Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;
    :cond_c8
    move-object/from16 v25, v4

    .line 501
    .end local v4    # "stssAtom":Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;
    .restart local v25    # "stssAtom":Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;
    :goto_ca
    const/4 v4, -0x1

    .line 502
    .local v4, "nextSynchronizationSampleIndex":I
    const/16 v26, 0x0

    .line 503
    .local v26, "remainingSynchronizationSamples":I
    if-eqz v2, :cond_ed

    .line 504
    move/from16 v27, v4

    const/16 v4, 0xc

    .end local v4    # "nextSynchronizationSampleIndex":I
    .local v27, "nextSynchronizationSampleIndex":I
    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 505
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v26

    .line 506
    if-lez v26, :cond_e7

    .line 507
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v4

    const/16 v19, 0x1

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v19, v2

    .end local v27    # "nextSynchronizationSampleIndex":I
    .restart local v4    # "nextSynchronizationSampleIndex":I
    goto :goto_f1

    .line 510
    .end local v4    # "nextSynchronizationSampleIndex":I
    .restart local v27    # "nextSynchronizationSampleIndex":I
    :cond_e7
    const/4 v2, 0x0

    move-object/from16 v19, v2

    move/from16 v4, v27

    goto :goto_f1

    .line 503
    .end local v27    # "nextSynchronizationSampleIndex":I
    .restart local v4    # "nextSynchronizationSampleIndex":I
    :cond_ed
    move/from16 v27, v4

    .end local v4    # "nextSynchronizationSampleIndex":I
    .restart local v27    # "nextSynchronizationSampleIndex":I
    move-object/from16 v19, v2

    .line 515
    .end local v2    # "stss":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .end local v27    # "nextSynchronizationSampleIndex":I
    .restart local v4    # "nextSynchronizationSampleIndex":I
    .local v19, "stss":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    :goto_f1
    invoke-interface {v13}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$SampleSizeBox;->getFixedSampleSize()I

    move-result v2

    .line 516
    .local v2, "fixedSampleSize":I
    move/from16 v27, v4

    .end local v4    # "nextSynchronizationSampleIndex":I
    .restart local v27    # "nextSynchronizationSampleIndex":I
    iget-object v4, v9, Lcom/google/android/exoplayer2/extractor/mp4/Track;->format:Lcom/google/android/exoplayer2/Format;

    iget-object v4, v4, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 517
    .local v4, "sampleMimeType":Ljava/lang/String;
    move-object/from16 v28, v6

    .end local v6    # "stsc":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .local v28, "stsc":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    const/4 v6, -0x1

    if-eq v2, v6, :cond_120

    .line 519
    const-string v6, "audio/raw"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_118

    .line 520
    const-string v6, "audio/g711-mlaw"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_118

    .line 521
    const-string v6, "audio/g711-alaw"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_120

    :cond_118
    if-nez v18, :cond_120

    if-nez v23, :cond_120

    if-nez v26, :cond_120

    const/4 v6, 0x1

    goto :goto_121

    :cond_120
    const/4 v6, 0x0

    :goto_121
    move/from16 v29, v6

    .line 528
    .local v29, "rechunkFixedSizeSamples":Z
    const/4 v6, 0x0

    .line 531
    .local v6, "maximumSize":I
    const-wide/16 v30, 0x0

    .line 534
    .local v30, "timestampTimeUnits":J
    if-eqz v29, :cond_18d

    .line 535
    move-object/from16 v32, v4

    .end local v4    # "sampleMimeType":Ljava/lang/String;
    .local v32, "sampleMimeType":Ljava/lang/String;
    iget v4, v1, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->length:I

    new-array v4, v4, [J

    .line 536
    .local v4, "chunkOffsetsBytes":[J
    move/from16 v33, v6

    .end local v6    # "maximumSize":I
    .local v33, "maximumSize":I
    iget v6, v1, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->length:I

    new-array v6, v6, [I

    .line 537
    .local v6, "chunkSampleCounts":[I
    :goto_134
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->moveNext()Z

    move-result v34

    if-eqz v34, :cond_14f

    .line 538
    move-object/from16 v34, v7

    .end local v7    # "chunkOffsetsAtom":Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;
    .local v34, "chunkOffsetsAtom":Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;
    iget v7, v1, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->index:I

    iget-wide v10, v1, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->offset:J

    aput-wide v10, v4, v7

    .line 539
    iget v7, v1, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->index:I

    iget v10, v1, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->numSamples:I

    aput v10, v6, v7

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v7, v34

    goto :goto_134

    .line 541
    .end local v34    # "chunkOffsetsAtom":Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;
    .restart local v7    # "chunkOffsetsAtom":Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;
    :cond_14f
    move-object/from16 v34, v7

    .end local v7    # "chunkOffsetsAtom":Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;
    .restart local v34    # "chunkOffsetsAtom":Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;
    int-to-long v10, v3

    .line 542
    invoke-static {v2, v4, v6, v10, v11}, Lcom/google/android/exoplayer2/extractor/mp4/FixedSampleSizeRechunker;->rechunk(I[J[IJ)Lcom/google/android/exoplayer2/extractor/mp4/FixedSampleSizeRechunker$Results;

    move-result-object v7

    .line 544
    .local v7, "rechunkedResults":Lcom/google/android/exoplayer2/extractor/mp4/FixedSampleSizeRechunker$Results;
    iget-object v10, v7, Lcom/google/android/exoplayer2/extractor/mp4/FixedSampleSizeRechunker$Results;->offsets:[J

    .line 545
    .local v10, "offsets":[J
    iget-object v11, v7, Lcom/google/android/exoplayer2/extractor/mp4/FixedSampleSizeRechunker$Results;->sizes:[I

    .line 546
    .local v11, "sizes":[I
    move/from16 v35, v2

    .end local v2    # "fixedSampleSize":I
    .local v35, "fixedSampleSize":I
    iget v2, v7, Lcom/google/android/exoplayer2/extractor/mp4/FixedSampleSizeRechunker$Results;->maximumSize:I

    .line 547
    .end local v33    # "maximumSize":I
    .local v2, "maximumSize":I
    move/from16 v33, v2

    .end local v2    # "maximumSize":I
    .restart local v33    # "maximumSize":I
    iget-object v2, v7, Lcom/google/android/exoplayer2/extractor/mp4/FixedSampleSizeRechunker$Results;->timestamps:[J

    .line 548
    .local v2, "timestamps":[J
    move-object/from16 v36, v2

    .end local v2    # "timestamps":[J
    .local v36, "timestamps":[J
    iget-object v2, v7, Lcom/google/android/exoplayer2/extractor/mp4/FixedSampleSizeRechunker$Results;->flags:[I

    .line 549
    .local v2, "flags":[I
    iget-wide v6, v7, Lcom/google/android/exoplayer2/extractor/mp4/FixedSampleSizeRechunker$Results;->duration:J

    .line 550
    .end local v4    # "chunkOffsetsBytes":[J
    .end local v7    # "rechunkedResults":Lcom/google/android/exoplayer2/extractor/mp4/FixedSampleSizeRechunker$Results;
    .local v6, "duration":J
    move-object/from16 v37, v5

    move-wide/from16 v42, v6

    move-object v6, v9

    move v7, v14

    move/from16 v38, v24

    move-wide/from16 v39, v30

    move-object v14, v1

    move-object v9, v2

    move/from16 v24, v15

    move/from16 v30, v23

    move/from16 v31, v26

    move-object/from16 v15, v36

    move-object/from16 v36, v0

    move/from16 v23, v20

    move/from16 v26, v22

    move-object/from16 v20, v12

    move/from16 v22, v18

    move-object/from16 v18, v8

    move-object v12, v11

    move-object v11, v10

    move v10, v3

    goto/16 :goto_345

    .line 551
    .end local v10    # "offsets":[J
    .end local v11    # "sizes":[I
    .end local v32    # "sampleMimeType":Ljava/lang/String;
    .end local v33    # "maximumSize":I
    .end local v34    # "chunkOffsetsAtom":Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;
    .end local v35    # "fixedSampleSize":I
    .end local v36    # "timestamps":[J
    .local v2, "fixedSampleSize":I
    .local v4, "sampleMimeType":Ljava/lang/String;
    .local v6, "maximumSize":I
    .local v7, "chunkOffsetsAtom":Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;
    :cond_18d
    move/from16 v35, v2

    move-object/from16 v32, v4

    move/from16 v33, v6

    move-object/from16 v34, v7

    .end local v2    # "fixedSampleSize":I
    .end local v4    # "sampleMimeType":Ljava/lang/String;
    .end local v6    # "maximumSize":I
    .end local v7    # "chunkOffsetsAtom":Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;
    .restart local v32    # "sampleMimeType":Ljava/lang/String;
    .restart local v33    # "maximumSize":I
    .restart local v34    # "chunkOffsetsAtom":Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;
    .restart local v35    # "fixedSampleSize":I
    new-array v2, v14, [J

    .line 552
    .local v2, "offsets":[J
    new-array v4, v14, [I

    .line 553
    .local v4, "sizes":[I
    new-array v6, v14, [J

    .line 554
    .local v6, "timestamps":[J
    new-array v7, v14, [I

    .line 555
    .local v7, "flags":[I
    const-wide/16 v10, 0x0

    .line 556
    .local v10, "offset":J
    const/16 v36, 0x0

    .line 558
    .local v36, "remainingSamplesInChunk":I
    const/16 v37, 0x0

    move/from16 v9, v37

    move/from16 v76, v18

    move-object/from16 v18, v8

    move/from16 v8, v76

    move/from16 v77, v20

    move-object/from16 v20, v12

    move/from16 v12, v77

    move/from16 v78, v24

    move/from16 v24, v15

    move/from16 v15, v26

    move/from16 v26, v23

    move/from16 v79, v27

    move/from16 v27, v22

    move-wide/from16 v22, v10

    move/from16 v10, v79

    move/from16 v11, v33

    move/from16 v33, v78

    .end local v23    # "remainingTimestampOffsetChanges":I
    .local v8, "remainingTimestampDeltaChanges":I
    .local v9, "i":I
    .local v10, "nextSynchronizationSampleIndex":I
    .local v11, "maximumSize":I
    .local v12, "remainingSamplesAtTimestampDelta":I
    .local v15, "remainingSynchronizationSamples":I
    .local v18, "chunkOffsets":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .local v20, "stszAtom":Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;
    .local v22, "offset":J
    .local v24, "chunkOffsetsAreLongs":Z
    .local v26, "remainingTimestampOffsetChanges":I
    .local v27, "remainingSamplesAtTimestampOffset":I
    .local v33, "timestampOffset":I
    :goto_1c5
    move-object/from16 v37, v5

    .end local v5    # "stts":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .local v37, "stts":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    const-string v5, "AtomParsers"

    if-ge v9, v14, :cond_288

    .line 560
    const/16 v38, 0x1

    .line 561
    .local v38, "chunkDataComplete":Z
    :goto_1cd
    if-nez v36, :cond_1e8

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->moveNext()Z

    move-result v39

    move/from16 v38, v39

    if-eqz v39, :cond_1e8

    .line 562
    move/from16 v39, v14

    move/from16 v40, v15

    .end local v14    # "sampleCount":I
    .end local v15    # "remainingSynchronizationSamples":I
    .local v39, "sampleCount":I
    .local v40, "remainingSynchronizationSamples":I
    iget-wide v14, v1, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->offset:J

    .line 563
    .end local v22    # "offset":J
    .local v14, "offset":J
    move-wide/from16 v22, v14

    .end local v14    # "offset":J
    .restart local v22    # "offset":J
    iget v14, v1, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->numSamples:I

    move/from16 v36, v14

    move/from16 v14, v39

    move/from16 v15, v40

    .end local v36    # "remainingSamplesInChunk":I
    .local v14, "remainingSamplesInChunk":I
    goto :goto_1cd

    .line 561
    .end local v39    # "sampleCount":I
    .end local v40    # "remainingSynchronizationSamples":I
    .local v14, "sampleCount":I
    .restart local v15    # "remainingSynchronizationSamples":I
    .restart local v36    # "remainingSamplesInChunk":I
    :cond_1e8
    move/from16 v39, v14

    move/from16 v40, v15

    .line 565
    .end local v14    # "sampleCount":I
    .end local v15    # "remainingSynchronizationSamples":I
    .restart local v39    # "sampleCount":I
    .restart local v40    # "remainingSynchronizationSamples":I
    if-nez v38, :cond_20e

    .line 566
    const-string v14, "Unexpected end of chunk data"

    invoke-static {v5, v14}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    move v14, v9

    .line 568
    .end local v39    # "sampleCount":I
    .restart local v14    # "sampleCount":I
    invoke-static {v2, v14}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v2

    .line 569
    invoke-static {v4, v14}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v4

    .line 570
    invoke-static {v6, v14}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v6

    .line 571
    invoke-static {v7, v14}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v7

    .line 572
    move-object/from16 v41, v2

    move-object v2, v6

    move/from16 v39, v14

    move-object v14, v1

    move/from16 v1, v36

    goto/16 :goto_292

    .line 576
    .end local v14    # "sampleCount":I
    .restart local v39    # "sampleCount":I
    :cond_20e
    if-eqz v0, :cond_228

    move/from16 v15, v27

    .line 577
    .end local v27    # "remainingSamplesAtTimestampOffset":I
    .local v15, "remainingSamplesAtTimestampOffset":I
    :goto_212
    if-nez v15, :cond_221

    if-lez v26, :cond_221

    .line 578
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v15

    .line 584
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v33

    .line 585
    add-int/lit8 v26, v26, -0x1

    goto :goto_212

    .line 587
    :cond_221
    add-int/lit8 v15, v15, -0x1

    move/from16 v27, v15

    move/from16 v5, v33

    goto :goto_22a

    .line 576
    .end local v15    # "remainingSamplesAtTimestampOffset":I
    .restart local v27    # "remainingSamplesAtTimestampOffset":I
    :cond_228
    move/from16 v5, v33

    .line 590
    .end local v33    # "timestampOffset":I
    .local v5, "timestampOffset":I
    :goto_22a
    aput-wide v22, v2, v9

    .line 591
    invoke-interface {v13}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$SampleSizeBox;->readNextSampleSize()I

    move-result v14

    aput v14, v4, v9

    .line 592
    aget v14, v4, v9

    if-le v14, v11, :cond_238

    .line 593
    aget v11, v4, v9

    .line 595
    :cond_238
    int-to-long v14, v5

    add-long v14, v30, v14

    aput-wide v14, v6, v9

    .line 598
    if-nez v19, :cond_241

    const/4 v14, 0x1

    goto :goto_242

    :cond_241
    const/4 v14, 0x0

    :goto_242
    aput v14, v7, v9

    .line 599
    if-ne v9, v10, :cond_25a

    .line 600
    const/4 v14, 0x1

    aput v14, v7, v9

    .line 601
    add-int/lit8 v15, v40, -0x1

    .line 602
    .end local v40    # "remainingSynchronizationSamples":I
    .local v15, "remainingSynchronizationSamples":I
    if-lez v15, :cond_25c

    .line 603
    invoke-static/range {v19 .. v19}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual/range {v21 .. v21}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v21

    add-int/lit8 v10, v21, -0x1

    goto :goto_25c

    .line 599
    .end local v15    # "remainingSynchronizationSamples":I
    .restart local v40    # "remainingSynchronizationSamples":I
    :cond_25a
    move/from16 v15, v40

    .line 608
    .end local v40    # "remainingSynchronizationSamples":I
    .restart local v15    # "remainingSynchronizationSamples":I
    :cond_25c
    :goto_25c
    move-object v14, v1

    move-object/from16 v41, v2

    .end local v1    # "chunkIterator":Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;
    .end local v2    # "offsets":[J
    .local v14, "chunkIterator":Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;
    .local v41, "offsets":[J
    int-to-long v1, v3

    add-long v30, v30, v1

    .line 609
    add-int/lit8 v12, v12, -0x1

    .line 610
    if-nez v12, :cond_273

    if-lez v8, :cond_273

    .line 611
    invoke-virtual/range {v37 .. v37}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v1

    .line 618
    .end local v12    # "remainingSamplesAtTimestampDelta":I
    .local v1, "remainingSamplesAtTimestampDelta":I
    invoke-virtual/range {v37 .. v37}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v3

    .line 619
    add-int/lit8 v8, v8, -0x1

    move v12, v1

    .line 622
    .end local v1    # "remainingSamplesAtTimestampDelta":I
    .restart local v12    # "remainingSamplesAtTimestampDelta":I
    :cond_273
    aget v1, v4, v9

    int-to-long v1, v1

    add-long v22, v22, v1

    .line 623
    nop

    .end local v38    # "chunkDataComplete":Z
    add-int/lit8 v36, v36, -0x1

    .line 558
    add-int/lit8 v9, v9, 0x1

    move/from16 v33, v5

    move-object v1, v14

    move-object/from16 v5, v37

    move/from16 v14, v39

    move-object/from16 v2, v41

    goto/16 :goto_1c5

    .end local v5    # "timestampOffset":I
    .end local v39    # "sampleCount":I
    .end local v41    # "offsets":[J
    .local v1, "chunkIterator":Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;
    .restart local v2    # "offsets":[J
    .local v14, "sampleCount":I
    .restart local v33    # "timestampOffset":I
    :cond_288
    move-object/from16 v41, v2

    move/from16 v39, v14

    move/from16 v40, v15

    move-object v14, v1

    .end local v1    # "chunkIterator":Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;
    .end local v2    # "offsets":[J
    .end local v15    # "remainingSynchronizationSamples":I
    .local v14, "chunkIterator":Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;
    .restart local v39    # "sampleCount":I
    .restart local v40    # "remainingSynchronizationSamples":I
    .restart local v41    # "offsets":[J
    move-object v2, v6

    move/from16 v1, v36

    .line 625
    .end local v6    # "timestamps":[J
    .end local v9    # "i":I
    .end local v36    # "remainingSamplesInChunk":I
    .local v1, "remainingSamplesInChunk":I
    .local v2, "timestamps":[J
    :goto_292
    move-object v15, v2

    move v9, v3

    move/from16 v6, v33

    .end local v2    # "timestamps":[J
    .end local v3    # "timestampDeltaInTimeUnits":I
    .end local v33    # "timestampOffset":I
    .local v6, "timestampOffset":I
    .local v9, "timestampDeltaInTimeUnits":I
    .local v15, "timestamps":[J
    int-to-long v2, v6

    add-long v2, v30, v2

    .line 629
    .local v2, "duration":J
    const/16 v33, 0x1

    .line 630
    .local v33, "isCttsValid":Z
    if-eqz v0, :cond_2ae

    .line 631
    :goto_29d
    if-lez v26, :cond_2ae

    .line 632
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v36

    if-eqz v36, :cond_2a8

    .line 633
    const/16 v33, 0x0

    .line 634
    goto :goto_2ae

    .line 636
    :cond_2a8
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    .line 637
    add-int/lit8 v26, v26, -0x1

    goto :goto_29d

    .line 640
    :cond_2ae
    :goto_2ae
    if-nez v40, :cond_2c8

    if-nez v12, :cond_2c8

    if-nez v1, :cond_2c8

    if-nez v8, :cond_2c8

    if-nez v27, :cond_2c8

    if-nez v33, :cond_2bb

    goto :goto_2c8

    :cond_2bb
    move-object/from16 v36, v0

    move-wide/from16 v42, v2

    move/from16 v38, v6

    move/from16 v2, v27

    move/from16 v3, v40

    move-object/from16 v6, p0

    goto :goto_32e

    .line 646
    :cond_2c8
    :goto_2c8
    move-object/from16 v36, v0

    .end local v0    # "ctts":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .local v36, "ctts":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v42, v2

    .end local v2    # "duration":J
    .local v42, "duration":J
    const-string v2, "Inconsistent stbl box for track "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move v2, v6

    move-object/from16 v6, p0

    .end local v6    # "timestampOffset":I
    .local v2, "timestampOffset":I
    iget v3, v6, Lcom/google/android/exoplayer2/extractor/mp4/Track;->id:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ": remainingSynchronizationSamples "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v3, v40

    .end local v40    # "remainingSynchronizationSamples":I
    .local v3, "remainingSynchronizationSamples":I
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v38, v2

    .end local v2    # "timestampOffset":I
    .local v38, "timestampOffset":I
    const-string v2, ", remainingSamplesAtTimestampDelta "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", remainingSamplesInChunk "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", remainingTimestampDeltaChanges "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", remainingSamplesAtTimestampOffset "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v2, v27

    .end local v27    # "remainingSamplesAtTimestampOffset":I
    .local v2, "remainingSamplesAtTimestampOffset":I
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 660
    if-nez v33, :cond_31d

    const-string v27, ", ctts invalid"

    goto :goto_31f

    :cond_31d
    const-string v27, ""

    :goto_31f
    move/from16 v40, v1

    move-object/from16 v1, v27

    .end local v1    # "remainingSamplesInChunk":I
    .local v40, "remainingSamplesInChunk":I
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 646
    invoke-static {v5, v0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 663
    .end local v22    # "offset":J
    .end local v33    # "isCttsValid":Z
    .end local v40    # "remainingSamplesInChunk":I
    :goto_32e
    move/from16 v22, v8

    move/from16 v27, v10

    move/from16 v33, v11

    move/from16 v23, v12

    move-object/from16 v11, v41

    move-object v12, v4

    move v10, v9

    move-object v9, v7

    move/from16 v7, v39

    move-wide/from16 v39, v30

    move/from16 v31, v3

    move/from16 v30, v26

    move/from16 v26, v2

    .end local v2    # "remainingSamplesAtTimestampOffset":I
    .end local v3    # "remainingSynchronizationSamples":I
    .end local v4    # "sizes":[I
    .end local v8    # "remainingTimestampDeltaChanges":I
    .end local v41    # "offsets":[J
    .local v7, "sampleCount":I
    .local v9, "flags":[I
    .local v10, "timestampDeltaInTimeUnits":I
    .local v11, "offsets":[J
    .local v12, "sizes":[I
    .local v22, "remainingTimestampDeltaChanges":I
    .local v23, "remainingSamplesAtTimestampDelta":I
    .local v26, "remainingSamplesAtTimestampOffset":I
    .local v27, "nextSynchronizationSampleIndex":I
    .local v30, "remainingTimestampOffsetChanges":I
    .local v31, "remainingSynchronizationSamples":I
    .local v33, "maximumSize":I
    .local v39, "timestampTimeUnits":J
    :goto_345
    const-wide/32 v2, 0xf4240

    iget-wide v4, v6, Lcom/google/android/exoplayer2/extractor/mp4/Track;->timescale:J

    move-wide/from16 v0, v42

    invoke-static/range {v0 .. v5}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v51

    .line 665
    .local v51, "durationUs":J
    iget-object v0, v6, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    const-wide/32 v1, 0xf4240

    if-nez v0, :cond_37b

    .line 666
    iget-wide v3, v6, Lcom/google/android/exoplayer2/extractor/mp4/Track;->timescale:J

    invoke-static {v15, v1, v2, v3, v4}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestampsInPlace([JJJ)V

    .line 667
    new-instance v16, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object v2, v11

    move-object v3, v12

    move/from16 v4, v33

    move-object v5, v15

    move-object v8, v6

    move-object v6, v9

    move/from16 v41, v10

    move-object/from16 v53, v13

    move v13, v7

    move-object v10, v8

    move-object/from16 v76, v34

    move-object/from16 v34, v18

    move-object/from16 v18, v76

    .end local v7    # "sampleCount":I
    .end local v10    # "timestampDeltaInTimeUnits":I
    .local v13, "sampleCount":I
    .local v18, "chunkOffsetsAtom":Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;
    .local v34, "chunkOffsets":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .local v41, "timestampDeltaInTimeUnits":I
    .local v53, "sampleSizeBox":Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$SampleSizeBox;
    move-wide/from16 v7, v51

    invoke-direct/range {v0 .. v8}, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;-><init>(Lcom/google/android/exoplayer2/extractor/mp4/Track;[J[II[J[IJ)V

    return-object v16

    .line 678
    .end local v41    # "timestampDeltaInTimeUnits":I
    .end local v53    # "sampleSizeBox":Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$SampleSizeBox;
    .restart local v7    # "sampleCount":I
    .restart local v10    # "timestampDeltaInTimeUnits":I
    .local v13, "sampleSizeBox":Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$SampleSizeBox;
    .local v18, "chunkOffsets":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .local v34, "chunkOffsetsAtom":Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;
    :cond_37b
    move/from16 v41, v10

    move-object/from16 v53, v13

    move-object v10, v6

    move v13, v7

    move-object/from16 v76, v34

    move-object/from16 v34, v18

    move-object/from16 v18, v76

    .end local v7    # "sampleCount":I
    .end local v10    # "timestampDeltaInTimeUnits":I
    .local v13, "sampleCount":I
    .local v18, "chunkOffsetsAtom":Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;
    .local v34, "chunkOffsets":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .restart local v41    # "timestampDeltaInTimeUnits":I
    .restart local v53    # "sampleSizeBox":Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$SampleSizeBox;
    iget-object v0, v10, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    array-length v0, v0

    const-wide/16 v3, 0x0

    const/4 v5, 0x1

    if-ne v0, v5, :cond_436

    iget v0, v10, Lcom/google/android/exoplayer2/extractor/mp4/Track;->type:I

    if-ne v0, v5, :cond_436

    array-length v0, v15

    const/4 v5, 0x2

    if-lt v0, v5, :cond_436

    .line 681
    iget-object v0, v10, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListMediaTimes:[J

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    const/4 v5, 0x0

    aget-wide v54, v0, v5

    .line 682
    .local v54, "editStartTime":J
    iget-object v0, v10, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    aget-wide v44, v0, v5

    iget-wide v5, v10, Lcom/google/android/exoplayer2/extractor/mp4/Track;->timescale:J

    iget-wide v7, v10, Lcom/google/android/exoplayer2/extractor/mp4/Track;->movieTimescale:J

    .line 684
    move-wide/from16 v46, v5

    move-wide/from16 v48, v7

    invoke-static/range {v44 .. v49}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v5

    add-long v56, v54, v5

    .line 686
    .local v56, "editEndTime":J
    move-object/from16 v44, v15

    move-wide/from16 v45, v42

    move-wide/from16 v47, v54

    move-wide/from16 v49, v56

    invoke-static/range {v44 .. v50}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->canApplyEditWithGaplessInfo([JJJJ)Z

    move-result v0

    if-eqz v0, :cond_436

    .line 687
    sub-long v58, v42, v56

    .line 688
    .local v58, "paddingTimeUnits":J
    const/4 v0, 0x0

    aget-wide v5, v15, v0

    sub-long v44, v54, v5

    iget-object v0, v10, Lcom/google/android/exoplayer2/extractor/mp4/Track;->format:Lcom/google/android/exoplayer2/Format;

    iget v0, v0, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    int-to-long v5, v0

    iget-wide v7, v10, Lcom/google/android/exoplayer2/extractor/mp4/Track;->timescale:J

    .line 689
    move-wide/from16 v46, v5

    move-wide/from16 v48, v7

    invoke-static/range {v44 .. v49}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v7

    .line 691
    .local v7, "encoderDelay":J
    iget-object v0, v10, Lcom/google/android/exoplayer2/extractor/mp4/Track;->format:Lcom/google/android/exoplayer2/Format;

    iget v0, v0, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    int-to-long v5, v0

    iget-wide v1, v10, Lcom/google/android/exoplayer2/extractor/mp4/Track;->timescale:J

    .line 692
    move-wide/from16 v44, v58

    move-wide/from16 v46, v5

    move-wide/from16 v48, v1

    invoke-static/range {v44 .. v49}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v5

    .line 693
    .local v5, "encoderPadding":J
    cmp-long v0, v7, v3

    if-nez v0, :cond_3f1

    cmp-long v0, v5, v3

    if-eqz v0, :cond_436

    :cond_3f1
    const-wide/32 v0, 0x7fffffff

    cmp-long v2, v7, v0

    if-gtz v2, :cond_432

    cmp-long v2, v5, v0

    if-gtz v2, :cond_432

    .line 696
    long-to-int v0, v7

    move-object/from16 v4, p2

    iput v0, v4, Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;->encoderDelay:I

    .line 697
    long-to-int v0, v5

    iput v0, v4, Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;->encoderPadding:I

    .line 698
    iget-wide v0, v10, Lcom/google/android/exoplayer2/extractor/mp4/Track;->timescale:J

    const-wide/32 v2, 0xf4240

    invoke-static {v15, v2, v3, v0, v1}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestampsInPlace([JJJ)V

    .line 699
    iget-object v0, v10, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    const/4 v1, 0x0

    aget-wide v44, v0, v1

    const-wide/32 v46, 0xf4240

    iget-wide v0, v10, Lcom/google/android/exoplayer2/extractor/mp4/Track;->movieTimescale:J

    .line 700
    move-wide/from16 v48, v0

    invoke-static/range {v44 .. v49}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v44

    .line 702
    .local v44, "editedDurationUs":J
    new-instance v16, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object v2, v11

    move-object v3, v12

    move/from16 v4, v33

    move-wide/from16 v46, v5

    .end local v5    # "encoderPadding":J
    .local v46, "encoderPadding":J
    move-object v5, v15

    move-object v6, v9

    move-wide/from16 v48, v7

    .end local v7    # "encoderDelay":J
    .local v48, "encoderDelay":J
    move-wide/from16 v7, v44

    invoke-direct/range {v0 .. v8}, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;-><init>(Lcom/google/android/exoplayer2/extractor/mp4/Track;[J[II[J[IJ)V

    return-object v16

    .line 693
    .end local v44    # "editedDurationUs":J
    .end local v46    # "encoderPadding":J
    .end local v48    # "encoderDelay":J
    .restart local v5    # "encoderPadding":J
    .restart local v7    # "encoderDelay":J
    :cond_432
    move-wide/from16 v46, v5

    move-wide/from16 v48, v7

    .line 708
    .end local v5    # "encoderPadding":J
    .end local v7    # "encoderDelay":J
    .end local v54    # "editStartTime":J
    .end local v56    # "editEndTime":J
    .end local v58    # "paddingTimeUnits":J
    :cond_436
    iget-object v0, v10, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    array-length v0, v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_482

    iget-object v0, v10, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    const/4 v1, 0x0

    aget-wide v5, v0, v1

    cmp-long v0, v5, v3

    if-nez v0, :cond_482

    .line 712
    iget-object v0, v10, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListMediaTimes:[J

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    aget-wide v44, v0, v1

    .line 713
    .local v44, "editStartTime":J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_450
    array-length v1, v15

    if-ge v0, v1, :cond_465

    .line 714
    aget-wide v1, v15, v0

    sub-long v3, v1, v44

    const-wide/32 v5, 0xf4240

    iget-wide v7, v10, Lcom/google/android/exoplayer2/extractor/mp4/Track;->timescale:J

    .line 715
    invoke-static/range {v3 .. v8}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v1

    aput-wide v1, v15, v0

    .line 713
    add-int/lit8 v0, v0, 0x1

    goto :goto_450

    .line 718
    .end local v0    # "i":I
    :cond_465
    sub-long v1, v42, v44

    const-wide/32 v3, 0xf4240

    iget-wide v5, v10, Lcom/google/android/exoplayer2/extractor/mp4/Track;->timescale:J

    .line 719
    invoke-static/range {v1 .. v6}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v46

    .line 720
    .end local v51    # "durationUs":J
    .local v46, "durationUs":J
    new-instance v16, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object v2, v11

    move-object v3, v12

    move/from16 v4, v33

    move-object v5, v15

    move-object v6, v9

    move-wide/from16 v7, v46

    invoke-direct/range {v0 .. v8}, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;-><init>(Lcom/google/android/exoplayer2/extractor/mp4/Track;[J[II[J[IJ)V

    return-object v16

    .line 725
    .end local v44    # "editStartTime":J
    .end local v46    # "durationUs":J
    .restart local v51    # "durationUs":J
    :cond_482
    iget v0, v10, Lcom/google/android/exoplayer2/extractor/mp4/Track;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_489

    const/4 v0, 0x1

    goto :goto_48a

    :cond_489
    const/4 v0, 0x0

    :goto_48a
    move v7, v0

    .line 728
    .local v7, "omitClippedSample":Z
    const/4 v0, 0x0

    .line 729
    .local v0, "editedSampleCount":I
    const/4 v1, 0x0

    .line 730
    .local v1, "nextSampleIndex":I
    const/4 v2, 0x0

    .line 731
    .local v2, "copyMetadata":Z
    iget-object v5, v10, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    array-length v5, v5

    new-array v8, v5, [I

    .line 732
    .local v8, "startIndices":[I
    iget-object v5, v10, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    array-length v5, v5

    new-array v6, v5, [I

    .line 733
    .local v6, "endIndices":[I
    iget-object v5, v10, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListMediaTimes:[J

    invoke-static {v5}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v44, v5

    check-cast v44, [J

    .line 734
    .local v44, "editListMediaTimes":[J
    const/4 v5, 0x0

    move/from16 v76, v5

    move v5, v0

    move v0, v2

    move v2, v1

    move/from16 v1, v76

    .local v0, "copyMetadata":Z
    .local v1, "i":I
    .local v2, "nextSampleIndex":I
    .local v5, "editedSampleCount":I
    :goto_4aa
    iget-object v3, v10, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    array-length v3, v3

    if-ge v1, v3, :cond_522

    .line 735
    aget-wide v3, v44, v1

    .line 736
    .local v3, "editMediaTime":J
    const-wide/16 v47, -0x1

    cmp-long v49, v3, v47

    if-eqz v49, :cond_509

    .line 737
    move-object/from16 v47, v14

    .end local v14    # "chunkIterator":Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;
    .local v47, "chunkIterator":Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;
    iget-object v14, v10, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    aget-wide v54, v14, v1

    move-object v14, v11

    move-object/from16 v48, v12

    .end local v11    # "offsets":[J
    .end local v12    # "sizes":[I
    .local v14, "offsets":[J
    .local v48, "sizes":[I
    iget-wide v11, v10, Lcom/google/android/exoplayer2/extractor/mp4/Track;->timescale:J

    move/from16 v49, v13

    move-object/from16 v50, v14

    .end local v13    # "sampleCount":I
    .end local v14    # "offsets":[J
    .local v49, "sampleCount":I
    .local v50, "offsets":[J
    iget-wide v13, v10, Lcom/google/android/exoplayer2/extractor/mp4/Track;->movieTimescale:J

    .line 738
    move-wide/from16 v56, v11

    move-wide/from16 v58, v13

    invoke-static/range {v54 .. v59}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v11

    .line 747
    .local v11, "editDuration":J
    nop

    .line 748
    const/4 v13, 0x1

    invoke-static {v15, v3, v4, v13, v13}, Lcom/google/android/exoplayer2/util/Util;->binarySearchFloor([JJZZ)I

    move-result v14

    aput v14, v8, v1

    .line 750
    add-long v13, v3, v11

    .line 751
    move-wide/from16 v54, v3

    const/4 v3, 0x0

    .end local v3    # "editMediaTime":J
    .local v54, "editMediaTime":J
    invoke-static {v15, v13, v14, v7, v3}, Lcom/google/android/exoplayer2/util/Util;->binarySearchCeil([JJZZ)I

    move-result v4

    aput v4, v6, v1

    .line 756
    :goto_4e3
    aget v4, v8, v1

    aget v13, v6, v1

    if-ge v4, v13, :cond_4f7

    aget v4, v8, v1

    aget v4, v9, v4

    const/4 v13, 0x1

    and-int/2addr v4, v13

    if-nez v4, :cond_4f8

    .line 762
    aget v4, v8, v1

    add-int/2addr v4, v13

    aput v4, v8, v1

    goto :goto_4e3

    .line 756
    :cond_4f7
    const/4 v13, 0x1

    .line 764
    :cond_4f8
    aget v4, v6, v1

    aget v14, v8, v1

    sub-int/2addr v4, v14

    add-int/2addr v5, v4

    .line 765
    aget v4, v8, v1

    if-eq v2, v4, :cond_504

    const/4 v4, 0x1

    goto :goto_505

    :cond_504
    const/4 v4, 0x0

    :goto_505
    or-int/2addr v0, v4

    .line 766
    aget v2, v6, v1

    goto :goto_515

    .line 736
    .end local v47    # "chunkIterator":Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;
    .end local v48    # "sizes":[I
    .end local v49    # "sampleCount":I
    .end local v50    # "offsets":[J
    .end local v54    # "editMediaTime":J
    .restart local v3    # "editMediaTime":J
    .local v11, "offsets":[J
    .restart local v12    # "sizes":[I
    .restart local v13    # "sampleCount":I
    .local v14, "chunkIterator":Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;
    :cond_509
    move-wide/from16 v54, v3

    move-object/from16 v50, v11

    move-object/from16 v48, v12

    move/from16 v49, v13

    move-object/from16 v47, v14

    const/4 v3, 0x0

    const/4 v13, 0x1

    .line 734
    .end local v3    # "editMediaTime":J
    .end local v11    # "offsets":[J
    .end local v12    # "sizes":[I
    .end local v13    # "sampleCount":I
    .end local v14    # "chunkIterator":Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;
    .restart local v47    # "chunkIterator":Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;
    .restart local v48    # "sizes":[I
    .restart local v49    # "sampleCount":I
    .restart local v50    # "offsets":[J
    :goto_515
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v14, v47

    move-object/from16 v12, v48

    move/from16 v13, v49

    move-object/from16 v11, v50

    const-wide/16 v3, 0x0

    goto :goto_4aa

    .end local v47    # "chunkIterator":Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;
    .end local v48    # "sizes":[I
    .end local v49    # "sampleCount":I
    .end local v50    # "offsets":[J
    .restart local v11    # "offsets":[J
    .restart local v12    # "sizes":[I
    .restart local v13    # "sampleCount":I
    .restart local v14    # "chunkIterator":Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;
    :cond_522
    move-object/from16 v50, v11

    move-object/from16 v48, v12

    move/from16 v49, v13

    move-object/from16 v47, v14

    const/4 v3, 0x0

    const/4 v13, 0x1

    .line 769
    .end local v1    # "i":I
    .end local v11    # "offsets":[J
    .end local v12    # "sizes":[I
    .end local v13    # "sampleCount":I
    .end local v14    # "chunkIterator":Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;
    .restart local v47    # "chunkIterator":Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;
    .restart local v48    # "sizes":[I
    .restart local v49    # "sampleCount":I
    .restart local v50    # "offsets":[J
    move/from16 v14, v49

    .end local v49    # "sampleCount":I
    .local v14, "sampleCount":I
    if-eq v5, v14, :cond_531

    goto :goto_532

    :cond_531
    const/4 v13, 0x0

    :goto_532
    or-int v11, v0, v13

    .line 772
    .end local v0    # "copyMetadata":Z
    .local v11, "copyMetadata":Z
    if-eqz v11, :cond_539

    new-array v0, v5, [J

    goto :goto_53b

    :cond_539
    move-object/from16 v0, v50

    :goto_53b
    move-object v12, v0

    .line 773
    .local v12, "editedOffsets":[J
    if-eqz v11, :cond_541

    new-array v0, v5, [I

    goto :goto_543

    :cond_541
    move-object/from16 v0, v48

    :goto_543
    move-object v13, v0

    .line 774
    .local v13, "editedSizes":[I
    if-eqz v11, :cond_548

    const/4 v1, 0x0

    goto :goto_54a

    :cond_548
    move/from16 v1, v33

    :goto_54a
    move v0, v1

    .line 775
    .local v0, "editedMaximumSize":I
    if-eqz v11, :cond_550

    new-array v1, v5, [I

    goto :goto_551

    :cond_550
    move-object v1, v9

    :goto_551
    move-object v4, v1

    .line 776
    .local v4, "editedFlags":[I
    new-array v3, v5, [J

    .line 777
    .local v3, "editedTimestamps":[J
    const-wide/16 v54, 0x0

    .line 778
    .local v54, "pts":J
    const/4 v1, 0x0

    .line 779
    .local v1, "sampleIndex":I
    const/16 v16, 0x0

    move-wide/from16 v60, v54

    move/from16 v76, v16

    move/from16 v16, v0

    move/from16 v0, v76

    .end local v54    # "pts":J
    .local v0, "i":I
    .local v16, "editedMaximumSize":I
    .local v60, "pts":J
    :goto_561
    move/from16 v21, v2

    .end local v2    # "nextSampleIndex":I
    .local v21, "nextSampleIndex":I
    iget-object v2, v10, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    array-length v2, v2

    if-ge v0, v2, :cond_617

    .line 780
    iget-object v2, v10, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListMediaTimes:[J

    aget-wide v62, v2, v0

    .line 781
    .local v62, "editMediaTime":J
    aget v2, v8, v0

    .line 782
    .local v2, "startIndex":I
    move/from16 v49, v5

    .end local v5    # "editedSampleCount":I
    .local v49, "editedSampleCount":I
    aget v5, v6, v0

    .line 783
    .local v5, "endIndex":I
    if-eqz v11, :cond_588

    .line 784
    move-object/from16 v64, v6

    .end local v6    # "endIndices":[I
    .local v64, "endIndices":[I
    sub-int v6, v5, v2

    .line 785
    .local v6, "count":I
    move/from16 v65, v14

    move-object/from16 v14, v50

    .end local v50    # "offsets":[J
    .local v14, "offsets":[J
    .local v65, "sampleCount":I
    invoke-static {v14, v2, v12, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 786
    move-object/from16 v14, v48

    .end local v48    # "sizes":[I
    .local v14, "sizes":[I
    .restart local v50    # "offsets":[J
    invoke-static {v14, v2, v13, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 787
    invoke-static {v9, v2, v4, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_58e

    .line 783
    .end local v64    # "endIndices":[I
    .end local v65    # "sampleCount":I
    .local v6, "endIndices":[I
    .local v14, "sampleCount":I
    .restart local v48    # "sizes":[I
    :cond_588
    move-object/from16 v64, v6

    move/from16 v65, v14

    move-object/from16 v14, v48

    .line 789
    .end local v6    # "endIndices":[I
    .end local v48    # "sizes":[I
    .local v14, "sizes":[I
    .restart local v64    # "endIndices":[I
    .restart local v65    # "sampleCount":I
    :goto_58e
    move v6, v2

    move/from16 v48, v2

    move/from16 v2, v16

    .end local v16    # "editedMaximumSize":I
    .local v2, "editedMaximumSize":I
    .local v6, "j":I
    .local v48, "startIndex":I
    :goto_593
    if-ge v6, v5, :cond_5ea

    .line 790
    const-wide/32 v56, 0xf4240

    move-object/from16 v66, v4

    move/from16 v67, v5

    .end local v4    # "editedFlags":[I
    .end local v5    # "endIndex":I
    .local v66, "editedFlags":[I
    .local v67, "endIndex":I
    iget-wide v4, v10, Lcom/google/android/exoplayer2/extractor/mp4/Track;->movieTimescale:J

    move-wide/from16 v54, v60

    move-wide/from16 v58, v4

    invoke-static/range {v54 .. v59}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v4

    .line 791
    .local v4, "ptsUs":J
    aget-wide v54, v15, v6

    sub-long v68, v54, v62

    const-wide/32 v70, 0xf4240

    move/from16 v74, v7

    move-object/from16 v75, v8

    .end local v7    # "omitClippedSample":Z
    .end local v8    # "startIndices":[I
    .local v74, "omitClippedSample":Z
    .local v75, "startIndices":[I
    iget-wide v7, v10, Lcom/google/android/exoplayer2/extractor/mp4/Track;->timescale:J

    .line 792
    move-wide/from16 v72, v7

    invoke-static/range {v68 .. v73}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v7

    .line 794
    .local v7, "timeInSegmentUs":J
    move-object/from16 v68, v9

    .end local v9    # "flags":[I
    .local v68, "flags":[I
    iget v9, v10, Lcom/google/android/exoplayer2/extractor/mp4/Track;->type:I

    invoke-static {v9}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->canTrimSamplesWithTimestampChange(I)Z

    move-result v9

    if-eqz v9, :cond_5ca

    .line 795
    const-wide/16 v9, 0x0

    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    goto :goto_5cc

    .line 794
    :cond_5ca
    const-wide/16 v9, 0x0

    .line 797
    :goto_5cc
    add-long v45, v4, v7

    aput-wide v45, v3, v1

    .line 798
    if-eqz v11, :cond_5d8

    aget v9, v13, v1

    if-le v9, v2, :cond_5d8

    .line 799
    aget v2, v14, v6

    .line 801
    :cond_5d8
    nop

    .end local v4    # "ptsUs":J
    .end local v7    # "timeInSegmentUs":J
    add-int/lit8 v1, v1, 0x1

    .line 789
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v10, p0

    move-object/from16 v4, v66

    move/from16 v5, v67

    move-object/from16 v9, v68

    move/from16 v7, v74

    move-object/from16 v8, v75

    goto :goto_593

    .end local v66    # "editedFlags":[I
    .end local v67    # "endIndex":I
    .end local v68    # "flags":[I
    .end local v74    # "omitClippedSample":Z
    .end local v75    # "startIndices":[I
    .local v4, "editedFlags":[I
    .restart local v5    # "endIndex":I
    .local v7, "omitClippedSample":Z
    .restart local v8    # "startIndices":[I
    .restart local v9    # "flags":[I
    :cond_5ea
    move-object/from16 v66, v4

    move/from16 v67, v5

    move/from16 v74, v7

    move-object/from16 v75, v8

    move-object/from16 v68, v9

    .line 803
    .end local v4    # "editedFlags":[I
    .end local v5    # "endIndex":I
    .end local v6    # "j":I
    .end local v7    # "omitClippedSample":Z
    .end local v8    # "startIndices":[I
    .end local v9    # "flags":[I
    .restart local v66    # "editedFlags":[I
    .restart local v67    # "endIndex":I
    .restart local v68    # "flags":[I
    .restart local v74    # "omitClippedSample":Z
    .restart local v75    # "startIndices":[I
    const-wide/16 v4, 0x0

    move-object/from16 v9, p0

    iget-object v6, v9, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    aget-wide v7, v6, v0

    add-long v60, v60, v7

    .line 779
    .end local v48    # "startIndex":I
    .end local v62    # "editMediaTime":J
    .end local v67    # "endIndex":I
    add-int/lit8 v0, v0, 0x1

    move/from16 v16, v2

    move-object v10, v9

    move-object/from16 v48, v14

    move/from16 v2, v21

    move/from16 v5, v49

    move-object/from16 v6, v64

    move/from16 v14, v65

    move-object/from16 v4, v66

    move-object/from16 v9, v68

    move/from16 v7, v74

    move-object/from16 v8, v75

    goto/16 :goto_561

    .end local v2    # "editedMaximumSize":I
    .end local v49    # "editedSampleCount":I
    .end local v64    # "endIndices":[I
    .end local v65    # "sampleCount":I
    .end local v66    # "editedFlags":[I
    .end local v68    # "flags":[I
    .end local v74    # "omitClippedSample":Z
    .end local v75    # "startIndices":[I
    .restart local v4    # "editedFlags":[I
    .local v5, "editedSampleCount":I
    .local v6, "endIndices":[I
    .restart local v7    # "omitClippedSample":Z
    .restart local v8    # "startIndices":[I
    .restart local v9    # "flags":[I
    .local v14, "sampleCount":I
    .restart local v16    # "editedMaximumSize":I
    .local v48, "sizes":[I
    :cond_617
    move-object/from16 v66, v4

    move/from16 v49, v5

    move-object/from16 v64, v6

    move/from16 v74, v7

    move-object/from16 v75, v8

    move-object/from16 v68, v9

    move-object v9, v10

    move/from16 v65, v14

    move-object/from16 v14, v48

    .line 805
    .end local v0    # "i":I
    .end local v4    # "editedFlags":[I
    .end local v5    # "editedSampleCount":I
    .end local v6    # "endIndices":[I
    .end local v7    # "omitClippedSample":Z
    .end local v8    # "startIndices":[I
    .end local v9    # "flags":[I
    .end local v48    # "sizes":[I
    .local v14, "sizes":[I
    .restart local v49    # "editedSampleCount":I
    .restart local v64    # "endIndices":[I
    .restart local v65    # "sampleCount":I
    .restart local v66    # "editedFlags":[I
    .restart local v68    # "flags":[I
    .restart local v74    # "omitClippedSample":Z
    .restart local v75    # "startIndices":[I
    const-wide/32 v56, 0xf4240

    iget-wide v4, v9, Lcom/google/android/exoplayer2/extractor/mp4/Track;->movieTimescale:J

    .line 806
    move-wide/from16 v54, v60

    move-wide/from16 v58, v4

    invoke-static/range {v54 .. v59}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v45

    .line 807
    .local v45, "editedDurationUs":J
    new-instance v10, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    move-object v0, v10

    move/from16 v48, v1

    .end local v1    # "sampleIndex":I
    .local v48, "sampleIndex":I
    move-object/from16 v1, p0

    move-object v2, v12

    move-object/from16 v54, v3

    .end local v3    # "editedTimestamps":[J
    .local v54, "editedTimestamps":[J
    move-object v3, v13

    move-object/from16 v55, v66

    .end local v66    # "editedFlags":[I
    .local v55, "editedFlags":[I
    move/from16 v4, v16

    move-object/from16 v5, v54

    move-object/from16 v56, v64

    .end local v64    # "endIndices":[I
    .local v56, "endIndices":[I
    move-object/from16 v6, v55

    move/from16 v57, v74

    move-object/from16 v58, v75

    .end local v74    # "omitClippedSample":Z
    .end local v75    # "startIndices":[I
    .local v57, "omitClippedSample":Z
    .local v58, "startIndices":[I
    move-wide/from16 v7, v45

    invoke-direct/range {v0 .. v8}, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;-><init>(Lcom/google/android/exoplayer2/extractor/mp4/Track;[J[II[J[IJ)V

    return-object v10

    .line 446
    .end local v11    # "copyMetadata":Z
    .end local v13    # "editedSizes":[I
    .end local v14    # "sizes":[I
    .end local v15    # "timestamps":[J
    .end local v16    # "editedMaximumSize":I
    .end local v17    # "cttsAtom":Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;
    .end local v18    # "chunkOffsetsAtom":Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;
    .end local v19    # "stss":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .end local v20    # "stszAtom":Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;
    .end local v21    # "nextSampleIndex":I
    .end local v22    # "remainingTimestampDeltaChanges":I
    .end local v23    # "remainingSamplesAtTimestampDelta":I
    .end local v24    # "chunkOffsetsAreLongs":Z
    .end local v25    # "stssAtom":Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;
    .end local v26    # "remainingSamplesAtTimestampOffset":I
    .end local v27    # "nextSynchronizationSampleIndex":I
    .end local v28    # "stsc":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .end local v29    # "rechunkFixedSizeSamples":Z
    .end local v30    # "remainingTimestampOffsetChanges":I
    .end local v31    # "remainingSynchronizationSamples":I
    .end local v32    # "sampleMimeType":Ljava/lang/String;
    .end local v33    # "maximumSize":I
    .end local v34    # "chunkOffsets":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .end local v35    # "fixedSampleSize":I
    .end local v36    # "ctts":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .end local v37    # "stts":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .end local v38    # "timestampOffset":I
    .end local v39    # "timestampTimeUnits":J
    .end local v41    # "timestampDeltaInTimeUnits":I
    .end local v42    # "duration":J
    .end local v44    # "editListMediaTimes":[J
    .end local v45    # "editedDurationUs":J
    .end local v47    # "chunkIterator":Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;
    .end local v48    # "sampleIndex":I
    .end local v49    # "editedSampleCount":I
    .end local v50    # "offsets":[J
    .end local v51    # "durationUs":J
    .end local v53    # "sampleSizeBox":Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$SampleSizeBox;
    .end local v54    # "editedTimestamps":[J
    .end local v55    # "editedFlags":[I
    .end local v56    # "endIndices":[I
    .end local v57    # "omitClippedSample":Z
    .end local v58    # "startIndices":[I
    .end local v60    # "pts":J
    .end local v65    # "sampleCount":I
    .end local v68    # "flags":[I
    .local v1, "stz2Atom":Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;
    .local v12, "stszAtom":Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;
    :cond_654
    const-string v2, "Track has no sample table size information"

    invoke-static {v2, v0}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v0

    goto :goto_65c

    :goto_65b
    throw v0

    :goto_65c
    goto :goto_65b
.end method

.method private static parseStsd(Lcom/google/android/exoplayer2/util/ParsableByteArray;IILjava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData;Z)Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;
    .registers 24
    .param p0, "stsd"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p1, "trackId"    # I
    .param p2, "rotationDegrees"    # I
    .param p3, "language"    # Ljava/lang/String;
    .param p4, "drmInitData"    # Lcom/google/android/exoplayer2/drm/DrmInitData;
    .param p5, "isQuickTime"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 1033
    move-object/from16 v10, p0

    move/from16 v11, p1

    const/16 v0, 0xc

    invoke-virtual {v10, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 1034
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v12

    .line 1035
    .local v12, "numberOfEntries":I
    new-instance v0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;

    invoke-direct {v0, v12}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;-><init>(I)V

    move-object v13, v0

    .line 1036
    .local v13, "out":Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;
    const/4 v0, 0x0

    move v14, v0

    .local v14, "i":I
    :goto_15
    if-ge v14, v12, :cond_189

    .line 1037
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v15

    .line 1038
    .local v15, "childStartPosition":I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v16

    .line 1039
    .local v16, "childAtomSize":I
    if-lez v16, :cond_23

    const/4 v0, 0x1

    goto :goto_24

    :cond_23
    const/4 v0, 0x0

    :goto_24
    const-string v1, "childAtomSize must be positive"

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    .line 1040
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v9

    .line 1041
    .local v9, "childAtomType":I
    const v0, 0x61766331

    if-eq v9, v0, :cond_16c

    const v0, 0x61766333

    if-eq v9, v0, :cond_16c

    const v0, 0x656e6376

    if-eq v9, v0, :cond_16c

    const v0, 0x6d317620

    if-eq v9, v0, :cond_16c

    const v0, 0x6d703476

    if-eq v9, v0, :cond_16c

    const v0, 0x68766331

    if-eq v9, v0, :cond_16c

    const v0, 0x68657631

    if-eq v9, v0, :cond_16c

    const v0, 0x73323633

    if-eq v9, v0, :cond_16c

    const v0, 0x48323633

    if-eq v9, v0, :cond_16c

    const v0, 0x76703038

    if-eq v9, v0, :cond_16c

    const v0, 0x76703039

    if-eq v9, v0, :cond_16c

    const v0, 0x61763031

    if-eq v9, v0, :cond_16c

    const v0, 0x64766176

    if-eq v9, v0, :cond_16c

    const v0, 0x64766131

    if-eq v9, v0, :cond_16c

    const v0, 0x64766865

    if-eq v9, v0, :cond_16c

    const v0, 0x64766831

    if-ne v9, v0, :cond_81

    move/from16 v17, v9

    goto/16 :goto_16e

    .line 1067
    :cond_81
    const v0, 0x6d703461

    if-eq v9, v0, :cond_156

    const v0, 0x656e6361

    if-eq v9, v0, :cond_156

    const v0, 0x61632d33

    if-eq v9, v0, :cond_156

    const v0, 0x65632d33

    if-eq v9, v0, :cond_156

    const v0, 0x61632d34

    if-eq v9, v0, :cond_156

    const v0, 0x6d6c7061

    if-eq v9, v0, :cond_156

    const v0, 0x64747363

    if-eq v9, v0, :cond_156

    const v0, 0x64747365

    if-eq v9, v0, :cond_156

    const v0, 0x64747368

    if-eq v9, v0, :cond_156

    const v0, 0x6474736c

    if-eq v9, v0, :cond_156

    const v0, 0x64747378

    if-eq v9, v0, :cond_156

    const v0, 0x73616d72

    if-eq v9, v0, :cond_156

    const v0, 0x73617762

    if-eq v9, v0, :cond_156

    const v0, 0x6c70636d

    if-eq v9, v0, :cond_156

    const v0, 0x736f7774

    if-eq v9, v0, :cond_156

    const v0, 0x74776f73

    if-eq v9, v0, :cond_156

    const v0, 0x2e6d7032

    if-eq v9, v0, :cond_156

    const v0, 0x2e6d7033

    if-eq v9, v0, :cond_156

    const v0, 0x6d686131

    if-eq v9, v0, :cond_156

    const v0, 0x6d686d31

    if-eq v9, v0, :cond_156

    const v0, 0x616c6163

    if-eq v9, v0, :cond_156

    const v0, 0x616c6177

    if-eq v9, v0, :cond_156

    const v0, 0x756c6177

    if-eq v9, v0, :cond_156

    const v0, 0x4f707573

    if-eq v9, v0, :cond_156

    const v0, 0x664c6143

    if-ne v9, v0, :cond_ff

    goto :goto_156

    .line 1103
    :cond_ff
    const v0, 0x54544d4c

    if-eq v9, v0, :cond_145

    const v0, 0x74783367

    if-eq v9, v0, :cond_145

    const v0, 0x77767474

    if-eq v9, v0, :cond_145

    const v0, 0x73747070

    if-eq v9, v0, :cond_145

    const v0, 0x63363038

    if-ne v9, v0, :cond_119

    goto :goto_145

    .line 1110
    :cond_119
    const v0, 0x6d657474

    if-ne v9, v0, :cond_125

    .line 1111
    invoke-static {v10, v9, v15, v11, v13}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseMetaDataSampleEntry(Lcom/google/android/exoplayer2/util/ParsableByteArray;IIILcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;)V

    move/from16 v17, v9

    goto/16 :goto_180

    .line 1112
    :cond_125
    const v0, 0x63616d6d

    if-ne v9, v0, :cond_142

    .line 1113
    new-instance v0, Lcom/google/android/exoplayer2/Format$Builder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/Format$Builder;-><init>()V

    .line 1115
    invoke-virtual {v0, v11}, Lcom/google/android/exoplayer2/Format$Builder;->setId(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    .line 1116
    const-string v1, "application/x-camera-motion"

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    .line 1117
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    iput-object v0, v13, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->format:Lcom/google/android/exoplayer2/Format;

    move/from16 v17, v9

    goto :goto_180

    .line 1112
    :cond_142
    move/from16 v17, v9

    goto :goto_180

    .line 1108
    :cond_145
    :goto_145
    move-object/from16 v0, p0

    move v1, v9

    move v2, v15

    move/from16 v3, v16

    move/from16 v4, p1

    move-object/from16 v5, p3

    move-object v6, v13

    invoke-static/range {v0 .. v6}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseTextSampleEntry(Lcom/google/android/exoplayer2/util/ParsableByteArray;IIIILjava/lang/String;Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;)V

    move/from16 v17, v9

    goto :goto_180

    .line 1092
    :cond_156
    :goto_156
    move-object/from16 v0, p0

    move v1, v9

    move v2, v15

    move/from16 v3, v16

    move/from16 v4, p1

    move-object/from16 v5, p3

    move/from16 v6, p5

    move-object/from16 v7, p4

    move-object v8, v13

    move/from16 v17, v9

    .end local v9    # "childAtomType":I
    .local v17, "childAtomType":I
    move v9, v14

    invoke-static/range {v0 .. v9}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseAudioSampleEntry(Lcom/google/android/exoplayer2/util/ParsableByteArray;IIIILjava/lang/String;ZLcom/google/android/exoplayer2/drm/DrmInitData;Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;I)V

    goto :goto_180

    .line 1041
    .end local v17    # "childAtomType":I
    .restart local v9    # "childAtomType":I
    :cond_16c
    move/from16 v17, v9

    .line 1057
    .end local v9    # "childAtomType":I
    .restart local v17    # "childAtomType":I
    :goto_16e
    move-object/from16 v0, p0

    move/from16 v1, v17

    move v2, v15

    move/from16 v3, v16

    move/from16 v4, p1

    move/from16 v5, p2

    move-object/from16 v6, p4

    move-object v7, v13

    move v8, v14

    invoke-static/range {v0 .. v8}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseVideoSampleEntry(Lcom/google/android/exoplayer2/util/ParsableByteArray;IIIIILcom/google/android/exoplayer2/drm/DrmInitData;Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;I)V

    .line 1119
    :goto_180
    add-int v0, v15, v16

    invoke-virtual {v10, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 1036
    .end local v15    # "childStartPosition":I
    .end local v16    # "childAtomSize":I
    .end local v17    # "childAtomType":I
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_15

    .line 1121
    .end local v14    # "i":I
    :cond_189
    return-object v13
.end method

.method private static parseTextSampleEntry(Lcom/google/android/exoplayer2/util/ParsableByteArray;IIIILjava/lang/String;Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;)V
    .registers 14
    .param p0, "parent"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p1, "atomType"    # I
    .param p2, "position"    # I
    .param p3, "atomSize"    # I
    .param p4, "trackId"    # I
    .param p5, "language"    # Ljava/lang/String;
    .param p6, "out"    # Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;

    .line 1132
    add-int/lit8 v0, p2, 0x8

    add-int/lit8 v0, v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 1135
    const/4 v0, 0x0

    .line 1136
    .local v0, "initializationData":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<[B>;"
    const-wide v1, 0x7fffffffffffffffL

    .line 1139
    .local v1, "subsampleOffsetUs":J
    const v3, 0x54544d4c

    if-ne p1, v3, :cond_15

    .line 1140
    const-string v3, "application/ttml+xml"

    .local v3, "mimeType":Ljava/lang/String;
    goto :goto_47

    .line 1141
    .end local v3    # "mimeType":Ljava/lang/String;
    :cond_15
    const v3, 0x74783367

    if-ne p1, v3, :cond_2b

    .line 1142
    const-string v3, "application/x-quicktime-tx3g"

    .line 1143
    .restart local v3    # "mimeType":Ljava/lang/String;
    add-int/lit8 v4, p3, -0x8

    add-int/lit8 v4, v4, -0x8

    .line 1144
    .local v4, "sampleDescriptionLength":I
    new-array v5, v4, [B

    .line 1145
    .local v5, "sampleDescriptionData":[B
    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 1146
    invoke-static {v5}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 1147
    .end local v4    # "sampleDescriptionLength":I
    .end local v5    # "sampleDescriptionData":[B
    goto :goto_47

    .end local v3    # "mimeType":Ljava/lang/String;
    :cond_2b
    const v3, 0x77767474

    if-ne p1, v3, :cond_33

    .line 1148
    const-string v3, "application/x-mp4-vtt"

    .restart local v3    # "mimeType":Ljava/lang/String;
    goto :goto_47

    .line 1149
    .end local v3    # "mimeType":Ljava/lang/String;
    :cond_33
    const v3, 0x73747070

    if-ne p1, v3, :cond_3d

    .line 1150
    const-string v3, "application/ttml+xml"

    .line 1151
    .restart local v3    # "mimeType":Ljava/lang/String;
    const-wide/16 v1, 0x0

    goto :goto_47

    .line 1152
    .end local v3    # "mimeType":Ljava/lang/String;
    :cond_3d
    const v3, 0x63363038

    if-ne p1, v3, :cond_67

    .line 1154
    const-string v3, "application/x-mp4-cea-608"

    .line 1155
    .restart local v3    # "mimeType":Ljava/lang/String;
    const/4 v4, 0x1

    iput v4, p6, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->requiredSampleTransformation:I

    .line 1161
    :goto_47
    new-instance v4, Lcom/google/android/exoplayer2/Format$Builder;

    invoke-direct {v4}, Lcom/google/android/exoplayer2/Format$Builder;-><init>()V

    .line 1163
    invoke-virtual {v4, p4}, Lcom/google/android/exoplayer2/Format$Builder;->setId(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v4

    .line 1164
    invoke-virtual {v4, v3}, Lcom/google/android/exoplayer2/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v4

    .line 1165
    invoke-virtual {v4, p5}, Lcom/google/android/exoplayer2/Format$Builder;->setLanguage(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v4

    .line 1166
    invoke-virtual {v4, v1, v2}, Lcom/google/android/exoplayer2/Format$Builder;->setSubsampleOffsetUs(J)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v4

    .line 1167
    invoke-virtual {v4, v0}, Lcom/google/android/exoplayer2/Format$Builder;->setInitializationData(Ljava/util/List;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v4

    .line 1168
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object v4

    iput-object v4, p6, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->format:Lcom/google/android/exoplayer2/Format;

    .line 1169
    return-void

    .line 1158
    .end local v3    # "mimeType":Ljava/lang/String;
    :cond_67
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    throw v3
.end method

.method private static parseTkhd(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$TkhdData;
    .registers 16
    .param p0, "tkhd"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 912
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 913
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 914
    .local v1, "fullAtom":I
    invoke-static {v1}, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v2

    .line 916
    .local v2, "version":I
    const/16 v3, 0x10

    if-nez v2, :cond_14

    const/16 v4, 0x8

    goto :goto_16

    :cond_14
    const/16 v4, 0x10

    :goto_16
    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 917
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v4

    .line 919
    .local v4, "trackId":I
    const/4 v5, 0x4

    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 920
    const/4 v6, 0x1

    .line 921
    .local v6, "durationUnknown":Z
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v7

    .line 922
    .local v7, "durationPosition":I
    if-nez v2, :cond_29

    const/4 v0, 0x4

    .line 923
    .local v0, "durationByteCount":I
    :cond_29
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2a
    if-ge v8, v0, :cond_3c

    .line 924
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v9

    add-int v10, v7, v8

    aget-byte v9, v9, v10

    const/4 v10, -0x1

    if-eq v9, v10, :cond_39

    .line 925
    const/4 v6, 0x0

    .line 926
    goto :goto_3c

    .line 923
    :cond_39
    add-int/lit8 v8, v8, 0x1

    goto :goto_2a

    .line 930
    .end local v8    # "i":I
    :cond_3c
    :goto_3c
    if-eqz v6, :cond_47

    .line 931
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 932
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    .local v8, "duration":J
    goto :goto_5d

    .line 934
    .end local v8    # "duration":J
    :cond_47
    if-nez v2, :cond_4e

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v8

    goto :goto_52

    :cond_4e
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v8

    .line 935
    .restart local v8    # "duration":J
    :goto_52
    const-wide/16 v10, 0x0

    cmp-long v12, v8, v10

    if-nez v12, :cond_5d

    .line 938
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    .line 942
    :cond_5d
    :goto_5d
    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 943
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v3

    .line 944
    .local v3, "a00":I
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v10

    .line 945
    .local v10, "a01":I
    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 946
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v5

    .line 947
    .local v5, "a10":I
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v11

    .line 950
    .local v11, "a11":I
    const/high16 v12, 0x10000

    .line 951
    .local v12, "fixedOne":I
    if-nez v3, :cond_81

    if-ne v10, v12, :cond_81

    neg-int v13, v12

    if-ne v5, v13, :cond_81

    if-nez v11, :cond_81

    .line 952
    const/16 v13, 0x5a

    .local v13, "rotationDegrees":I
    goto :goto_9b

    .line 953
    .end local v13    # "rotationDegrees":I
    :cond_81
    if-nez v3, :cond_8d

    neg-int v13, v12

    if-ne v10, v13, :cond_8d

    if-ne v5, v12, :cond_8d

    if-nez v11, :cond_8d

    .line 954
    const/16 v13, 0x10e

    .restart local v13    # "rotationDegrees":I
    goto :goto_9b

    .line 955
    .end local v13    # "rotationDegrees":I
    :cond_8d
    neg-int v13, v12

    if-ne v3, v13, :cond_9a

    if-nez v10, :cond_9a

    if-nez v5, :cond_9a

    neg-int v13, v12

    if-ne v11, v13, :cond_9a

    .line 956
    const/16 v13, 0xb4

    .restart local v13    # "rotationDegrees":I
    goto :goto_9b

    .line 959
    .end local v13    # "rotationDegrees":I
    :cond_9a
    const/4 v13, 0x0

    .line 962
    .restart local v13    # "rotationDegrees":I
    :goto_9b
    new-instance v14, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$TkhdData;

    invoke-direct {v14, v4, v8, v9, v13}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$TkhdData;-><init>(IJI)V

    return-object v14
.end method

.method private static parseTrak(Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;JLcom/google/android/exoplayer2/drm/DrmInitData;ZZ)Lcom/google/android/exoplayer2/extractor/mp4/Track;
    .registers 41
    .param p0, "trak"    # Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;
    .param p1, "mvhd"    # Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;
    .param p2, "duration"    # J
    .param p4, "drmInitData"    # Lcom/google/android/exoplayer2/drm/DrmInitData;
    .param p5, "ignoreEditLists"    # Z
    .param p6, "isQuickTime"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 360
    move-object/from16 v0, p0

    const v1, 0x6d646961

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    .line 362
    .local v1, "mdia":Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;
    nop

    .line 363
    const v2, 0x68646c72    # 4.3148E24f

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    iget-object v2, v2, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-static {v2}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseHdlr(Lcom/google/android/exoplayer2/util/ParsableByteArray;)I

    move-result v2

    invoke-static {v2}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->getTrackTypeForHdlr(I)I

    move-result v2

    .line 364
    .local v2, "trackType":I
    const/4 v3, -0x1

    const/4 v4, 0x0

    if-ne v2, v3, :cond_2c

    .line 365
    return-object v4

    .line 368
    :cond_2c
    const v3, 0x746b6864

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    iget-object v3, v3, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-static {v3}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseTkhd(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$TkhdData;

    move-result-object v18

    .line 369
    .local v18, "tkhdData":Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$TkhdData;
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, p2, v5

    if-nez v3, :cond_4f

    .line 370
    # getter for: Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$TkhdData;->duration:J
    invoke-static/range {v18 .. v18}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$TkhdData;->access$000(Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$TkhdData;)J

    move-result-wide v7

    move-wide/from16 v19, v7

    .end local p2    # "duration":J
    .local v7, "duration":J
    goto :goto_51

    .line 369
    .end local v7    # "duration":J
    .restart local p2    # "duration":J
    :cond_4f
    move-wide/from16 v19, p2

    .line 372
    .end local p2    # "duration":J
    .local v19, "duration":J
    :goto_51
    move-object/from16 v15, p1

    iget-object v3, v15, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-static {v3}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseMvhd(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$MvhdInfo;

    move-result-object v3

    iget-wide v7, v3, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$MvhdInfo;->timescale:J

    .line 374
    .local v7, "movieTimescale":J
    cmp-long v3, v19, v5

    if-nez v3, :cond_67

    .line 375
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    move-wide/from16 v21, v5

    .local v5, "durationUs":J
    goto :goto_73

    .line 377
    .end local v5    # "durationUs":J
    :cond_67
    const-wide/32 v11, 0xf4240

    move-wide/from16 v9, v19

    move-wide v13, v7

    invoke-static/range {v9 .. v14}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v5

    move-wide/from16 v21, v5

    .line 379
    .local v21, "durationUs":J
    :goto_73
    nop

    .line 381
    const v3, 0x6d696e66

    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    .line 382
    const v5, 0x7374626c

    invoke-virtual {v3, v5}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    move-result-object v3

    .line 380
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    .line 384
    .local v14, "stbl":Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;
    nop

    .line 385
    const v3, 0x6d646864

    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    iget-object v3, v3, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-static {v3}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseMdhd(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Landroid/util/Pair;

    move-result-object v13

    .line 386
    .local v13, "mdhdData":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    const v3, 0x73747364

    invoke-virtual {v14, v3}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v12

    .line 387
    .local v12, "stsd":Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;
    if-eqz v12, :cond_13e

    .line 391
    iget-object v3, v12, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 394
    # getter for: Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$TkhdData;->id:I
    invoke-static/range {v18 .. v18}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$TkhdData;->access$100(Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$TkhdData;)I

    move-result v24

    .line 395
    # getter for: Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$TkhdData;->rotationDegrees:I
    invoke-static/range {v18 .. v18}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$TkhdData;->access$200(Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$TkhdData;)I

    move-result v25

    iget-object v5, v13, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v26, v5

    check-cast v26, Ljava/lang/String;

    .line 392
    move-object/from16 v23, v3

    move-object/from16 v27, p4

    move/from16 v28, p6

    invoke-static/range {v23 .. v28}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseStsd(Lcom/google/android/exoplayer2/util/ParsableByteArray;IILjava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData;Z)Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;

    move-result-object v10

    .line 399
    .local v10, "stsdData":Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;
    const/4 v3, 0x0

    .line 400
    .local v3, "editListDurations":[J
    const/4 v5, 0x0

    .line 401
    .local v5, "editListMediaTimes":[J
    if-nez p5, :cond_e8

    .line 402
    const v6, 0x65647473

    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    move-result-object v6

    .line 403
    .local v6, "edtsAtom":Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;
    if-eqz v6, :cond_e8

    .line 404
    invoke-static {v6}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseEdts(Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;)Landroid/util/Pair;

    move-result-object v9

    .line 405
    .local v9, "edtsData":Landroid/util/Pair;, "Landroid/util/Pair<[J[J>;"
    if-eqz v9, :cond_e8

    .line 406
    iget-object v11, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v3, v11

    check-cast v3, [J

    .line 407
    iget-object v11, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v5, v11

    check-cast v5, [J

    move-object/from16 v23, v3

    move-object/from16 v24, v5

    goto :goto_ec

    .line 411
    .end local v6    # "edtsAtom":Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;
    .end local v9    # "edtsData":Landroid/util/Pair;, "Landroid/util/Pair<[J[J>;"
    :cond_e8
    move-object/from16 v23, v3

    move-object/from16 v24, v5

    .end local v3    # "editListDurations":[J
    .end local v5    # "editListMediaTimes":[J
    .local v23, "editListDurations":[J
    .local v24, "editListMediaTimes":[J
    :goto_ec
    iget-object v3, v10, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->format:Lcom/google/android/exoplayer2/Format;

    if-nez v3, :cond_fb

    .line 412
    move-wide/from16 v27, v7

    move-object/from16 v30, v10

    move-object/from16 v31, v12

    move-object/from16 v32, v13

    move-object/from16 v33, v14

    goto :goto_13d

    .line 413
    :cond_fb
    new-instance v25, Lcom/google/android/exoplayer2/extractor/mp4/Track;

    .line 414
    # getter for: Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$TkhdData;->id:I
    invoke-static/range {v18 .. v18}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$TkhdData;->access$100(Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$TkhdData;)I

    move-result v4

    iget-object v3, v13, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    .line 416
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    iget-object v11, v10, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->format:Lcom/google/android/exoplayer2/Format;

    iget v9, v10, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->requiredSampleTransformation:I

    iget-object v6, v10, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->trackEncryptionBoxes:[Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    iget v5, v10, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->nalUnitLengthFieldLength:I

    move-object/from16 v3, v25

    move/from16 v26, v5

    move v5, v2

    move-object/from16 v29, v6

    move-wide/from16 v27, v7

    .end local v7    # "movieTimescale":J
    .local v27, "movieTimescale":J
    move-wide/from16 v6, v16

    move/from16 v16, v9

    move-wide/from16 v8, v27

    move-object/from16 v30, v10

    move-object/from16 v17, v11

    .end local v10    # "stsdData":Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;
    .local v30, "stsdData":Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;
    move-wide/from16 v10, v21

    move-object/from16 v31, v12

    .end local v12    # "stsd":Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;
    .local v31, "stsd":Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;
    move-object/from16 v12, v17

    move-object/from16 v32, v13

    .end local v13    # "mdhdData":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    .local v32, "mdhdData":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    move/from16 v13, v16

    move-object/from16 v33, v14

    .end local v14    # "stbl":Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;
    .local v33, "stbl":Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;
    move-object/from16 v14, v29

    move/from16 v15, v26

    move-object/from16 v16, v23

    move-object/from16 v17, v24

    invoke-direct/range {v3 .. v17}, Lcom/google/android/exoplayer2/extractor/mp4/Track;-><init>(IIJJJLcom/google/android/exoplayer2/Format;I[Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;I[J[J)V

    move-object/from16 v4, v25

    .line 411
    :goto_13d
    return-object v4

    .line 388
    .end local v23    # "editListDurations":[J
    .end local v24    # "editListMediaTimes":[J
    .end local v27    # "movieTimescale":J
    .end local v30    # "stsdData":Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;
    .end local v31    # "stsd":Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;
    .end local v32    # "mdhdData":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    .end local v33    # "stbl":Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;
    .restart local v7    # "movieTimescale":J
    .restart local v12    # "stsd":Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;
    .restart local v13    # "mdhdData":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    .restart local v14    # "stbl":Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;
    :cond_13e
    const-string v3, "Malformed sample table (stbl) missing sample description (stsd)"

    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v3

    throw v3
.end method

.method public static parseTraks(Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;JLcom/google/android/exoplayer2/drm/DrmInitData;ZZLcom/google/common/base/Function;)Ljava/util/List;
    .registers 19
    .param p0, "moov"    # Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;
    .param p1, "gaplessInfoHolder"    # Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;
    .param p2, "duration"    # J
    .param p4, "drmInitData"    # Lcom/google/android/exoplayer2/drm/DrmInitData;
    .param p5, "ignoreEditLists"    # Z
    .param p6, "isQuickTime"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;",
            "Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;",
            "J",
            "Lcom/google/android/exoplayer2/drm/DrmInitData;",
            "ZZ",
            "Lcom/google/common/base/Function<",
            "Lcom/google/android/exoplayer2/extractor/mp4/Track;",
            "Lcom/google/android/exoplayer2/extractor/mp4/Track;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 168
    .local p7, "modifyTrackFunction":Lcom/google/common/base/Function;, "Lcom/google/common/base/Function<Lcom/google/android/exoplayer2/extractor/mp4/Track;Lcom/google/android/exoplayer2/extractor/mp4/Track;>;"
    move-object v0, p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 169
    .local v1, "trackSampleTables":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->containerChildren:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_7b

    .line 170
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->containerChildren:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    .line 171
    .local v3, "atom":Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;
    iget v4, v3, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->type:I

    const v5, 0x7472616b

    if-eq v4, v5, :cond_22

    .line 172
    move-object v7, p1

    move-object/from16 v5, p7

    goto :goto_78

    .line 175
    :cond_22
    nop

    .line 179
    const v4, 0x6d766864

    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    .line 177
    move-object v4, v3

    move-wide v6, p2

    move-object v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    invoke-static/range {v4 .. v10}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseTrak(Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;JLcom/google/android/exoplayer2/drm/DrmInitData;ZZ)Lcom/google/android/exoplayer2/extractor/mp4/Track;

    move-result-object v4

    .line 176
    move-object/from16 v5, p7

    invoke-interface {v5, v4}, Lcom/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/extractor/mp4/Track;

    .line 184
    .local v4, "track":Lcom/google/android/exoplayer2/extractor/mp4/Track;
    if-nez v4, :cond_48

    .line 185
    move-object v7, p1

    goto :goto_78

    .line 187
    :cond_48
    nop

    .line 190
    const v6, 0x6d646961

    invoke-virtual {v3, v6}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    .line 191
    const v7, 0x6d696e66

    invoke-virtual {v6, v7}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    move-result-object v6

    .line 189
    invoke-static {v6}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    .line 192
    const v7, 0x7374626c

    invoke-virtual {v6, v7}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    move-result-object v6

    .line 188
    invoke-static {v6}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    .line 193
    .local v6, "stblAtom":Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;
    move-object v7, p1

    invoke-static {v4, v6, p1}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseStbl(Lcom/google/android/exoplayer2/extractor/mp4/Track;Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;)Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    move-result-object v8

    .line 194
    .local v8, "trackSampleTable":Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;
    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    .end local v3    # "atom":Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;
    .end local v4    # "track":Lcom/google/android/exoplayer2/extractor/mp4/Track;
    .end local v6    # "stblAtom":Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;
    .end local v8    # "trackSampleTable":Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;
    :goto_78
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_7b
    move-object v7, p1

    move-object/from16 v5, p7

    .line 196
    .end local v2    # "i":I
    return-object v1
.end method

.method public static parseUdta(Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;)Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$UdtaInfo;
    .registers 10
    .param p0, "udtaAtom"    # Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    .line 207
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 208
    .local v0, "udtaData":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 209
    const/4 v2, 0x0

    .line 210
    .local v2, "metaMetadata":Lcom/google/android/exoplayer2/metadata/Metadata;
    const/4 v3, 0x0

    .line 211
    .local v3, "smtaMetadata":Lcom/google/android/exoplayer2/metadata/Metadata;
    const/4 v4, 0x0

    .line 212
    .local v4, "xyzMetadata":Lcom/google/android/exoplayer2/metadata/Metadata;
    :goto_a
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v5

    if-lt v5, v1, :cond_49

    .line 213
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v5

    .line 214
    .local v5, "atomPosition":I
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v6

    .line 215
    .local v6, "atomSize":I
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v7

    .line 216
    .local v7, "atomType":I
    const v8, 0x6d657461

    if-ne v7, v8, :cond_2b

    .line 217
    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 218
    add-int v8, v5, v6

    invoke-static {v0, v8}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseUdtaMeta(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object v2

    goto :goto_43

    .line 219
    :cond_2b
    const v8, 0x736d7461

    if-ne v7, v8, :cond_3a

    .line 220
    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 221
    add-int v8, v5, v6

    invoke-static {v0, v8}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseSmta(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object v3

    goto :goto_43

    .line 222
    :cond_3a
    const v8, -0x56878686

    if-ne v7, v8, :cond_43

    .line 223
    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseXyz(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object v4

    .line 225
    :cond_43
    :goto_43
    add-int v8, v5, v6

    invoke-virtual {v0, v8}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 226
    .end local v5    # "atomPosition":I
    .end local v6    # "atomSize":I
    .end local v7    # "atomType":I
    goto :goto_a

    .line 227
    :cond_49
    new-instance v1, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$UdtaInfo;

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$UdtaInfo;-><init>(Lcom/google/android/exoplayer2/metadata/Metadata;Lcom/google/android/exoplayer2/metadata/Metadata;Lcom/google/android/exoplayer2/metadata/Metadata;)V

    return-object v1
.end method

.method private static parseUdtaMeta(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)Lcom/google/android/exoplayer2/metadata/Metadata;
    .registers 6
    .param p0, "meta"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p1, "limit"    # I

    .line 825
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 826
    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->maybeSkipRemainingMetaAtomHeaderBytes(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V

    .line 827
    :goto_8
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v0

    if-ge v0, p1, :cond_2f

    .line 828
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v0

    .line 829
    .local v0, "atomPosition":I
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 830
    .local v1, "atomSize":I
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v2

    .line 831
    .local v2, "atomType":I
    const v3, 0x696c7374

    if-ne v2, v3, :cond_29

    .line 832
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 833
    add-int v3, v0, v1

    invoke-static {p0, v3}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseIlst(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object v3

    return-object v3

    .line 835
    :cond_29
    add-int v3, v0, v1

    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 836
    .end local v0    # "atomPosition":I
    .end local v1    # "atomSize":I
    .end local v2    # "atomType":I
    goto :goto_8

    .line 837
    :cond_2f
    const/4 v0, 0x0

    return-object v0
.end method

.method private static parseVideoSampleEntry(Lcom/google/android/exoplayer2/util/ParsableByteArray;IIIIILcom/google/android/exoplayer2/drm/DrmInitData;Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;I)V
    .registers 49
    .param p0, "parent"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p1, "atomType"    # I
    .param p2, "position"    # I
    .param p3, "size"    # I
    .param p4, "trackId"    # I
    .param p5, "rotationDegrees"    # I
    .param p6, "drmInitData"    # Lcom/google/android/exoplayer2/drm/DrmInitData;
    .param p7, "out"    # Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;
    .param p8, "entryIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 1184
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    add-int/lit8 v5, v1, 0x8

    add-int/lit8 v5, v5, 0x8

    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 1186
    const/16 v5, 0x10

    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 1187
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v5

    .line 1188
    .local v5, "width":I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v6

    .line 1189
    .local v6, "height":I
    const/4 v7, 0x0

    .line 1190
    .local v7, "pixelWidthHeightRatioFromPasp":Z
    const/high16 v8, 0x3f800000    # 1.0f

    .line 1191
    .local v8, "pixelWidthHeightRatio":F
    const/16 v9, 0x32

    invoke-virtual {v0, v9}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 1193
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v9

    .line 1194
    .local v9, "childPosition":I
    const v10, 0x656e6376

    move/from16 v12, p1

    if-ne v12, v10, :cond_5a

    .line 1196
    nop

    .line 1197
    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseSampleEntryEncryptionData(Lcom/google/android/exoplayer2/util/ParsableByteArray;II)Landroid/util/Pair;

    move-result-object v10

    .line 1198
    .local v10, "sampleEntryEncryptionData":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;>;"
    if-eqz v10, :cond_57

    .line 1199
    iget-object v13, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 1201
    .end local p1    # "atomType":I
    .local v12, "atomType":I
    if-nez v3, :cond_44

    .line 1202
    const/4 v13, 0x0

    goto :goto_4e

    .line 1203
    :cond_44
    iget-object v13, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v13, Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    iget-object v13, v13, Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;->schemeType:Ljava/lang/String;

    invoke-virtual {v3, v13}, Lcom/google/android/exoplayer2/drm/DrmInitData;->copyWithSchemeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/drm/DrmInitData;

    move-result-object v13

    :goto_4e
    move-object v3, v13

    .line 1204
    .end local p6    # "drmInitData":Lcom/google/android/exoplayer2/drm/DrmInitData;
    .local v3, "drmInitData":Lcom/google/android/exoplayer2/drm/DrmInitData;
    iget-object v13, v4, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->trackEncryptionBoxes:[Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    iget-object v14, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v14, Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    aput-object v14, v13, p8

    .line 1206
    :cond_57
    invoke-virtual {v0, v9}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 1213
    .end local v10    # "sampleEntryEncryptionData":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;>;"
    :cond_5a
    const/4 v10, 0x0

    .line 1214
    .local v10, "mimeType":Ljava/lang/String;
    const v13, 0x6d317620

    if-ne v12, v13, :cond_63

    .line 1215
    const-string v10, "video/mpeg"

    goto :goto_6a

    .line 1216
    :cond_63
    const v13, 0x48323633

    if-ne v12, v13, :cond_6a

    .line 1217
    const-string v10, "video/3gpp"

    .line 1220
    :cond_6a
    :goto_6a
    const/4 v13, 0x0

    .line 1221
    .local v13, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    const/4 v14, 0x0

    .line 1222
    .local v14, "codecs":Ljava/lang/String;
    const/4 v15, 0x0

    .line 1223
    .local v15, "projectionData":[B
    const/16 v16, -0x1

    .line 1224
    .local v16, "stereoMode":I
    const/16 v17, 0x0

    .line 1227
    .local v17, "esdsData":Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$EsdsData;
    const/16 v18, -0x1

    .line 1228
    .local v18, "colorSpace":I
    const/16 v19, -0x1

    .line 1229
    .local v19, "colorRange":I
    const/16 v20, -0x1

    .line 1231
    .local v20, "colorTransfer":I
    const/16 v21, 0x0

    move/from16 v22, v16

    move/from16 v23, v18

    move/from16 v24, v19

    move/from16 v25, v20

    .line 1233
    .end local v16    # "stereoMode":I
    .end local v18    # "colorSpace":I
    .end local v19    # "colorRange":I
    .end local v20    # "colorTransfer":I
    .local v21, "hdrStaticInfo":Ljava/nio/ByteBuffer;
    .local v22, "stereoMode":I
    .local v23, "colorSpace":I
    .local v24, "colorRange":I
    .local v25, "colorTransfer":I
    :goto_81
    sub-int v11, v9, v1

    move-object/from16 v18, v3

    .end local v3    # "drmInitData":Lcom/google/android/exoplayer2/drm/DrmInitData;
    .local v18, "drmInitData":Lcom/google/android/exoplayer2/drm/DrmInitData;
    if-ge v11, v2, :cond_408

    .line 1234
    invoke-virtual {v0, v9}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 1235
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v11

    .line 1236
    .local v11, "childStartPosition":I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v3

    .line 1237
    .local v3, "childAtomSize":I
    if-nez v3, :cond_b3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v19

    move-object/from16 v20, v13

    .end local v13    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .local v20, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    sub-int v13, v19, v1

    if-ne v13, v2, :cond_b5

    .line 1239
    move/from16 v32, v5

    move/from16 v31, v6

    move/from16 v27, v7

    move/from16 v30, v8

    move/from16 v28, v12

    move-object/from16 v37, v14

    move-object/from16 v29, v15

    move/from16 v4, v23

    move/from16 v6, v25

    const/4 v2, 0x0

    goto/16 :goto_41d

    .line 1237
    .end local v20    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .restart local v13    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    :cond_b3
    move-object/from16 v20, v13

    .line 1241
    .end local v13    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .restart local v20    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    :cond_b5
    if-lez v3, :cond_b9

    const/4 v13, 0x1

    goto :goto_ba

    :cond_b9
    const/4 v13, 0x0

    :goto_ba
    const-string v1, "childAtomSize must be positive"

    invoke-static {v13, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    .line 1242
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 1243
    .local v1, "childAtomType":I
    const v13, 0x61766343

    if-ne v1, v13, :cond_105

    .line 1244
    if-nez v10, :cond_cc

    const/4 v13, 0x1

    goto :goto_cd

    :cond_cc
    const/4 v13, 0x0

    :goto_cd
    const/4 v2, 0x0

    invoke-static {v13, v2}, Lcom/google/android/exoplayer2/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    .line 1245
    const-string v2, "video/avc"

    .line 1246
    .end local v10    # "mimeType":Ljava/lang/String;
    .local v2, "mimeType":Ljava/lang/String;
    add-int/lit8 v10, v11, 0x8

    invoke-virtual {v0, v10}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 1247
    invoke-static/range {p0 .. p0}, Lcom/google/android/exoplayer2/video/AvcConfig;->parse(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/video/AvcConfig;

    move-result-object v10

    .line 1248
    .local v10, "avcConfig":Lcom/google/android/exoplayer2/video/AvcConfig;
    iget-object v13, v10, Lcom/google/android/exoplayer2/video/AvcConfig;->initializationData:Ljava/util/List;

    .line 1249
    .end local v20    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .restart local v13    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    move-object/from16 p1, v2

    .end local v2    # "mimeType":Ljava/lang/String;
    .local p1, "mimeType":Ljava/lang/String;
    iget v2, v10, Lcom/google/android/exoplayer2/video/AvcConfig;->nalUnitLengthFieldLength:I

    iput v2, v4, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->nalUnitLengthFieldLength:I

    .line 1250
    if-nez v7, :cond_e8

    .line 1251
    iget v8, v10, Lcom/google/android/exoplayer2/video/AvcConfig;->pixelWidthHeightRatio:F

    .line 1253
    :cond_e8
    iget-object v2, v10, Lcom/google/android/exoplayer2/video/AvcConfig;->codecs:Ljava/lang/String;

    .line 1254
    .end local v14    # "codecs":Ljava/lang/String;
    .local v2, "codecs":Ljava/lang/String;
    iget v14, v10, Lcom/google/android/exoplayer2/video/AvcConfig;->colorSpace:I

    .line 1255
    .end local v23    # "colorSpace":I
    .local v14, "colorSpace":I
    move-object/from16 v19, v2

    .end local v2    # "codecs":Ljava/lang/String;
    .local v19, "codecs":Ljava/lang/String;
    iget v2, v10, Lcom/google/android/exoplayer2/video/AvcConfig;->colorRange:I

    .line 1256
    .end local v24    # "colorRange":I
    .local v2, "colorRange":I
    iget v10, v10, Lcom/google/android/exoplayer2/video/AvcConfig;->colorTransfer:I

    .line 1257
    .end local v25    # "colorTransfer":I
    .local v10, "colorTransfer":I
    move/from16 v24, v2

    move/from16 v32, v5

    move/from16 v31, v6

    move/from16 v25, v10

    move/from16 v28, v12

    move/from16 v23, v14

    move-object/from16 v14, v19

    const/4 v2, 0x0

    move-object/from16 v10, p1

    goto/16 :goto_3f7

    .end local v2    # "colorRange":I
    .end local v13    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .end local v19    # "codecs":Ljava/lang/String;
    .end local p1    # "mimeType":Ljava/lang/String;
    .local v10, "mimeType":Ljava/lang/String;
    .local v14, "codecs":Ljava/lang/String;
    .restart local v20    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .restart local v23    # "colorSpace":I
    .restart local v24    # "colorRange":I
    .restart local v25    # "colorTransfer":I
    :cond_105
    const v2, 0x68766343

    if-ne v1, v2, :cond_147

    .line 1258
    if-nez v10, :cond_10e

    const/4 v13, 0x1

    goto :goto_10f

    :cond_10e
    const/4 v13, 0x0

    :goto_10f
    const/4 v2, 0x0

    invoke-static {v13, v2}, Lcom/google/android/exoplayer2/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    .line 1259
    const-string v2, "video/hevc"

    .line 1260
    .end local v10    # "mimeType":Ljava/lang/String;
    .local v2, "mimeType":Ljava/lang/String;
    add-int/lit8 v10, v11, 0x8

    invoke-virtual {v0, v10}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 1261
    invoke-static/range {p0 .. p0}, Lcom/google/android/exoplayer2/video/HevcConfig;->parse(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/video/HevcConfig;

    move-result-object v10

    .line 1262
    .local v10, "hevcConfig":Lcom/google/android/exoplayer2/video/HevcConfig;
    iget-object v13, v10, Lcom/google/android/exoplayer2/video/HevcConfig;->initializationData:Ljava/util/List;

    .line 1263
    .end local v20    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .restart local v13    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    move-object/from16 p1, v2

    .end local v2    # "mimeType":Ljava/lang/String;
    .restart local p1    # "mimeType":Ljava/lang/String;
    iget v2, v10, Lcom/google/android/exoplayer2/video/HevcConfig;->nalUnitLengthFieldLength:I

    iput v2, v4, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->nalUnitLengthFieldLength:I

    .line 1264
    if-nez v7, :cond_12a

    .line 1265
    iget v8, v10, Lcom/google/android/exoplayer2/video/HevcConfig;->pixelWidthHeightRatio:F

    .line 1267
    :cond_12a
    iget-object v2, v10, Lcom/google/android/exoplayer2/video/HevcConfig;->codecs:Ljava/lang/String;

    .line 1268
    .end local v14    # "codecs":Ljava/lang/String;
    .local v2, "codecs":Ljava/lang/String;
    iget v14, v10, Lcom/google/android/exoplayer2/video/HevcConfig;->colorSpace:I

    .line 1269
    .end local v23    # "colorSpace":I
    .local v14, "colorSpace":I
    move-object/from16 v19, v2

    .end local v2    # "codecs":Ljava/lang/String;
    .restart local v19    # "codecs":Ljava/lang/String;
    iget v2, v10, Lcom/google/android/exoplayer2/video/HevcConfig;->colorRange:I

    .line 1270
    .end local v24    # "colorRange":I
    .local v2, "colorRange":I
    iget v10, v10, Lcom/google/android/exoplayer2/video/HevcConfig;->colorTransfer:I

    .line 1271
    .end local v25    # "colorTransfer":I
    .local v10, "colorTransfer":I
    move/from16 v24, v2

    move/from16 v32, v5

    move/from16 v31, v6

    move/from16 v25, v10

    move/from16 v28, v12

    move/from16 v23, v14

    move-object/from16 v14, v19

    const/4 v2, 0x0

    move-object/from16 v10, p1

    goto/16 :goto_3f7

    .end local v2    # "colorRange":I
    .end local v13    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .end local v19    # "codecs":Ljava/lang/String;
    .end local p1    # "mimeType":Ljava/lang/String;
    .local v10, "mimeType":Ljava/lang/String;
    .local v14, "codecs":Ljava/lang/String;
    .restart local v20    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .restart local v23    # "colorSpace":I
    .restart local v24    # "colorRange":I
    .restart local v25    # "colorTransfer":I
    :cond_147
    const v2, 0x64766343

    if-eq v1, v2, :cond_3cb

    const v2, 0x64767643

    if-ne v1, v2, :cond_166

    move/from16 v32, v5

    move/from16 v31, v6

    move/from16 v27, v7

    move/from16 v30, v8

    move/from16 v28, v12

    move-object/from16 v37, v14

    move-object/from16 v29, v15

    move/from16 v4, v23

    move/from16 v6, v25

    const/4 v2, 0x0

    goto/16 :goto_3de

    .line 1277
    :cond_166
    const v2, 0x76706343

    if-ne v1, v2, :cond_1bd

    .line 1278
    if-nez v10, :cond_16f

    const/4 v2, 0x1

    goto :goto_170

    :cond_16f
    const/4 v2, 0x0

    :goto_170
    const/4 v13, 0x0

    invoke-static {v2, v13}, Lcom/google/android/exoplayer2/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    .line 1279
    const v2, 0x76703038

    if-ne v12, v2, :cond_17c

    const-string v2, "video/x-vnd.on2.vp8"

    goto :goto_17e

    :cond_17c
    const-string v2, "video/x-vnd.on2.vp9"

    .line 1280
    .end local v10    # "mimeType":Ljava/lang/String;
    .local v2, "mimeType":Ljava/lang/String;
    :goto_17e
    add-int/lit8 v10, v11, 0xc

    invoke-virtual {v0, v10}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 1282
    const/4 v10, 0x2

    invoke-virtual {v0, v10}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 1283
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v10

    const/4 v13, 0x1

    and-int/2addr v10, v13

    if-eqz v10, :cond_191

    const/4 v13, 0x1

    goto :goto_192

    :cond_191
    const/4 v13, 0x0

    :goto_192
    move v10, v13

    .line 1284
    .local v10, "fullRangeFlag":Z
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v13

    .line 1285
    .local v13, "colorPrimaries":I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v27

    .line 1286
    .local v27, "transferCharacteristics":I
    invoke-static {v13}, Lcom/google/android/exoplayer2/video/ColorInfo;->isoColorPrimariesToColorSpace(I)I

    move-result v23

    .line 1287
    if-eqz v10, :cond_1a4

    const/16 v26, 0x1

    goto :goto_1a6

    :cond_1a4
    const/16 v26, 0x2

    :goto_1a6
    move/from16 v19, v26

    .line 1288
    .end local v24    # "colorRange":I
    .local v19, "colorRange":I
    nop

    .line 1289
    invoke-static/range {v27 .. v27}, Lcom/google/android/exoplayer2/video/ColorInfo;->isoTransferCharacteristicsToColorTransfer(I)I

    move-result v10

    .line 1290
    .end local v13    # "colorPrimaries":I
    .end local v25    # "colorTransfer":I
    .end local v27    # "transferCharacteristics":I
    .local v10, "colorTransfer":I
    move/from16 v32, v5

    move/from16 v31, v6

    move/from16 v25, v10

    move/from16 v28, v12

    move/from16 v24, v19

    move-object/from16 v13, v20

    move-object v10, v2

    const/4 v2, 0x0

    goto/16 :goto_3f7

    .end local v2    # "mimeType":Ljava/lang/String;
    .end local v19    # "colorRange":I
    .local v10, "mimeType":Ljava/lang/String;
    .restart local v24    # "colorRange":I
    .restart local v25    # "colorTransfer":I
    :cond_1bd
    const v2, 0x61763143

    if-ne v1, v2, :cond_1d9

    .line 1291
    if-nez v10, :cond_1c6

    const/4 v13, 0x1

    goto :goto_1c7

    :cond_1c6
    const/4 v13, 0x0

    :goto_1c7
    const/4 v2, 0x0

    invoke-static {v13, v2}, Lcom/google/android/exoplayer2/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    .line 1292
    const-string v2, "video/av01"

    move-object v10, v2

    move/from16 v32, v5

    move/from16 v31, v6

    move/from16 v28, v12

    move-object/from16 v13, v20

    const/4 v2, 0x0

    .end local v10    # "mimeType":Ljava/lang/String;
    .restart local v2    # "mimeType":Ljava/lang/String;
    goto/16 :goto_3f7

    .line 1293
    .end local v2    # "mimeType":Ljava/lang/String;
    .restart local v10    # "mimeType":Ljava/lang/String;
    :cond_1d9
    const v2, 0x636c6c69

    if-ne v1, v2, :cond_209

    .line 1294
    if-nez v21, :cond_1e7

    .line 1295
    invoke-static {}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->allocateHdrStaticInfo()Ljava/nio/ByteBuffer;

    move-result-object v21

    move-object/from16 v2, v21

    goto :goto_1e9

    .line 1294
    :cond_1e7
    move-object/from16 v2, v21

    .line 1299
    .end local v21    # "hdrStaticInfo":Ljava/nio/ByteBuffer;
    .local v2, "hdrStaticInfo":Ljava/nio/ByteBuffer;
    :goto_1e9
    const/16 v13, 0x15

    invoke-virtual {v2, v13}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1300
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readShort()S

    move-result v13

    invoke-virtual {v2, v13}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1301
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readShort()S

    move-result v13

    invoke-virtual {v2, v13}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-object/from16 v21, v2

    move/from16 v32, v5

    move/from16 v31, v6

    move/from16 v28, v12

    move-object/from16 v13, v20

    const/4 v2, 0x0

    goto/16 :goto_3f7

    .line 1302
    .end local v2    # "hdrStaticInfo":Ljava/nio/ByteBuffer;
    .restart local v21    # "hdrStaticInfo":Ljava/nio/ByteBuffer;
    :cond_209
    const v2, 0x6d646376

    if-ne v1, v2, :cond_28e

    .line 1303
    if-nez v21, :cond_217

    .line 1304
    invoke-static {}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->allocateHdrStaticInfo()Ljava/nio/ByteBuffer;

    move-result-object v21

    move-object/from16 v2, v21

    goto :goto_219

    .line 1303
    :cond_217
    move-object/from16 v2, v21

    .line 1308
    .end local v21    # "hdrStaticInfo":Ljava/nio/ByteBuffer;
    .restart local v2    # "hdrStaticInfo":Ljava/nio/ByteBuffer;
    :goto_219
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readShort()S

    move-result v13

    .line 1309
    .local v13, "displayPrimariesGX":S
    move/from16 v27, v7

    .end local v7    # "pixelWidthHeightRatioFromPasp":Z
    .local v27, "pixelWidthHeightRatioFromPasp":Z
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readShort()S

    move-result v7

    .line 1310
    .local v7, "displayPrimariesGY":S
    move/from16 v28, v12

    .end local v12    # "atomType":I
    .local v28, "atomType":I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readShort()S

    move-result v12

    .line 1311
    .local v12, "displayPrimariesBX":S
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readShort()S

    move-result v4

    .line 1312
    .local v4, "displayPrimariesBY":S
    move-object/from16 v29, v15

    .end local v15    # "projectionData":[B
    .local v29, "projectionData":[B
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readShort()S

    move-result v15

    .line 1313
    .local v15, "displayPrimariesRX":S
    move/from16 v30, v8

    .end local v8    # "pixelWidthHeightRatio":F
    .local v30, "pixelWidthHeightRatio":F
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readShort()S

    move-result v8

    .line 1314
    .local v8, "displayPrimariesRY":S
    move/from16 v31, v6

    .end local v6    # "height":I
    .local v31, "height":I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readShort()S

    move-result v6

    .line 1315
    .local v6, "whitePointX":S
    move/from16 v32, v5

    .end local v5    # "width":I
    .local v32, "width":I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readShort()S

    move-result v5

    .line 1316
    .local v5, "whitePointY":S
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v33

    .line 1317
    .local v33, "maxDisplayMasteringLuminance":J
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v35

    .line 1319
    .local v35, "minDisplayMasteringLuminance":J
    move-object/from16 v37, v14

    const/4 v14, 0x1

    .end local v14    # "codecs":Ljava/lang/String;
    .local v37, "codecs":Ljava/lang/String;
    invoke-virtual {v2, v14}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1320
    invoke-virtual {v2, v15}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1321
    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1322
    invoke-virtual {v2, v13}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1323
    invoke-virtual {v2, v7}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1324
    invoke-virtual {v2, v12}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1325
    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1326
    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1327
    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1328
    const-wide/16 v38, 0x2710

    move/from16 p1, v4

    move/from16 p6, v5

    .end local v4    # "displayPrimariesBY":S
    .end local v5    # "whitePointY":S
    .local p1, "displayPrimariesBY":S
    .local p6, "whitePointY":S
    div-long v4, v33, v38

    long-to-int v5, v4

    int-to-short v4, v5

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1329
    div-long v4, v35, v38

    long-to-int v5, v4

    int-to-short v4, v5

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1330
    .end local v6    # "whitePointX":S
    .end local v7    # "displayPrimariesGY":S
    .end local v8    # "displayPrimariesRY":S
    .end local v12    # "displayPrimariesBX":S
    .end local v13    # "displayPrimariesGX":S
    .end local v15    # "displayPrimariesRX":S
    .end local v33    # "maxDisplayMasteringLuminance":J
    .end local v35    # "minDisplayMasteringLuminance":J
    .end local p1    # "displayPrimariesBY":S
    .end local p6    # "whitePointY":S
    move-object/from16 v21, v2

    move-object/from16 v13, v20

    move/from16 v7, v27

    move-object/from16 v15, v29

    move/from16 v8, v30

    move-object/from16 v14, v37

    const/4 v2, 0x0

    goto/16 :goto_3f7

    .end local v2    # "hdrStaticInfo":Ljava/nio/ByteBuffer;
    .end local v27    # "pixelWidthHeightRatioFromPasp":Z
    .end local v28    # "atomType":I
    .end local v29    # "projectionData":[B
    .end local v30    # "pixelWidthHeightRatio":F
    .end local v31    # "height":I
    .end local v32    # "width":I
    .end local v37    # "codecs":Ljava/lang/String;
    .local v5, "width":I
    .local v6, "height":I
    .local v7, "pixelWidthHeightRatioFromPasp":Z
    .local v8, "pixelWidthHeightRatio":F
    .local v12, "atomType":I
    .restart local v14    # "codecs":Ljava/lang/String;
    .local v15, "projectionData":[B
    .restart local v21    # "hdrStaticInfo":Ljava/nio/ByteBuffer;
    :cond_28e
    move/from16 v32, v5

    move/from16 v31, v6

    move/from16 v27, v7

    move/from16 v30, v8

    move/from16 v28, v12

    move-object/from16 v37, v14

    move-object/from16 v29, v15

    const/4 v14, 0x1

    .end local v5    # "width":I
    .end local v6    # "height":I
    .end local v7    # "pixelWidthHeightRatioFromPasp":Z
    .end local v8    # "pixelWidthHeightRatio":F
    .end local v12    # "atomType":I
    .end local v14    # "codecs":Ljava/lang/String;
    .end local v15    # "projectionData":[B
    .restart local v27    # "pixelWidthHeightRatioFromPasp":Z
    .restart local v28    # "atomType":I
    .restart local v29    # "projectionData":[B
    .restart local v30    # "pixelWidthHeightRatio":F
    .restart local v31    # "height":I
    .restart local v32    # "width":I
    .restart local v37    # "codecs":Ljava/lang/String;
    const v2, 0x64323633

    if-ne v1, v2, :cond_2bb

    .line 1331
    if-nez v10, :cond_2a6

    const/4 v13, 0x1

    goto :goto_2a7

    :cond_2a6
    const/4 v13, 0x0

    :goto_2a7
    const/4 v2, 0x0

    invoke-static {v13, v2}, Lcom/google/android/exoplayer2/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    .line 1332
    const-string v2, "video/3gpp"

    move-object v10, v2

    move-object/from16 v13, v20

    move/from16 v7, v27

    move-object/from16 v15, v29

    move/from16 v8, v30

    move-object/from16 v14, v37

    const/4 v2, 0x0

    .end local v10    # "mimeType":Ljava/lang/String;
    .local v2, "mimeType":Ljava/lang/String;
    goto/16 :goto_3f7

    .line 1333
    .end local v2    # "mimeType":Ljava/lang/String;
    .restart local v10    # "mimeType":Ljava/lang/String;
    :cond_2bb
    const v2, 0x65736473

    if-ne v1, v2, :cond_2eb

    .line 1334
    if-nez v10, :cond_2c4

    const/4 v13, 0x1

    goto :goto_2c5

    :cond_2c4
    const/4 v13, 0x0

    :goto_2c5
    const/4 v2, 0x0

    invoke-static {v13, v2}, Lcom/google/android/exoplayer2/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    .line 1335
    invoke-static {v0, v11}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseEsdsFromParent(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$EsdsData;

    move-result-object v4

    .line 1336
    .end local v17    # "esdsData":Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$EsdsData;
    .local v4, "esdsData":Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$EsdsData;
    # getter for: Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$EsdsData;->mimeType:Ljava/lang/String;
    invoke-static {v4}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$EsdsData;->access$300(Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$EsdsData;)Ljava/lang/String;

    move-result-object v5

    .line 1337
    .end local v10    # "mimeType":Ljava/lang/String;
    .local v5, "mimeType":Ljava/lang/String;
    # getter for: Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$EsdsData;->initializationData:[B
    invoke-static {v4}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$EsdsData;->access$400(Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$EsdsData;)[B

    move-result-object v6

    .line 1338
    .local v6, "initializationDataBytes":[B
    if-eqz v6, :cond_2dc

    .line 1339
    invoke-static {v6}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v13

    .end local v20    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .local v13, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    goto :goto_2de

    .line 1338
    .end local v13    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .restart local v20    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    :cond_2dc
    move-object/from16 v13, v20

    .line 1341
    .end local v6    # "initializationDataBytes":[B
    .end local v20    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .restart local v13    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    :goto_2de
    move-object/from16 v17, v4

    move-object v10, v5

    move/from16 v7, v27

    move-object/from16 v15, v29

    move/from16 v8, v30

    move-object/from16 v14, v37

    goto/16 :goto_3f7

    .end local v4    # "esdsData":Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$EsdsData;
    .end local v5    # "mimeType":Ljava/lang/String;
    .end local v13    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .restart local v10    # "mimeType":Ljava/lang/String;
    .restart local v17    # "esdsData":Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$EsdsData;
    .restart local v20    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    :cond_2eb
    const/4 v2, 0x0

    const v4, 0x70617370

    if-ne v1, v4, :cond_300

    .line 1342
    invoke-static {v0, v11}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parsePaspFromParent(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)F

    move-result v4

    .line 1343
    .end local v30    # "pixelWidthHeightRatio":F
    .local v4, "pixelWidthHeightRatio":F
    const/4 v5, 0x1

    move v8, v4

    move v7, v5

    move-object/from16 v13, v20

    move-object/from16 v15, v29

    move-object/from16 v14, v37

    .end local v27    # "pixelWidthHeightRatioFromPasp":Z
    .local v5, "pixelWidthHeightRatioFromPasp":Z
    goto/16 :goto_3f7

    .line 1344
    .end local v4    # "pixelWidthHeightRatio":F
    .end local v5    # "pixelWidthHeightRatioFromPasp":Z
    .restart local v27    # "pixelWidthHeightRatioFromPasp":Z
    .restart local v30    # "pixelWidthHeightRatio":F
    :cond_300
    const v4, 0x73763364

    if-ne v1, v4, :cond_314

    .line 1345
    invoke-static {v0, v11, v3}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseProjFromParent(Lcom/google/android/exoplayer2/util/ParsableByteArray;II)[B

    move-result-object v4

    move-object v15, v4

    move-object/from16 v13, v20

    move/from16 v7, v27

    move/from16 v8, v30

    move-object/from16 v14, v37

    .end local v29    # "projectionData":[B
    .local v4, "projectionData":[B
    goto/16 :goto_3f7

    .line 1346
    .end local v4    # "projectionData":[B
    .restart local v29    # "projectionData":[B
    :cond_314
    const v4, 0x73743364

    if-ne v1, v4, :cond_343

    .line 1347
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v4

    .line 1348
    .local v4, "version":I
    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 1349
    if-nez v4, :cond_337

    .line 1350
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v5

    .line 1351
    .local v5, "layout":I
    packed-switch v5, :pswitch_data_4ac

    goto :goto_337

    .line 1362
    :pswitch_32b
    const/16 v22, 0x3

    .line 1363
    goto :goto_337

    .line 1359
    :pswitch_32e
    const/16 v22, 0x2

    .line 1360
    goto :goto_337

    .line 1356
    :pswitch_331
    const/16 v22, 0x1

    .line 1357
    goto :goto_337

    .line 1353
    :pswitch_334
    const/16 v22, 0x0

    .line 1354
    nop

    .line 1368
    .end local v4    # "version":I
    .end local v5    # "layout":I
    :cond_337
    :goto_337
    move-object/from16 v13, v20

    move/from16 v7, v27

    move-object/from16 v15, v29

    move/from16 v8, v30

    move-object/from16 v14, v37

    goto/16 :goto_3f7

    :cond_343
    const v4, 0x636f6c72

    if-ne v1, v4, :cond_3b8

    .line 1375
    move/from16 v4, v23

    const/4 v5, -0x1

    .end local v23    # "colorSpace":I
    .local v4, "colorSpace":I
    if-ne v4, v5, :cond_3b5

    move/from16 v6, v25

    .end local v25    # "colorTransfer":I
    .local v6, "colorTransfer":I
    if-ne v6, v5, :cond_3bc

    .line 1376
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v5

    .line 1377
    .local v5, "colorType":I
    const v7, 0x6e636c78

    if-eq v5, v7, :cond_37d

    const v7, 0x6e636c63

    if-ne v5, v7, :cond_360

    goto :goto_37d

    .line 1395
    :cond_360
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unsupported color type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v5}, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->getAtomTypeString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "AtomParsers"

    invoke-static {v8, v7}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3bc

    .line 1380
    :cond_37d
    :goto_37d
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v7

    .line 1381
    .local v7, "colorPrimaries":I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v8

    .line 1382
    .local v8, "transferCharacteristics":I
    const/4 v12, 0x2

    invoke-virtual {v0, v12}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 1388
    const/16 v13, 0x13

    if-ne v3, v13, :cond_397

    .line 1389
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v13

    and-int/lit16 v13, v13, 0x80

    if-eqz v13, :cond_397

    const/4 v13, 0x1

    goto :goto_398

    :cond_397
    const/4 v13, 0x0

    .line 1390
    .local v13, "fullRangeFlag":Z
    :goto_398
    invoke-static {v7}, Lcom/google/android/exoplayer2/video/ColorInfo;->isoColorPrimariesToColorSpace(I)I

    move-result v4

    .line 1391
    if-eqz v13, :cond_39f

    const/4 v12, 0x1

    .line 1392
    .end local v24    # "colorRange":I
    .local v12, "colorRange":I
    :cond_39f
    nop

    .line 1393
    invoke-static {v8}, Lcom/google/android/exoplayer2/video/ColorInfo;->isoTransferCharacteristicsToColorTransfer(I)I

    move-result v6

    .line 1394
    .end local v7    # "colorPrimaries":I
    .end local v8    # "transferCharacteristics":I
    .end local v13    # "fullRangeFlag":Z
    move/from16 v23, v4

    move/from16 v25, v6

    move/from16 v24, v12

    move-object/from16 v13, v20

    move/from16 v7, v27

    move-object/from16 v15, v29

    move/from16 v8, v30

    move-object/from16 v14, v37

    goto :goto_3f7

    .line 1375
    .end local v5    # "colorType":I
    .end local v6    # "colorTransfer":I
    .end local v12    # "colorRange":I
    .restart local v24    # "colorRange":I
    .restart local v25    # "colorTransfer":I
    :cond_3b5
    move/from16 v6, v25

    .end local v25    # "colorTransfer":I
    .restart local v6    # "colorTransfer":I
    goto :goto_3bc

    .line 1368
    .end local v4    # "colorSpace":I
    .end local v6    # "colorTransfer":I
    .restart local v23    # "colorSpace":I
    .restart local v25    # "colorTransfer":I
    :cond_3b8
    move/from16 v4, v23

    move/from16 v6, v25

    .line 1399
    .end local v23    # "colorSpace":I
    .end local v25    # "colorTransfer":I
    .restart local v4    # "colorSpace":I
    .restart local v6    # "colorTransfer":I
    :cond_3bc
    :goto_3bc
    move/from16 v23, v4

    move/from16 v25, v6

    move-object/from16 v13, v20

    move/from16 v7, v27

    move-object/from16 v15, v29

    move/from16 v8, v30

    move-object/from16 v14, v37

    goto :goto_3f7

    .line 1271
    .end local v4    # "colorSpace":I
    .end local v27    # "pixelWidthHeightRatioFromPasp":Z
    .end local v28    # "atomType":I
    .end local v29    # "projectionData":[B
    .end local v30    # "pixelWidthHeightRatio":F
    .end local v31    # "height":I
    .end local v32    # "width":I
    .end local v37    # "codecs":Ljava/lang/String;
    .local v5, "width":I
    .local v6, "height":I
    .local v7, "pixelWidthHeightRatioFromPasp":Z
    .local v8, "pixelWidthHeightRatio":F
    .local v12, "atomType":I
    .restart local v14    # "codecs":Ljava/lang/String;
    .restart local v15    # "projectionData":[B
    .restart local v23    # "colorSpace":I
    .restart local v25    # "colorTransfer":I
    :cond_3cb
    move/from16 v32, v5

    move/from16 v31, v6

    move/from16 v27, v7

    move/from16 v30, v8

    move/from16 v28, v12

    move-object/from16 v37, v14

    move-object/from16 v29, v15

    move/from16 v4, v23

    move/from16 v6, v25

    const/4 v2, 0x0

    .line 1272
    .end local v5    # "width":I
    .end local v7    # "pixelWidthHeightRatioFromPasp":Z
    .end local v8    # "pixelWidthHeightRatio":F
    .end local v12    # "atomType":I
    .end local v14    # "codecs":Ljava/lang/String;
    .end local v15    # "projectionData":[B
    .end local v23    # "colorSpace":I
    .end local v25    # "colorTransfer":I
    .restart local v4    # "colorSpace":I
    .local v6, "colorTransfer":I
    .restart local v27    # "pixelWidthHeightRatioFromPasp":Z
    .restart local v28    # "atomType":I
    .restart local v29    # "projectionData":[B
    .restart local v30    # "pixelWidthHeightRatio":F
    .restart local v31    # "height":I
    .restart local v32    # "width":I
    .restart local v37    # "codecs":Ljava/lang/String;
    :goto_3de
    invoke-static/range {p0 .. p0}, Lcom/google/android/exoplayer2/video/DolbyVisionConfig;->parse(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/video/DolbyVisionConfig;

    move-result-object v5

    .line 1273
    .local v5, "dolbyVisionConfig":Lcom/google/android/exoplayer2/video/DolbyVisionConfig;
    if-eqz v5, :cond_3e9

    .line 1274
    iget-object v14, v5, Lcom/google/android/exoplayer2/video/DolbyVisionConfig;->codecs:Ljava/lang/String;

    .line 1275
    .end local v37    # "codecs":Ljava/lang/String;
    .restart local v14    # "codecs":Ljava/lang/String;
    const-string v10, "video/dolby-vision"

    goto :goto_3eb

    .line 1273
    .end local v14    # "codecs":Ljava/lang/String;
    .restart local v37    # "codecs":Ljava/lang/String;
    :cond_3e9
    move-object/from16 v14, v37

    .line 1277
    .end local v5    # "dolbyVisionConfig":Lcom/google/android/exoplayer2/video/DolbyVisionConfig;
    .end local v37    # "codecs":Ljava/lang/String;
    .restart local v14    # "codecs":Ljava/lang/String;
    :goto_3eb
    move/from16 v23, v4

    move/from16 v25, v6

    move-object/from16 v13, v20

    move/from16 v7, v27

    move-object/from16 v15, v29

    move/from16 v8, v30

    .line 1399
    .end local v4    # "colorSpace":I
    .end local v6    # "colorTransfer":I
    .end local v20    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .end local v27    # "pixelWidthHeightRatioFromPasp":Z
    .end local v29    # "projectionData":[B
    .end local v30    # "pixelWidthHeightRatio":F
    .restart local v7    # "pixelWidthHeightRatioFromPasp":Z
    .restart local v8    # "pixelWidthHeightRatio":F
    .local v13, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .restart local v15    # "projectionData":[B
    .restart local v23    # "colorSpace":I
    .restart local v25    # "colorTransfer":I
    :goto_3f7
    add-int/2addr v9, v3

    .line 1400
    .end local v1    # "childAtomType":I
    .end local v3    # "childAtomSize":I
    .end local v11    # "childStartPosition":I
    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v4, p7

    move-object/from16 v3, v18

    move/from16 v12, v28

    move/from16 v6, v31

    move/from16 v5, v32

    goto/16 :goto_81

    .line 1233
    .end local v28    # "atomType":I
    .end local v31    # "height":I
    .end local v32    # "width":I
    .local v5, "width":I
    .local v6, "height":I
    .restart local v12    # "atomType":I
    :cond_408
    move/from16 v32, v5

    move/from16 v31, v6

    move/from16 v27, v7

    move/from16 v30, v8

    move/from16 v28, v12

    move-object/from16 v20, v13

    move-object/from16 v37, v14

    move-object/from16 v29, v15

    move/from16 v4, v23

    move/from16 v6, v25

    const/4 v2, 0x0

    .line 1403
    .end local v5    # "width":I
    .end local v7    # "pixelWidthHeightRatioFromPasp":Z
    .end local v8    # "pixelWidthHeightRatio":F
    .end local v12    # "atomType":I
    .end local v13    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .end local v14    # "codecs":Ljava/lang/String;
    .end local v15    # "projectionData":[B
    .end local v23    # "colorSpace":I
    .end local v25    # "colorTransfer":I
    .restart local v4    # "colorSpace":I
    .local v6, "colorTransfer":I
    .restart local v20    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .restart local v27    # "pixelWidthHeightRatioFromPasp":Z
    .restart local v28    # "atomType":I
    .restart local v29    # "projectionData":[B
    .restart local v30    # "pixelWidthHeightRatio":F
    .restart local v31    # "height":I
    .restart local v32    # "width":I
    .restart local v37    # "codecs":Ljava/lang/String;
    :goto_41d
    if-nez v10, :cond_420

    .line 1404
    return-void

    .line 1407
    :cond_420
    new-instance v1, Lcom/google/android/exoplayer2/Format$Builder;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/Format$Builder;-><init>()V

    .line 1409
    move/from16 v3, p4

    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/Format$Builder;->setId(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v1

    .line 1410
    invoke-virtual {v1, v10}, Lcom/google/android/exoplayer2/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v1

    .line 1411
    move-object/from16 v14, v37

    .end local v37    # "codecs":Ljava/lang/String;
    .restart local v14    # "codecs":Ljava/lang/String;
    invoke-virtual {v1, v14}, Lcom/google/android/exoplayer2/Format$Builder;->setCodecs(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v1

    .line 1412
    move/from16 v5, v32

    .end local v32    # "width":I
    .restart local v5    # "width":I
    invoke-virtual {v1, v5}, Lcom/google/android/exoplayer2/Format$Builder;->setWidth(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v1

    .line 1413
    move/from16 v7, v31

    .end local v31    # "height":I
    .local v7, "height":I
    invoke-virtual {v1, v7}, Lcom/google/android/exoplayer2/Format$Builder;->setHeight(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v1

    .line 1414
    move/from16 v8, v30

    .end local v30    # "pixelWidthHeightRatio":F
    .restart local v8    # "pixelWidthHeightRatio":F
    invoke-virtual {v1, v8}, Lcom/google/android/exoplayer2/Format$Builder;->setPixelWidthHeightRatio(F)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v1

    .line 1415
    move/from16 v11, p5

    invoke-virtual {v1, v11}, Lcom/google/android/exoplayer2/Format$Builder;->setRotationDegrees(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v1

    .line 1416
    move-object/from16 v15, v29

    .end local v29    # "projectionData":[B
    .restart local v15    # "projectionData":[B
    invoke-virtual {v1, v15}, Lcom/google/android/exoplayer2/Format$Builder;->setProjectionData([B)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v1

    .line 1417
    move/from16 v12, v22

    .end local v22    # "stereoMode":I
    .local v12, "stereoMode":I
    invoke-virtual {v1, v12}, Lcom/google/android/exoplayer2/Format$Builder;->setStereoMode(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v1

    .line 1418
    move-object/from16 v13, v20

    .end local v20    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .restart local v13    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    invoke-virtual {v1, v13}, Lcom/google/android/exoplayer2/Format$Builder;->setInitializationData(Ljava/util/List;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v1

    .line 1419
    move-object/from16 v2, v18

    .end local v18    # "drmInitData":Lcom/google/android/exoplayer2/drm/DrmInitData;
    .local v2, "drmInitData":Lcom/google/android/exoplayer2/drm/DrmInitData;
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/Format$Builder;->setDrmInitData(Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v1

    .line 1420
    .local v1, "formatBuilder":Lcom/google/android/exoplayer2/Format$Builder;
    const/4 v0, -0x1

    if-ne v4, v0, :cond_473

    move-object/from16 v18, v2

    move/from16 v2, v24

    .end local v24    # "colorRange":I
    .local v2, "colorRange":I
    .restart local v18    # "drmInitData":Lcom/google/android/exoplayer2/drm/DrmInitData;
    if-ne v2, v0, :cond_477

    if-ne v6, v0, :cond_477

    if-eqz v21, :cond_489

    goto :goto_477

    .end local v18    # "drmInitData":Lcom/google/android/exoplayer2/drm/DrmInitData;
    .local v2, "drmInitData":Lcom/google/android/exoplayer2/drm/DrmInitData;
    .restart local v24    # "colorRange":I
    :cond_473
    move-object/from16 v18, v2

    move/from16 v2, v24

    .line 1426
    .end local v24    # "colorRange":I
    .local v2, "colorRange":I
    .restart local v18    # "drmInitData":Lcom/google/android/exoplayer2/drm/DrmInitData;
    :cond_477
    :goto_477
    new-instance v0, Lcom/google/android/exoplayer2/video/ColorInfo;

    .line 1431
    if-eqz v21, :cond_482

    invoke-virtual/range {v21 .. v21}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v16

    move-object/from16 v3, v16

    goto :goto_483

    :cond_482
    const/4 v3, 0x0

    :goto_483
    invoke-direct {v0, v4, v2, v6, v3}, Lcom/google/android/exoplayer2/video/ColorInfo;-><init>(III[B)V

    .line 1426
    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/Format$Builder;->setColorInfo(Lcom/google/android/exoplayer2/video/ColorInfo;)Lcom/google/android/exoplayer2/Format$Builder;

    .line 1434
    :cond_489
    if-eqz v17, :cond_4a3

    .line 1435
    nop

    .line 1436
    # getter for: Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$EsdsData;->bitrate:J
    invoke-static/range {v17 .. v17}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$EsdsData;->access$600(Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$EsdsData;)J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Lcom/google/common/primitives/Ints;->saturatedCast(J)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/Format$Builder;->setAverageBitrate(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    .line 1437
    # getter for: Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$EsdsData;->peakBitrate:J
    invoke-static/range {v17 .. v17}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$EsdsData;->access$500(Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$EsdsData;)J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Lcom/google/common/primitives/Ints;->saturatedCast(J)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/Format$Builder;->setPeakBitrate(I)Lcom/google/android/exoplayer2/Format$Builder;

    .line 1440
    :cond_4a3
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    move-object/from16 v3, p7

    iput-object v0, v3, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->format:Lcom/google/android/exoplayer2/Format;

    .line 1441
    return-void

    :pswitch_data_4ac
    .packed-switch 0x0
        :pswitch_334
        :pswitch_331
        :pswitch_32e
        :pswitch_32b
    .end packed-switch
.end method

.method private static parseXyz(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/Metadata;
    .registers 12
    .param p0, "xyzBox"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 856
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readShort()S

    move-result v0

    .line 857
    .local v0, "length":I
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 858
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    move-result-object v1

    .line 860
    .local v1, "location":Ljava/lang/String;
    const/16 v2, 0x2b

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 861
    .local v2, "plusSignIndex":I
    const/16 v3, 0x2d

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 862
    .local v3, "minusSignIndex":I
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 864
    .local v4, "latitudeEndIndex":I
    const/4 v5, 0x0

    :try_start_1d
    invoke-virtual {v1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    .line 865
    .local v6, "latitude":F
    nop

    .line 866
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    invoke-virtual {v1, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    .line 867
    .local v7, "longitude":F
    new-instance v9, Lcom/google/android/exoplayer2/metadata/Metadata;

    new-array v8, v8, [Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    new-instance v10, Lcom/google/android/exoplayer2/container/Mp4LocationData;

    invoke-direct {v10, v6, v7}, Lcom/google/android/exoplayer2/container/Mp4LocationData;-><init>(FF)V

    aput-object v10, v8, v5

    invoke-direct {v9, v8}, Lcom/google/android/exoplayer2/metadata/Metadata;-><init>([Lcom/google/android/exoplayer2/metadata/Metadata$Entry;)V
    :try_end_42
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1d .. :try_end_42} :catch_45
    .catch Ljava/lang/NumberFormatException; {:try_start_1d .. :try_end_42} :catch_43

    return-object v9

    .line 868
    .end local v6    # "latitude":F
    .end local v7    # "longitude":F
    :catch_43
    move-exception v5

    goto :goto_46

    :catch_45
    move-exception v5

    .line 870
    .local v5, "exception":Ljava/lang/RuntimeException;
    :goto_46
    const/4 v6, 0x0

    return-object v6
.end method
