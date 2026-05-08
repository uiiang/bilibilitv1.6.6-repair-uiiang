.class public final Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;
.super Lcom/google/android/exoplayer2/text/cea/CeaDecoder;
.source "Cea608Decoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final BASIC_CHARACTER_SET:[I

.field private static final CC_FIELD_FLAG:I = 0x1

.field private static final CC_IMPLICIT_DATA_HEADER:B = -0x4t

.field private static final CC_MODE_PAINT_ON:I = 0x3

.field private static final CC_MODE_POP_ON:I = 0x2

.field private static final CC_MODE_ROLL_UP:I = 0x1

.field private static final CC_MODE_UNKNOWN:I = 0x0

.field private static final CC_TYPE_FLAG:I = 0x2

.field private static final CC_VALID_FLAG:I = 0x4

.field private static final COLUMN_INDICES:[I

.field private static final CTRL_BACKSPACE:B = 0x21t

.field private static final CTRL_CARRIAGE_RETURN:B = 0x2dt

.field private static final CTRL_DELETE_TO_END_OF_ROW:B = 0x24t

.field private static final CTRL_END_OF_CAPTION:B = 0x2ft

.field private static final CTRL_ERASE_DISPLAYED_MEMORY:B = 0x2ct

.field private static final CTRL_ERASE_NON_DISPLAYED_MEMORY:B = 0x2et

.field private static final CTRL_RESUME_CAPTION_LOADING:B = 0x20t

.field private static final CTRL_RESUME_DIRECT_CAPTIONING:B = 0x29t

.field private static final CTRL_RESUME_TEXT_DISPLAY:B = 0x2bt

.field private static final CTRL_ROLL_UP_CAPTIONS_2_ROWS:B = 0x25t

.field private static final CTRL_ROLL_UP_CAPTIONS_3_ROWS:B = 0x26t

.field private static final CTRL_ROLL_UP_CAPTIONS_4_ROWS:B = 0x27t

.field private static final CTRL_TEXT_RESTART:B = 0x2at

.field private static final DEFAULT_CAPTIONS_ROW_COUNT:I = 0x4

.field public static final MIN_DATA_CHANNEL_TIMEOUT_MS:J = 0x3e80L

.field private static final NTSC_CC_CHANNEL_1:I = 0x0

.field private static final NTSC_CC_CHANNEL_2:I = 0x1

.field private static final NTSC_CC_FIELD_1:I = 0x0

.field private static final NTSC_CC_FIELD_2:I = 0x1

.field private static final ODD_PARITY_BYTE_TABLE:[Z

.field private static final ROW_INDICES:[I

.field private static final SPECIAL_CHARACTER_SET:[I

.field private static final SPECIAL_ES_FR_CHARACTER_SET:[I

.field private static final SPECIAL_PT_DE_CHARACTER_SET:[I

.field private static final STYLE_COLORS:[I

.field private static final STYLE_ITALICS:I = 0x7

.field private static final STYLE_UNCHANGED:I = 0x8

.field private static final TAG:Ljava/lang/String; = "Cea608Decoder"


# instance fields
.field private captionMode:I

.field private captionRowCount:I

.field private final ccData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field private final cueBuilders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private cues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/Cue;",
            ">;"
        }
    .end annotation
.end field

.field private currentChannel:I

.field private currentCueBuilder:Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;

.field private isCaptionValid:Z

.field private isInCaptionService:Z

.field private lastCueUpdateUs:J

.field private lastCues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/Cue;",
            ">;"
        }
    .end annotation
.end field

.field private final packetLength:I

.field private repeatableControlCc1:B

.field private repeatableControlCc2:B

.field private repeatableControlSet:Z

.field private final selectedChannel:I

.field private final selectedField:I

.field private final validDataChannelTimeoutUs:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 81
    const/16 v0, 0x8

    new-array v1, v0, [I

    fill-array-data v1, :array_44

    sput-object v1, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->ROW_INDICES:[I

    .line 82
    new-array v0, v0, [I

    fill-array-data v0, :array_58

    sput-object v0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->COLUMN_INDICES:[I

    .line 84
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_6c

    sput-object v0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->STYLE_COLORS:[I

    .line 151
    const/16 v0, 0x60

    new-array v0, v0, [I

    fill-array-data v0, :array_7e

    sput-object v0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->BASIC_CHARACTER_SET:[I

    .line 252
    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_142

    sput-object v0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->SPECIAL_CHARACTER_SET:[I

    .line 273
    const/16 v0, 0x20

    new-array v1, v0, [I

    fill-array-data v1, :array_166

    sput-object v1, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->SPECIAL_ES_FR_CHARACTER_SET:[I

    .line 284
    new-array v0, v0, [I

    fill-array-data v0, :array_1aa

    sput-object v0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->SPECIAL_PT_DE_CHARACTER_SET:[I

    .line 294
    const/16 v0, 0x100

    new-array v0, v0, [Z

    fill-array-data v0, :array_1ee

    sput-object v0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->ODD_PARITY_BYTE_TABLE:[Z

    return-void

    :array_44
    .array-data 4
        0xb
        0x1
        0x3
        0xc
        0xe
        0x5
        0x7
        0x9
    .end array-data

    :array_58
    .array-data 4
        0x0
        0x4
        0x8
        0xc
        0x10
        0x14
        0x18
        0x1c
    .end array-data

    :array_6c
    .array-data 4
        -0x1
        -0xff0100
        -0xffff01
        -0xff0001
        -0x10000
        -0x100
        -0xff01
    .end array-data

    :array_7e
    .array-data 4
        0x20
        0x21
        0x22
        0x23
        0x24
        0x25
        0x26
        0x27
        0x28
        0x29
        0xe1
        0x2b
        0x2c
        0x2d
        0x2e
        0x2f
        0x30
        0x31
        0x32
        0x33
        0x34
        0x35
        0x36
        0x37
        0x38
        0x39
        0x3a
        0x3b
        0x3c
        0x3d
        0x3e
        0x3f
        0x40
        0x41
        0x42
        0x43
        0x44
        0x45
        0x46
        0x47
        0x48
        0x49
        0x4a
        0x4b
        0x4c
        0x4d
        0x4e
        0x4f
        0x50
        0x51
        0x52
        0x53
        0x54
        0x55
        0x56
        0x57
        0x58
        0x59
        0x5a
        0x5b
        0xe9
        0x5d
        0xed
        0xf3
        0xfa
        0x61
        0x62
        0x63
        0x64
        0x65
        0x66
        0x67
        0x68
        0x69
        0x6a
        0x6b
        0x6c
        0x6d
        0x6e
        0x6f
        0x70
        0x71
        0x72
        0x73
        0x74
        0x75
        0x76
        0x77
        0x78
        0x79
        0x7a
        0xe7
        0xf7
        0xd1
        0xf1
        0x25a0
    .end array-data

    :array_142
    .array-data 4
        0xae
        0xb0
        0xbd
        0xbf
        0x2122
        0xa2
        0xa3
        0x266a
        0xe0
        0x20
        0xe8
        0xe2
        0xea
        0xee
        0xf4
        0xfb
    .end array-data

    :array_166
    .array-data 4
        0xc1
        0xc9
        0xd3
        0xda
        0xdc
        0xfc
        0x2018
        0xa1
        0x2a
        0x27
        0x2014
        0xa9
        0x2120
        0x2022
        0x201c
        0x201d
        0xc0
        0xc2
        0xc7
        0xc8
        0xca
        0xcb
        0xeb
        0xce
        0xcf
        0xef
        0xd4
        0xd9
        0xf9
        0xdb
        0xab
        0xbb
    .end array-data

    :array_1aa
    .array-data 4
        0xc3
        0xe3
        0xcd
        0xcc
        0xec
        0xd2
        0xf2
        0xd5
        0xf5
        0x7b
        0x7d
        0x5c
        0x5e
        0x5f
        0x7c
        0x7e
        0xc4
        0xe4
        0xd6
        0xf6
        0xdf
        0xa5
        0xa4
        0x2502
        0xc5
        0xe5
        0xd8
        0xf8
        0x250c
        0x2510
        0x2514
        0x2518
    .end array-data

    :array_1ee
    .array-data 1
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;IJ)V
    .registers 11
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "accessibilityChannel"    # I
    .param p3, "validDataChannelTimeoutMs"    # J

    .line 366
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/cea/CeaDecoder;-><init>()V

    .line 367
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->ccData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 368
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->cueBuilders:Ljava/util/ArrayList;

    .line 369
    new-instance v0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;-><init>(II)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->currentCueBuilder:Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;

    .line 370
    iput v2, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->currentChannel:I

    .line 371
    nop

    .line 372
    const-wide/16 v0, 0x0

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, p3, v0

    if-lez v5, :cond_2d

    const-wide/16 v0, 0x3e8

    mul-long v0, v0, p3

    goto :goto_2e

    :cond_2d
    move-wide v0, v3

    :goto_2e
    iput-wide v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->validDataChannelTimeoutUs:J

    .line 373
    const-string v0, "application/x-mp4-cea-608"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    const/4 v0, 0x2

    goto :goto_3b

    :cond_3a
    const/4 v0, 0x3

    :goto_3b
    iput v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->packetLength:I

    .line 374
    const/4 v0, 0x1

    packed-switch p2, :pswitch_data_6c

    .line 392
    const-string v1, "Cea608Decoder"

    const-string v5, "Invalid channel. Defaulting to CC1."

    invoke-static {v1, v5}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    iput v2, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->selectedChannel:I

    .line 394
    iput v2, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->selectedField:I

    goto :goto_61

    .line 388
    :pswitch_4d
    iput v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->selectedChannel:I

    .line 389
    iput v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->selectedField:I

    .line 390
    goto :goto_61

    .line 384
    :pswitch_52
    iput v2, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->selectedChannel:I

    .line 385
    iput v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->selectedField:I

    .line 386
    goto :goto_61

    .line 380
    :pswitch_57
    iput v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->selectedChannel:I

    .line 381
    iput v2, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->selectedField:I

    .line 382
    goto :goto_61

    .line 376
    :pswitch_5c
    iput v2, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->selectedChannel:I

    .line 377
    iput v2, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->selectedField:I

    .line 378
    nop

    .line 397
    :goto_61
    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->setCaptionMode(I)V

    .line 398
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->resetCueBuilders()V

    .line 399
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->isInCaptionService:Z

    .line 400
    iput-wide v3, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->lastCueUpdateUs:J

    .line 401
    return-void

    :pswitch_data_6c
    .packed-switch 0x1
        :pswitch_5c
        :pswitch_57
        :pswitch_52
        :pswitch_4d
    .end packed-switch
.end method

.method static synthetic access$300()[I
    .registers 1

    .line 57
    sget-object v0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->STYLE_COLORS:[I

    return-object v0
.end method

.method private static getBasicChar(B)C
    .registers 3
    .param p0, "ccData"    # B

    .line 797
    and-int/lit8 v0, p0, 0x7f

    add-int/lit8 v0, v0, -0x20

    .line 798
    .local v0, "index":I
    sget-object v1, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->BASIC_CHARACTER_SET:[I

    aget v1, v1, v0

    int-to-char v1, v1

    return v1
.end method

.method private static getChannel(B)I
    .registers 2
    .param p0, "cc1"    # B

    .line 845
    shr-int/lit8 v0, p0, 0x3

    and-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private getDisplayCues()Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/Cue;",
            ">;"
        }
    .end annotation

    .line 709
    const/4 v0, 0x2

    .line 710
    .local v0, "positionAnchor":I
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->cueBuilders:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 711
    .local v1, "cueBuilderCount":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 712
    .local v2, "cueBuilderCues":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/text/Cue;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_d
    if-ge v3, v1, :cond_2b

    .line 713
    iget-object v4, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->cueBuilders:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;

    const/high16 v5, -0x80000000

    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->build(I)Lcom/google/android/exoplayer2/text/Cue;

    move-result-object v4

    .line 714
    .local v4, "cue":Lcom/google/android/exoplayer2/text/Cue;
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 715
    if-eqz v4, :cond_28

    .line 716
    iget v5, v4, Lcom/google/android/exoplayer2/text/Cue;->positionAnchor:I

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 712
    .end local v4    # "cue":Lcom/google/android/exoplayer2/text/Cue;
    :cond_28
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 721
    .end local v3    # "i":I
    :cond_2b
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 722
    .local v3, "displayCues":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/text/Cue;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_31
    if-ge v4, v1, :cond_58

    .line 723
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/exoplayer2/text/Cue;

    .line 724
    .local v5, "cue":Lcom/google/android/exoplayer2/text/Cue;
    if-eqz v5, :cond_55

    .line 725
    iget v6, v5, Lcom/google/android/exoplayer2/text/Cue;->positionAnchor:I

    if-eq v6, v0, :cond_52

    .line 727
    iget-object v6, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->cueBuilders:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;

    invoke-virtual {v6, v0}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->build(I)Lcom/google/android/exoplayer2/text/Cue;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v5, v6

    check-cast v5, Lcom/google/android/exoplayer2/text/Cue;

    .line 729
    :cond_52
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 722
    .end local v5    # "cue":Lcom/google/android/exoplayer2/text/Cue;
    :cond_55
    add-int/lit8 v4, v4, 0x1

    goto :goto_31

    .line 733
    .end local v4    # "i":I
    :cond_58
    return-object v3
.end method

.method private static getExtendedEsFrChar(B)C
    .registers 3
    .param p0, "ccData"    # B

    .line 829
    and-int/lit8 v0, p0, 0x1f

    .line 830
    .local v0, "index":I
    sget-object v1, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->SPECIAL_ES_FR_CHARACTER_SET:[I

    aget v1, v1, v0

    int-to-char v1, v1

    return v1
.end method

.method private static getExtendedPtDeChar(B)C
    .registers 3
    .param p0, "ccData"    # B

    .line 834
    and-int/lit8 v0, p0, 0x1f

    .line 835
    .local v0, "index":I
    sget-object v1, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->SPECIAL_PT_DE_CHARACTER_SET:[I

    aget v1, v1, v0

    int-to-char v1, v1

    return v1
.end method

.method private static getExtendedWestEuropeanChar(BB)C
    .registers 3
    .param p0, "cc1"    # B
    .param p1, "cc2"    # B

    .line 819
    and-int/lit8 v0, p0, 0x1

    if-nez v0, :cond_9

    .line 821
    invoke-static {p1}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->getExtendedEsFrChar(B)C

    move-result v0

    return v0

    .line 824
    :cond_9
    invoke-static {p1}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->getExtendedPtDeChar(B)C

    move-result v0

    return v0
.end method

.method private static getSpecialNorthAmericanChar(B)C
    .registers 3
    .param p0, "ccData"    # B

    .line 808
    and-int/lit8 v0, p0, 0xf

    .line 809
    .local v0, "index":I
    sget-object v1, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->SPECIAL_CHARACTER_SET:[I

    aget v1, v1, v0

    int-to-char v1, v1

    return v1
.end method

.method private handleMidrowCtrl(B)V
    .registers 5
    .param p1, "cc2"    # B

    .line 596
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->currentCueBuilder:Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->append(C)V

    .line 599
    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_d

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    move v0, v1

    .line 600
    .local v0, "underline":Z
    shr-int/lit8 v1, p1, 0x1

    and-int/lit8 v1, v1, 0x7

    .line 601
    .local v1, "style":I
    iget-object v2, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->currentCueBuilder:Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;

    invoke-virtual {v2, v1, v0}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->setStyle(IZ)V

    .line 602
    return-void
.end method

.method private handleMiscCode(B)V
    .registers 5
    .param p1, "cc2"    # B

    .line 642
    const/4 v0, 0x2

    const/4 v1, 0x3

    const/4 v2, 0x1

    sparse-switch p1, :sswitch_data_64

    .line 666
    iget v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->captionMode:I

    if-nez v0, :cond_29

    .line 667
    return-void

    .line 659
    :sswitch_b
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->setCaptionMode(I)V

    .line 660
    return-void

    .line 652
    :sswitch_f
    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->setCaptionMode(I)V

    .line 653
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->setCaptionRowCount(I)V

    .line 654
    return-void

    .line 648
    :sswitch_17
    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->setCaptionMode(I)V

    .line 649
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->setCaptionRowCount(I)V

    .line 650
    return-void

    .line 644
    :sswitch_1e
    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->setCaptionMode(I)V

    .line 645
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->setCaptionRowCount(I)V

    .line 646
    return-void

    .line 656
    :sswitch_25
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->setCaptionMode(I)V

    .line 657
    return-void

    .line 670
    :cond_29
    sparse-switch p1, :sswitch_data_7a

    goto :goto_62

    .line 681
    :sswitch_2d
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->getDisplayCues()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->cues:Ljava/util/List;

    .line 682
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->resetCueBuilders()V

    .line 683
    goto :goto_62

    .line 678
    :sswitch_37
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->resetCueBuilders()V

    .line 679
    goto :goto_62

    .line 687
    :sswitch_3b
    if-ne v0, v2, :cond_62

    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->currentCueBuilder:Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_62

    .line 688
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->currentCueBuilder:Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->rollUp()V

    goto :goto_62

    .line 672
    :sswitch_4b
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->cues:Ljava/util/List;

    .line 673
    iget v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->captionMode:I

    if-eq v0, v2, :cond_57

    if-ne v0, v1, :cond_62

    .line 674
    :cond_57
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->resetCueBuilders()V

    goto :goto_62

    .line 696
    :sswitch_5b
    goto :goto_62

    .line 692
    :sswitch_5c
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->currentCueBuilder:Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->backspace()V

    .line 693
    nop

    .line 701
    :cond_62
    :goto_62
    return-void

    nop

    :sswitch_data_64
    .sparse-switch
        0x20 -> :sswitch_25
        0x25 -> :sswitch_1e
        0x26 -> :sswitch_17
        0x27 -> :sswitch_f
        0x29 -> :sswitch_b
    .end sparse-switch

    :sswitch_data_7a
    .sparse-switch
        0x21 -> :sswitch_5c
        0x24 -> :sswitch_5b
        0x2c -> :sswitch_4b
        0x2d -> :sswitch_3b
        0x2e -> :sswitch_37
        0x2f -> :sswitch_2d
    .end sparse-switch
.end method

.method private handlePreambleAddressCode(BB)V
    .registers 10
    .param p1, "cc1"    # B
    .param p2, "cc2"    # B

    .line 607
    sget-object v0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->ROW_INDICES:[I

    and-int/lit8 v1, p1, 0x7

    aget v0, v0, v1

    .line 613
    .local v0, "row":I
    and-int/lit8 v1, p2, 0x20

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    .line 614
    .local v1, "nextRowDown":Z
    :goto_f
    if-eqz v1, :cond_13

    .line 615
    add-int/lit8 v0, v0, 0x1

    .line 618
    :cond_13
    iget-object v4, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->currentCueBuilder:Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;

    # getter for: Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->row:I
    invoke-static {v4}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->access$100(Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;)I

    move-result v4

    if-eq v0, v4, :cond_3c

    .line 619
    iget v4, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->captionMode:I

    if-eq v4, v3, :cond_37

    iget-object v4, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->currentCueBuilder:Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_37

    .line 620
    new-instance v4, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;

    iget v5, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->captionMode:I

    iget v6, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->captionRowCount:I

    invoke-direct {v4, v5, v6}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;-><init>(II)V

    iput-object v4, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->currentCueBuilder:Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;

    .line 621
    iget-object v5, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->cueBuilders:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 623
    :cond_37
    iget-object v4, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->currentCueBuilder:Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;

    # setter for: Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->row:I
    invoke-static {v4, v0}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->access$102(Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;I)I

    .line 628
    :cond_3c
    and-int/lit8 v4, p2, 0x10

    const/16 v5, 0x10

    if-ne v4, v5, :cond_44

    const/4 v4, 0x1

    goto :goto_45

    :cond_44
    const/4 v4, 0x0

    .line 629
    .local v4, "isCursor":Z
    :goto_45
    and-int/lit8 v5, p2, 0x1

    if-ne v5, v3, :cond_4a

    const/4 v2, 0x1

    .line 630
    .local v2, "underline":Z
    :cond_4a
    shr-int/lit8 v3, p2, 0x1

    and-int/lit8 v3, v3, 0x7

    .line 634
    .local v3, "cursorOrStyle":I
    iget-object v5, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->currentCueBuilder:Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;

    if-eqz v4, :cond_55

    const/16 v6, 0x8

    goto :goto_56

    :cond_55
    move v6, v3

    :goto_56
    invoke-virtual {v5, v6, v2}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->setStyle(IZ)V

    .line 636
    if-eqz v4, :cond_64

    .line 637
    iget-object v5, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->currentCueBuilder:Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;

    sget-object v6, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->COLUMN_INDICES:[I

    aget v6, v6, v3

    # setter for: Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->indent:I
    invoke-static {v5, v6}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->access$202(Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;I)I

    .line 639
    :cond_64
    return-void
.end method

.method private static isCtrlCode(B)Z
    .registers 2
    .param p0, "cc1"    # B

    .line 840
    and-int/lit16 v0, p0, 0xe0

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private static isExtendedWestEuropeanChar(BB)Z
    .registers 4
    .param p0, "cc1"    # B
    .param p1, "cc2"    # B

    .line 815
    and-int/lit16 v0, p0, 0xf6

    const/16 v1, 0x12

    if-ne v0, v1, :cond_e

    and-int/lit16 v0, p1, 0xe0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private static isMidrowCtrlCode(BB)Z
    .registers 4
    .param p0, "cc1"    # B
    .param p1, "cc2"    # B

    .line 851
    and-int/lit16 v0, p0, 0xf7

    const/16 v1, 0x11

    if-ne v0, v1, :cond_e

    and-int/lit16 v0, p1, 0xf0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private static isMiscCode(BB)Z
    .registers 4
    .param p0, "cc1"    # B
    .param p1, "cc2"    # B

    .line 869
    and-int/lit16 v0, p0, 0xf6

    const/16 v1, 0x14

    if-ne v0, v1, :cond_e

    and-int/lit16 v0, p1, 0xf0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private static isPreambleAddressCode(BB)Z
    .registers 4
    .param p0, "cc1"    # B
    .param p1, "cc2"    # B

    .line 857
    and-int/lit16 v0, p0, 0xf0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_e

    and-int/lit16 v0, p1, 0xc0

    const/16 v1, 0x40

    if-ne v0, v1, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private static isRepeatable(B)Z
    .registers 3
    .param p0, "cc1"    # B

    .line 874
    and-int/lit16 v0, p0, 0xf0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private isRepeatedCommand(ZBB)Z
    .registers 7
    .param p1, "captionValid"    # Z
    .param p2, "cc1"    # B
    .param p3, "cc2"    # B

    .line 572
    const/4 v0, 0x0

    if-eqz p1, :cond_20

    invoke-static {p2}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->isRepeatable(B)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 573
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->repeatableControlSet:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_19

    iget-byte v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->repeatableControlCc1:B

    if-ne v1, p2, :cond_19

    iget-byte v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->repeatableControlCc2:B

    if-ne v1, p3, :cond_19

    .line 575
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->repeatableControlSet:Z

    .line 576
    return v2

    .line 581
    :cond_19
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->repeatableControlSet:Z

    .line 582
    iput-byte p2, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->repeatableControlCc1:B

    .line 583
    iput-byte p3, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->repeatableControlCc2:B

    goto :goto_22

    .line 587
    :cond_20
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->repeatableControlSet:Z

    .line 589
    :goto_22
    return v0
.end method

.method private static isServiceSwitchCommand(B)Z
    .registers 3
    .param p0, "cc1"    # B

    .line 883
    and-int/lit16 v0, p0, 0xf6

    const/16 v1, 0x14

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private static isSpecialNorthAmericanChar(BB)Z
    .registers 4
    .param p0, "cc1"    # B
    .param p1, "cc2"    # B

    .line 804
    and-int/lit16 v0, p0, 0xf7

    const/16 v1, 0x11

    if-ne v0, v1, :cond_e

    and-int/lit16 v0, p1, 0xf0

    const/16 v1, 0x30

    if-ne v0, v1, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private static isTabCtrlCode(BB)Z
    .registers 4
    .param p0, "cc1"    # B
    .param p1, "cc2"    # B

    .line 863
    and-int/lit16 v0, p0, 0xf7

    const/16 v1, 0x17

    if-ne v0, v1, :cond_10

    const/16 v0, 0x21

    if-lt p1, v0, :cond_10

    const/16 v0, 0x23

    if-gt p1, v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method private static isXdsControlCode(B)Z
    .registers 3
    .param p0, "cc1"    # B

    .line 878
    const/4 v0, 0x1

    if-gt v0, p0, :cond_8

    const/16 v1, 0xf

    if-gt p0, v1, :cond_8

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private maybeUpdateIsInCaptionService(BB)V
    .registers 5
    .param p1, "cc1"    # B
    .param p2, "cc2"    # B

    .line 774
    invoke-static {p1}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->isXdsControlCode(B)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 775
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->isInCaptionService:Z

    goto :goto_1b

    .line 776
    :cond_a
    invoke-static {p1}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->isServiceSwitchCommand(B)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 777
    sparse-switch p2, :sswitch_data_1c

    goto :goto_1b

    .line 780
    :sswitch_14
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->isInCaptionService:Z

    .line 781
    goto :goto_1b

    .line 788
    :sswitch_17
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->isInCaptionService:Z

    .line 789
    nop

    .line 794
    :cond_1b
    :goto_1b
    return-void

    :sswitch_data_1c
    .sparse-switch
        0x20 -> :sswitch_17
        0x25 -> :sswitch_17
        0x26 -> :sswitch_17
        0x27 -> :sswitch_17
        0x29 -> :sswitch_17
        0x2a -> :sswitch_14
        0x2b -> :sswitch_14
        0x2f -> :sswitch_17
    .end sparse-switch
.end method

.method private resetCueBuilders()V
    .registers 3

    .line 768
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->currentCueBuilder:Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;

    iget v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->captionMode:I

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->reset(I)V

    .line 769
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->cueBuilders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 770
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->cueBuilders:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->currentCueBuilder:Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 771
    return-void
.end method

.method private setCaptionMode(I)V
    .registers 5
    .param p1, "captionMode"    # I

    .line 737
    iget v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->captionMode:I

    if-ne v0, p1, :cond_5

    .line 738
    return-void

    .line 741
    :cond_5
    iget v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->captionMode:I

    .line 742
    .local v0, "oldCaptionMode":I
    iput p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->captionMode:I

    .line 744
    const/4 v1, 0x3

    if-ne p1, v1, :cond_24

    .line 746
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_d
    iget-object v2, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->cueBuilders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_23

    .line 747
    iget-object v2, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->cueBuilders:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;

    invoke-virtual {v2, p1}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->setCaptionMode(I)V

    .line 746
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 749
    .end local v1    # "i":I
    :cond_23
    return-void

    .line 753
    :cond_24
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->resetCueBuilders()V

    .line 754
    if-eq v0, v1, :cond_2e

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2e

    if-nez p1, :cond_34

    .line 758
    :cond_2e
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->cues:Ljava/util/List;

    .line 760
    :cond_34
    return-void
.end method

.method private setCaptionRowCount(I)V
    .registers 3
    .param p1, "captionRowCount"    # I

    .line 763
    iput p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->captionRowCount:I

    .line 764
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->currentCueBuilder:Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->setCaptionRowCount(I)V

    .line 765
    return-void
.end method

.method private shouldClearStuckCaptions()Z
    .registers 7

    .line 1154
    iget-wide v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->validDataChannelTimeoutUs:J

    const/4 v2, 0x0

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v0, v3

    if-eqz v5, :cond_22

    iget-wide v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->lastCueUpdateUs:J

    cmp-long v5, v0, v3

    if-nez v5, :cond_13

    goto :goto_22

    .line 1157
    :cond_13
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->getPositionUs()J

    move-result-wide v0

    iget-wide v3, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->lastCueUpdateUs:J

    sub-long/2addr v0, v3

    .line 1158
    .local v0, "elapsedUs":J
    iget-wide v3, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->validDataChannelTimeoutUs:J

    cmp-long v5, v0, v3

    if-ltz v5, :cond_21

    const/4 v2, 0x1

    :cond_21
    return v2

    .line 1155
    .end local v0    # "elapsedUs":J
    :cond_22
    :goto_22
    return v2
.end method

.method private updateAndVerifyCurrentChannel(B)Z
    .registers 4
    .param p1, "cc1"    # B

    .line 562
    invoke-static {p1}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->isCtrlCode(B)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 563
    invoke-static {p1}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->getChannel(B)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->currentChannel:I

    .line 565
    :cond_c
    iget v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->currentChannel:I

    iget v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->selectedChannel:I

    if-ne v0, v1, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method


# virtual methods
.method protected createSubtitle()Lcom/google/android/exoplayer2/text/Subtitle;
    .registers 3

    .line 457
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->cues:Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->lastCues:Ljava/util/List;

    .line 458
    new-instance v1, Lcom/google/android/exoplayer2/text/cea/CeaSubtitle;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/text/cea/CeaSubtitle;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method protected decode(Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;)V
    .registers 13
    .param p1, "inputBuffer"    # Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;

    .line 464
    iget-object v0, p1, Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 465
    .local v0, "subtitleData":Ljava/nio/ByteBuffer;
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->ccData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset([BI)V

    .line 466
    const/4 v1, 0x0

    .line 467
    .local v1, "captionDataProcessed":Z
    :cond_16
    :goto_16
    iget-object v2, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->ccData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v2

    iget v3, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->packetLength:I

    const/4 v4, 0x1

    if-lt v2, v3, :cond_f5

    .line 468
    const/4 v2, 0x2

    if-ne v3, v2, :cond_26

    const/4 v2, -0x4

    goto :goto_2c

    :cond_26
    iget-object v2, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->ccData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    .line 470
    .local v2, "ccHeader":I
    :goto_2c
    iget-object v3, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->ccData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v3

    .line 471
    .local v3, "ccByte1":I
    iget-object v5, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->ccData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v5

    .line 477
    .local v5, "ccByte2":I
    and-int/lit8 v6, v2, 0x2

    if-eqz v6, :cond_3d

    .line 479
    goto :goto_16

    .line 482
    :cond_3d
    and-int/lit8 v6, v2, 0x1

    iget v7, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->selectedField:I

    if-eq v6, v7, :cond_44

    .line 484
    goto :goto_16

    .line 488
    :cond_44
    and-int/lit8 v6, v3, 0x7f

    int-to-byte v6, v6

    .line 489
    .local v6, "ccData1":B
    and-int/lit8 v7, v5, 0x7f

    int-to-byte v7, v7

    .line 491
    .local v7, "ccData2":B
    if-nez v6, :cond_4f

    if-nez v7, :cond_4f

    .line 493
    goto :goto_16

    .line 496
    :cond_4f
    iget-boolean v8, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->isCaptionValid:Z

    .line 497
    .local v8, "previousIsCaptionValid":Z
    and-int/lit8 v9, v2, 0x4

    const/4 v10, 0x4

    if-ne v9, v10, :cond_61

    sget-object v9, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->ODD_PARITY_BYTE_TABLE:[Z

    aget-boolean v10, v9, v3

    if-eqz v10, :cond_61

    aget-boolean v9, v9, v5

    if-eqz v9, :cond_61

    goto :goto_62

    :cond_61
    const/4 v4, 0x0

    :goto_62
    iput-boolean v4, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->isCaptionValid:Z

    .line 502
    invoke-direct {p0, v4, v6, v7}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->isRepeatedCommand(ZBB)Z

    move-result v4

    if-eqz v4, :cond_6b

    .line 504
    goto :goto_16

    .line 507
    :cond_6b
    iget-boolean v4, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->isCaptionValid:Z

    if-nez v4, :cond_76

    .line 508
    if-eqz v8, :cond_16

    .line 510
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->resetCueBuilders()V

    .line 511
    const/4 v1, 0x1

    goto :goto_16

    .line 516
    :cond_76
    invoke-direct {p0, v6, v7}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->maybeUpdateIsInCaptionService(BB)V

    .line 517
    iget-boolean v4, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->isInCaptionService:Z

    if-nez v4, :cond_7e

    .line 519
    goto :goto_16

    .line 522
    :cond_7e
    invoke-direct {p0, v6}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->updateAndVerifyCurrentChannel(B)Z

    move-result v4

    if-nez v4, :cond_85

    .line 524
    goto :goto_16

    .line 527
    :cond_85
    invoke-static {v6}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->isCtrlCode(B)Z

    move-result v4

    if-eqz v4, :cond_dc

    .line 528
    invoke-static {v6, v7}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->isSpecialNorthAmericanChar(BB)Z

    move-result v4

    if-eqz v4, :cond_9b

    .line 529
    iget-object v4, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->currentCueBuilder:Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;

    invoke-static {v7}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->getSpecialNorthAmericanChar(B)C

    move-result v9

    invoke-virtual {v4, v9}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->append(C)V

    goto :goto_f2

    .line 530
    :cond_9b
    invoke-static {v6, v7}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->isExtendedWestEuropeanChar(BB)Z

    move-result v4

    if-eqz v4, :cond_b0

    .line 532
    iget-object v4, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->currentCueBuilder:Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->backspace()V

    .line 533
    iget-object v4, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->currentCueBuilder:Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;

    invoke-static {v6, v7}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->getExtendedWestEuropeanChar(BB)C

    move-result v9

    invoke-virtual {v4, v9}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->append(C)V

    goto :goto_f2

    .line 534
    :cond_b0
    invoke-static {v6, v7}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->isMidrowCtrlCode(BB)Z

    move-result v4

    if-eqz v4, :cond_ba

    .line 535
    invoke-direct {p0, v7}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->handleMidrowCtrl(B)V

    goto :goto_f2

    .line 536
    :cond_ba
    invoke-static {v6, v7}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->isPreambleAddressCode(BB)Z

    move-result v4

    if-eqz v4, :cond_c4

    .line 537
    invoke-direct {p0, v6, v7}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->handlePreambleAddressCode(BB)V

    goto :goto_f2

    .line 538
    :cond_c4
    invoke-static {v6, v7}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->isTabCtrlCode(BB)Z

    move-result v4

    if-eqz v4, :cond_d2

    .line 539
    iget-object v4, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->currentCueBuilder:Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;

    add-int/lit8 v9, v7, -0x20

    # setter for: Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->tabOffset:I
    invoke-static {v4, v9}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->access$002(Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;I)I

    goto :goto_f2

    .line 540
    :cond_d2
    invoke-static {v6, v7}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->isMiscCode(BB)Z

    move-result v4

    if-eqz v4, :cond_f2

    .line 541
    invoke-direct {p0, v7}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->handleMiscCode(B)V

    goto :goto_f2

    .line 545
    :cond_dc
    iget-object v4, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->currentCueBuilder:Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;

    invoke-static {v6}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->getBasicChar(B)C

    move-result v9

    invoke-virtual {v4, v9}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->append(C)V

    .line 546
    and-int/lit16 v4, v7, 0xe0

    if-eqz v4, :cond_f2

    .line 547
    iget-object v4, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->currentCueBuilder:Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;

    invoke-static {v7}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->getBasicChar(B)C

    move-result v9

    invoke-virtual {v4, v9}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->append(C)V

    .line 550
    :cond_f2
    :goto_f2
    const/4 v1, 0x1

    .line 551
    .end local v2    # "ccHeader":I
    .end local v3    # "ccByte1":I
    .end local v5    # "ccByte2":I
    .end local v6    # "ccData1":B
    .end local v7    # "ccData2":B
    .end local v8    # "previousIsCaptionValid":Z
    goto/16 :goto_16

    .line 553
    :cond_f5
    if-eqz v1, :cond_10a

    .line 554
    iget v2, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->captionMode:I

    if-eq v2, v4, :cond_fe

    const/4 v3, 0x3

    if-ne v2, v3, :cond_10a

    .line 555
    :cond_fe
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->getDisplayCues()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->cues:Ljava/util/List;

    .line 556
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->getPositionUs()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->lastCueUpdateUs:J

    .line 559
    :cond_10a
    return-void
.end method

.method public bridge synthetic dequeueInputBuffer()Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    .line 56
    invoke-super {p0}, Lcom/google/android/exoplayer2/text/cea/CeaDecoder;->dequeueInputBuffer()Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;

    move-result-object v0

    return-object v0
.end method

.method public dequeueOutputBuffer()Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    .line 433
    invoke-super {p0}, Lcom/google/android/exoplayer2/text/cea/CeaDecoder;->dequeueOutputBuffer()Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;

    move-result-object v0

    .line 434
    .local v0, "outputBuffer":Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;
    if-eqz v0, :cond_7

    .line 435
    return-object v0

    .line 437
    :cond_7
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->shouldClearStuckCaptions()Z

    move-result v1

    if-eqz v1, :cond_33

    .line 438
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->getAvailableOutputBuffer()Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;

    move-result-object v0

    .line 439
    if-eqz v0, :cond_33

    .line 440
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->cues:Ljava/util/List;

    .line 441
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->lastCueUpdateUs:J

    .line 442
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->createSubtitle()Lcom/google/android/exoplayer2/text/Subtitle;

    move-result-object v1

    .line 443
    .local v1, "subtitle":Lcom/google/android/exoplayer2/text/Subtitle;
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->getPositionUs()J

    move-result-wide v3

    const-wide v6, 0x7fffffffffffffffL

    move-object v2, v0

    move-object v5, v1

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;->setContent(JLcom/google/android/exoplayer2/text/Subtitle;J)V

    .line 444
    return-object v0

    .line 447
    .end local v1    # "subtitle":Lcom/google/android/exoplayer2/text/Subtitle;
    :cond_33
    const/4 v1, 0x0

    return-object v1
.end method

.method public bridge synthetic dequeueOutputBuffer()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/decoder/DecoderException;
        }
    .end annotation

    .line 56
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->dequeueOutputBuffer()Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;

    move-result-object v0

    return-object v0
.end method

.method public flush()V
    .registers 3

    .line 410
    invoke-super {p0}, Lcom/google/android/exoplayer2/text/cea/CeaDecoder;->flush()V

    .line 411
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->cues:Ljava/util/List;

    .line 412
    iput-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->lastCues:Ljava/util/List;

    .line 413
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->setCaptionMode(I)V

    .line 414
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->setCaptionRowCount(I)V

    .line 415
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->resetCueBuilders()V

    .line 416
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->isCaptionValid:Z

    .line 417
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->repeatableControlSet:Z

    .line 418
    iput-byte v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->repeatableControlCc1:B

    .line 419
    iput-byte v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->repeatableControlCc2:B

    .line 420
    iput v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->currentChannel:I

    .line 421
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->isInCaptionService:Z

    .line 422
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->lastCueUpdateUs:J

    .line 423
    return-void
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 405
    const-string v0, "Cea608Decoder"

    return-object v0
.end method

.method protected isNewSubtitleDataAvailable()Z
    .registers 3

    .line 452
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->cues:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->lastCues:Ljava/util/List;

    if-eq v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public bridge synthetic queueInputBuffer(Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    .line 56
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/text/cea/CeaDecoder;->queueInputBuffer(Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;)V

    return-void
.end method

.method public release()V
    .registers 1

    .line 428
    return-void
.end method

.method public bridge synthetic setPositionUs(J)V
    .registers 3

    .line 56
    invoke-super {p0, p1, p2}, Lcom/google/android/exoplayer2/text/cea/CeaDecoder;->setPositionUs(J)V

    return-void
.end method
