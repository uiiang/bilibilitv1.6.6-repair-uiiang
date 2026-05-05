.class public final Lcom/google/android/exoplayer2/extractor/CeaUtil;
.super Ljava/lang/Object;
.source "CeaUtil.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final COUNTRY_CODE:I = 0xb5

.field private static final PAYLOAD_TYPE_CC:I = 0x4

.field private static final PROVIDER_CODE_ATSC:I = 0x31

.field private static final PROVIDER_CODE_DIRECTV:I = 0x2f

.field private static final TAG:Ljava/lang/String; = "CeaUtil"

.field public static final USER_DATA_IDENTIFIER_GA94:I = 0x47413934

.field public static final USER_DATA_TYPE_CODE_MPEG_CC:I = 0x3


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static consume(JLcom/google/android/exoplayer2/util/ParsableByteArray;[Lcom/google/android/exoplayer2/extractor/TrackOutput;)V
    .registers 16
    .param p0, "presentationTimeUs"    # J
    .param p2, "seiBuffer"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p3, "outputs"    # [Lcom/google/android/exoplayer2/extractor/TrackOutput;

    .line 53
    nop

    :goto_1
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_70

    .line 54
    invoke-static {p2}, Lcom/google/android/exoplayer2/extractor/CeaUtil;->readNon255TerminatedValue(Lcom/google/android/exoplayer2/util/ParsableByteArray;)I

    move-result v0

    .line 55
    .local v0, "payloadType":I
    invoke-static {p2}, Lcom/google/android/exoplayer2/extractor/CeaUtil;->readNon255TerminatedValue(Lcom/google/android/exoplayer2/util/ParsableByteArray;)I

    move-result v2

    .line 56
    .local v2, "payloadSize":I
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v3

    add-int/2addr v3, v2

    .line 58
    .local v3, "nextPayloadPosition":I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_61

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v4

    if-le v2, v4, :cond_1f

    goto :goto_61

    .line 62
    :cond_1f
    const/4 v4, 0x4

    if-ne v0, v4, :cond_6c

    const/16 v4, 0x8

    if-lt v2, v4, :cond_6c

    .line 63
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v4

    .line 64
    .local v4, "countryCode":I
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v5

    .line 65
    .local v5, "providerCode":I
    const/4 v6, 0x0

    .line 66
    .local v6, "userIdentifier":I
    const/16 v7, 0x31

    if-ne v5, v7, :cond_37

    .line 67
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v6

    .line 69
    :cond_37
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v8

    .line 70
    .local v8, "userDataTypeCode":I
    const/16 v9, 0x2f

    if-ne v5, v9, :cond_42

    .line 71
    invoke-virtual {p2, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 73
    :cond_42
    const/16 v10, 0xb5

    const/4 v11, 0x0

    if-ne v4, v10, :cond_50

    if-eq v5, v7, :cond_4b

    if-ne v5, v9, :cond_50

    :cond_4b
    const/4 v9, 0x3

    if-ne v8, v9, :cond_50

    const/4 v9, 0x1

    goto :goto_51

    :cond_50
    const/4 v9, 0x0

    .line 77
    .local v9, "messageIsSupportedCeaCaption":Z
    :goto_51
    if-ne v5, v7, :cond_5b

    .line 78
    const v7, 0x47413934

    if-ne v6, v7, :cond_59

    goto :goto_5a

    :cond_59
    const/4 v1, 0x0

    :goto_5a
    and-int/2addr v9, v1

    .line 80
    :cond_5b
    if-eqz v9, :cond_6c

    .line 81
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/CeaUtil;->consumeCcData(JLcom/google/android/exoplayer2/util/ParsableByteArray;[Lcom/google/android/exoplayer2/extractor/TrackOutput;)V

    goto :goto_6c

    .line 60
    .end local v4    # "countryCode":I
    .end local v5    # "providerCode":I
    .end local v6    # "userIdentifier":I
    .end local v8    # "userDataTypeCode":I
    .end local v9    # "messageIsSupportedCeaCaption":Z
    :cond_61
    :goto_61
    const-string v1, "CeaUtil"

    const-string v4, "Skipping remainder of malformed SEI NAL unit."

    invoke-static {v1, v4}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v3

    .line 84
    :cond_6c
    :goto_6c
    invoke-virtual {p2, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 85
    .end local v0    # "payloadType":I
    .end local v2    # "payloadSize":I
    .end local v3    # "nextPayloadPosition":I
    goto :goto_1

    .line 86
    :cond_70
    return-void
.end method

.method public static consumeCcData(JLcom/google/android/exoplayer2/util/ParsableByteArray;[Lcom/google/android/exoplayer2/extractor/TrackOutput;)V
    .registers 22
    .param p0, "presentationTimeUs"    # J
    .param p2, "ccDataBuffer"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p3, "outputs"    # [Lcom/google/android/exoplayer2/extractor/TrackOutput;

    .line 98
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    .line 99
    .local v2, "firstByte":I
    and-int/lit8 v3, v2, 0x40

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_10

    const/4 v3, 0x1

    goto :goto_11

    :cond_10
    const/4 v3, 0x0

    .line 100
    .local v3, "processCcDataFlag":Z
    :goto_11
    if-nez v3, :cond_14

    .line 102
    return-void

    .line 104
    :cond_14
    and-int/lit8 v6, v2, 0x1f

    .line 105
    .local v6, "ccCount":I
    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 108
    mul-int/lit8 v5, v6, 0x3

    .line 109
    .local v5, "sampleLength":I
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v14

    .line 110
    .local v14, "sampleStartPosition":I
    array-length v15, v1

    :goto_20
    if-ge v4, v15, :cond_48

    aget-object v13, v1, v4

    .line 111
    .local v13, "output":Lcom/google/android/exoplayer2/extractor/TrackOutput;
    invoke-virtual {v0, v14}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 112
    invoke-interface {v13, v0, v5}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V

    .line 113
    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v9, p0, v7

    if-eqz v9, :cond_43

    .line 114
    const/4 v10, 0x1

    const/4 v12, 0x0

    const/16 v16, 0x0

    move-object v7, v13

    move-wide/from16 v8, p0

    move v11, v5

    move-object/from16 v17, v13

    .end local v13    # "output":Lcom/google/android/exoplayer2/extractor/TrackOutput;
    .local v17, "output":Lcom/google/android/exoplayer2/extractor/TrackOutput;
    move-object/from16 v13, v16

    invoke-interface/range {v7 .. v13}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleMetadata(JIIILcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;)V

    goto :goto_45

    .line 113
    .end local v17    # "output":Lcom/google/android/exoplayer2/extractor/TrackOutput;
    .restart local v13    # "output":Lcom/google/android/exoplayer2/extractor/TrackOutput;
    :cond_43
    move-object/from16 v17, v13

    .line 110
    .end local v13    # "output":Lcom/google/android/exoplayer2/extractor/TrackOutput;
    :goto_45
    add-int/lit8 v4, v4, 0x1

    goto :goto_20

    .line 122
    :cond_48
    return-void
.end method

.method private static readNon255TerminatedValue(Lcom/google/android/exoplayer2/util/ParsableByteArray;)I
    .registers 4
    .param p0, "buffer"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 134
    const/4 v0, 0x0

    .line 136
    .local v0, "value":I
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v1

    if-nez v1, :cond_9

    .line 137
    const/4 v1, -0x1

    return v1

    .line 139
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    .line 140
    .local v1, "b":I
    add-int/2addr v0, v1

    .line 141
    const/16 v2, 0xff

    if-eq v1, v2, :cond_1

    .line 142
    return v0
.end method
