.class public final Lcom/google/android/exoplayer2/extractor/ts/H263Reader;
.super Ljava/lang/Object;
.source "H263Reader.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/ts/H263Reader$CsdBuffer;,
        Lcom/google/android/exoplayer2/extractor/ts/H263Reader$SampleReader;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final PIXEL_WIDTH_HEIGHT_RATIO_BY_ASPECT_RATIO_INFO:[F

.field private static final START_CODE_VALUE_GROUP_OF_VOP:I = 0xb3

.field private static final START_CODE_VALUE_MAX_VIDEO_OBJECT:I = 0x1f

.field private static final START_CODE_VALUE_UNSET:I = -0x1

.field private static final START_CODE_VALUE_USER_DATA:I = 0xb2

.field private static final START_CODE_VALUE_VISUAL_OBJECT:I = 0xb5

.field private static final START_CODE_VALUE_VISUAL_OBJECT_SEQUENCE:I = 0xb0

.field private static final START_CODE_VALUE_VOP:I = 0xb6

.field private static final TAG:Ljava/lang/String; = "H263Reader"

.field private static final VIDEO_OBJECT_LAYER_SHAPE_RECTANGULAR:I


# instance fields
.field private final csdBuffer:Lcom/google/android/exoplayer2/extractor/ts/H263Reader$CsdBuffer;

.field private formatId:Ljava/lang/String;

.field private hasOutputFormat:Z

.field private output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

.field private pesTimeUs:J

.field private final prefixFlags:[Z

.field private sampleReader:Lcom/google/android/exoplayer2/extractor/ts/H263Reader$SampleReader;

.field private totalBytesWritten:J

.field private final userData:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

.field private final userDataParsable:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field private final userDataReader:Lcom/google/android/exoplayer2/extractor/ts/UserDataReader;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 66
    const/4 v0, 0x7

    new-array v0, v0, [F

    fill-array-data v0, :array_a

    sput-object v0, Lcom/google/android/exoplayer2/extractor/ts/H263Reader;->PIXEL_WIDTH_HEIGHT_RATIO_BY_ASPECT_RATIO_INFO:[F

    return-void

    nop

    :array_a
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f8ba2e9
        0x3f68ba2f
        0x3fba2e8c
        0x3f9b26ca
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    .line 92
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/extractor/ts/H263Reader;-><init>(Lcom/google/android/exoplayer2/extractor/ts/UserDataReader;)V

    .line 93
    return-void
.end method

.method constructor <init>(Lcom/google/android/exoplayer2/extractor/ts/UserDataReader;)V
    .registers 6
    .param p1, "userDataReader"    # Lcom/google/android/exoplayer2/extractor/ts/UserDataReader;

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/H263Reader;->userDataReader:Lcom/google/android/exoplayer2/extractor/ts/UserDataReader;

    .line 97
    const/4 v0, 0x4

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H263Reader;->prefixFlags:[Z

    .line 98
    new-instance v0, Lcom/google/android/exoplayer2/extractor/ts/H263Reader$CsdBuffer;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/extractor/ts/H263Reader$CsdBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H263Reader;->csdBuffer:Lcom/google/android/exoplayer2/extractor/ts/H263Reader$CsdBuffer;

    .line 99
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v2, p0, Lcom/google/android/exoplayer2/extractor/ts/H263Reader;->pesTimeUs:J

    .line 100
    if-eqz p1, :cond_2d

    .line 101
    new-instance v0, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    const/16 v2, 0xb2

    invoke-direct {v0, v2, v1}, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;-><init>(II)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H263Reader;->userData:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    .line 102
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H263Reader;->userDataParsable:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    goto :goto_32

    .line 104
    :cond_2d
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H263Reader;->userData:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    .line 105
    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H263Reader;->userDataParsable:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 107
    :goto_32
    return-void
.end method

.method private static parseCsdBuffer(Lcom/google/android/exoplayer2/extractor/ts/H263Reader$CsdBuffer;ILjava/lang/String;)Lcom/google/android/exoplayer2/Format;
    .registers 13
    .param p0, "csdBuffer"    # Lcom/google/android/exoplayer2/extractor/ts/H263Reader$CsdBuffer;
    .param p1, "volStartPosition"    # I
    .param p2, "formatId"    # Ljava/lang/String;

    .line 237
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H263Reader$CsdBuffer;->data:[B

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/ts/H263Reader$CsdBuffer;->length:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    .line 238
    .local v0, "csdData":[B
    new-instance v1, Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;-><init>([B)V

    .line 239
    .local v1, "buffer":Lcom/google/android/exoplayer2/util/ParsableBitArray;
    invoke-virtual {v1, p1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBytes(I)V

    .line 242
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBytes(I)V

    .line 243
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBit()V

    .line 244
    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 245
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v4

    const/4 v5, 0x3

    if-eqz v4, :cond_29

    .line 246
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 247
    invoke-virtual {v1, v5}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 250
    :cond_29
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v2

    .line 251
    .local v2, "aspectRatioInfo":I
    const-string v4, "Invalid aspect ratio"

    const-string v6, "H263Reader"

    const/16 v7, 0xf

    if-ne v2, v7, :cond_49

    .line 252
    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v8

    .line 253
    .local v8, "parWidth":I
    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v3

    .line 254
    .local v3, "parHeight":I
    if-nez v3, :cond_45

    .line 255
    invoke-static {v6, v4}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    const/high16 v4, 0x3f800000    # 1.0f

    .local v4, "pixelWidthHeightRatio":F
    goto :goto_48

    .line 258
    .end local v4    # "pixelWidthHeightRatio":F
    :cond_45
    int-to-float v4, v8

    int-to-float v9, v3

    div-float/2addr v4, v9

    .line 260
    .end local v3    # "parHeight":I
    .end local v8    # "parWidth":I
    .restart local v4    # "pixelWidthHeightRatio":F
    :goto_48
    goto :goto_56

    .end local v4    # "pixelWidthHeightRatio":F
    :cond_49
    sget-object v3, Lcom/google/android/exoplayer2/extractor/ts/H263Reader;->PIXEL_WIDTH_HEIGHT_RATIO_BY_ASPECT_RATIO_INFO:[F

    array-length v8, v3

    if-ge v2, v8, :cond_51

    .line 261
    aget v4, v3, v2

    .restart local v4    # "pixelWidthHeightRatio":F
    goto :goto_56

    .line 263
    .end local v4    # "pixelWidthHeightRatio":F
    :cond_51
    invoke-static {v6, v4}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    const/high16 v4, 0x3f800000    # 1.0f

    .line 266
    .restart local v4    # "pixelWidthHeightRatio":F
    :goto_56
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v3

    const/4 v8, 0x2

    if-eqz v3, :cond_8d

    .line 267
    invoke-virtual {v1, v8}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 268
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 269
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v3

    if-eqz v3, :cond_8d

    .line 270
    invoke-virtual {v1, v7}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 271
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBit()V

    .line 272
    invoke-virtual {v1, v7}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 273
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBit()V

    .line 274
    invoke-virtual {v1, v7}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 275
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBit()V

    .line 276
    invoke-virtual {v1, v5}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 277
    const/16 v3, 0xb

    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 278
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBit()V

    .line 279
    invoke-virtual {v1, v7}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 280
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBit()V

    .line 283
    :cond_8d
    invoke-virtual {v1, v8}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v3

    .line 284
    .local v3, "videoObjectLayerShape":I
    if-eqz v3, :cond_98

    .line 285
    const-string v5, "Unhandled video object layer shape"

    invoke-static {v6, v5}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    :cond_98
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBit()V

    .line 288
    const/16 v5, 0x10

    invoke-virtual {v1, v5}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v5

    .line 289
    .local v5, "vopTimeIncrementResolution":I
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBit()V

    .line 290
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v7

    if-eqz v7, :cond_bf

    .line 291
    if-nez v5, :cond_b2

    .line 292
    const-string v7, "Invalid vop_increment_time_resolution"

    invoke-static {v6, v7}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_bf

    .line 294
    :cond_b2
    add-int/lit8 v5, v5, -0x1

    .line 295
    const/4 v6, 0x0

    .line 296
    .local v6, "numBits":I
    :goto_b5
    if-lez v5, :cond_bc

    .line 297
    add-int/lit8 v6, v6, 0x1

    .line 298
    shr-int/lit8 v5, v5, 0x1

    goto :goto_b5

    .line 300
    :cond_bc
    invoke-virtual {v1, v6}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 303
    .end local v6    # "numBits":I
    :cond_bf
    :goto_bf
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBit()V

    .line 304
    const/16 v6, 0xd

    invoke-virtual {v1, v6}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v7

    .line 305
    .local v7, "videoObjectLayerWidth":I
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBit()V

    .line 306
    invoke-virtual {v1, v6}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v6

    .line 307
    .local v6, "videoObjectLayerHeight":I
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBit()V

    .line 308
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBit()V

    .line 309
    new-instance v8, Lcom/google/android/exoplayer2/Format$Builder;

    invoke-direct {v8}, Lcom/google/android/exoplayer2/Format$Builder;-><init>()V

    .line 310
    invoke-virtual {v8, p2}, Lcom/google/android/exoplayer2/Format$Builder;->setId(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v8

    .line 311
    const-string v9, "video/mp4v-es"

    invoke-virtual {v8, v9}, Lcom/google/android/exoplayer2/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v8

    .line 312
    invoke-virtual {v8, v7}, Lcom/google/android/exoplayer2/Format$Builder;->setWidth(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v8

    .line 313
    invoke-virtual {v8, v6}, Lcom/google/android/exoplayer2/Format$Builder;->setHeight(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v8

    .line 314
    invoke-virtual {v8, v4}, Lcom/google/android/exoplayer2/Format$Builder;->setPixelWidthHeightRatio(F)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v8

    .line 315
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/google/android/exoplayer2/Format$Builder;->setInitializationData(Ljava/util/List;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v8

    .line 316
    invoke-virtual {v8}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object v8

    .line 309
    return-object v8
.end method


# virtual methods
.method public consume(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V
    .registers 15
    .param p1, "data"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 145
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H263Reader;->sampleReader:Lcom/google/android/exoplayer2/extractor/ts/H263Reader$SampleReader;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H263Reader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v0

    .line 148
    .local v0, "offset":I
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v1

    .line 149
    .local v1, "limit":I
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v2

    .line 152
    .local v2, "dataArray":[B
    iget-wide v3, p0, Lcom/google/android/exoplayer2/extractor/ts/H263Reader;->totalBytesWritten:J

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v5

    int-to-long v5, v5

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/google/android/exoplayer2/extractor/ts/H263Reader;->totalBytesWritten:J

    .line 153
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/ts/H263Reader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v4

    invoke-interface {v3, p1, v4}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V

    .line 156
    :goto_29
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/ts/H263Reader;->prefixFlags:[Z

    invoke-static {v2, v0, v1, v3}, Lcom/google/android/exoplayer2/util/NalUnitUtil;->findNalUnit([BII[Z)I

    move-result v3

    .line 158
    .local v3, "startCodeOffset":I
    if-ne v3, v1, :cond_47

    .line 160
    iget-boolean v4, p0, Lcom/google/android/exoplayer2/extractor/ts/H263Reader;->hasOutputFormat:Z

    if-nez v4, :cond_3a

    .line 161
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/ts/H263Reader;->csdBuffer:Lcom/google/android/exoplayer2/extractor/ts/H263Reader$CsdBuffer;

    invoke-virtual {v4, v2, v0, v1}, Lcom/google/android/exoplayer2/extractor/ts/H263Reader$CsdBuffer;->onData([BII)V

    .line 163
    :cond_3a
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/ts/H263Reader;->sampleReader:Lcom/google/android/exoplayer2/extractor/ts/H263Reader$SampleReader;

    invoke-virtual {v4, v2, v0, v1}, Lcom/google/android/exoplayer2/extractor/ts/H263Reader$SampleReader;->onData([BII)V

    .line 164
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/ts/H263Reader;->userData:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    if-eqz v4, :cond_46

    .line 165
    invoke-virtual {v4, v2, v0, v1}, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->appendToNalUnit([BII)V

    .line 167
    :cond_46
    return-void

    .line 171
    :cond_47
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v4

    add-int/lit8 v5, v3, 0x3

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    .line 174
    .local v4, "startCodeValue":I
    sub-int v5, v3, v0

    .line 176
    .local v5, "lengthToStartCode":I
    iget-boolean v6, p0, Lcom/google/android/exoplayer2/extractor/ts/H263Reader;->hasOutputFormat:Z

    const/4 v7, 0x1

    if-nez v6, :cond_83

    .line 177
    if-lez v5, :cond_5f

    .line 178
    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/ts/H263Reader;->csdBuffer:Lcom/google/android/exoplayer2/extractor/ts/H263Reader$CsdBuffer;

    invoke-virtual {v6, v2, v0, v3}, Lcom/google/android/exoplayer2/extractor/ts/H263Reader$CsdBuffer;->onData([BII)V

    .line 182
    :cond_5f
    if-gez v5, :cond_63

    neg-int v6, v5

    goto :goto_64

    :cond_63
    const/4 v6, 0x0

    .line 183
    .local v6, "bytesAlreadyPassed":I
    :goto_64
    iget-object v8, p0, Lcom/google/android/exoplayer2/extractor/ts/H263Reader;->csdBuffer:Lcom/google/android/exoplayer2/extractor/ts/H263Reader$CsdBuffer;

    invoke-virtual {v8, v4, v6}, Lcom/google/android/exoplayer2/extractor/ts/H263Reader$CsdBuffer;->onStartCode(II)Z

    move-result v8

    if-eqz v8, :cond_83

    .line 185
    iget-object v8, p0, Lcom/google/android/exoplayer2/extractor/ts/H263Reader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    iget-object v9, p0, Lcom/google/android/exoplayer2/extractor/ts/H263Reader;->csdBuffer:Lcom/google/android/exoplayer2/extractor/ts/H263Reader$CsdBuffer;

    iget v10, v9, Lcom/google/android/exoplayer2/extractor/ts/H263Reader$CsdBuffer;->volStartPosition:I

    iget-object v11, p0, Lcom/google/android/exoplayer2/extractor/ts/H263Reader;->formatId:Ljava/lang/String;

    .line 186
    invoke-static {v11}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-static {v9, v10, v11}, Lcom/google/android/exoplayer2/extractor/ts/H263Reader;->parseCsdBuffer(Lcom/google/android/exoplayer2/extractor/ts/H263Reader$CsdBuffer;ILjava/lang/String;)Lcom/google/android/exoplayer2/Format;

    move-result-object v9

    .line 185
    invoke-interface {v8, v9}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->format(Lcom/google/android/exoplayer2/Format;)V

    .line 187
    iput-boolean v7, p0, Lcom/google/android/exoplayer2/extractor/ts/H263Reader;->hasOutputFormat:Z

    .line 191
    .end local v6    # "bytesAlreadyPassed":I
    :cond_83
    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/ts/H263Reader;->sampleReader:Lcom/google/android/exoplayer2/extractor/ts/H263Reader$SampleReader;

    invoke-virtual {v6, v2, v0, v3}, Lcom/google/android/exoplayer2/extractor/ts/H263Reader$SampleReader;->onData([BII)V

    .line 193
    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/ts/H263Reader;->userData:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    if-eqz v6, :cond_d9

    .line 194
    const/4 v8, 0x0

    .line 195
    .local v8, "bytesAlreadyPassed":I
    if-lez v5, :cond_93

    .line 196
    invoke-virtual {v6, v2, v0, v3}, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->appendToNalUnit([BII)V

    goto :goto_94

    .line 198
    :cond_93
    neg-int v8, v5

    .line 201
    :goto_94
    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/ts/H263Reader;->userData:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v6, v8}, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->endNalUnit(I)Z

    move-result v6

    if-eqz v6, :cond_c6

    .line 202
    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/ts/H263Reader;->userData:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    iget-object v6, v6, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    iget-object v9, p0, Lcom/google/android/exoplayer2/extractor/ts/H263Reader;->userData:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    iget v9, v9, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    invoke-static {v6, v9}, Lcom/google/android/exoplayer2/util/NalUnitUtil;->unescapeStream([BI)I

    move-result v6

    .line 203
    .local v6, "unescapedLength":I
    iget-object v9, p0, Lcom/google/android/exoplayer2/extractor/ts/H263Reader;->userDataParsable:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-static {v9}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v10, p0, Lcom/google/android/exoplayer2/extractor/ts/H263Reader;->userData:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    iget-object v10, v10, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    invoke-virtual {v9, v10, v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset([BI)V

    .line 204
    iget-object v9, p0, Lcom/google/android/exoplayer2/extractor/ts/H263Reader;->userDataReader:Lcom/google/android/exoplayer2/extractor/ts/UserDataReader;

    invoke-static {v9}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/exoplayer2/extractor/ts/UserDataReader;

    iget-wide v10, p0, Lcom/google/android/exoplayer2/extractor/ts/H263Reader;->pesTimeUs:J

    iget-object v12, p0, Lcom/google/android/exoplayer2/extractor/ts/H263Reader;->userDataParsable:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v9, v10, v11, v12}, Lcom/google/android/exoplayer2/extractor/ts/UserDataReader;->consume(JLcom/google/android/exoplayer2/util/ParsableByteArray;)V

    .line 207
    .end local v6    # "unescapedLength":I
    :cond_c6
    const/16 v6, 0xb2

    if-ne v4, v6, :cond_d9

    .line 208
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v6

    add-int/lit8 v9, v3, 0x2

    aget-byte v6, v6, v9

    if-ne v6, v7, :cond_d9

    .line 209
    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/ts/H263Reader;->userData:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v6, v4}, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->startNalUnit(I)V

    .line 213
    .end local v8    # "bytesAlreadyPassed":I
    :cond_d9
    sub-int v6, v1, v3

    .line 214
    .local v6, "bytesWrittenPastPosition":I
    iget-wide v7, p0, Lcom/google/android/exoplayer2/extractor/ts/H263Reader;->totalBytesWritten:J

    int-to-long v9, v6

    sub-long/2addr v7, v9

    .line 215
    .local v7, "absolutePosition":J
    iget-object v9, p0, Lcom/google/android/exoplayer2/extractor/ts/H263Reader;->sampleReader:Lcom/google/android/exoplayer2/extractor/ts/H263Reader$SampleReader;

    iget-boolean v10, p0, Lcom/google/android/exoplayer2/extractor/ts/H263Reader;->hasOutputFormat:Z

    invoke-virtual {v9, v7, v8, v6, v10}, Lcom/google/android/exoplayer2/extractor/ts/H263Reader$SampleReader;->onDataEnd(JIZ)V

    .line 217
    iget-object v9, p0, Lcom/google/android/exoplayer2/extractor/ts/H263Reader;->sampleReader:Lcom/google/android/exoplayer2/extractor/ts/H263Reader$SampleReader;

    iget-wide v10, p0, Lcom/google/android/exoplayer2/extractor/ts/H263Reader;->pesTimeUs:J

    invoke-virtual {v9, v4, v10, v11}, Lcom/google/android/exoplayer2/extractor/ts/H263Reader$SampleReader;->onStartCode(IJ)V

    .line 219
    add-int/lit8 v0, v3, 0x3

    .line 220
    .end local v3    # "startCodeOffset":I
    .end local v4    # "startCodeValue":I
    .end local v5    # "lengthToStartCode":I
    .end local v6    # "bytesWrittenPastPosition":I
    .end local v7    # "absolutePosition":J
    goto/16 :goto_29
.end method

.method public createTracks(Lcom/google/android/exoplayer2/extractor/ExtractorOutput;Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .registers 5
    .param p1, "extractorOutput"    # Lcom/google/android/exoplayer2/extractor/ExtractorOutput;
    .param p2, "idGenerator"    # Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;

    .line 125
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->generateNewId()V

    .line 126
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->getFormatId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H263Reader;->formatId:Ljava/lang/String;

    .line 127
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->getTrackId()I

    move-result v0

    const/4 v1, 0x2

    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->track(II)Lcom/google/android/exoplayer2/extractor/TrackOutput;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H263Reader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    .line 128
    new-instance v1, Lcom/google/android/exoplayer2/extractor/ts/H263Reader$SampleReader;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/extractor/ts/H263Reader$SampleReader;-><init>(Lcom/google/android/exoplayer2/extractor/TrackOutput;)V

    iput-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/H263Reader;->sampleReader:Lcom/google/android/exoplayer2/extractor/ts/H263Reader$SampleReader;

    .line 129
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H263Reader;->userDataReader:Lcom/google/android/exoplayer2/extractor/ts/UserDataReader;

    if-eqz v0, :cond_22

    .line 130
    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/extractor/ts/UserDataReader;->createTracks(Lcom/google/android/exoplayer2/extractor/ExtractorOutput;Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;)V

    .line 132
    :cond_22
    return-void
.end method

.method public packetFinished()V
    .registers 1

    .line 226
    return-void
.end method

.method public packetStarted(JI)V
    .registers 7
    .param p1, "pesTimeUs"    # J
    .param p3, "flags"    # I

    .line 137
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p1, v0

    if-eqz v2, :cond_b

    .line 138
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/ts/H263Reader;->pesTimeUs:J

    .line 140
    :cond_b
    return-void
.end method

.method public seek()V
    .registers 3

    .line 111
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H263Reader;->prefixFlags:[Z

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/NalUnitUtil;->clearPrefixFlags([Z)V

    .line 112
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H263Reader;->csdBuffer:Lcom/google/android/exoplayer2/extractor/ts/H263Reader$CsdBuffer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/ts/H263Reader$CsdBuffer;->reset()V

    .line 113
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H263Reader;->sampleReader:Lcom/google/android/exoplayer2/extractor/ts/H263Reader$SampleReader;

    if-eqz v0, :cond_11

    .line 114
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/ts/H263Reader$SampleReader;->reset()V

    .line 116
    :cond_11
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H263Reader;->userData:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    if-eqz v0, :cond_18

    .line 117
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->reset()V

    .line 119
    :cond_18
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H263Reader;->totalBytesWritten:J

    .line 120
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H263Reader;->pesTimeUs:J

    .line 121
    return-void
.end method
