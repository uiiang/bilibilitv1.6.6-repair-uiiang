.class final Lcom/google/android/exoplayer2/ui/WebViewSubtitleOutput;
.super Landroid/widget/FrameLayout;
.source "WebViewSubtitleOutput.java"

# interfaces
.implements Lcom/google/android/exoplayer2/ui/SubtitleView$Output;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final CSS_LINE_HEIGHT:F = 1.2f

.field private static final DEFAULT_BACKGROUND_CSS_CLASS:Ljava/lang/String; = "default_bg"


# instance fields
.field private bottomPaddingFraction:F

.field private final canvasSubtitleOutput:Lcom/google/android/exoplayer2/ui/CanvasSubtitleOutput;

.field private defaultTextSize:F

.field private defaultTextSizeType:I

.field private style:Lcom/google/android/exoplayer2/ui/CaptionStyleCompat;

.field private textCues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/Cue;",
            ">;"
        }
    .end annotation
.end field

.field private final webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 81
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/ui/WebViewSubtitleOutput;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 85
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 87
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/WebViewSubtitleOutput;->textCues:Ljava/util/List;

    .line 88
    sget-object v0, Lcom/google/android/exoplayer2/ui/CaptionStyleCompat;->DEFAULT:Lcom/google/android/exoplayer2/ui/CaptionStyleCompat;

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/WebViewSubtitleOutput;->style:Lcom/google/android/exoplayer2/ui/CaptionStyleCompat;

    .line 89
    const v0, 0x3d5a511a    # 0.0533f

    iput v0, p0, Lcom/google/android/exoplayer2/ui/WebViewSubtitleOutput;->defaultTextSize:F

    .line 90
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/ui/WebViewSubtitleOutput;->defaultTextSizeType:I

    .line 91
    const v1, 0x3da3d70a    # 0.08f

    iput v1, p0, Lcom/google/android/exoplayer2/ui/WebViewSubtitleOutput;->bottomPaddingFraction:F

    .line 93
    new-instance v1, Lcom/google/android/exoplayer2/ui/CanvasSubtitleOutput;

    invoke-direct {v1, p1, p2}, Lcom/google/android/exoplayer2/ui/CanvasSubtitleOutput;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Lcom/google/android/exoplayer2/ui/WebViewSubtitleOutput;->canvasSubtitleOutput:Lcom/google/android/exoplayer2/ui/CanvasSubtitleOutput;

    .line 94
    new-instance v2, Lcom/google/android/exoplayer2/ui/WebViewSubtitleOutput$1;

    invoke-direct {v2, p0, p1, p2}, Lcom/google/android/exoplayer2/ui/WebViewSubtitleOutput$1;-><init>(Lcom/google/android/exoplayer2/ui/WebViewSubtitleOutput;Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v2, p0, Lcom/google/android/exoplayer2/ui/WebViewSubtitleOutput;->webView:Landroid/webkit/WebView;

    .line 110
    invoke-virtual {v2, v0}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 112
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/ui/WebViewSubtitleOutput;->addView(Landroid/view/View;)V

    .line 113
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/ui/WebViewSubtitleOutput;->addView(Landroid/view/View;)V

    .line 114
    return-void
.end method

.method private static anchorTypeToTranslatePercent(I)I
    .registers 2
    .param p0, "anchorType"    # I

    .line 432
    packed-switch p0, :pswitch_data_c

    .line 440
    const/4 v0, 0x0

    return v0

    .line 434
    :pswitch_5
    const/16 v0, -0x64

    return v0

    .line 436
    :pswitch_8
    const/16 v0, -0x32

    return v0

    nop

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method private static convertAlignmentToCss(Landroid/text/Layout$Alignment;)Ljava/lang/String;
    .registers 4
    .param p0, "alignment"    # Landroid/text/Layout$Alignment;

    .line 409
    const-string v0, "center"

    if-nez p0, :cond_5

    .line 410
    return-object v0

    .line 412
    :cond_5
    sget-object v1, Lcom/google/android/exoplayer2/ui/WebViewSubtitleOutput$2;->$SwitchMap$android$text$Layout$Alignment:[I

    invoke-virtual {p0}, Landroid/text/Layout$Alignment;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_18

    .line 419
    return-object v0

    .line 416
    :pswitch_11
    const-string v0, "end"

    return-object v0

    .line 414
    :pswitch_14
    const-string v0, "start"

    return-object v0

    nop

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_14
        :pswitch_11
    .end packed-switch
.end method

.method private static convertCaptionStyleToCssTextShadow(Lcom/google/android/exoplayer2/ui/CaptionStyleCompat;)Ljava/lang/String;
    .registers 4
    .param p0, "style"    # Lcom/google/android/exoplayer2/ui/CaptionStyleCompat;

    .line 375
    iget v0, p0, Lcom/google/android/exoplayer2/ui/CaptionStyleCompat;->edgeType:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_4e

    .line 392
    const-string v0, "unset"

    return-object v0

    .line 377
    :pswitch_a
    new-array v0, v2, [Ljava/lang/Object;

    iget v2, p0, Lcom/google/android/exoplayer2/ui/CaptionStyleCompat;->edgeColor:I

    .line 378
    invoke-static {v2}, Lcom/google/android/exoplayer2/ui/HtmlUtils;->toCssRgba(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 377
    const-string v1, "-0.05em -0.05em 0.15em %s"

    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 388
    :pswitch_1b
    new-array v0, v2, [Ljava/lang/Object;

    iget v2, p0, Lcom/google/android/exoplayer2/ui/CaptionStyleCompat;->edgeColor:I

    .line 389
    invoke-static {v2}, Lcom/google/android/exoplayer2/ui/HtmlUtils;->toCssRgba(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 388
    const-string v1, "0.06em 0.08em 0.15em %s"

    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 380
    :pswitch_2c
    new-array v0, v2, [Ljava/lang/Object;

    iget v2, p0, Lcom/google/android/exoplayer2/ui/CaptionStyleCompat;->edgeColor:I

    invoke-static {v2}, Lcom/google/android/exoplayer2/ui/HtmlUtils;->toCssRgba(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "0.1em 0.12em 0.15em %s"

    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 384
    :pswitch_3d
    new-array v0, v2, [Ljava/lang/Object;

    iget v2, p0, Lcom/google/android/exoplayer2/ui/CaptionStyleCompat;->edgeColor:I

    .line 386
    invoke-static {v2}, Lcom/google/android/exoplayer2/ui/HtmlUtils;->toCssRgba(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 384
    const-string v1, "1px 1px 0 %1$s, 1px -1px 0 %1$s, -1px 1px 0 %1$s, -1px -1px 0 %1$s"

    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_4e
    .packed-switch 0x1
        :pswitch_3d
        :pswitch_2c
        :pswitch_1b
        :pswitch_a
    .end packed-switch
.end method

.method private convertTextSizeToCss(IF)Ljava/lang/String;
    .registers 8
    .param p1, "type"    # I
    .param p2, "size"    # F

    .line 364
    nop

    .line 366
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/WebViewSubtitleOutput;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/WebViewSubtitleOutput;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/WebViewSubtitleOutput;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/WebViewSubtitleOutput;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    .line 365
    invoke-static {p1, p2, v0, v1}, Lcom/google/android/exoplayer2/ui/SubtitleViewUtils;->resolveTextSize(IFII)F

    move-result v0

    .line 367
    .local v0, "sizePx":F
    const v1, -0x800001

    cmpl-float v1, v0, v1

    if-nez v1, :cond_21

    .line 368
    const-string v1, "unset"

    return-object v1

    .line 370
    :cond_21
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/WebViewSubtitleOutput;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    div-float v1, v0, v1

    .line 371
    .local v1, "sizeDp":F
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "%.2fpx"

    invoke-static {v3, v2}, Lcom/google/android/exoplayer2/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static convertVerticalTypeToCss(I)Ljava/lang/String;
    .registers 2
    .param p0, "verticalType"    # I

    .line 397
    packed-switch p0, :pswitch_data_c

    .line 404
    const-string v0, "horizontal-tb"

    return-object v0

    .line 399
    :pswitch_6
    const-string v0, "vertical-lr"

    return-object v0

    .line 401
    :pswitch_9
    const-string v0, "vertical-rl"

    return-object v0

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method private static getBlockShearTransformFunction(Lcom/google/android/exoplayer2/text/Cue;)Ljava/lang/String;
    .registers 5
    .param p0, "cue"    # Lcom/google/android/exoplayer2/text/Cue;

    .line 344
    iget v0, p0, Lcom/google/android/exoplayer2/text/Cue;->shearDegrees:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2c

    .line 346
    iget v0, p0, Lcom/google/android/exoplayer2/text/Cue;->verticalType:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_15

    iget v0, p0, Lcom/google/android/exoplayer2/text/Cue;->verticalType:I

    if-ne v0, v1, :cond_12

    goto :goto_15

    .line 348
    :cond_12
    const-string v0, "skewX"

    goto :goto_17

    .line 347
    :cond_15
    :goto_15
    const-string v0, "skewY"

    .line 348
    :goto_17
    nop

    .line 349
    .local v0, "direction":Ljava/lang/String;
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    iget v3, p0, Lcom/google/android/exoplayer2/text/Cue;->shearDegrees:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v1, "%s(%.2fdeg)"

    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 351
    .end local v0    # "direction":Ljava/lang/String;
    :cond_2c
    const-string v0, ""

    return-object v0
.end method

.method private updateWebView()V
    .registers 32

    .line 172
    move-object/from16 v0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 173
    .local v1, "html":Ljava/lang/StringBuilder;
    const/4 v2, 0x4

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, v0, Lcom/google/android/exoplayer2/ui/WebViewSubtitleOutput;->style:Lcom/google/android/exoplayer2/ui/CaptionStyleCompat;

    iget v4, v4, Lcom/google/android/exoplayer2/ui/CaptionStyleCompat;->foregroundColor:I

    .line 187
    invoke-static {v4}, Lcom/google/android/exoplayer2/ui/HtmlUtils;->toCssRgba(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    iget v4, v0, Lcom/google/android/exoplayer2/ui/WebViewSubtitleOutput;->defaultTextSizeType:I

    iget v6, v0, Lcom/google/android/exoplayer2/ui/WebViewSubtitleOutput;->defaultTextSize:F

    .line 188
    invoke-direct {v0, v4, v6}, Lcom/google/android/exoplayer2/ui/WebViewSubtitleOutput;->convertTextSizeToCss(IF)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v3, v6

    .line 189
    const v4, 0x3f99999a    # 1.2f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    const/4 v8, 0x2

    aput-object v7, v3, v8

    iget-object v7, v0, Lcom/google/android/exoplayer2/ui/WebViewSubtitleOutput;->style:Lcom/google/android/exoplayer2/ui/CaptionStyleCompat;

    .line 190
    invoke-static {v7}, Lcom/google/android/exoplayer2/ui/WebViewSubtitleOutput;->convertCaptionStyleToCssTextShadow(Lcom/google/android/exoplayer2/ui/CaptionStyleCompat;)Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x3

    aput-object v7, v3, v9

    .line 174
    const-string v7, "<body><div style=\'-webkit-user-select:none;position:fixed;top:0;bottom:0;left:0;right:0;color:%s;font-size:%s;line-height:%.2f;text-shadow:%s;\'>"

    invoke-static {v7, v3}, Lcom/google/android/exoplayer2/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 173
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 193
    .local v3, "cssRuleSets":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    nop

    .line 194
    const-string v7, "default_bg"

    invoke-static {v7}, Lcom/google/android/exoplayer2/ui/HtmlUtils;->cssAllClassDescendantsSelector(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    new-array v11, v6, [Ljava/lang/Object;

    iget-object v12, v0, Lcom/google/android/exoplayer2/ui/WebViewSubtitleOutput;->style:Lcom/google/android/exoplayer2/ui/CaptionStyleCompat;

    iget v12, v12, Lcom/google/android/exoplayer2/ui/CaptionStyleCompat;->backgroundColor:I

    .line 195
    invoke-static {v12}, Lcom/google/android/exoplayer2/ui/HtmlUtils;->toCssRgba(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v5

    const-string v12, "background-color:%s;"

    invoke-static {v12, v11}, Lcom/google/android/exoplayer2/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 193
    invoke-interface {v3, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_5e
    iget-object v11, v0, Lcom/google/android/exoplayer2/ui/WebViewSubtitleOutput;->textCues:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_29a

    .line 197
    iget-object v11, v0, Lcom/google/android/exoplayer2/ui/WebViewSubtitleOutput;->textCues:Ljava/util/List;

    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/exoplayer2/text/Cue;

    .line 198
    .local v11, "cue":Lcom/google/android/exoplayer2/text/Cue;
    iget v12, v11, Lcom/google/android/exoplayer2/text/Cue;->position:F

    const v13, -0x800001

    const/high16 v14, 0x42c80000    # 100.0f

    cmpl-float v12, v12, v13

    if-eqz v12, :cond_7e

    iget v12, v11, Lcom/google/android/exoplayer2/text/Cue;->position:F

    mul-float v12, v12, v14

    goto :goto_80

    :cond_7e
    const/high16 v12, 0x42480000    # 50.0f

    .line 199
    .local v12, "positionPercent":F
    :goto_80
    iget v15, v11, Lcom/google/android/exoplayer2/text/Cue;->positionAnchor:I

    invoke-static {v15}, Lcom/google/android/exoplayer2/ui/WebViewSubtitleOutput;->anchorTypeToTranslatePercent(I)I

    move-result v15

    .line 202
    .local v15, "positionAnchorTranslatePercent":I
    const/16 v16, 0x0

    .line 203
    .local v16, "lineMeasuredFromEnd":Z
    const/16 v17, 0x0

    .line 204
    .local v17, "lineAnchorTranslatePercent":I
    iget v2, v11, Lcom/google/android/exoplayer2/text/Cue;->line:F

    const/high16 v19, 0x3f800000    # 1.0f

    const-string v9, "%.2f%%"

    cmpl-float v2, v2, v13

    if-eqz v2, :cond_ef

    .line 205
    iget v2, v11, Lcom/google/android/exoplayer2/text/Cue;->lineType:I

    packed-switch v2, :pswitch_data_300

    .line 217
    new-array v2, v6, [Ljava/lang/Object;

    iget v8, v11, Lcom/google/android/exoplayer2/text/Cue;->line:F

    mul-float v8, v8, v14

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v2, v5

    invoke-static {v9, v2}, Lcom/google/android/exoplayer2/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 220
    .local v2, "lineValue":Ljava/lang/String;
    iget v8, v11, Lcom/google/android/exoplayer2/text/Cue;->verticalType:I

    if-ne v8, v6, :cond_e6

    .line 221
    iget v8, v11, Lcom/google/android/exoplayer2/text/Cue;->lineAnchor:I

    invoke-static {v8}, Lcom/google/android/exoplayer2/ui/WebViewSubtitleOutput;->anchorTypeToTranslatePercent(I)I

    move-result v8

    neg-int v8, v8

    goto :goto_ec

    .line 207
    .end local v2    # "lineValue":Ljava/lang/String;
    :pswitch_b5
    iget v2, v11, Lcom/google/android/exoplayer2/text/Cue;->line:F

    const/16 v21, 0x0

    const-string v8, "%.2fem"

    cmpl-float v2, v2, v21

    if-ltz v2, :cond_d0

    .line 208
    new-array v2, v6, [Ljava/lang/Object;

    iget v13, v11, Lcom/google/android/exoplayer2/text/Cue;->line:F

    mul-float v13, v13, v4

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    aput-object v13, v2, v5

    invoke-static {v8, v2}, Lcom/google/android/exoplayer2/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "lineValue":Ljava/lang/String;
    goto :goto_103

    .line 210
    .end local v2    # "lineValue":Ljava/lang/String;
    :cond_d0
    new-array v2, v6, [Ljava/lang/Object;

    iget v13, v11, Lcom/google/android/exoplayer2/text/Cue;->line:F

    neg-float v13, v13

    sub-float v13, v13, v19

    mul-float v13, v13, v4

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    aput-object v13, v2, v5

    invoke-static {v8, v2}, Lcom/google/android/exoplayer2/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 211
    .restart local v2    # "lineValue":Ljava/lang/String;
    const/16 v16, 0x1

    .line 213
    goto :goto_103

    .line 222
    :cond_e6
    iget v8, v11, Lcom/google/android/exoplayer2/text/Cue;->lineAnchor:I

    invoke-static {v8}, Lcom/google/android/exoplayer2/ui/WebViewSubtitleOutput;->anchorTypeToTranslatePercent(I)I

    move-result v8

    :goto_ec
    move/from16 v17, v8

    goto :goto_103

    .line 225
    .end local v2    # "lineValue":Ljava/lang/String;
    :cond_ef
    new-array v2, v6, [Ljava/lang/Object;

    iget v8, v0, Lcom/google/android/exoplayer2/ui/WebViewSubtitleOutput;->bottomPaddingFraction:F

    sub-float v19, v19, v8

    mul-float v19, v19, v14

    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v2, v5

    invoke-static {v9, v2}, Lcom/google/android/exoplayer2/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 226
    .restart local v2    # "lineValue":Ljava/lang/String;
    const/16 v17, -0x64

    .line 230
    :goto_103
    iget v8, v11, Lcom/google/android/exoplayer2/text/Cue;->size:F

    const v13, -0x800001

    cmpl-float v8, v8, v13

    if-eqz v8, :cond_11d

    .line 231
    new-array v8, v6, [Ljava/lang/Object;

    iget v13, v11, Lcom/google/android/exoplayer2/text/Cue;->size:F

    mul-float v13, v13, v14

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    aput-object v13, v8, v5

    invoke-static {v9, v8}, Lcom/google/android/exoplayer2/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    goto :goto_11f

    .line 232
    :cond_11d
    const-string v8, "fit-content"

    :goto_11f
    nop

    .line 234
    .local v8, "size":Ljava/lang/String;
    iget-object v9, v11, Lcom/google/android/exoplayer2/text/Cue;->textAlignment:Landroid/text/Layout$Alignment;

    invoke-static {v9}, Lcom/google/android/exoplayer2/ui/WebViewSubtitleOutput;->convertAlignmentToCss(Landroid/text/Layout$Alignment;)Ljava/lang/String;

    move-result-object v9

    .line 235
    .local v9, "textAlign":Ljava/lang/String;
    iget v13, v11, Lcom/google/android/exoplayer2/text/Cue;->verticalType:I

    invoke-static {v13}, Lcom/google/android/exoplayer2/ui/WebViewSubtitleOutput;->convertVerticalTypeToCss(I)Ljava/lang/String;

    move-result-object v13

    .line 236
    .local v13, "writingMode":Ljava/lang/String;
    iget v14, v11, Lcom/google/android/exoplayer2/text/Cue;->textSizeType:I

    iget v4, v11, Lcom/google/android/exoplayer2/text/Cue;->textSize:F

    invoke-direct {v0, v14, v4}, Lcom/google/android/exoplayer2/ui/WebViewSubtitleOutput;->convertTextSizeToCss(IF)Ljava/lang/String;

    move-result-object v4

    .line 238
    .local v4, "cueTextSizeCssPx":Ljava/lang/String;
    iget-boolean v14, v11, Lcom/google/android/exoplayer2/text/Cue;->windowColorSet:Z

    if-eqz v14, :cond_13b

    iget v14, v11, Lcom/google/android/exoplayer2/text/Cue;->windowColor:I

    goto :goto_13f

    :cond_13b
    iget-object v14, v0, Lcom/google/android/exoplayer2/ui/WebViewSubtitleOutput;->style:Lcom/google/android/exoplayer2/ui/CaptionStyleCompat;

    iget v14, v14, Lcom/google/android/exoplayer2/ui/CaptionStyleCompat;->windowColor:I

    :goto_13f
    invoke-static {v14}, Lcom/google/android/exoplayer2/ui/HtmlUtils;->toCssRgba(I)Ljava/lang/String;

    move-result-object v14

    .line 242
    .local v14, "windowCssColor":Ljava/lang/String;
    iget v5, v11, Lcom/google/android/exoplayer2/text/Cue;->verticalType:I

    const-string v23, "left"

    const-string v24, "right"

    packed-switch v5, :pswitch_data_306

    .line 253
    if-eqz v16, :cond_164

    const-string v5, "bottom"

    goto :goto_166

    .line 244
    :pswitch_151
    if-eqz v16, :cond_155

    move-object/from16 v23, v24

    :cond_155
    move-object/from16 v5, v23

    .line 245
    .local v5, "lineProperty":Ljava/lang/String;
    const-string v23, "top"

    .line 246
    .local v23, "positionProperty":Ljava/lang/String;
    goto :goto_168

    .line 248
    .end local v5    # "lineProperty":Ljava/lang/String;
    .end local v23    # "positionProperty":Ljava/lang/String;
    :pswitch_15a
    if-eqz v16, :cond_15d

    goto :goto_15f

    :cond_15d
    move-object/from16 v23, v24

    :goto_15f
    move-object/from16 v5, v23

    .line 249
    .restart local v5    # "lineProperty":Ljava/lang/String;
    const-string v23, "top"

    .line 250
    .restart local v23    # "positionProperty":Ljava/lang/String;
    goto :goto_168

    .line 253
    .end local v5    # "lineProperty":Ljava/lang/String;
    .end local v23    # "positionProperty":Ljava/lang/String;
    :cond_164
    const-string v5, "top"

    .line 254
    .restart local v5    # "lineProperty":Ljava/lang/String;
    :goto_166
    const-string v23, "left"

    .line 260
    .restart local v23    # "positionProperty":Ljava/lang/String;
    :goto_168
    iget v6, v11, Lcom/google/android/exoplayer2/text/Cue;->verticalType:I

    const/4 v0, 0x2

    if-eq v6, v0, :cond_179

    iget v0, v11, Lcom/google/android/exoplayer2/text/Cue;->verticalType:I

    const/4 v6, 0x1

    if-ne v0, v6, :cond_173

    goto :goto_179

    .line 265
    :cond_173
    const-string v0, "width"

    .line 266
    .local v0, "sizeProperty":Ljava/lang/String;
    move v6, v15

    .line 267
    .local v6, "horizontalTranslatePercent":I
    move/from16 v25, v17

    .local v25, "verticalTranslatePercent":I
    goto :goto_17f

    .line 261
    .end local v0    # "sizeProperty":Ljava/lang/String;
    .end local v6    # "horizontalTranslatePercent":I
    .end local v25    # "verticalTranslatePercent":I
    :cond_179
    :goto_179
    const-string v0, "height"

    .line 262
    .restart local v0    # "sizeProperty":Ljava/lang/String;
    move/from16 v6, v17

    .line 263
    .restart local v6    # "horizontalTranslatePercent":I
    move/from16 v25, v15

    .line 270
    .restart local v25    # "verticalTranslatePercent":I
    :goto_17f
    move/from16 v26, v15

    .end local v15    # "positionAnchorTranslatePercent":I
    .local v26, "positionAnchorTranslatePercent":I
    iget-object v15, v11, Lcom/google/android/exoplayer2/text/Cue;->text:Ljava/lang/CharSequence;

    .line 272
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/ui/WebViewSubtitleOutput;->getContext()Landroid/content/Context;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    move-object/from16 v28, v7

    invoke-virtual/range {v27 .. v27}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->density:F

    .line 271
    invoke-static {v15, v7}, Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter;->convert(Ljava/lang/CharSequence;F)Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$HtmlAndCss;

    move-result-object v7

    .line 273
    .local v7, "htmlAndCss":Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$HtmlAndCss;
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_19f
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_1de

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    move-object/from16 v29, v15

    move-object/from16 v15, v27

    check-cast v15, Ljava/lang/String;

    .line 275
    .local v15, "cssSelector":Ljava/lang/String;
    nop

    .line 276
    invoke-interface {v3, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    move-object/from16 v30, v7

    .end local v7    # "htmlAndCss":Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$HtmlAndCss;
    .local v30, "htmlAndCss":Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$HtmlAndCss;
    move-object/from16 v7, v27

    check-cast v7, Ljava/lang/String;

    invoke-interface {v3, v15, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 277
    .local v7, "previousCssDeclarationBlock":Ljava/lang/String;
    if-eqz v7, :cond_1d1

    .line 279
    move-object/from16 v27, v1

    .end local v1    # "html":Ljava/lang/StringBuilder;
    .local v27, "html":Ljava/lang/StringBuilder;
    invoke-interface {v3, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1cf

    goto :goto_1d3

    :cond_1cf
    const/4 v1, 0x0

    goto :goto_1d4

    .line 277
    .end local v27    # "html":Ljava/lang/StringBuilder;
    .restart local v1    # "html":Ljava/lang/StringBuilder;
    :cond_1d1
    move-object/from16 v27, v1

    .line 279
    .end local v1    # "html":Ljava/lang/StringBuilder;
    .restart local v27    # "html":Ljava/lang/StringBuilder;
    :goto_1d3
    const/4 v1, 0x1

    .line 277
    :goto_1d4
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 280
    .end local v7    # "previousCssDeclarationBlock":Ljava/lang/String;
    .end local v15    # "cssSelector":Ljava/lang/String;
    move-object/from16 v1, v27

    move-object/from16 v15, v29

    move-object/from16 v7, v30

    goto :goto_19f

    .line 282
    .end local v27    # "html":Ljava/lang/StringBuilder;
    .end local v30    # "htmlAndCss":Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$HtmlAndCss;
    .restart local v1    # "html":Ljava/lang/StringBuilder;
    .local v7, "htmlAndCss":Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$HtmlAndCss;
    :cond_1de
    move-object/from16 v27, v1

    move-object/from16 v30, v7

    .end local v1    # "html":Ljava/lang/StringBuilder;
    .end local v7    # "htmlAndCss":Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$HtmlAndCss;
    .restart local v27    # "html":Ljava/lang/StringBuilder;
    .restart local v30    # "htmlAndCss":Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$HtmlAndCss;
    const/16 v1, 0xe

    new-array v1, v1, [Ljava/lang/Object;

    .line 297
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v15, 0x0

    aput-object v7, v1, v15

    const/4 v7, 0x1

    aput-object v23, v1, v7

    .line 299
    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    const/4 v15, 0x2

    aput-object v7, v1, v15

    const/4 v7, 0x3

    aput-object v5, v1, v7

    const/16 v18, 0x4

    aput-object v2, v1, v18

    const/16 v20, 0x5

    aput-object v0, v1, v20

    const/16 v20, 0x6

    aput-object v8, v1, v20

    const/16 v20, 0x7

    aput-object v9, v1, v20

    const/16 v20, 0x8

    aput-object v13, v1, v20

    const/16 v20, 0x9

    aput-object v4, v1, v20

    const/16 v20, 0xa

    aput-object v14, v1, v20

    .line 308
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    const/16 v22, 0xb

    aput-object v20, v1, v22

    .line 309
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    const/16 v22, 0xc

    aput-object v20, v1, v22

    .line 310
    invoke-static {v11}, Lcom/google/android/exoplayer2/ui/WebViewSubtitleOutput;->getBlockShearTransformFunction(Lcom/google/android/exoplayer2/text/Cue;)Ljava/lang/String;

    move-result-object v20

    const/16 v22, 0xd

    aput-object v20, v1, v22

    .line 283
    const-string v7, "<div style=\'position:absolute;z-index:%s;%s:%.2f%%;%s:%s;%s:%s;text-align:%s;writing-mode:%s;font-size:%s;background-color:%s;transform:translate(%s%%,%s%%)%s;\'>"

    invoke-static {v7, v1}, Lcom/google/android/exoplayer2/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 282
    move-object/from16 v7, v27

    .end local v27    # "html":Ljava/lang/StringBuilder;
    .local v7, "html":Ljava/lang/StringBuilder;
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v27, v0

    const/4 v15, 0x1

    .end local v0    # "sizeProperty":Ljava/lang/String;
    .local v27, "sizeProperty":Ljava/lang/String;
    new-array v0, v15, [Ljava/lang/Object;

    const/16 v21, 0x0

    aput-object v28, v0, v21

    .line 311
    const-string v15, "<span class=\'%s\'>"

    invoke-static {v15, v0}, Lcom/google/android/exoplayer2/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    iget-object v0, v11, Lcom/google/android/exoplayer2/text/Cue;->multiRowAlignment:Landroid/text/Layout$Alignment;

    const-string v1, "</span>"

    if-eqz v0, :cond_277

    .line 314
    const/4 v0, 0x1

    new-array v15, v0, [Ljava/lang/Object;

    iget-object v0, v11, Lcom/google/android/exoplayer2/text/Cue;->multiRowAlignment:Landroid/text/Layout$Alignment;

    .line 317
    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/WebViewSubtitleOutput;->convertAlignmentToCss(Landroid/text/Layout$Alignment;)Ljava/lang/String;

    move-result-object v0

    const/16 v21, 0x0

    aput-object v0, v15, v21

    .line 315
    const-string v0, "<span style=\'display:inline-block; text-align:%s;\'>"

    invoke-static {v0, v15}, Lcom/google/android/exoplayer2/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 314
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v29, v2

    move-object/from16 v15, v30

    .end local v2    # "lineValue":Ljava/lang/String;
    .end local v30    # "htmlAndCss":Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$HtmlAndCss;
    .local v15, "htmlAndCss":Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$HtmlAndCss;
    .local v29, "lineValue":Ljava/lang/String;
    iget-object v2, v15, Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$HtmlAndCss;->html:Ljava/lang/String;

    .line 318
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 319
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_280

    .line 321
    .end local v15    # "htmlAndCss":Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$HtmlAndCss;
    .end local v29    # "lineValue":Ljava/lang/String;
    .restart local v2    # "lineValue":Ljava/lang/String;
    .restart local v30    # "htmlAndCss":Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$HtmlAndCss;
    :cond_277
    move-object/from16 v29, v2

    move-object/from16 v15, v30

    .end local v2    # "lineValue":Ljava/lang/String;
    .end local v30    # "htmlAndCss":Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$HtmlAndCss;
    .restart local v15    # "htmlAndCss":Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$HtmlAndCss;
    .restart local v29    # "lineValue":Ljava/lang/String;
    iget-object v0, v15, Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$HtmlAndCss;->html:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    :goto_280
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</div>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .end local v4    # "cueTextSizeCssPx":Ljava/lang/String;
    .end local v5    # "lineProperty":Ljava/lang/String;
    .end local v6    # "horizontalTranslatePercent":I
    .end local v8    # "size":Ljava/lang/String;
    .end local v9    # "textAlign":Ljava/lang/String;
    .end local v11    # "cue":Lcom/google/android/exoplayer2/text/Cue;
    .end local v12    # "positionPercent":F
    .end local v13    # "writingMode":Ljava/lang/String;
    .end local v14    # "windowCssColor":Ljava/lang/String;
    .end local v15    # "htmlAndCss":Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$HtmlAndCss;
    .end local v16    # "lineMeasuredFromEnd":Z
    .end local v17    # "lineAnchorTranslatePercent":I
    .end local v23    # "positionProperty":Ljava/lang/String;
    .end local v25    # "verticalTranslatePercent":I
    .end local v26    # "positionAnchorTranslatePercent":I
    .end local v27    # "sizeProperty":Ljava/lang/String;
    .end local v29    # "lineValue":Ljava/lang/String;
    add-int/lit8 v10, v10, 0x1

    const/4 v2, 0x4

    const v4, 0x3f99999a    # 1.2f

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v8, 0x2

    const/4 v9, 0x3

    move-object/from16 v0, p0

    move-object v1, v7

    move-object/from16 v7, v28

    goto/16 :goto_5e

    .end local v7    # "html":Ljava/lang/StringBuilder;
    .restart local v1    # "html":Ljava/lang/StringBuilder;
    :cond_29a
    move-object v7, v1

    .line 327
    .end local v1    # "html":Ljava/lang/StringBuilder;
    .end local v10    # "i":I
    .restart local v7    # "html":Ljava/lang/StringBuilder;
    const-string v0, "</div></body></html>"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 330
    .local v0, "htmlHead":Ljava/lang/StringBuilder;
    const-string v1, "<html><head><style>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2b2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 332
    .local v2, "cssSelector":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "{"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "}"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    .end local v2    # "cssSelector":Ljava/lang/String;
    goto :goto_2b2

    .line 334
    :cond_2d8
    const-string v1, "</style></head>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v7, v2, v1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/google/android/exoplayer2/ui/WebViewSubtitleOutput;->webView:Landroid/webkit/WebView;

    .line 338
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/google/common/base/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v4, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    .line 337
    const-string v5, "text/html"

    const-string v6, "base64"

    invoke-virtual {v2, v4, v5, v6}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    return-void

    :pswitch_data_300
    .packed-switch 0x1
        :pswitch_b5
    .end packed-switch

    :pswitch_data_306
    .packed-switch 0x1
        :pswitch_15a
        :pswitch_151
    .end packed-switch
.end method


# virtual methods
.method public destroy()V
    .registers 2

    .line 168
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/WebViewSubtitleOutput;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 169
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 7
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 153
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 154
    if-eqz p1, :cond_10

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/WebViewSubtitleOutput;->textCues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    .line 157
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/WebViewSubtitleOutput;->updateWebView()V

    .line 159
    :cond_10
    return-void
.end method

.method public update(Ljava/util/List;Lcom/google/android/exoplayer2/ui/CaptionStyleCompat;FIF)V
    .registers 14
    .param p2, "style"    # Lcom/google/android/exoplayer2/ui/CaptionStyleCompat;
    .param p3, "textSize"    # F
    .param p4, "textSizeType"    # I
    .param p5, "bottomPaddingFraction"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/Cue;",
            ">;",
            "Lcom/google/android/exoplayer2/ui/CaptionStyleCompat;",
            "FIF)V"
        }
    .end annotation

    .line 123
    .local p1, "cues":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/text/Cue;>;"
    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/WebViewSubtitleOutput;->style:Lcom/google/android/exoplayer2/ui/CaptionStyleCompat;

    .line 124
    iput p3, p0, Lcom/google/android/exoplayer2/ui/WebViewSubtitleOutput;->defaultTextSize:F

    .line 125
    iput p4, p0, Lcom/google/android/exoplayer2/ui/WebViewSubtitleOutput;->defaultTextSizeType:I

    .line 126
    iput p5, p0, Lcom/google/android/exoplayer2/ui/WebViewSubtitleOutput;->bottomPaddingFraction:F

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 129
    .local v0, "bitmapCues":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/text/Cue;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v1

    .line 130
    .local v7, "textCues":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/text/Cue;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_14
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2e

    .line 131
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/text/Cue;

    .line 132
    .local v2, "cue":Lcom/google/android/exoplayer2/text/Cue;
    iget-object v3, v2, Lcom/google/android/exoplayer2/text/Cue;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_28

    .line 133
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2b

    .line 135
    :cond_28
    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    .end local v2    # "cue":Lcom/google/android/exoplayer2/text/Cue;
    :goto_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 139
    .end local v1    # "i":I
    :cond_2e
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/WebViewSubtitleOutput;->textCues:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3c

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_41

    .line 140
    :cond_3c
    iput-object v7, p0, Lcom/google/android/exoplayer2/ui/WebViewSubtitleOutput;->textCues:Ljava/util/List;

    .line 144
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/WebViewSubtitleOutput;->updateWebView()V

    .line 146
    :cond_41
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/WebViewSubtitleOutput;->canvasSubtitleOutput:Lcom/google/android/exoplayer2/ui/CanvasSubtitleOutput;

    move-object v2, v0

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/exoplayer2/ui/CanvasSubtitleOutput;->update(Ljava/util/List;Lcom/google/android/exoplayer2/ui/CaptionStyleCompat;FIF)V

    .line 148
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/WebViewSubtitleOutput;->invalidate()V

    .line 149
    return-void
.end method
