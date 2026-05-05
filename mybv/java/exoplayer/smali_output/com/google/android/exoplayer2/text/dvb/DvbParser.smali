.class final Lcom/google/android/exoplayer2/text/dvb/DvbParser;
.super Ljava/lang/Object;
.source "DvbParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/text/dvb/DvbParser$DisplayDefinition;,
        Lcom/google/android/exoplayer2/text/dvb/DvbParser$ClutDefinition;,
        Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;,
        Lcom/google/android/exoplayer2/text/dvb/DvbParser$PageComposition;,
        Lcom/google/android/exoplayer2/text/dvb/DvbParser$PageRegion;,
        Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionComposition;,
        Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionObject;,
        Lcom/google/android/exoplayer2/text/dvb/DvbParser$ObjectData;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final DATA_TYPE_24_TABLE_DATA:I = 0x20

.field private static final DATA_TYPE_28_TABLE_DATA:I = 0x21

.field private static final DATA_TYPE_2BP_CODE_STRING:I = 0x10

.field private static final DATA_TYPE_48_TABLE_DATA:I = 0x22

.field private static final DATA_TYPE_4BP_CODE_STRING:I = 0x11

.field private static final DATA_TYPE_8BP_CODE_STRING:I = 0x12

.field private static final DATA_TYPE_END_LINE:I = 0xf0

.field private static final OBJECT_CODING_PIXELS:I = 0x0

.field private static final OBJECT_CODING_STRING:I = 0x1

.field private static final PAGE_STATE_NORMAL:I = 0x0

.field private static final REGION_DEPTH_4_BIT:I = 0x2

.field private static final REGION_DEPTH_8_BIT:I = 0x3

.field private static final SEGMENT_TYPE_CLUT_DEFINITION:I = 0x12

.field private static final SEGMENT_TYPE_DISPLAY_DEFINITION:I = 0x14

.field private static final SEGMENT_TYPE_OBJECT_DATA:I = 0x13

.field private static final SEGMENT_TYPE_PAGE_COMPOSITION:I = 0x10

.field private static final SEGMENT_TYPE_REGION_COMPOSITION:I = 0x11

.field private static final TAG:Ljava/lang/String; = "DvbParser"

.field private static final defaultMap2To4:[B

.field private static final defaultMap2To8:[B

.field private static final defaultMap4To8:[B


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private final canvas:Landroid/graphics/Canvas;

.field private final defaultClutDefinition:Lcom/google/android/exoplayer2/text/dvb/DvbParser$ClutDefinition;

.field private final defaultDisplayDefinition:Lcom/google/android/exoplayer2/text/dvb/DvbParser$DisplayDefinition;

.field private final defaultPaint:Landroid/graphics/Paint;

.field private final fillRegionPaint:Landroid/graphics/Paint;

.field private final subtitleService:Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 81
    const/4 v0, 0x4

    new-array v1, v0, [B

    fill-array-data v1, :array_1a

    sput-object v1, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->defaultMap2To4:[B

    .line 82
    new-array v0, v0, [B

    fill-array-data v0, :array_20

    sput-object v0, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->defaultMap2To8:[B

    .line 83
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_26

    sput-object v0, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->defaultMap4To8:[B

    return-void

    nop

    :array_1a
    .array-data 1
        0x0t
        0x7t
        0x8t
        0xft
    .end array-data

    :array_20
    .array-data 1
        0x0t
        0x77t
        -0x78t
        -0x1t
    .end array-data

    :array_26
    .array-data 1
        0x0t
        0x11t
        0x22t
        0x33t
        0x44t
        0x55t
        0x66t
        0x77t
        -0x78t
        -0x67t
        -0x56t
        -0x45t
        -0x34t
        -0x23t
        -0x12t
        -0x1t
    .end array-data
.end method

.method public constructor <init>(II)V
    .registers 11
    .param p1, "subtitlePageId"    # I
    .param p2, "ancillaryPageId"    # I

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->defaultPaint:Landroid/graphics/Paint;

    .line 107
    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 108
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 109
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 110
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->fillRegionPaint:Landroid/graphics/Paint;

    .line 111
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 112
    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->DST_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 113
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 114
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->canvas:Landroid/graphics/Canvas;

    .line 115
    new-instance v0, Lcom/google/android/exoplayer2/text/dvb/DvbParser$DisplayDefinition;

    const/16 v2, 0x2cf

    const/16 v3, 0x23f

    const/4 v4, 0x0

    const/16 v5, 0x2cf

    const/4 v6, 0x0

    const/16 v7, 0x23f

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplayer2/text/dvb/DvbParser$DisplayDefinition;-><init>(IIIIII)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->defaultDisplayDefinition:Lcom/google/android/exoplayer2/text/dvb/DvbParser$DisplayDefinition;

    .line 116
    new-instance v0, Lcom/google/android/exoplayer2/text/dvb/DvbParser$ClutDefinition;

    .line 119
    invoke-static {}, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->generateDefault2BitClutEntries()[I

    move-result-object v1

    .line 120
    invoke-static {}, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->generateDefault4BitClutEntries()[I

    move-result-object v2

    .line 121
    invoke-static {}, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->generateDefault8BitClutEntries()[I

    move-result-object v3

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/google/android/exoplayer2/text/dvb/DvbParser$ClutDefinition;-><init>(I[I[I[I)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->defaultClutDefinition:Lcom/google/android/exoplayer2/text/dvb/DvbParser$ClutDefinition;

    .line 122
    new-instance v0, Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;

    invoke-direct {v0, p1, p2}, Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;-><init>(II)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->subtitleService:Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;

    .line 123
    return-void
.end method

.method private static buildClutMapTable(IILcom/google/android/exoplayer2/util/ParsableBitArray;)[B
    .registers 6
    .param p0, "length"    # I
    .param p1, "bitsPerEntry"    # I
    .param p2, "data"    # Lcom/google/android/exoplayer2/util/ParsableBitArray;

    .line 904
    new-array v0, p0, [B

    .line 905
    .local v0, "clutMapTable":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    if-ge v1, p0, :cond_f

    .line 906
    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 905
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 908
    .end local v1    # "i":I
    :cond_f
    return-object v0
.end method

.method private static generateDefault2BitClutEntries()[I
    .registers 3

    .line 558
    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 559
    .local v0, "entries":[I
    const/4 v1, 0x0

    aput v1, v0, v1

    .line 560
    const/4 v1, 0x1

    const/4 v2, -0x1

    aput v2, v0, v1

    .line 561
    const/4 v1, 0x2

    const/high16 v2, -0x1000000

    aput v2, v0, v1

    .line 562
    const/4 v1, 0x3

    const v2, -0x808081

    aput v2, v0, v1

    .line 563
    return-object v0
.end method

.method private static generateDefault4BitClutEntries()[I
    .registers 8

    .line 567
    const/16 v0, 0x10

    new-array v0, v0, [I

    .line 568
    .local v0, "entries":[I
    const/4 v1, 0x0

    aput v1, v0, v1

    .line 569
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_8
    array-length v3, v0

    if-ge v2, v3, :cond_53

    .line 570
    const/16 v3, 0x8

    const/16 v4, 0xff

    if-ge v2, v3, :cond_31

    .line 571
    nop

    .line 574
    and-int/lit8 v3, v2, 0x1

    if-eqz v3, :cond_19

    const/16 v3, 0xff

    goto :goto_1a

    :cond_19
    const/4 v3, 0x0

    .line 575
    :goto_1a
    and-int/lit8 v5, v2, 0x2

    if-eqz v5, :cond_21

    const/16 v5, 0xff

    goto :goto_22

    :cond_21
    const/4 v5, 0x0

    .line 576
    :goto_22
    and-int/lit8 v6, v2, 0x4

    if-eqz v6, :cond_29

    const/16 v6, 0xff

    goto :goto_2a

    :cond_29
    const/4 v6, 0x0

    .line 572
    :goto_2a
    invoke-static {v4, v3, v5, v6}, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->getColor(IIII)I

    move-result v3

    aput v3, v0, v2

    goto :goto_50

    .line 578
    :cond_31
    nop

    .line 581
    and-int/lit8 v3, v2, 0x1

    const/16 v5, 0x7f

    if-eqz v3, :cond_3b

    const/16 v3, 0x7f

    goto :goto_3c

    :cond_3b
    const/4 v3, 0x0

    .line 582
    :goto_3c
    and-int/lit8 v6, v2, 0x2

    if-eqz v6, :cond_43

    const/16 v6, 0x7f

    goto :goto_44

    :cond_43
    const/4 v6, 0x0

    .line 583
    :goto_44
    and-int/lit8 v7, v2, 0x4

    if-eqz v7, :cond_49

    goto :goto_4a

    :cond_49
    const/4 v5, 0x0

    .line 579
    :goto_4a
    invoke-static {v4, v3, v6, v5}, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->getColor(IIII)I

    move-result v3

    aput v3, v0, v2

    .line 569
    :goto_50
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 586
    .end local v2    # "i":I
    :cond_53
    return-object v0
.end method

.method private static generateDefault8BitClutEntries()[I
    .registers 10

    .line 590
    const/16 v0, 0x100

    new-array v0, v0, [I

    .line 591
    .local v0, "entries":[I
    const/4 v1, 0x0

    aput v1, v0, v1

    .line 592
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    array-length v3, v0

    if-ge v2, v3, :cond_126

    .line 593
    const/16 v3, 0x8

    const/16 v4, 0xff

    if-ge v2, v3, :cond_32

    .line 594
    nop

    .line 597
    and-int/lit8 v3, v2, 0x1

    if-eqz v3, :cond_19

    const/16 v3, 0xff

    goto :goto_1a

    :cond_19
    const/4 v3, 0x0

    .line 598
    :goto_1a
    and-int/lit8 v5, v2, 0x2

    if-eqz v5, :cond_21

    const/16 v5, 0xff

    goto :goto_22

    :cond_21
    const/4 v5, 0x0

    .line 599
    :goto_22
    and-int/lit8 v6, v2, 0x4

    if-eqz v6, :cond_27

    goto :goto_28

    :cond_27
    const/4 v4, 0x0

    .line 595
    :goto_28
    const/16 v6, 0x3f

    invoke-static {v6, v3, v5, v4}, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->getColor(IIII)I

    move-result v3

    aput v3, v0, v2

    goto/16 :goto_122

    .line 601
    :cond_32
    and-int/lit16 v3, v2, 0x88

    const/16 v5, 0x7f

    const/16 v6, 0xaa

    const/16 v7, 0x2b

    const/16 v8, 0x55

    sparse-switch v3, :sswitch_data_128

    goto/16 :goto_122

    .line 627
    :sswitch_41
    nop

    .line 630
    and-int/lit8 v3, v2, 0x1

    if-eqz v3, :cond_49

    const/16 v3, 0x2b

    goto :goto_4a

    :cond_49
    const/4 v3, 0x0

    :goto_4a
    and-int/lit8 v5, v2, 0x10

    if-eqz v5, :cond_51

    const/16 v5, 0x55

    goto :goto_52

    :cond_51
    const/4 v5, 0x0

    :goto_52
    add-int/2addr v3, v5

    .line 631
    and-int/lit8 v5, v2, 0x2

    if-eqz v5, :cond_5a

    const/16 v5, 0x2b

    goto :goto_5b

    :cond_5a
    const/4 v5, 0x0

    :goto_5b
    and-int/lit8 v6, v2, 0x20

    if-eqz v6, :cond_62

    const/16 v6, 0x55

    goto :goto_63

    :cond_62
    const/4 v6, 0x0

    :goto_63
    add-int/2addr v5, v6

    .line 632
    and-int/lit8 v6, v2, 0x4

    if-eqz v6, :cond_69

    goto :goto_6a

    :cond_69
    const/4 v7, 0x0

    :goto_6a
    and-int/lit8 v6, v2, 0x40

    if-eqz v6, :cond_6f

    goto :goto_70

    :cond_6f
    const/4 v8, 0x0

    :goto_70
    add-int/2addr v7, v8

    .line 628
    invoke-static {v4, v3, v5, v7}, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->getColor(IIII)I

    move-result v3

    aput v3, v0, v2

    goto/16 :goto_122

    .line 619
    :sswitch_79
    nop

    .line 622
    and-int/lit8 v3, v2, 0x1

    if-eqz v3, :cond_81

    const/16 v3, 0x2b

    goto :goto_82

    :cond_81
    const/4 v3, 0x0

    :goto_82
    add-int/2addr v3, v5

    and-int/lit8 v6, v2, 0x10

    if-eqz v6, :cond_8a

    const/16 v6, 0x55

    goto :goto_8b

    :cond_8a
    const/4 v6, 0x0

    :goto_8b
    add-int/2addr v3, v6

    .line 623
    and-int/lit8 v6, v2, 0x2

    if-eqz v6, :cond_93

    const/16 v6, 0x2b

    goto :goto_94

    :cond_93
    const/4 v6, 0x0

    :goto_94
    add-int/2addr v6, v5

    and-int/lit8 v9, v2, 0x20

    if-eqz v9, :cond_9c

    const/16 v9, 0x55

    goto :goto_9d

    :cond_9c
    const/4 v9, 0x0

    :goto_9d
    add-int/2addr v6, v9

    .line 624
    and-int/lit8 v9, v2, 0x4

    if-eqz v9, :cond_a3

    goto :goto_a4

    :cond_a3
    const/4 v7, 0x0

    :goto_a4
    add-int/2addr v7, v5

    and-int/lit8 v5, v2, 0x40

    if-eqz v5, :cond_aa

    goto :goto_ab

    :cond_aa
    const/4 v8, 0x0

    :goto_ab
    add-int/2addr v7, v8

    .line 620
    invoke-static {v4, v3, v6, v7}, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->getColor(IIII)I

    move-result v3

    aput v3, v0, v2

    .line 625
    goto/16 :goto_122

    .line 611
    :sswitch_b4
    nop

    .line 614
    and-int/lit8 v3, v2, 0x1

    if-eqz v3, :cond_bc

    const/16 v3, 0x55

    goto :goto_bd

    :cond_bc
    const/4 v3, 0x0

    :goto_bd
    and-int/lit8 v4, v2, 0x10

    if-eqz v4, :cond_c4

    const/16 v4, 0xaa

    goto :goto_c5

    :cond_c4
    const/4 v4, 0x0

    :goto_c5
    add-int/2addr v3, v4

    .line 615
    and-int/lit8 v4, v2, 0x2

    if-eqz v4, :cond_cd

    const/16 v4, 0x55

    goto :goto_ce

    :cond_cd
    const/4 v4, 0x0

    :goto_ce
    and-int/lit8 v7, v2, 0x20

    if-eqz v7, :cond_d5

    const/16 v7, 0xaa

    goto :goto_d6

    :cond_d5
    const/4 v7, 0x0

    :goto_d6
    add-int/2addr v4, v7

    .line 616
    and-int/lit8 v7, v2, 0x4

    if-eqz v7, :cond_dc

    goto :goto_dd

    :cond_dc
    const/4 v8, 0x0

    :goto_dd
    and-int/lit8 v7, v2, 0x40

    if-eqz v7, :cond_e2

    goto :goto_e3

    :cond_e2
    const/4 v6, 0x0

    :goto_e3
    add-int/2addr v8, v6

    .line 612
    invoke-static {v5, v3, v4, v8}, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->getColor(IIII)I

    move-result v3

    aput v3, v0, v2

    .line 617
    goto :goto_122

    .line 603
    :sswitch_eb
    nop

    .line 606
    and-int/lit8 v3, v2, 0x1

    if-eqz v3, :cond_f3

    const/16 v3, 0x55

    goto :goto_f4

    :cond_f3
    const/4 v3, 0x0

    :goto_f4
    and-int/lit8 v5, v2, 0x10

    if-eqz v5, :cond_fb

    const/16 v5, 0xaa

    goto :goto_fc

    :cond_fb
    const/4 v5, 0x0

    :goto_fc
    add-int/2addr v3, v5

    .line 607
    and-int/lit8 v5, v2, 0x2

    if-eqz v5, :cond_104

    const/16 v5, 0x55

    goto :goto_105

    :cond_104
    const/4 v5, 0x0

    :goto_105
    and-int/lit8 v7, v2, 0x20

    if-eqz v7, :cond_10c

    const/16 v7, 0xaa

    goto :goto_10d

    :cond_10c
    const/4 v7, 0x0

    :goto_10d
    add-int/2addr v5, v7

    .line 608
    and-int/lit8 v7, v2, 0x4

    if-eqz v7, :cond_113

    goto :goto_114

    :cond_113
    const/4 v8, 0x0

    :goto_114
    and-int/lit8 v7, v2, 0x40

    if-eqz v7, :cond_119

    goto :goto_11a

    :cond_119
    const/4 v6, 0x0

    :goto_11a
    add-int/2addr v8, v6

    .line 604
    invoke-static {v4, v3, v5, v8}, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->getColor(IIII)I

    move-result v3

    aput v3, v0, v2

    .line 609
    nop

    .line 592
    :goto_122
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_8

    .line 637
    .end local v2    # "i":I
    :cond_126
    return-object v0

    nop

    :sswitch_data_128
    .sparse-switch
        0x0 -> :sswitch_eb
        0x8 -> :sswitch_b4
        0x80 -> :sswitch_79
        0x88 -> :sswitch_41
    .end sparse-switch
.end method

.method private static getColor(IIII)I
    .registers 6
    .param p0, "a"    # I
    .param p1, "r"    # I
    .param p2, "g"    # I
    .param p3, "b"    # I

    .line 641
    shl-int/lit8 v0, p0, 0x18

    shl-int/lit8 v1, p1, 0x10

    or-int/2addr v0, v1

    shl-int/lit8 v1, p2, 0x8

    or-int/2addr v0, v1

    or-int/2addr v0, p3

    return v0
.end method

.method private static paint2BitPixelCodeString(Lcom/google/android/exoplayer2/util/ParsableBitArray;[I[BIILandroid/graphics/Paint;Landroid/graphics/Canvas;)I
    .registers 21
    .param p0, "data"    # Lcom/google/android/exoplayer2/util/ParsableBitArray;
    .param p1, "clutEntries"    # [I
    .param p2, "clutMapTable"    # [B
    .param p3, "column"    # I
    .param p4, "line"    # I
    .param p5, "paint"    # Landroid/graphics/Paint;
    .param p6, "canvas"    # Landroid/graphics/Canvas;

    .line 760
    move-object v0, p0

    move/from16 v1, p4

    move-object/from16 v8, p5

    const/4 v2, 0x0

    move/from16 v9, p3

    .line 762
    .end local p3    # "column":I
    .local v2, "endOfPixelCodeString":Z
    .local v9, "column":I
    :goto_8
    const/4 v3, 0x0

    .line 763
    .local v3, "runLength":I
    const/4 v4, 0x0

    .line 764
    .local v4, "clutIndex":I
    const/4 v5, 0x2

    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v10

    .line 765
    .local v10, "peek":I
    if-eqz v10, :cond_18

    .line 766
    const/4 v3, 0x1

    .line 767
    move v4, v10

    move v11, v2

    move v12, v3

    move v13, v4

    goto/16 :goto_6b

    .line 768
    :cond_18
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v6

    if-eqz v6, :cond_2d

    .line 769
    const/4 v6, 0x3

    invoke-virtual {p0, v6}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v7

    add-int/lit8 v3, v7, 0x3

    .line 770
    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v4

    move v11, v2

    move v12, v3

    move v13, v4

    goto :goto_6b

    .line 771
    :cond_2d
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v6

    if-eqz v6, :cond_38

    .line 772
    const/4 v3, 0x1

    move v11, v2

    move v12, v3

    move v13, v4

    goto :goto_6b

    .line 774
    :cond_38
    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v6

    packed-switch v6, :pswitch_data_90

    move v11, v2

    move v12, v3

    move v13, v4

    goto :goto_6b

    .line 786
    :pswitch_43
    const/16 v6, 0x8

    invoke-virtual {p0, v6}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v6

    add-int/lit8 v3, v6, 0x1d

    .line 787
    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v4

    move v11, v2

    move v12, v3

    move v13, v4

    goto :goto_6b

    .line 782
    :pswitch_53
    const/4 v6, 0x4

    invoke-virtual {p0, v6}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v6

    add-int/lit8 v3, v6, 0xc

    .line 783
    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v4

    .line 784
    move v11, v2

    move v12, v3

    move v13, v4

    goto :goto_6b

    .line 779
    :pswitch_62
    const/4 v3, 0x2

    .line 780
    move v11, v2

    move v12, v3

    move v13, v4

    goto :goto_6b

    .line 776
    :pswitch_67
    const/4 v2, 0x1

    .line 777
    move v11, v2

    move v12, v3

    move v13, v4

    .line 792
    .end local v2    # "endOfPixelCodeString":Z
    .end local v3    # "runLength":I
    .end local v4    # "clutIndex":I
    .local v11, "endOfPixelCodeString":Z
    .local v12, "runLength":I
    .local v13, "clutIndex":I
    :goto_6b
    if-eqz v12, :cond_89

    if-eqz v8, :cond_89

    .line 793
    if-eqz p2, :cond_74

    aget-byte v2, p2, v13

    goto :goto_75

    :cond_74
    move v2, v13

    :goto_75
    aget v2, p1, v2

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 794
    int-to-float v3, v9

    int-to-float v4, v1

    add-int v2, v9, v12

    int-to-float v5, v2

    add-int/lit8 v2, v1, 0x1

    int-to-float v6, v2

    move-object/from16 v2, p6

    move-object/from16 v7, p5

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 797
    :cond_89
    add-int/2addr v9, v12

    .line 798
    .end local v10    # "peek":I
    .end local v12    # "runLength":I
    .end local v13    # "clutIndex":I
    if-eqz v11, :cond_8d

    .line 800
    return v9

    .line 798
    :cond_8d
    move v2, v11

    goto/16 :goto_8

    :pswitch_data_90
    .packed-switch 0x0
        :pswitch_67
        :pswitch_62
        :pswitch_53
        :pswitch_43
    .end packed-switch
.end method

.method private static paint4BitPixelCodeString(Lcom/google/android/exoplayer2/util/ParsableBitArray;[I[BIILandroid/graphics/Paint;Landroid/graphics/Canvas;)I
    .registers 21
    .param p0, "data"    # Lcom/google/android/exoplayer2/util/ParsableBitArray;
    .param p1, "clutEntries"    # [I
    .param p2, "clutMapTable"    # [B
    .param p3, "column"    # I
    .param p4, "line"    # I
    .param p5, "paint"    # Landroid/graphics/Paint;
    .param p6, "canvas"    # Landroid/graphics/Canvas;

    .line 812
    move-object v0, p0

    move/from16 v1, p4

    move-object/from16 v8, p5

    const/4 v2, 0x0

    move/from16 v9, p3

    .line 814
    .end local p3    # "column":I
    .local v2, "endOfPixelCodeString":Z
    .local v9, "column":I
    :goto_8
    const/4 v3, 0x0

    .line 815
    .local v3, "runLength":I
    const/4 v4, 0x0

    .line 816
    .local v4, "clutIndex":I
    const/4 v5, 0x4

    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v6

    .line 817
    .local v6, "peek":I
    if-eqz v6, :cond_19

    .line 818
    const/4 v3, 0x1

    .line 819
    move v4, v6

    move v10, v2

    move v11, v3

    move v12, v4

    move v13, v6

    goto/16 :goto_83

    .line 820
    :cond_19
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v7

    if-nez v7, :cond_36

    .line 821
    const/4 v5, 0x3

    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v6

    .line 822
    if-eqz v6, :cond_2f

    .line 823
    add-int/lit8 v3, v6, 0x2

    .line 824
    const/4 v4, 0x0

    move v10, v2

    move v11, v3

    move v12, v4

    move v13, v6

    goto/16 :goto_83

    .line 826
    :cond_2f
    const/4 v2, 0x1

    move v10, v2

    move v11, v3

    move v12, v4

    move v13, v6

    goto/16 :goto_83

    .line 828
    :cond_36
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v7

    const/4 v10, 0x2

    if-nez v7, :cond_4c

    .line 829
    invoke-virtual {p0, v10}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v7

    add-int/lit8 v3, v7, 0x4

    .line 830
    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v4

    move v10, v2

    move v11, v3

    move v12, v4

    move v13, v6

    goto :goto_83

    .line 832
    :cond_4c
    invoke-virtual {p0, v10}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v7

    packed-switch v7, :pswitch_data_a8

    move v10, v2

    move v11, v3

    move v12, v4

    move v13, v6

    goto :goto_83

    .line 844
    :pswitch_58
    const/16 v7, 0x8

    invoke-virtual {p0, v7}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v7

    add-int/lit8 v3, v7, 0x19

    .line 845
    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v4

    move v10, v2

    move v11, v3

    move v12, v4

    move v13, v6

    goto :goto_83

    .line 840
    :pswitch_69
    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v7

    add-int/lit8 v3, v7, 0x9

    .line 841
    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v4

    .line 842
    move v10, v2

    move v11, v3

    move v12, v4

    move v13, v6

    goto :goto_83

    .line 837
    :pswitch_78
    const/4 v3, 0x2

    .line 838
    move v10, v2

    move v11, v3

    move v12, v4

    move v13, v6

    goto :goto_83

    .line 834
    :pswitch_7e
    const/4 v3, 0x1

    .line 835
    move v10, v2

    move v11, v3

    move v12, v4

    move v13, v6

    .line 850
    .end local v2    # "endOfPixelCodeString":Z
    .end local v3    # "runLength":I
    .end local v4    # "clutIndex":I
    .end local v6    # "peek":I
    .local v10, "endOfPixelCodeString":Z
    .local v11, "runLength":I
    .local v12, "clutIndex":I
    .local v13, "peek":I
    :goto_83
    if-eqz v11, :cond_a1

    if-eqz v8, :cond_a1

    .line 851
    if-eqz p2, :cond_8c

    aget-byte v2, p2, v12

    goto :goto_8d

    :cond_8c
    move v2, v12

    :goto_8d
    aget v2, p1, v2

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 852
    int-to-float v3, v9

    int-to-float v4, v1

    add-int v2, v9, v11

    int-to-float v5, v2

    add-int/lit8 v2, v1, 0x1

    int-to-float v6, v2

    move-object/from16 v2, p6

    move-object/from16 v7, p5

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 855
    :cond_a1
    add-int/2addr v9, v11

    .line 856
    .end local v11    # "runLength":I
    .end local v12    # "clutIndex":I
    .end local v13    # "peek":I
    if-eqz v10, :cond_a5

    .line 858
    return v9

    .line 856
    :cond_a5
    move v2, v10

    goto/16 :goto_8

    :pswitch_data_a8
    .packed-switch 0x0
        :pswitch_7e
        :pswitch_78
        :pswitch_69
        :pswitch_58
    .end packed-switch
.end method

.method private static paint8BitPixelCodeString(Lcom/google/android/exoplayer2/util/ParsableBitArray;[I[BIILandroid/graphics/Paint;Landroid/graphics/Canvas;)I
    .registers 21
    .param p0, "data"    # Lcom/google/android/exoplayer2/util/ParsableBitArray;
    .param p1, "clutEntries"    # [I
    .param p2, "clutMapTable"    # [B
    .param p3, "column"    # I
    .param p4, "line"    # I
    .param p5, "paint"    # Landroid/graphics/Paint;
    .param p6, "canvas"    # Landroid/graphics/Canvas;

    .line 870
    move-object v0, p0

    move/from16 v1, p4

    move-object/from16 v8, p5

    const/4 v2, 0x0

    move/from16 v9, p3

    .line 872
    .end local p3    # "column":I
    .local v2, "endOfPixelCodeString":Z
    .local v9, "column":I
    :goto_8
    const/4 v3, 0x0

    .line 873
    .local v3, "runLength":I
    const/4 v4, 0x0

    .line 874
    .local v4, "clutIndex":I
    const/16 v5, 0x8

    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v6

    .line 875
    .local v6, "peek":I
    if-eqz v6, :cond_19

    .line 876
    const/4 v3, 0x1

    .line 877
    move v4, v6

    move v10, v2

    move v11, v3

    move v12, v4

    move v13, v6

    goto :goto_3f

    .line 879
    :cond_19
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v7

    const/4 v10, 0x7

    if-nez v7, :cond_33

    .line 880
    invoke-virtual {p0, v10}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v6

    .line 881
    if-eqz v6, :cond_2d

    .line 882
    move v3, v6

    .line 883
    const/4 v4, 0x0

    move v10, v2

    move v11, v3

    move v12, v4

    move v13, v6

    goto :goto_3f

    .line 885
    :cond_2d
    const/4 v2, 0x1

    move v10, v2

    move v11, v3

    move v12, v4

    move v13, v6

    goto :goto_3f

    .line 888
    :cond_33
    invoke-virtual {p0, v10}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v3

    .line 889
    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v4

    move v10, v2

    move v11, v3

    move v12, v4

    move v13, v6

    .line 893
    .end local v2    # "endOfPixelCodeString":Z
    .end local v3    # "runLength":I
    .end local v4    # "clutIndex":I
    .end local v6    # "peek":I
    .local v10, "endOfPixelCodeString":Z
    .local v11, "runLength":I
    .local v12, "clutIndex":I
    .local v13, "peek":I
    :goto_3f
    if-eqz v11, :cond_5d

    if-eqz v8, :cond_5d

    .line 894
    if-eqz p2, :cond_48

    aget-byte v2, p2, v12

    goto :goto_49

    :cond_48
    move v2, v12

    :goto_49
    aget v2, p1, v2

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 895
    int-to-float v3, v9

    int-to-float v4, v1

    add-int v2, v9, v11

    int-to-float v5, v2

    add-int/lit8 v2, v1, 0x1

    int-to-float v6, v2

    move-object/from16 v2, p6

    move-object/from16 v7, p5

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 897
    :cond_5d
    add-int/2addr v9, v11

    .line 898
    .end local v11    # "runLength":I
    .end local v12    # "clutIndex":I
    .end local v13    # "peek":I
    if-eqz v10, :cond_61

    .line 900
    return v9

    .line 898
    :cond_61
    move v2, v10

    goto :goto_8
.end method

.method private static paintPixelDataSubBlock([B[IIIILandroid/graphics/Paint;Landroid/graphics/Canvas;)V
    .registers 24
    .param p0, "pixelData"    # [B
    .param p1, "clutEntries"    # [I
    .param p2, "regionDepth"    # I
    .param p3, "horizontalAddress"    # I
    .param p4, "verticalAddress"    # I
    .param p5, "paint"    # Landroid/graphics/Paint;
    .param p6, "canvas"    # Landroid/graphics/Canvas;

    .line 690
    move/from16 v0, p2

    new-instance v1, Lcom/google/android/exoplayer2/util/ParsableBitArray;

    move-object/from16 v2, p0

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;-><init>([B)V

    .line 691
    .local v1, "data":Lcom/google/android/exoplayer2/util/ParsableBitArray;
    move/from16 v3, p3

    .line 692
    .local v3, "column":I
    move/from16 v4, p4

    .line 693
    .local v4, "line":I
    const/4 v5, 0x0

    .line 694
    .local v5, "clutMapTable2To4":[B
    const/4 v6, 0x0

    .line 695
    .local v6, "clutMapTable2To8":[B
    const/4 v7, 0x0

    move v10, v3

    move v11, v4

    move-object v12, v5

    move-object v13, v6

    move-object v14, v7

    .line 697
    .end local v3    # "column":I
    .end local v4    # "line":I
    .end local v5    # "clutMapTable2To4":[B
    .end local v6    # "clutMapTable2To8":[B
    .local v10, "column":I
    .local v11, "line":I
    .local v12, "clutMapTable2To4":[B
    .local v13, "clutMapTable2To8":[B
    .local v14, "clutMapTable4To8":[B
    :goto_15
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitsLeft()I

    move-result v3

    if-eqz v3, :cond_aa

    .line 698
    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v15

    .line 699
    .local v15, "dataType":I
    const/4 v4, 0x3

    const/4 v5, 0x4

    sparse-switch v15, :sswitch_data_ac

    goto/16 :goto_a8

    .line 741
    :sswitch_28
    move/from16 v3, p3

    .line 742
    .end local v10    # "column":I
    .restart local v3    # "column":I
    add-int/lit8 v11, v11, 0x2

    .line 743
    move v10, v3

    goto/16 :goto_a8

    .line 738
    .end local v3    # "column":I
    .restart local v10    # "column":I
    :sswitch_2f
    const/16 v4, 0x10

    invoke-static {v4, v3, v1}, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->buildClutMapTable(IILcom/google/android/exoplayer2/util/ParsableBitArray;)[B

    move-result-object v3

    .line 739
    .end local v14    # "clutMapTable4To8":[B
    .local v3, "clutMapTable4To8":[B
    move-object v14, v3

    goto/16 :goto_a8

    .line 735
    .end local v3    # "clutMapTable4To8":[B
    .restart local v14    # "clutMapTable4To8":[B
    :sswitch_38
    invoke-static {v5, v3, v1}, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->buildClutMapTable(IILcom/google/android/exoplayer2/util/ParsableBitArray;)[B

    move-result-object v3

    .line 736
    .end local v13    # "clutMapTable2To8":[B
    .local v3, "clutMapTable2To8":[B
    move-object v13, v3

    goto/16 :goto_a8

    .line 732
    .end local v3    # "clutMapTable2To8":[B
    .restart local v13    # "clutMapTable2To8":[B
    :sswitch_3f
    invoke-static {v5, v5, v1}, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->buildClutMapTable(IILcom/google/android/exoplayer2/util/ParsableBitArray;)[B

    move-result-object v3

    .line 733
    .end local v12    # "clutMapTable2To4":[B
    .local v3, "clutMapTable2To4":[B
    move-object v12, v3

    goto/16 :goto_a8

    .line 727
    .end local v3    # "clutMapTable2To4":[B
    .restart local v12    # "clutMapTable2To4":[B
    :sswitch_46
    const/4 v5, 0x0

    .line 728
    move-object v3, v1

    move-object/from16 v4, p1

    move v6, v10

    move v7, v11

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-static/range {v3 .. v9}, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->paint8BitPixelCodeString(Lcom/google/android/exoplayer2/util/ParsableBitArray;[I[BIILandroid/graphics/Paint;Landroid/graphics/Canvas;)I

    move-result v3

    .line 730
    .end local v10    # "column":I
    .local v3, "column":I
    move v10, v3

    goto/16 :goto_a8

    .line 716
    .end local v3    # "column":I
    .restart local v10    # "column":I
    :sswitch_57
    if-ne v0, v4, :cond_62

    .line 717
    if-nez v14, :cond_5e

    sget-object v3, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->defaultMap4To8:[B

    goto :goto_5f

    :cond_5e
    move-object v3, v14

    :goto_5f
    move-object/from16 v16, v3

    .local v3, "clutMapTable4ToX":[B
    goto :goto_65

    .line 719
    .end local v3    # "clutMapTable4ToX":[B
    :cond_62
    const/4 v3, 0x0

    move-object/from16 v16, v3

    .line 721
    .local v16, "clutMapTable4ToX":[B
    :goto_65
    nop

    .line 722
    move-object v3, v1

    move-object/from16 v4, p1

    move-object/from16 v5, v16

    move v6, v10

    move v7, v11

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-static/range {v3 .. v9}, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->paint4BitPixelCodeString(Lcom/google/android/exoplayer2/util/ParsableBitArray;[I[BIILandroid/graphics/Paint;Landroid/graphics/Canvas;)I

    move-result v3

    .line 724
    .end local v10    # "column":I
    .local v3, "column":I
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteAlign()V

    .line 725
    move v10, v3

    goto :goto_a8

    .line 702
    .end local v3    # "column":I
    .end local v16    # "clutMapTable4ToX":[B
    .restart local v10    # "column":I
    :sswitch_7a
    if-ne v0, v4, :cond_85

    .line 703
    if-nez v13, :cond_81

    sget-object v3, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->defaultMap2To8:[B

    goto :goto_82

    :cond_81
    move-object v3, v13

    :goto_82
    move-object/from16 v16, v3

    .local v3, "clutMapTable2ToX":[B
    goto :goto_94

    .line 704
    .end local v3    # "clutMapTable2ToX":[B
    :cond_85
    const/4 v3, 0x2

    if-ne v0, v3, :cond_91

    .line 705
    if-nez v12, :cond_8d

    sget-object v3, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->defaultMap2To4:[B

    goto :goto_8e

    :cond_8d
    move-object v3, v12

    :goto_8e
    move-object/from16 v16, v3

    .restart local v3    # "clutMapTable2ToX":[B
    goto :goto_94

    .line 707
    .end local v3    # "clutMapTable2ToX":[B
    :cond_91
    const/4 v3, 0x0

    move-object/from16 v16, v3

    .line 709
    .local v16, "clutMapTable2ToX":[B
    :goto_94
    nop

    .line 710
    move-object v3, v1

    move-object/from16 v4, p1

    move-object/from16 v5, v16

    move v6, v10

    move v7, v11

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-static/range {v3 .. v9}, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->paint2BitPixelCodeString(Lcom/google/android/exoplayer2/util/ParsableBitArray;[I[BIILandroid/graphics/Paint;Landroid/graphics/Canvas;)I

    move-result v3

    .line 712
    .end local v10    # "column":I
    .local v3, "column":I
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteAlign()V

    .line 713
    move v10, v3

    .line 748
    .end local v3    # "column":I
    .end local v15    # "dataType":I
    .end local v16    # "clutMapTable2ToX":[B
    .restart local v10    # "column":I
    :goto_a8
    goto/16 :goto_15

    .line 749
    :cond_aa
    return-void

    nop

    :sswitch_data_ac
    .sparse-switch
        0x10 -> :sswitch_7a
        0x11 -> :sswitch_57
        0x12 -> :sswitch_46
        0x20 -> :sswitch_3f
        0x21 -> :sswitch_38
        0x22 -> :sswitch_2f
        0xf0 -> :sswitch_28
    .end sparse-switch
.end method

.method private static paintPixelDataSubBlocks(Lcom/google/android/exoplayer2/text/dvb/DvbParser$ObjectData;Lcom/google/android/exoplayer2/text/dvb/DvbParser$ClutDefinition;IIILandroid/graphics/Paint;Landroid/graphics/Canvas;)V
    .registers 15
    .param p0, "objectData"    # Lcom/google/android/exoplayer2/text/dvb/DvbParser$ObjectData;
    .param p1, "clutDefinition"    # Lcom/google/android/exoplayer2/text/dvb/DvbParser$ClutDefinition;
    .param p2, "regionDepth"    # I
    .param p3, "horizontalAddress"    # I
    .param p4, "verticalAddress"    # I
    .param p5, "paint"    # Landroid/graphics/Paint;
    .param p6, "canvas"    # Landroid/graphics/Canvas;

    .line 656
    const/4 v0, 0x3

    if-ne p2, v0, :cond_6

    .line 657
    iget-object v0, p1, Lcom/google/android/exoplayer2/text/dvb/DvbParser$ClutDefinition;->clutEntries8Bit:[I

    .local v0, "clutEntries":[I
    goto :goto_e

    .line 658
    .end local v0    # "clutEntries":[I
    :cond_6
    const/4 v0, 0x2

    if-ne p2, v0, :cond_c

    .line 659
    iget-object v0, p1, Lcom/google/android/exoplayer2/text/dvb/DvbParser$ClutDefinition;->clutEntries4Bit:[I

    .restart local v0    # "clutEntries":[I
    goto :goto_e

    .line 661
    .end local v0    # "clutEntries":[I
    :cond_c
    iget-object v0, p1, Lcom/google/android/exoplayer2/text/dvb/DvbParser$ClutDefinition;->clutEntries2Bit:[I

    .line 663
    .restart local v0    # "clutEntries":[I
    :goto_e
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/dvb/DvbParser$ObjectData;->topFieldData:[B

    move-object v2, v0

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-static/range {v1 .. v7}, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->paintPixelDataSubBlock([B[IIIILandroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 671
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/dvb/DvbParser$ObjectData;->bottomFieldData:[B

    add-int/lit8 v5, p4, 0x1

    invoke-static/range {v1 .. v7}, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->paintPixelDataSubBlock([B[IIIILandroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 679
    return-void
.end method

.method private static parseClutDefinition(Lcom/google/android/exoplayer2/util/ParsableBitArray;I)Lcom/google/android/exoplayer2/text/dvb/DvbParser$ClutDefinition;
    .registers 25
    .param p0, "data"    # Lcom/google/android/exoplayer2/util/ParsableBitArray;
    .param p1, "length"    # I

    .line 459
    move-object/from16 v0, p0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v2

    .line 460
    .local v2, "clutId":I
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 461
    add-int/lit8 v3, p1, -0x2

    .line 463
    .local v3, "remainingLength":I
    invoke-static {}, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->generateDefault2BitClutEntries()[I

    move-result-object v4

    .line 464
    .local v4, "clutEntries2Bit":[I
    invoke-static {}, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->generateDefault4BitClutEntries()[I

    move-result-object v5

    .line 465
    .local v5, "clutEntries4Bit":[I
    invoke-static {}, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->generateDefault8BitClutEntries()[I

    move-result-object v6

    .line 467
    .local v6, "clutEntries8Bit":[I
    :goto_19
    if-lez v3, :cond_e8

    .line 468
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v7

    .line 469
    .local v7, "entryId":I
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v8

    .line 470
    .local v8, "entryFlags":I
    add-int/lit8 v3, v3, -0x2

    .line 473
    and-int/lit16 v9, v8, 0x80

    if-eqz v9, :cond_2b

    .line 474
    move-object v9, v4

    .local v9, "clutEntries":[I
    goto :goto_32

    .line 475
    .end local v9    # "clutEntries":[I
    :cond_2b
    and-int/lit8 v9, v8, 0x40

    if-eqz v9, :cond_31

    .line 476
    move-object v9, v5

    .restart local v9    # "clutEntries":[I
    goto :goto_32

    .line 478
    .end local v9    # "clutEntries":[I
    :cond_31
    move-object v9, v6

    .line 485
    .restart local v9    # "clutEntries":[I
    :goto_32
    and-int/lit8 v10, v8, 0x1

    if-eqz v10, :cond_49

    .line 486
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v10

    .line 487
    .local v10, "y":I
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v11

    .line 488
    .local v11, "cr":I
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v12

    .line 489
    .local v12, "cb":I
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v13

    .line 490
    .local v13, "t":I
    add-int/lit8 v3, v3, -0x4

    goto :goto_68

    .line 492
    .end local v10    # "y":I
    .end local v11    # "cr":I
    .end local v12    # "cb":I
    .end local v13    # "t":I
    :cond_49
    const/4 v10, 0x6

    invoke-virtual {v0, v10}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v11

    const/4 v12, 0x2

    shl-int/2addr v11, v12

    .line 493
    .local v11, "y":I
    const/4 v13, 0x4

    invoke-virtual {v0, v13}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v14

    shl-int/2addr v14, v13

    .line 494
    .local v14, "cr":I
    invoke-virtual {v0, v13}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v15

    shl-int/lit8 v13, v15, 0x4

    .line 495
    .local v13, "cb":I
    invoke-virtual {v0, v12}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v12

    shl-int/lit8 v10, v12, 0x6

    .line 496
    .local v10, "t":I
    add-int/lit8 v3, v3, -0x2

    move v12, v13

    move v13, v10

    move v10, v11

    move v11, v14

    .line 499
    .end local v14    # "cr":I
    .local v10, "y":I
    .local v11, "cr":I
    .restart local v12    # "cb":I
    .local v13, "t":I
    :goto_68
    if-nez v10, :cond_6e

    .line 500
    const/4 v11, 0x0

    .line 501
    const/4 v12, 0x0

    .line 502
    const/16 v13, 0xff

    .line 505
    :cond_6e
    and-int/lit16 v14, v13, 0xff

    const/16 v15, 0xff

    rsub-int v14, v14, 0xff

    int-to-byte v14, v14

    .line 506
    .local v14, "a":I
    move/from16 v16, v2

    .end local v2    # "clutId":I
    .local v16, "clutId":I
    int-to-double v1, v10

    add-int/lit8 v15, v11, -0x80

    move/from16 v18, v3

    move-object/from16 v17, v4

    .end local v3    # "remainingLength":I
    .end local v4    # "clutEntries2Bit":[I
    .local v17, "clutEntries2Bit":[I
    .local v18, "remainingLength":I
    int-to-double v3, v15

    const-wide v19, 0x3ff66e978d4fdf3bL    # 1.402

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v19

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v1, v3

    double-to-int v1, v1

    .line 507
    .local v1, "r":I
    int-to-double v2, v10

    add-int/lit8 v4, v12, -0x80

    move-object v15, v5

    .end local v5    # "clutEntries4Bit":[I
    .local v15, "clutEntries4Bit":[I
    int-to-double v4, v4

    const-wide v19, 0x3fd60663c74fb54aL    # 0.34414

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v19

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v2, v4

    add-int/lit8 v4, v11, -0x80

    int-to-double v4, v4

    const-wide v19, 0x3fe6da3c21187e7cL    # 0.71414

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v19

    sub-double/2addr v2, v4

    double-to-int v2, v2

    .line 508
    .local v2, "g":I
    int-to-double v3, v10

    add-int/lit8 v5, v12, -0x80

    move/from16 v19, v10

    move/from16 v20, v11

    .end local v10    # "y":I
    .end local v11    # "cr":I
    .local v19, "y":I
    .local v20, "cr":I
    int-to-double v10, v5

    const-wide v21, 0x3ffc5a1cac083127L    # 1.772

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v10, v10, v21

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v3, v10

    double-to-int v3, v3

    .line 509
    .local v3, "b":I
    nop

    .line 512
    const/4 v4, 0x0

    const/16 v5, 0xff

    invoke-static {v1, v4, v5}, Lcom/google/android/exoplayer2/util/Util;->constrainValue(III)I

    move-result v10

    .line 513
    invoke-static {v2, v4, v5}, Lcom/google/android/exoplayer2/util/Util;->constrainValue(III)I

    move-result v11

    .line 514
    invoke-static {v3, v4, v5}, Lcom/google/android/exoplayer2/util/Util;->constrainValue(III)I

    move-result v4

    .line 510
    invoke-static {v14, v10, v11, v4}, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->getColor(IIII)I

    move-result v4

    aput v4, v9, v7

    .line 515
    .end local v1    # "r":I
    .end local v2    # "g":I
    .end local v3    # "b":I
    .end local v7    # "entryId":I
    .end local v8    # "entryFlags":I
    .end local v9    # "clutEntries":[I
    .end local v12    # "cb":I
    .end local v13    # "t":I
    .end local v14    # "a":I
    .end local v19    # "y":I
    .end local v20    # "cr":I
    move-object v5, v15

    move/from16 v2, v16

    move-object/from16 v4, v17

    move/from16 v3, v18

    const/16 v1, 0x8

    goto/16 :goto_19

    .line 517
    .end local v15    # "clutEntries4Bit":[I
    .end local v16    # "clutId":I
    .end local v17    # "clutEntries2Bit":[I
    .end local v18    # "remainingLength":I
    .local v2, "clutId":I
    .local v3, "remainingLength":I
    .restart local v4    # "clutEntries2Bit":[I
    .restart local v5    # "clutEntries4Bit":[I
    :cond_e8
    new-instance v1, Lcom/google/android/exoplayer2/text/dvb/DvbParser$ClutDefinition;

    invoke-direct {v1, v2, v4, v5, v6}, Lcom/google/android/exoplayer2/text/dvb/DvbParser$ClutDefinition;-><init>(I[I[I[I)V

    return-object v1
.end method

.method private static parseDisplayDefinition(Lcom/google/android/exoplayer2/util/ParsableBitArray;)Lcom/google/android/exoplayer2/text/dvb/DvbParser$DisplayDefinition;
    .registers 16
    .param p0, "data"    # Lcom/google/android/exoplayer2/util/ParsableBitArray;

    .line 344
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 345
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v0

    .line 346
    .local v0, "displayWindowFlag":Z
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 347
    const/16 v1, 0x10

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v9

    .line 348
    .local v9, "width":I
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v10

    .line 354
    .local v10, "height":I
    if-eqz v0, :cond_2c

    .line 355
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v2

    .line 356
    .local v2, "horizontalPositionMinimum":I
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v3

    .line 357
    .local v3, "horizontalPositionMaximum":I
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v4

    .line 358
    .local v4, "verticalPositionMinimum":I
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v1

    move v11, v2

    move v12, v3

    move v13, v4

    .local v1, "verticalPositionMaximum":I
    goto :goto_33

    .line 360
    .end local v1    # "verticalPositionMaximum":I
    .end local v2    # "horizontalPositionMinimum":I
    .end local v3    # "horizontalPositionMaximum":I
    .end local v4    # "verticalPositionMinimum":I
    :cond_2c
    const/4 v2, 0x0

    .line 361
    .restart local v2    # "horizontalPositionMinimum":I
    move v3, v9

    .line 362
    .restart local v3    # "horizontalPositionMaximum":I
    const/4 v4, 0x0

    .line 363
    .restart local v4    # "verticalPositionMinimum":I
    move v1, v10

    move v11, v2

    move v12, v3

    move v13, v4

    .line 366
    .end local v2    # "horizontalPositionMinimum":I
    .end local v3    # "horizontalPositionMaximum":I
    .end local v4    # "verticalPositionMinimum":I
    .restart local v1    # "verticalPositionMaximum":I
    .local v11, "horizontalPositionMinimum":I
    .local v12, "horizontalPositionMaximum":I
    .local v13, "verticalPositionMinimum":I
    :goto_33
    new-instance v14, Lcom/google/android/exoplayer2/text/dvb/DvbParser$DisplayDefinition;

    move-object v2, v14

    move v3, v9

    move v4, v10

    move v5, v11

    move v6, v12

    move v7, v13

    move v8, v1

    invoke-direct/range {v2 .. v8}, Lcom/google/android/exoplayer2/text/dvb/DvbParser$DisplayDefinition;-><init>(IIIIII)V

    return-object v14
.end method

.method private static parseObjectData(Lcom/google/android/exoplayer2/util/ParsableBitArray;)Lcom/google/android/exoplayer2/text/dvb/DvbParser$ObjectData;
    .registers 9
    .param p0, "data"    # Lcom/google/android/exoplayer2/util/ParsableBitArray;

    .line 526
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v1

    .line 527
    .local v1, "objectId":I
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 528
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v2

    .line 529
    .local v2, "objectCodingMethod":I
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v3

    .line 530
    .local v3, "nonModifyingColorFlag":Z
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 532
    sget-object v5, Lcom/google/android/exoplayer2/util/Util;->EMPTY_BYTE_ARRAY:[B

    .line 533
    .local v5, "topFieldData":[B
    sget-object v6, Lcom/google/android/exoplayer2/util/Util;->EMPTY_BYTE_ARRAY:[B

    .line 535
    .local v6, "bottomFieldData":[B
    if-ne v2, v4, :cond_29

    .line 536
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v0

    .line 538
    .local v0, "numberOfCodes":I
    mul-int/lit8 v4, v0, 0x10

    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .end local v0    # "numberOfCodes":I
    goto :goto_45

    .line 539
    :cond_29
    if-nez v2, :cond_45

    .line 540
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v4

    .line 541
    .local v4, "topFieldDataLength":I
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v0

    .line 542
    .local v0, "bottomFieldDataLength":I
    const/4 v7, 0x0

    if-lez v4, :cond_3b

    .line 543
    new-array v5, v4, [B

    .line 544
    invoke-virtual {p0, v5, v7, v4}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBytes([BII)V

    .line 546
    :cond_3b
    if-lez v0, :cond_43

    .line 547
    new-array v6, v0, [B

    .line 548
    invoke-virtual {p0, v6, v7, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBytes([BII)V

    goto :goto_46

    .line 550
    :cond_43
    move-object v6, v5

    goto :goto_46

    .line 539
    .end local v0    # "bottomFieldDataLength":I
    .end local v4    # "topFieldDataLength":I
    :cond_45
    :goto_45
    nop

    .line 554
    :goto_46
    new-instance v0, Lcom/google/android/exoplayer2/text/dvb/DvbParser$ObjectData;

    invoke-direct {v0, v1, v3, v5, v6}, Lcom/google/android/exoplayer2/text/dvb/DvbParser$ObjectData;-><init>(IZ[B[B)V

    return-object v0
.end method

.method private static parsePageComposition(Lcom/google/android/exoplayer2/util/ParsableBitArray;I)Lcom/google/android/exoplayer2/text/dvb/DvbParser$PageComposition;
    .registers 12
    .param p0, "data"    # Lcom/google/android/exoplayer2/util/ParsableBitArray;
    .param p1, "length"    # I

    .line 377
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v1

    .line 378
    .local v1, "timeoutSecs":I
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v2

    .line 379
    .local v2, "version":I
    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v4

    .line 380
    .local v4, "state":I
    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 381
    add-int/lit8 v3, p1, -0x2

    .line 383
    .local v3, "remainingLength":I
    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    .line 384
    .local v5, "regions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/google/android/exoplayer2/text/dvb/DvbParser$PageRegion;>;"
    :goto_1a
    if-lez v3, :cond_38

    .line 385
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v6

    .line 386
    .local v6, "regionId":I
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 387
    const/16 v7, 0x10

    invoke-virtual {p0, v7}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v8

    .line 388
    .local v8, "regionHorizontalAddress":I
    invoke-virtual {p0, v7}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v7

    .line 389
    .local v7, "regionVerticalAddress":I
    add-int/lit8 v3, v3, -0x6

    .line 390
    new-instance v9, Lcom/google/android/exoplayer2/text/dvb/DvbParser$PageRegion;

    invoke-direct {v9, v8, v7}, Lcom/google/android/exoplayer2/text/dvb/DvbParser$PageRegion;-><init>(II)V

    invoke-virtual {v5, v6, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 391
    .end local v6    # "regionId":I
    .end local v7    # "regionVerticalAddress":I
    .end local v8    # "regionHorizontalAddress":I
    goto :goto_1a

    .line 393
    :cond_38
    new-instance v0, Lcom/google/android/exoplayer2/text/dvb/DvbParser$PageComposition;

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/google/android/exoplayer2/text/dvb/DvbParser$PageComposition;-><init>(IIILandroid/util/SparseArray;)V

    return-object v0
.end method

.method private static parseRegionComposition(Lcom/google/android/exoplayer2/util/ParsableBitArray;I)Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionComposition;
    .registers 33
    .param p0, "data"    # Lcom/google/android/exoplayer2/util/ParsableBitArray;
    .param p1, "length"    # I

    .line 398
    move-object/from16 v0, p0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v14

    .line 399
    .local v14, "id":I
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 400
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v15

    .line 401
    .local v15, "fillFlag":Z
    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 402
    const/16 v4, 0x10

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v16

    .line 403
    .local v16, "width":I
    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v17

    .line 404
    .local v17, "height":I
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v18

    .line 405
    .local v18, "levelOfCompatibility":I
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v19

    .line 406
    .local v19, "depth":I
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 407
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v20

    .line 408
    .local v20, "clutId":I
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v21

    .line 409
    .local v21, "pixelCode8Bit":I
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v22

    .line 410
    .local v22, "pixelCode4Bit":I
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v23

    .line 411
    .local v23, "pixelCode2Bit":I
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 412
    add-int/lit8 v5, p1, -0xa

    .line 414
    .local v5, "remainingLength":I
    new-instance v6, Landroid/util/SparseArray;

    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    move-object v13, v6

    move/from16 v24, v5

    .line 415
    .end local v5    # "remainingLength":I
    .local v13, "regionObjects":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionObject;>;"
    .local v24, "remainingLength":I
    :goto_47
    if-lez v24, :cond_9f

    .line 416
    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v5

    .line 417
    .local v5, "objectId":I
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v12

    .line 418
    .local v12, "objectType":I
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v25

    .line 419
    .local v25, "objectProvider":I
    const/16 v6, 0xc

    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v26

    .line 420
    .local v26, "objectHorizontalPosition":I
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 421
    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v27

    .line 422
    .local v27, "objectVerticalPosition":I
    add-int/lit8 v24, v24, -0x6

    .line 424
    const/4 v6, 0x0

    .line 425
    .local v6, "foregroundPixelCode":I
    const/4 v7, 0x0

    .line 426
    .local v7, "backgroundPixelCode":I
    const/4 v8, 0x1

    if-eq v12, v8, :cond_73

    if-ne v12, v3, :cond_6c

    goto :goto_73

    :cond_6c
    move/from16 v28, v7

    move/from16 v29, v24

    move/from16 v24, v6

    goto :goto_83

    .line 427
    :cond_73
    :goto_73
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v6

    .line 428
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v7

    .line 429
    add-int/lit8 v24, v24, -0x2

    move/from16 v28, v7

    move/from16 v29, v24

    move/from16 v24, v6

    .line 432
    .end local v6    # "foregroundPixelCode":I
    .end local v7    # "backgroundPixelCode":I
    .local v24, "foregroundPixelCode":I
    .local v28, "backgroundPixelCode":I
    .local v29, "remainingLength":I
    :goto_83
    new-instance v11, Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionObject;

    move-object v6, v11

    move v7, v12

    move/from16 v8, v25

    move/from16 v9, v26

    move/from16 v10, v27

    move-object v1, v11

    move/from16 v11, v24

    move/from16 v30, v12

    .end local v12    # "objectType":I
    .local v30, "objectType":I
    move/from16 v12, v28

    invoke-direct/range {v6 .. v12}, Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionObject;-><init>(IIIIII)V

    invoke-virtual {v13, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 441
    .end local v5    # "objectId":I
    .end local v24    # "foregroundPixelCode":I
    .end local v25    # "objectProvider":I
    .end local v26    # "objectHorizontalPosition":I
    .end local v27    # "objectVerticalPosition":I
    .end local v28    # "backgroundPixelCode":I
    .end local v30    # "objectType":I
    move/from16 v24, v29

    const/16 v1, 0x8

    goto :goto_47

    .line 443
    .end local v29    # "remainingLength":I
    .local v24, "remainingLength":I
    :cond_9f
    new-instance v1, Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionComposition;

    move-object v2, v1

    move v3, v14

    move v4, v15

    move/from16 v5, v16

    move/from16 v6, v17

    move/from16 v7, v18

    move/from16 v8, v19

    move/from16 v9, v20

    move/from16 v10, v21

    move/from16 v11, v22

    move/from16 v12, v23

    move-object/from16 v25, v13

    .end local v13    # "regionObjects":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionObject;>;"
    .local v25, "regionObjects":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionObject;>;"
    invoke-direct/range {v2 .. v13}, Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionComposition;-><init>(IZIIIIIIIILandroid/util/SparseArray;)V

    return-object v1
.end method

.method private static parseSubtitlingSegment(Lcom/google/android/exoplayer2/util/ParsableBitArray;Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;)V
    .registers 10
    .param p0, "data"    # Lcom/google/android/exoplayer2/util/ParsableBitArray;
    .param p1, "service"    # Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;

    .line 269
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v0

    .line 270
    .local v0, "segmentType":I
    const/16 v1, 0x10

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v2

    .line 271
    .local v2, "pageId":I
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v1

    .line 272
    .local v1, "dataFieldLength":I
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->getBytePosition()I

    move-result v3

    add-int/2addr v3, v1

    .line 274
    .local v3, "dataFieldLimit":I
    mul-int/lit8 v4, v1, 0x8

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitsLeft()I

    move-result v5

    if-le v4, v5, :cond_2c

    .line 275
    const-string v4, "DvbParser"

    const-string v5, "Data field length exceeds limit"

    invoke-static {v4, v5}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitsLeft()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 278
    return-void

    .line 281
    :cond_2c
    packed-switch v0, :pswitch_data_de

    goto/16 :goto_d3

    .line 283
    :pswitch_31
    iget v4, p1, Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;->subtitlePageId:I

    if-ne v2, v4, :cond_d3

    .line 284
    invoke-static {p0}, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->parseDisplayDefinition(Lcom/google/android/exoplayer2/util/ParsableBitArray;)Lcom/google/android/exoplayer2/text/dvb/DvbParser$DisplayDefinition;

    move-result-object v4

    iput-object v4, p1, Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;->displayDefinition:Lcom/google/android/exoplayer2/text/dvb/DvbParser$DisplayDefinition;

    goto/16 :goto_d3

    .line 325
    :pswitch_3d
    iget v4, p1, Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;->subtitlePageId:I

    if-ne v2, v4, :cond_4d

    .line 326
    invoke-static {p0}, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->parseObjectData(Lcom/google/android/exoplayer2/util/ParsableBitArray;)Lcom/google/android/exoplayer2/text/dvb/DvbParser$ObjectData;

    move-result-object v4

    .line 327
    .local v4, "objectData":Lcom/google/android/exoplayer2/text/dvb/DvbParser$ObjectData;
    iget-object v5, p1, Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;->objects:Landroid/util/SparseArray;

    iget v6, v4, Lcom/google/android/exoplayer2/text/dvb/DvbParser$ObjectData;->id:I

    invoke-virtual {v5, v6, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .end local v4    # "objectData":Lcom/google/android/exoplayer2/text/dvb/DvbParser$ObjectData;
    goto :goto_5e

    .line 328
    :cond_4d
    iget v4, p1, Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;->ancillaryPageId:I

    if-ne v2, v4, :cond_5e

    .line 329
    invoke-static {p0}, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->parseObjectData(Lcom/google/android/exoplayer2/util/ParsableBitArray;)Lcom/google/android/exoplayer2/text/dvb/DvbParser$ObjectData;

    move-result-object v4

    .line 330
    .restart local v4    # "objectData":Lcom/google/android/exoplayer2/text/dvb/DvbParser$ObjectData;
    iget-object v5, p1, Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;->ancillaryObjects:Landroid/util/SparseArray;

    iget v6, v4, Lcom/google/android/exoplayer2/text/dvb/DvbParser$ObjectData;->id:I

    invoke-virtual {v5, v6, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 331
    .end local v4    # "objectData":Lcom/google/android/exoplayer2/text/dvb/DvbParser$ObjectData;
    goto/16 :goto_d3

    .line 328
    :cond_5e
    :goto_5e
    goto/16 :goto_d3

    .line 316
    :pswitch_60
    iget v4, p1, Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;->subtitlePageId:I

    if-ne v2, v4, :cond_70

    .line 317
    invoke-static {p0, v1}, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->parseClutDefinition(Lcom/google/android/exoplayer2/util/ParsableBitArray;I)Lcom/google/android/exoplayer2/text/dvb/DvbParser$ClutDefinition;

    move-result-object v4

    .line 318
    .local v4, "clutDefinition":Lcom/google/android/exoplayer2/text/dvb/DvbParser$ClutDefinition;
    iget-object v5, p1, Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;->cluts:Landroid/util/SparseArray;

    iget v6, v4, Lcom/google/android/exoplayer2/text/dvb/DvbParser$ClutDefinition;->id:I

    invoke-virtual {v5, v6, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .end local v4    # "clutDefinition":Lcom/google/android/exoplayer2/text/dvb/DvbParser$ClutDefinition;
    goto :goto_80

    .line 319
    :cond_70
    iget v4, p1, Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;->ancillaryPageId:I

    if-ne v2, v4, :cond_80

    .line 320
    invoke-static {p0, v1}, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->parseClutDefinition(Lcom/google/android/exoplayer2/util/ParsableBitArray;I)Lcom/google/android/exoplayer2/text/dvb/DvbParser$ClutDefinition;

    move-result-object v4

    .line 321
    .restart local v4    # "clutDefinition":Lcom/google/android/exoplayer2/text/dvb/DvbParser$ClutDefinition;
    iget-object v5, p1, Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;->ancillaryCluts:Landroid/util/SparseArray;

    iget v6, v4, Lcom/google/android/exoplayer2/text/dvb/DvbParser$ClutDefinition;->id:I

    invoke-virtual {v5, v6, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 322
    .end local v4    # "clutDefinition":Lcom/google/android/exoplayer2/text/dvb/DvbParser$ClutDefinition;
    goto :goto_d3

    .line 319
    :cond_80
    :goto_80
    goto :goto_d3

    .line 302
    :pswitch_81
    iget-object v4, p1, Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;->pageComposition:Lcom/google/android/exoplayer2/text/dvb/DvbParser$PageComposition;

    .line 303
    .local v4, "pageComposition":Lcom/google/android/exoplayer2/text/dvb/DvbParser$PageComposition;
    iget v5, p1, Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;->subtitlePageId:I

    if-ne v2, v5, :cond_d3

    if-eqz v4, :cond_d3

    .line 304
    invoke-static {p0, v1}, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->parseRegionComposition(Lcom/google/android/exoplayer2/util/ParsableBitArray;I)Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionComposition;

    move-result-object v5

    .line 305
    .local v5, "regionComposition":Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionComposition;
    iget v6, v4, Lcom/google/android/exoplayer2/text/dvb/DvbParser$PageComposition;->state:I

    if-nez v6, :cond_a0

    .line 307
    iget-object v6, p1, Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;->regions:Landroid/util/SparseArray;

    iget v7, v5, Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionComposition;->id:I

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionComposition;

    .line 308
    .local v6, "existingRegionComposition":Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionComposition;
    if-eqz v6, :cond_a0

    .line 309
    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionComposition;->mergeFrom(Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionComposition;)V

    .line 312
    .end local v6    # "existingRegionComposition":Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionComposition;
    :cond_a0
    iget-object v6, p1, Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;->regions:Landroid/util/SparseArray;

    iget v7, v5, Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionComposition;->id:I

    invoke-virtual {v6, v7, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 313
    .end local v5    # "regionComposition":Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionComposition;
    goto :goto_d3

    .line 288
    .end local v4    # "pageComposition":Lcom/google/android/exoplayer2/text/dvb/DvbParser$PageComposition;
    :pswitch_a8
    iget v4, p1, Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;->subtitlePageId:I

    if-ne v2, v4, :cond_d3

    .line 289
    iget-object v4, p1, Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;->pageComposition:Lcom/google/android/exoplayer2/text/dvb/DvbParser$PageComposition;

    .line 290
    .local v4, "current":Lcom/google/android/exoplayer2/text/dvb/DvbParser$PageComposition;
    invoke-static {p0, v1}, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->parsePageComposition(Lcom/google/android/exoplayer2/util/ParsableBitArray;I)Lcom/google/android/exoplayer2/text/dvb/DvbParser$PageComposition;

    move-result-object v5

    .line 291
    .local v5, "pageComposition":Lcom/google/android/exoplayer2/text/dvb/DvbParser$PageComposition;
    iget v6, v5, Lcom/google/android/exoplayer2/text/dvb/DvbParser$PageComposition;->state:I

    if-eqz v6, :cond_c8

    .line 292
    iput-object v5, p1, Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;->pageComposition:Lcom/google/android/exoplayer2/text/dvb/DvbParser$PageComposition;

    .line 293
    iget-object v6, p1, Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;->regions:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->clear()V

    .line 294
    iget-object v6, p1, Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;->cluts:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->clear()V

    .line 295
    iget-object v6, p1, Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;->objects:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->clear()V

    goto :goto_d2

    .line 296
    :cond_c8
    if-eqz v4, :cond_d2

    iget v6, v4, Lcom/google/android/exoplayer2/text/dvb/DvbParser$PageComposition;->version:I

    iget v7, v5, Lcom/google/android/exoplayer2/text/dvb/DvbParser$PageComposition;->version:I

    if-eq v6, v7, :cond_d2

    .line 297
    iput-object v5, p1, Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;->pageComposition:Lcom/google/android/exoplayer2/text/dvb/DvbParser$PageComposition;

    .line 299
    .end local v4    # "current":Lcom/google/android/exoplayer2/text/dvb/DvbParser$PageComposition;
    .end local v5    # "pageComposition":Lcom/google/android/exoplayer2/text/dvb/DvbParser$PageComposition;
    :cond_d2
    :goto_d2
    nop

    .line 339
    :cond_d3
    :goto_d3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->getBytePosition()I

    move-result v4

    sub-int v4, v3, v4

    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBytes(I)V

    .line 340
    return-void

    nop

    :pswitch_data_de
    .packed-switch 0x10
        :pswitch_a8
        :pswitch_81
        :pswitch_60
        :pswitch_3d
        :pswitch_31
    .end packed-switch
.end method


# virtual methods
.method public decode([BI)Ljava/util/List;
    .registers 32
    .param p1, "data"    # [B
    .param p2, "limit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI)",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/Cue;",
            ">;"
        }
    .end annotation

    .line 139
    move-object/from16 v0, p0

    new-instance v1, Lcom/google/android/exoplayer2/util/ParsableBitArray;

    move-object/from16 v2, p1

    move/from16 v3, p2

    invoke-direct {v1, v2, v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;-><init>([BI)V

    .line 140
    .local v1, "dataBitArray":Lcom/google/android/exoplayer2/util/ParsableBitArray;
    :goto_b
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitsLeft()I

    move-result v4

    const/16 v5, 0x30

    if-lt v4, v5, :cond_23

    .line 141
    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v4

    const/16 v5, 0xf

    if-ne v4, v5, :cond_23

    .line 142
    iget-object v4, v0, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->subtitleService:Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;

    invoke-static {v1, v4}, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->parseSubtitlingSegment(Lcom/google/android/exoplayer2/util/ParsableBitArray;Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;)V

    goto :goto_b

    .line 145
    :cond_23
    iget-object v4, v0, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->subtitleService:Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;

    iget-object v4, v4, Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;->pageComposition:Lcom/google/android/exoplayer2/text/dvb/DvbParser$PageComposition;

    .line 146
    .local v4, "pageComposition":Lcom/google/android/exoplayer2/text/dvb/DvbParser$PageComposition;
    if-nez v4, :cond_2e

    .line 147
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    return-object v5

    .line 152
    :cond_2e
    iget-object v5, v0, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->subtitleService:Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;

    iget-object v5, v5, Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;->displayDefinition:Lcom/google/android/exoplayer2/text/dvb/DvbParser$DisplayDefinition;

    if-eqz v5, :cond_39

    .line 153
    iget-object v5, v0, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->subtitleService:Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;

    iget-object v5, v5, Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;->displayDefinition:Lcom/google/android/exoplayer2/text/dvb/DvbParser$DisplayDefinition;

    goto :goto_3b

    .line 154
    :cond_39
    iget-object v5, v0, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->defaultDisplayDefinition:Lcom/google/android/exoplayer2/text/dvb/DvbParser$DisplayDefinition;

    :goto_3b
    nop

    .line 155
    .local v5, "displayDefinition":Lcom/google/android/exoplayer2/text/dvb/DvbParser$DisplayDefinition;
    iget-object v6, v0, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_58

    iget v6, v5, Lcom/google/android/exoplayer2/text/dvb/DvbParser$DisplayDefinition;->width:I

    add-int/lit8 v6, v6, 0x1

    iget-object v7, v0, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->bitmap:Landroid/graphics/Bitmap;

    .line 156
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    if-ne v6, v7, :cond_58

    iget v6, v5, Lcom/google/android/exoplayer2/text/dvb/DvbParser$DisplayDefinition;->height:I

    add-int/lit8 v6, v6, 0x1

    iget-object v7, v0, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->bitmap:Landroid/graphics/Bitmap;

    .line 157
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    if-eq v6, v7, :cond_6d

    .line 158
    :cond_58
    iget v6, v5, Lcom/google/android/exoplayer2/text/dvb/DvbParser$DisplayDefinition;->width:I

    add-int/lit8 v6, v6, 0x1

    iget v7, v5, Lcom/google/android/exoplayer2/text/dvb/DvbParser$DisplayDefinition;->height:I

    add-int/lit8 v7, v7, 0x1

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 159
    invoke-static {v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, v0, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->bitmap:Landroid/graphics/Bitmap;

    .line 161
    iget-object v7, v0, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v7, v6}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 165
    :cond_6d
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 166
    .local v6, "cues":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/text/Cue;>;"
    iget-object v7, v4, Lcom/google/android/exoplayer2/text/dvb/DvbParser$PageComposition;->regions:Landroid/util/SparseArray;

    .line 167
    .local v7, "pageRegions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/google/android/exoplayer2/text/dvb/DvbParser$PageRegion;>;"
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_75
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v9

    if-ge v8, v9, :cond_200

    .line 169
    iget-object v9, v0, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v9}, Landroid/graphics/Canvas;->save()I

    .line 170
    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/exoplayer2/text/dvb/DvbParser$PageRegion;

    .line 171
    .local v9, "pageRegion":Lcom/google/android/exoplayer2/text/dvb/DvbParser$PageRegion;
    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v10

    .line 172
    .local v10, "regionId":I
    iget-object v11, v0, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->subtitleService:Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;

    iget-object v11, v11, Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;->regions:Landroid/util/SparseArray;

    invoke-virtual {v11, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionComposition;

    .line 175
    .local v11, "regionComposition":Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionComposition;
    iget v12, v9, Lcom/google/android/exoplayer2/text/dvb/DvbParser$PageRegion;->horizontalAddress:I

    iget v13, v5, Lcom/google/android/exoplayer2/text/dvb/DvbParser$DisplayDefinition;->horizontalPositionMinimum:I

    add-int/2addr v12, v13

    .line 177
    .local v12, "baseHorizontalAddress":I
    iget v13, v9, Lcom/google/android/exoplayer2/text/dvb/DvbParser$PageRegion;->verticalAddress:I

    iget v14, v5, Lcom/google/android/exoplayer2/text/dvb/DvbParser$DisplayDefinition;->verticalPositionMinimum:I

    add-int/2addr v13, v14

    .line 179
    .local v13, "baseVerticalAddress":I
    iget v14, v11, Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionComposition;->width:I

    add-int/2addr v14, v12

    iget v15, v5, Lcom/google/android/exoplayer2/text/dvb/DvbParser$DisplayDefinition;->horizontalPositionMaximum:I

    .line 180
    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 183
    .local v14, "clipRight":I
    iget v15, v11, Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionComposition;->height:I

    add-int/2addr v15, v13

    move-object/from16 v16, v1

    .end local v1    # "dataBitArray":Lcom/google/android/exoplayer2/util/ParsableBitArray;
    .local v16, "dataBitArray":Lcom/google/android/exoplayer2/util/ParsableBitArray;
    iget v1, v5, Lcom/google/android/exoplayer2/text/dvb/DvbParser$DisplayDefinition;->verticalPositionMaximum:I

    .line 184
    invoke-static {v15, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 187
    .local v1, "clipBottom":I
    iget-object v15, v0, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v15, v12, v13, v14, v1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 188
    iget-object v15, v0, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->subtitleService:Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;

    iget-object v15, v15, Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;->cluts:Landroid/util/SparseArray;

    move/from16 v17, v1

    .end local v1    # "clipBottom":I
    .local v17, "clipBottom":I
    iget v1, v11, Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionComposition;->clutId:I

    invoke-virtual {v15, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/text/dvb/DvbParser$ClutDefinition;

    .line 189
    .local v1, "clutDefinition":Lcom/google/android/exoplayer2/text/dvb/DvbParser$ClutDefinition;
    if-nez v1, :cond_da

    .line 190
    iget-object v15, v0, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->subtitleService:Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;

    iget-object v15, v15, Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;->ancillaryCluts:Landroid/util/SparseArray;

    move-object/from16 v18, v1

    .end local v1    # "clutDefinition":Lcom/google/android/exoplayer2/text/dvb/DvbParser$ClutDefinition;
    .local v18, "clutDefinition":Lcom/google/android/exoplayer2/text/dvb/DvbParser$ClutDefinition;
    iget v1, v11, Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionComposition;->clutId:I

    invoke-virtual {v15, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/text/dvb/DvbParser$ClutDefinition;

    .line 191
    .end local v18    # "clutDefinition":Lcom/google/android/exoplayer2/text/dvb/DvbParser$ClutDefinition;
    .restart local v1    # "clutDefinition":Lcom/google/android/exoplayer2/text/dvb/DvbParser$ClutDefinition;
    if-nez v1, :cond_dc

    .line 192
    iget-object v1, v0, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->defaultClutDefinition:Lcom/google/android/exoplayer2/text/dvb/DvbParser$ClutDefinition;

    goto :goto_dc

    .line 189
    :cond_da
    move-object/from16 v18, v1

    .line 196
    :cond_dc
    :goto_dc
    iget-object v15, v11, Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionComposition;->regionObjects:Landroid/util/SparseArray;

    .line 197
    .local v15, "regionObjects":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionObject;>;"
    const/16 v18, 0x0

    move/from16 v2, v18

    .local v2, "j":I
    :goto_e2
    invoke-virtual {v15}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_14a

    .line 198
    invoke-virtual {v15, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 199
    .local v3, "objectId":I
    invoke-virtual {v15, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v25, v4

    .end local v4    # "pageComposition":Lcom/google/android/exoplayer2/text/dvb/DvbParser$PageComposition;
    .local v25, "pageComposition":Lcom/google/android/exoplayer2/text/dvb/DvbParser$PageComposition;
    move-object/from16 v4, v18

    check-cast v4, Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionObject;

    .line 200
    .local v4, "regionObject":Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionObject;
    move-object/from16 v26, v7

    .end local v7    # "pageRegions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/google/android/exoplayer2/text/dvb/DvbParser$PageRegion;>;"
    .local v26, "pageRegions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/google/android/exoplayer2/text/dvb/DvbParser$PageRegion;>;"
    iget-object v7, v0, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->subtitleService:Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;

    iget-object v7, v7, Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;->objects:Landroid/util/SparseArray;

    invoke-virtual {v7, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/exoplayer2/text/dvb/DvbParser$ObjectData;

    .line 201
    .local v7, "objectData":Lcom/google/android/exoplayer2/text/dvb/DvbParser$ObjectData;
    if-nez v7, :cond_111

    .line 202
    move-object/from16 v18, v7

    .end local v7    # "objectData":Lcom/google/android/exoplayer2/text/dvb/DvbParser$ObjectData;
    .local v18, "objectData":Lcom/google/android/exoplayer2/text/dvb/DvbParser$ObjectData;
    iget-object v7, v0, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->subtitleService:Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;

    iget-object v7, v7, Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;->ancillaryObjects:Landroid/util/SparseArray;

    invoke-virtual {v7, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/exoplayer2/text/dvb/DvbParser$ObjectData;

    .end local v18    # "objectData":Lcom/google/android/exoplayer2/text/dvb/DvbParser$ObjectData;
    .restart local v7    # "objectData":Lcom/google/android/exoplayer2/text/dvb/DvbParser$ObjectData;
    goto :goto_113

    .line 201
    :cond_111
    move-object/from16 v18, v7

    .line 204
    :goto_113
    if-eqz v7, :cond_13b

    .line 205
    move/from16 v27, v3

    .end local v3    # "objectId":I
    .local v27, "objectId":I
    iget-boolean v3, v7, Lcom/google/android/exoplayer2/text/dvb/DvbParser$ObjectData;->nonModifyingColorFlag:Z

    if-eqz v3, :cond_11d

    const/4 v3, 0x0

    goto :goto_11f

    :cond_11d
    iget-object v3, v0, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->defaultPaint:Landroid/graphics/Paint;

    :goto_11f
    move-object/from16 v23, v3

    .line 206
    .local v23, "paint":Landroid/graphics/Paint;
    iget v3, v11, Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionComposition;->depth:I

    move-object/from16 v28, v9

    .end local v9    # "pageRegion":Lcom/google/android/exoplayer2/text/dvb/DvbParser$PageRegion;
    .local v28, "pageRegion":Lcom/google/android/exoplayer2/text/dvb/DvbParser$PageRegion;
    iget v9, v4, Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionObject;->horizontalPosition:I

    add-int v21, v12, v9

    iget v9, v4, Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionObject;->verticalPosition:I

    add-int v22, v13, v9

    iget-object v9, v0, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->canvas:Landroid/graphics/Canvas;

    move-object/from16 v18, v7

    move-object/from16 v19, v1

    move/from16 v20, v3

    move-object/from16 v24, v9

    invoke-static/range {v18 .. v24}, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->paintPixelDataSubBlocks(Lcom/google/android/exoplayer2/text/dvb/DvbParser$ObjectData;Lcom/google/android/exoplayer2/text/dvb/DvbParser$ClutDefinition;IIILandroid/graphics/Paint;Landroid/graphics/Canvas;)V

    goto :goto_13f

    .line 204
    .end local v23    # "paint":Landroid/graphics/Paint;
    .end local v27    # "objectId":I
    .end local v28    # "pageRegion":Lcom/google/android/exoplayer2/text/dvb/DvbParser$PageRegion;
    .restart local v3    # "objectId":I
    .restart local v9    # "pageRegion":Lcom/google/android/exoplayer2/text/dvb/DvbParser$PageRegion;
    :cond_13b
    move/from16 v27, v3

    move-object/from16 v28, v9

    .line 197
    .end local v3    # "objectId":I
    .end local v4    # "regionObject":Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionObject;
    .end local v7    # "objectData":Lcom/google/android/exoplayer2/text/dvb/DvbParser$ObjectData;
    .end local v9    # "pageRegion":Lcom/google/android/exoplayer2/text/dvb/DvbParser$PageRegion;
    .restart local v28    # "pageRegion":Lcom/google/android/exoplayer2/text/dvb/DvbParser$PageRegion;
    :goto_13f
    add-int/lit8 v2, v2, 0x1

    move/from16 v3, p2

    move-object/from16 v4, v25

    move-object/from16 v7, v26

    move-object/from16 v9, v28

    goto :goto_e2

    .end local v25    # "pageComposition":Lcom/google/android/exoplayer2/text/dvb/DvbParser$PageComposition;
    .end local v26    # "pageRegions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/google/android/exoplayer2/text/dvb/DvbParser$PageRegion;>;"
    .end local v28    # "pageRegion":Lcom/google/android/exoplayer2/text/dvb/DvbParser$PageRegion;
    .local v4, "pageComposition":Lcom/google/android/exoplayer2/text/dvb/DvbParser$PageComposition;
    .local v7, "pageRegions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/google/android/exoplayer2/text/dvb/DvbParser$PageRegion;>;"
    .restart local v9    # "pageRegion":Lcom/google/android/exoplayer2/text/dvb/DvbParser$PageRegion;
    :cond_14a
    move-object/from16 v25, v4

    move-object/from16 v26, v7

    move-object/from16 v28, v9

    .line 217
    .end local v2    # "j":I
    .end local v4    # "pageComposition":Lcom/google/android/exoplayer2/text/dvb/DvbParser$PageComposition;
    .end local v7    # "pageRegions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/google/android/exoplayer2/text/dvb/DvbParser$PageRegion;>;"
    .end local v9    # "pageRegion":Lcom/google/android/exoplayer2/text/dvb/DvbParser$PageRegion;
    .restart local v25    # "pageComposition":Lcom/google/android/exoplayer2/text/dvb/DvbParser$PageComposition;
    .restart local v26    # "pageRegions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/google/android/exoplayer2/text/dvb/DvbParser$PageRegion;>;"
    .restart local v28    # "pageRegion":Lcom/google/android/exoplayer2/text/dvb/DvbParser$PageRegion;
    iget-boolean v2, v11, Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionComposition;->fillFlag:Z

    if-eqz v2, :cond_199

    .line 219
    iget v2, v11, Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionComposition;->depth:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_160

    .line 220
    iget-object v2, v1, Lcom/google/android/exoplayer2/text/dvb/DvbParser$ClutDefinition;->clutEntries8Bit:[I

    iget v3, v11, Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionComposition;->pixelCode8Bit:I

    aget v2, v2, v3

    .local v2, "color":I
    goto :goto_172

    .line 221
    .end local v2    # "color":I
    :cond_160
    iget v2, v11, Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionComposition;->depth:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_16c

    .line 222
    iget-object v2, v1, Lcom/google/android/exoplayer2/text/dvb/DvbParser$ClutDefinition;->clutEntries4Bit:[I

    iget v3, v11, Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionComposition;->pixelCode4Bit:I

    aget v2, v2, v3

    .restart local v2    # "color":I
    goto :goto_172

    .line 224
    .end local v2    # "color":I
    :cond_16c
    iget-object v2, v1, Lcom/google/android/exoplayer2/text/dvb/DvbParser$ClutDefinition;->clutEntries2Bit:[I

    iget v3, v11, Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionComposition;->pixelCode2Bit:I

    aget v2, v2, v3

    .line 226
    .restart local v2    # "color":I
    :goto_172
    iget-object v3, v0, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->fillRegionPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 227
    iget-object v3, v0, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->canvas:Landroid/graphics/Canvas;

    int-to-float v4, v12

    int-to-float v7, v13

    iget v9, v11, Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionComposition;->width:I

    add-int/2addr v9, v12

    int-to-float v9, v9

    move-object/from16 v24, v1

    .end local v1    # "clutDefinition":Lcom/google/android/exoplayer2/text/dvb/DvbParser$ClutDefinition;
    .local v24, "clutDefinition":Lcom/google/android/exoplayer2/text/dvb/DvbParser$ClutDefinition;
    iget v1, v11, Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionComposition;->height:I

    add-int/2addr v1, v13

    int-to-float v1, v1

    move/from16 v27, v2

    .end local v2    # "color":I
    .local v27, "color":I
    iget-object v2, v0, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->fillRegionPaint:Landroid/graphics/Paint;

    move-object/from16 v18, v3

    move/from16 v19, v4

    move/from16 v20, v7

    move/from16 v21, v9

    move/from16 v22, v1

    move-object/from16 v23, v2

    invoke-virtual/range {v18 .. v23}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_19b

    .line 217
    .end local v24    # "clutDefinition":Lcom/google/android/exoplayer2/text/dvb/DvbParser$ClutDefinition;
    .end local v27    # "color":I
    .restart local v1    # "clutDefinition":Lcom/google/android/exoplayer2/text/dvb/DvbParser$ClutDefinition;
    :cond_199
    move-object/from16 v24, v1

    .line 235
    .end local v1    # "clutDefinition":Lcom/google/android/exoplayer2/text/dvb/DvbParser$ClutDefinition;
    .restart local v24    # "clutDefinition":Lcom/google/android/exoplayer2/text/dvb/DvbParser$ClutDefinition;
    :goto_19b
    new-instance v1, Lcom/google/android/exoplayer2/text/Cue$Builder;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/text/Cue$Builder;-><init>()V

    iget-object v2, v0, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->bitmap:Landroid/graphics/Bitmap;

    iget v3, v11, Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionComposition;->width:I

    iget v4, v11, Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionComposition;->height:I

    .line 238
    invoke-static {v2, v12, v13, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 237
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/text/Cue$Builder;->setBitmap(Landroid/graphics/Bitmap;)Lcom/google/android/exoplayer2/text/Cue$Builder;

    move-result-object v1

    int-to-float v2, v12

    iget v3, v5, Lcom/google/android/exoplayer2/text/dvb/DvbParser$DisplayDefinition;->width:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 244
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/text/Cue$Builder;->setPosition(F)Lcom/google/android/exoplayer2/text/Cue$Builder;

    move-result-object v1

    .line 245
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/text/Cue$Builder;->setPositionAnchor(I)Lcom/google/android/exoplayer2/text/Cue$Builder;

    move-result-object v1

    int-to-float v3, v13

    iget v4, v5, Lcom/google/android/exoplayer2/text/dvb/DvbParser$DisplayDefinition;->height:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 246
    invoke-virtual {v1, v3, v2}, Lcom/google/android/exoplayer2/text/Cue$Builder;->setLine(FI)Lcom/google/android/exoplayer2/text/Cue$Builder;

    move-result-object v1

    .line 248
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/text/Cue$Builder;->setLineAnchor(I)Lcom/google/android/exoplayer2/text/Cue$Builder;

    move-result-object v1

    iget v3, v11, Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionComposition;->width:I

    int-to-float v3, v3

    iget v4, v5, Lcom/google/android/exoplayer2/text/dvb/DvbParser$DisplayDefinition;->width:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 249
    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/text/Cue$Builder;->setSize(F)Lcom/google/android/exoplayer2/text/Cue$Builder;

    move-result-object v1

    iget v3, v11, Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionComposition;->height:I

    int-to-float v3, v3

    iget v4, v5, Lcom/google/android/exoplayer2/text/dvb/DvbParser$DisplayDefinition;->height:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 250
    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/text/Cue$Builder;->setBitmapHeight(F)Lcom/google/android/exoplayer2/text/Cue$Builder;

    move-result-object v1

    .line 251
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/text/Cue$Builder;->build()Lcom/google/android/exoplayer2/text/Cue;

    move-result-object v1

    .line 235
    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 253
    iget-object v1, v0, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->canvas:Landroid/graphics/Canvas;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 255
    iget-object v1, v0, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 167
    .end local v10    # "regionId":I
    .end local v11    # "regionComposition":Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionComposition;
    .end local v12    # "baseHorizontalAddress":I
    .end local v13    # "baseVerticalAddress":I
    .end local v14    # "clipRight":I
    .end local v15    # "regionObjects":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionObject;>;"
    .end local v17    # "clipBottom":I
    .end local v24    # "clutDefinition":Lcom/google/android/exoplayer2/text/dvb/DvbParser$ClutDefinition;
    .end local v28    # "pageRegion":Lcom/google/android/exoplayer2/text/dvb/DvbParser$PageRegion;
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v1, v16

    move-object/from16 v4, v25

    move-object/from16 v7, v26

    goto/16 :goto_75

    .end local v16    # "dataBitArray":Lcom/google/android/exoplayer2/util/ParsableBitArray;
    .end local v25    # "pageComposition":Lcom/google/android/exoplayer2/text/dvb/DvbParser$PageComposition;
    .end local v26    # "pageRegions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/google/android/exoplayer2/text/dvb/DvbParser$PageRegion;>;"
    .local v1, "dataBitArray":Lcom/google/android/exoplayer2/util/ParsableBitArray;
    .restart local v4    # "pageComposition":Lcom/google/android/exoplayer2/text/dvb/DvbParser$PageComposition;
    .restart local v7    # "pageRegions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/google/android/exoplayer2/text/dvb/DvbParser$PageRegion;>;"
    :cond_200
    move-object/from16 v16, v1

    .line 258
    .end local v1    # "dataBitArray":Lcom/google/android/exoplayer2/util/ParsableBitArray;
    .end local v8    # "i":I
    .restart local v16    # "dataBitArray":Lcom/google/android/exoplayer2/util/ParsableBitArray;
    invoke-static {v6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public reset()V
    .registers 2

    .line 127
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->subtitleService:Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;->reset()V

    .line 128
    return-void
.end method
