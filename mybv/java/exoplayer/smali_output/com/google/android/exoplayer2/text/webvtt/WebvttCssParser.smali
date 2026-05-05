.class final Lcom/google/android/exoplayer2/text/webvtt/WebvttCssParser;
.super Ljava/lang/Object;
.source "WebvttCssParser.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final FONT_SIZE_PATTERN:Ljava/util/regex/Pattern;

.field private static final PROPERTY_BGCOLOR:Ljava/lang/String; = "background-color"

.field private static final PROPERTY_COLOR:Ljava/lang/String; = "color"

.field private static final PROPERTY_FONT_FAMILY:Ljava/lang/String; = "font-family"

.field private static final PROPERTY_FONT_SIZE:Ljava/lang/String; = "font-size"

.field private static final PROPERTY_FONT_STYLE:Ljava/lang/String; = "font-style"

.field private static final PROPERTY_FONT_WEIGHT:Ljava/lang/String; = "font-weight"

.field private static final PROPERTY_RUBY_POSITION:Ljava/lang/String; = "ruby-position"

.field private static final PROPERTY_TEXT_COMBINE_UPRIGHT:Ljava/lang/String; = "text-combine-upright"

.field private static final PROPERTY_TEXT_DECORATION:Ljava/lang/String; = "text-decoration"

.field private static final RULE_END:Ljava/lang/String; = "}"

.field private static final RULE_START:Ljava/lang/String; = "{"

.field private static final TAG:Ljava/lang/String; = "WebvttCssParser"

.field private static final VALUE_ALL:Ljava/lang/String; = "all"

.field private static final VALUE_BOLD:Ljava/lang/String; = "bold"

.field private static final VALUE_DIGITS:Ljava/lang/String; = "digits"

.field private static final VALUE_ITALIC:Ljava/lang/String; = "italic"

.field private static final VALUE_OVER:Ljava/lang/String; = "over"

.field private static final VALUE_UNDER:Ljava/lang/String; = "under"

.field private static final VALUE_UNDERLINE:Ljava/lang/String; = "underline"

.field private static final VOICE_NAME_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private final stringBuilder:Ljava/lang/StringBuilder;

.field private final styleInput:Lcom/google/android/exoplayer2/util/ParsableByteArray;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 65
    const-string v0, "\\[voice=\"([^\"]*)\"\\]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssParser;->VOICE_NAME_PATTERN:Ljava/util/regex/Pattern;

    .line 66
    nop

    .line 67
    const-string v0, "^((?:[0-9]*\\.)?[0-9]+)(px|em|%)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssParser;->FONT_SIZE_PATTERN:Ljava/util/regex/Pattern;

    .line 66
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssParser;->styleInput:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssParser;->stringBuilder:Ljava/lang/StringBuilder;

    .line 76
    return-void
.end method

.method private applySelectorToStyle(Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;Ljava/lang/String;)V
    .registers 10
    .param p1, "style"    # Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;
    .param p2, "selector"    # Ljava/lang/String;

    .line 382
    const-string v0, ""

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 383
    return-void

    .line 385
    :cond_9
    const/16 v0, 0x5b

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 386
    .local v0, "voiceStartIndex":I
    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_35

    .line 387
    sget-object v4, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssParser;->VOICE_NAME_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 388
    .local v4, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_31

    .line 389
    invoke-virtual {v4, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p1, v5}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->setTargetVoice(Ljava/lang/String;)V

    .line 391
    :cond_31
    invoke-virtual {p2, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 393
    .end local v4    # "matcher":Ljava/util/regex/Matcher;
    :cond_35
    const-string v4, "\\."

    invoke-static {p2, v4}, Lcom/google/android/exoplayer2/util/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 394
    .local v4, "classDivision":[Ljava/lang/String;
    aget-object v5, v4, v2

    .line 395
    .local v5, "tagAndIdDivision":Ljava/lang/String;
    const/16 v6, 0x23

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 396
    .local v6, "idPrefixIndex":I
    if-eq v6, v1, :cond_56

    .line 397
    invoke-virtual {v5, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->setTargetTagName(Ljava/lang/String;)V

    .line 398
    add-int/lit8 v1, v6, 0x1

    invoke-virtual {v5, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->setTargetId(Ljava/lang/String;)V

    goto :goto_59

    .line 400
    :cond_56
    invoke-virtual {p1, v5}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->setTargetTagName(Ljava/lang/String;)V

    .line 402
    :goto_59
    array-length v1, v4

    if-le v1, v3, :cond_66

    .line 403
    array-length v1, v4

    invoke-static {v4, v3, v1}, Lcom/google/android/exoplayer2/util/Util;->nullSafeArrayCopyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->setTargetClasses([Ljava/lang/String;)V

    .line 405
    :cond_66
    return-void
.end method

.method private static maybeSkipComment(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Z
    .registers 8
    .param p0, "input"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 309
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v0

    .line 310
    .local v0, "position":I
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v1

    .line 311
    .local v1, "limit":I
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v2

    .line 312
    .local v2, "data":[B
    add-int/lit8 v3, v0, 0x2

    if-gt v3, v1, :cond_43

    add-int/lit8 v3, v0, 0x1

    .end local v0    # "position":I
    .local v3, "position":I
    aget-byte v0, v2, v0

    const/16 v4, 0x2f

    if-ne v0, v4, :cond_42

    add-int/lit8 v0, v3, 0x1

    .end local v3    # "position":I
    .restart local v0    # "position":I
    aget-byte v3, v2, v3

    const/16 v5, 0x2a

    if-ne v3, v5, :cond_43

    .line 313
    :goto_20
    add-int/lit8 v3, v0, 0x1

    if-ge v3, v1, :cond_37

    .line 314
    add-int/lit8 v3, v0, 0x1

    .end local v0    # "position":I
    .restart local v3    # "position":I
    aget-byte v0, v2, v0

    int-to-char v0, v0

    .line 315
    .local v0, "skippedChar":C
    if-ne v0, v5, :cond_35

    .line 316
    aget-byte v6, v2, v3

    int-to-char v6, v6

    if-ne v6, v4, :cond_35

    .line 317
    add-int/lit8 v3, v3, 0x1

    .line 318
    move v1, v3

    move v0, v3

    goto :goto_36

    .line 321
    .end local v0    # "skippedChar":C
    :cond_35
    move v0, v3

    .end local v3    # "position":I
    .local v0, "position":I
    :goto_36
    goto :goto_20

    .line 322
    :cond_37
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v3

    sub-int v3, v1, v3

    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 323
    const/4 v3, 0x1

    return v3

    .line 312
    .end local v0    # "position":I
    .restart local v3    # "position":I
    :cond_42
    move v0, v3

    .line 325
    .end local v3    # "position":I
    .restart local v0    # "position":I
    :cond_43
    const/4 v3, 0x0

    return v3
.end method

.method private static maybeSkipWhitespace(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Z
    .registers 2
    .param p0, "input"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 257
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v0

    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssParser;->peekCharAtPosition(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)C

    move-result v0

    sparse-switch v0, :sswitch_data_12

    .line 266
    const/4 v0, 0x0

    return v0

    .line 263
    :sswitch_d
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 264
    return v0

    :sswitch_data_12
    .sparse-switch
        0x9 -> :sswitch_d
        0xa -> :sswitch_d
        0xc -> :sswitch_d
        0xd -> :sswitch_d
        0x20 -> :sswitch_d
    .end sparse-switch
.end method

.method private static parseFontSize(Ljava/lang/String;Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;)V
    .registers 7
    .param p0, "fontSize"    # Ljava/lang/String;
    .param p1, "style"    # Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;

    .line 353
    sget-object v0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssParser;->FONT_SIZE_PATTERN:Ljava/util/regex/Pattern;

    invoke-static {p0}, Lcom/google/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 354
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_2f

    .line 355
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid font-size: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WebvttCssParser"

    invoke-static {v2, v1}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    return-void

    .line 358
    :cond_2f
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 359
    .local v2, "unit":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x1

    sparse-switch v3, :sswitch_data_8a

    :cond_42
    goto :goto_61

    :sswitch_43
    const-string v3, "px"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_42

    const/4 v3, 0x0

    goto :goto_62

    :sswitch_4d
    const-string v3, "em"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_42

    const/4 v3, 0x1

    goto :goto_62

    :sswitch_57
    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_42

    const/4 v3, 0x2

    goto :goto_62

    :goto_61
    const/4 v3, -0x1

    :goto_62
    packed-switch v3, :pswitch_data_98

    .line 372
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 367
    :pswitch_6b
    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->setFontSizeUnit(I)Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;

    .line 368
    goto :goto_78

    .line 364
    :pswitch_70
    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->setFontSizeUnit(I)Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;

    .line 365
    goto :goto_78

    .line 361
    :pswitch_74
    invoke-virtual {p1, v4}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->setFontSizeUnit(I)Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;

    .line 362
    nop

    .line 374
    :goto_78
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->setFontSize(F)Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;

    .line 375
    return-void

    :sswitch_data_8a
    .sparse-switch
        0x25 -> :sswitch_57
        0xca8 -> :sswitch_4d
        0xe08 -> :sswitch_43
    .end sparse-switch

    :pswitch_data_98
    .packed-switch 0x0
        :pswitch_74
        :pswitch_70
        :pswitch_6b
    .end packed-switch
.end method

.method private static parseIdentifier(Lcom/google/android/exoplayer2/util/ParsableByteArray;Ljava/lang/StringBuilder;)Ljava/lang/String;
    .registers 7
    .param p0, "input"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p1, "stringBuilder"    # Ljava/lang/StringBuilder;

    .line 329
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 330
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v0

    .line 331
    .local v0, "position":I
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v1

    .line 332
    .local v1, "limit":I
    const/4 v2, 0x0

    .line 333
    .local v2, "identifierEndFound":Z
    :goto_d
    if-ge v0, v1, :cond_49

    if-nez v2, :cond_49

    .line 334
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v3

    aget-byte v3, v3, v0

    int-to-char v3, v3

    .line 335
    .local v3, "c":C
    const/16 v4, 0x41

    if-lt v3, v4, :cond_20

    const/16 v4, 0x5a

    if-le v3, v4, :cond_43

    :cond_20
    const/16 v4, 0x61

    if-lt v3, v4, :cond_28

    const/16 v4, 0x7a

    if-le v3, v4, :cond_43

    :cond_28
    const/16 v4, 0x30

    if-lt v3, v4, :cond_30

    const/16 v4, 0x39

    if-le v3, v4, :cond_43

    :cond_30
    const/16 v4, 0x23

    if-eq v3, v4, :cond_43

    const/16 v4, 0x2d

    if-eq v3, v4, :cond_43

    const/16 v4, 0x2e

    if-eq v3, v4, :cond_43

    const/16 v4, 0x5f

    if-ne v3, v4, :cond_41

    goto :goto_43

    .line 345
    :cond_41
    const/4 v2, 0x1

    goto :goto_48

    .line 342
    :cond_43
    :goto_43
    add-int/lit8 v0, v0, 0x1

    .line 343
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 347
    .end local v3    # "c":C
    :goto_48
    goto :goto_d

    .line 348
    :cond_49
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v3

    sub-int v3, v0, v3

    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 349
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method static parseNextToken(Lcom/google/android/exoplayer2/util/ParsableByteArray;Ljava/lang/StringBuilder;)Ljava/lang/String;
    .registers 5
    .param p0, "input"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p1, "stringBuilder"    # Ljava/lang/StringBuilder;

    .line 244
    invoke-static {p0}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssParser;->skipWhitespaceAndComments(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V

    .line 245
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    if-nez v0, :cond_b

    .line 246
    const/4 v0, 0x0

    return-object v0

    .line 248
    :cond_b
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssParser;->parseIdentifier(Lcom/google/android/exoplayer2/util/ParsableByteArray;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    .line 249
    .local v0, "identifier":Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_18

    .line 250
    return-object v0

    .line 253
    :cond_18
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static parsePropertyValue(Lcom/google/android/exoplayer2/util/ParsableByteArray;Ljava/lang/StringBuilder;)Ljava/lang/String;
    .registers 7
    .param p0, "input"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p1, "stringBuilder"    # Ljava/lang/StringBuilder;

    .line 286
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 289
    .local v0, "expressionBuilder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 291
    .local v1, "expressionEndFound":Z
    :goto_6
    if-nez v1, :cond_2e

    .line 292
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v2

    .line 293
    .local v2, "position":I
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssParser;->parseNextToken(Lcom/google/android/exoplayer2/util/ParsableByteArray;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v3

    .line 294
    .local v3, "token":Ljava/lang/String;
    if-nez v3, :cond_14

    .line 296
    const/4 v4, 0x0

    return-object v4

    .line 298
    :cond_14
    const-string v4, "}"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_29

    const-string v4, ";"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_25

    goto :goto_29

    .line 302
    :cond_25
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 299
    :cond_29
    :goto_29
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 300
    const/4 v1, 0x1

    goto :goto_6

    .line 305
    .end local v2    # "position":I
    .end local v3    # "token":Ljava/lang/String;
    :cond_2e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static parseSelector(Lcom/google/android/exoplayer2/util/ParsableByteArray;Ljava/lang/StringBuilder;)Ljava/lang/String;
    .registers 8
    .param p0, "input"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p1, "stringBuilder"    # Ljava/lang/StringBuilder;

    .line 132
    invoke-static {p0}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssParser;->skipWhitespaceAndComments(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V

    .line 133
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x5

    if-ge v0, v2, :cond_c

    .line 134
    return-object v1

    .line 136
    :cond_c
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, "cueSelector":Ljava/lang/String;
    const-string v2, "::cue"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    .line 138
    return-object v1

    .line 140
    :cond_19
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v2

    .line 141
    .local v2, "position":I
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssParser;->parseNextToken(Lcom/google/android/exoplayer2/util/ParsableByteArray;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v3

    .line 142
    .local v3, "token":Ljava/lang/String;
    if-nez v3, :cond_24

    .line 143
    return-object v1

    .line 145
    :cond_24
    const-string v4, "{"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_32

    .line 146
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 147
    const-string v1, ""

    return-object v1

    .line 149
    :cond_32
    const/4 v4, 0x0

    .line 150
    .local v4, "target":Ljava/lang/String;
    const-string v5, "("

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3f

    .line 151
    invoke-static {p0}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssParser;->readCueTarget(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Ljava/lang/String;

    move-result-object v4

    .line 153
    :cond_3f
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssParser;->parseNextToken(Lcom/google/android/exoplayer2/util/ParsableByteArray;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v3

    .line 154
    const-string v5, ")"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4c

    .line 155
    return-object v1

    .line 157
    :cond_4c
    return-object v4
.end method

.method private static parseStyleDeclaration(Lcom/google/android/exoplayer2/util/ParsableByteArray;Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;Ljava/lang/StringBuilder;)V
    .registers 9
    .param p0, "input"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p1, "style"    # Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;
    .param p2, "stringBuilder"    # Ljava/lang/StringBuilder;

    .line 175
    invoke-static {p0}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssParser;->skipWhitespaceAndComments(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V

    .line 176
    invoke-static {p0, p2}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssParser;->parseIdentifier(Lcom/google/android/exoplayer2/util/ParsableByteArray;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    .line 177
    .local v0, "property":Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 178
    return-void

    .line 180
    :cond_10
    const-string v2, ":"

    invoke-static {p0, p2}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssParser;->parseNextToken(Lcom/google/android/exoplayer2/util/ParsableByteArray;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d

    .line 181
    return-void

    .line 183
    :cond_1d
    invoke-static {p0}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssParser;->skipWhitespaceAndComments(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V

    .line 184
    invoke-static {p0, p2}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssParser;->parsePropertyValue(Lcom/google/android/exoplayer2/util/ParsableByteArray;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v2

    .line 185
    .local v2, "value":Ljava/lang/String;
    if-eqz v2, :cond_103

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    goto/16 :goto_103

    .line 188
    :cond_2e
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v1

    .line 189
    .local v1, "position":I
    invoke-static {p0, p2}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssParser;->parseNextToken(Lcom/google/android/exoplayer2/util/ParsableByteArray;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v3

    .line 190
    .local v3, "token":Ljava/lang/String;
    const-string v4, ";"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3f

    goto :goto_4a

    .line 192
    :cond_3f
    const-string v4, "}"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_102

    .line 195
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 201
    :goto_4a
    const-string v4, "color"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5b

    .line 202
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/ColorParser;->parseCssColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p1, v4}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->setFontColor(I)Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;

    goto/16 :goto_101

    .line 203
    :cond_5b
    const-string v4, "background-color"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6c

    .line 204
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/ColorParser;->parseCssColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p1, v4}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->setBackgroundColor(I)Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;

    goto/16 :goto_101

    .line 205
    :cond_6c
    const-string v4, "ruby-position"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_90

    .line 206
    const-string v4, "over"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_82

    .line 207
    invoke-virtual {p1, v5}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->setRubyPosition(I)Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;

    goto/16 :goto_101

    .line 208
    :cond_82
    const-string v4, "under"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_101

    .line 209
    const/4 v4, 0x2

    invoke-virtual {p1, v4}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->setRubyPosition(I)Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;

    goto/16 :goto_101

    .line 211
    :cond_90
    const-string v4, "text-combine-upright"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ae

    .line 212
    const-string v4, "all"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_aa

    const-string v4, "digits"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a9

    goto :goto_aa

    :cond_a9
    const/4 v5, 0x0

    :cond_aa
    :goto_aa
    invoke-virtual {p1, v5}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->setCombineUpright(Z)Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;

    goto :goto_101

    .line 213
    :cond_ae
    const-string v4, "text-decoration"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c2

    .line 214
    const-string v4, "underline"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_101

    .line 215
    invoke-virtual {p1, v5}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->setUnderline(Z)Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;

    goto :goto_101

    .line 217
    :cond_c2
    const-string v4, "font-family"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ce

    .line 218
    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->setFontFamily(Ljava/lang/String;)Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;

    goto :goto_101

    .line 219
    :cond_ce
    const-string v4, "font-weight"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e2

    .line 220
    const-string v4, "bold"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_101

    .line 221
    invoke-virtual {p1, v5}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->setBold(Z)Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;

    goto :goto_101

    .line 223
    :cond_e2
    const-string v4, "font-style"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f6

    .line 224
    const-string v4, "italic"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_101

    .line 225
    invoke-virtual {p1, v5}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->setItalic(Z)Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;

    goto :goto_101

    .line 227
    :cond_f6
    const-string v4, "font-size"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_101

    .line 228
    invoke-static {v2, p1}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssParser;->parseFontSize(Ljava/lang/String;Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;)V

    .line 231
    :cond_101
    :goto_101
    return-void

    .line 198
    :cond_102
    return-void

    .line 186
    .end local v1    # "position":I
    .end local v3    # "token":Ljava/lang/String;
    :cond_103
    :goto_103
    return-void
.end method

.method private static peekCharAtPosition(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)C
    .registers 3
    .param p0, "input"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p1, "position"    # I

    .line 281
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v0

    aget-byte v0, v0, p1

    int-to-char v0, v0

    return v0
.end method

.method private static readCueTarget(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Ljava/lang/String;
    .registers 6
    .param p0, "input"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 162
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v0

    .line 163
    .local v0, "position":I
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v1

    .line 164
    .local v1, "limit":I
    const/4 v2, 0x0

    .line 165
    .local v2, "cueTargetEndFound":Z
    :goto_9
    if-ge v0, v1, :cond_20

    if-nez v2, :cond_20

    .line 166
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v3

    add-int/lit8 v4, v0, 0x1

    .end local v0    # "position":I
    .local v4, "position":I
    aget-byte v0, v3, v0

    int-to-char v0, v0

    .line 167
    .local v0, "c":C
    const/16 v3, 0x29

    if-ne v0, v3, :cond_1c

    const/4 v3, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v3, 0x0

    :goto_1d
    move v2, v3

    .line 168
    .end local v0    # "c":C
    move v0, v4

    goto :goto_9

    .line 169
    .end local v4    # "position":I
    .local v0, "position":I
    :cond_20
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v3

    sub-int v3, v0, v3

    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method static skipStyleBlock(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V
    .registers 3
    .param p0, "input"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 276
    nop

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 277
    .local v0, "line":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 278
    return-void
.end method

.method static skipWhitespaceAndComments(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V
    .registers 3
    .param p0, "input"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 235
    const/4 v0, 0x1

    .line 236
    .local v0, "skipping":Z
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v1

    if-lez v1, :cond_1b

    if-eqz v0, :cond_1b

    .line 237
    invoke-static {p0}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssParser;->maybeSkipWhitespace(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Z

    move-result v1

    if-nez v1, :cond_18

    invoke-static {p0}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssParser;->maybeSkipComment(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Z

    move-result v1

    if-eqz v1, :cond_16

    goto :goto_18

    :cond_16
    const/4 v1, 0x0

    goto :goto_19

    :cond_18
    :goto_18
    const/4 v1, 0x1

    :goto_19
    move v0, v1

    goto :goto_1

    .line 239
    :cond_1b
    return-void
.end method


# virtual methods
.method public parseBlock(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Ljava/util/List;
    .registers 13
    .param p1, "input"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/util/ParsableByteArray;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;",
            ">;"
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssParser;->stringBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 90
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v0

    .line 91
    .local v0, "initialInputPosition":I
    invoke-static {p1}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssParser;->skipStyleBlock(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V

    .line 92
    iget-object v2, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssParser;->styleInput:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset([BI)V

    .line 93
    iget-object v2, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssParser;->styleInput:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v2, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 95
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 97
    .local v2, "styles":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;>;"
    :goto_24
    iget-object v3, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssParser;->styleInput:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v4, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssParser;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssParser;->parseSelector(Lcom/google/android/exoplayer2/util/ParsableByteArray;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    .local v4, "selector":Ljava/lang/String;
    if-eqz v3, :cond_82

    .line 98
    iget-object v3, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssParser;->styleInput:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v5, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssParser;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-static {v3, v5}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssParser;->parseNextToken(Lcom/google/android/exoplayer2/util/ParsableByteArray;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "{"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_40

    .line 99
    return-object v2

    .line 101
    :cond_40
    new-instance v3, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;

    invoke-direct {v3}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;-><init>()V

    .line 102
    .local v3, "style":Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;
    invoke-direct {p0, v3, v4}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssParser;->applySelectorToStyle(Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;Ljava/lang/String;)V

    .line 103
    const/4 v5, 0x0

    .line 104
    .local v5, "token":Ljava/lang/String;
    const/4 v6, 0x0

    .line 105
    .local v6, "blockEndFound":Z
    :goto_4a
    const-string v7, "}"

    if-nez v6, :cond_78

    .line 106
    iget-object v8, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssParser;->styleInput:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v8}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v8

    .line 107
    .local v8, "position":I
    iget-object v9, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssParser;->styleInput:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v10, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssParser;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-static {v9, v10}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssParser;->parseNextToken(Lcom/google/android/exoplayer2/util/ParsableByteArray;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v5

    .line 108
    if-eqz v5, :cond_67

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_65

    goto :goto_67

    :cond_65
    const/4 v7, 0x0

    goto :goto_68

    :cond_67
    :goto_67
    const/4 v7, 0x1

    :goto_68
    move v6, v7

    .line 109
    if-nez v6, :cond_77

    .line 110
    iget-object v7, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssParser;->styleInput:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v7, v8}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 111
    iget-object v7, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssParser;->styleInput:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v9, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssParser;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-static {v7, v3, v9}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssParser;->parseStyleDeclaration(Lcom/google/android/exoplayer2/util/ParsableByteArray;Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;Ljava/lang/StringBuilder;)V

    .line 113
    .end local v8    # "position":I
    :cond_77
    goto :goto_4a

    .line 115
    :cond_78
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_81

    .line 116
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    .end local v3    # "style":Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;
    .end local v5    # "token":Ljava/lang/String;
    .end local v6    # "blockEndFound":Z
    :cond_81
    goto :goto_24

    .line 119
    :cond_82
    return-object v2
.end method
