.class final Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;
.super Ljava/lang/Object;
.source "TtmlStyle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/text/ttml/TtmlStyle$RubyType;,
        Lcom/google/android/exoplayer2/text/ttml/TtmlStyle$FontSizeUnit;,
        Lcom/google/android/exoplayer2/text/ttml/TtmlStyle$StyleFlags;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final FONT_SIZE_UNIT_EM:I = 0x2

.field public static final FONT_SIZE_UNIT_PERCENT:I = 0x3

.field public static final FONT_SIZE_UNIT_PIXEL:I = 0x1

.field private static final OFF:I = 0x0

.field private static final ON:I = 0x1

.field public static final RUBY_TYPE_BASE:I = 0x2

.field public static final RUBY_TYPE_CONTAINER:I = 0x1

.field public static final RUBY_TYPE_DELIMITER:I = 0x4

.field public static final RUBY_TYPE_TEXT:I = 0x3

.field public static final STYLE_BOLD:I = 0x1

.field public static final STYLE_BOLD_ITALIC:I = 0x3

.field public static final STYLE_ITALIC:I = 0x2

.field public static final STYLE_NORMAL:I = 0x0

.field public static final UNSPECIFIED:I = -0x1

.field public static final UNSPECIFIED_SHEAR:F = 3.4028235E38f


# instance fields
.field private backgroundColor:I

.field private bold:I

.field private fontColor:I

.field private fontFamily:Ljava/lang/String;

.field private fontSize:F

.field private fontSizeUnit:I

.field private hasBackgroundColor:Z

.field private hasFontColor:Z

.field private id:Ljava/lang/String;

.field private italic:I

.field private linethrough:I

.field private multiRowAlign:Landroid/text/Layout$Alignment;

.field private rubyPosition:I

.field private rubyType:I

.field private shearPercentage:F

.field private textAlign:Landroid/text/Layout$Alignment;

.field private textCombine:I

.field private textEmphasis:Lcom/google/android/exoplayer2/text/ttml/TextEmphasis;

.field private underline:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->linethrough:I

    .line 110
    iput v0, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->underline:I

    .line 111
    iput v0, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->bold:I

    .line 112
    iput v0, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->italic:I

    .line 113
    iput v0, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->fontSizeUnit:I

    .line 114
    iput v0, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->rubyType:I

    .line 115
    iput v0, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->rubyPosition:I

    .line 116
    iput v0, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->textCombine:I

    .line 117
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->shearPercentage:F

    .line 118
    return-void
.end method

.method private inherit(Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;Z)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;
    .registers 6
    .param p1, "ancestor"    # Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;
    .param p2, "chaining"    # Z

    .line 247
    if-eqz p1, :cond_9a

    .line 248
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->hasFontColor:Z

    if-nez v0, :cond_f

    iget-boolean v0, p1, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->hasFontColor:Z

    if-eqz v0, :cond_f

    .line 249
    iget v0, p1, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->fontColor:I

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->setFontColor(I)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    .line 251
    :cond_f
    iget v0, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->bold:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_18

    .line 252
    iget v0, p1, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->bold:I

    iput v0, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->bold:I

    .line 254
    :cond_18
    iget v0, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->italic:I

    if-ne v0, v1, :cond_20

    .line 255
    iget v0, p1, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->italic:I

    iput v0, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->italic:I

    .line 257
    :cond_20
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->fontFamily:Ljava/lang/String;

    if-nez v0, :cond_2a

    iget-object v0, p1, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->fontFamily:Ljava/lang/String;

    if-eqz v0, :cond_2a

    .line 258
    iput-object v0, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->fontFamily:Ljava/lang/String;

    .line 260
    :cond_2a
    iget v0, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->linethrough:I

    if-ne v0, v1, :cond_32

    .line 261
    iget v0, p1, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->linethrough:I

    iput v0, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->linethrough:I

    .line 263
    :cond_32
    iget v0, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->underline:I

    if-ne v0, v1, :cond_3a

    .line 264
    iget v0, p1, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->underline:I

    iput v0, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->underline:I

    .line 266
    :cond_3a
    iget v0, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->rubyPosition:I

    if-ne v0, v1, :cond_42

    .line 267
    iget v0, p1, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->rubyPosition:I

    iput v0, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->rubyPosition:I

    .line 269
    :cond_42
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->textAlign:Landroid/text/Layout$Alignment;

    if-nez v0, :cond_4c

    iget-object v0, p1, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->textAlign:Landroid/text/Layout$Alignment;

    if-eqz v0, :cond_4c

    .line 270
    iput-object v0, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->textAlign:Landroid/text/Layout$Alignment;

    .line 272
    :cond_4c
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->multiRowAlign:Landroid/text/Layout$Alignment;

    if-nez v0, :cond_56

    iget-object v0, p1, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->multiRowAlign:Landroid/text/Layout$Alignment;

    if-eqz v0, :cond_56

    .line 273
    iput-object v0, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->multiRowAlign:Landroid/text/Layout$Alignment;

    .line 275
    :cond_56
    iget v0, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->textCombine:I

    if-ne v0, v1, :cond_5e

    .line 276
    iget v0, p1, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->textCombine:I

    iput v0, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->textCombine:I

    .line 278
    :cond_5e
    iget v0, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->fontSizeUnit:I

    if-ne v0, v1, :cond_6a

    .line 279
    iget v0, p1, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->fontSizeUnit:I

    iput v0, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->fontSizeUnit:I

    .line 280
    iget v0, p1, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->fontSize:F

    iput v0, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->fontSize:F

    .line 282
    :cond_6a
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->textEmphasis:Lcom/google/android/exoplayer2/text/ttml/TextEmphasis;

    if-nez v0, :cond_72

    .line 283
    iget-object v0, p1, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->textEmphasis:Lcom/google/android/exoplayer2/text/ttml/TextEmphasis;

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->textEmphasis:Lcom/google/android/exoplayer2/text/ttml/TextEmphasis;

    .line 285
    :cond_72
    iget v0, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->shearPercentage:F

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v0, v0, v2

    if-nez v0, :cond_7f

    .line 286
    iget v0, p1, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->shearPercentage:F

    iput v0, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->shearPercentage:F

    .line 289
    :cond_7f
    if-eqz p2, :cond_8e

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->hasBackgroundColor:Z

    if-nez v0, :cond_8e

    iget-boolean v0, p1, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->hasBackgroundColor:Z

    if-eqz v0, :cond_8e

    .line 290
    iget v0, p1, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->backgroundColor:I

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->setBackgroundColor(I)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    .line 292
    :cond_8e
    if-eqz p2, :cond_9a

    iget v0, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->rubyType:I

    if-ne v0, v1, :cond_9a

    iget v0, p1, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->rubyType:I

    if-eq v0, v1, :cond_9a

    .line 293
    iput v0, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->rubyType:I

    .line 296
    :cond_9a
    return-object p0
.end method


# virtual methods
.method public chain(Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;
    .registers 3
    .param p1, "ancestor"    # Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    .line 230
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->inherit(Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;Z)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object v0

    return-object v0
.end method

.method public getBackgroundColor()I
    .registers 3

    .line 195
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->hasBackgroundColor:Z

    if-eqz v0, :cond_7

    .line 198
    iget v0, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->backgroundColor:I

    return v0

    .line 196
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Background color has not been defined."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFontColor()I
    .registers 3

    .line 177
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->hasFontColor:Z

    if-eqz v0, :cond_7

    .line 180
    iget v0, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->fontColor:I

    return v0

    .line 178
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Font color has not been defined."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFontFamily()Ljava/lang/String;
    .registers 2

    .line 167
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->fontFamily:Ljava/lang/String;

    return-object v0
.end method

.method public getFontSize()F
    .registers 2

    .line 391
    iget v0, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->fontSize:F

    return v0
.end method

.method public getFontSizeUnit()I
    .registers 2

    .line 387
    iget v0, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->fontSizeUnit:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .line 307
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getMultiRowAlign()Landroid/text/Layout$Alignment;
    .registers 2

    .line 343
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->multiRowAlign:Landroid/text/Layout$Alignment;

    return-object v0
.end method

.method public getRubyPosition()I
    .registers 2

    .line 327
    iget v0, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->rubyPosition:I

    return v0
.end method

.method public getRubyType()I
    .registers 2

    .line 317
    iget v0, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->rubyType:I

    return v0
.end method

.method public getShearPercentage()F
    .registers 2

    .line 219
    iget v0, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->shearPercentage:F

    return v0
.end method

.method public getStyle()I
    .registers 5

    .line 127
    iget v0, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->bold:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_a

    iget v2, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->italic:I

    if-ne v2, v1, :cond_a

    .line 128
    return v1

    .line 130
    :cond_a
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    iget v3, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->italic:I

    if-ne v3, v2, :cond_16

    const/4 v1, 0x2

    :cond_16
    or-int/2addr v0, v1

    return v0
.end method

.method public getTextAlign()Landroid/text/Layout$Alignment;
    .registers 2

    .line 332
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->textAlign:Landroid/text/Layout$Alignment;

    return-object v0
.end method

.method public getTextCombine()Z
    .registers 3

    .line 354
    iget v0, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->textCombine:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    return v1
.end method

.method public getTextEmphasis()Lcom/google/android/exoplayer2/text/ttml/TextEmphasis;
    .registers 2

    .line 365
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->textEmphasis:Lcom/google/android/exoplayer2/text/ttml/TextEmphasis;

    return-object v0
.end method

.method public hasBackgroundColor()Z
    .registers 2

    .line 209
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->hasBackgroundColor:Z

    return v0
.end method

.method public hasFontColor()Z
    .registers 2

    .line 191
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->hasFontColor:Z

    return v0
.end method

.method public inherit(Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;
    .registers 3
    .param p1, "ancestor"    # Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    .line 242
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->inherit(Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;Z)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object v0

    return-object v0
.end method

.method public isLinethrough()Z
    .registers 3

    .line 134
    iget v0, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->linethrough:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    return v1
.end method

.method public isUnderline()Z
    .registers 3

    .line 144
    iget v0, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->underline:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    return v1
.end method

.method public setBackgroundColor(I)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;
    .registers 3
    .param p1, "backgroundColor"    # I

    .line 203
    iput p1, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->backgroundColor:I

    .line 204
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->hasBackgroundColor:Z

    .line 205
    return-object p0
.end method

.method public setBold(Z)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;
    .registers 2
    .param p1, "bold"    # Z

    .line 155
    iput p1, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->bold:I

    .line 156
    return-object p0
.end method

.method public setFontColor(I)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;
    .registers 3
    .param p1, "fontColor"    # I

    .line 185
    iput p1, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->fontColor:I

    .line 186
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->hasFontColor:Z

    .line 187
    return-object p0
.end method

.method public setFontFamily(Ljava/lang/String;)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;
    .registers 2
    .param p1, "fontFamily"    # Ljava/lang/String;

    .line 172
    iput-object p1, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->fontFamily:Ljava/lang/String;

    .line 173
    return-object p0
.end method

.method public setFontSize(F)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;
    .registers 2
    .param p1, "fontSize"    # F

    .line 376
    iput p1, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->fontSize:F

    .line 377
    return-object p0
.end method

.method public setFontSizeUnit(I)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;
    .registers 2
    .param p1, "fontSizeUnit"    # I

    .line 382
    iput p1, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->fontSizeUnit:I

    .line 383
    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;
    .registers 2
    .param p1, "id"    # Ljava/lang/String;

    .line 301
    iput-object p1, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->id:Ljava/lang/String;

    .line 302
    return-object p0
.end method

.method public setItalic(Z)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;
    .registers 2
    .param p1, "italic"    # Z

    .line 161
    iput p1, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->italic:I

    .line 162
    return-object p0
.end method

.method public setLinethrough(Z)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;
    .registers 2
    .param p1, "linethrough"    # Z

    .line 139
    iput p1, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->linethrough:I

    .line 140
    return-object p0
.end method

.method public setMultiRowAlign(Landroid/text/Layout$Alignment;)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;
    .registers 2
    .param p1, "multiRowAlign"    # Landroid/text/Layout$Alignment;

    .line 348
    iput-object p1, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->multiRowAlign:Landroid/text/Layout$Alignment;

    .line 349
    return-object p0
.end method

.method public setRubyPosition(I)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;
    .registers 2
    .param p1, "position"    # I

    .line 322
    iput p1, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->rubyPosition:I

    .line 323
    return-object p0
.end method

.method public setRubyType(I)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;
    .registers 2
    .param p1, "rubyType"    # I

    .line 312
    iput p1, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->rubyType:I

    .line 313
    return-object p0
.end method

.method public setShearPercentage(F)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;
    .registers 2
    .param p1, "shearPercentage"    # F

    .line 214
    iput p1, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->shearPercentage:F

    .line 215
    return-object p0
.end method

.method public setTextAlign(Landroid/text/Layout$Alignment;)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;
    .registers 2
    .param p1, "textAlign"    # Landroid/text/Layout$Alignment;

    .line 337
    iput-object p1, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->textAlign:Landroid/text/Layout$Alignment;

    .line 338
    return-object p0
.end method

.method public setTextCombine(Z)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;
    .registers 2
    .param p1, "combine"    # Z

    .line 359
    iput p1, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->textCombine:I

    .line 360
    return-object p0
.end method

.method public setTextEmphasis(Lcom/google/android/exoplayer2/text/ttml/TextEmphasis;)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;
    .registers 2
    .param p1, "textEmphasis"    # Lcom/google/android/exoplayer2/text/ttml/TextEmphasis;

    .line 370
    iput-object p1, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->textEmphasis:Lcom/google/android/exoplayer2/text/ttml/TextEmphasis;

    .line 371
    return-object p0
.end method

.method public setUnderline(Z)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;
    .registers 2
    .param p1, "underline"    # Z

    .line 149
    iput p1, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->underline:I

    .line 150
    return-object p0
.end method
