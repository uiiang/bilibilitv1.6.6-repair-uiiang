.class final Lcom/google/android/exoplayer2/text/ttml/TtmlNode;
.super Ljava/lang/Object;
.source "TtmlNode.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final ANNOTATION_POSITION_AFTER:Ljava/lang/String; = "after"

.field public static final ANNOTATION_POSITION_BEFORE:Ljava/lang/String; = "before"

.field public static final ANNOTATION_POSITION_OUTSIDE:Ljava/lang/String; = "outside"

.field public static final ANONYMOUS_REGION_ID:Ljava/lang/String; = ""

.field public static final ATTR_EBUTTS_MULTI_ROW_ALIGN:Ljava/lang/String; = "multiRowAlign"

.field public static final ATTR_ID:Ljava/lang/String; = "id"

.field public static final ATTR_TTS_BACKGROUND_COLOR:Ljava/lang/String; = "backgroundColor"

.field public static final ATTR_TTS_COLOR:Ljava/lang/String; = "color"

.field public static final ATTR_TTS_DISPLAY_ALIGN:Ljava/lang/String; = "displayAlign"

.field public static final ATTR_TTS_EXTENT:Ljava/lang/String; = "extent"

.field public static final ATTR_TTS_FONT_FAMILY:Ljava/lang/String; = "fontFamily"

.field public static final ATTR_TTS_FONT_SIZE:Ljava/lang/String; = "fontSize"

.field public static final ATTR_TTS_FONT_STYLE:Ljava/lang/String; = "fontStyle"

.field public static final ATTR_TTS_FONT_WEIGHT:Ljava/lang/String; = "fontWeight"

.field public static final ATTR_TTS_ORIGIN:Ljava/lang/String; = "origin"

.field public static final ATTR_TTS_RUBY:Ljava/lang/String; = "ruby"

.field public static final ATTR_TTS_RUBY_POSITION:Ljava/lang/String; = "rubyPosition"

.field public static final ATTR_TTS_SHEAR:Ljava/lang/String; = "shear"

.field public static final ATTR_TTS_TEXT_ALIGN:Ljava/lang/String; = "textAlign"

.field public static final ATTR_TTS_TEXT_COMBINE:Ljava/lang/String; = "textCombine"

.field public static final ATTR_TTS_TEXT_DECORATION:Ljava/lang/String; = "textDecoration"

.field public static final ATTR_TTS_TEXT_EMPHASIS:Ljava/lang/String; = "textEmphasis"

.field public static final ATTR_TTS_WRITING_MODE:Ljava/lang/String; = "writingMode"

.field public static final BOLD:Ljava/lang/String; = "bold"

.field public static final CENTER:Ljava/lang/String; = "center"

.field public static final COMBINE_ALL:Ljava/lang/String; = "all"

.field public static final COMBINE_NONE:Ljava/lang/String; = "none"

.field public static final END:Ljava/lang/String; = "end"

.field public static final ITALIC:Ljava/lang/String; = "italic"

.field public static final LEFT:Ljava/lang/String; = "left"

.field public static final LINETHROUGH:Ljava/lang/String; = "linethrough"

.field public static final NO_LINETHROUGH:Ljava/lang/String; = "nolinethrough"

.field public static final NO_UNDERLINE:Ljava/lang/String; = "nounderline"

.field public static final RIGHT:Ljava/lang/String; = "right"

.field public static final RUBY_BASE:Ljava/lang/String; = "base"

.field public static final RUBY_BASE_CONTAINER:Ljava/lang/String; = "baseContainer"

.field public static final RUBY_CONTAINER:Ljava/lang/String; = "container"

.field public static final RUBY_DELIMITER:Ljava/lang/String; = "delimiter"

.field public static final RUBY_TEXT:Ljava/lang/String; = "text"

.field public static final RUBY_TEXT_CONTAINER:Ljava/lang/String; = "textContainer"

.field public static final START:Ljava/lang/String; = "start"

.field public static final TAG_BODY:Ljava/lang/String; = "body"

.field public static final TAG_BR:Ljava/lang/String; = "br"

.field public static final TAG_DATA:Ljava/lang/String; = "data"

.field public static final TAG_DIV:Ljava/lang/String; = "div"

.field public static final TAG_HEAD:Ljava/lang/String; = "head"

.field public static final TAG_IMAGE:Ljava/lang/String; = "image"

.field public static final TAG_INFORMATION:Ljava/lang/String; = "information"

.field public static final TAG_LAYOUT:Ljava/lang/String; = "layout"

.field public static final TAG_METADATA:Ljava/lang/String; = "metadata"

.field public static final TAG_P:Ljava/lang/String; = "p"

.field public static final TAG_REGION:Ljava/lang/String; = "region"

.field public static final TAG_SPAN:Ljava/lang/String; = "span"

.field public static final TAG_STYLE:Ljava/lang/String; = "style"

.field public static final TAG_STYLING:Ljava/lang/String; = "styling"

.field public static final TAG_TT:Ljava/lang/String; = "tt"

.field public static final TEXT_EMPHASIS_AUTO:Ljava/lang/String; = "auto"

.field public static final TEXT_EMPHASIS_MARK_CIRCLE:Ljava/lang/String; = "circle"

.field public static final TEXT_EMPHASIS_MARK_DOT:Ljava/lang/String; = "dot"

.field public static final TEXT_EMPHASIS_MARK_FILLED:Ljava/lang/String; = "filled"

.field public static final TEXT_EMPHASIS_MARK_OPEN:Ljava/lang/String; = "open"

.field public static final TEXT_EMPHASIS_MARK_SESAME:Ljava/lang/String; = "sesame"

.field public static final TEXT_EMPHASIS_NONE:Ljava/lang/String; = "none"

.field public static final UNDERLINE:Ljava/lang/String; = "underline"

.field public static final VERTICAL:Ljava/lang/String; = "tb"

.field public static final VERTICAL_LR:Ljava/lang/String; = "tblr"

.field public static final VERTICAL_RL:Ljava/lang/String; = "tbrl"


# instance fields
.field private children:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/ttml/TtmlNode;",
            ">;"
        }
    .end annotation
.end field

.field public final endTimeUs:J

.field public final imageId:Ljava/lang/String;

.field public final isTextNode:Z

.field private final nodeEndsByRegion:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final nodeStartsByRegion:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final parent:Lcom/google/android/exoplayer2/text/ttml/TtmlNode;

.field public final regionId:Ljava/lang/String;

.field public final startTimeUs:J

.field public final style:Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

.field private final styleIds:[Ljava/lang/String;

.field public final tag:Ljava/lang/String;

.field public final text:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;JJLcom/google/android/exoplayer2/text/ttml/TtmlStyle;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/exoplayer2/text/ttml/TtmlNode;)V
    .registers 13
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "startTimeUs"    # J
    .param p5, "endTimeUs"    # J
    .param p7, "style"    # Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;
    .param p8, "styleIds"    # [Ljava/lang/String;
    .param p9, "regionId"    # Ljava/lang/String;
    .param p10, "imageId"    # Ljava/lang/String;
    .param p11, "parent"    # Lcom/google/android/exoplayer2/text/ttml/TtmlNode;

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    iput-object p1, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlNode;->tag:Ljava/lang/String;

    .line 182
    iput-object p2, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlNode;->text:Ljava/lang/String;

    .line 183
    iput-object p10, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlNode;->imageId:Ljava/lang/String;

    .line 184
    iput-object p7, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlNode;->style:Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    .line 185
    iput-object p8, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlNode;->styleIds:[Ljava/lang/String;

    .line 186
    if-eqz p2, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlNode;->isTextNode:Z

    .line 187
    iput-wide p3, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlNode;->startTimeUs:J

    .line 188
    iput-wide p5, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlNode;->endTimeUs:J

    .line 189
    invoke-static {p9}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlNode;->regionId:Ljava/lang/String;

    .line 190
    iput-object p11, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlNode;->parent:Lcom/google/android/exoplayer2/text/ttml/TtmlNode;

    .line 191
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlNode;->nodeStartsByRegion:Ljava/util/HashMap;

    .line 192
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlNode;->nodeEndsByRegion:Ljava/util/HashMap;

    .line 193
    return-void
.end method

.method private applyStyleToOutput(Ljava/util/Map;Lcom/google/android/exoplayer2/text/Cue$Builder;III)V
    .registers 15
    .param p2, "regionOutput"    # Lcom/google/android/exoplayer2/text/Cue$Builder;
    .param p3, "start"    # I
    .param p4, "end"    # I
    .param p5, "verticalType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;",
            ">;",
            "Lcom/google/android/exoplayer2/text/Cue$Builder;",
            "III)V"
        }
    .end annotation

    .line 409
    .local p1, "globalStyles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;>;"
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlNode;->style:Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    iget-object v1, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlNode;->styleIds:[Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/google/android/exoplayer2/text/ttml/TtmlRenderUtil;->resolveStyle(Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;[Ljava/lang/String;Ljava/util/Map;)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object v0

    .line 410
    .local v0, "resolvedStyle":Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/text/Cue$Builder;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/SpannableStringBuilder;

    .line 411
    .local v1, "text":Landroid/text/SpannableStringBuilder;
    if-nez v1, :cond_19

    .line 412
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    move-object v1, v2

    .line 413
    invoke-virtual {p2, v1}, Lcom/google/android/exoplayer2/text/Cue$Builder;->setText(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/text/Cue$Builder;

    .line 415
    :cond_19
    if-eqz v0, :cond_63

    .line 416
    iget-object v6, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlNode;->parent:Lcom/google/android/exoplayer2/text/ttml/TtmlNode;

    move-object v2, v1

    move v3, p3

    move v4, p4

    move-object v5, v0

    move-object v7, p1

    move v8, p5

    invoke-static/range {v2 .. v8}, Lcom/google/android/exoplayer2/text/ttml/TtmlRenderUtil;->applyStylesToSpan(Landroid/text/Spannable;IILcom/google/android/exoplayer2/text/ttml/TtmlStyle;Lcom/google/android/exoplayer2/text/ttml/TtmlNode;Ljava/util/Map;I)V

    .line 418
    const-string v2, "p"

    iget-object v3, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlNode;->tag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_63

    .line 419
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->getShearPercentage()F

    move-result v2

    const v3, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_49

    .line 427
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->getShearPercentage()F

    move-result v2

    const/high16 v3, -0x3d4c0000    # -90.0f

    mul-float v2, v2, v3

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    invoke-virtual {p2, v2}, Lcom/google/android/exoplayer2/text/Cue$Builder;->setShearDegrees(F)Lcom/google/android/exoplayer2/text/Cue$Builder;

    .line 429
    :cond_49
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->getTextAlign()Landroid/text/Layout$Alignment;

    move-result-object v2

    if-eqz v2, :cond_56

    .line 430
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->getTextAlign()Landroid/text/Layout$Alignment;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/google/android/exoplayer2/text/Cue$Builder;->setTextAlignment(Landroid/text/Layout$Alignment;)Lcom/google/android/exoplayer2/text/Cue$Builder;

    .line 432
    :cond_56
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->getMultiRowAlign()Landroid/text/Layout$Alignment;

    move-result-object v2

    if-eqz v2, :cond_63

    .line 433
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->getMultiRowAlign()Landroid/text/Layout$Alignment;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/google/android/exoplayer2/text/Cue$Builder;->setMultiRowAlignment(Landroid/text/Layout$Alignment;)Lcom/google/android/exoplayer2/text/Cue$Builder;

    .line 437
    :cond_63
    return-void
.end method

.method public static buildNode(Ljava/lang/String;JJLcom/google/android/exoplayer2/text/ttml/TtmlStyle;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/exoplayer2/text/ttml/TtmlNode;)Lcom/google/android/exoplayer2/text/ttml/TtmlNode;
    .registers 23
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "startTimeUs"    # J
    .param p3, "endTimeUs"    # J
    .param p5, "style"    # Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;
    .param p6, "styleIds"    # [Ljava/lang/String;
    .param p7, "regionId"    # Ljava/lang/String;
    .param p8, "imageId"    # Ljava/lang/String;
    .param p9, "parent"    # Lcom/google/android/exoplayer2/text/ttml/TtmlNode;

    .line 167
    new-instance v12, Lcom/google/android/exoplayer2/text/ttml/TtmlNode;

    const/4 v2, 0x0

    move-object v0, v12

    move-object v1, p0

    move-wide v3, p1

    move-wide/from16 v5, p3

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    invoke-direct/range {v0 .. v11}, Lcom/google/android/exoplayer2/text/ttml/TtmlNode;-><init>(Ljava/lang/String;Ljava/lang/String;JJLcom/google/android/exoplayer2/text/ttml/TtmlStyle;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/exoplayer2/text/ttml/TtmlNode;)V

    return-object v12
.end method

.method public static buildTextNode(Ljava/lang/String;)Lcom/google/android/exoplayer2/text/ttml/TtmlNode;
    .registers 14
    .param p0, "text"    # Ljava/lang/String;

    .line 146
    new-instance v12, Lcom/google/android/exoplayer2/text/ttml/TtmlNode;

    const/4 v1, 0x0

    .line 148
    invoke-static {p0}, Lcom/google/android/exoplayer2/text/ttml/TtmlRenderUtil;->applyTextElementSpacePolicy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, ""

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Lcom/google/android/exoplayer2/text/ttml/TtmlNode;-><init>(Ljava/lang/String;Ljava/lang/String;JJLcom/google/android/exoplayer2/text/ttml/TtmlStyle;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/exoplayer2/text/ttml/TtmlNode;)V

    .line 146
    return-object v12
.end method

.method private static cleanUpText(Landroid/text/SpannableStringBuilder;)V
    .registers 9
    .param p0, "builder"    # Landroid/text/SpannableStringBuilder;

    .line 442
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    const-class v1, Lcom/google/android/exoplayer2/text/ttml/DeleteTextSpan;

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, v1}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/exoplayer2/text/ttml/DeleteTextSpan;

    .line 443
    .local v0, "deleteTextSpans":[Lcom/google/android/exoplayer2/text/ttml/DeleteTextSpan;
    array-length v1, v0

    const/4 v3, 0x0

    :goto_f
    if-ge v3, v1, :cond_23

    aget-object v4, v0, v3

    .line 444
    .local v4, "deleteTextSpan":Lcom/google/android/exoplayer2/text/ttml/DeleteTextSpan;
    invoke-virtual {p0, v4}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {p0, v4}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    const-string v7, ""

    invoke-virtual {p0, v5, v6, v7}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 443
    .end local v4    # "deleteTextSpan":Lcom/google/android/exoplayer2/text/ttml/DeleteTextSpan;
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 447
    :cond_23
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_24
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    const/16 v4, 0x20

    if-ge v1, v3, :cond_51

    .line 448
    invoke-virtual {p0, v1}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v3

    if-ne v3, v4, :cond_4e

    .line 449
    add-int/lit8 v3, v1, 0x1

    .line 450
    .local v3, "j":I
    :goto_34
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    if-ge v3, v5, :cond_43

    invoke-virtual {p0, v3}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v5

    if-ne v5, v4, :cond_43

    .line 451
    add-int/lit8 v3, v3, 0x1

    goto :goto_34

    .line 453
    :cond_43
    add-int/lit8 v4, v1, 0x1

    sub-int v4, v3, v4

    .line 454
    .local v4, "spacesToDelete":I
    if-lez v4, :cond_4e

    .line 455
    add-int v5, v1, v4

    invoke-virtual {p0, v1, v5}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 447
    .end local v3    # "j":I
    .end local v4    # "spacesToDelete":I
    :cond_4e
    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    .line 460
    .end local v1    # "i":I
    :cond_51
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    const/4 v3, 0x1

    if-lez v1, :cond_61

    invoke-virtual {p0, v2}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v1

    if-ne v1, v4, :cond_61

    .line 461
    invoke-virtual {p0, v2, v3}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 463
    :cond_61
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_62
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    sub-int/2addr v2, v3

    const/16 v5, 0xa

    if-ge v1, v2, :cond_83

    .line 464
    invoke-virtual {p0, v1}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v2

    if-ne v2, v5, :cond_80

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_80

    .line 465
    add-int/lit8 v2, v1, 0x1

    add-int/lit8 v5, v1, 0x2

    invoke-virtual {p0, v2, v5}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 463
    :cond_80
    add-int/lit8 v1, v1, 0x1

    goto :goto_62

    .line 469
    .end local v1    # "i":I
    :cond_83
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_a0

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-virtual {p0, v1}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v1

    if-ne v1, v4, :cond_a0

    .line 470
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 472
    :cond_a0
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_a1
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_be

    .line 473
    invoke-virtual {p0, v1}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_bb

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v2

    if-ne v2, v5, :cond_bb

    .line 474
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v1, v2}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 472
    :cond_bb
    add-int/lit8 v1, v1, 0x1

    goto :goto_a1

    .line 478
    .end local v1    # "i":I
    :cond_be
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_db

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-virtual {p0, v1}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v1

    if-ne v1, v5, :cond_db

    .line 479
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 481
    :cond_db
    return-void
.end method

.method private getEventTimes(Ljava/util/TreeSet;Z)V
    .registers 10
    .param p2, "descendsPNode"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeSet<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .line 232
    .local p1, "out":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Long;>;"
    const-string v0, "p"

    iget-object v1, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlNode;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 233
    .local v0, "isPNode":Z
    const-string v1, "div"

    iget-object v2, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlNode;->tag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 234
    .local v1, "isDivNode":Z
    if-nez p2, :cond_1a

    if-nez v0, :cond_1a

    if-eqz v1, :cond_39

    iget-object v2, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlNode;->imageId:Ljava/lang/String;

    if-eqz v2, :cond_39

    .line 235
    :cond_1a
    iget-wide v2, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlNode;->startTimeUs:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v6, v2, v4

    if-eqz v6, :cond_2c

    .line 236
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 238
    :cond_2c
    iget-wide v2, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlNode;->endTimeUs:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_39

    .line 239
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 242
    :cond_39
    iget-object v2, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlNode;->children:Ljava/util/List;

    if-nez v2, :cond_3e

    .line 243
    return-void

    .line 245
    :cond_3e
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3f
    iget-object v3, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlNode;->children:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_5d

    .line 246
    iget-object v3, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlNode;->children:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/text/ttml/TtmlNode;

    if-nez p2, :cond_56

    if-eqz v0, :cond_54

    goto :goto_56

    :cond_54
    const/4 v4, 0x0

    goto :goto_57

    :cond_56
    :goto_56
    const/4 v4, 0x1

    :goto_57
    invoke-direct {v3, p1, v4}, Lcom/google/android/exoplayer2/text/ttml/TtmlNode;->getEventTimes(Ljava/util/TreeSet;Z)V

    .line 245
    add-int/lit8 v2, v2, 0x1

    goto :goto_3f

    .line 248
    .end local v2    # "i":I
    :cond_5d
    return-void
.end method

.method private static getRegionOutputText(Ljava/lang/String;Ljava/util/Map;)Landroid/text/SpannableStringBuilder;
    .registers 4
    .param p0, "resolvedRegionId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/text/Cue$Builder;",
            ">;)",
            "Landroid/text/SpannableStringBuilder;"
        }
    .end annotation

    .line 367
    .local p1, "regionOutputs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/android/exoplayer2/text/Cue$Builder;>;"
    invoke-interface {p1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 368
    new-instance v0, Lcom/google/android/exoplayer2/text/Cue$Builder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/text/Cue$Builder;-><init>()V

    .line 369
    .local v0, "regionOutput":Lcom/google/android/exoplayer2/text/Cue$Builder;
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/text/Cue$Builder;->setText(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/text/Cue$Builder;

    .line 370
    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    .end local v0    # "regionOutput":Lcom/google/android/exoplayer2/text/Cue$Builder;
    :cond_16
    nop

    .line 373
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/text/Cue$Builder;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/text/Cue$Builder;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/SpannableStringBuilder;

    .line 372
    return-object v0
.end method

.method private traverseForImage(JLjava/lang/String;Ljava/util/List;)V
    .registers 8
    .param p1, "timeUs"    # J
    .param p3, "inheritedRegion"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 314
    .local p4, "regionImageList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    const-string v0, ""

    iget-object v1, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlNode;->regionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    move-object v0, p3

    goto :goto_e

    :cond_c
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlNode;->regionId:Ljava/lang/String;

    .line 315
    .local v0, "resolvedRegionId":Ljava/lang/String;
    :goto_e
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/text/ttml/TtmlNode;->isActive(J)Z

    move-result v1

    if-eqz v1, :cond_2d

    const-string v1, "div"

    iget-object v2, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlNode;->tag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    iget-object v1, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlNode;->imageId:Ljava/lang/String;

    if-eqz v1, :cond_2d

    .line 316
    new-instance v1, Landroid/util/Pair;

    iget-object v2, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlNode;->imageId:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 317
    return-void

    .line 319
    :cond_2d
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2e
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/ttml/TtmlNode;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_3e

    .line 320
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/text/ttml/TtmlNode;->getChild(I)Lcom/google/android/exoplayer2/text/ttml/TtmlNode;

    move-result-object v2

    invoke-direct {v2, p1, p2, v0, p4}, Lcom/google/android/exoplayer2/text/ttml/TtmlNode;->traverseForImage(JLjava/lang/String;Ljava/util/List;)V

    .line 319
    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    .line 322
    .end local v1    # "i":I
    :cond_3e
    return-void
.end method

.method private traverseForStyle(JLjava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;)V
    .registers 24
    .param p1, "timeUs"    # J
    .param p5, "inheritedRegion"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/text/ttml/TtmlRegion;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/text/Cue$Builder;",
            ">;)V"
        }
    .end annotation

    .line 382
    .local p3, "globalStyles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;>;"
    .local p4, "regionMaps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/android/exoplayer2/text/ttml/TtmlRegion;>;"
    .local p6, "regionOutputs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/android/exoplayer2/text/Cue$Builder;>;"
    move-object/from16 v6, p0

    invoke-virtual/range {p0 .. p2}, Lcom/google/android/exoplayer2/text/ttml/TtmlNode;->isActive(J)Z

    move-result v0

    if-nez v0, :cond_9

    .line 383
    return-void

    .line 385
    :cond_9
    const-string v0, ""

    iget-object v1, v6, Lcom/google/android/exoplayer2/text/ttml/TtmlNode;->regionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    move-object/from16 v0, p5

    goto :goto_18

    :cond_16
    iget-object v0, v6, Lcom/google/android/exoplayer2/text/ttml/TtmlNode;->regionId:Ljava/lang/String;

    :goto_18
    move-object v14, v0

    .line 386
    .local v14, "resolvedRegionId":Ljava/lang/String;
    iget-object v0, v6, Lcom/google/android/exoplayer2/text/ttml/TtmlNode;->nodeEndsByRegion:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_23
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/util/Map$Entry;

    .line 387
    .local v8, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Ljava/lang/String;

    .line 388
    .local v9, "regionId":Ljava/lang/String;
    iget-object v0, v6, Lcom/google/android/exoplayer2/text/ttml/TtmlNode;->nodeStartsByRegion:Ljava/util/HashMap;

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4c

    iget-object v0, v6, Lcom/google/android/exoplayer2/text/ttml/TtmlNode;->nodeStartsByRegion:Ljava/util/HashMap;

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_4d

    :cond_4c
    const/4 v0, 0x0

    :goto_4d
    move v10, v0

    .line 389
    .local v10, "start":I
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 390
    .local v11, "end":I
    if-eq v10, v11, :cond_86

    .line 391
    move-object/from16 v15, p6

    invoke-interface {v15, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/text/Cue$Builder;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/google/android/exoplayer2/text/Cue$Builder;

    .line 393
    .local v12, "regionOutput":Lcom/google/android/exoplayer2/text/Cue$Builder;
    move-object/from16 v13, p4

    invoke-interface {v13, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/text/ttml/TtmlRegion;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/text/ttml/TtmlRegion;

    iget v5, v0, Lcom/google/android/exoplayer2/text/ttml/TtmlRegion;->verticalType:I

    .line 394
    .local v5, "verticalType":I
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object v2, v12

    move v3, v10

    move v4, v11

    move/from16 v16, v5

    .end local v5    # "verticalType":I
    .local v16, "verticalType":I
    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/text/ttml/TtmlNode;->applyStyleToOutput(Ljava/util/Map;Lcom/google/android/exoplayer2/text/Cue$Builder;III)V

    goto :goto_8a

    .line 390
    .end local v12    # "regionOutput":Lcom/google/android/exoplayer2/text/Cue$Builder;
    .end local v16    # "verticalType":I
    :cond_86
    move-object/from16 v13, p4

    move-object/from16 v15, p6

    .line 396
    .end local v8    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v9    # "regionId":Ljava/lang/String;
    .end local v10    # "start":I
    .end local v11    # "end":I
    :goto_8a
    goto :goto_23

    .line 397
    :cond_8b
    move-object/from16 v13, p4

    move-object/from16 v15, p6

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_90
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/text/ttml/TtmlNode;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_ab

    .line 398
    invoke-virtual {v6, v0}, Lcom/google/android/exoplayer2/text/ttml/TtmlNode;->getChild(I)Lcom/google/android/exoplayer2/text/ttml/TtmlNode;

    move-result-object v7

    .line 399
    move-wide/from16 v8, p1

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object v12, v14

    move-object/from16 v13, p6

    invoke-direct/range {v7 .. v13}, Lcom/google/android/exoplayer2/text/ttml/TtmlNode;->traverseForStyle(JLjava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;)V

    .line 397
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v13, p4

    goto :goto_90

    .line 401
    .end local v0    # "i":I
    :cond_ab
    return-void
.end method

.method private traverseForText(JZLjava/lang/String;Ljava/util/Map;)V
    .registers 15
    .param p1, "timeUs"    # J
    .param p3, "descendsPNode"    # Z
    .param p4, "inheritedRegion"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZ",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/text/Cue$Builder;",
            ">;)V"
        }
    .end annotation

    .line 329
    .local p5, "regionOutputs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/android/exoplayer2/text/Cue$Builder;>;"
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlNode;->nodeStartsByRegion:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 330
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlNode;->nodeEndsByRegion:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 331
    const-string v0, "metadata"

    iget-object v1, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlNode;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 333
    return-void

    .line 336
    :cond_15
    const-string v0, ""

    iget-object v1, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlNode;->regionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    move-object v0, p4

    goto :goto_23

    :cond_21
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlNode;->regionId:Ljava/lang/String;

    .line 338
    .local v0, "resolvedRegionId":Ljava/lang/String;
    :goto_23
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlNode;->isTextNode:Z

    if-eqz v1, :cond_3a

    if-eqz p3, :cond_3a

    .line 339
    invoke-static {v0, p5}, Lcom/google/android/exoplayer2/text/ttml/TtmlNode;->getRegionOutputText(Ljava/lang/String;Ljava/util/Map;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlNode;->text:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto/16 :goto_f7

    .line 340
    :cond_3a
    const-string v1, "br"

    iget-object v2, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlNode;->tag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_51

    if-eqz p3, :cond_51

    .line 341
    invoke-static {v0, p5}, Lcom/google/android/exoplayer2/text/ttml/TtmlNode;->getRegionOutputText(Ljava/lang/String;Ljava/util/Map;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    goto/16 :goto_f7

    .line 342
    :cond_51
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/text/ttml/TtmlNode;->isActive(J)Z

    move-result v1

    if-eqz v1, :cond_f7

    .line 344
    invoke-interface {p5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 345
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/android/exoplayer2/text/Cue$Builder;>;"
    iget-object v3, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlNode;->nodeStartsByRegion:Ljava/util/HashMap;

    .line 346
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/exoplayer2/text/Cue$Builder;

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/text/Cue$Builder;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 345
    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/android/exoplayer2/text/Cue$Builder;>;"
    goto :goto_5f

    .line 349
    :cond_8f
    const-string v1, "p"

    iget-object v2, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlNode;->tag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 350
    .local v7, "isPNode":Z
    const/4 v1, 0x0

    move v8, v1

    .local v8, "i":I
    :goto_99
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/ttml/TtmlNode;->getChildCount()I

    move-result v1

    if-ge v8, v1, :cond_b6

    .line 351
    invoke-virtual {p0, v8}, Lcom/google/android/exoplayer2/text/ttml/TtmlNode;->getChild(I)Lcom/google/android/exoplayer2/text/ttml/TtmlNode;

    move-result-object v1

    if-nez p3, :cond_ab

    if-eqz v7, :cond_a8

    goto :goto_ab

    :cond_a8
    const/4 v2, 0x0

    const/4 v4, 0x0

    goto :goto_ad

    :cond_ab
    :goto_ab
    const/4 v2, 0x1

    const/4 v4, 0x1

    .line 352
    :goto_ad
    move-wide v2, p1

    move-object v5, v0

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer2/text/ttml/TtmlNode;->traverseForText(JZLjava/lang/String;Ljava/util/Map;)V

    .line 350
    add-int/lit8 v8, v8, 0x1

    goto :goto_99

    .line 354
    .end local v8    # "i":I
    :cond_b6
    if-eqz v7, :cond_bf

    .line 355
    invoke-static {v0, p5}, Lcom/google/android/exoplayer2/text/ttml/TtmlNode;->getRegionOutputText(Ljava/lang/String;Ljava/util/Map;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/exoplayer2/text/ttml/TtmlRenderUtil;->endParagraph(Landroid/text/SpannableStringBuilder;)V

    .line 358
    :cond_bf
    invoke-interface {p5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 359
    .restart local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/android/exoplayer2/text/Cue$Builder;>;"
    iget-object v3, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlNode;->nodeEndsByRegion:Ljava/util/HashMap;

    .line 360
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/exoplayer2/text/Cue$Builder;

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/text/Cue$Builder;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 359
    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/android/exoplayer2/text/Cue$Builder;>;"
    goto :goto_c7

    .line 363
    .end local v7    # "isPNode":Z
    :cond_f7
    :goto_f7
    return-void
.end method


# virtual methods
.method public addChild(Lcom/google/android/exoplayer2/text/ttml/TtmlNode;)V
    .registers 3
    .param p1, "child"    # Lcom/google/android/exoplayer2/text/ttml/TtmlNode;

    .line 203
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlNode;->children:Ljava/util/List;

    if-nez v0, :cond_b

    .line 204
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlNode;->children:Ljava/util/List;

    .line 206
    :cond_b
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlNode;->children:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    return-void
.end method

.method public getChild(I)Lcom/google/android/exoplayer2/text/ttml/TtmlNode;
    .registers 3
    .param p1, "index"    # I

    .line 210
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlNode;->children:Ljava/util/List;

    if-eqz v0, :cond_b

    .line 213
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/text/ttml/TtmlNode;

    return-object v0

    .line 211
    :cond_b
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public getChildCount()I
    .registers 2

    .line 217
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlNode;->children:Ljava/util/List;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_a
    return v0
.end method

.method public getCues(JLjava/util/Map;Ljava/util/Map;Ljava/util/Map;)Ljava/util/List;
    .registers 22
    .param p1, "timeUs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/text/ttml/TtmlRegion;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/Cue;",
            ">;"
        }
    .end annotation

    .line 261
    .local p3, "globalStyles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;>;"
    .local p4, "regionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/android/exoplayer2/text/ttml/TtmlRegion;>;"
    .local p5, "imageMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v13, p0

    move-object/from16 v14, p4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v15, v0

    .line 262
    .local v15, "regionImageOutputs":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    iget-object v0, v13, Lcom/google/android/exoplayer2/text/ttml/TtmlNode;->regionId:Ljava/lang/String;

    move-wide/from16 v11, p1

    invoke-direct {v13, v11, v12, v0, v15}, Lcom/google/android/exoplayer2/text/ttml/TtmlNode;->traverseForImage(JLjava/lang/String;Ljava/util/List;)V

    .line 264
    new-instance v5, Ljava/util/TreeMap;

    invoke-direct {v5}, Ljava/util/TreeMap;-><init>()V

    .line 265
    .local v5, "regionTextOutputs":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Lcom/google/android/exoplayer2/text/Cue$Builder;>;"
    const/4 v3, 0x0

    iget-object v4, v13, Lcom/google/android/exoplayer2/text/ttml/TtmlNode;->regionId:Ljava/lang/String;

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/text/ttml/TtmlNode;->traverseForText(JZLjava/lang/String;Ljava/util/Map;)V

    .line 266
    iget-object v0, v13, Lcom/google/android/exoplayer2/text/ttml/TtmlNode;->regionId:Ljava/lang/String;

    move-object/from16 v6, p0

    move-wide/from16 v7, p1

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object v11, v0

    move-object v12, v5

    invoke-direct/range {v6 .. v12}, Lcom/google/android/exoplayer2/text/ttml/TtmlNode;->traverseForStyle(JLjava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;)V

    .line 268
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 271
    .local v0, "cues":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/text/Cue;>;"
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_38
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 272
    .local v2, "regionImagePair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v4, p5

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 273
    .local v3, "encodedBitmapData":Ljava/lang/String;
    if-nez v3, :cond_51

    .line 275
    goto :goto_38

    .line 278
    :cond_51
    const/4 v6, 0x0

    invoke-static {v3, v6}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v7

    .line 279
    .local v7, "bitmapData":[B
    array-length v8, v7

    invoke-static {v7, v6, v8}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 280
    .local v8, "bitmap":Landroid/graphics/Bitmap;
    iget-object v9, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-interface {v14, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/exoplayer2/text/ttml/TtmlRegion;

    invoke-static {v9}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/exoplayer2/text/ttml/TtmlRegion;

    .line 282
    .local v9, "region":Lcom/google/android/exoplayer2/text/ttml/TtmlRegion;
    new-instance v10, Lcom/google/android/exoplayer2/text/Cue$Builder;

    invoke-direct {v10}, Lcom/google/android/exoplayer2/text/Cue$Builder;-><init>()V

    .line 284
    invoke-virtual {v10, v8}, Lcom/google/android/exoplayer2/text/Cue$Builder;->setBitmap(Landroid/graphics/Bitmap;)Lcom/google/android/exoplayer2/text/Cue$Builder;

    move-result-object v10

    iget v11, v9, Lcom/google/android/exoplayer2/text/ttml/TtmlRegion;->position:F

    .line 285
    invoke-virtual {v10, v11}, Lcom/google/android/exoplayer2/text/Cue$Builder;->setPosition(F)Lcom/google/android/exoplayer2/text/Cue$Builder;

    move-result-object v10

    .line 286
    invoke-virtual {v10, v6}, Lcom/google/android/exoplayer2/text/Cue$Builder;->setPositionAnchor(I)Lcom/google/android/exoplayer2/text/Cue$Builder;

    move-result-object v10

    iget v11, v9, Lcom/google/android/exoplayer2/text/ttml/TtmlRegion;->line:F

    .line 287
    invoke-virtual {v10, v11, v6}, Lcom/google/android/exoplayer2/text/Cue$Builder;->setLine(FI)Lcom/google/android/exoplayer2/text/Cue$Builder;

    move-result-object v6

    iget v10, v9, Lcom/google/android/exoplayer2/text/ttml/TtmlRegion;->lineAnchor:I

    .line 288
    invoke-virtual {v6, v10}, Lcom/google/android/exoplayer2/text/Cue$Builder;->setLineAnchor(I)Lcom/google/android/exoplayer2/text/Cue$Builder;

    move-result-object v6

    iget v10, v9, Lcom/google/android/exoplayer2/text/ttml/TtmlRegion;->width:F

    .line 289
    invoke-virtual {v6, v10}, Lcom/google/android/exoplayer2/text/Cue$Builder;->setSize(F)Lcom/google/android/exoplayer2/text/Cue$Builder;

    move-result-object v6

    iget v10, v9, Lcom/google/android/exoplayer2/text/ttml/TtmlRegion;->height:F

    .line 290
    invoke-virtual {v6, v10}, Lcom/google/android/exoplayer2/text/Cue$Builder;->setBitmapHeight(F)Lcom/google/android/exoplayer2/text/Cue$Builder;

    move-result-object v6

    iget v10, v9, Lcom/google/android/exoplayer2/text/ttml/TtmlRegion;->verticalType:I

    .line 291
    invoke-virtual {v6, v10}, Lcom/google/android/exoplayer2/text/Cue$Builder;->setVerticalType(I)Lcom/google/android/exoplayer2/text/Cue$Builder;

    move-result-object v6

    .line 292
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/text/Cue$Builder;->build()Lcom/google/android/exoplayer2/text/Cue;

    move-result-object v6

    .line 282
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 293
    .end local v2    # "regionImagePair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "encodedBitmapData":Ljava/lang/String;
    .end local v7    # "bitmapData":[B
    .end local v8    # "bitmap":Landroid/graphics/Bitmap;
    .end local v9    # "region":Lcom/google/android/exoplayer2/text/ttml/TtmlRegion;
    goto :goto_38

    .line 296
    :cond_a2
    move-object/from16 v4, p5

    invoke-virtual {v5}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_ac
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_105

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 297
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/android/exoplayer2/text/Cue$Builder;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v14, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/text/ttml/TtmlRegion;

    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/text/ttml/TtmlRegion;

    .line 298
    .local v3, "region":Lcom/google/android/exoplayer2/text/ttml/TtmlRegion;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/exoplayer2/text/Cue$Builder;

    .line 299
    .local v6, "regionOutput":Lcom/google/android/exoplayer2/text/Cue$Builder;
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/text/Cue$Builder;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/text/SpannableStringBuilder;

    invoke-static {v7}, Lcom/google/android/exoplayer2/text/ttml/TtmlNode;->cleanUpText(Landroid/text/SpannableStringBuilder;)V

    .line 300
    iget v7, v3, Lcom/google/android/exoplayer2/text/ttml/TtmlRegion;->line:F

    iget v8, v3, Lcom/google/android/exoplayer2/text/ttml/TtmlRegion;->lineType:I

    invoke-virtual {v6, v7, v8}, Lcom/google/android/exoplayer2/text/Cue$Builder;->setLine(FI)Lcom/google/android/exoplayer2/text/Cue$Builder;

    .line 301
    iget v7, v3, Lcom/google/android/exoplayer2/text/ttml/TtmlRegion;->lineAnchor:I

    invoke-virtual {v6, v7}, Lcom/google/android/exoplayer2/text/Cue$Builder;->setLineAnchor(I)Lcom/google/android/exoplayer2/text/Cue$Builder;

    .line 302
    iget v7, v3, Lcom/google/android/exoplayer2/text/ttml/TtmlRegion;->position:F

    invoke-virtual {v6, v7}, Lcom/google/android/exoplayer2/text/Cue$Builder;->setPosition(F)Lcom/google/android/exoplayer2/text/Cue$Builder;

    .line 303
    iget v7, v3, Lcom/google/android/exoplayer2/text/ttml/TtmlRegion;->width:F

    invoke-virtual {v6, v7}, Lcom/google/android/exoplayer2/text/Cue$Builder;->setSize(F)Lcom/google/android/exoplayer2/text/Cue$Builder;

    .line 304
    iget v7, v3, Lcom/google/android/exoplayer2/text/ttml/TtmlRegion;->textSize:F

    iget v8, v3, Lcom/google/android/exoplayer2/text/ttml/TtmlRegion;->textSizeType:I

    invoke-virtual {v6, v7, v8}, Lcom/google/android/exoplayer2/text/Cue$Builder;->setTextSize(FI)Lcom/google/android/exoplayer2/text/Cue$Builder;

    .line 305
    iget v7, v3, Lcom/google/android/exoplayer2/text/ttml/TtmlRegion;->verticalType:I

    invoke-virtual {v6, v7}, Lcom/google/android/exoplayer2/text/Cue$Builder;->setVerticalType(I)Lcom/google/android/exoplayer2/text/Cue$Builder;

    .line 306
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/text/Cue$Builder;->build()Lcom/google/android/exoplayer2/text/Cue;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 307
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/android/exoplayer2/text/Cue$Builder;>;"
    .end local v3    # "region":Lcom/google/android/exoplayer2/text/ttml/TtmlRegion;
    .end local v6    # "regionOutput":Lcom/google/android/exoplayer2/text/Cue$Builder;
    goto :goto_ac

    .line 309
    :cond_105
    return-object v0
.end method

.method public getEventTimesUs()[J
    .registers 8

    .line 221
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 222
    .local v0, "eventTimeSet":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Long;>;"
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/text/ttml/TtmlNode;->getEventTimes(Ljava/util/TreeSet;Z)V

    .line 223
    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    move-result v1

    new-array v1, v1, [J

    .line 224
    .local v1, "eventTimes":[J
    const/4 v2, 0x0

    .line 225
    .local v2, "i":I
    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_14
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 226
    .local v4, "eventTimeUs":J
    add-int/lit8 v6, v2, 0x1

    .end local v2    # "i":I
    .local v6, "i":I
    aput-wide v4, v1, v2

    .line 227
    .end local v4    # "eventTimeUs":J
    move v2, v6

    goto :goto_14

    .line 228
    .end local v6    # "i":I
    .restart local v2    # "i":I
    :cond_2a
    return-object v1
.end method

.method public getStyleIds()[Ljava/lang/String;
    .registers 2

    .line 252
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlNode;->styleIds:[Ljava/lang/String;

    return-object v0
.end method

.method public isActive(J)Z
    .registers 10
    .param p1, "timeUs"    # J

    .line 196
    iget-wide v0, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlNode;->startTimeUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-nez v4, :cond_11

    iget-wide v4, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlNode;->endTimeUs:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_2f

    :cond_11
    cmp-long v4, v0, p1

    if-gtz v4, :cond_1b

    iget-wide v4, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlNode;->endTimeUs:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_2f

    :cond_1b
    cmp-long v4, v0, v2

    if-nez v4, :cond_25

    iget-wide v2, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlNode;->endTimeUs:J

    cmp-long v4, p1, v2

    if-ltz v4, :cond_2f

    :cond_25
    cmp-long v2, v0, p1

    if-gtz v2, :cond_31

    iget-wide v0, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlNode;->endTimeUs:J

    cmp-long v2, p1, v0

    if-gez v2, :cond_31

    :cond_2f
    const/4 v0, 0x1

    goto :goto_32

    :cond_31
    const/4 v0, 0x0

    :goto_32
    return v0
.end method
