.class public final Lcom/google/android/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory;
.super Ljava/lang/Object;
.source "DefaultTsPayloadReaderFactory.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$Factory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory$Flags;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final DESCRIPTOR_TAG_CAPTION_SERVICE:I = 0x86

.field public static final FLAG_ALLOW_NON_IDR_KEYFRAMES:I = 0x1

.field public static final FLAG_DETECT_ACCESS_UNITS:I = 0x8

.field public static final FLAG_ENABLE_HDMV_DTS_AUDIO_STREAMS:I = 0x40

.field public static final FLAG_IGNORE_AAC_STREAM:I = 0x2

.field public static final FLAG_IGNORE_H264_STREAM:I = 0x4

.field public static final FLAG_IGNORE_SPLICE_INFO_STREAM:I = 0x10

.field public static final FLAG_OVERRIDE_CAPTION_DESCRIPTORS:I = 0x20


# instance fields
.field private final closedCaptionFormats:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/Format;",
            ">;"
        }
    .end annotation
.end field

.field private final flags:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 117
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory;-><init>(I)V

    .line 118
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .param p1, "flags"    # I

    .line 125
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory;-><init>(ILjava/util/List;)V

    .line 126
    return-void
.end method

.method public constructor <init>(ILjava/util/List;)V
    .registers 3
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/Format;",
            ">;)V"
        }
    .end annotation

    .line 138
    .local p2, "closedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/Format;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory;->flags:I

    .line 140
    iput-object p2, p0, Lcom/google/android/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory;->closedCaptionFormats:Ljava/util/List;

    .line 141
    return-void
.end method

.method private buildSeiReader(Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;)Lcom/google/android/exoplayer2/extractor/ts/SeiReader;
    .registers 4
    .param p1, "esInfo"    # Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;

    .line 215
    new-instance v0, Lcom/google/android/exoplayer2/extractor/ts/SeiReader;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory;->getClosedCaptionFormats(Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/extractor/ts/SeiReader;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method private buildUserDataReader(Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;)Lcom/google/android/exoplayer2/extractor/ts/UserDataReader;
    .registers 4
    .param p1, "esInfo"    # Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;

    .line 228
    new-instance v0, Lcom/google/android/exoplayer2/extractor/ts/UserDataReader;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory;->getClosedCaptionFormats(Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/extractor/ts/UserDataReader;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method private getClosedCaptionFormats(Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;)Ljava/util/List;
    .registers 21
    .param p1, "esInfo"    # Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/Format;",
            ">;"
        }
    .end annotation

    .line 241
    move-object/from16 v0, p0

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory;->isSet(I)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 242
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory;->closedCaptionFormats:Ljava/util/List;

    return-object v1

    .line 244
    :cond_d
    new-instance v1, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    move-object/from16 v2, p1

    iget-object v3, v2, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;->descriptorBytes:[B

    invoke-direct {v1, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>([B)V

    .line 245
    .local v1, "scratchDescriptorData":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory;->closedCaptionFormats:Ljava/util/List;

    .line 246
    .local v3, "closedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/Format;>;"
    :goto_18
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v4

    if-lez v4, :cond_a2

    .line 247
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v4

    .line 248
    .local v4, "descriptorTag":I
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v5

    .line 249
    .local v5, "descriptorLength":I
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v6

    add-int/2addr v6, v5

    .line 250
    .local v6, "nextDescriptorPosition":I
    const/16 v7, 0x86

    if-ne v4, v7, :cond_9b

    .line 252
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v7

    .line 253
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v7

    and-int/lit8 v7, v7, 0x1f

    .line 254
    .local v7, "numberOfServices":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_3c
    if-ge v8, v7, :cond_9b

    .line 255
    const/4 v9, 0x3

    invoke-virtual {v1, v9}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    move-result-object v9

    .line 256
    .local v9, "language":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v10

    .line 257
    .local v10, "captionTypeByte":I
    and-int/lit16 v11, v10, 0x80

    const/4 v13, 0x1

    if-eqz v11, :cond_4e

    const/4 v11, 0x1

    goto :goto_4f

    :cond_4e
    const/4 v11, 0x0

    .line 260
    .local v11, "isDigital":Z
    :goto_4f
    if-eqz v11, :cond_56

    .line 261
    const-string v14, "application/cea-708"

    .line 262
    .local v14, "mimeType":Ljava/lang/String;
    and-int/lit8 v15, v10, 0x3f

    .local v15, "accessibilityChannel":I
    goto :goto_59

    .line 264
    .end local v14    # "mimeType":Ljava/lang/String;
    .end local v15    # "accessibilityChannel":I
    :cond_56
    const-string v14, "application/cea-608"

    .line 265
    .restart local v14    # "mimeType":Ljava/lang/String;
    const/4 v15, 0x1

    .line 269
    .restart local v15    # "accessibilityChannel":I
    :goto_59
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v12

    int-to-byte v12, v12

    .line 271
    .local v12, "flags":B
    invoke-virtual {v1, v13}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 273
    const/16 v17, 0x0

    .line 275
    .local v17, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    if-eqz v11, :cond_78

    .line 276
    and-int/lit8 v18, v12, 0x40

    if-eqz v18, :cond_6c

    const/16 v16, 0x1

    goto :goto_6e

    :cond_6c
    const/16 v16, 0x0

    :goto_6e
    move/from16 v13, v16

    .line 277
    .local v13, "isWideAspectRatio":Z
    nop

    .line 278
    invoke-static {v13}, Lcom/google/android/exoplayer2/util/CodecSpecificDataUtil;->buildCea708InitializationData(Z)Ljava/util/List;

    move-result-object v17

    move-object/from16 v13, v17

    goto :goto_7a

    .line 275
    .end local v13    # "isWideAspectRatio":Z
    :cond_78
    move-object/from16 v13, v17

    .line 281
    .end local v17    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .local v13, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    :goto_7a
    new-instance v0, Lcom/google/android/exoplayer2/Format$Builder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/Format$Builder;-><init>()V

    .line 283
    invoke-virtual {v0, v14}, Lcom/google/android/exoplayer2/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    .line 284
    invoke-virtual {v0, v9}, Lcom/google/android/exoplayer2/Format$Builder;->setLanguage(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    .line 285
    invoke-virtual {v0, v15}, Lcom/google/android/exoplayer2/Format$Builder;->setAccessibilityChannel(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    .line 286
    invoke-virtual {v0, v13}, Lcom/google/android/exoplayer2/Format$Builder;->setInitializationData(Ljava/util/List;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    .line 287
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    .line 281
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 254
    .end local v9    # "language":Ljava/lang/String;
    .end local v10    # "captionTypeByte":I
    .end local v11    # "isDigital":Z
    .end local v12    # "flags":B
    .end local v13    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .end local v14    # "mimeType":Ljava/lang/String;
    .end local v15    # "accessibilityChannel":I
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, p0

    goto :goto_3c

    .line 292
    .end local v7    # "numberOfServices":I
    .end local v8    # "i":I
    :cond_9b
    invoke-virtual {v1, v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 293
    .end local v4    # "descriptorTag":I
    .end local v5    # "descriptorLength":I
    .end local v6    # "nextDescriptorPosition":I
    move-object/from16 v0, p0

    goto/16 :goto_18

    .line 295
    :cond_a2
    return-object v3
.end method

.method private isSet(I)Z
    .registers 3
    .param p1, "flag"    # I

    .line 299
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory;->flags:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method


# virtual methods
.method public createInitialPayloadReaders()Landroid/util/SparseArray;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader;",
            ">;"
        }
    .end annotation

    .line 145
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    return-object v0
.end method

.method public createPayloadReader(ILcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;)Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader;
    .registers 8
    .param p1, "streamType"    # I
    .param p2, "esInfo"    # Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;

    .line 151
    const/4 v0, 0x2

    const/4 v1, 0x0

    sparse-switch p1, :sswitch_data_f6

    .line 201
    return-object v1

    .line 199
    :sswitch_6
    new-instance v0, Lcom/google/android/exoplayer2/extractor/ts/SectionReader;

    new-instance v1, Lcom/google/android/exoplayer2/extractor/ts/PassthroughSectionPayloadReader;

    const-string v2, "application/vnd.dvb.ait"

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/extractor/ts/PassthroughSectionPayloadReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/extractor/ts/SectionReader;-><init>(Lcom/google/android/exoplayer2/extractor/ts/SectionPayloadReader;)V

    return-object v0

    .line 167
    :sswitch_13
    new-instance v0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;

    new-instance v1, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;

    iget-object v2, p2, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;->language:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/extractor/ts/PesReader;-><init>(Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;)V

    return-object v0

    .line 191
    :sswitch_20
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory;->isSet(I)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 192
    goto :goto_35

    .line 193
    :cond_29
    new-instance v1, Lcom/google/android/exoplayer2/extractor/ts/SectionReader;

    new-instance v0, Lcom/google/android/exoplayer2/extractor/ts/PassthroughSectionPayloadReader;

    const-string v2, "application/x-scte35"

    invoke-direct {v0, v2}, Lcom/google/android/exoplayer2/extractor/ts/PassthroughSectionPayloadReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/extractor/ts/SectionReader;-><init>(Lcom/google/android/exoplayer2/extractor/ts/SectionPayloadReader;)V

    .line 191
    :goto_35
    return-object v1

    .line 169
    :sswitch_36
    const/16 v0, 0x40

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory;->isSet(I)Z

    move-result v0

    if-nez v0, :cond_3f

    .line 170
    return-object v1

    .line 174
    :cond_3f
    :sswitch_3f
    new-instance v0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;

    new-instance v1, Lcom/google/android/exoplayer2/extractor/ts/DtsReader;

    iget-object v2, p2, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;->language:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/extractor/ts/DtsReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/extractor/ts/PesReader;-><init>(Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;)V

    return-object v0

    .line 165
    :sswitch_4c
    new-instance v0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;

    new-instance v1, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;

    iget-object v2, p2, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;->language:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/extractor/ts/PesReader;-><init>(Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;)V

    return-object v0

    .line 197
    :sswitch_59
    new-instance v0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;

    new-instance v1, Lcom/google/android/exoplayer2/extractor/ts/DvbSubtitleReader;

    iget-object v2, p2, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;->dvbSubtitleInfos:Ljava/util/List;

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/extractor/ts/DvbSubtitleReader;-><init>(Ljava/util/List;)V

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/extractor/ts/PesReader;-><init>(Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;)V

    return-object v0

    .line 189
    :sswitch_66
    new-instance v0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;

    new-instance v1, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;

    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory;->buildSeiReader(Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;)Lcom/google/android/exoplayer2/extractor/ts/SeiReader;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;-><init>(Lcom/google/android/exoplayer2/extractor/ts/SeiReader;)V

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/extractor/ts/PesReader;-><init>(Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;)V

    return-object v0

    .line 181
    :sswitch_75
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory;->isSet(I)Z

    move-result v0

    if-eqz v0, :cond_7d

    .line 182
    goto :goto_96

    .line 183
    :cond_7d
    new-instance v1, Lcom/google/android/exoplayer2/extractor/ts/PesReader;

    new-instance v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;

    .line 185
    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory;->buildSeiReader(Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;)Lcom/google/android/exoplayer2/extractor/ts/SeiReader;

    move-result-object v2

    .line 186
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/google/android/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory;->isSet(I)Z

    move-result v3

    .line 187
    const/16 v4, 0x8

    invoke-direct {p0, v4}, Lcom/google/android/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory;->isSet(I)Z

    move-result v4

    invoke-direct {v0, v2, v3, v4}, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;-><init>(Lcom/google/android/exoplayer2/extractor/ts/SeiReader;ZZ)V

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/extractor/ts/PesReader;-><init>(Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;)V

    .line 181
    :goto_96
    return-object v1

    .line 195
    :sswitch_97
    new-instance v0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;

    new-instance v1, Lcom/google/android/exoplayer2/extractor/ts/Id3Reader;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/extractor/ts/Id3Reader;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/extractor/ts/PesReader;-><init>(Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;)V

    return-object v0

    .line 160
    :sswitch_a2
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory;->isSet(I)Z

    move-result v0

    if-eqz v0, :cond_a9

    .line 161
    goto :goto_b5

    .line 162
    :cond_a9
    new-instance v1, Lcom/google/android/exoplayer2/extractor/ts/PesReader;

    new-instance v0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;

    iget-object v2, p2, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;->language:Ljava/lang/String;

    invoke-direct {v0, v2}, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/extractor/ts/PesReader;-><init>(Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;)V

    .line 160
    :goto_b5
    return-object v1

    .line 179
    :sswitch_b6
    new-instance v0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;

    new-instance v1, Lcom/google/android/exoplayer2/extractor/ts/H263Reader;

    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory;->buildUserDataReader(Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;)Lcom/google/android/exoplayer2/extractor/ts/UserDataReader;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/extractor/ts/H263Reader;-><init>(Lcom/google/android/exoplayer2/extractor/ts/UserDataReader;)V

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/extractor/ts/PesReader;-><init>(Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;)V

    return-object v0

    .line 156
    :sswitch_c5
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory;->isSet(I)Z

    move-result v0

    if-eqz v0, :cond_cc

    .line 157
    goto :goto_d9

    .line 158
    :cond_cc
    new-instance v1, Lcom/google/android/exoplayer2/extractor/ts/PesReader;

    new-instance v0, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;

    const/4 v2, 0x0

    iget-object v3, p2, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;->language:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;-><init>(ZLjava/lang/String;)V

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/extractor/ts/PesReader;-><init>(Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;)V

    .line 156
    :goto_d9
    return-object v1

    .line 154
    :sswitch_da
    new-instance v0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;

    new-instance v1, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;

    iget-object v2, p2, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;->language:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/extractor/ts/PesReader;-><init>(Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;)V

    return-object v0

    .line 177
    :sswitch_e7
    new-instance v0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;

    new-instance v1, Lcom/google/android/exoplayer2/extractor/ts/H262Reader;

    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory;->buildUserDataReader(Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;)Lcom/google/android/exoplayer2/extractor/ts/UserDataReader;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/extractor/ts/H262Reader;-><init>(Lcom/google/android/exoplayer2/extractor/ts/UserDataReader;)V

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/extractor/ts/PesReader;-><init>(Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;)V

    return-object v0

    :sswitch_data_f6
    .sparse-switch
        0x2 -> :sswitch_e7
        0x3 -> :sswitch_da
        0x4 -> :sswitch_da
        0xf -> :sswitch_c5
        0x10 -> :sswitch_b6
        0x11 -> :sswitch_a2
        0x15 -> :sswitch_97
        0x1b -> :sswitch_75
        0x24 -> :sswitch_66
        0x59 -> :sswitch_59
        0x80 -> :sswitch_e7
        0x81 -> :sswitch_4c
        0x82 -> :sswitch_36
        0x86 -> :sswitch_20
        0x87 -> :sswitch_4c
        0x8a -> :sswitch_3f
        0xac -> :sswitch_13
        0x101 -> :sswitch_6
    .end sparse-switch
.end method
