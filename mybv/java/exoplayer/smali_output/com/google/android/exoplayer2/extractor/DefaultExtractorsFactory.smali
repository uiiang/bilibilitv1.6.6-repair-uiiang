.class public final Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;
.super Ljava/lang/Object;
.source "DefaultExtractorsFactory.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory$ExtensionLoader;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final DEFAULT_EXTRACTOR_ORDER:[I

.field private static final FLAC_EXTENSION_LOADER:Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory$ExtensionLoader;

.field private static final MIDI_EXTENSION_LOADER:Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory$ExtensionLoader;


# instance fields
.field private adtsFlags:I

.field private amrFlags:I

.field private constantBitrateSeekingAlwaysEnabled:Z

.field private constantBitrateSeekingEnabled:Z

.field private flacFlags:I

.field private fragmentedMp4Flags:I

.field private matroskaFlags:I

.field private mp3Flags:I

.field private mp4Flags:I

.field private tsFlags:I

.field private tsMode:I

.field private tsSubtitleFormats:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/android/exoplayer2/Format;",
            ">;"
        }
    .end annotation
.end field

.field private tsTimestampSearchBytes:I


# direct methods
.method public static synthetic $r8$lambda$KA91uXS3do9mxsnM-plEBujl2vs()Ljava/lang/reflect/Constructor;
    .registers 1

    invoke-static {}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;->getMidiExtractorConstructor()Ljava/lang/reflect/Constructor;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$UB0XGN4xVYWMpbhQ5lQLSZUR148()Ljava/lang/reflect/Constructor;
    .registers 1

    invoke-static {}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;->getFlacExtractorConstructor()Ljava/lang/reflect/Constructor;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 99
    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_22

    sput-object v0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;->DEFAULT_EXTRACTOR_ORDER:[I

    .line 121
    new-instance v0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory$ExtensionLoader;

    new-instance v1, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory$ExtensionLoader;-><init>(Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory$ExtensionLoader$ConstructorSupplier;)V

    sput-object v0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;->FLAC_EXTENSION_LOADER:Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory$ExtensionLoader;

    .line 123
    new-instance v0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory$ExtensionLoader;

    new-instance v1, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory$$ExternalSyntheticLambda1;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory$ExtensionLoader;-><init>(Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory$ExtensionLoader$ConstructorSupplier;)V

    sput-object v0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;->MIDI_EXTENSION_LOADER:Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory$ExtensionLoader;

    return-void

    :array_22
    .array-data 4
        0x5
        0x4
        0xc
        0x8
        0x3
        0xa
        0x9
        0xb
        0x6
        0x2
        0x0
        0x1
        0x7
        0x10
        0xf
        0xe
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;->tsMode:I

    .line 143
    const v0, 0x1b8a0

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;->tsTimestampSearchBytes:I

    .line 144
    return-void
.end method

.method private addExtractorsForFileType(ILjava/util/List;)V
    .registers 9
    .param p1, "fileType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/extractor/Extractor;",
            ">;)V"
        }
    .end annotation

    .line 376
    .local p2, "extractors":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/extractor/Extractor;>;"
    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_11c

    :pswitch_6
    goto/16 :goto_11b

    .line 464
    :pswitch_8
    new-instance v0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;-><init>()V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 465
    goto/16 :goto_11b

    .line 458
    :pswitch_12
    sget-object v0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;->MIDI_EXTENSION_LOADER:Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory$ExtensionLoader;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory$ExtensionLoader;->getExtractor([Ljava/lang/Object;)Lcom/google/android/exoplayer2/extractor/Extractor;

    move-result-object v0

    .line 459
    .local v0, "midiExtractor":Lcom/google/android/exoplayer2/extractor/Extractor;
    if-eqz v0, :cond_11b

    .line 460
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_11b

    .line 455
    .end local v0    # "midiExtractor":Lcom/google/android/exoplayer2/extractor/Extractor;
    :pswitch_21
    new-instance v0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;-><init>()V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 456
    goto/16 :goto_11b

    .line 452
    :pswitch_2b
    new-instance v0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor;-><init>()V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 453
    goto/16 :goto_11b

    .line 441
    :pswitch_35
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;->tsSubtitleFormats:Lcom/google/common/collect/ImmutableList;

    if-nez v0, :cond_3f

    .line 442
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;->tsSubtitleFormats:Lcom/google/common/collect/ImmutableList;

    .line 444
    :cond_3f
    new-instance v0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;->tsMode:I

    new-instance v2, Lcom/google/android/exoplayer2/util/TimestampAdjuster;

    const-wide/16 v3, 0x0

    invoke-direct {v2, v3, v4}, Lcom/google/android/exoplayer2/util/TimestampAdjuster;-><init>(J)V

    new-instance v3, Lcom/google/android/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory;

    iget v4, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;->tsFlags:I

    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;->tsSubtitleFormats:Lcom/google/common/collect/ImmutableList;

    invoke-direct {v3, v4, v5}, Lcom/google/android/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory;-><init>(ILjava/util/List;)V

    iget v4, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;->tsTimestampSearchBytes:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;-><init>(ILcom/google/android/exoplayer2/util/TimestampAdjuster;Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$Factory;I)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 450
    goto/16 :goto_11b

    .line 438
    :pswitch_5d
    new-instance v0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;-><init>()V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 439
    goto/16 :goto_11b

    .line 435
    :pswitch_67
    new-instance v0, Lcom/google/android/exoplayer2/extractor/ogg/OggExtractor;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/ogg/OggExtractor;-><init>()V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 436
    goto/16 :goto_11b

    .line 431
    :pswitch_71
    new-instance v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;->fragmentedMp4Flags:I

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;-><init>(I)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 432
    new-instance v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;->mp4Flags:I

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;-><init>(I)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 433
    goto/16 :goto_11b

    .line 420
    :pswitch_87
    new-instance v3, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;

    iget v4, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;->mp3Flags:I

    .line 423
    iget-boolean v5, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;->constantBitrateSeekingEnabled:Z

    if-eqz v5, :cond_90

    .line 424
    goto :goto_91

    .line 425
    :cond_90
    const/4 v1, 0x0

    :goto_91
    or-int/2addr v1, v4

    .line 426
    iget-boolean v4, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;->constantBitrateSeekingAlwaysEnabled:Z

    if-eqz v4, :cond_97

    .line 427
    goto :goto_98

    .line 428
    :cond_97
    const/4 v0, 0x0

    :goto_98
    or-int/2addr v0, v1

    invoke-direct {v3, v0}, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;-><init>(I)V

    .line 420
    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 429
    goto/16 :goto_11b

    .line 417
    :pswitch_a1
    new-instance v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;->matroskaFlags:I

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;-><init>(I)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 418
    goto/16 :goto_11b

    .line 414
    :pswitch_ad
    new-instance v0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;-><init>()V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 415
    goto :goto_11b

    .line 406
    :pswitch_b6
    sget-object v0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;->FLAC_EXTENSION_LOADER:Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory$ExtensionLoader;

    new-array v1, v1, [Ljava/lang/Object;

    iget v3, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;->flacFlags:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory$ExtensionLoader;->getExtractor([Ljava/lang/Object;)Lcom/google/android/exoplayer2/extractor/Extractor;

    move-result-object v0

    .line 407
    .local v0, "flacExtractor":Lcom/google/android/exoplayer2/extractor/Extractor;
    if-eqz v0, :cond_cc

    .line 408
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11b

    .line 410
    :cond_cc
    new-instance v1, Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor;

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;->flacFlags:I

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor;-><init>(I)V

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 412
    goto :goto_11b

    .line 395
    .end local v0    # "flacExtractor":Lcom/google/android/exoplayer2/extractor/Extractor;
    :pswitch_d7
    new-instance v3, Lcom/google/android/exoplayer2/extractor/amr/AmrExtractor;

    iget v4, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;->amrFlags:I

    .line 398
    iget-boolean v5, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;->constantBitrateSeekingEnabled:Z

    if-eqz v5, :cond_e0

    .line 399
    goto :goto_e1

    .line 400
    :cond_e0
    const/4 v1, 0x0

    :goto_e1
    or-int/2addr v1, v4

    .line 401
    iget-boolean v4, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;->constantBitrateSeekingAlwaysEnabled:Z

    if-eqz v4, :cond_e7

    .line 402
    goto :goto_e8

    .line 403
    :cond_e7
    const/4 v0, 0x0

    :goto_e8
    or-int/2addr v0, v1

    invoke-direct {v3, v0}, Lcom/google/android/exoplayer2/extractor/amr/AmrExtractor;-><init>(I)V

    .line 395
    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 404
    goto :goto_11b

    .line 384
    :pswitch_f0
    new-instance v3, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;

    iget v4, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;->adtsFlags:I

    .line 387
    iget-boolean v5, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;->constantBitrateSeekingEnabled:Z

    if-eqz v5, :cond_f9

    .line 388
    goto :goto_fa

    .line 389
    :cond_f9
    const/4 v1, 0x0

    :goto_fa
    or-int/2addr v1, v4

    .line 390
    iget-boolean v4, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;->constantBitrateSeekingAlwaysEnabled:Z

    if-eqz v4, :cond_100

    .line 391
    goto :goto_101

    .line 392
    :cond_100
    const/4 v0, 0x0

    :goto_101
    or-int/2addr v0, v1

    invoke-direct {v3, v0}, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;-><init>(I)V

    .line 384
    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 393
    goto :goto_11b

    .line 381
    :pswitch_109
    new-instance v0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Extractor;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/ts/Ac4Extractor;-><init>()V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 382
    goto :goto_11b

    .line 378
    :pswitch_112
    new-instance v0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Extractor;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/ts/Ac3Extractor;-><init>()V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 379
    nop

    .line 471
    :cond_11b
    :goto_11b
    return-void

    :pswitch_data_11c
    .packed-switch 0x0
        :pswitch_112
        :pswitch_109
        :pswitch_f0
        :pswitch_d7
        :pswitch_b6
        :pswitch_ad
        :pswitch_a1
        :pswitch_87
        :pswitch_71
        :pswitch_67
        :pswitch_5d
        :pswitch_35
        :pswitch_2b
        :pswitch_6
        :pswitch_21
        :pswitch_12
        :pswitch_8
    .end packed-switch
.end method

.method private static getFlacExtractorConstructor()Ljava/lang/reflect/Constructor;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/reflect/Constructor<",
            "+",
            "Lcom/google/android/exoplayer2/extractor/Extractor;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 487
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 489
    const-string v1, "com.google.android.exoplayer2.ext.flac.FlacLibrary"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    .line 490
    const-string v4, "isAvailable"

    invoke-virtual {v1, v4, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    .line 491
    const/4 v4, 0x0

    invoke-virtual {v1, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 488
    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 492
    .local v0, "isFlacNativeLibraryAvailable":Z
    if-eqz v0, :cond_36

    .line 493
    const-string v1, "com.google.android.exoplayer2.ext.flac.FlacExtractor"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-class v3, Lcom/google/android/exoplayer2/extractor/Extractor;

    .line 494
    invoke-virtual {v1, v3}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v2

    .line 495
    invoke-virtual {v1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 493
    return-object v1

    .line 497
    :cond_36
    return-object v4
.end method

.method private static getMidiExtractorConstructor()Ljava/lang/reflect/Constructor;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/reflect/Constructor<",
            "+",
            "Lcom/google/android/exoplayer2/extractor/Extractor;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 475
    const-string v0, "com.google.android.exoplayer2.decoder.midi.MidiExtractor"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/google/android/exoplayer2/extractor/Extractor;

    .line 476
    invoke-virtual {v0, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    .line 477
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 475
    return-object v0
.end method


# virtual methods
.method public declared-synchronized createExtractors()[Lcom/google/android/exoplayer2/extractor/Extractor;
    .registers 3

    monitor-enter p0

    .line 345
    :try_start_1
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;->createExtractors(Landroid/net/Uri;Ljava/util/Map;)[Lcom/google/android/exoplayer2/extractor/Extractor;

    move-result-object v0
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    monitor-exit p0

    return-object v0

    .line 345
    .end local p0    # "this":Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;
    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized createExtractors(Landroid/net/Uri;Ljava/util/Map;)[Lcom/google/android/exoplayer2/extractor/Extractor;
    .registers 10
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)[",
            "Lcom/google/android/exoplayer2/extractor/Extractor;"
        }
    .end annotation

    .local p2, "responseHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    monitor-enter p0

    .line 351
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;->DEFAULT_EXTRACTOR_ORDER:[I

    array-length v2, v1

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 355
    .local v0, "extractors":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/extractor/Extractor;>;"
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/FileTypes;->inferFileTypeFromResponseHeaders(Ljava/util/Map;)I

    move-result v2

    .line 356
    .local v2, "responseHeadersInferredFileType":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_13

    .line 357
    invoke-direct {p0, v2, v0}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;->addExtractorsForFileType(ILjava/util/List;)V

    .line 360
    .end local p0    # "this":Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;
    :cond_13
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/FileTypes;->inferFileTypeFromUri(Landroid/net/Uri;)I

    move-result v4

    .line 361
    .local v4, "uriInferredFileType":I
    if-eq v4, v3, :cond_1e

    if-eq v4, v2, :cond_1e

    .line 363
    invoke-direct {p0, v4, v0}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;->addExtractorsForFileType(ILjava/util/List;)V

    .line 366
    :cond_1e
    array-length v3, v1

    const/4 v5, 0x0

    :goto_20
    if-ge v5, v3, :cond_2e

    aget v6, v1, v5

    .line 367
    .local v6, "fileType":I
    if-eq v6, v2, :cond_2b

    if-eq v6, v4, :cond_2b

    .line 368
    invoke-direct {p0, v6, v0}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;->addExtractorsForFileType(ILjava/util/List;)V

    .line 366
    .end local v6    # "fileType":I
    :cond_2b
    add-int/lit8 v5, v5, 0x1

    goto :goto_20

    .line 372
    :cond_2e
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/google/android/exoplayer2/extractor/Extractor;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/android/exoplayer2/extractor/Extractor;
    :try_end_3a
    .catchall {:try_start_1 .. :try_end_3a} :catchall_3c

    monitor-exit p0

    return-object v1

    .line 350
    .end local v0    # "extractors":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/extractor/Extractor;>;"
    .end local v2    # "responseHeadersInferredFileType":I
    .end local v4    # "uriInferredFileType":I
    .end local p1    # "uri":Landroid/net/Uri;
    .end local p2    # "responseHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    :catchall_3c
    move-exception p1

    monitor-exit p0

    goto :goto_40

    :goto_3f
    throw p1

    :goto_40
    goto :goto_3f
.end method

.method public declared-synchronized setAdtsExtractorFlags(I)Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;
    .registers 2
    .param p1, "flags"    # I

    monitor-enter p0

    .line 199
    :try_start_1
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;->adtsFlags:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 200
    monitor-exit p0

    return-object p0

    .line 198
    .end local p0    # "this":Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;
    .end local p1    # "flags":I
    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setAmrExtractorFlags(I)Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;
    .registers 2
    .param p1, "flags"    # I

    monitor-enter p0

    .line 212
    :try_start_1
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;->amrFlags:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 213
    monitor-exit p0

    return-object p0

    .line 211
    .end local p0    # "this":Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;
    .end local p1    # "flags":I
    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setConstantBitrateSeekingAlwaysEnabled(Z)Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;
    .registers 2
    .param p1, "constantBitrateSeekingAlwaysEnabled"    # Z

    monitor-enter p0

    .line 185
    :try_start_1
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;->constantBitrateSeekingAlwaysEnabled:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 186
    monitor-exit p0

    return-object p0

    .line 184
    .end local p0    # "this":Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;
    .end local p1    # "constantBitrateSeekingAlwaysEnabled":Z
    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setConstantBitrateSeekingEnabled(Z)Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;
    .registers 2
    .param p1, "constantBitrateSeekingEnabled"    # Z

    monitor-enter p0

    .line 160
    :try_start_1
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;->constantBitrateSeekingEnabled:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 161
    monitor-exit p0

    return-object p0

    .line 159
    .end local p0    # "this":Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;
    .end local p1    # "constantBitrateSeekingEnabled":Z
    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setFlacExtractorFlags(I)Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;
    .registers 2
    .param p1, "flags"    # I

    monitor-enter p0

    .line 228
    :try_start_1
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;->flacFlags:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 229
    monitor-exit p0

    return-object p0

    .line 227
    .end local p0    # "this":Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;
    .end local p1    # "flags":I
    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setFragmentedMp4ExtractorFlags(I)Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;
    .registers 2
    .param p1, "flags"    # I

    monitor-enter p0

    .line 269
    :try_start_1
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;->fragmentedMp4Flags:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 270
    monitor-exit p0

    return-object p0

    .line 268
    .end local p0    # "this":Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;
    .end local p1    # "flags":I
    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setMatroskaExtractorFlags(I)Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;
    .registers 2
    .param p1, "flags"    # I

    monitor-enter p0

    .line 242
    :try_start_1
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;->matroskaFlags:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 243
    monitor-exit p0

    return-object p0

    .line 241
    .end local p0    # "this":Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;
    .end local p1    # "flags":I
    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setMp3ExtractorFlags(I)Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;
    .registers 2
    .param p1, "flags"    # I

    monitor-enter p0

    .line 282
    :try_start_1
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;->mp3Flags:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 283
    monitor-exit p0

    return-object p0

    .line 281
    .end local p0    # "this":Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;
    .end local p1    # "flags":I
    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setMp4ExtractorFlags(I)Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;
    .registers 2
    .param p1, "flags"    # I

    monitor-enter p0

    .line 255
    :try_start_1
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;->mp4Flags:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 256
    monitor-exit p0

    return-object p0

    .line 254
    .end local p0    # "this":Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;
    .end local p1    # "flags":I
    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setTsExtractorFlags(I)Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;
    .registers 2
    .param p1, "flags"    # I

    monitor-enter p0

    .line 310
    :try_start_1
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;->tsFlags:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 311
    monitor-exit p0

    return-object p0

    .line 309
    .end local p0    # "this":Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;
    .end local p1    # "flags":I
    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setTsExtractorMode(I)Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;
    .registers 2
    .param p1, "mode"    # I

    monitor-enter p0

    .line 295
    :try_start_1
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;->tsMode:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 296
    monitor-exit p0

    return-object p0

    .line 294
    .end local p0    # "this":Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;
    .end local p1    # "mode":I
    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setTsExtractorTimestampSearchBytes(I)Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;
    .registers 2
    .param p1, "timestampSearchBytes"    # I

    monitor-enter p0

    .line 339
    :try_start_1
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;->tsTimestampSearchBytes:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 340
    monitor-exit p0

    return-object p0

    .line 338
    .end local p0    # "this":Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;
    .end local p1    # "timestampSearchBytes":I
    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setTsSubtitleFormats(Ljava/util/List;)Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/Format;",
            ">;)",
            "Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;"
        }
    .end annotation

    .local p1, "subtitleFormats":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/Format;>;"
    monitor-enter p0

    .line 324
    :try_start_1
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;->tsSubtitleFormats:Lcom/google/common/collect/ImmutableList;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 325
    monitor-exit p0

    return-object p0

    .line 323
    .end local p0    # "this":Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;
    .end local p1    # "subtitleFormats":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/Format;>;"
    :catchall_9
    move-exception p1

    monitor-exit p0

    throw p1
.end method
