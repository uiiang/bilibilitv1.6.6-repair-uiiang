.class final Lcom/google/android/exoplayer2/extractor/mp4/Sniffer;
.super Ljava/lang/Object;
.source "Sniffer.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final BRAND_HEIC:I = 0x68656963

.field public static final BRAND_QUICKTIME:I = 0x71742020

.field private static final COMPATIBLE_BRANDS:[I

.field private static final SEARCH_LENGTH:I = 0x1000


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 43
    const/16 v0, 0x1d

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/google/android/exoplayer2/extractor/mp4/Sniffer;->COMPATIBLE_BRANDS:[I

    return-void

    :array_a
    .array-data 4
        0x69736f6d
        0x69736f32
        0x69736f33
        0x69736f34
        0x69736f35
        0x69736f36
        0x69736f39
        0x61766331
        0x68766331
        0x68657631
        0x61763031
        0x6d703431
        0x6d703432
        0x33673261
        0x33673262
        0x33677236
        0x33677336
        0x33676536
        0x33676736
        0x4d345620    # 1.89096448E8f
        0x4d344120    # 1.89010432E8f
        0x66347620
        0x6b646469
        0x4d345650
        0x71742020
        0x4d534e56    # 2.215704E8f
        0x64627931
        0x69736d6c
        0x70696666
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 234
    return-void
.end method

.method private static isCompatibleBrand(IZ)Z
    .registers 8
    .param p0, "brand"    # I
    .param p1, "acceptHeic"    # Z

    .line 218
    ushr-int/lit8 v0, p0, 0x8

    const v1, 0x336770

    const/4 v2, 0x1

    if-ne v0, v1, :cond_9

    .line 220
    return v2

    .line 221
    :cond_9
    const v0, 0x68656963

    if-ne p0, v0, :cond_11

    if-eqz p1, :cond_11

    .line 222
    return v2

    .line 224
    :cond_11
    sget-object v0, Lcom/google/android/exoplayer2/extractor/mp4/Sniffer;->COMPATIBLE_BRANDS:[I

    array-length v1, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_16
    if-ge v4, v1, :cond_20

    aget v5, v0, v4

    .line 225
    .local v5, "compatibleBrand":I
    if-ne v5, p0, :cond_1d

    .line 226
    return v2

    .line 224
    .end local v5    # "compatibleBrand":I
    :cond_1d
    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    .line 229
    :cond_20
    return v3
.end method

.method public static sniffFragmented(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z
    .registers 3
    .param p0, "input"    # Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 85
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/google/android/exoplayer2/extractor/mp4/Sniffer;->sniffInternal(Lcom/google/android/exoplayer2/extractor/ExtractorInput;ZZ)Z

    move-result v0

    return v0
.end method

.method private static sniffInternal(Lcom/google/android/exoplayer2/extractor/ExtractorInput;ZZ)Z
    .registers 25
    .param p0, "input"    # Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    .param p1, "fragmented"    # Z
    .param p2, "acceptHeic"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 116
    move-object/from16 v0, p0

    invoke-interface/range {p0 .. p0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getLength()J

    move-result-wide v1

    .line 119
    .local v1, "inputLength":J
    const-wide/16 v3, 0x1000

    const-wide/16 v5, -0x1

    cmp-long v7, v1, v5

    if-eqz v7, :cond_15

    cmp-long v7, v1, v3

    if-lez v7, :cond_13

    goto :goto_15

    .line 121
    :cond_13
    move-wide v3, v1

    goto :goto_16

    .line 120
    :cond_15
    :goto_15
    nop

    .line 121
    :goto_16
    long-to-int v4, v3

    .line 123
    .local v4, "bytesToSearch":I
    new-instance v3, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/16 v7, 0x40

    invoke-direct {v3, v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    .line 124
    .local v3, "buffer":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    const/4 v7, 0x0

    .line 125
    .local v7, "bytesSearched":I
    const/4 v8, 0x0

    .line 126
    .local v8, "foundGoodFileType":Z
    const/4 v9, 0x0

    .line 127
    .local v9, "isFragmented":Z
    :goto_21
    const/4 v10, 0x1

    const/4 v11, 0x0

    if-ge v7, v4, :cond_113

    .line 129
    const/16 v12, 0x8

    .line 130
    .local v12, "headerSize":I
    invoke-virtual {v3, v12}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset(I)V

    .line 131
    nop

    .line 132
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v13

    invoke-interface {v0, v13, v11, v12, v10}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BIIZ)Z

    move-result v13

    .line 133
    .local v13, "success":Z
    if-nez v13, :cond_3c

    .line 135
    move/from16 v6, p2

    move-wide/from16 v18, v1

    const/4 v5, 0x0

    goto/16 :goto_118

    .line 137
    :cond_3c
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v14

    .line 138
    .local v14, "atomSize":J
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v10

    .line 139
    .local v10, "atomType":I
    const-wide/16 v16, 0x1

    const/16 v11, 0x8

    cmp-long v18, v14, v16

    if-nez v18, :cond_60

    .line 141
    const/16 v12, 0x10

    .line 142
    nop

    .line 143
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v5

    .line 142
    invoke-interface {v0, v5, v11, v11}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 144
    const/16 v5, 0x10

    invoke-virtual {v3, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setLimit(I)V

    .line 145
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLong()J

    move-result-wide v14

    goto :goto_7e

    .line 146
    :cond_60
    const-wide/16 v5, 0x0

    cmp-long v18, v14, v5

    if-nez v18, :cond_7e

    .line 148
    invoke-interface/range {p0 .. p0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getLength()J

    move-result-wide v5

    .line 149
    .local v5, "fileEndPosition":J
    const-wide/16 v16, -0x1

    cmp-long v18, v5, v16

    if-eqz v18, :cond_7c

    .line 150
    invoke-interface/range {p0 .. p0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPeekPosition()J

    move-result-wide v18

    sub-long v18, v5, v18

    move-wide/from16 v20, v5

    .end local v5    # "fileEndPosition":J
    .local v20, "fileEndPosition":J
    int-to-long v5, v12

    add-long v14, v18, v5

    goto :goto_7e

    .line 149
    .end local v20    # "fileEndPosition":J
    .restart local v5    # "fileEndPosition":J
    :cond_7c
    move-wide/from16 v20, v5

    .line 154
    .end local v5    # "fileEndPosition":J
    :cond_7e
    :goto_7e
    int-to-long v5, v12

    cmp-long v18, v14, v5

    if-gez v18, :cond_85

    .line 156
    const/4 v5, 0x0

    return v5

    .line 158
    :cond_85
    add-int/2addr v7, v12

    .line 160
    const v5, 0x6d6f6f76

    if-ne v10, v5, :cond_9f

    .line 163
    long-to-int v5, v14

    add-int/2addr v4, v5

    .line 164
    const-wide/16 v5, -0x1

    cmp-long v11, v1, v5

    if-eqz v11, :cond_9c

    int-to-long v5, v4

    cmp-long v11, v5, v1

    if-lez v11, :cond_9c

    .line 166
    long-to-int v4, v1

    const-wide/16 v5, -0x1

    goto :goto_21

    .line 127
    .end local v10    # "atomType":I
    .end local v12    # "headerSize":I
    .end local v13    # "success":Z
    .end local v14    # "atomSize":J
    :cond_9c
    const-wide/16 v5, -0x1

    goto :goto_21

    .line 172
    .restart local v10    # "atomType":I
    .restart local v12    # "headerSize":I
    .restart local v13    # "success":Z
    .restart local v14    # "atomSize":J
    :cond_9f
    const v5, 0x6d6f6f66

    if-eq v10, v5, :cond_10c

    const v5, 0x6d766578

    if-ne v10, v5, :cond_b0

    move/from16 v6, p2

    move-wide/from16 v18, v1

    const/4 v5, 0x0

    goto/16 :goto_111

    .line 178
    :cond_b0
    int-to-long v5, v7

    add-long/2addr v5, v14

    move-wide/from16 v18, v1

    .end local v1    # "inputLength":J
    .local v18, "inputLength":J
    int-to-long v1, v12

    sub-long/2addr v5, v1

    int-to-long v1, v4

    cmp-long v20, v5, v1

    if-ltz v20, :cond_bf

    .line 180
    move/from16 v6, p2

    const/4 v5, 0x0

    goto :goto_118

    .line 183
    :cond_bf
    int-to-long v1, v12

    sub-long v1, v14, v1

    long-to-int v2, v1

    .line 184
    .local v2, "atomDataSize":I
    add-int/2addr v7, v2

    .line 185
    const v1, 0x66747970

    if-ne v10, v1, :cond_ff

    .line 187
    if-ge v2, v11, :cond_cd

    .line 188
    const/4 v1, 0x0

    return v1

    .line 190
    :cond_cd
    const/4 v1, 0x0

    invoke-virtual {v3, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset(I)V

    .line 191
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v5

    invoke-interface {v0, v5, v1, v2}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 192
    div-int/lit8 v1, v2, 0x4

    .line 193
    .local v1, "brandsCount":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_db
    if-ge v5, v1, :cond_f8

    .line 194
    const/4 v6, 0x1

    if-ne v5, v6, :cond_e7

    .line 196
    const/4 v11, 0x4

    invoke-virtual {v3, v11}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    move/from16 v6, p2

    goto :goto_f5

    .line 197
    :cond_e7
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v11

    move/from16 v6, p2

    invoke-static {v11, v6}, Lcom/google/android/exoplayer2/extractor/mp4/Sniffer;->isCompatibleBrand(IZ)Z

    move-result v11

    if-eqz v11, :cond_f5

    .line 198
    const/4 v8, 0x1

    .line 199
    goto :goto_fa

    .line 193
    :cond_f5
    :goto_f5
    add-int/lit8 v5, v5, 0x1

    goto :goto_db

    :cond_f8
    move/from16 v6, p2

    .line 202
    .end local v5    # "i":I
    :goto_fa
    if-nez v8, :cond_fe

    .line 204
    const/4 v5, 0x0

    return v5

    .line 206
    .end local v1    # "brandsCount":I
    :cond_fe
    goto :goto_106

    :cond_ff
    move/from16 v6, p2

    if-eqz v2, :cond_fe

    .line 208
    invoke-interface {v0, v2}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->advancePeekPosition(I)V

    .line 210
    .end local v2    # "atomDataSize":I
    .end local v10    # "atomType":I
    .end local v12    # "headerSize":I
    .end local v13    # "success":Z
    .end local v14    # "atomSize":J
    :goto_106
    move-wide/from16 v1, v18

    const-wide/16 v5, -0x1

    goto/16 :goto_21

    .line 172
    .end local v18    # "inputLength":J
    .local v1, "inputLength":J
    .restart local v10    # "atomType":I
    .restart local v12    # "headerSize":I
    .restart local v13    # "success":Z
    .restart local v14    # "atomSize":J
    :cond_10c
    move/from16 v6, p2

    move-wide/from16 v18, v1

    const/4 v5, 0x0

    .line 174
    .end local v1    # "inputLength":J
    .restart local v18    # "inputLength":J
    :goto_111
    const/4 v9, 0x1

    .line 175
    goto :goto_118

    .line 127
    .end local v10    # "atomType":I
    .end local v12    # "headerSize":I
    .end local v13    # "success":Z
    .end local v14    # "atomSize":J
    .end local v18    # "inputLength":J
    .restart local v1    # "inputLength":J
    :cond_113
    move/from16 v6, p2

    move-wide/from16 v18, v1

    const/4 v5, 0x0

    .line 211
    .end local v1    # "inputLength":J
    .restart local v18    # "inputLength":J
    :goto_118
    if-eqz v8, :cond_120

    move/from16 v1, p1

    if-ne v1, v9, :cond_122

    const/4 v10, 0x1

    goto :goto_123

    :cond_120
    move/from16 v1, p1

    :cond_122
    const/4 v10, 0x0

    :goto_123
    return v10
.end method

.method public static sniffUnfragmented(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z
    .registers 2
    .param p0, "input"    # Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 97
    const/4 v0, 0x0

    invoke-static {p0, v0, v0}, Lcom/google/android/exoplayer2/extractor/mp4/Sniffer;->sniffInternal(Lcom/google/android/exoplayer2/extractor/ExtractorInput;ZZ)Z

    move-result v0

    return v0
.end method

.method public static sniffUnfragmented(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Z)Z
    .registers 3
    .param p0, "input"    # Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    .param p1, "acceptHeic"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 111
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/google/android/exoplayer2/extractor/mp4/Sniffer;->sniffInternal(Lcom/google/android/exoplayer2/extractor/ExtractorInput;ZZ)Z

    move-result v0

    return v0
.end method
