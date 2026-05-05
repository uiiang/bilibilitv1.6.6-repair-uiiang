.class public final Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;
.super Ljava/lang/Object;
.source "WebvttCssStyle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle$FontSizeUnit;,
        Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle$StyleFlags;
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

.field public static final STYLE_BOLD:I = 0x1

.field public static final STYLE_BOLD_ITALIC:I = 0x3

.field public static final STYLE_ITALIC:I = 0x2

.field public static final STYLE_NORMAL:I = 0x0

.field public static final UNSPECIFIED:I = -0x1


# instance fields
.field private backgroundColor:I

.field private bold:I

.field private combineUpright:Z

.field private fontColor:I

.field private fontFamily:Ljava/lang/String;

.field private fontSize:F

.field private fontSizeUnit:I

.field private hasBackgroundColor:Z

.field private hasFontColor:Z

.field private italic:I

.field private linethrough:I

.field private rubyPosition:I

.field private targetClasses:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private targetId:Ljava/lang/String;

.field private targetTag:Ljava/lang/String;

.field private targetVoice:Ljava/lang/String;

.field private underline:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->targetId:Ljava/lang/String;

    .line 116
    iput-object v0, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->targetTag:Ljava/lang/String;

    .line 117
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->targetClasses:Ljava/util/Set;

    .line 118
    iput-object v0, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->targetVoice:Ljava/lang/String;

    .line 119
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->fontFamily:Ljava/lang/String;

    .line 120
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->hasFontColor:Z

    .line 121
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->hasBackgroundColor:Z

    .line 122
    const/4 v1, -0x1

    iput v1, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->linethrough:I

    .line 123
    iput v1, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->underline:I

    .line 124
    iput v1, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->bold:I

    .line 125
    iput v1, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->italic:I

    .line 126
    iput v1, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->fontSizeUnit:I

    .line 127
    iput v1, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->rubyPosition:I

    .line 128
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->combineUpright:Z

    .line 129
    return-void
.end method

.method private static updateScoreForMatch(ILjava/lang/String;Ljava/lang/String;I)I
    .registers 6
    .param p0, "currentScore"    # I
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "actual"    # Ljava/lang/String;
    .param p3, "score"    # I

    .line 323
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_13

    const/4 v0, -0x1

    if-ne p0, v0, :cond_a

    goto :goto_13

    .line 326
    :cond_a
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    add-int v0, p0, p3

    :cond_12
    return v0

    .line 324
    :cond_13
    :goto_13
    return p0
.end method


# virtual methods
.method public getBackgroundColor()I
    .registers 3

    .line 264
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->hasBackgroundColor:Z

    if-eqz v0, :cond_7

    .line 267
    iget v0, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->backgroundColor:I

    return v0

    .line 265
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Background color not defined."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCombineUpright()Z
    .registers 2

    .line 318
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->combineUpright:Z

    return v0
.end method

.method public getFontColor()I
    .registers 3

    .line 246
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->hasFontColor:Z

    if-eqz v0, :cond_7

    .line 249
    iget v0, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->fontColor:I

    return v0

    .line 247
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Font color not defined"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFontFamily()Ljava/lang/String;
    .registers 2

    .line 236
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->fontFamily:Ljava/lang/String;

    return-object v0
.end method

.method public getFontSize()F
    .registers 2

    .line 298
    iget v0, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->fontSize:F

    return v0
.end method

.method public getFontSizeUnit()I
    .registers 2

    .line 294
    iget v0, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->fontSizeUnit:I

    return v0
.end method

.method public getRubyPosition()I
    .registers 2

    .line 308
    iget v0, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->rubyPosition:I

    return v0
.end method

.method public getSpecificityScore(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;)I
    .registers 8
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;
    .param p4, "voice"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .line 169
    .local p3, "classes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->targetId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->targetTag:Ljava/lang/String;

    .line 170
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->targetClasses:Ljava/util/Set;

    .line 171
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->targetVoice:Ljava/lang/String;

    .line 172
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 175
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0

    .line 177
    :cond_25
    const/4 v0, 0x0

    .line 178
    .local v0, "score":I
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->targetId:Ljava/lang/String;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v0, v1, p1, v2}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->updateScoreForMatch(ILjava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 179
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->targetTag:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-static {v0, v1, p2, v2}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->updateScoreForMatch(ILjava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 180
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->targetVoice:Ljava/lang/String;

    const/4 v2, 0x4

    invoke-static {v0, v1, p4, v2}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->updateScoreForMatch(ILjava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 181
    const/4 v1, -0x1

    if-eq v0, v1, :cond_52

    iget-object v1, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->targetClasses:Ljava/util/Set;

    invoke-interface {p3, v1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_48

    goto :goto_52

    .line 184
    :cond_48
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->targetClasses:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    .line 186
    return v0

    .line 182
    :cond_52
    :goto_52
    const/4 v1, 0x0

    return v1
.end method

.method public getStyle()I
    .registers 5

    .line 196
    iget v0, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->bold:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_a

    iget v2, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->italic:I

    if-ne v2, v1, :cond_a

    .line 197
    return v1

    .line 199
    :cond_a
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    iget v3, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->italic:I

    if-ne v3, v2, :cond_16

    const/4 v1, 0x2

    :cond_16
    or-int/2addr v0, v1

    return v0
.end method

.method public hasBackgroundColor()Z
    .registers 2

    .line 278
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->hasBackgroundColor:Z

    return v0
.end method

.method public hasFontColor()Z
    .registers 2

    .line 260
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->hasFontColor:Z

    return v0
.end method

.method public isLinethrough()Z
    .registers 3

    .line 203
    iget v0, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->linethrough:I

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

    .line 213
    iget v0, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->underline:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    return v1
.end method

.method public setBackgroundColor(I)Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;
    .registers 3
    .param p1, "backgroundColor"    # I

    .line 272
    iput p1, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->backgroundColor:I

    .line 273
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->hasBackgroundColor:Z

    .line 274
    return-object p0
.end method

.method public setBold(Z)Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;
    .registers 2
    .param p1, "bold"    # Z

    .line 224
    iput p1, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->bold:I

    .line 225
    return-object p0
.end method

.method public setCombineUpright(Z)Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;
    .registers 2
    .param p1, "enabled"    # Z

    .line 313
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->combineUpright:Z

    .line 314
    return-object p0
.end method

.method public setFontColor(I)Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;
    .registers 3
    .param p1, "color"    # I

    .line 254
    iput p1, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->fontColor:I

    .line 255
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->hasFontColor:Z

    .line 256
    return-object p0
.end method

.method public setFontFamily(Ljava/lang/String;)Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;
    .registers 3
    .param p1, "fontFamily"    # Ljava/lang/String;

    .line 241
    if-nez p1, :cond_4

    const/4 v0, 0x0

    goto :goto_8

    :cond_4
    invoke-static {p1}, Lcom/google/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_8
    iput-object v0, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->fontFamily:Ljava/lang/String;

    .line 242
    return-object p0
.end method

.method public setFontSize(F)Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;
    .registers 2
    .param p1, "fontSize"    # F

    .line 283
    iput p1, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->fontSize:F

    .line 284
    return-object p0
.end method

.method public setFontSizeUnit(I)Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;
    .registers 2
    .param p1, "unit"    # I

    .line 289
    iput p1, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->fontSizeUnit:I

    .line 290
    return-object p0
.end method

.method public setItalic(Z)Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;
    .registers 2
    .param p1, "italic"    # Z

    .line 230
    iput p1, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->italic:I

    .line 231
    return-object p0
.end method

.method public setLinethrough(Z)Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;
    .registers 2
    .param p1, "linethrough"    # Z

    .line 208
    iput p1, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->linethrough:I

    .line 209
    return-object p0
.end method

.method public setRubyPosition(I)Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;
    .registers 2
    .param p1, "rubyPosition"    # I

    .line 303
    iput p1, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->rubyPosition:I

    .line 304
    return-object p0
.end method

.method public setTargetClasses([Ljava/lang/String;)V
    .registers 4
    .param p1, "targetClasses"    # [Ljava/lang/String;

    .line 140
    new-instance v0, Ljava/util/HashSet;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->targetClasses:Ljava/util/Set;

    .line 141
    return-void
.end method

.method public setTargetId(Ljava/lang/String;)V
    .registers 2
    .param p1, "targetId"    # Ljava/lang/String;

    .line 132
    iput-object p1, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->targetId:Ljava/lang/String;

    .line 133
    return-void
.end method

.method public setTargetTagName(Ljava/lang/String;)V
    .registers 2
    .param p1, "targetTag"    # Ljava/lang/String;

    .line 136
    iput-object p1, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->targetTag:Ljava/lang/String;

    .line 137
    return-void
.end method

.method public setTargetVoice(Ljava/lang/String;)V
    .registers 2
    .param p1, "targetVoice"    # Ljava/lang/String;

    .line 144
    iput-object p1, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->targetVoice:Ljava/lang/String;

    .line 145
    return-void
.end method

.method public setUnderline(Z)Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;
    .registers 2
    .param p1, "underline"    # Z

    .line 218
    iput p1, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->underline:I

    .line 219
    return-object p0
.end method
