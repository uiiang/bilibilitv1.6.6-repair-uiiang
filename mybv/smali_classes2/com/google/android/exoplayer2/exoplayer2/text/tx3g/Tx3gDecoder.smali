.class public final Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;
.super Lcom/google/android/exoplayer2/text/SimpleSubtitleDecoder;
.source "Tx3gDecoder.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final DEFAULT_COLOR:I = -0x1

.field private static final DEFAULT_FONT_FACE:I = 0x0

.field private static final DEFAULT_FONT_FAMILY:Ljava/lang/String; = "sans-serif"

.field private static final DEFAULT_VERTICAL_PLACEMENT:F = 0.85f

.field private static final FONT_FACE_BOLD:I = 0x1

.field private static final FONT_FACE_ITALIC:I = 0x2

.field private static final FONT_FACE_UNDERLINE:I = 0x4

.field private static final SIZE_ATOM_HEADER:I = 0x8

.field private static final SIZE_SHORT:I = 0x2

.field private static final SIZE_STYLE_RECORD:I = 0xc

.field private static final SPAN_PRIORITY_HIGH:I = 0x0

.field private static final SPAN_PRIORITY_LOW:I = 0xff0000

.field private static final TAG:Ljava/lang/String; = "Tx3gDecoder"

.field private static final TX3G_SERIF:Ljava/lang/String; = "Serif"

.field private static final TYPE_STYL:I = 0x7374796c

.field private static final TYPE_TBOX:I = 0x74626f78


# instance fields
.field private final calculatedVideoTrackHeight:I

.field private final customVerticalPlacement:Z

.field private final defaultColorRgba:I

.field private final defaultFontFace:I

.field private final defaultFontFamily:Ljava/lang/String;

.field private final defaultVerticalPlacement:F

.field private final parsableByteArray:Lcom/google/android/exoplayer2/util/ParsableByteArray;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)V"
        }
    .end annotation

    .line 92
    .local p1, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    const-string v0, "Tx3gDecoder"

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/text/SimpleSubtitleDecoder;-><init>(Ljava/lang/String;)V

    .line 93
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->parsableByteArray:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 95
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const v1, 0x3f59999a    # 0.85f

    const-string v2, "sans-serif"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_a5

    .line 96
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    array-length v0, v0

    const/16 v5, 0x30

    if-eq v0, v5, :cond_2f

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    array-length v0, v0

    const/16 v5, 0x35

    if-ne v0, v5, :cond_a5

    .line 97
    :cond_2f
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 98
    .local v0, "initializationBytes":[B
    const/16 v5, 0x18

    aget-byte v6, v0, v5

    iput v6, p0, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->defaultFontFace:I

    .line 99
    const/16 v6, 0x1a

    aget-byte v6, v0, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v5, v6, 0x18

    const/16 v6, 0x1b

    aget-byte v6, v0, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v5, v6

    const/16 v6, 0x1c

    aget-byte v6, v0, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    const/16 v6, 0x1d

    aget-byte v6, v0, v6

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v5, v6

    iput v5, p0, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->defaultColorRgba:I

    .line 104
    array-length v5, v0

    const/16 v6, 0x2b

    sub-int/2addr v5, v6

    .line 105
    invoke-static {v0, v6, v5}, Lcom/google/android/exoplayer2/util/Util;->fromUtf8Bytes([BII)Ljava/lang/String;

    move-result-object v5

    .line 106
    .local v5, "fontFamily":Ljava/lang/String;
    const-string v6, "Serif"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_70

    const-string v2, "serif"

    :cond_70
    iput-object v2, p0, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->defaultFontFamily:Ljava/lang/String;

    .line 108
    const/16 v2, 0x19

    aget-byte v2, v0, v2

    mul-int/lit8 v2, v2, 0x14

    iput v2, p0, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->calculatedVideoTrackHeight:I

    .line 109
    aget-byte v6, v0, v3

    and-int/lit8 v6, v6, 0x20

    if-eqz v6, :cond_81

    const/4 v3, 0x1

    :cond_81
    iput-boolean v3, p0, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->customVerticalPlacement:Z

    .line 110
    if-eqz v3, :cond_a2

    .line 111
    const/16 v1, 0xa

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    const/16 v3, 0xb

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v1, v3

    .line 113
    .local v1, "requestedVerticalPlacement":I
    int-to-float v3, v1

    int-to-float v2, v2

    div-float/2addr v3, v2

    .line 114
    const/4 v2, 0x0

    const v4, 0x3f733333    # 0.95f

    invoke-static {v3, v2, v4}, Lcom/google/android/exoplayer2/util/Util;->constrainValue(FFF)F

    move-result v2

    iput v2, p0, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->defaultVerticalPlacement:F

    .line 116
    .end local v1    # "requestedVerticalPlacement":I
    goto :goto_a4

    .line 117
    :cond_a2
    iput v1, p0, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->defaultVerticalPlacement:F

    .line 119
    .end local v0    # "initializationBytes":[B
    .end local v5    # "fontFamily":Ljava/lang/String;
    :goto_a4
    goto :goto_b2

    .line 120
    :cond_a5
    iput v3, p0, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->defaultFontFace:I

    .line 121
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->defaultColorRgba:I

    .line 122
    iput-object v2, p0, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->defaultFontFamily:Ljava/lang/String;

    .line 123
    iput-boolean v3, p0, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->customVerticalPlacement:Z

    .line 124
    iput v1, p0, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->defaultVerticalPlacement:F

    .line 125
    iput v0, p0, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->calculatedVideoTrackHeight:I

    .line 127
    :goto_b2
    return-void
.end method

.method private applyStyleRecord(Lcom/google/android/exoplayer2/util/ParsableByteArray;Landroid/text/SpannableStringBuilder;)V
    .registers 13
    .param p1, "parsableByteArray"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p2, "cueText"    # Landroid/text/SpannableStringBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    .line 187
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    const/16 v1, 0xc

    const/4 v2, 0x1

    if-lt v0, v1, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    invoke-static {v0}, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->assertTrue(Z)V

    .line 188
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v0

    .line 189
    .local v0, "start":I
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v1

    .line 190
    .local v1, "end":I
    const/4 v3, 0x2

    invoke-virtual {p1, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 191
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v9

    .line 192
    .local v9, "fontFace":I
    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 193
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v2

    .line 195
    .local v2, "colorRgba":I
    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    const-string v4, ")."

    const-string v5, "Tx3gDecoder"

    if-le v1, v3, :cond_5c

    .line 196
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Truncating styl end ("

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ") to cueText.length() ("

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 197
    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 196
    invoke-static {v5, v3}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    .line 200
    :cond_5c
    if-lt v0, v1, :cond_83

    .line 201
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ignoring styl with start ("

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ") >= end ("

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    return-void

    .line 204
    :cond_83
    iget v5, p0, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->defaultFontFace:I

    const/4 v8, 0x0

    move-object v3, p2

    move v4, v9

    move v6, v0

    move v7, v1

    invoke-static/range {v3 .. v8}, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->attachFontFace(Landroid/text/SpannableStringBuilder;IIIII)V

    .line 205
    iget v5, p0, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->defaultColorRgba:I

    move v4, v2

    invoke-static/range {v3 .. v8}, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->attachColor(Landroid/text/SpannableStringBuilder;IIIII)V

    .line 206
    return-void
.end method

.method private static assertTrue(Z)V
    .registers 3
    .param p0, "checkValue"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    .line 268
    if-eqz p0, :cond_3

    .line 271
    return-void

    .line 269
    :cond_3
    new-instance v0, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;

    const-string v1, "Unexpected subtitle format."

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static attachColor(Landroid/text/SpannableStringBuilder;IIIII)V
    .registers 9
    .param p0, "cueText"    # Landroid/text/SpannableStringBuilder;
    .param p1, "colorRgba"    # I
    .param p2, "defaultColorRgba"    # I
    .param p3, "start"    # I
    .param p4, "end"    # I
    .param p5, "spanPriority"    # I

    .line 245
    if-eq p1, p2, :cond_13

    .line 246
    and-int/lit16 v0, p1, 0xff

    shl-int/lit8 v0, v0, 0x18

    ushr-int/lit8 v1, p1, 0x8

    or-int/2addr v0, v1

    .line 247
    .local v0, "colorArgb":I
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v1, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    or-int/lit8 v2, p5, 0x21

    invoke-virtual {p0, v1, p3, p4, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 253
    .end local v0    # "colorArgb":I
    :cond_13
    return-void
.end method

.method private static attachFontFace(Landroid/text/SpannableStringBuilder;IIIII)V
    .registers 13
    .param p0, "cueText"    # Landroid/text/SpannableStringBuilder;
    .param p1, "fontFace"    # I
    .param p2, "defaultFontFace"    # I
    .param p3, "start"    # I
    .param p4, "end"    # I
    .param p5, "spanPriority"    # I

    .line 215
    if-eq p1, p2, :cond_54

    .line 216
    or-int/lit8 v0, p5, 0x21

    .line 217
    .local v0, "flags":I
    and-int/lit8 v1, p1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_c

    const/4 v1, 0x1

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    .line 218
    .local v1, "isBold":Z
    :goto_d
    and-int/lit8 v4, p1, 0x2

    if-eqz v4, :cond_13

    const/4 v4, 0x1

    goto :goto_14

    :cond_13
    const/4 v4, 0x0

    .line 219
    .local v4, "isItalic":Z
    :goto_14
    if-eqz v1, :cond_2b

    .line 220
    if-eqz v4, :cond_22

    .line 221
    new-instance v5, Landroid/text/style/StyleSpan;

    const/4 v6, 0x3

    invoke-direct {v5, v6}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p0, v5, p3, p4, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_36

    .line 223
    :cond_22
    new-instance v5, Landroid/text/style/StyleSpan;

    invoke-direct {v5, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p0, v5, p3, p4, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_36

    .line 225
    :cond_2b
    if-eqz v4, :cond_36

    .line 226
    new-instance v5, Landroid/text/style/StyleSpan;

    const/4 v6, 0x2

    invoke-direct {v5, v6}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p0, v5, p3, p4, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 228
    :cond_36
    :goto_36
    and-int/lit8 v5, p1, 0x4

    if-eqz v5, :cond_3b

    goto :goto_3c

    :cond_3b
    const/4 v3, 0x0

    .line 229
    .local v3, "isUnderlined":Z
    :goto_3c
    if-eqz v3, :cond_46

    .line 230
    new-instance v5, Landroid/text/style/UnderlineSpan;

    invoke-direct {v5}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {p0, v5, p3, p4, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 232
    :cond_46
    if-nez v3, :cond_54

    if-nez v1, :cond_54

    if-nez v4, :cond_54

    .line 233
    new-instance v5, Landroid/text/style/StyleSpan;

    invoke-direct {v5, v2}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p0, v5, p3, p4, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 236
    .end local v0    # "flags":I
    .end local v1    # "isBold":Z
    .end local v3    # "isUnderlined":Z
    .end local v4    # "isItalic":Z
    :cond_54
    return-void
.end method

.method private static attachFontFamily(Landroid/text/SpannableStringBuilder;Ljava/lang/String;II)V
    .registers 6
    .param p0, "cueText"    # Landroid/text/SpannableStringBuilder;
    .param p1, "fontFamily"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 258
    const-string v0, "sans-serif"

    if-eq p1, v0, :cond_f

    .line 259
    new-instance v0, Landroid/text/style/TypefaceSpan;

    invoke-direct {v0, p1}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    const v1, 0xff0021

    invoke-virtual {p0, v0, p2, p3, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 265
    :cond_f
    return-void
.end method

.method private static readSubtitleText(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Ljava/lang/String;
    .registers 7
    .param p0, "parsableByteArray"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    .line 173
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    invoke-static {v0}, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->assertTrue(Z)V

    .line 174
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v0

    .line 175
    .local v0, "textLength":I
    if-nez v0, :cond_16

    .line 176
    const-string v1, ""

    return-object v1

    .line 178
    :cond_16
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v1

    .line 179
    .local v1, "textStartPosition":I
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUtfCharsetFromBom()Ljava/nio/charset/Charset;

    move-result-object v2

    .line 180
    .local v2, "charset":Ljava/nio/charset/Charset;
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v3

    sub-int/2addr v3, v1

    .line 181
    .local v3, "bomSize":I
    sub-int v4, v0, v3

    .line 182
    if-eqz v2, :cond_29

    move-object v5, v2

    goto :goto_2b

    :cond_29
    sget-object v5, Lcom/google/common/base/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 181
    :goto_2b
    invoke-virtual {p0, v4, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readString(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method


# virtual methods
.method protected decode([BIZ)Lcom/google/android/exoplayer2/text/Subtitle;
    .registers 14
    .param p1, "data"    # [B
    .param p2, "length"    # I
    .param p3, "reset"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    .line 132
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->parsableByteArray:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset([BI)V

    .line 133
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->parsableByteArray:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-static {v0}, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->readSubtitleText(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, "cueTextString":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 135
    sget-object v1, Lcom/google/android/exoplayer2/text/tx3g/Tx3gSubtitle;->EMPTY:Lcom/google/android/exoplayer2/text/tx3g/Tx3gSubtitle;

    return-object v1

    .line 138
    :cond_14
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 139
    .local v1, "cueText":Landroid/text/SpannableStringBuilder;
    iget v3, p0, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->defaultFontFace:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 140
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    const/high16 v7, 0xff0000

    .line 139
    move-object v2, v1

    invoke-static/range {v2 .. v7}, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->attachFontFace(Landroid/text/SpannableStringBuilder;IIIII)V

    .line 141
    iget v3, p0, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->defaultColorRgba:I

    const/4 v4, -0x1

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    invoke-static/range {v2 .. v7}, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->attachColor(Landroid/text/SpannableStringBuilder;IIIII)V

    .line 142
    iget-object v2, p0, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->defaultFontFamily:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v1, v2, v4, v3}, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->attachFontFamily(Landroid/text/SpannableStringBuilder;Ljava/lang/String;II)V

    .line 143
    iget v2, p0, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->defaultVerticalPlacement:F

    .line 145
    .local v2, "verticalPlacement":F
    :goto_3d
    iget-object v3, p0, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->parsableByteArray:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v3

    const/16 v5, 0x8

    if-lt v3, v5, :cond_b2

    .line 146
    iget-object v3, p0, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->parsableByteArray:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v3

    .line 147
    .local v3, "position":I
    iget-object v5, p0, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->parsableByteArray:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v5

    .line 148
    .local v5, "atomSize":I
    iget-object v6, p0, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->parsableByteArray:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v6

    .line 149
    .local v6, "atomType":I
    const v7, 0x7374796c

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-ne v6, v7, :cond_7f

    .line 150
    iget-object v7, p0, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->parsableByteArray:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v7

    if-lt v7, v8, :cond_69

    goto :goto_6a

    :cond_69
    const/4 v9, 0x0

    :goto_6a
    invoke-static {v9}, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->assertTrue(Z)V

    .line 151
    iget-object v7, p0, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->parsableByteArray:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v7

    .line 152
    .local v7, "styleRecordCount":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_74
    if-ge v8, v7, :cond_7e

    .line 153
    iget-object v9, p0, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->parsableByteArray:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {p0, v9, v1}, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->applyStyleRecord(Lcom/google/android/exoplayer2/util/ParsableByteArray;Landroid/text/SpannableStringBuilder;)V

    .line 152
    add-int/lit8 v8, v8, 0x1

    goto :goto_74

    .end local v7    # "styleRecordCount":I
    .end local v8    # "i":I
    :cond_7e
    goto :goto_a9

    .line 155
    :cond_7f
    const v7, 0x74626f78

    if-ne v6, v7, :cond_a9

    iget-boolean v7, p0, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->customVerticalPlacement:Z

    if-eqz v7, :cond_a9

    .line 156
    iget-object v7, p0, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->parsableByteArray:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v7

    if-lt v7, v8, :cond_91

    goto :goto_92

    :cond_91
    const/4 v9, 0x0

    :goto_92
    invoke-static {v9}, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->assertTrue(Z)V

    .line 157
    iget-object v7, p0, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->parsableByteArray:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v7

    .line 158
    .local v7, "requestedVerticalPlacement":I
    int-to-float v8, v7

    iget v9, p0, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->calculatedVideoTrackHeight:I

    int-to-float v9, v9

    div-float/2addr v8, v9

    .line 159
    .end local v2    # "verticalPlacement":F
    .local v8, "verticalPlacement":F
    const/4 v2, 0x0

    const v9, 0x3f733333    # 0.95f

    invoke-static {v8, v2, v9}, Lcom/google/android/exoplayer2/util/Util;->constrainValue(FFF)F

    move-result v2

    .end local v8    # "verticalPlacement":F
    .restart local v2    # "verticalPlacement":F
    goto :goto_aa

    .line 155
    .end local v7    # "requestedVerticalPlacement":I
    :cond_a9
    :goto_a9
    nop

    .line 161
    :goto_aa
    iget-object v7, p0, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->parsableByteArray:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    add-int v8, v3, v5

    invoke-virtual {v7, v8}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 162
    .end local v3    # "position":I
    .end local v5    # "atomSize":I
    .end local v6    # "atomType":I
    goto :goto_3d

    .line 163
    :cond_b2
    new-instance v3, Lcom/google/android/exoplayer2/text/tx3g/Tx3gSubtitle;

    new-instance v5, Lcom/google/android/exoplayer2/text/Cue$Builder;

    invoke-direct {v5}, Lcom/google/android/exoplayer2/text/Cue$Builder;-><init>()V

    .line 165
    invoke-virtual {v5, v1}, Lcom/google/android/exoplayer2/text/Cue$Builder;->setText(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/text/Cue$Builder;

    move-result-object v5

    .line 166
    invoke-virtual {v5, v2, v4}, Lcom/google/android/exoplayer2/text/Cue$Builder;->setLine(FI)Lcom/google/android/exoplayer2/text/Cue$Builder;

    move-result-object v5

    .line 167
    invoke-virtual {v5, v4}, Lcom/google/android/exoplayer2/text/Cue$Builder;->setLineAnchor(I)Lcom/google/android/exoplayer2/text/Cue$Builder;

    move-result-object v4

    .line 168
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/text/Cue$Builder;->build()Lcom/google/android/exoplayer2/text/Cue;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/android/exoplayer2/text/tx3g/Tx3gSubtitle;-><init>(Lcom/google/android/exoplayer2/text/Cue;)V

    .line 163
    return-object v3
.end method
