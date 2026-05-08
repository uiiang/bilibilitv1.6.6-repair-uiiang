.class final Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;
.super Ljava/lang/Object;
.source "Cea708Decoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CueInfoBuilder"
.end annotation


# static fields
.field private static final BORDER_AND_EDGE_TYPE_NONE:I = 0x0

.field private static final BORDER_AND_EDGE_TYPE_UNIFORM:I = 0x3

.field public static final COLOR_SOLID_BLACK:I

.field public static final COLOR_SOLID_WHITE:I

.field public static final COLOR_TRANSPARENT:I

.field private static final DEFAULT_PRIORITY:I = 0x4

.field private static final DIRECTION_BOTTOM_TO_TOP:I = 0x3

.field private static final DIRECTION_LEFT_TO_RIGHT:I = 0x0

.field private static final DIRECTION_RIGHT_TO_LEFT:I = 0x1

.field private static final DIRECTION_TOP_TO_BOTTOM:I = 0x2

.field private static final HORIZONTAL_SIZE:I = 0xd1

.field private static final JUSTIFICATION_CENTER:I = 0x2

.field private static final JUSTIFICATION_FULL:I = 0x3

.field private static final JUSTIFICATION_LEFT:I = 0x0

.field private static final JUSTIFICATION_RIGHT:I = 0x1

.field private static final MAXIMUM_ROW_COUNT:I = 0xf

.field private static final PEN_FONT_STYLE_DEFAULT:I = 0x0

.field private static final PEN_FONT_STYLE_MONOSPACED_WITHOUT_SERIFS:I = 0x3

.field private static final PEN_FONT_STYLE_MONOSPACED_WITH_SERIFS:I = 0x1

.field private static final PEN_FONT_STYLE_PROPORTIONALLY_SPACED_WITHOUT_SERIFS:I = 0x4

.field private static final PEN_FONT_STYLE_PROPORTIONALLY_SPACED_WITH_SERIFS:I = 0x2

.field private static final PEN_OFFSET_NORMAL:I = 0x1

.field private static final PEN_SIZE_STANDARD:I = 0x1

.field private static final PEN_STYLE_BACKGROUND:[I

.field private static final PEN_STYLE_EDGE_TYPE:[I

.field private static final PEN_STYLE_FONT_STYLE:[I

.field private static final RELATIVE_CUE_SIZE:I = 0x63

.field private static final VERTICAL_SIZE:I = 0x4a

.field private static final WINDOW_STYLE_FILL:[I

.field private static final WINDOW_STYLE_JUSTIFICATION:[I

.field private static final WINDOW_STYLE_PRINT_DIRECTION:[I

.field private static final WINDOW_STYLE_SCROLL_DIRECTION:[I

.field private static final WINDOW_STYLE_WORD_WRAP:[Z


# instance fields
.field private anchorId:I

.field private backgroundColor:I

.field private backgroundColorStartPosition:I

.field private final captionStringBuilder:Landroid/text/SpannableStringBuilder;

.field private defined:Z

.field private foregroundColor:I

.field private foregroundColorStartPosition:I

.field private horizontalAnchor:I

.field private italicsStartPosition:I

.field private justification:I

.field private penStyleId:I

.field private priority:I

.field private relativePositioning:Z

.field private final rolledUpCaptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/text/SpannableString;",
            ">;"
        }
    .end annotation
.end field

.field private row:I

.field private rowCount:I

.field private rowLock:Z

.field private underlineStartPosition:I

.field private verticalAnchor:I

.field private visible:Z

.field private windowFillColor:I

.field private windowStyleId:I


# direct methods
.method static constructor <clinit>()V
    .registers 11

    .line 878
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {v0, v0, v0, v1}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->getArgbColorFromCeaColor(IIII)I

    move-result v2

    sput v2, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->COLOR_SOLID_WHITE:I

    .line 879
    invoke-static {v1, v1, v1, v1}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->getArgbColorFromCeaColor(IIII)I

    move-result v2

    sput v2, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->COLOR_SOLID_BLACK:I

    .line 880
    const/4 v3, 0x3

    invoke-static {v1, v1, v1, v3}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->getArgbColorFromCeaColor(IIII)I

    move-result v4

    sput v4, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->COLOR_TRANSPARENT:I

    .line 896
    const/4 v5, 0x7

    new-array v6, v5, [I

    fill-array-data v6, :array_6a

    sput-object v6, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->WINDOW_STYLE_JUSTIFICATION:[I

    .line 902
    new-array v6, v5, [I

    fill-array-data v6, :array_7c

    sput-object v6, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->WINDOW_STYLE_PRINT_DIRECTION:[I

    .line 908
    new-array v6, v5, [I

    fill-array-data v6, :array_8e

    sput-object v6, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->WINDOW_STYLE_SCROLL_DIRECTION:[I

    .line 914
    new-array v6, v5, [Z

    fill-array-data v6, :array_a0

    sput-object v6, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->WINDOW_STYLE_WORD_WRAP:[Z

    .line 916
    new-array v6, v5, [I

    aput v2, v6, v1

    const/4 v7, 0x1

    aput v4, v6, v7

    aput v2, v6, v0

    aput v2, v6, v3

    const/4 v8, 0x4

    aput v4, v6, v8

    const/4 v9, 0x5

    aput v2, v6, v9

    const/4 v10, 0x6

    aput v2, v6, v10

    sput-object v6, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->WINDOW_STYLE_FILL:[I

    .line 928
    new-array v6, v5, [I

    fill-array-data v6, :array_a8

    sput-object v6, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->PEN_STYLE_FONT_STYLE:[I

    .line 938
    new-array v6, v5, [I

    fill-array-data v6, :array_ba

    sput-object v6, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->PEN_STYLE_EDGE_TYPE:[I

    .line 944
    new-array v5, v5, [I

    aput v2, v5, v1

    aput v2, v5, v7

    aput v2, v5, v0

    aput v2, v5, v3

    aput v2, v5, v8

    aput v4, v5, v9

    aput v4, v5, v10

    sput-object v5, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->PEN_STYLE_BACKGROUND:[I

    return-void

    nop

    :array_6a
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x2
        0x0
    .end array-data

    :array_7c
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x2
    .end array-data

    :array_8e
    .array-data 4
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x1
    .end array-data

    :array_a0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x0t
    .end array-data

    :array_a8
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x3
        0x4
    .end array-data

    :array_ba
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3
        0x3
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    .line 982
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 983
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->rolledUpCaptions:Ljava/util/List;

    .line 984
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->captionStringBuilder:Landroid/text/SpannableStringBuilder;

    .line 985
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->reset()V

    .line 986
    return-void
.end method

.method public static getArgbColorFromCeaColor(III)I
    .registers 4
    .param p0, "red"    # I
    .param p1, "green"    # I
    .param p2, "blue"    # I

    .line 1373
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->getArgbColorFromCeaColor(IIII)I

    move-result v0

    return v0
.end method

.method public static getArgbColorFromCeaColor(IIII)I
    .registers 10
    .param p0, "red"    # I
    .param p1, "green"    # I
    .param p2, "blue"    # I
    .param p3, "opacity"    # I

    .line 1377
    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkIndex(III)I

    .line 1378
    invoke-static {p1, v0, v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkIndex(III)I

    .line 1379
    invoke-static {p2, v0, v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkIndex(III)I

    .line 1380
    invoke-static {p3, v0, v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkIndex(III)I

    .line 1383
    packed-switch p3, :pswitch_data_34

    .line 1396
    const/16 v1, 0xff

    .local v1, "alpha":I
    goto :goto_1c

    .line 1393
    .end local v1    # "alpha":I
    :pswitch_14
    const/4 v1, 0x0

    .line 1394
    .restart local v1    # "alpha":I
    goto :goto_1c

    .line 1390
    .end local v1    # "alpha":I
    :pswitch_16
    const/16 v1, 0x7f

    .line 1391
    .restart local v1    # "alpha":I
    goto :goto_1c

    .line 1387
    .end local v1    # "alpha":I
    :pswitch_19
    const/16 v1, 0xff

    .line 1388
    .restart local v1    # "alpha":I
    nop

    .line 1402
    :goto_1c
    const/16 v2, 0xff

    const/4 v3, 0x1

    if-le p0, v3, :cond_24

    const/16 v4, 0xff

    goto :goto_25

    :cond_24
    const/4 v4, 0x0

    :goto_25
    if-le p1, v3, :cond_2a

    const/16 v5, 0xff

    goto :goto_2b

    :cond_2a
    const/4 v5, 0x0

    :goto_2b
    if-le p2, v3, :cond_2f

    const/16 v0, 0xff

    :cond_2f
    invoke-static {v1, v4, v5, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0

    :pswitch_data_34
    .packed-switch 0x0
        :pswitch_19
        :pswitch_19
        :pswitch_16
        :pswitch_14
    .end packed-switch
.end method


# virtual methods
.method public append(C)V
    .registers 5
    .param p1, "text"    # C

    .line 1214
    const/16 v0, 0xa

    if-ne p1, v0, :cond_4a

    .line 1215
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->rolledUpCaptions:Ljava/util/List;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->buildSpannableString()Landroid/text/SpannableString;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1216
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->captionStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 1218
    iget v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->italicsStartPosition:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1a

    .line 1219
    iput v2, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->italicsStartPosition:I

    .line 1221
    :cond_1a
    iget v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->underlineStartPosition:I

    if-eq v0, v1, :cond_20

    .line 1222
    iput v2, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->underlineStartPosition:I

    .line 1224
    :cond_20
    iget v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->foregroundColorStartPosition:I

    if-eq v0, v1, :cond_26

    .line 1225
    iput v2, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->foregroundColorStartPosition:I

    .line 1227
    :cond_26
    iget v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->backgroundColorStartPosition:I

    if-eq v0, v1, :cond_2c

    .line 1228
    iput v2, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->backgroundColorStartPosition:I

    .line 1231
    :cond_2c
    :goto_2c
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->rowLock:Z

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->rolledUpCaptions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->rowCount:I

    if-ge v0, v1, :cond_44

    :cond_3a
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->rolledUpCaptions:Ljava/util/List;

    .line 1232
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0xf

    if-lt v0, v1, :cond_4f

    .line 1233
    :cond_44
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->rolledUpCaptions:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_2c

    .line 1236
    :cond_4a
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->captionStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 1238
    :cond_4f
    return-void
.end method

.method public backspace()V
    .registers 4

    .line 1207
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->captionStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    .line 1208
    .local v0, "length":I
    if-lez v0, :cond_f

    .line 1209
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->captionStringBuilder:Landroid/text/SpannableStringBuilder;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2, v0}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 1211
    :cond_f
    return-void
.end method

.method public build()Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$Cea708CueInfo;
    .registers 21

    .line 1284
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1286
    const/4 v1, 0x0

    return-object v1

    .line 1289
    :cond_a
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 1292
    .local v1, "cueString":Landroid/text/SpannableStringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_10
    iget-object v3, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->rolledUpCaptions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2b

    .line 1293
    iget-object v3, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->rolledUpCaptions:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1294
    const/16 v3, 0xa

    invoke-virtual {v1, v3}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 1292
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 1297
    .end local v2    # "i":I
    :cond_2b
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->buildSpannableString()Landroid/text/SpannableString;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1302
    iget v2, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->justification:I

    packed-switch v2, :pswitch_data_d4

    .line 1315
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected justification value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->justification:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1312
    :pswitch_52
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    .line 1313
    .local v2, "alignment":Landroid/text/Layout$Alignment;
    move-object v14, v2

    goto :goto_5d

    .line 1309
    .end local v2    # "alignment":Landroid/text/Layout$Alignment;
    :pswitch_56
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    .line 1310
    .restart local v2    # "alignment":Landroid/text/Layout$Alignment;
    move-object v14, v2

    goto :goto_5d

    .line 1306
    .end local v2    # "alignment":Landroid/text/Layout$Alignment;
    :pswitch_5a
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 1307
    .restart local v2    # "alignment":Landroid/text/Layout$Alignment;
    move-object v14, v2

    .line 1320
    .end local v2    # "alignment":Landroid/text/Layout$Alignment;
    .local v14, "alignment":Landroid/text/Layout$Alignment;
    :goto_5d
    iget-boolean v2, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->relativePositioning:Z

    if-eqz v2, :cond_6c

    .line 1321
    iget v2, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->horizontalAnchor:I

    int-to-float v2, v2

    const/high16 v3, 0x42c60000    # 99.0f

    div-float/2addr v2, v3

    .line 1322
    .local v2, "position":F
    iget v4, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->verticalAnchor:I

    int-to-float v4, v4

    div-float/2addr v4, v3

    .local v4, "line":F
    goto :goto_79

    .line 1324
    .end local v2    # "position":F
    .end local v4    # "line":F
    :cond_6c
    iget v2, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->horizontalAnchor:I

    int-to-float v2, v2

    const/high16 v3, 0x43510000    # 209.0f

    div-float/2addr v2, v3

    .line 1325
    .restart local v2    # "position":F
    iget v3, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->verticalAnchor:I

    int-to-float v3, v3

    const/high16 v4, 0x42940000    # 74.0f

    div-float v4, v3, v4

    .line 1328
    .restart local v4    # "line":F
    :goto_79
    const v3, 0x3f666666    # 0.9f

    mul-float v5, v2, v3

    const v6, 0x3d4ccccd    # 0.05f

    add-float v15, v5, v6

    .line 1329
    .end local v2    # "position":F
    .local v15, "position":F
    mul-float v3, v3, v4

    add-float v16, v3, v6

    .line 1339
    .end local v4    # "line":F
    .local v16, "line":F
    iget v2, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->anchorId:I

    div-int/lit8 v3, v2, 0x3

    const/4 v4, 0x1

    if-nez v3, :cond_92

    .line 1340
    const/4 v3, 0x0

    move/from16 v17, v3

    .local v3, "verticalAnchorType":I
    goto :goto_9d

    .line 1341
    .end local v3    # "verticalAnchorType":I
    :cond_92
    div-int/lit8 v3, v2, 0x3

    if-ne v3, v4, :cond_9a

    .line 1342
    const/4 v3, 0x1

    move/from16 v17, v3

    .restart local v3    # "verticalAnchorType":I
    goto :goto_9d

    .line 1344
    .end local v3    # "verticalAnchorType":I
    :cond_9a
    const/4 v3, 0x2

    move/from16 v17, v3

    .line 1348
    .local v17, "verticalAnchorType":I
    :goto_9d
    rem-int/lit8 v3, v2, 0x3

    if-nez v3, :cond_a5

    .line 1349
    const/4 v2, 0x0

    move/from16 v18, v2

    .local v2, "horizontalAnchorType":I
    goto :goto_b0

    .line 1350
    .end local v2    # "horizontalAnchorType":I
    :cond_a5
    rem-int/lit8 v2, v2, 0x3

    if-ne v2, v4, :cond_ad

    .line 1351
    const/4 v2, 0x1

    move/from16 v18, v2

    .restart local v2    # "horizontalAnchorType":I
    goto :goto_b0

    .line 1353
    .end local v2    # "horizontalAnchorType":I
    :cond_ad
    const/4 v2, 0x2

    move/from16 v18, v2

    .line 1356
    .local v18, "horizontalAnchorType":I
    :goto_b0
    iget v2, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->windowFillColor:I

    sget v3, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->COLOR_SOLID_BLACK:I

    if-eq v2, v3, :cond_b8

    const/4 v11, 0x1

    goto :goto_ba

    :cond_b8
    const/4 v2, 0x0

    const/4 v11, 0x0

    .line 1358
    .local v11, "windowColorSet":Z
    :goto_ba
    new-instance v19, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$Cea708CueInfo;

    const/4 v6, 0x0

    const v10, -0x800001

    iget v12, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->windowFillColor:I

    iget v13, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->priority:I

    move-object/from16 v2, v19

    move-object v3, v1

    move-object v4, v14

    move/from16 v5, v16

    move/from16 v7, v17

    move v8, v15

    move/from16 v9, v18

    invoke-direct/range {v2 .. v13}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$Cea708CueInfo;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;FIIFIFZII)V

    return-object v19

    nop

    :pswitch_data_d4
    .packed-switch 0x0
        :pswitch_5a
        :pswitch_56
        :pswitch_52
        :pswitch_5a
    .end packed-switch
.end method

.method public buildSpannableString()Landroid/text/SpannableString;
    .registers 7

    .line 1241
    new-instance v0, Landroid/text/SpannableStringBuilder;

    iget-object v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->captionStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1243
    .local v0, "spannableStringBuilder":Landroid/text/SpannableStringBuilder;
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    .line 1245
    .local v1, "length":I
    if-lez v1, :cond_4d

    .line 1246
    iget v2, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->italicsStartPosition:I

    const/16 v3, 0x21

    const/4 v4, -0x1

    if-eq v2, v4, :cond_1f

    .line 1247
    new-instance v2, Landroid/text/style/StyleSpan;

    const/4 v5, 0x2

    invoke-direct {v2, v5}, Landroid/text/style/StyleSpan;-><init>(I)V

    iget v5, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->italicsStartPosition:I

    invoke-virtual {v0, v2, v5, v1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1254
    :cond_1f
    iget v2, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->underlineStartPosition:I

    if-eq v2, v4, :cond_2d

    .line 1255
    new-instance v2, Landroid/text/style/UnderlineSpan;

    invoke-direct {v2}, Landroid/text/style/UnderlineSpan;-><init>()V

    iget v5, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->underlineStartPosition:I

    invoke-virtual {v0, v2, v5, v1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1262
    :cond_2d
    iget v2, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->foregroundColorStartPosition:I

    if-eq v2, v4, :cond_3d

    .line 1263
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    iget v5, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->foregroundColor:I

    invoke-direct {v2, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iget v5, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->foregroundColorStartPosition:I

    invoke-virtual {v0, v2, v5, v1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1270
    :cond_3d
    iget v2, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->backgroundColorStartPosition:I

    if-eq v2, v4, :cond_4d

    .line 1271
    new-instance v2, Landroid/text/style/BackgroundColorSpan;

    iget v4, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->backgroundColor:I

    invoke-direct {v2, v4}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    iget v4, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->backgroundColorStartPosition:I

    invoke-virtual {v0, v2, v4, v1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1279
    :cond_4d
    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    return-object v2
.end method

.method public clear()V
    .registers 2

    .line 1014
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->rolledUpCaptions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1015
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->captionStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 1016
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->italicsStartPosition:I

    .line 1017
    iput v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->underlineStartPosition:I

    .line 1018
    iput v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->foregroundColorStartPosition:I

    .line 1019
    iput v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->backgroundColorStartPosition:I

    .line 1020
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->row:I

    .line 1021
    return-void
.end method

.method public defineWindow(ZZZIZIIIIIII)V
    .registers 32
    .param p1, "visible"    # Z
    .param p2, "rowLock"    # Z
    .param p3, "columnLock"    # Z
    .param p4, "priority"    # I
    .param p5, "relativePositioning"    # Z
    .param p6, "verticalAnchor"    # I
    .param p7, "horizontalAnchor"    # I
    .param p8, "rowCount"    # I
    .param p9, "columnCount"    # I
    .param p10, "anchorId"    # I
    .param p11, "windowStyleId"    # I
    .param p12, "penStyleId"    # I

    .line 1048
    move-object/from16 v8, p0

    move/from16 v9, p2

    move/from16 v10, p11

    move/from16 v11, p12

    const/4 v0, 0x1

    iput-boolean v0, v8, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->defined:Z

    .line 1049
    move/from16 v12, p1

    iput-boolean v12, v8, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->visible:Z

    .line 1050
    iput-boolean v9, v8, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->rowLock:Z

    .line 1051
    move/from16 v13, p4

    iput v13, v8, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->priority:I

    .line 1052
    move/from16 v14, p5

    iput-boolean v14, v8, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->relativePositioning:Z

    .line 1053
    move/from16 v15, p6

    iput v15, v8, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->verticalAnchor:I

    .line 1054
    move/from16 v7, p7

    iput v7, v8, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->horizontalAnchor:I

    .line 1055
    move/from16 v6, p10

    iput v6, v8, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->anchorId:I

    .line 1058
    iget v0, v8, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->rowCount:I

    add-int/lit8 v1, p8, 0x1

    if-eq v0, v1, :cond_4c

    .line 1059
    add-int/lit8 v0, p8, 0x1

    iput v0, v8, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->rowCount:I

    .line 1062
    :goto_2f
    if-eqz v9, :cond_3b

    iget-object v0, v8, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->rolledUpCaptions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, v8, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->rowCount:I

    if-ge v0, v1, :cond_45

    :cond_3b
    iget-object v0, v8, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->rolledUpCaptions:Ljava/util/List;

    .line 1063
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0xf

    if-lt v0, v1, :cond_4c

    .line 1064
    :cond_45
    iget-object v0, v8, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->rolledUpCaptions:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_2f

    .line 1070
    :cond_4c
    if-eqz v10, :cond_76

    iget v0, v8, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->windowStyleId:I

    if-eq v0, v10, :cond_76

    .line 1071
    iput v10, v8, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->windowStyleId:I

    .line 1073
    add-int/lit8 v16, v10, -0x1

    .line 1075
    .local v16, "windowStyleIdIndex":I
    sget-object v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->WINDOW_STYLE_FILL:[I

    aget v1, v0, v16

    sget v2, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->COLOR_TRANSPARENT:I

    sget-object v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->WINDOW_STYLE_WORD_WRAP:[Z

    aget-boolean v3, v0, v16

    const/4 v4, 0x0

    sget-object v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->WINDOW_STYLE_PRINT_DIRECTION:[I

    aget v5, v0, v16

    sget-object v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->WINDOW_STYLE_SCROLL_DIRECTION:[I

    aget v17, v0, v16

    sget-object v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->WINDOW_STYLE_JUSTIFICATION:[I

    aget v18, v0, v16

    move-object/from16 v0, p0

    move/from16 v6, v17

    move/from16 v7, v18

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->setWindowAttributes(IIZIIII)V

    .line 1085
    .end local v16    # "windowStyleIdIndex":I
    :cond_76
    if-eqz v11, :cond_9d

    iget v0, v8, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->penStyleId:I

    if-eq v0, v11, :cond_9d

    .line 1086
    iput v11, v8, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->penStyleId:I

    .line 1088
    add-int/lit8 v16, v11, -0x1

    .line 1091
    .local v16, "penStyleIdIndex":I
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget-object v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->PEN_STYLE_EDGE_TYPE:[I

    aget v6, v0, v16

    sget-object v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->PEN_STYLE_FONT_STYLE:[I

    aget v7, v0, v16

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->setPenAttributes(IIIZZII)V

    .line 1099
    sget v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->COLOR_SOLID_WHITE:I

    sget-object v1, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->PEN_STYLE_BACKGROUND:[I

    aget v1, v1, v16

    sget v2, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->COLOR_SOLID_BLACK:I

    invoke-virtual {v8, v0, v1, v2}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->setPenColor(III)V

    .line 1101
    .end local v16    # "penStyleIdIndex":I
    :cond_9d
    return-void
.end method

.method public isDefined()Z
    .registers 2

    .line 1024
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->defined:Z

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .line 989
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->isDefined()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->rolledUpCaptions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->captionStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_17

    goto :goto_19

    :cond_17
    const/4 v0, 0x0

    goto :goto_1a

    :cond_19
    :goto_19
    const/4 v0, 0x1

    :goto_1a
    return v0
.end method

.method public isVisible()Z
    .registers 2

    .line 1032
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->visible:Z

    return v0
.end method

.method public reset()V
    .registers 3

    .line 993
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->clear()V

    .line 995
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->defined:Z

    .line 996
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->visible:Z

    .line 997
    const/4 v1, 0x4

    iput v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->priority:I

    .line 998
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->relativePositioning:Z

    .line 999
    iput v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->verticalAnchor:I

    .line 1000
    iput v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->horizontalAnchor:I

    .line 1001
    iput v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->anchorId:I

    .line 1002
    const/16 v1, 0xf

    iput v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->rowCount:I

    .line 1003
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->rowLock:Z

    .line 1004
    iput v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->justification:I

    .line 1005
    iput v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->windowStyleId:I

    .line 1006
    iput v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->penStyleId:I

    .line 1007
    sget v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->COLOR_SOLID_BLACK:I

    iput v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->windowFillColor:I

    .line 1009
    sget v1, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->COLOR_SOLID_WHITE:I

    iput v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->foregroundColor:I

    .line 1010
    iput v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->backgroundColor:I

    .line 1011
    return-void
.end method

.method public setPenAttributes(IIIZZII)V
    .registers 14
    .param p1, "textTag"    # I
    .param p2, "offset"    # I
    .param p3, "penSize"    # I
    .param p4, "italicsToggle"    # Z
    .param p5, "underlineToggle"    # Z
    .param p6, "edgeType"    # I
    .param p7, "fontStyle"    # I

    .line 1131
    iget v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->italicsStartPosition:I

    const/16 v1, 0x21

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1f

    .line 1132
    if-nez p4, :cond_29

    .line 1133
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->captionStringBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v3, Landroid/text/style/StyleSpan;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    iget v4, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->italicsStartPosition:I

    iget-object v5, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->captionStringBuilder:Landroid/text/SpannableStringBuilder;

    .line 1136
    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    .line 1133
    invoke-virtual {v0, v3, v4, v5, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1138
    iput v2, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->italicsStartPosition:I

    goto :goto_29

    .line 1140
    :cond_1f
    if-eqz p4, :cond_29

    .line 1141
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->captionStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->italicsStartPosition:I

    .line 1144
    :cond_29
    :goto_29
    iget v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->underlineStartPosition:I

    if-eq v0, v2, :cond_44

    .line 1145
    if-nez p5, :cond_4e

    .line 1146
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->captionStringBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v3, Landroid/text/style/UnderlineSpan;

    invoke-direct {v3}, Landroid/text/style/UnderlineSpan;-><init>()V

    iget v4, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->underlineStartPosition:I

    iget-object v5, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->captionStringBuilder:Landroid/text/SpannableStringBuilder;

    .line 1149
    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    .line 1146
    invoke-virtual {v0, v3, v4, v5, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1151
    iput v2, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->underlineStartPosition:I

    goto :goto_4e

    .line 1153
    :cond_44
    if-eqz p5, :cond_4e

    .line 1154
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->captionStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->underlineStartPosition:I

    .line 1159
    :cond_4e
    :goto_4e
    return-void
.end method

.method public setPenColor(III)V
    .registers 10
    .param p1, "foregroundColor"    # I
    .param p2, "backgroundColor"    # I
    .param p3, "edgeColor"    # I

    .line 1162
    iget v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->foregroundColorStartPosition:I

    const/16 v1, 0x21

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1f

    .line 1163
    iget v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->foregroundColor:I

    if-eq v0, p1, :cond_1f

    .line 1164
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->captionStringBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    iget v4, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->foregroundColor:I

    invoke-direct {v3, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iget v4, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->foregroundColorStartPosition:I

    iget-object v5, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->captionStringBuilder:Landroid/text/SpannableStringBuilder;

    .line 1167
    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    .line 1164
    invoke-virtual {v0, v3, v4, v5, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1171
    :cond_1f
    sget v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->COLOR_SOLID_WHITE:I

    if-eq p1, v0, :cond_2d

    .line 1172
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->captionStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->foregroundColorStartPosition:I

    .line 1173
    iput p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->foregroundColor:I

    .line 1176
    :cond_2d
    iget v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->backgroundColorStartPosition:I

    if-eq v0, v2, :cond_49

    .line 1177
    iget v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->backgroundColor:I

    if-eq v0, p2, :cond_49

    .line 1178
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->captionStringBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v2, Landroid/text/style/BackgroundColorSpan;

    iget v3, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->backgroundColor:I

    invoke-direct {v2, v3}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    iget v3, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->backgroundColorStartPosition:I

    iget-object v4, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->captionStringBuilder:Landroid/text/SpannableStringBuilder;

    .line 1181
    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    .line 1178
    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1185
    :cond_49
    sget v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->COLOR_SOLID_BLACK:I

    if-eq p2, v0, :cond_57

    .line 1186
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->captionStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->backgroundColorStartPosition:I

    .line 1187
    iput p2, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->backgroundColor:I

    .line 1191
    :cond_57
    return-void
.end method

.method public setPenLocation(II)V
    .registers 4
    .param p1, "row"    # I
    .param p2, "column"    # I

    .line 1200
    iget v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->row:I

    if-eq v0, p1, :cond_9

    .line 1201
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    .line 1203
    :cond_9
    iput p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->row:I

    .line 1204
    return-void
.end method

.method public setVisibility(Z)V
    .registers 2
    .param p1, "visible"    # Z

    .line 1028
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->visible:Z

    .line 1029
    return-void
.end method

.method public setWindowAttributes(IIZIIII)V
    .registers 8
    .param p1, "fillColor"    # I
    .param p2, "borderColor"    # I
    .param p3, "wordWrapToggle"    # Z
    .param p4, "borderType"    # I
    .param p5, "printDirection"    # I
    .param p6, "scrollDirection"    # I
    .param p7, "justification"    # I

    .line 1111
    iput p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->windowFillColor:I

    .line 1116
    iput p7, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->justification:I

    .line 1117
    return-void
.end method
