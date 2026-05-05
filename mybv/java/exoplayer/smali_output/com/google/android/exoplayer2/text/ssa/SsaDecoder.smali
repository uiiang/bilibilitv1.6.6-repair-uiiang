.class public final Lcom/google/android/exoplayer2/text/ssa/SsaDecoder;
.super Lcom/google/android/exoplayer2/text/SimpleSubtitleDecoder;
.source "SsaDecoder.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final DEFAULT_MARGIN:F = 0.05f

.field private static final DIALOGUE_LINE_PREFIX:Ljava/lang/String; = "Dialogue:"

.field static final FORMAT_LINE_PREFIX:Ljava/lang/String; = "Format:"

.field private static final SSA_TIMECODE_PATTERN:Ljava/util/regex/Pattern;

.field static final STYLE_LINE_PREFIX:Ljava/lang/String; = "Style:"

.field private static final TAG:Ljava/lang/String; = "SsaDecoder"


# instance fields
.field private final dialogueFormatFromInitializationData:Lcom/google/android/exoplayer2/text/ssa/SsaDialogueFormat;

.field private final haveInitializationData:Z

.field private screenHeight:F

.field private screenWidth:F

.field private styles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/text/ssa/SsaStyle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 62
    nop

    .line 63
    const-string v0, "(?:(\\d+):)?(\\d+):(\\d+)[:.](\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/text/ssa/SsaDecoder;->SSA_TIMECODE_PATTERN:Ljava/util/regex/Pattern;

    .line 62
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 90
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/text/ssa/SsaDecoder;-><init>(Ljava/util/List;)V

    .line 91
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)V"
        }
    .end annotation

    .line 103
    .local p1, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    const-string v0, "SsaDecoder"

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/text/SimpleSubtitleDecoder;-><init>(Ljava/lang/String;)V

    .line 104
    const v0, -0x800001

    iput v0, p0, Lcom/google/android/exoplayer2/text/ssa/SsaDecoder;->screenWidth:F

    .line 105
    iput v0, p0, Lcom/google/android/exoplayer2/text/ssa/SsaDecoder;->screenHeight:F

    .line 107
    const/4 v0, 0x0

    if-eqz p1, :cond_49

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_49

    .line 108
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/exoplayer2/text/ssa/SsaDecoder;->haveInitializationData:Z

    .line 112
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->fromUtf8Bytes([B)Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, "formatLine":Ljava/lang/String;
    const-string v2, "Format:"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 114
    nop

    .line 115
    invoke-static {v0}, Lcom/google/android/exoplayer2/text/ssa/SsaDialogueFormat;->fromFormatLine(Ljava/lang/String;)Lcom/google/android/exoplayer2/text/ssa/SsaDialogueFormat;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/text/ssa/SsaDialogueFormat;

    iput-object v2, p0, Lcom/google/android/exoplayer2/text/ssa/SsaDecoder;->dialogueFormatFromInitializationData:Lcom/google/android/exoplayer2/text/ssa/SsaDialogueFormat;

    .line 116
    new-instance v2, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-direct {v2, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>([B)V

    sget-object v1, Lcom/google/common/base/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p0, v2, v1}, Lcom/google/android/exoplayer2/text/ssa/SsaDecoder;->parseHeader(Lcom/google/android/exoplayer2/util/ParsableByteArray;Ljava/nio/charset/Charset;)V

    .line 117
    .end local v0    # "formatLine":Ljava/lang/String;
    goto :goto_4e

    .line 118
    :cond_49
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/text/ssa/SsaDecoder;->haveInitializationData:Z

    .line 119
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/ssa/SsaDecoder;->dialogueFormatFromInitializationData:Lcom/google/android/exoplayer2/text/ssa/SsaDialogueFormat;

    .line 121
    :goto_4e
    return-void
.end method

.method private static addCuePlacerholderByTime(JLjava/util/List;Ljava/util/List;)I
    .registers 9
    .param p0, "timeUs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/Cue;",
            ">;>;)I"
        }
    .end annotation

    .line 513
    .local p2, "sortedCueTimesUs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .local p3, "cues":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lcom/google/android/exoplayer2/text/Cue;>;>;"
    const/4 v0, 0x0

    .line 514
    .local v0, "insertionIndex":I
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_7
    if-ltz v1, :cond_2c

    .line 515
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v4, v2, p0

    if-nez v4, :cond_18

    .line 516
    return v1

    .line 519
    :cond_18
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v4, v2, p0

    if-gez v4, :cond_29

    .line 520
    add-int/lit8 v0, v1, 0x1

    .line 521
    goto :goto_2c

    .line 514
    :cond_29
    add-int/lit8 v1, v1, -0x1

    goto :goto_7

    .line 524
    .end local v1    # "i":I
    :cond_2c
    :goto_2c
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 526
    nop

    .line 528
    new-instance v1, Ljava/util/ArrayList;

    if-nez v0, :cond_3c

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_47

    :cond_3c
    add-int/lit8 v2, v0, -0x1

    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 526
    :goto_47
    invoke-interface {p3, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 529
    return v0
.end method

.method private static computeDefaultLineOrPosition(I)F
    .registers 2
    .param p0, "anchor"    # I

    .line 492
    packed-switch p0, :pswitch_data_12

    .line 501
    const v0, -0x800001

    return v0

    .line 498
    :pswitch_7
    const v0, 0x3f733333    # 0.95f

    return v0

    .line 496
    :pswitch_b
    const/high16 v0, 0x3f000000    # 0.5f

    return v0

    .line 494
    :pswitch_e
    const v0, 0x3d4ccccd    # 0.05f

    return v0

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_e
        :pswitch_b
        :pswitch_7
    .end packed-switch
.end method

.method private static createCue(Ljava/lang/String;Lcom/google/android/exoplayer2/text/ssa/SsaStyle;Lcom/google/android/exoplayer2/text/ssa/SsaStyle$Overrides;FF)Lcom/google/android/exoplayer2/text/Cue;
    .registers 13
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "style"    # Lcom/google/android/exoplayer2/text/ssa/SsaStyle;
    .param p2, "styleOverrides"    # Lcom/google/android/exoplayer2/text/ssa/SsaStyle$Overrides;
    .param p3, "screenWidth"    # F
    .param p4, "screenHeight"    # F

    .line 341
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 342
    .local v0, "spannableText":Landroid/text/SpannableString;
    new-instance v1, Lcom/google/android/exoplayer2/text/Cue$Builder;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/text/Cue$Builder;-><init>()V

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/text/Cue$Builder;->setText(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/text/Cue$Builder;

    move-result-object v1

    .line 344
    .local v1, "cue":Lcom/google/android/exoplayer2/text/Cue$Builder;
    const v2, -0x800001

    const/4 v3, 0x0

    if-eqz p1, :cond_af

    .line 345
    iget-object v4, p1, Lcom/google/android/exoplayer2/text/ssa/SsaStyle;->primaryColor:Ljava/lang/Integer;

    const/16 v5, 0x21

    if-eqz v4, :cond_2c

    .line 346
    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    iget-object v6, p1, Lcom/google/android/exoplayer2/text/ssa/SsaStyle;->primaryColor:Ljava/lang/Integer;

    .line 347
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {v4, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 349
    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v6

    .line 346
    invoke-virtual {v0, v4, v3, v6, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 352
    :cond_2c
    iget v4, p1, Lcom/google/android/exoplayer2/text/ssa/SsaStyle;->borderStyle:I

    const/4 v6, 0x3

    if-ne v4, v6, :cond_47

    iget-object v4, p1, Lcom/google/android/exoplayer2/text/ssa/SsaStyle;->outlineColor:Ljava/lang/Integer;

    if-eqz v4, :cond_47

    .line 353
    new-instance v4, Landroid/text/style/BackgroundColorSpan;

    iget-object v7, p1, Lcom/google/android/exoplayer2/text/ssa/SsaStyle;->outlineColor:Ljava/lang/Integer;

    .line 354
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-direct {v4, v7}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    .line 356
    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v7

    .line 353
    invoke-virtual {v0, v4, v3, v7, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 359
    :cond_47
    iget v4, p1, Lcom/google/android/exoplayer2/text/ssa/SsaStyle;->fontSize:F

    const/4 v7, 0x1

    cmpl-float v4, v4, v2

    if-eqz v4, :cond_58

    cmpl-float v4, p4, v2

    if-eqz v4, :cond_58

    .line 360
    iget v4, p1, Lcom/google/android/exoplayer2/text/ssa/SsaStyle;->fontSize:F

    div-float/2addr v4, p4

    invoke-virtual {v1, v4, v7}, Lcom/google/android/exoplayer2/text/Cue$Builder;->setTextSize(FI)Lcom/google/android/exoplayer2/text/Cue$Builder;

    .line 363
    :cond_58
    iget-boolean v4, p1, Lcom/google/android/exoplayer2/text/ssa/SsaStyle;->bold:Z

    if-eqz v4, :cond_6d

    iget-boolean v4, p1, Lcom/google/android/exoplayer2/text/ssa/SsaStyle;->italic:Z

    if-eqz v4, :cond_6d

    .line 364
    new-instance v4, Landroid/text/style/StyleSpan;

    invoke-direct {v4, v6}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 367
    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v6

    .line 364
    invoke-virtual {v0, v4, v3, v6, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_8f

    .line 369
    :cond_6d
    iget-boolean v4, p1, Lcom/google/android/exoplayer2/text/ssa/SsaStyle;->bold:Z

    if-eqz v4, :cond_7e

    .line 370
    new-instance v4, Landroid/text/style/StyleSpan;

    invoke-direct {v4, v7}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 373
    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v6

    .line 370
    invoke-virtual {v0, v4, v3, v6, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_8f

    .line 375
    :cond_7e
    iget-boolean v4, p1, Lcom/google/android/exoplayer2/text/ssa/SsaStyle;->italic:Z

    if-eqz v4, :cond_8f

    .line 376
    new-instance v4, Landroid/text/style/StyleSpan;

    const/4 v6, 0x2

    invoke-direct {v4, v6}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 379
    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v6

    .line 376
    invoke-virtual {v0, v4, v3, v6, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 382
    :cond_8f
    :goto_8f
    iget-boolean v4, p1, Lcom/google/android/exoplayer2/text/ssa/SsaStyle;->underline:Z

    if-eqz v4, :cond_9f

    .line 383
    new-instance v4, Landroid/text/style/UnderlineSpan;

    invoke-direct {v4}, Landroid/text/style/UnderlineSpan;-><init>()V

    .line 386
    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v6

    .line 383
    invoke-virtual {v0, v4, v3, v6, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 389
    :cond_9f
    iget-boolean v4, p1, Lcom/google/android/exoplayer2/text/ssa/SsaStyle;->strikeout:Z

    if-eqz v4, :cond_af

    .line 390
    new-instance v4, Landroid/text/style/StrikethroughSpan;

    invoke-direct {v4}, Landroid/text/style/StrikethroughSpan;-><init>()V

    .line 393
    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v6

    .line 390
    invoke-virtual {v0, v4, v3, v6, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 399
    :cond_af
    iget v4, p2, Lcom/google/android/exoplayer2/text/ssa/SsaStyle$Overrides;->alignment:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_b7

    .line 400
    iget v4, p2, Lcom/google/android/exoplayer2/text/ssa/SsaStyle$Overrides;->alignment:I

    .local v4, "alignment":I
    goto :goto_bd

    .line 401
    .end local v4    # "alignment":I
    :cond_b7
    if-eqz p1, :cond_bc

    .line 402
    iget v4, p1, Lcom/google/android/exoplayer2/text/ssa/SsaStyle;->alignment:I

    .restart local v4    # "alignment":I
    goto :goto_bd

    .line 404
    .end local v4    # "alignment":I
    :cond_bc
    const/4 v4, -0x1

    .line 406
    .restart local v4    # "alignment":I
    :goto_bd
    invoke-static {v4}, Lcom/google/android/exoplayer2/text/ssa/SsaDecoder;->toTextAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/google/android/exoplayer2/text/Cue$Builder;->setTextAlignment(Landroid/text/Layout$Alignment;)Lcom/google/android/exoplayer2/text/Cue$Builder;

    move-result-object v5

    .line 407
    invoke-static {v4}, Lcom/google/android/exoplayer2/text/ssa/SsaDecoder;->toPositionAnchor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer2/text/Cue$Builder;->setPositionAnchor(I)Lcom/google/android/exoplayer2/text/Cue$Builder;

    move-result-object v5

    .line 408
    invoke-static {v4}, Lcom/google/android/exoplayer2/text/ssa/SsaDecoder;->toLineAnchor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer2/text/Cue$Builder;->setLineAnchor(I)Lcom/google/android/exoplayer2/text/Cue$Builder;

    .line 410
    iget-object v5, p2, Lcom/google/android/exoplayer2/text/ssa/SsaStyle$Overrides;->position:Landroid/graphics/PointF;

    if-eqz v5, :cond_f1

    cmpl-float v5, p4, v2

    if-eqz v5, :cond_f1

    cmpl-float v2, p3, v2

    if-eqz v2, :cond_f1

    .line 413
    iget-object v2, p2, Lcom/google/android/exoplayer2/text/ssa/SsaStyle$Overrides;->position:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    div-float/2addr v2, p3

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/text/Cue$Builder;->setPosition(F)Lcom/google/android/exoplayer2/text/Cue$Builder;

    .line 414
    iget-object v2, p2, Lcom/google/android/exoplayer2/text/ssa/SsaStyle$Overrides;->position:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    div-float/2addr v2, p4

    invoke-virtual {v1, v2, v3}, Lcom/google/android/exoplayer2/text/Cue$Builder;->setLine(FI)Lcom/google/android/exoplayer2/text/Cue$Builder;

    goto :goto_107

    .line 417
    :cond_f1
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/text/Cue$Builder;->getPositionAnchor()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/exoplayer2/text/ssa/SsaDecoder;->computeDefaultLineOrPosition(I)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/text/Cue$Builder;->setPosition(F)Lcom/google/android/exoplayer2/text/Cue$Builder;

    .line 418
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/text/Cue$Builder;->getLineAnchor()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/exoplayer2/text/ssa/SsaDecoder;->computeDefaultLineOrPosition(I)F

    move-result v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/exoplayer2/text/Cue$Builder;->setLine(FI)Lcom/google/android/exoplayer2/text/Cue$Builder;

    .line 421
    :goto_107
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/text/Cue$Builder;->build()Lcom/google/android/exoplayer2/text/Cue;

    move-result-object v2

    return-object v2
.end method

.method private detectUtfCharset(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Ljava/nio/charset/Charset;
    .registers 4
    .param p1, "data"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 143
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUtfCharsetFromBom()Ljava/nio/charset/Charset;

    move-result-object v0

    .line 144
    .local v0, "charset":Ljava/nio/charset/Charset;
    if-eqz v0, :cond_8

    move-object v1, v0

    goto :goto_a

    :cond_8
    sget-object v1, Lcom/google/common/base/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    :goto_a
    return-object v1
.end method

.method private parseDialogueLine(Ljava/lang/String;Lcom/google/android/exoplayer2/text/ssa/SsaDialogueFormat;Ljava/util/List;Ljava/util/List;)V
    .registers 23
    .param p1, "dialogueLine"    # Ljava/lang/String;
    .param p2, "format"    # Lcom/google/android/exoplayer2/text/ssa/SsaDialogueFormat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/text/ssa/SsaDialogueFormat;",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/Cue;",
            ">;>;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 274
    .local p3, "cues":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lcom/google/android/exoplayer2/text/Cue;>;>;"
    .local p4, "cueTimesUs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    const-string v5, "Dialogue:"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    invoke-static {v6}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 275
    nop

    .line 276
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, ","

    iget v7, v2, Lcom/google/android/exoplayer2/text/ssa/SsaDialogueFormat;->length:I

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v5

    .line 277
    .local v5, "lineValues":[Ljava/lang/String;
    array-length v6, v5

    iget v7, v2, Lcom/google/android/exoplayer2/text/ssa/SsaDialogueFormat;->length:I

    const-string v8, "SsaDecoder"

    if-eq v6, v7, :cond_42

    .line 278
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Skipping dialogue line with fewer columns than format: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    return-void

    .line 282
    :cond_42
    iget v6, v2, Lcom/google/android/exoplayer2/text/ssa/SsaDialogueFormat;->startTimeIndex:I

    aget-object v6, v5, v6

    invoke-static {v6}, Lcom/google/android/exoplayer2/text/ssa/SsaDecoder;->parseTimecodeUs(Ljava/lang/String;)J

    move-result-wide v6

    .line 283
    .local v6, "startTimeUs":J
    const-string v9, "Skipping invalid timing: "

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v12, v6, v10

    if-nez v12, :cond_6a

    .line 284
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    return-void

    .line 288
    :cond_6a
    iget v12, v2, Lcom/google/android/exoplayer2/text/ssa/SsaDialogueFormat;->endTimeIndex:I

    aget-object v12, v5, v12

    invoke-static {v12}, Lcom/google/android/exoplayer2/text/ssa/SsaDecoder;->parseTimecodeUs(Ljava/lang/String;)J

    move-result-wide v12

    .line 289
    .local v12, "endTimeUs":J
    cmp-long v14, v12, v10

    if-nez v14, :cond_8b

    .line 290
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    return-void

    .line 296
    :cond_8b
    iget-object v8, v0, Lcom/google/android/exoplayer2/text/ssa/SsaDecoder;->styles:Ljava/util/Map;

    if-eqz v8, :cond_a5

    iget v8, v2, Lcom/google/android/exoplayer2/text/ssa/SsaDialogueFormat;->styleIndex:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_a5

    .line 297
    iget-object v8, v0, Lcom/google/android/exoplayer2/text/ssa/SsaDecoder;->styles:Ljava/util/Map;

    iget v9, v2, Lcom/google/android/exoplayer2/text/ssa/SsaDialogueFormat;->styleIndex:I

    aget-object v9, v5, v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/exoplayer2/text/ssa/SsaStyle;

    goto :goto_a6

    .line 298
    :cond_a5
    const/4 v8, 0x0

    :goto_a6
    nop

    .line 299
    .local v8, "style":Lcom/google/android/exoplayer2/text/ssa/SsaStyle;
    iget v9, v2, Lcom/google/android/exoplayer2/text/ssa/SsaDialogueFormat;->textIndex:I

    aget-object v9, v5, v9

    .line 300
    .local v9, "rawText":Ljava/lang/String;
    invoke-static {v9}, Lcom/google/android/exoplayer2/text/ssa/SsaStyle$Overrides;->parseFromDialogue(Ljava/lang/String;)Lcom/google/android/exoplayer2/text/ssa/SsaStyle$Overrides;

    move-result-object v10

    .line 301
    .local v10, "styleOverrides":Lcom/google/android/exoplayer2/text/ssa/SsaStyle$Overrides;
    nop

    .line 302
    invoke-static {v9}, Lcom/google/android/exoplayer2/text/ssa/SsaStyle$Overrides;->stripStyleOverrides(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 303
    const-string v14, "\\N"

    const-string v15, "\n"

    invoke-virtual {v11, v14, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    .line 304
    const-string v14, "\\n"

    invoke-virtual {v11, v14, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    .line 305
    const-string v14, "\\h"

    const-string v15, "\u00a0"

    invoke-virtual {v11, v14, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    .line 306
    .local v11, "text":Ljava/lang/String;
    iget v14, v0, Lcom/google/android/exoplayer2/text/ssa/SsaDecoder;->screenWidth:F

    iget v15, v0, Lcom/google/android/exoplayer2/text/ssa/SsaDecoder;->screenHeight:F

    invoke-static {v11, v8, v10, v14, v15}, Lcom/google/android/exoplayer2/text/ssa/SsaDecoder;->createCue(Ljava/lang/String;Lcom/google/android/exoplayer2/text/ssa/SsaStyle;Lcom/google/android/exoplayer2/text/ssa/SsaStyle$Overrides;FF)Lcom/google/android/exoplayer2/text/Cue;

    move-result-object v14

    .line 308
    .local v14, "cue":Lcom/google/android/exoplayer2/text/Cue;
    invoke-static {v6, v7, v4, v3}, Lcom/google/android/exoplayer2/text/ssa/SsaDecoder;->addCuePlacerholderByTime(JLjava/util/List;Ljava/util/List;)I

    move-result v15

    .line 309
    .local v15, "startTimeIndex":I
    invoke-static {v12, v13, v4, v3}, Lcom/google/android/exoplayer2/text/ssa/SsaDecoder;->addCuePlacerholderByTime(JLjava/util/List;Ljava/util/List;)I

    move-result v0

    .line 311
    .local v0, "endTimeIndex":I
    move/from16 v16, v15

    move/from16 v1, v16

    .local v1, "i":I
    :goto_de
    if-ge v1, v0, :cond_f2

    .line 312
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move/from16 v17, v0

    .end local v0    # "endTimeIndex":I
    .local v17, "endTimeIndex":I
    move-object/from16 v0, v16

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 311
    add-int/lit8 v1, v1, 0x1

    move/from16 v0, v17

    goto :goto_de

    .line 314
    .end local v1    # "i":I
    .end local v17    # "endTimeIndex":I
    .restart local v0    # "endTimeIndex":I
    :cond_f2
    return-void
.end method

.method private parseEventBody(Lcom/google/android/exoplayer2/util/ParsableByteArray;Ljava/util/List;Ljava/util/List;Ljava/nio/charset/Charset;)V
    .registers 9
    .param p1, "data"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p4, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/util/ParsableByteArray;",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/Cue;",
            ">;>;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/nio/charset/Charset;",
            ")V"
        }
    .end annotation

    .line 249
    .local p2, "cues":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lcom/google/android/exoplayer2/text/Cue;>;>;"
    .local p3, "cueTimesUs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/text/ssa/SsaDecoder;->haveInitializationData:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/exoplayer2/text/ssa/SsaDecoder;->dialogueFormatFromInitializationData:Lcom/google/android/exoplayer2/text/ssa/SsaDialogueFormat;

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    .line 251
    .local v0, "format":Lcom/google/android/exoplayer2/text/ssa/SsaDialogueFormat;
    :cond_8
    :goto_8
    invoke-virtual {p1, p4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLine(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .local v2, "currentLine":Ljava/lang/String;
    if-eqz v1, :cond_43

    .line 252
    const-string v1, "Format:"

    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 253
    invoke-static {v2}, Lcom/google/android/exoplayer2/text/ssa/SsaDialogueFormat;->fromFormatLine(Ljava/lang/String;)Lcom/google/android/exoplayer2/text/ssa/SsaDialogueFormat;

    move-result-object v0

    goto :goto_8

    .line 254
    :cond_1c
    const-string v1, "Dialogue:"

    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 255
    if-nez v0, :cond_3f

    .line 256
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skipping dialogue line before complete format: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "SsaDecoder"

    invoke-static {v3, v1}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    goto :goto_8

    .line 259
    :cond_3f
    invoke-direct {p0, v2, v0, p2, p3}, Lcom/google/android/exoplayer2/text/ssa/SsaDecoder;->parseDialogueLine(Ljava/lang/String;Lcom/google/android/exoplayer2/text/ssa/SsaDialogueFormat;Ljava/util/List;Ljava/util/List;)V

    goto :goto_8

    .line 262
    :cond_43
    return-void
.end method

.method private parseHeader(Lcom/google/android/exoplayer2/util/ParsableByteArray;Ljava/nio/charset/Charset;)V
    .registers 6
    .param p1, "data"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p2, "charset"    # Ljava/nio/charset/Charset;

    .line 155
    nop

    :cond_1
    :goto_1
    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLine(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .local v1, "currentLine":Ljava/lang/String;
    if-eqz v0, :cond_3c

    .line 156
    const-string v0, "[Script Info]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 157
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/text/ssa/SsaDecoder;->parseScriptInfo(Lcom/google/android/exoplayer2/util/ParsableByteArray;Ljava/nio/charset/Charset;)V

    goto :goto_1

    .line 158
    :cond_14
    const-string v0, "[V4+ Styles]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 159
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/text/ssa/SsaDecoder;->parseStyles(Lcom/google/android/exoplayer2/util/ParsableByteArray;Ljava/nio/charset/Charset;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/ssa/SsaDecoder;->styles:Ljava/util/Map;

    goto :goto_1

    .line 160
    :cond_23
    const-string v0, "[V4 Styles]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 161
    const-string v0, "SsaDecoder"

    const-string v2, "[V4 Styles] are not supported"

    invoke-static {v0, v2}, Lcom/google/android/exoplayer2/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 162
    :cond_33
    const-string v0, "[Events]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 164
    return-void

    .line 167
    :cond_3c
    return-void
.end method

.method private parseScriptInfo(Lcom/google/android/exoplayer2/util/ParsableByteArray;Ljava/nio/charset/Charset;)V
    .registers 9
    .param p1, "data"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p2, "charset"    # Ljava/nio/charset/Charset;

    .line 181
    nop

    :goto_1
    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLine(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .local v1, "currentLine":Ljava/lang/String;
    if-eqz v0, :cond_6c

    .line 182
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->peekChar(Ljava/nio/charset/Charset;)C

    move-result v0

    const/16 v2, 0x5b

    if-eq v0, v2, :cond_6c

    .line 183
    :cond_16
    const-string v0, ":"

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 184
    .local v0, "infoNameAndValue":[Ljava/lang/String;
    array-length v2, v0

    const/4 v3, 0x2

    if-eq v2, v3, :cond_21

    .line 185
    goto :goto_1

    .line 187
    :cond_21
    const/4 v2, 0x0

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, 0x1

    packed-switch v4, :pswitch_data_6e

    :cond_34
    goto :goto_48

    :pswitch_35
    const-string v2, "playresy"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_34

    const/4 v2, 0x1

    goto :goto_49

    :pswitch_3f
    const-string v4, "playresx"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    goto :goto_49

    :goto_48
    const/4 v2, -0x1

    :goto_49
    packed-switch v2, :pswitch_data_76

    goto :goto_6b

    .line 197
    :pswitch_4d
    :try_start_4d
    aget-object v2, v0, v5

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, p0, Lcom/google/android/exoplayer2/text/ssa/SsaDecoder;->screenHeight:F
    :try_end_59
    .catch Ljava/lang/NumberFormatException; {:try_start_4d .. :try_end_59} :catch_5a

    .line 200
    goto :goto_6b

    .line 198
    :catch_5a
    move-exception v2

    goto :goto_6b

    .line 190
    :pswitch_5c
    :try_start_5c
    aget-object v2, v0, v5

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, p0, Lcom/google/android/exoplayer2/text/ssa/SsaDecoder;->screenWidth:F
    :try_end_68
    .catch Ljava/lang/NumberFormatException; {:try_start_5c .. :try_end_68} :catch_69

    .line 193
    goto :goto_6b

    .line 191
    :catch_69
    move-exception v2

    .line 194
    nop

    .line 203
    .end local v0    # "infoNameAndValue":[Ljava/lang/String;
    :goto_6b
    goto :goto_1

    .line 204
    :cond_6c
    return-void

    nop

    :pswitch_data_6e
    .packed-switch 0x70092d0c
        :pswitch_3f
        :pswitch_35
    .end packed-switch

    :pswitch_data_76
    .packed-switch 0x0
        :pswitch_5c
        :pswitch_4d
    .end packed-switch
.end method

.method private static parseStyles(Lcom/google/android/exoplayer2/util/ParsableByteArray;Ljava/nio/charset/Charset;)Ljava/util/Map;
    .registers 7
    .param p0, "data"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p1, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/util/ParsableByteArray;",
            "Ljava/nio/charset/Charset;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/text/ssa/SsaStyle;",
            ">;"
        }
    .end annotation

    .line 217
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 218
    .local v0, "styles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/android/exoplayer2/text/ssa/SsaStyle;>;"
    const/4 v1, 0x0

    .line 220
    .local v1, "formatInfo":Lcom/google/android/exoplayer2/text/ssa/SsaStyle$Format;
    :cond_6
    :goto_6
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLine(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .local v3, "currentLine":Ljava/lang/String;
    if-eqz v2, :cond_57

    .line 221
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v2

    if-eqz v2, :cond_1b

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->peekChar(Ljava/nio/charset/Charset;)C

    move-result v2

    const/16 v4, 0x5b

    if-eq v2, v4, :cond_57

    .line 222
    :cond_1b
    const-string v2, "Format:"

    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 223
    invoke-static {v3}, Lcom/google/android/exoplayer2/text/ssa/SsaStyle$Format;->fromFormatLine(Ljava/lang/String;)Lcom/google/android/exoplayer2/text/ssa/SsaStyle$Format;

    move-result-object v1

    goto :goto_6

    .line 224
    :cond_28
    const-string v2, "Style:"

    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 225
    if-nez v1, :cond_4b

    .line 226
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skipping \'Style:\' line before \'Format:\' line: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "SsaDecoder"

    invoke-static {v4, v2}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    goto :goto_6

    .line 229
    :cond_4b
    invoke-static {v3, v1}, Lcom/google/android/exoplayer2/text/ssa/SsaStyle;->fromStyleLine(Ljava/lang/String;Lcom/google/android/exoplayer2/text/ssa/SsaStyle$Format;)Lcom/google/android/exoplayer2/text/ssa/SsaStyle;

    move-result-object v2

    .line 230
    .local v2, "style":Lcom/google/android/exoplayer2/text/ssa/SsaStyle;
    if-eqz v2, :cond_56

    .line 231
    iget-object v4, v2, Lcom/google/android/exoplayer2/text/ssa/SsaStyle;->name:Ljava/lang/String;

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    .end local v2    # "style":Lcom/google/android/exoplayer2/text/ssa/SsaStyle;
    :cond_56
    goto :goto_6

    .line 235
    :cond_57
    return-object v0
.end method

.method private static parseTimecodeUs(Ljava/lang/String;)J
    .registers 10
    .param p0, "timeString"    # Ljava/lang/String;

    .line 323
    sget-object v0, Lcom/google/android/exoplayer2/text/ssa/SsaDecoder;->SSA_TIMECODE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 324
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_16

    .line 325
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v1

    .line 327
    :cond_16
    nop

    .line 328
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    const-wide/16 v3, 0x3c

    mul-long v1, v1, v3

    mul-long v1, v1, v3

    const-wide/32 v5, 0xf4240

    mul-long v1, v1, v5

    .line 329
    .local v1, "timestampUs":J
    const/4 v7, 0x2

    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    mul-long v7, v7, v3

    mul-long v7, v7, v5

    add-long/2addr v1, v7

    .line 330
    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    mul-long v3, v3, v5

    add-long/2addr v1, v3

    .line 331
    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    const-wide/16 v5, 0x2710

    mul-long v3, v3, v5

    add-long/2addr v1, v3

    .line 332
    return-wide v1
.end method

.method private static toLineAnchor(I)I
    .registers 4
    .param p0, "alignment"    # I

    .line 448
    const/high16 v0, -0x80000000

    packed-switch p0, :pswitch_data_26

    .line 464
    :pswitch_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown alignment: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SsaDecoder"

    invoke-static {v2, v1}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    return v0

    .line 460
    :pswitch_1e
    const/4 v0, 0x0

    return v0

    .line 456
    :pswitch_20
    const/4 v0, 0x1

    return v0

    .line 452
    :pswitch_22
    const/4 v0, 0x2

    return v0

    .line 462
    :pswitch_24
    return v0

    nop

    :pswitch_data_26
    .packed-switch -0x1
        :pswitch_24
        :pswitch_5
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
    .end packed-switch
.end method

.method private static toPositionAnchor(I)I
    .registers 4
    .param p0, "alignment"    # I

    .line 470
    const/high16 v0, -0x80000000

    packed-switch p0, :pswitch_data_26

    .line 486
    :pswitch_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown alignment: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SsaDecoder"

    invoke-static {v2, v1}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    return v0

    .line 482
    :pswitch_1e
    const/4 v0, 0x2

    return v0

    .line 478
    :pswitch_20
    const/4 v0, 0x1

    return v0

    .line 474
    :pswitch_22
    const/4 v0, 0x0

    return v0

    .line 484
    :pswitch_24
    return v0

    nop

    :pswitch_data_26
    .packed-switch -0x1
        :pswitch_24
        :pswitch_5
        :pswitch_22
        :pswitch_20
        :pswitch_1e
        :pswitch_22
        :pswitch_20
        :pswitch_1e
        :pswitch_22
        :pswitch_20
        :pswitch_1e
    .end packed-switch
.end method

.method private static toTextAlignment(I)Landroid/text/Layout$Alignment;
    .registers 4
    .param p0, "alignment"    # I

    .line 426
    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_28

    .line 442
    :pswitch_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown alignment: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SsaDecoder"

    invoke-static {v2, v1}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    return-object v0

    .line 438
    :pswitch_1d
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    return-object v0

    .line 434
    :pswitch_20
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    return-object v0

    .line 430
    :pswitch_23
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    return-object v0

    .line 440
    :pswitch_26
    return-object v0

    nop

    :pswitch_data_28
    .packed-switch -0x1
        :pswitch_26
        :pswitch_4
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_23
        :pswitch_20
        :pswitch_1d
    .end packed-switch
.end method


# virtual methods
.method protected decode([BIZ)Lcom/google/android/exoplayer2/text/Subtitle;
    .registers 9
    .param p1, "data"    # [B
    .param p2, "length"    # I
    .param p3, "reset"    # Z

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 126
    .local v0, "cues":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lcom/google/android/exoplayer2/text/Cue;>;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 128
    .local v1, "cueTimesUs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    new-instance v2, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {v2, p1, p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>([BI)V

    .line 129
    .local v2, "parsableData":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/text/ssa/SsaDecoder;->detectUtfCharset(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Ljava/nio/charset/Charset;

    move-result-object v3

    .line 131
    .local v3, "charset":Ljava/nio/charset/Charset;
    iget-boolean v4, p0, Lcom/google/android/exoplayer2/text/ssa/SsaDecoder;->haveInitializationData:Z

    if-nez v4, :cond_1a

    .line 132
    invoke-direct {p0, v2, v3}, Lcom/google/android/exoplayer2/text/ssa/SsaDecoder;->parseHeader(Lcom/google/android/exoplayer2/util/ParsableByteArray;Ljava/nio/charset/Charset;)V

    .line 134
    :cond_1a
    invoke-direct {p0, v2, v0, v1, v3}, Lcom/google/android/exoplayer2/text/ssa/SsaDecoder;->parseEventBody(Lcom/google/android/exoplayer2/util/ParsableByteArray;Ljava/util/List;Ljava/util/List;Ljava/nio/charset/Charset;)V

    .line 135
    new-instance v4, Lcom/google/android/exoplayer2/text/ssa/SsaSubtitle;

    invoke-direct {v4, v0, v1}, Lcom/google/android/exoplayer2/text/ssa/SsaSubtitle;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object v4
.end method
