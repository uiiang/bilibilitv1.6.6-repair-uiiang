.class public final Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;
.super Ljava/lang/Object;
.source "FlacStreamMetadata.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata$SeekTable;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final NOT_IN_LOOKUP_TABLE:I = -0x1

.field private static final TAG:Ljava/lang/String; = "FlacStreamMetadata"


# instance fields
.field public final bitsPerSample:I

.field public final bitsPerSampleLookupKey:I

.field public final channels:I

.field public final maxBlockSizeSamples:I

.field public final maxFrameSize:I

.field private final metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

.field public final minBlockSizeSamples:I

.field public final minFrameSize:I

.field public final sampleRate:I

.field public final sampleRateLookupKey:I

.field public final seekTable:Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata$SeekTable;

.field public final totalSamples:J


# direct methods
.method private constructor <init>(IIIIIIIJLcom/google/android/exoplayer2/extractor/FlacStreamMetadata$SeekTable;Lcom/google/android/exoplayer2/metadata/Metadata;)V
    .registers 13
    .param p1, "minBlockSizeSamples"    # I
    .param p2, "maxBlockSizeSamples"    # I
    .param p3, "minFrameSize"    # I
    .param p4, "maxFrameSize"    # I
    .param p5, "sampleRate"    # I
    .param p6, "channels"    # I
    .param p7, "bitsPerSample"    # I
    .param p8, "totalSamples"    # J
    .param p10, "seekTable"    # Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata$SeekTable;
    .param p11, "metadata"    # Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->minBlockSizeSamples:I

    .line 175
    iput p2, p0, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->maxBlockSizeSamples:I

    .line 176
    iput p3, p0, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->minFrameSize:I

    .line 177
    iput p4, p0, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->maxFrameSize:I

    .line 178
    iput p5, p0, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->sampleRate:I

    .line 179
    invoke-static {p5}, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->getSampleRateLookupKey(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->sampleRateLookupKey:I

    .line 180
    iput p6, p0, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->channels:I

    .line 181
    iput p7, p0, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->bitsPerSample:I

    .line 182
    invoke-static {p7}, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->getBitsPerSampleLookupKey(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->bitsPerSampleLookupKey:I

    .line 183
    iput-wide p8, p0, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->totalSamples:J

    .line 184
    iput-object p10, p0, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->seekTable:Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata$SeekTable;

    .line 185
    iput-object p11, p0, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 186
    return-void
.end method

.method public constructor <init>(IIIIIIIJLjava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 24
    .param p1, "minBlockSizeSamples"    # I
    .param p2, "maxBlockSizeSamples"    # I
    .param p3, "minFrameSize"    # I
    .param p4, "maxFrameSize"    # I
    .param p5, "sampleRate"    # I
    .param p6, "channels"    # I
    .param p7, "bitsPerSample"    # I
    .param p8, "totalSamples"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIIIIIJ",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/metadata/flac/PictureFrame;",
            ">;)V"
        }
    .end annotation

    .line 150
    .local p10, "vorbisComments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p11, "pictureFrames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/metadata/flac/PictureFrame;>;"
    const/4 v10, 0x0

    .line 160
    invoke-static/range {p10 .. p11}, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->concatenateVorbisMetadata(Ljava/util/List;Ljava/util/List;)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object v11

    .line 150
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-wide/from16 v8, p8

    invoke-direct/range {v0 .. v11}, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;-><init>(IIIIIIIJLcom/google/android/exoplayer2/extractor/FlacStreamMetadata$SeekTable;Lcom/google/android/exoplayer2/metadata/Metadata;)V

    .line 161
    return-void
.end method

.method public constructor <init>([BI)V
    .registers 6
    .param p1, "data"    # [B
    .param p2, "offset"    # I

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;-><init>([B)V

    .line 123
    .local v0, "scratch":Lcom/google/android/exoplayer2/util/ParsableBitArray;
    mul-int/lit8 v1, p2, 0x8

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->setPosition(I)V

    .line 124
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v2

    iput v2, p0, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->minBlockSizeSamples:I

    .line 125
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->maxBlockSizeSamples:I

    .line 126
    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v2

    iput v2, p0, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->minFrameSize:I

    .line 127
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->maxFrameSize:I

    .line 128
    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->sampleRate:I

    .line 129
    invoke-static {v1}, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->getSampleRateLookupKey(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->sampleRateLookupKey:I

    .line 130
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->channels:I

    .line 131
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->bitsPerSample:I

    .line 132
    invoke-static {v1}, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->getBitsPerSampleLookupKey(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->bitsPerSampleLookupKey:I

    .line 133
    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBitsToLong(I)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->totalSamples:J

    .line 134
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->seekTable:Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata$SeekTable;

    .line 135
    iput-object v1, p0, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 136
    return-void
.end method

.method private static concatenateVorbisMetadata(Ljava/util/List;Ljava/util/List;)Lcom/google/android/exoplayer2/metadata/Metadata;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/metadata/flac/PictureFrame;",
            ">;)",
            "Lcom/google/android/exoplayer2/metadata/Metadata;"
        }
    .end annotation

    .line 323
    .local p0, "vorbisComments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p1, "pictureFrames":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/metadata/flac/PictureFrame;>;"
    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/VorbisUtil;->parseVorbisComments(Ljava/util/List;)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object v0

    .line 324
    .local v0, "parsedVorbisComments":Lcom/google/android/exoplayer2/metadata/Metadata;
    if-nez v0, :cond_e

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 325
    const/4 v1, 0x0

    return-object v1

    .line 327
    :cond_e
    new-instance v1, Lcom/google/android/exoplayer2/metadata/Metadata;

    invoke-direct {v1, p1}, Lcom/google/android/exoplayer2/metadata/Metadata;-><init>(Ljava/util/List;)V

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/metadata/Metadata;->copyWithAppendedEntriesFrom(Lcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object v1

    return-object v1
.end method

.method private static getBitsPerSampleLookupKey(I)I
    .registers 2
    .param p0, "bitsPerSample"    # I

    .line 360
    sparse-switch p0, :sswitch_data_10

    .line 372
    const/4 v0, -0x1

    return v0

    .line 370
    :sswitch_5
    const/4 v0, 0x6

    return v0

    .line 368
    :sswitch_7
    const/4 v0, 0x5

    return v0

    .line 366
    :sswitch_9
    const/4 v0, 0x4

    return v0

    .line 364
    :sswitch_b
    const/4 v0, 0x2

    return v0

    .line 362
    :sswitch_d
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_10
    .sparse-switch
        0x8 -> :sswitch_d
        0xc -> :sswitch_b
        0x10 -> :sswitch_9
        0x14 -> :sswitch_7
        0x18 -> :sswitch_5
    .end sparse-switch
.end method

.method private static getSampleRateLookupKey(I)I
    .registers 2
    .param p0, "sampleRate"    # I

    .line 331
    sparse-switch p0, :sswitch_data_20

    .line 355
    const/4 v0, -0x1

    return v0

    .line 337
    :sswitch_5
    const/4 v0, 0x3

    return v0

    .line 335
    :sswitch_7
    const/4 v0, 0x2

    return v0

    .line 353
    :sswitch_9
    const/16 v0, 0xb

    return v0

    .line 333
    :sswitch_c
    const/4 v0, 0x1

    return v0

    .line 351
    :sswitch_e
    const/16 v0, 0xa

    return v0

    .line 349
    :sswitch_11
    const/16 v0, 0x9

    return v0

    .line 347
    :sswitch_14
    const/16 v0, 0x8

    return v0

    .line 345
    :sswitch_17
    const/4 v0, 0x7

    return v0

    .line 343
    :sswitch_19
    const/4 v0, 0x6

    return v0

    .line 341
    :sswitch_1b
    const/4 v0, 0x5

    return v0

    .line 339
    :sswitch_1d
    const/4 v0, 0x4

    return v0

    nop

    :sswitch_data_20
    .sparse-switch
        0x1f40 -> :sswitch_1d
        0x3e80 -> :sswitch_1b
        0x5622 -> :sswitch_19
        0x5dc0 -> :sswitch_17
        0x7d00 -> :sswitch_14
        0xac44 -> :sswitch_11
        0xbb80 -> :sswitch_e
        0x15888 -> :sswitch_c
        0x17700 -> :sswitch_9
        0x2b110 -> :sswitch_7
        0x2ee00 -> :sswitch_5
    .end sparse-switch
.end method


# virtual methods
.method public copyWithPictureFrames(Ljava/util/List;)Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/metadata/flac/PictureFrame;",
            ">;)",
            "Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;"
        }
    .end annotation

    .line 302
    .local p1, "pictureFrames":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/metadata/flac/PictureFrame;>;"
    new-instance v0, Lcom/google/android/exoplayer2/metadata/Metadata;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/metadata/Metadata;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->getMetadataCopyWithAppendedEntriesFrom(Lcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object v0

    .line 303
    .local v0, "appendedMetadata":Lcom/google/android/exoplayer2/metadata/Metadata;
    new-instance v13, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->minBlockSizeSamples:I

    iget v3, p0, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->maxBlockSizeSamples:I

    iget v4, p0, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->minFrameSize:I

    iget v5, p0, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->maxFrameSize:I

    iget v6, p0, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->sampleRate:I

    iget v7, p0, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->channels:I

    iget v8, p0, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->bitsPerSample:I

    iget-wide v9, p0, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->totalSamples:J

    iget-object v11, p0, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->seekTable:Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata$SeekTable;

    move-object v1, v13

    move-object v12, v0

    invoke-direct/range {v1 .. v12}, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;-><init>(IIIIIIIJLcom/google/android/exoplayer2/extractor/FlacStreamMetadata$SeekTable;Lcom/google/android/exoplayer2/metadata/Metadata;)V

    return-object v13
.end method

.method public copyWithSeekTable(Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata$SeekTable;)Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;
    .registers 15
    .param p1, "seekTable"    # Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata$SeekTable;

    .line 268
    new-instance v12, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->minBlockSizeSamples:I

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->maxBlockSizeSamples:I

    iget v3, p0, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->minFrameSize:I

    iget v4, p0, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->maxFrameSize:I

    iget v5, p0, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->sampleRate:I

    iget v6, p0, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->channels:I

    iget v7, p0, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->bitsPerSample:I

    iget-wide v8, p0, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->totalSamples:J

    iget-object v11, p0, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    move-object v0, v12

    move-object v10, p1

    invoke-direct/range {v0 .. v11}, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;-><init>(IIIIIIIJLcom/google/android/exoplayer2/extractor/FlacStreamMetadata$SeekTable;Lcom/google/android/exoplayer2/metadata/Metadata;)V

    return-object v12
.end method

.method public copyWithVorbisComments(Ljava/util/List;)Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;"
        }
    .end annotation

    .line 284
    .local p1, "vorbisComments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    nop

    .line 285
    invoke-static {p1}, Lcom/google/android/exoplayer2/extractor/VorbisUtil;->parseVorbisComments(Ljava/util/List;)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->getMetadataCopyWithAppendedEntriesFrom(Lcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object v0

    .line 286
    .local v0, "appendedMetadata":Lcom/google/android/exoplayer2/metadata/Metadata;
    new-instance v13, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->minBlockSizeSamples:I

    iget v3, p0, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->maxBlockSizeSamples:I

    iget v4, p0, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->minFrameSize:I

    iget v5, p0, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->maxFrameSize:I

    iget v6, p0, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->sampleRate:I

    iget v7, p0, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->channels:I

    iget v8, p0, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->bitsPerSample:I

    iget-wide v9, p0, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->totalSamples:J

    iget-object v11, p0, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->seekTable:Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata$SeekTable;

    move-object v1, v13

    move-object v12, v0

    invoke-direct/range {v1 .. v12}, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;-><init>(IIIIIIIJLcom/google/android/exoplayer2/extractor/FlacStreamMetadata$SeekTable;Lcom/google/android/exoplayer2/metadata/Metadata;)V

    return-object v13
.end method

.method public getApproxBytesPerFrame()J
    .registers 7

    .line 220
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->maxFrameSize:I

    if-lez v0, :cond_10

    .line 221
    int-to-long v0, v0

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->minFrameSize:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    const-wide/16 v2, 0x2

    div-long/2addr v0, v2

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    .local v0, "approxBytesPerFrame":J
    goto :goto_2e

    .line 226
    .end local v0    # "approxBytesPerFrame":J
    :cond_10
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->minBlockSizeSamples:I

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->maxBlockSizeSamples:I

    if-ne v0, v1, :cond_1a

    if-lez v0, :cond_1a

    .line 227
    int-to-long v0, v0

    goto :goto_1c

    .line 228
    :cond_1a
    const-wide/16 v0, 0x1000

    :goto_1c
    nop

    .line 229
    .local v0, "blockSizeSamples":J
    iget v2, p0, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->channels:I

    int-to-long v2, v2

    mul-long v2, v2, v0

    iget v4, p0, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->bitsPerSample:I

    int-to-long v4, v4

    mul-long v2, v2, v4

    const-wide/16 v4, 0x8

    div-long/2addr v2, v4

    const-wide/16 v4, 0x40

    add-long/2addr v2, v4

    move-wide v0, v2

    .line 231
    .local v0, "approxBytesPerFrame":J
    :goto_2e
    return-wide v0
.end method

.method public getDecodedBitrate()I
    .registers 3

    .line 195
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->bitsPerSample:I

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->sampleRate:I

    mul-int v0, v0, v1

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->channels:I

    mul-int v0, v0, v1

    return v0
.end method

.method public getDurationUs()J
    .registers 6

    .line 203
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->totalSamples:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_e

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_17

    :cond_e
    const-wide/32 v2, 0xf4240

    mul-long v0, v0, v2

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->sampleRate:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    :goto_17
    return-wide v0
.end method

.method public getFormat([BLcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/Format;
    .registers 7
    .param p1, "streamMarkerAndInfoBlock"    # [B
    .param p2, "id3Metadata"    # Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 247
    const/4 v0, 0x4

    const/16 v1, -0x80

    aput-byte v1, p1, v0

    .line 248
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->maxFrameSize:I

    if-lez v0, :cond_a

    goto :goto_b

    :cond_a
    const/4 v0, -0x1

    .line 249
    .local v0, "maxInputSize":I
    :goto_b
    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->getMetadataCopyWithAppendedEntriesFrom(Lcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object v1

    .line 250
    .local v1, "metadataWithId3":Lcom/google/android/exoplayer2/metadata/Metadata;
    new-instance v2, Lcom/google/android/exoplayer2/Format$Builder;

    invoke-direct {v2}, Lcom/google/android/exoplayer2/Format$Builder;-><init>()V

    .line 251
    const-string v3, "audio/flac"

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v2

    .line 252
    invoke-virtual {v2, v0}, Lcom/google/android/exoplayer2/Format$Builder;->setMaxInputSize(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v2

    iget v3, p0, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->channels:I

    .line 253
    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/Format$Builder;->setChannelCount(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v2

    iget v3, p0, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->sampleRate:I

    .line 254
    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/Format$Builder;->setSampleRate(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v2

    .line 255
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/Format$Builder;->setInitializationData(Ljava/util/List;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v2

    .line 256
    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/Format$Builder;->setMetadata(Lcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v2

    .line 257
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object v2

    .line 250
    return-object v2
.end method

.method public getMaxDecodedFrameSize()I
    .registers 3

    .line 190
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->maxBlockSizeSamples:I

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->channels:I

    mul-int v0, v0, v1

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->bitsPerSample:I

    div-int/lit8 v1, v1, 0x8

    mul-int v0, v0, v1

    return v0
.end method

.method public getMetadataCopyWithAppendedEntriesFrom(Lcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/metadata/Metadata;
    .registers 3
    .param p1, "other"    # Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 263
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    if-nez v0, :cond_6

    move-object v0, p1

    goto :goto_a

    :cond_6
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/metadata/Metadata;->copyWithAppendedEntriesFrom(Lcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object v0

    :goto_a
    return-object v0
.end method

.method public getSampleNumber(J)J
    .registers 13
    .param p1, "timeUs"    # J

    .line 213
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->sampleRate:I

    int-to-long v0, v0

    mul-long v0, v0, p1

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    .line 214
    .local v0, "sampleNumber":J
    const-wide/16 v6, 0x0

    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->totalSamples:J

    const-wide/16 v4, 0x1

    sub-long v8, v2, v4

    move-wide v4, v0

    invoke-static/range {v4 .. v9}, Lcom/google/android/exoplayer2/util/Util;->constrainValue(JJJ)J

    move-result-wide v2

    return-wide v2
.end method
