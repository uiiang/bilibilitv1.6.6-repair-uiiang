.class final Lcom/google/android/exoplayer2/text/ssa/SsaStyle$Format;
.super Ljava/lang/Object;
.source "SsaStyle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/text/ssa/SsaStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Format"
.end annotation


# instance fields
.field public final alignmentIndex:I

.field public final boldIndex:I

.field public final borderStyleIndex:I

.field public final fontSizeIndex:I

.field public final italicIndex:I

.field public final length:I

.field public final nameIndex:I

.field public final outlineColorIndex:I

.field public final primaryColorIndex:I

.field public final strikeoutIndex:I

.field public final underlineIndex:I


# direct methods
.method private constructor <init>(IIIIIIIIIII)V
    .registers 12
    .param p1, "nameIndex"    # I
    .param p2, "alignmentIndex"    # I
    .param p3, "primaryColorIndex"    # I
    .param p4, "outlineColorIndex"    # I
    .param p5, "fontSizeIndex"    # I
    .param p6, "boldIndex"    # I
    .param p7, "italicIndex"    # I
    .param p8, "underlineIndex"    # I
    .param p9, "strikeoutIndex"    # I
    .param p10, "borderStyleIndex"    # I
    .param p11, "length"    # I

    .line 350
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 351
    iput p1, p0, Lcom/google/android/exoplayer2/text/ssa/SsaStyle$Format;->nameIndex:I

    .line 352
    iput p2, p0, Lcom/google/android/exoplayer2/text/ssa/SsaStyle$Format;->alignmentIndex:I

    .line 353
    iput p3, p0, Lcom/google/android/exoplayer2/text/ssa/SsaStyle$Format;->primaryColorIndex:I

    .line 354
    iput p4, p0, Lcom/google/android/exoplayer2/text/ssa/SsaStyle$Format;->outlineColorIndex:I

    .line 355
    iput p5, p0, Lcom/google/android/exoplayer2/text/ssa/SsaStyle$Format;->fontSizeIndex:I

    .line 356
    iput p6, p0, Lcom/google/android/exoplayer2/text/ssa/SsaStyle$Format;->boldIndex:I

    .line 357
    iput p7, p0, Lcom/google/android/exoplayer2/text/ssa/SsaStyle$Format;->italicIndex:I

    .line 358
    iput p8, p0, Lcom/google/android/exoplayer2/text/ssa/SsaStyle$Format;->underlineIndex:I

    .line 359
    iput p9, p0, Lcom/google/android/exoplayer2/text/ssa/SsaStyle$Format;->strikeoutIndex:I

    .line 360
    iput p10, p0, Lcom/google/android/exoplayer2/text/ssa/SsaStyle$Format;->borderStyleIndex:I

    .line 361
    iput p11, p0, Lcom/google/android/exoplayer2/text/ssa/SsaStyle$Format;->length:I

    .line 362
    return-void
.end method

.method public static fromFormatLine(Ljava/lang/String;)Lcom/google/android/exoplayer2/text/ssa/SsaStyle$Format;
    .registers 26
    .param p0, "styleFormatLine"    # Ljava/lang/String;

    .line 371
    const/4 v0, -0x1

    .line 372
    .local v0, "nameIndex":I
    const/4 v1, -0x1

    .line 373
    .local v1, "alignmentIndex":I
    const/4 v2, -0x1

    .line 374
    .local v2, "primaryColorIndex":I
    const/4 v3, -0x1

    .line 375
    .local v3, "outlineColorIndex":I
    const/4 v4, -0x1

    .line 376
    .local v4, "fontSizeIndex":I
    const/4 v5, -0x1

    .line 377
    .local v5, "boldIndex":I
    const/4 v6, -0x1

    .line 378
    .local v6, "italicIndex":I
    const/4 v7, -0x1

    .line 379
    .local v7, "underlineIndex":I
    const/4 v8, -0x1

    .line 380
    .local v8, "strikeoutIndex":I
    const/4 v9, -0x1

    .line 381
    .local v9, "borderStyleIndex":I
    nop

    .line 382
    const-string v10, "Format:"

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    move-object/from16 v11, p0

    invoke-virtual {v11, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    const-string v12, ","

    invoke-static {v10, v12}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 383
    .local v10, "keys":[Ljava/lang/String;
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1e
    array-length v13, v10

    const/4 v14, -0x1

    if-ge v12, v13, :cond_b6

    .line 384
    aget-object v13, v10, v12

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/google/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->hashCode()I

    move-result v15

    sparse-switch v15, :sswitch_data_d6

    :cond_33
    goto/16 :goto_9a

    :sswitch_35
    const-string v15, "outlinecolour"

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_33

    const/4 v14, 0x3

    goto :goto_9a

    :sswitch_3f
    const-string v15, "alignment"

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_33

    const/4 v14, 0x1

    goto :goto_9a

    :sswitch_49
    const-string v15, "borderstyle"

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_33

    const/16 v14, 0x9

    goto :goto_9a

    :sswitch_54
    const-string v15, "fontsize"

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_33

    const/4 v14, 0x4

    goto :goto_9a

    :sswitch_5e
    const-string v15, "name"

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_33

    const/4 v14, 0x0

    goto :goto_9a

    :sswitch_68
    const-string v15, "bold"

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_33

    const/4 v14, 0x5

    goto :goto_9a

    :sswitch_72
    const-string v15, "primarycolour"

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_33

    const/4 v14, 0x2

    goto :goto_9a

    :sswitch_7c
    const-string v15, "strikeout"

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_33

    const/16 v14, 0x8

    goto :goto_9a

    :sswitch_87
    const-string v15, "underline"

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_33

    const/4 v14, 0x7

    goto :goto_9a

    :sswitch_91
    const-string v15, "italic"

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_33

    const/4 v14, 0x6

    :goto_9a
    packed-switch v14, :pswitch_data_100

    goto :goto_b2

    .line 413
    :pswitch_9e
    move v9, v12

    goto :goto_b2

    .line 410
    :pswitch_a0
    move v8, v12

    .line 411
    goto :goto_b2

    .line 407
    :pswitch_a2
    move v7, v12

    .line 408
    goto :goto_b2

    .line 404
    :pswitch_a4
    move v6, v12

    .line 405
    goto :goto_b2

    .line 401
    :pswitch_a6
    move v5, v12

    .line 402
    goto :goto_b2

    .line 398
    :pswitch_a8
    move v4, v12

    .line 399
    goto :goto_b2

    .line 395
    :pswitch_aa
    move v3, v12

    .line 396
    goto :goto_b2

    .line 392
    :pswitch_ac
    move v2, v12

    .line 393
    goto :goto_b2

    .line 389
    :pswitch_ae
    move v1, v12

    .line 390
    goto :goto_b2

    .line 386
    :pswitch_b0
    move v0, v12

    .line 387
    nop

    .line 383
    :goto_b2
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1e

    .line 417
    .end local v12    # "i":I
    :cond_b6
    if-eq v0, v14, :cond_d4

    .line 418
    new-instance v12, Lcom/google/android/exoplayer2/text/ssa/SsaStyle$Format;

    array-length v15, v10

    move-object v13, v12

    move v14, v0

    move/from16 v24, v15

    move v15, v1

    move/from16 v16, v2

    move/from16 v17, v3

    move/from16 v18, v4

    move/from16 v19, v5

    move/from16 v20, v6

    move/from16 v21, v7

    move/from16 v22, v8

    move/from16 v23, v9

    invoke-direct/range {v13 .. v24}, Lcom/google/android/exoplayer2/text/ssa/SsaStyle$Format;-><init>(IIIIIIIIIII)V

    goto :goto_d5

    .line 430
    :cond_d4
    const/4 v12, 0x0

    .line 417
    :goto_d5
    return-object v12

    :sswitch_data_d6
    .sparse-switch
        -0x4642c5d0 -> :sswitch_91
        -0x3d363934 -> :sswitch_87
        -0xb7325a4 -> :sswitch_7c
        -0x43a3db2 -> :sswitch_72
        0x2e3a85 -> :sswitch_68
        0x337a8b -> :sswitch_5e
        0x15d92cd0 -> :sswitch_54
        0x2dbc6505 -> :sswitch_49
        0x695fa1e3 -> :sswitch_3f
        0x76840c8e -> :sswitch_35
    .end sparse-switch

    :pswitch_data_100
    .packed-switch 0x0
        :pswitch_b0
        :pswitch_ae
        :pswitch_ac
        :pswitch_aa
        :pswitch_a8
        :pswitch_a6
        :pswitch_a4
        :pswitch_a2
        :pswitch_a0
        :pswitch_9e
    .end packed-switch
.end method
