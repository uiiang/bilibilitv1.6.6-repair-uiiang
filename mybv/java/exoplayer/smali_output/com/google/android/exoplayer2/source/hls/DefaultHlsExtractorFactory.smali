.class public final Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;
.super Ljava/lang/Object;
.source "DefaultHlsExtractorFactory.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final DEFAULT_EXTRACTOR_ORDER:[I


# instance fields
.field private final exposeCea608WhenMissingDeclarations:Z

.field private final payloadReaderFactoryFlags:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 60
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;->DEFAULT_EXTRACTOR_ORDER:[I

    return-void

    nop

    :array_a
    .array-data 4
        0x8
        0xd
        0xb
        0x2
        0x0
        0x1
        0x7
    .end array-data
.end method

.method public constructor <init>()V
    .registers 3

    .line 80
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;-><init>(IZ)V

    .line 81
    return-void
.end method

.method public constructor <init>(IZ)V
    .registers 3
    .param p1, "payloadReaderFactoryFlags"    # I
    .param p2, "exposeCea608WhenMissingDeclarations"    # Z

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput p1, p0, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;->payloadReaderFactoryFlags:I

    .line 97
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;->exposeCea608WhenMissingDeclarations:Z

    .line 98
    return-void
.end method

.method private static addFileTypeIfValidAndNotPresent(ILjava/util/List;)V
    .registers 4
    .param p0, "fileType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 155
    .local p1, "fileTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    sget-object v0, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;->DEFAULT_EXTRACTOR_ORDER:[I

    invoke-static {v0, p0}, Lcom/google/common/primitives/Ints;->indexOf([II)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1c

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    goto :goto_1c

    .line 158
    :cond_14
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    return-void

    .line 156
    :cond_1c
    :goto_1c
    return-void
.end method

.method private createExtractorByFileType(ILcom/google/android/exoplayer2/Format;Ljava/util/List;Lcom/google/android/exoplayer2/util/TimestampAdjuster;)Lcom/google/android/exoplayer2/extractor/Extractor;
    .registers 9
    .param p1, "fileType"    # I
    .param p2, "format"    # Lcom/google/android/exoplayer2/Format;
    .param p4, "timestampAdjuster"    # Lcom/google/android/exoplayer2/util/TimestampAdjuster;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/android/exoplayer2/Format;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/Format;",
            ">;",
            "Lcom/google/android/exoplayer2/util/TimestampAdjuster;",
            ")",
            "Lcom/google/android/exoplayer2/extractor/Extractor;"
        }
    .end annotation

    .line 168
    .local p3, "muxedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/Format;>;"
    sparse-switch p1, :sswitch_data_36

    .line 189
    const/4 v0, 0x0

    return-object v0

    .line 170
    :sswitch_5
    new-instance v0, Lcom/google/android/exoplayer2/source/hls/WebvttExtractor;

    iget-object v1, p2, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    invoke-direct {v0, v1, p4}, Lcom/google/android/exoplayer2/source/hls/WebvttExtractor;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/util/TimestampAdjuster;)V

    return-object v0

    .line 182
    :sswitch_d
    iget v0, p0, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;->payloadReaderFactoryFlags:I

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;->exposeCea608WhenMissingDeclarations:Z

    invoke-static {v0, v1, p2, p3, p4}, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;->createTsExtractor(IZLcom/google/android/exoplayer2/Format;Ljava/util/List;Lcom/google/android/exoplayer2/util/TimestampAdjuster;)Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;

    move-result-object v0

    return-object v0

    .line 180
    :sswitch_16
    invoke-static {p4, p2, p3}, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;->createFragmentedMp4Extractor(Lcom/google/android/exoplayer2/util/TimestampAdjuster;Lcom/google/android/exoplayer2/Format;Ljava/util/List;)Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;

    move-result-object v0

    return-object v0

    .line 178
    :sswitch_1b
    new-instance v0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;-><init>(IJ)V

    return-object v0

    .line 172
    :sswitch_24
    new-instance v0, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;-><init>()V

    return-object v0

    .line 176
    :sswitch_2a
    new-instance v0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Extractor;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/ts/Ac4Extractor;-><init>()V

    return-object v0

    .line 174
    :sswitch_30
    new-instance v0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Extractor;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/ts/Ac3Extractor;-><init>()V

    return-object v0

    :sswitch_data_36
    .sparse-switch
        0x0 -> :sswitch_30
        0x1 -> :sswitch_2a
        0x2 -> :sswitch_24
        0x7 -> :sswitch_1b
        0x8 -> :sswitch_16
        0xb -> :sswitch_d
        0xd -> :sswitch_5
    .end sparse-switch
.end method

.method private static createFragmentedMp4Extractor(Lcom/google/android/exoplayer2/util/TimestampAdjuster;Lcom/google/android/exoplayer2/Format;Ljava/util/List;)Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;
    .registers 7
    .param p0, "timestampAdjuster"    # Lcom/google/android/exoplayer2/util/TimestampAdjuster;
    .param p1, "format"    # Lcom/google/android/exoplayer2/Format;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/util/TimestampAdjuster;",
            "Lcom/google/android/exoplayer2/Format;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/Format;",
            ">;)",
            "Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;"
        }
    .end annotation

    .line 240
    .local p2, "muxedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/Format;>;"
    new-instance v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;

    .line 241
    invoke-static {p1}, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;->isFmp4Variant(Lcom/google/android/exoplayer2/Format;)Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 v1, 0x4

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    .line 244
    :goto_b
    if-eqz p2, :cond_f

    move-object v2, p2

    goto :goto_13

    :cond_f
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    :goto_13
    const/4 v3, 0x0

    invoke-direct {v0, v1, p0, v3, v2}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;-><init>(ILcom/google/android/exoplayer2/util/TimestampAdjuster;Lcom/google/android/exoplayer2/extractor/mp4/Track;Ljava/util/List;)V

    .line 240
    return-object v0
.end method

.method private static createTsExtractor(IZLcom/google/android/exoplayer2/Format;Ljava/util/List;Lcom/google/android/exoplayer2/util/TimestampAdjuster;)Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;
    .registers 10
    .param p0, "userProvidedPayloadReaderFactoryFlags"    # I
    .param p1, "exposeCea608WhenMissingDeclarations"    # Z
    .param p2, "format"    # Lcom/google/android/exoplayer2/Format;
    .param p4, "timestampAdjuster"    # Lcom/google/android/exoplayer2/util/TimestampAdjuster;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Lcom/google/android/exoplayer2/Format;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/Format;",
            ">;",
            "Lcom/google/android/exoplayer2/util/TimestampAdjuster;",
            ")",
            "Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;"
        }
    .end annotation

    .line 200
    .local p3, "muxedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/Format;>;"
    or-int/lit8 v0, p0, 0x10

    .line 203
    .local v0, "payloadReaderFactoryFlags":I
    if-eqz p3, :cond_7

    .line 205
    or-int/lit8 v0, v0, 0x20

    goto :goto_21

    .line 206
    :cond_7
    if-eqz p1, :cond_1d

    .line 209
    new-instance v1, Lcom/google/android/exoplayer2/Format$Builder;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/Format$Builder;-><init>()V

    .line 211
    const-string v2, "application/cea-608"

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object v1

    .line 210
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    goto :goto_21

    .line 213
    :cond_1d
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p3

    .line 215
    :goto_21
    iget-object v1, p2, Lcom/google/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    .line 216
    .local v1, "codecs":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3d

    .line 220
    const-string v2, "audio/mp4a-latm"

    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/util/MimeTypes;->containsCodecsCorrespondingToMimeType(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_33

    .line 221
    or-int/lit8 v0, v0, 0x2

    .line 223
    :cond_33
    const-string v2, "video/avc"

    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/util/MimeTypes;->containsCodecsCorrespondingToMimeType(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3d

    .line 224
    or-int/lit8 v0, v0, 0x4

    .line 228
    :cond_3d
    new-instance v2, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;

    new-instance v3, Lcom/google/android/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory;

    invoke-direct {v3, v0, p3}, Lcom/google/android/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory;-><init>(ILjava/util/List;)V

    const/4 v4, 0x2

    invoke-direct {v2, v4, p4, v3}, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;-><init>(ILcom/google/android/exoplayer2/util/TimestampAdjuster;Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$Factory;)V

    return-object v2
.end method

.method private static isFmp4Variant(Lcom/google/android/exoplayer2/Format;)Z
    .registers 6
    .param p0, "format"    # Lcom/google/android/exoplayer2/Format;

    .line 249
    iget-object v0, p0, Lcom/google/android/exoplayer2/Format;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 250
    .local v0, "metadata":Lcom/google/android/exoplayer2/metadata/Metadata;
    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 251
    return v1

    .line 253
    :cond_6
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/metadata/Metadata;->length()I

    move-result v3

    if-ge v2, v3, :cond_24

    .line 254
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/metadata/Metadata;->get(I)Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    move-result-object v3

    .line 255
    .local v3, "entry":Lcom/google/android/exoplayer2/metadata/Metadata$Entry;
    instance-of v4, v3, Lcom/google/android/exoplayer2/source/hls/HlsTrackMetadataEntry;

    if-eqz v4, :cond_21

    .line 256
    move-object v1, v3

    check-cast v1, Lcom/google/android/exoplayer2/source/hls/HlsTrackMetadataEntry;

    iget-object v1, v1, Lcom/google/android/exoplayer2/source/hls/HlsTrackMetadataEntry;->variantInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    return v1

    .line 253
    .end local v3    # "entry":Lcom/google/android/exoplayer2/metadata/Metadata$Entry;
    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 259
    .end local v2    # "i":I
    :cond_24
    return v1
.end method

.method private static sniffQuietly(Lcom/google/android/exoplayer2/extractor/Extractor;Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z
    .registers 4
    .param p0, "extractor"    # Lcom/google/android/exoplayer2/extractor/Extractor;
    .param p1, "input"    # Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 264
    const/4 v0, 0x0

    .line 266
    .local v0, "result":Z
    :try_start_1
    invoke-interface {p0, p1}, Lcom/google/android/exoplayer2/extractor/Extractor;->sniff(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z

    move-result v1
    :try_end_5
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_5} :catch_f
    .catchall {:try_start_1 .. :try_end_5} :catchall_a

    move v0, v1

    .line 270
    :goto_6
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    .line 271
    goto :goto_11

    .line 270
    :catchall_a
    move-exception v1

    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    .line 271
    throw v1

    .line 267
    :catch_f
    move-exception v1

    goto :goto_6

    .line 272
    :goto_11
    return v0
.end method


# virtual methods
.method public createExtractor(Landroid/net/Uri;Lcom/google/android/exoplayer2/Format;Ljava/util/List;Lcom/google/android/exoplayer2/util/TimestampAdjuster;Ljava/util/Map;Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/analytics/PlayerId;)Lcom/google/android/exoplayer2/source/hls/BundledHlsMediaChunkExtractor;
    .registers 22
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "format"    # Lcom/google/android/exoplayer2/Format;
    .param p4, "timestampAdjuster"    # Lcom/google/android/exoplayer2/util/TimestampAdjuster;
    .param p6, "sniffingExtractorInput"    # Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    .param p7, "playerId"    # Lcom/google/android/exoplayer2/analytics/PlayerId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Lcom/google/android/exoplayer2/Format;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/Format;",
            ">;",
            "Lcom/google/android/exoplayer2/util/TimestampAdjuster;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/google/android/exoplayer2/extractor/ExtractorInput;",
            "Lcom/google/android/exoplayer2/analytics/PlayerId;",
            ")",
            "Lcom/google/android/exoplayer2/source/hls/BundledHlsMediaChunkExtractor;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 111
    .local p3, "muxedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/Format;>;"
    .local p5, "responseHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    move-object/from16 v0, p2

    move-object/from16 v1, p4

    iget-object v2, v0, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/FileTypes;->inferFileTypeFromMimeType(Ljava/lang/String;)I

    move-result v2

    .line 113
    .local v2, "formatInferredFileType":I
    nop

    .line 114
    invoke-static/range {p5 .. p5}, Lcom/google/android/exoplayer2/util/FileTypes;->inferFileTypeFromResponseHeaders(Ljava/util/Map;)I

    move-result v3

    .line 115
    .local v3, "responseHeadersInferredFileType":I
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/FileTypes;->inferFileTypeFromUri(Landroid/net/Uri;)I

    move-result v4

    .line 118
    .local v4, "uriInferredFileType":I
    new-instance v5, Ljava/util/ArrayList;

    sget-object v6, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;->DEFAULT_EXTRACTOR_ORDER:[I

    array-length v7, v6

    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 120
    .local v5, "fileTypeOrder":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {v2, v5}, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;->addFileTypeIfValidAndNotPresent(ILjava/util/List;)V

    .line 121
    invoke-static {v3, v5}, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;->addFileTypeIfValidAndNotPresent(ILjava/util/List;)V

    .line 122
    invoke-static {v4, v5}, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;->addFileTypeIfValidAndNotPresent(ILjava/util/List;)V

    .line 123
    array-length v7, v6

    const/4 v8, 0x0

    :goto_26
    if-ge v8, v7, :cond_30

    aget v9, v6, v8

    .line 124
    .local v9, "fileType":I
    invoke-static {v9, v5}, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;->addFileTypeIfValidAndNotPresent(ILjava/util/List;)V

    .line 123
    .end local v9    # "fileType":I
    add-int/lit8 v8, v8, 0x1

    goto :goto_26

    .line 128
    :cond_30
    const/4 v6, 0x0

    .line 129
    .local v6, "fallBackExtractor":Lcom/google/android/exoplayer2/extractor/Extractor;
    invoke-interface/range {p6 .. p6}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    .line 130
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_35
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_71

    .line 131
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 132
    .local v8, "fileType":I
    nop

    .line 134
    move-object v9, p0

    move-object/from16 v10, p3

    invoke-direct {p0, v8, v0, v10, v1}, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;->createExtractorByFileType(ILcom/google/android/exoplayer2/Format;Ljava/util/List;Lcom/google/android/exoplayer2/util/TimestampAdjuster;)Lcom/google/android/exoplayer2/extractor/Extractor;

    move-result-object v11

    .line 133
    invoke-static {v11}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/exoplayer2/extractor/Extractor;

    .line 135
    .local v11, "extractor":Lcom/google/android/exoplayer2/extractor/Extractor;
    move-object/from16 v12, p6

    invoke-static {v11, v12}, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;->sniffQuietly(Lcom/google/android/exoplayer2/extractor/Extractor;Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z

    move-result v13

    if-eqz v13, :cond_61

    .line 136
    new-instance v13, Lcom/google/android/exoplayer2/source/hls/BundledHlsMediaChunkExtractor;

    invoke-direct {v13, v11, v0, v1}, Lcom/google/android/exoplayer2/source/hls/BundledHlsMediaChunkExtractor;-><init>(Lcom/google/android/exoplayer2/extractor/Extractor;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/util/TimestampAdjuster;)V

    return-object v13

    .line 138
    :cond_61
    if-nez v6, :cond_6e

    if-eq v8, v2, :cond_6d

    if-eq v8, v3, :cond_6d

    if-eq v8, v4, :cond_6d

    const/16 v13, 0xb

    if-ne v8, v13, :cond_6e

    .line 145
    :cond_6d
    move-object v6, v11

    .line 130
    .end local v8    # "fileType":I
    .end local v11    # "extractor":Lcom/google/android/exoplayer2/extractor/Extractor;
    :cond_6e
    add-int/lit8 v7, v7, 0x1

    goto :goto_35

    :cond_71
    move-object v9, p0

    move-object/from16 v10, p3

    move-object/from16 v12, p6

    .line 149
    .end local v7    # "i":I
    new-instance v7, Lcom/google/android/exoplayer2/source/hls/BundledHlsMediaChunkExtractor;

    .line 150
    invoke-static {v6}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/exoplayer2/extractor/Extractor;

    invoke-direct {v7, v8, v0, v1}, Lcom/google/android/exoplayer2/source/hls/BundledHlsMediaChunkExtractor;-><init>(Lcom/google/android/exoplayer2/extractor/Extractor;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/util/TimestampAdjuster;)V

    .line 149
    return-object v7
.end method

.method public bridge synthetic createExtractor(Landroid/net/Uri;Lcom/google/android/exoplayer2/Format;Ljava/util/List;Lcom/google/android/exoplayer2/util/TimestampAdjuster;Ljava/util/Map;Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/analytics/PlayerId;)Lcom/google/android/exoplayer2/source/hls/HlsMediaChunkExtractor;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    invoke-virtual/range {p0 .. p7}, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;->createExtractor(Landroid/net/Uri;Lcom/google/android/exoplayer2/Format;Ljava/util/List;Lcom/google/android/exoplayer2/util/TimestampAdjuster;Ljava/util/Map;Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/analytics/PlayerId;)Lcom/google/android/exoplayer2/source/hls/BundledHlsMediaChunkExtractor;

    move-result-object p1

    return-object p1
.end method
