.class public final Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;
.super Lcom/google/android/exoplayer2/metadata/SimpleMetadataDecoder;
.source "Id3Decoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$FramePredicate;,
        Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$Id3Header;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final FRAME_FLAG_V3_HAS_GROUP_IDENTIFIER:I = 0x20

.field private static final FRAME_FLAG_V3_IS_COMPRESSED:I = 0x80

.field private static final FRAME_FLAG_V3_IS_ENCRYPTED:I = 0x40

.field private static final FRAME_FLAG_V4_HAS_DATA_LENGTH:I = 0x1

.field private static final FRAME_FLAG_V4_HAS_GROUP_IDENTIFIER:I = 0x40

.field private static final FRAME_FLAG_V4_IS_COMPRESSED:I = 0x8

.field private static final FRAME_FLAG_V4_IS_ENCRYPTED:I = 0x4

.field private static final FRAME_FLAG_V4_IS_UNSYNCHRONIZED:I = 0x2

.field public static final ID3_HEADER_LENGTH:I = 0xa

.field public static final ID3_TAG:I = 0x494433

.field private static final ID3_TEXT_ENCODING_ISO_8859_1:I = 0x0

.field private static final ID3_TEXT_ENCODING_UTF_16:I = 0x1

.field private static final ID3_TEXT_ENCODING_UTF_16BE:I = 0x2

.field private static final ID3_TEXT_ENCODING_UTF_8:I = 0x3

.field public static final NO_FRAMES_PREDICATE:Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$FramePredicate;

.field private static final TAG:Ljava/lang/String; = "Id3Decoder"


# instance fields
.field private final framePredicate:Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$FramePredicate;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 65
    new-instance v0, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->NO_FRAMES_PREDICATE:Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$FramePredicate;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 92
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;-><init>(Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$FramePredicate;)V

    .line 93
    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$FramePredicate;)V
    .registers 2
    .param p1, "framePredicate"    # Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$FramePredicate;

    .line 98
    invoke-direct {p0}, Lcom/google/android/exoplayer2/metadata/SimpleMetadataDecoder;-><init>()V

    .line 99
    iput-object p1, p0, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->framePredicate:Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$FramePredicate;

    .line 100
    return-void
.end method

.method private static copyOfRangeIfValid([BII)[B
    .registers 4
    .param p0, "data"    # [B
    .param p1, "from"    # I
    .param p2, "to"    # I

    .line 861
    if-gt p2, p1, :cond_5

    .line 863
    sget-object v0, Lcom/google/android/exoplayer2/util/Util;->EMPTY_BYTE_ARRAY:[B

    return-object v0

    .line 865
    :cond_5
    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    return-object v0
.end method

.method private static decodeApicFrame(Lcom/google/android/exoplayer2/util/ParsableByteArray;II)Lcom/google/android/exoplayer2/metadata/id3/ApicFrame;
    .registers 15
    .param p0, "id3Data"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p1, "frameSize"    # I
    .param p2, "majorVersion"    # I

    .line 584
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 585
    .local v0, "encoding":I
    invoke-static {v0}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->getCharset(I)Ljava/nio/charset/Charset;

    move-result-object v1

    .line 587
    .local v1, "charset":Ljava/nio/charset/Charset;
    add-int/lit8 v2, p1, -0x1

    new-array v2, v2, [B

    .line 588
    .local v2, "data":[B
    add-int/lit8 v3, p1, -0x1

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v4, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 592
    const/4 v3, 0x2

    const-string v5, "image/"

    if-ne p2, v3, :cond_40

    .line 593
    const/4 v3, 0x2

    .line 594
    .local v3, "mimeTypeEndIndex":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/lang/String;

    const/4 v7, 0x3

    sget-object v8, Lcom/google/common/base/Charsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v6, v2, v4, v7, v8}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-static {v6}, Lcom/google/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 595
    .local v4, "mimeType":Ljava/lang/String;
    const-string v5, "image/jpg"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_69

    .line 596
    const-string v4, "image/jpeg"

    goto :goto_69

    .line 599
    .end local v3    # "mimeTypeEndIndex":I
    .end local v4    # "mimeType":Ljava/lang/String;
    :cond_40
    invoke-static {v2, v4}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->indexOfZeroByte([BI)I

    move-result v3

    .line 600
    .restart local v3    # "mimeTypeEndIndex":I
    new-instance v6, Ljava/lang/String;

    sget-object v7, Lcom/google/common/base/Charsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v6, v2, v4, v3, v7}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-static {v6}, Lcom/google/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 601
    .restart local v4    # "mimeType":Ljava/lang/String;
    const/16 v6, 0x2f

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_69

    .line 602
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 606
    :cond_69
    :goto_69
    add-int/lit8 v5, v3, 0x1

    aget-byte v5, v2, v5

    and-int/lit16 v5, v5, 0xff

    .line 608
    .local v5, "pictureType":I
    add-int/lit8 v6, v3, 0x2

    .line 609
    .local v6, "descriptionStartIndex":I
    invoke-static {v2, v6, v0}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->indexOfTerminator([BII)I

    move-result v7

    .line 610
    .local v7, "descriptionEndIndex":I
    new-instance v8, Ljava/lang/String;

    sub-int v9, v7, v6

    invoke-direct {v8, v2, v6, v9, v1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 614
    .local v8, "description":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->delimiterLength(I)I

    move-result v9

    add-int/2addr v9, v7

    .line 615
    .local v9, "pictureDataStartIndex":I
    array-length v10, v2

    invoke-static {v2, v9, v10}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->copyOfRangeIfValid([BII)[B

    move-result-object v10

    .line 617
    .local v10, "pictureData":[B
    new-instance v11, Lcom/google/android/exoplayer2/metadata/id3/ApicFrame;

    invoke-direct {v11, v4, v8, v5, v10}, Lcom/google/android/exoplayer2/metadata/id3/ApicFrame;-><init>(Ljava/lang/String;Ljava/lang/String;I[B)V

    return-object v11
.end method

.method private static decodeBinaryFrame(Lcom/google/android/exoplayer2/util/ParsableByteArray;ILjava/lang/String;)Lcom/google/android/exoplayer2/metadata/id3/BinaryFrame;
    .registers 5
    .param p0, "id3Data"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p1, "frameSize"    # I
    .param p2, "id"    # Ljava/lang/String;

    .line 769
    new-array v0, p1, [B

    .line 770
    .local v0, "frame":[B
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 772
    new-instance v1, Lcom/google/android/exoplayer2/metadata/id3/BinaryFrame;

    invoke-direct {v1, p2, v0}, Lcom/google/android/exoplayer2/metadata/id3/BinaryFrame;-><init>(Ljava/lang/String;[B)V

    return-object v1
.end method

.method private static decodeChapterFrame(Lcom/google/android/exoplayer2/util/ParsableByteArray;IIZILcom/google/android/exoplayer2/metadata/id3/Id3Decoder$FramePredicate;)Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame;
    .registers 28
    .param p0, "id3Data"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p1, "frameSize"    # I
    .param p2, "majorVersion"    # I
    .param p3, "unsignedIntFrameSizeHack"    # Z
    .param p4, "frameHeaderSize"    # I
    .param p5, "framePredicate"    # Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$FramePredicate;

    .line 654
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v1

    .line 655
    .local v1, "framePosition":I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v2

    invoke-static {v2, v1}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->indexOfZeroByte([BI)I

    move-result v2

    .line 656
    .local v2, "chapterIdEndIndex":I
    new-instance v4, Ljava/lang/String;

    .line 658
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v3

    sub-int v5, v2, v1

    sget-object v6, Lcom/google/common/base/Charsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v4, v3, v1, v5, v6}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 662
    .local v4, "chapterId":Ljava/lang/String;
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 664
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v12

    .line 665
    .local v12, "startTime":I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v13

    .line 666
    .local v13, "endTime":I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v5

    .line 667
    .local v5, "startOffset":J
    const-wide v7, 0xffffffffL

    cmp-long v3, v5, v7

    if-nez v3, :cond_39

    .line 668
    const-wide/16 v5, -0x1

    move-wide v14, v5

    goto :goto_3a

    .line 667
    :cond_39
    move-wide v14, v5

    .line 670
    .end local v5    # "startOffset":J
    .local v14, "startOffset":J
    :goto_3a
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v5

    .line 671
    .local v5, "endOffset":J
    cmp-long v3, v5, v7

    if-nez v3, :cond_47

    .line 672
    const-wide/16 v5, -0x1

    move-wide/from16 v16, v5

    goto :goto_49

    .line 671
    :cond_47
    move-wide/from16 v16, v5

    .line 675
    .end local v5    # "endOffset":J
    .local v16, "endOffset":J
    :goto_49
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v3

    .line 676
    .local v11, "subFrames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;>;"
    add-int v9, v1, p1

    .line 677
    .local v9, "limit":I
    :goto_51
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v3

    if-ge v3, v9, :cond_6a

    .line 678
    nop

    .line 679
    move/from16 v10, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move-object/from16 v6, p5

    invoke-static {v10, v0, v7, v8, v6}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->decodeFrame(ILcom/google/android/exoplayer2/util/ParsableByteArray;ZILcom/google/android/exoplayer2/metadata/id3/Id3Decoder$FramePredicate;)Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;

    move-result-object v3

    .line 681
    .local v3, "frame":Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;
    if-eqz v3, :cond_69

    .line 682
    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 684
    .end local v3    # "frame":Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;
    :cond_69
    goto :goto_51

    .line 686
    :cond_6a
    move/from16 v10, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move-object/from16 v6, p5

    const/4 v3, 0x0

    new-array v3, v3, [Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v18, v3

    check-cast v18, [Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;

    .line 687
    .local v18, "subFrameArray":[Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;
    new-instance v19, Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame;

    move-object/from16 v3, v19

    move v5, v12

    move v6, v13

    move-wide v7, v14

    move/from16 v20, v9

    .end local v9    # "limit":I
    .local v20, "limit":I
    move-wide/from16 v9, v16

    move-object/from16 v21, v11

    .end local v11    # "subFrames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;>;"
    .local v21, "subFrames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;>;"
    move-object/from16 v11, v18

    invoke-direct/range {v3 .. v11}, Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame;-><init>(Ljava/lang/String;IIJJ[Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;)V

    return-object v19
.end method

.method private static decodeChapterTOCFrame(Lcom/google/android/exoplayer2/util/ParsableByteArray;IIZILcom/google/android/exoplayer2/metadata/id3/Id3Decoder$FramePredicate;)Lcom/google/android/exoplayer2/metadata/id3/ChapterTocFrame;
    .registers 24
    .param p0, "id3Data"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p1, "frameSize"    # I
    .param p2, "majorVersion"    # I
    .param p3, "unsignedIntFrameSizeHack"    # Z
    .param p4, "frameHeaderSize"    # I
    .param p5, "framePredicate"    # Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$FramePredicate;

    .line 697
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v1

    .line 698
    .local v1, "framePosition":I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v2

    invoke-static {v2, v1}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->indexOfZeroByte([BI)I

    move-result v2

    .line 699
    .local v2, "elementIdEndIndex":I
    new-instance v4, Ljava/lang/String;

    .line 701
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v3

    sub-int v5, v2, v1

    sget-object v6, Lcom/google/common/base/Charsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v4, v3, v1, v5, v6}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 705
    .local v4, "elementId":Ljava/lang/String;
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 707
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v9

    .line 708
    .local v9, "ctocFlags":I
    and-int/lit8 v3, v9, 0x2

    const/4 v6, 0x1

    if-eqz v3, :cond_2b

    const/4 v5, 0x1

    goto :goto_2c

    :cond_2b
    const/4 v5, 0x0

    .line 709
    .local v5, "isRoot":Z
    :goto_2c
    and-int/lit8 v3, v9, 0x1

    if-eqz v3, :cond_31

    goto :goto_32

    :cond_31
    const/4 v6, 0x0

    .line 711
    .local v6, "isOrdered":Z
    :goto_32
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v10

    .line 712
    .local v10, "childCount":I
    new-array v11, v10, [Ljava/lang/String;

    .line 713
    .local v11, "children":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_39
    if-ge v3, v10, :cond_5e

    .line 714
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v8

    .line 715
    .local v8, "startIndex":I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v12

    invoke-static {v12, v8}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->indexOfZeroByte([BI)I

    move-result v12

    .line 716
    .local v12, "endIndex":I
    new-instance v13, Ljava/lang/String;

    .line 717
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v14

    sub-int v15, v12, v8

    sget-object v7, Lcom/google/common/base/Charsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v13, v14, v8, v15, v7}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    aput-object v13, v11, v3

    .line 718
    add-int/lit8 v7, v12, 0x1

    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 713
    .end local v8    # "startIndex":I
    .end local v12    # "endIndex":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_39

    .line 721
    .end local v3    # "i":I
    :cond_5e
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v12, v3

    .line 722
    .local v12, "subFrames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;>;"
    add-int v13, v1, p1

    .line 723
    .local v13, "limit":I
    :goto_66
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v3

    if-ge v3, v13, :cond_7f

    .line 725
    nop

    .line 726
    move/from16 v14, p2

    move/from16 v15, p3

    move/from16 v8, p4

    move-object/from16 v7, p5

    invoke-static {v14, v0, v15, v8, v7}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->decodeFrame(ILcom/google/android/exoplayer2/util/ParsableByteArray;ZILcom/google/android/exoplayer2/metadata/id3/Id3Decoder$FramePredicate;)Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;

    move-result-object v3

    .line 728
    .local v3, "frame":Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;
    if-eqz v3, :cond_7e

    .line 729
    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 731
    .end local v3    # "frame":Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;
    :cond_7e
    goto :goto_66

    .line 733
    :cond_7f
    move/from16 v14, p2

    move/from16 v15, p3

    move/from16 v8, p4

    move-object/from16 v7, p5

    const/4 v3, 0x0

    new-array v3, v3, [Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v16, v3

    check-cast v16, [Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;

    .line 734
    .local v16, "subFrameArray":[Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;
    new-instance v17, Lcom/google/android/exoplayer2/metadata/id3/ChapterTocFrame;

    move-object/from16 v3, v17

    move-object v7, v11

    move-object/from16 v8, v16

    invoke-direct/range {v3 .. v8}, Lcom/google/android/exoplayer2/metadata/id3/ChapterTocFrame;-><init>(Ljava/lang/String;ZZ[Ljava/lang/String;[Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;)V

    return-object v17
.end method

.method private static decodeCommentFrame(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)Lcom/google/android/exoplayer2/metadata/id3/CommentFrame;
    .registers 12
    .param p0, "id3Data"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p1, "frameSize"    # I

    .line 622
    const/4 v0, 0x4

    if-ge p1, v0, :cond_5

    .line 624
    const/4 v0, 0x0

    return-object v0

    .line 627
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 628
    .local v0, "encoding":I
    invoke-static {v0}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->getCharset(I)Ljava/nio/charset/Charset;

    move-result-object v1

    .line 630
    .local v1, "charset":Ljava/nio/charset/Charset;
    const/4 v2, 0x3

    new-array v3, v2, [B

    .line 631
    .local v3, "data":[B
    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 632
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v3, v4, v2}, Ljava/lang/String;-><init>([BII)V

    move-object v2, v5

    .line 634
    .local v2, "language":Ljava/lang/String;
    add-int/lit8 v5, p1, -0x4

    new-array v3, v5, [B

    .line 635
    add-int/lit8 v5, p1, -0x4

    invoke-virtual {p0, v3, v4, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 637
    invoke-static {v3, v4, v0}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->indexOfTerminator([BII)I

    move-result v5

    .line 638
    .local v5, "descriptionEndIndex":I
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v3, v4, v5, v1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    move-object v4, v6

    .line 640
    .local v4, "description":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->delimiterLength(I)I

    move-result v6

    add-int/2addr v6, v5

    .line 641
    .local v6, "textStartIndex":I
    invoke-static {v3, v6, v0}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->indexOfTerminator([BII)I

    move-result v7

    .line 642
    .local v7, "textEndIndex":I
    invoke-static {v3, v6, v7, v1}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->decodeStringIfValid([BIILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v8

    .line 644
    .local v8, "text":Ljava/lang/String;
    new-instance v9, Lcom/google/android/exoplayer2/metadata/id3/CommentFrame;

    invoke-direct {v9, v2, v4, v8}, Lcom/google/android/exoplayer2/metadata/id3/CommentFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v9
.end method

.method private static decodeFrame(ILcom/google/android/exoplayer2/util/ParsableByteArray;ZILcom/google/android/exoplayer2/metadata/id3/Id3Decoder$FramePredicate;)Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;
    .registers 28
    .param p0, "majorVersion"    # I
    .param p1, "id3Data"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p2, "unsignedIntFrameSizeHack"    # Z
    .param p3, "frameHeaderSize"    # I
    .param p4, "framePredicate"    # Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$FramePredicate;

    .line 294
    move/from16 v7, p0

    move-object/from16 v8, p1

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v9

    .line 295
    .local v9, "frameId0":I
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v10

    .line 296
    .local v10, "frameId1":I
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v11

    .line 297
    .local v11, "frameId2":I
    const/4 v12, 0x3

    if-lt v7, v12, :cond_18

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    goto :goto_19

    :cond_18
    const/4 v1, 0x0

    :goto_19
    move v13, v1

    .line 300
    .local v13, "frameId3":I
    const/4 v14, 0x4

    if-ne v7, v14, :cond_3f

    .line 301
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v1

    .line 302
    .local v1, "frameSize":I
    if-nez p2, :cond_3d

    .line 303
    and-int/lit16 v2, v1, 0xff

    shr-int/lit8 v3, v1, 0x8

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x7

    or-int/2addr v2, v3

    shr-int/lit8 v3, v1, 0x10

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0xe

    or-int/2addr v2, v3

    shr-int/lit8 v3, v1, 0x18

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x15

    or-int v1, v2, v3

    move v15, v1

    goto :goto_4c

    .line 302
    :cond_3d
    move v15, v1

    goto :goto_4c

    .line 309
    .end local v1    # "frameSize":I
    :cond_3f
    if-ne v7, v12, :cond_47

    .line 310
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v1

    move v15, v1

    .restart local v1    # "frameSize":I
    goto :goto_4c

    .line 312
    .end local v1    # "frameSize":I
    :cond_47
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v1

    move v15, v1

    .line 315
    .local v15, "frameSize":I
    :goto_4c
    if-lt v7, v12, :cond_53

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v1

    goto :goto_54

    :cond_53
    const/4 v1, 0x0

    :goto_54
    move v6, v1

    .line 316
    .local v6, "flags":I
    const/16 v16, 0x0

    if-nez v9, :cond_6b

    if-nez v10, :cond_6b

    if-nez v11, :cond_6b

    if-nez v13, :cond_6b

    if-nez v15, :cond_6b

    if-nez v6, :cond_6b

    .line 323
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 324
    return-object v16

    .line 327
    :cond_6b
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v1

    add-int v5, v1, v15

    .line 328
    .local v5, "nextFramePosition":I
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v1

    const-string v4, "Id3Decoder"

    if-le v5, v1, :cond_86

    .line 329
    const-string v0, "Frame size exceeds remaining tag data"

    invoke-static {v4, v0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 331
    return-object v16

    .line 334
    :cond_86
    if-eqz p4, :cond_9e

    .line 335
    move-object/from16 v1, p4

    move/from16 v2, p0

    move v3, v9

    move-object v0, v4

    move v4, v10

    move v14, v5

    .end local v5    # "nextFramePosition":I
    .local v14, "nextFramePosition":I
    move v5, v11

    move/from16 v18, v6

    .end local v6    # "flags":I
    .local v18, "flags":I
    move v6, v13

    invoke-interface/range {v1 .. v6}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$FramePredicate;->evaluate(IIIII)Z

    move-result v1

    if-nez v1, :cond_a2

    .line 337
    invoke-virtual {v8, v14}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 338
    return-object v16

    .line 334
    .end local v14    # "nextFramePosition":I
    .end local v18    # "flags":I
    .restart local v5    # "nextFramePosition":I
    .restart local v6    # "flags":I
    :cond_9e
    move-object v0, v4

    move v14, v5

    move/from16 v18, v6

    .line 342
    .end local v5    # "nextFramePosition":I
    .end local v6    # "flags":I
    .restart local v14    # "nextFramePosition":I
    .restart local v18    # "flags":I
    :cond_a2
    const/4 v1, 0x0

    .line 343
    .local v1, "isCompressed":Z
    const/4 v2, 0x0

    .line 344
    .local v2, "isEncrypted":Z
    const/4 v3, 0x0

    .line 345
    .local v3, "isUnsynchronized":Z
    const/4 v4, 0x0

    .line 346
    .local v4, "hasDataLength":Z
    const/4 v5, 0x0

    .line 347
    .local v5, "hasGroupIdentifier":Z
    if-ne v7, v12, :cond_d2

    .line 348
    move/from16 v12, v18

    .end local v18    # "flags":I
    .local v12, "flags":I
    and-int/lit16 v6, v12, 0x80

    if-eqz v6, :cond_b1

    const/4 v6, 0x1

    goto :goto_b2

    :cond_b1
    const/4 v6, 0x0

    :goto_b2
    move v1, v6

    .line 349
    and-int/lit8 v6, v12, 0x40

    if-eqz v6, :cond_b9

    const/4 v6, 0x1

    goto :goto_ba

    :cond_b9
    const/4 v6, 0x0

    :goto_ba
    move v2, v6

    .line 350
    and-int/lit8 v6, v12, 0x20

    if-eqz v6, :cond_c2

    const/16 v17, 0x1

    goto :goto_c4

    :cond_c2
    const/16 v17, 0x0

    :goto_c4
    move/from16 v5, v17

    .line 352
    move v4, v1

    move/from16 v17, v1

    move/from16 v19, v2

    move/from16 v20, v3

    move/from16 v21, v4

    move/from16 v22, v5

    goto :goto_117

    .line 353
    .end local v12    # "flags":I
    .restart local v18    # "flags":I
    :cond_d2
    move/from16 v12, v18

    .end local v18    # "flags":I
    .restart local v12    # "flags":I
    const/4 v6, 0x4

    if-ne v7, v6, :cond_10d

    .line 354
    and-int/lit8 v6, v12, 0x40

    if-eqz v6, :cond_dd

    const/4 v6, 0x1

    goto :goto_de

    :cond_dd
    const/4 v6, 0x0

    :goto_de
    move v5, v6

    .line 355
    and-int/lit8 v6, v12, 0x8

    if-eqz v6, :cond_e5

    const/4 v6, 0x1

    goto :goto_e6

    :cond_e5
    const/4 v6, 0x0

    :goto_e6
    move v1, v6

    .line 356
    and-int/lit8 v6, v12, 0x4

    if-eqz v6, :cond_ed

    const/4 v6, 0x1

    goto :goto_ee

    :cond_ed
    const/4 v6, 0x0

    :goto_ee
    move v2, v6

    .line 357
    and-int/lit8 v6, v12, 0x2

    if-eqz v6, :cond_f5

    const/4 v6, 0x1

    goto :goto_f6

    :cond_f5
    const/4 v6, 0x0

    :goto_f6
    move v3, v6

    .line 358
    and-int/lit8 v6, v12, 0x1

    if-eqz v6, :cond_fe

    const/16 v17, 0x1

    goto :goto_100

    :cond_fe
    const/16 v17, 0x0

    :goto_100
    move/from16 v4, v17

    move/from16 v17, v1

    move/from16 v19, v2

    move/from16 v20, v3

    move/from16 v21, v4

    move/from16 v22, v5

    goto :goto_117

    .line 353
    :cond_10d
    move/from16 v17, v1

    move/from16 v19, v2

    move/from16 v20, v3

    move/from16 v21, v4

    move/from16 v22, v5

    .line 361
    .end local v1    # "isCompressed":Z
    .end local v2    # "isEncrypted":Z
    .end local v3    # "isUnsynchronized":Z
    .end local v4    # "hasDataLength":Z
    .end local v5    # "hasGroupIdentifier":Z
    .local v17, "isCompressed":Z
    .local v19, "isEncrypted":Z
    .local v20, "isUnsynchronized":Z
    .local v21, "hasDataLength":Z
    .local v22, "hasGroupIdentifier":Z
    :goto_117
    if-nez v17, :cond_250

    if-eqz v19, :cond_11d

    goto/16 :goto_250

    .line 367
    :cond_11d
    if-eqz v22, :cond_125

    .line 368
    add-int/lit8 v15, v15, -0x1

    .line 369
    const/4 v1, 0x1

    invoke-virtual {v8, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 371
    :cond_125
    if-eqz v21, :cond_12d

    .line 372
    add-int/lit8 v15, v15, -0x4

    .line 373
    const/4 v1, 0x4

    invoke-virtual {v8, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 375
    :cond_12d
    if-eqz v20, :cond_133

    .line 376
    invoke-static {v8, v15}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->removeUnsynchronization(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)I

    move-result v15

    .line 381
    :cond_133
    const/16 v1, 0x54

    const/4 v2, 0x2

    const/16 v3, 0x58

    if-ne v9, v1, :cond_148

    if-ne v10, v3, :cond_148

    if-ne v11, v3, :cond_148

    if-eq v7, v2, :cond_142

    if-ne v13, v3, :cond_148

    .line 385
    :cond_142
    :try_start_142
    invoke-static {v8, v15}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->decodeTxxxFrame(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v1

    .local v1, "frame":Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;
    goto/16 :goto_221

    .line 386
    .end local v1    # "frame":Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;
    :cond_148
    if-ne v9, v1, :cond_158

    .line 387
    invoke-static {v7, v9, v10, v11, v13}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->getFrameId(IIIII)Ljava/lang/String;

    move-result-object v1

    .line 388
    .local v1, "id":Ljava/lang/String;
    invoke-static {v8, v15, v1}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->decodeTextInformationFrame(Lcom/google/android/exoplayer2/util/ParsableByteArray;ILjava/lang/String;)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v2

    move-object v1, v2

    .line 389
    .local v1, "frame":Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;
    goto/16 :goto_221

    .line 447
    .end local v1    # "frame":Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;
    :catchall_155
    move-exception v0

    goto/16 :goto_24c

    .line 389
    :cond_158
    const/16 v4, 0x57

    if-ne v9, v4, :cond_16a

    if-ne v10, v3, :cond_16a

    if-ne v11, v3, :cond_16a

    if-eq v7, v2, :cond_164

    if-ne v13, v3, :cond_16a

    .line 393
    :cond_164
    invoke-static {v8, v15}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->decodeWxxxFrame(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)Lcom/google/android/exoplayer2/metadata/id3/UrlLinkFrame;

    move-result-object v1

    .restart local v1    # "frame":Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;
    goto/16 :goto_221

    .line 394
    .end local v1    # "frame":Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;
    :cond_16a
    if-ne v9, v4, :cond_177

    .line 395
    invoke-static {v7, v9, v10, v11, v13}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->getFrameId(IIIII)Ljava/lang/String;

    move-result-object v1

    .line 396
    .local v1, "id":Ljava/lang/String;
    invoke-static {v8, v15, v1}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->decodeUrlLinkFrame(Lcom/google/android/exoplayer2/util/ParsableByteArray;ILjava/lang/String;)Lcom/google/android/exoplayer2/metadata/id3/UrlLinkFrame;

    move-result-object v2

    move-object v1, v2

    .line 397
    .local v1, "frame":Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;
    goto/16 :goto_221

    .end local v1    # "frame":Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;
    :cond_177
    const/16 v3, 0x49

    const/16 v4, 0x50

    if-ne v9, v4, :cond_18d

    const/16 v5, 0x52

    if-ne v10, v5, :cond_18d

    if-ne v11, v3, :cond_18d

    const/16 v5, 0x56

    if-ne v13, v5, :cond_18d

    .line 398
    invoke-static {v8, v15}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->decodePrivFrame(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)Lcom/google/android/exoplayer2/metadata/id3/PrivFrame;

    move-result-object v1

    .restart local v1    # "frame":Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;
    goto/16 :goto_221

    .line 399
    .end local v1    # "frame":Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;
    :cond_18d
    const/16 v5, 0x47

    const/16 v6, 0x4f

    if-ne v9, v5, :cond_1a5

    const/16 v5, 0x45

    if-ne v10, v5, :cond_1a5

    if-ne v11, v6, :cond_1a5

    const/16 v5, 0x42

    if-eq v13, v5, :cond_19f

    if-ne v7, v2, :cond_1a5

    .line 403
    :cond_19f
    invoke-static {v8, v15}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->decodeGeobFrame(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)Lcom/google/android/exoplayer2/metadata/id3/GeobFrame;

    move-result-object v1

    .restart local v1    # "frame":Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;
    goto/16 :goto_221

    .line 404
    .end local v1    # "frame":Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;
    :cond_1a5
    const/16 v5, 0x41

    const/16 v1, 0x43

    if-ne v7, v2, :cond_1b2

    if-ne v9, v4, :cond_1c0

    if-ne v10, v3, :cond_1c0

    if-ne v11, v1, :cond_1c0

    goto :goto_1ba

    :cond_1b2
    if-ne v9, v5, :cond_1c0

    if-ne v10, v4, :cond_1c0

    if-ne v11, v3, :cond_1c0

    if-ne v13, v1, :cond_1c0

    .line 407
    :goto_1ba
    invoke-static {v8, v15, v7}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->decodeApicFrame(Lcom/google/android/exoplayer2/util/ParsableByteArray;II)Lcom/google/android/exoplayer2/metadata/id3/ApicFrame;

    move-result-object v1

    .restart local v1    # "frame":Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;
    goto/16 :goto_221

    .line 408
    .end local v1    # "frame":Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;
    :cond_1c0
    const/16 v3, 0x4d

    if-ne v9, v1, :cond_1d1

    if-ne v10, v6, :cond_1d1

    if-ne v11, v3, :cond_1d1

    if-eq v13, v3, :cond_1cc

    if-ne v7, v2, :cond_1d1

    .line 412
    :cond_1cc
    invoke-static {v8, v15}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->decodeCommentFrame(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)Lcom/google/android/exoplayer2/metadata/id3/CommentFrame;

    move-result-object v1

    .restart local v1    # "frame":Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;
    goto :goto_221

    .line 413
    .end local v1    # "frame":Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;
    :cond_1d1
    if-ne v9, v1, :cond_1ec

    const/16 v2, 0x48

    if-ne v10, v2, :cond_1ec

    if-ne v11, v5, :cond_1ec

    if-ne v13, v4, :cond_1ec

    .line 414
    nop

    .line 415
    move-object/from16 v1, p1

    move v2, v15

    move/from16 v3, p0

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    invoke-static/range {v1 .. v6}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->decodeChapterFrame(Lcom/google/android/exoplayer2/util/ParsableByteArray;IIZILcom/google/android/exoplayer2/metadata/id3/Id3Decoder$FramePredicate;)Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame;

    move-result-object v1

    .restart local v1    # "frame":Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;
    goto :goto_221

    .line 422
    .end local v1    # "frame":Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;
    :cond_1ec
    if-ne v9, v1, :cond_207

    const/16 v2, 0x54

    if-ne v10, v2, :cond_207

    if-ne v11, v6, :cond_207

    if-ne v13, v1, :cond_207

    .line 423
    nop

    .line 424
    move-object/from16 v1, p1

    move v2, v15

    move/from16 v3, p0

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    invoke-static/range {v1 .. v6}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->decodeChapterTOCFrame(Lcom/google/android/exoplayer2/util/ParsableByteArray;IIZILcom/google/android/exoplayer2/metadata/id3/Id3Decoder$FramePredicate;)Lcom/google/android/exoplayer2/metadata/id3/ChapterTocFrame;

    move-result-object v1

    .restart local v1    # "frame":Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;
    goto :goto_221

    .line 431
    .end local v1    # "frame":Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;
    :cond_207
    if-ne v9, v3, :cond_218

    const/16 v1, 0x4c

    if-ne v10, v1, :cond_218

    if-ne v11, v1, :cond_218

    const/16 v1, 0x54

    if-ne v13, v1, :cond_218

    .line 432
    invoke-static {v8, v15}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->decodeMlltFrame(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)Lcom/google/android/exoplayer2/metadata/id3/MlltFrame;

    move-result-object v1

    .restart local v1    # "frame":Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;
    goto :goto_221

    .line 434
    .end local v1    # "frame":Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;
    :cond_218
    invoke-static {v7, v9, v10, v11, v13}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->getFrameId(IIIII)Ljava/lang/String;

    move-result-object v1

    .line 435
    .local v1, "id":Ljava/lang/String;
    invoke-static {v8, v15, v1}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->decodeBinaryFrame(Lcom/google/android/exoplayer2/util/ParsableByteArray;ILjava/lang/String;)Lcom/google/android/exoplayer2/metadata/id3/BinaryFrame;

    move-result-object v2

    move-object v1, v2

    .line 437
    .local v1, "frame":Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;
    :goto_221
    if-nez v1, :cond_247

    .line 438
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to decode frame: id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 441
    invoke-static {v7, v9, v10, v11, v13}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->getFrameId(IIIII)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", frameSize="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 438
    invoke-static {v0, v2}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_247
    .catchall {:try_start_142 .. :try_end_247} :catchall_155

    .line 445
    :cond_247
    nop

    .line 447
    invoke-virtual {v8, v14}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 445
    return-object v1

    .line 447
    .end local v1    # "frame":Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;
    :goto_24c
    invoke-virtual {v8, v14}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 448
    throw v0

    .line 362
    :cond_250
    :goto_250
    const-string v1, "Skipping unsupported compressed or encrypted frame"

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    invoke-virtual {v8, v14}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 364
    return-object v16
.end method

.method private static decodeGeobFrame(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)Lcom/google/android/exoplayer2/metadata/id3/GeobFrame;
    .registers 16
    .param p0, "id3Data"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p1, "frameSize"    # I

    .line 558
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 559
    .local v0, "encoding":I
    invoke-static {v0}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->getCharset(I)Ljava/nio/charset/Charset;

    move-result-object v1

    .line 561
    .local v1, "charset":Ljava/nio/charset/Charset;
    add-int/lit8 v2, p1, -0x1

    new-array v2, v2, [B

    .line 562
    .local v2, "data":[B
    add-int/lit8 v3, p1, -0x1

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v4, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 564
    invoke-static {v2, v4}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->indexOfZeroByte([BI)I

    move-result v3

    .line 565
    .local v3, "mimeTypeEndIndex":I
    new-instance v5, Ljava/lang/String;

    sget-object v6, Lcom/google/common/base/Charsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v5, v2, v4, v3, v6}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    move-object v4, v5

    .line 567
    .local v4, "mimeType":Ljava/lang/String;
    add-int/lit8 v5, v3, 0x1

    .line 568
    .local v5, "filenameStartIndex":I
    invoke-static {v2, v5, v0}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->indexOfTerminator([BII)I

    move-result v6

    .line 569
    .local v6, "filenameEndIndex":I
    invoke-static {v2, v5, v6, v1}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->decodeStringIfValid([BIILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v7

    .line 571
    .local v7, "filename":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->delimiterLength(I)I

    move-result v8

    add-int/2addr v8, v6

    .line 572
    .local v8, "descriptionStartIndex":I
    invoke-static {v2, v8, v0}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->indexOfTerminator([BII)I

    move-result v9

    .line 573
    .local v9, "descriptionEndIndex":I
    nop

    .line 574
    invoke-static {v2, v8, v9, v1}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->decodeStringIfValid([BIILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v10

    .line 576
    .local v10, "description":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->delimiterLength(I)I

    move-result v11

    add-int/2addr v11, v9

    .line 577
    .local v11, "objectDataStartIndex":I
    array-length v12, v2

    invoke-static {v2, v11, v12}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->copyOfRangeIfValid([BII)[B

    move-result-object v12

    .line 579
    .local v12, "objectData":[B
    new-instance v13, Lcom/google/android/exoplayer2/metadata/id3/GeobFrame;

    invoke-direct {v13, v4, v7, v10, v12}, Lcom/google/android/exoplayer2/metadata/id3/GeobFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    return-object v13
.end method

.method private static decodeHeader(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$Id3Header;
    .registers 11
    .param p0, "data"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 168
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    const/16 v1, 0xa

    const/4 v2, 0x0

    const-string v3, "Id3Decoder"

    if-ge v0, v1, :cond_11

    .line 169
    const-string v0, "Data too short to be an ID3 tag"

    invoke-static {v3, v0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    return-object v2

    .line 173
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v0

    .line 174
    .local v0, "id":I
    const v1, 0x494433

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v0, v1, :cond_41

    .line 175
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected first three bytes of ID3 tag header: 0x"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v4

    const-string v4, "%06X"

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    return-object v2

    .line 179
    :cond_41
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    .line 180
    .local v1, "majorVersion":I
    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 181
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v6

    .line 182
    .local v6, "flags":I
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readSynchSafeInt()I

    move-result v7

    .line 184
    .local v7, "framesSize":I
    const/4 v8, 0x2

    const/4 v9, 0x4

    if-ne v1, v8, :cond_64

    .line 185
    and-int/lit8 v8, v6, 0x40

    if-eqz v8, :cond_5a

    const/4 v8, 0x1

    goto :goto_5b

    :cond_5a
    const/4 v8, 0x0

    .line 186
    .local v8, "isCompressed":Z
    :goto_5b
    if-eqz v8, :cond_63

    .line 187
    const-string v4, "Skipped ID3 tag with majorVersion=2 and undefined compression scheme"

    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    return-object v2

    .line 190
    .end local v8    # "isCompressed":Z
    :cond_63
    goto :goto_9c

    :cond_64
    const/4 v8, 0x3

    if-ne v1, v8, :cond_7b

    .line 191
    and-int/lit8 v2, v6, 0x40

    if-eqz v2, :cond_6d

    const/4 v2, 0x1

    goto :goto_6e

    :cond_6d
    const/4 v2, 0x0

    .line 192
    .local v2, "hasExtendedHeader":Z
    :goto_6e
    if-eqz v2, :cond_7a

    .line 193
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v3

    .line 194
    .local v3, "extendedHeaderSize":I
    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 195
    add-int/lit8 v8, v3, 0x4

    sub-int/2addr v7, v8

    .line 197
    .end local v2    # "hasExtendedHeader":Z
    .end local v3    # "extendedHeaderSize":I
    :cond_7a
    goto :goto_9c

    :cond_7b
    if-ne v1, v9, :cond_aa

    .line 198
    and-int/lit8 v2, v6, 0x40

    if-eqz v2, :cond_83

    const/4 v2, 0x1

    goto :goto_84

    :cond_83
    const/4 v2, 0x0

    .line 199
    .restart local v2    # "hasExtendedHeader":Z
    :goto_84
    if-eqz v2, :cond_90

    .line 200
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readSynchSafeInt()I

    move-result v3

    .line 201
    .restart local v3    # "extendedHeaderSize":I
    add-int/lit8 v8, v3, -0x4

    invoke-virtual {p0, v8}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 202
    sub-int/2addr v7, v3

    .line 204
    .end local v3    # "extendedHeaderSize":I
    :cond_90
    and-int/lit8 v3, v6, 0x10

    if-eqz v3, :cond_96

    const/4 v3, 0x1

    goto :goto_97

    :cond_96
    const/4 v3, 0x0

    .line 205
    .local v3, "hasFooter":Z
    :goto_97
    if-eqz v3, :cond_9b

    .line 206
    add-int/lit8 v7, v7, -0xa

    .line 208
    .end local v2    # "hasExtendedHeader":Z
    .end local v3    # "hasFooter":Z
    :cond_9b
    nop

    .line 214
    :goto_9c
    if-ge v1, v9, :cond_a3

    and-int/lit16 v2, v6, 0x80

    if-eqz v2, :cond_a3

    const/4 v4, 0x1

    :cond_a3
    move v2, v4

    .line 215
    .local v2, "isUnsynchronized":Z
    new-instance v3, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$Id3Header;

    invoke-direct {v3, v1, v2, v7}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$Id3Header;-><init>(IZI)V

    return-object v3

    .line 209
    .end local v2    # "isUnsynchronized":Z
    :cond_aa
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Skipped ID3 tag with unsupported majorVersion="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    return-object v2
.end method

.method private static decodeMlltFrame(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)Lcom/google/android/exoplayer2/metadata/id3/MlltFrame;
    .registers 21
    .param p0, "id3Data"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p1, "frameSize"    # I

    .line 739
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v6

    .line 740
    .local v6, "mpegFramesBetweenReference":I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v7

    .line 741
    .local v7, "bytesBetweenReference":I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v8

    .line 742
    .local v8, "millisecondsBetweenReference":I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v9

    .line 743
    .local v9, "bitsForBytesDeviation":I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v10

    .line 745
    .local v10, "bitsForMillisecondsDeviation":I
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;-><init>()V

    move-object v11, v0

    .line 746
    .local v11, "references":Lcom/google/android/exoplayer2/util/ParsableBitArray;
    move-object/from16 v12, p0

    invoke-virtual {v11, v12}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->reset(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V

    .line 747
    add-int/lit8 v0, p1, -0xa

    mul-int/lit8 v13, v0, 0x8

    .line 748
    .local v13, "referencesBits":I
    add-int v14, v9, v10

    .line 749
    .local v14, "bitsPerReference":I
    div-int v15, v13, v14

    .line 750
    .local v15, "referencesCount":I
    new-array v5, v15, [I

    .line 751
    .local v5, "bytesDeviations":[I
    new-array v4, v15, [I

    .line 752
    .local v4, "millisecondsDeviations":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2c
    if-ge v0, v15, :cond_3d

    .line 753
    invoke-virtual {v11, v9}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v1

    .line 754
    .local v1, "bytesDeviation":I
    invoke-virtual {v11, v10}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v2

    .line 755
    .local v2, "millisecondsDeviation":I
    aput v1, v5, v0

    .line 756
    aput v2, v4, v0

    .line 752
    .end local v1    # "bytesDeviation":I
    .end local v2    # "millisecondsDeviation":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_2c

    .line 759
    .end local v0    # "i":I
    :cond_3d
    new-instance v16, Lcom/google/android/exoplayer2/metadata/id3/MlltFrame;

    move-object/from16 v0, v16

    move v1, v6

    move v2, v7

    move v3, v8

    move-object/from16 v17, v4

    .end local v4    # "millisecondsDeviations":[I
    .local v17, "millisecondsDeviations":[I
    move-object v4, v5

    move-object/from16 v18, v5

    .end local v5    # "bytesDeviations":[I
    .local v18, "bytesDeviations":[I
    move-object/from16 v5, v17

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/metadata/id3/MlltFrame;-><init>(III[I[I)V

    return-object v16
.end method

.method private static decodePrivFrame(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)Lcom/google/android/exoplayer2/metadata/id3/PrivFrame;
    .registers 8
    .param p0, "id3Data"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p1, "frameSize"    # I

    .line 545
    new-array v0, p1, [B

    .line 546
    .local v0, "data":[B
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 548
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->indexOfZeroByte([BI)I

    move-result v2

    .line 549
    .local v2, "ownerEndIndex":I
    new-instance v3, Ljava/lang/String;

    sget-object v4, Lcom/google/common/base/Charsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v3, v0, v1, v2, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    move-object v1, v3

    .line 551
    .local v1, "owner":Ljava/lang/String;
    add-int/lit8 v3, v2, 0x1

    .line 552
    .local v3, "privateDataStartIndex":I
    array-length v4, v0

    invoke-static {v0, v3, v4}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->copyOfRangeIfValid([BII)[B

    move-result-object v4

    .line 554
    .local v4, "privateData":[B
    new-instance v5, Lcom/google/android/exoplayer2/metadata/id3/PrivFrame;

    invoke-direct {v5, v1, v4}, Lcom/google/android/exoplayer2/metadata/id3/PrivFrame;-><init>(Ljava/lang/String;[B)V

    return-object v5
.end method

.method private static decodeStringIfValid([BIILjava/nio/charset/Charset;)Ljava/lang/String;
    .registers 6
    .param p0, "data"    # [B
    .param p1, "from"    # I
    .param p2, "to"    # I
    .param p3, "charset"    # Ljava/nio/charset/Charset;

    .line 879
    if-le p2, p1, :cond_e

    array-length v0, p0

    if-le p2, v0, :cond_6

    goto :goto_e

    .line 882
    :cond_6
    new-instance v0, Ljava/lang/String;

    sub-int v1, p2, p1

    invoke-direct {v0, p0, p1, v1, p3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v0

    .line 880
    :cond_e
    :goto_e
    const-string v0, ""

    return-object v0
.end method

.method private static decodeTextInformationFrame(Lcom/google/android/exoplayer2/util/ParsableByteArray;ILjava/lang/String;)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;
    .registers 8
    .param p0, "id3Data"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p1, "frameSize"    # I
    .param p2, "id"    # Ljava/lang/String;

    .line 475
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ge p1, v0, :cond_5

    .line 477
    return-object v1

    .line 480
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 482
    .local v0, "encoding":I
    add-int/lit8 v2, p1, -0x1

    new-array v2, v2, [B

    .line 483
    .local v2, "data":[B
    add-int/lit8 v3, p1, -0x1

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v4, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 485
    invoke-static {v2, v0, v4}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->decodeTextInformationFrameValues([BII)Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    .line 486
    .local v3, "values":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Ljava/lang/String;>;"
    new-instance v4, Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    invoke-direct {v4, p2, v1, v3}, Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-object v4
.end method

.method private static decodeTextInformationFrameValues([BII)Lcom/google/common/collect/ImmutableList;
    .registers 10
    .param p0, "data"    # [B
    .param p1, "encoding"    # I
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII)",
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 491
    array-length v0, p0

    const-string v1, ""

    if-lt p2, v0, :cond_a

    .line 492
    invoke-static {v1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0

    .line 495
    :cond_a
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    .line 496
    .local v0, "values":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Ljava/lang/String;>;"
    move v2, p2

    .line 497
    .local v2, "valueStartIndex":I
    invoke-static {p0, v2, p1}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->indexOfTerminator([BII)I

    move-result v3

    .line 498
    .local v3, "valueEndIndex":I
    :goto_13
    if-ge v2, v3, :cond_2e

    .line 499
    new-instance v4, Ljava/lang/String;

    sub-int v5, v3, v2

    .line 500
    invoke-static {p1}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->getCharset(I)Ljava/nio/charset/Charset;

    move-result-object v6

    invoke-direct {v4, p0, v2, v5, v6}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 501
    .local v4, "value":Ljava/lang/String;
    invoke-virtual {v0, v4}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 503
    invoke-static {p1}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->delimiterLength(I)I

    move-result v5

    add-int v2, v3, v5

    .line 504
    invoke-static {p0, v2, p1}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->indexOfTerminator([BII)I

    move-result v3

    .line 505
    .end local v4    # "value":Ljava/lang/String;
    goto :goto_13

    .line 507
    :cond_2e
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    .line 508
    .local v4, "result":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Ljava/lang/String;>;"
    invoke-virtual {v4}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3d

    invoke-static {v1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    goto :goto_3e

    :cond_3d
    move-object v1, v4

    :goto_3e
    return-object v1
.end method

.method private static decodeTxxxFrame(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;
    .registers 9
    .param p0, "id3Data"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p1, "frameSize"    # I

    .line 453
    const/4 v0, 0x1

    if-ge p1, v0, :cond_5

    .line 455
    const/4 v0, 0x0

    return-object v0

    .line 458
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 460
    .local v0, "encoding":I
    add-int/lit8 v1, p1, -0x1

    new-array v1, v1, [B

    .line 461
    .local v1, "data":[B
    add-int/lit8 v2, p1, -0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 463
    invoke-static {v1, v3, v0}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->indexOfTerminator([BII)I

    move-result v2

    .line 464
    .local v2, "descriptionEndIndex":I
    new-instance v4, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->getCharset(I)Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-direct {v4, v1, v3, v2, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    move-object v3, v4

    .line 466
    .local v3, "description":Ljava/lang/String;
    nop

    .line 468
    invoke-static {v0}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->delimiterLength(I)I

    move-result v4

    add-int/2addr v4, v2

    .line 467
    invoke-static {v1, v0, v4}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->decodeTextInformationFrameValues([BII)Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    .line 469
    .local v4, "values":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Ljava/lang/String;>;"
    new-instance v5, Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    const-string v6, "TXXX"

    invoke-direct {v5, v6, v3, v4}, Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-object v5
.end method

.method private static decodeUrlLinkFrame(Lcom/google/android/exoplayer2/util/ParsableByteArray;ILjava/lang/String;)Lcom/google/android/exoplayer2/metadata/id3/UrlLinkFrame;
    .registers 8
    .param p0, "id3Data"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p1, "frameSize"    # I
    .param p2, "id"    # Ljava/lang/String;

    .line 535
    new-array v0, p1, [B

    .line 536
    .local v0, "data":[B
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 538
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->indexOfZeroByte([BI)I

    move-result v2

    .line 539
    .local v2, "urlEndIndex":I
    new-instance v3, Ljava/lang/String;

    sget-object v4, Lcom/google/common/base/Charsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v3, v0, v1, v2, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    move-object v1, v3

    .line 541
    .local v1, "url":Ljava/lang/String;
    new-instance v3, Lcom/google/android/exoplayer2/metadata/id3/UrlLinkFrame;

    const/4 v4, 0x0

    invoke-direct {v3, p2, v4, v1}, Lcom/google/android/exoplayer2/metadata/id3/UrlLinkFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method

.method private static decodeWxxxFrame(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)Lcom/google/android/exoplayer2/metadata/id3/UrlLinkFrame;
    .registers 11
    .param p0, "id3Data"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p1, "frameSize"    # I

    .line 513
    const/4 v0, 0x1

    if-ge p1, v0, :cond_5

    .line 515
    const/4 v0, 0x0

    return-object v0

    .line 518
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 520
    .local v0, "encoding":I
    add-int/lit8 v1, p1, -0x1

    new-array v1, v1, [B

    .line 521
    .local v1, "data":[B
    add-int/lit8 v2, p1, -0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 523
    invoke-static {v1, v3, v0}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->indexOfTerminator([BII)I

    move-result v2

    .line 524
    .local v2, "descriptionEndIndex":I
    new-instance v4, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->getCharset(I)Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-direct {v4, v1, v3, v2, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    move-object v3, v4

    .line 526
    .local v3, "description":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->delimiterLength(I)I

    move-result v4

    add-int/2addr v4, v2

    .line 527
    .local v4, "urlStartIndex":I
    invoke-static {v1, v4}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->indexOfZeroByte([BI)I

    move-result v5

    .line 528
    .local v5, "urlEndIndex":I
    sget-object v6, Lcom/google/common/base/Charsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-static {v1, v4, v5, v6}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->decodeStringIfValid([BIILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v6

    .line 530
    .local v6, "url":Ljava/lang/String;
    new-instance v7, Lcom/google/android/exoplayer2/metadata/id3/UrlLinkFrame;

    const-string v8, "WXXX"

    invoke-direct {v7, v8, v3, v6}, Lcom/google/android/exoplayer2/metadata/id3/UrlLinkFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v7
.end method

.method private static delimiterLength(I)I
    .registers 2
    .param p0, "encodingByte"    # I

    .line 847
    if-eqz p0, :cond_8

    const/4 v0, 0x3

    if-ne p0, v0, :cond_6

    goto :goto_8

    .line 849
    :cond_6
    const/4 v0, 0x2

    goto :goto_9

    .line 848
    :cond_8
    :goto_8
    const/4 v0, 0x1

    .line 847
    :goto_9
    return v0
.end method

.method private static getCharset(I)Ljava/nio/charset/Charset;
    .registers 2
    .param p0, "encodingByte"    # I

    .line 798
    packed-switch p0, :pswitch_data_10

    .line 807
    sget-object v0, Lcom/google/common/base/Charsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    return-object v0

    .line 804
    :pswitch_6
    sget-object v0, Lcom/google/common/base/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    return-object v0

    .line 802
    :pswitch_9
    sget-object v0, Lcom/google/common/base/Charsets;->UTF_16BE:Ljava/nio/charset/Charset;

    return-object v0

    .line 800
    :pswitch_c
    sget-object v0, Lcom/google/common/base/Charsets;->UTF_16:Ljava/nio/charset/Charset;

    return-object v0

    nop

    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method private static getFrameId(IIIII)Ljava/lang/String;
    .registers 12
    .param p0, "majorVersion"    # I
    .param p1, "frameId0"    # I
    .param p2, "frameId1"    # I
    .param p3, "frameId2"    # I
    .param p4, "frameId3"    # I

    .line 813
    const/4 v0, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne p0, v3, :cond_23

    .line 814
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "%c%c%c"

    invoke-static {v4, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_46

    .line 815
    :cond_23
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v0

    const-string v0, "%c%c%c%c"

    invoke-static {v4, v0, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 813
    :goto_46
    return-object v0
.end method

.method private static indexOfTerminator([BII)I
    .registers 5
    .param p0, "data"    # [B
    .param p1, "fromIndex"    # I
    .param p2, "encoding"    # I

    .line 819
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->indexOfZeroByte([BI)I

    move-result v0

    .line 822
    .local v0, "terminationPos":I
    if-eqz p2, :cond_25

    const/4 v1, 0x3

    if-ne p2, v1, :cond_a

    goto :goto_25

    .line 827
    :cond_a
    :goto_a
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_23

    .line 828
    sub-int v1, v0, p1

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1c

    add-int/lit8 v1, v0, 0x1

    aget-byte v1, p0, v1

    if-nez v1, :cond_1c

    .line 829
    return v0

    .line 831
    :cond_1c
    add-int/lit8 v1, v0, 0x1

    invoke-static {p0, v1}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->indexOfZeroByte([BI)I

    move-result v0

    goto :goto_a

    .line 834
    :cond_23
    array-length v1, p0

    return v1

    .line 823
    :cond_25
    :goto_25
    return v0
.end method

.method private static indexOfZeroByte([BI)I
    .registers 4
    .param p0, "data"    # [B
    .param p1, "fromIndex"    # I

    .line 838
    move v0, p1

    .local v0, "i":I
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_c

    .line 839
    aget-byte v1, p0, v0

    if-nez v1, :cond_9

    .line 840
    return v0

    .line 838
    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 843
    .end local v0    # "i":I
    :cond_c
    array-length v0, p0

    return v0
.end method

.method static synthetic lambda$static$0(IIIII)Z
    .registers 6
    .param p0, "majorVersion"    # I
    .param p1, "id0"    # I
    .param p2, "id1"    # I
    .param p3, "id2"    # I
    .param p4, "id3"    # I

    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method private static removeUnsynchronization(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)I
    .registers 9
    .param p0, "data"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p1, "length"    # I

    .line 784
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v0

    .line 785
    .local v0, "bytes":[B
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v1

    .line 786
    .local v1, "startPosition":I
    move v2, v1

    .local v2, "i":I
    :goto_9
    add-int/lit8 v3, v2, 0x1

    add-int v4, v1, p1

    if-ge v3, v4, :cond_2e

    .line 787
    aget-byte v3, v0, v2

    const/16 v4, 0xff

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_2b

    add-int/lit8 v3, v2, 0x1

    aget-byte v3, v0, v3

    if-nez v3, :cond_2b

    .line 788
    sub-int v3, v2, v1

    .line 789
    .local v3, "relativePosition":I
    add-int/lit8 v4, v2, 0x2

    add-int/lit8 v5, v2, 0x1

    sub-int v6, p1, v3

    add-int/lit8 v6, v6, -0x2

    invoke-static {v0, v4, v0, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 790
    add-int/lit8 p1, p1, -0x1

    .line 786
    .end local v3    # "relativePosition":I
    :cond_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 793
    .end local v2    # "i":I
    :cond_2e
    return p1
.end method

.method private static validateFrames(Lcom/google/android/exoplayer2/util/ParsableByteArray;IIZ)Z
    .registers 23
    .param p0, "id3Data"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p1, "majorVersion"    # I
    .param p2, "frameHeaderSize"    # I
    .param p3, "unsignedIntFrameSizeHack"    # Z

    .line 223
    move-object/from16 v1, p0

    move/from16 v2, p1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v3

    .line 225
    .local v3, "startPosition":I
    :goto_8
    :try_start_8
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v0
    :try_end_c
    .catchall {:try_start_8 .. :try_end_c} :catchall_c8

    const/4 v4, 0x1

    move/from16 v5, p2

    if-lt v0, v5, :cond_c3

    .line 230
    const/4 v0, 0x3

    if-lt v2, v0, :cond_21

    .line 231
    :try_start_14
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v6

    .line 232
    .local v6, "id":I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v7

    .line 233
    .local v7, "frameSize":J
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v9

    .local v9, "flags":I
    goto :goto_2b

    .line 235
    .end local v6    # "id":I
    .end local v7    # "frameSize":J
    .end local v9    # "flags":I
    :cond_21
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v6

    .line 236
    .restart local v6    # "id":I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v7
    :try_end_29
    .catchall {:try_start_14 .. :try_end_29} :catchall_c1

    int-to-long v7, v7

    .line 237
    .restart local v7    # "frameSize":J
    const/4 v9, 0x0

    .line 240
    .restart local v9    # "flags":I
    :goto_2b
    const-wide/16 v10, 0x0

    if-nez v6, :cond_3a

    cmp-long v12, v7, v10

    if-nez v12, :cond_3a

    if-nez v9, :cond_3a

    .line 242
    nop

    .line 283
    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 242
    return v4

    .line 244
    :cond_3a
    const/4 v12, 0x4

    const/4 v13, 0x0

    if-ne v2, v12, :cond_75

    if-nez p3, :cond_75

    .line 246
    const-wide/32 v14, 0x808080

    and-long/2addr v14, v7

    cmp-long v16, v14, v10

    if-eqz v16, :cond_4d

    .line 247
    nop

    .line 283
    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 247
    return v13

    .line 249
    :cond_4d
    const-wide/16 v10, 0xff

    and-long v14, v7, v10

    const/16 v16, 0x8

    shr-long v16, v7, v16

    and-long v16, v16, v10

    const/16 v18, 0x7

    shl-long v16, v16, v18

    or-long v14, v14, v16

    const/16 v16, 0x10

    shr-long v16, v7, v16

    and-long v16, v16, v10

    const/16 v18, 0xe

    shl-long v16, v16, v18

    or-long v14, v14, v16

    const/16 v16, 0x18

    shr-long v16, v7, v16

    and-long v10, v16, v10

    const/16 v16, 0x15

    shl-long v10, v10, v16

    or-long v7, v14, v10

    .line 255
    :cond_75
    const/4 v10, 0x0

    .line 256
    .local v10, "hasGroupIdentifier":Z
    const/4 v11, 0x0

    .line 257
    .local v11, "hasDataLength":Z
    if-ne v2, v12, :cond_89

    .line 258
    and-int/lit8 v0, v9, 0x40

    if-eqz v0, :cond_7f

    const/4 v0, 0x1

    goto :goto_80

    :cond_7f
    const/4 v0, 0x0

    :goto_80
    move v10, v0

    .line 259
    and-int/lit8 v0, v9, 0x1

    if-eqz v0, :cond_86

    goto :goto_87

    :cond_86
    const/4 v4, 0x0

    :goto_87
    move v11, v4

    goto :goto_9a

    .line 260
    :cond_89
    if-ne v2, v0, :cond_9a

    .line 261
    and-int/lit8 v0, v9, 0x20

    if-eqz v0, :cond_91

    const/4 v0, 0x1

    goto :goto_92

    :cond_91
    const/4 v0, 0x0

    :goto_92
    move v10, v0

    .line 263
    and-int/lit16 v0, v9, 0x80

    if-eqz v0, :cond_98

    goto :goto_99

    :cond_98
    const/4 v4, 0x0

    :goto_99
    move v11, v4

    .line 265
    :cond_9a
    :goto_9a
    const/4 v0, 0x0

    .line 266
    .local v0, "minimumFrameSize":I
    if-eqz v10, :cond_9f

    .line 267
    add-int/lit8 v0, v0, 0x1

    .line 269
    :cond_9f
    if-eqz v11, :cond_a3

    .line 270
    add-int/lit8 v0, v0, 0x4

    .line 272
    :cond_a3
    int-to-long v14, v0

    cmp-long v4, v7, v14

    if-gez v4, :cond_ad

    .line 273
    nop

    .line 283
    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 273
    return v13

    .line 275
    :cond_ad
    :try_start_ad
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v4
    :try_end_b1
    .catchall {:try_start_ad .. :try_end_b1} :catchall_c1

    int-to-long v14, v4

    cmp-long v4, v14, v7

    if-gez v4, :cond_bb

    .line 276
    nop

    .line 283
    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 276
    return v13

    .line 278
    :cond_bb
    long-to-int v4, v7

    :try_start_bc
    invoke-virtual {v1, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V
    :try_end_bf
    .catchall {:try_start_bc .. :try_end_bf} :catchall_c1

    .line 280
    .end local v0    # "minimumFrameSize":I
    .end local v6    # "id":I
    .end local v7    # "frameSize":J
    .end local v9    # "flags":I
    .end local v10    # "hasGroupIdentifier":Z
    .end local v11    # "hasDataLength":Z
    goto/16 :goto_8

    .line 283
    :catchall_c1
    move-exception v0

    goto :goto_cb

    .line 281
    :cond_c3
    nop

    .line 283
    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 281
    return v4

    .line 283
    :catchall_c8
    move-exception v0

    move/from16 v5, p2

    :goto_cb
    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 284
    goto :goto_d0

    :goto_cf
    throw v0

    :goto_d0
    goto :goto_cf
.end method


# virtual methods
.method protected decode(Lcom/google/android/exoplayer2/metadata/MetadataInputBuffer;Ljava/nio/ByteBuffer;)Lcom/google/android/exoplayer2/metadata/Metadata;
    .registers 5
    .param p1, "inputBuffer"    # Lcom/google/android/exoplayer2/metadata/MetadataInputBuffer;
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;

    .line 106
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->decode([BI)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object v0

    return-object v0
.end method

.method public decode([BI)Lcom/google/android/exoplayer2/metadata/Metadata;
    .registers 13
    .param p1, "data"    # [B
    .param p2, "size"    # I

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 120
    .local v0, "id3Frames":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;>;"
    new-instance v1, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {v1, p1, p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>([BI)V

    .line 122
    .local v1, "id3Data":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    invoke-static {v1}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->decodeHeader(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$Id3Header;

    move-result-object v2

    .line 123
    .local v2, "id3Header":Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$Id3Header;
    const/4 v3, 0x0

    if-nez v2, :cond_12

    .line 124
    return-object v3

    .line 127
    :cond_12
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v4

    .line 128
    .local v4, "startPosition":I
    # getter for: Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$Id3Header;->majorVersion:I
    invoke-static {v2}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$Id3Header;->access$000(Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$Id3Header;)I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1f

    const/4 v5, 0x6

    goto :goto_21

    :cond_1f
    const/16 v5, 0xa

    .line 129
    .local v5, "frameHeaderSize":I
    :goto_21
    # getter for: Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$Id3Header;->framesSize:I
    invoke-static {v2}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$Id3Header;->access$100(Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$Id3Header;)I

    move-result v6

    .line 130
    .local v6, "framesSize":I
    # getter for: Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$Id3Header;->isUnsynchronized:Z
    invoke-static {v2}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$Id3Header;->access$200(Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$Id3Header;)Z

    move-result v7

    if-eqz v7, :cond_33

    .line 131
    # getter for: Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$Id3Header;->framesSize:I
    invoke-static {v2}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$Id3Header;->access$100(Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$Id3Header;)I

    move-result v7

    invoke-static {v1, v7}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->removeUnsynchronization(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)I

    move-result v6

    .line 133
    :cond_33
    add-int v7, v4, v6

    invoke-virtual {v1, v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setLimit(I)V

    .line 135
    const/4 v7, 0x0

    .line 136
    .local v7, "unsignedIntFrameSizeHack":Z
    # getter for: Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$Id3Header;->majorVersion:I
    invoke-static {v2}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$Id3Header;->access$000(Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$Id3Header;)I

    move-result v8

    const/4 v9, 0x0

    invoke-static {v1, v8, v5, v9}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->validateFrames(Lcom/google/android/exoplayer2/util/ParsableByteArray;IIZ)Z

    move-result v8

    if-nez v8, :cond_71

    .line 137
    # getter for: Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$Id3Header;->majorVersion:I
    invoke-static {v2}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$Id3Header;->access$000(Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$Id3Header;)I

    move-result v8

    const/4 v9, 0x4

    if-ne v8, v9, :cond_54

    const/4 v8, 0x1

    invoke-static {v1, v9, v5, v8}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->validateFrames(Lcom/google/android/exoplayer2/util/ParsableByteArray;IIZ)Z

    move-result v8

    if-eqz v8, :cond_54

    .line 138
    const/4 v7, 0x1

    goto :goto_71

    .line 140
    :cond_54
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to validate ID3 tag with majorVersion="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    # getter for: Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$Id3Header;->majorVersion:I
    invoke-static {v2}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$Id3Header;->access$000(Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$Id3Header;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "Id3Decoder"

    invoke-static {v9, v8}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    return-object v3

    .line 145
    :cond_71
    :goto_71
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v3

    if-lt v3, v5, :cond_88

    .line 147
    nop

    .line 149
    # getter for: Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$Id3Header;->majorVersion:I
    invoke-static {v2}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$Id3Header;->access$000(Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$Id3Header;)I

    move-result v3

    iget-object v8, p0, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->framePredicate:Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$FramePredicate;

    .line 148
    invoke-static {v3, v1, v7, v5, v8}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->decodeFrame(ILcom/google/android/exoplayer2/util/ParsableByteArray;ZILcom/google/android/exoplayer2/metadata/id3/Id3Decoder$FramePredicate;)Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;

    move-result-object v3

    .line 154
    .local v3, "frame":Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;
    if-eqz v3, :cond_87

    .line 155
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    .end local v3    # "frame":Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;
    :cond_87
    goto :goto_71

    .line 159
    :cond_88
    new-instance v3, Lcom/google/android/exoplayer2/metadata/Metadata;

    invoke-direct {v3, v0}, Lcom/google/android/exoplayer2/metadata/Metadata;-><init>(Ljava/util/List;)V

    return-object v3
.end method
