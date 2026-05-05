.class public final Lcom/google/android/exoplayer2/metadata/dvbsi/AppInfoTableDecoder;
.super Lcom/google/android/exoplayer2/metadata/SimpleMetadataDecoder;
.source "AppInfoTableDecoder.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final APPLICATION_INFORMATION_TABLE_ID:I = 0x74

.field private static final DESCRIPTOR_SIMPLE_APPLICATION_LOCATION:I = 0x15

.field private static final DESCRIPTOR_TRANSPORT_PROTOCOL:I = 0x2

.field private static final TRANSPORT_PROTOCOL_HTTP:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Lcom/google/android/exoplayer2/metadata/SimpleMetadataDecoder;-><init>()V

    return-void
.end method

.method private static parseAit(Lcom/google/android/exoplayer2/util/ParsableBitArray;)Lcom/google/android/exoplayer2/metadata/Metadata;
    .registers 21
    .param p0, "sectionData"    # Lcom/google/android/exoplayer2/util/ParsableBitArray;

    .line 66
    move-object/from16 v0, p0

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 67
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v2

    .line 68
    .local v2, "sectionLength":I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->getBytePosition()I

    move-result v3

    add-int/2addr v3, v2

    const/4 v4, 0x4

    sub-int/2addr v3, v4

    .line 72
    .local v3, "endOfSection":I
    const/16 v5, 0x2c

    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 74
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v5

    .line 78
    .local v5, "commonDescriptorsLength":I
    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBytes(I)V

    .line 81
    const/16 v6, 0x10

    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 83
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 84
    .local v7, "appInfoTables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/metadata/dvbsi/AppInfoTable;>;"
    :goto_28
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->getBytePosition()I

    move-result v8

    if-ge v8, v3, :cond_10a

    .line 85
    const/4 v8, 0x0

    .line 86
    .local v8, "urlBase":Ljava/lang/String;
    const/4 v9, 0x0

    .line 89
    .local v9, "urlExtension":Ljava/lang/String;
    const/16 v10, 0x30

    invoke-virtual {v0, v10}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 91
    const/16 v10, 0x8

    invoke-virtual {v0, v10}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v11

    .line 94
    .local v11, "controlCode":I
    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 96
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v12

    .line 97
    .local v12, "applicationDescriptorsLoopLength":I
    nop

    .line 98
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->getBytePosition()I

    move-result v13

    add-int/2addr v13, v12

    .line 99
    .local v13, "positionOfNextApplication":I
    :goto_48
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->getBytePosition()I

    move-result v14

    if-ge v14, v13, :cond_d9

    .line 100
    invoke-virtual {v0, v10}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v14

    .line 101
    .local v14, "descriptorTag":I
    invoke-virtual {v0, v10}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v15

    .line 102
    .local v15, "descriptorLength":I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->getBytePosition()I

    move-result v16

    add-int v1, v16, v15

    .line 104
    .local v1, "positionOfNextDescriptor":I
    const/4 v4, 0x2

    if-ne v14, v4, :cond_b4

    .line 106
    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v4

    .line 108
    .local v4, "protocolId":I
    invoke-virtual {v0, v10}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 110
    const/4 v6, 0x3

    if-ne v4, v6, :cond_ad

    .line 112
    :goto_69
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->getBytePosition()I

    move-result v6

    if-ge v6, v1, :cond_a6

    .line 113
    invoke-virtual {v0, v10}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v6

    .line 114
    .local v6, "urlBaseLength":I
    sget-object v10, Lcom/google/common/base/Charsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v6, v10}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBytesAsString(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v8

    .line 116
    move/from16 v17, v2

    const/16 v10, 0x8

    .end local v2    # "sectionLength":I
    .local v17, "sectionLength":I
    invoke-virtual {v0, v10}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v2

    .line 117
    .local v2, "extensionCount":I
    const/16 v18, 0x0

    move/from16 v10, v18

    .line 118
    .local v10, "urlExtensionIndex":I
    :goto_85
    if-ge v10, v2, :cond_9b

    .line 120
    move/from16 v18, v2

    move/from16 v19, v3

    const/16 v2, 0x8

    .end local v2    # "extensionCount":I
    .end local v3    # "endOfSection":I
    .local v18, "extensionCount":I
    .local v19, "endOfSection":I
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v3

    .line 121
    .local v3, "urlExtensionLength":I
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBytes(I)V

    .line 119
    .end local v3    # "urlExtensionLength":I
    add-int/lit8 v10, v10, 0x1

    move/from16 v2, v18

    move/from16 v3, v19

    goto :goto_85

    .line 118
    .end local v18    # "extensionCount":I
    .end local v19    # "endOfSection":I
    .restart local v2    # "extensionCount":I
    .local v3, "endOfSection":I
    :cond_9b
    move/from16 v18, v2

    move/from16 v19, v3

    const/16 v2, 0x8

    .line 123
    .end local v2    # "extensionCount":I
    .end local v3    # "endOfSection":I
    .end local v6    # "urlBaseLength":I
    .end local v10    # "urlExtensionIndex":I
    .restart local v19    # "endOfSection":I
    move/from16 v2, v17

    const/16 v10, 0x8

    goto :goto_69

    .line 112
    .end local v17    # "sectionLength":I
    .end local v19    # "endOfSection":I
    .local v2, "sectionLength":I
    .restart local v3    # "endOfSection":I
    :cond_a6
    move/from16 v17, v2

    move/from16 v19, v3

    const/16 v2, 0x8

    .end local v2    # "sectionLength":I
    .end local v3    # "endOfSection":I
    .restart local v17    # "sectionLength":I
    .restart local v19    # "endOfSection":I
    goto :goto_c6

    .line 110
    .end local v17    # "sectionLength":I
    .end local v19    # "endOfSection":I
    .restart local v2    # "sectionLength":I
    .restart local v3    # "endOfSection":I
    :cond_ad
    move/from16 v17, v2

    move/from16 v19, v3

    const/16 v2, 0x8

    .end local v2    # "sectionLength":I
    .end local v3    # "endOfSection":I
    .restart local v17    # "sectionLength":I
    .restart local v19    # "endOfSection":I
    goto :goto_c6

    .line 125
    .end local v4    # "protocolId":I
    .end local v17    # "sectionLength":I
    .end local v19    # "endOfSection":I
    .restart local v2    # "sectionLength":I
    .restart local v3    # "endOfSection":I
    :cond_b4
    move/from16 v17, v2

    move/from16 v19, v3

    const/16 v2, 0x8

    .end local v2    # "sectionLength":I
    .end local v3    # "endOfSection":I
    .restart local v17    # "sectionLength":I
    .restart local v19    # "endOfSection":I
    const/16 v3, 0x15

    if-ne v14, v3, :cond_c6

    .line 127
    sget-object v3, Lcom/google/common/base/Charsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v15, v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBytesAsString(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v3

    move-object v9, v3

    .end local v9    # "urlExtension":Ljava/lang/String;
    .local v3, "urlExtension":Ljava/lang/String;
    goto :goto_c7

    .line 125
    .end local v3    # "urlExtension":Ljava/lang/String;
    .restart local v9    # "urlExtension":Ljava/lang/String;
    :cond_c6
    :goto_c6
    nop

    .line 130
    :goto_c7
    mul-int/lit8 v3, v1, 0x8

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->setPosition(I)V

    .line 131
    .end local v1    # "positionOfNextDescriptor":I
    .end local v14    # "descriptorTag":I
    .end local v15    # "descriptorLength":I
    move/from16 v2, v17

    move/from16 v3, v19

    const/16 v1, 0xc

    const/4 v4, 0x4

    const/16 v6, 0x10

    const/16 v10, 0x8

    goto/16 :goto_48

    .line 133
    .end local v17    # "sectionLength":I
    .end local v19    # "endOfSection":I
    .restart local v2    # "sectionLength":I
    .local v3, "endOfSection":I
    :cond_d9
    move/from16 v17, v2

    move/from16 v19, v3

    .end local v2    # "sectionLength":I
    .end local v3    # "endOfSection":I
    .restart local v17    # "sectionLength":I
    .restart local v19    # "endOfSection":I
    mul-int/lit8 v1, v13, 0x8

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->setPosition(I)V

    .line 135
    if-eqz v8, :cond_ff

    if-eqz v9, :cond_ff

    .line 136
    new-instance v1, Lcom/google/android/exoplayer2/metadata/dvbsi/AppInfoTable;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v11, v2}, Lcom/google/android/exoplayer2/metadata/dvbsi/AppInfoTable;-><init>(ILjava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    .end local v8    # "urlBase":Ljava/lang/String;
    .end local v9    # "urlExtension":Ljava/lang/String;
    .end local v11    # "controlCode":I
    .end local v12    # "applicationDescriptorsLoopLength":I
    .end local v13    # "positionOfNextApplication":I
    :cond_ff
    move/from16 v2, v17

    move/from16 v3, v19

    const/16 v1, 0xc

    const/4 v4, 0x4

    const/16 v6, 0x10

    goto/16 :goto_28

    .line 140
    .end local v17    # "sectionLength":I
    .end local v19    # "endOfSection":I
    .restart local v2    # "sectionLength":I
    .restart local v3    # "endOfSection":I
    :cond_10a
    move/from16 v17, v2

    move/from16 v19, v3

    .end local v2    # "sectionLength":I
    .end local v3    # "endOfSection":I
    .restart local v17    # "sectionLength":I
    .restart local v19    # "endOfSection":I
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_116

    const/4 v1, 0x0

    goto :goto_11b

    :cond_116
    new-instance v1, Lcom/google/android/exoplayer2/metadata/Metadata;

    invoke-direct {v1, v7}, Lcom/google/android/exoplayer2/metadata/Metadata;-><init>(Ljava/util/List;)V

    :goto_11b
    return-object v1
.end method


# virtual methods
.method protected decode(Lcom/google/android/exoplayer2/metadata/MetadataInputBuffer;Ljava/nio/ByteBuffer;)Lcom/google/android/exoplayer2/metadata/Metadata;
    .registers 7
    .param p1, "inputBuffer"    # Lcom/google/android/exoplayer2/metadata/MetadataInputBuffer;
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;

    .line 57
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 58
    .local v0, "tableId":I
    const/16 v1, 0x74

    if-ne v0, v1, :cond_1a

    .line 59
    new-instance v1, Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;-><init>([BI)V

    invoke-static {v1}, Lcom/google/android/exoplayer2/metadata/dvbsi/AppInfoTableDecoder;->parseAit(Lcom/google/android/exoplayer2/util/ParsableBitArray;)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object v1

    goto :goto_1b

    .line 60
    :cond_1a
    const/4 v1, 0x0

    .line 58
    :goto_1b
    return-object v1
.end method
