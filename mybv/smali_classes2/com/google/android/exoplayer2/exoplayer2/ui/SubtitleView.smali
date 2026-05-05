.class public final Lcom/google/android/exoplayer2/ui/SubtitleView;
.super Landroid/widget/FrameLayout;
.source "SubtitleView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/ui/SubtitleView$Output;,
        Lcom/google/android/exoplayer2/ui/SubtitleView$ViewType;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final DEFAULT_BOTTOM_PADDING_FRACTION:F = 0.08f

.field public static final DEFAULT_TEXT_SIZE_FRACTION:F = 0.0533f

.field public static final VIEW_TYPE_CANVAS:I = 0x1

.field public static final VIEW_TYPE_WEB:I = 0x2


# instance fields
.field private applyEmbeddedFontSizes:Z

.field private applyEmbeddedStyles:Z

.field private bottomPaddingFraction:F

.field private cues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/Cue;",
            ">;"
        }
    .end annotation
.end field

.field private defaultTextSize:F

.field private defaultTextSizeType:I

.field private innerSubtitleView:Landroid/view/View;

.field private output:Lcom/google/android/exoplayer2/ui/SubtitleView$Output;

.field private style:Lcom/google/android/exoplayer2/ui/CaptionStyleCompat;

.field private viewType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 140
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/ui/SubtitleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 141
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 144
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 145
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->cues:Ljava/util/List;

    .line 146
    sget-object v0, Lcom/google/android/exoplayer2/ui/CaptionStyleCompat;->DEFAULT:Lcom/google/android/exoplayer2/ui/CaptionStyleCompat;

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->style:Lcom/google/android/exoplayer2/ui/CaptionStyleCompat;

    .line 147
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->defaultTextSizeType:I

    .line 148
    const v0, 0x3d5a511a    # 0.0533f

    iput v0, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->defaultTextSize:F

    .line 149
    const v0, 0x3da3d70a    # 0.08f

    iput v0, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->bottomPaddingFraction:F

    .line 150
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->applyEmbeddedStyles:Z

    .line 151
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->applyEmbeddedFontSizes:Z

    .line 153
    new-instance v1, Lcom/google/android/exoplayer2/ui/CanvasSubtitleOutput;

    invoke-direct {v1, p1}, Lcom/google/android/exoplayer2/ui/CanvasSubtitleOutput;-><init>(Landroid/content/Context;)V

    .line 154
    .local v1, "canvasSubtitleOutput":Lcom/google/android/exoplayer2/ui/CanvasSubtitleOutput;
    iput-object v1, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->output:Lcom/google/android/exoplayer2/ui/SubtitleView$Output;

    .line 155
    iput-object v1, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->innerSubtitleView:Landroid/view/View;

    .line 156
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/ui/SubtitleView;->addView(Landroid/view/View;)V

    .line 157
    iput v0, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->viewType:I

    .line 158
    return-void
.end method

.method private getCuesWithStylingPreferencesApplied()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/Cue;",
            ">;"
        }
    .end annotation

    .line 373
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->applyEmbeddedStyles:Z

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->applyEmbeddedFontSizes:Z

    if-eqz v0, :cond_b

    .line 374
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->cues:Ljava/util/List;

    return-object v0

    .line 376
    :cond_b
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->cues:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 377
    .local v0, "strippedCues":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/text/Cue;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_17
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->cues:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_31

    .line 378
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->cues:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/text/Cue;

    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/ui/SubtitleView;->removeEmbeddedStyling(Lcom/google/android/exoplayer2/text/Cue;)Lcom/google/android/exoplayer2/text/Cue;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 377
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 380
    .end local v1    # "i":I
    :cond_31
    return-object v0
.end method

.method private getUserCaptionFontScale()F
    .registers 4

    .line 328
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x13

    const/high16 v2, 0x3f800000    # 1.0f

    if-lt v0, v1, :cond_2b

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/SubtitleView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_2b

    .line 332
    :cond_f
    nop

    .line 333
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/SubtitleView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "captioning"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/CaptioningManager;

    .line 334
    .local v0, "captioningManager":Landroid/view/accessibility/CaptioningManager;
    if-eqz v0, :cond_29

    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_29

    .line 335
    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager;->getFontScale()F

    move-result v2

    goto :goto_2a

    .line 336
    :cond_29
    nop

    .line 334
    :goto_2a
    return v2

    .line 329
    .end local v0    # "captioningManager":Landroid/view/accessibility/CaptioningManager;
    :cond_2b
    :goto_2b
    return v2
.end method

.method private getUserCaptionStyle()Lcom/google/android/exoplayer2/ui/CaptionStyleCompat;
    .registers 3

    .line 340
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_2e

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/SubtitleView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_2e

    .line 344
    :cond_d
    nop

    .line 345
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/SubtitleView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "captioning"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/CaptioningManager;

    .line 346
    .local v0, "captioningManager":Landroid/view/accessibility/CaptioningManager;
    if-eqz v0, :cond_2b

    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 347
    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager;->getUserStyle()Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/exoplayer2/ui/CaptionStyleCompat;->createFromCaptionStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)Lcom/google/android/exoplayer2/ui/CaptionStyleCompat;

    move-result-object v1

    goto :goto_2d

    .line 348
    :cond_2b
    sget-object v1, Lcom/google/android/exoplayer2/ui/CaptionStyleCompat;->DEFAULT:Lcom/google/android/exoplayer2/ui/CaptionStyleCompat;

    .line 346
    :goto_2d
    return-object v1

    .line 341
    .end local v0    # "captioningManager":Landroid/view/accessibility/CaptioningManager;
    :cond_2e
    :goto_2e
    sget-object v0, Lcom/google/android/exoplayer2/ui/CaptionStyleCompat;->DEFAULT:Lcom/google/android/exoplayer2/ui/CaptionStyleCompat;

    return-object v0
.end method

.method private removeEmbeddedStyling(Lcom/google/android/exoplayer2/text/Cue;)Lcom/google/android/exoplayer2/text/Cue;
    .registers 4
    .param p1, "cue"    # Lcom/google/android/exoplayer2/text/Cue;

    .line 384
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/text/Cue;->buildUpon()Lcom/google/android/exoplayer2/text/Cue$Builder;

    move-result-object v0

    .line 385
    .local v0, "strippedCue":Lcom/google/android/exoplayer2/text/Cue$Builder;
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->applyEmbeddedStyles:Z

    if-nez v1, :cond_c

    .line 386
    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/SubtitleViewUtils;->removeAllEmbeddedStyling(Lcom/google/android/exoplayer2/text/Cue$Builder;)V

    goto :goto_13

    .line 387
    :cond_c
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->applyEmbeddedFontSizes:Z

    if-nez v1, :cond_13

    .line 388
    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/SubtitleViewUtils;->removeEmbeddedFontSizes(Lcom/google/android/exoplayer2/text/Cue$Builder;)V

    .line 390
    :cond_13
    :goto_13
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/text/Cue$Builder;->build()Lcom/google/android/exoplayer2/text/Cue;

    move-result-object v1

    return-object v1
.end method

.method private setTextSize(IF)V
    .registers 3
    .param p1, "textSizeType"    # I
    .param p2, "textSize"    # F

    .line 266
    iput p1, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->defaultTextSizeType:I

    .line 267
    iput p2, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->defaultTextSize:F

    .line 268
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/SubtitleView;->updateOutput()V

    .line 269
    return-void
.end method

.method private setView(Landroid/view/View;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ":",
            "Lcom/google/android/exoplayer2/ui/SubtitleView$Output;",
            ">(TT;)V"
        }
    .end annotation

    .line 196
    .local p1, "view":Landroid/view/View;, "TT;"
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->innerSubtitleView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/ui/SubtitleView;->removeView(Landroid/view/View;)V

    .line 197
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->innerSubtitleView:Landroid/view/View;

    instance-of v1, v0, Lcom/google/android/exoplayer2/ui/WebViewSubtitleOutput;

    if-eqz v1, :cond_10

    .line 198
    check-cast v0, Lcom/google/android/exoplayer2/ui/WebViewSubtitleOutput;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/WebViewSubtitleOutput;->destroy()V

    .line 200
    :cond_10
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->innerSubtitleView:Landroid/view/View;

    .line 201
    move-object v0, p1

    check-cast v0, Lcom/google/android/exoplayer2/ui/SubtitleView$Output;

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->output:Lcom/google/android/exoplayer2/ui/SubtitleView$Output;

    .line 202
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ui/SubtitleView;->addView(Landroid/view/View;)V

    .line 203
    return-void
.end method

.method private updateOutput()V
    .registers 7

    .line 352
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->output:Lcom/google/android/exoplayer2/ui/SubtitleView$Output;

    .line 353
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/SubtitleView;->getCuesWithStylingPreferencesApplied()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->style:Lcom/google/android/exoplayer2/ui/CaptionStyleCompat;

    iget v3, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->defaultTextSize:F

    iget v4, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->defaultTextSizeType:I

    iget v5, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->bottomPaddingFraction:F

    .line 352
    invoke-interface/range {v0 .. v5}, Lcom/google/android/exoplayer2/ui/SubtitleView$Output;->update(Ljava/util/List;Lcom/google/android/exoplayer2/ui/CaptionStyleCompat;FIF)V

    .line 358
    return-void
.end method


# virtual methods
.method public setApplyEmbeddedFontSizes(Z)V
    .registers 2
    .param p1, "applyEmbeddedFontSizes"    # Z

    .line 289
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->applyEmbeddedFontSizes:Z

    .line 290
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/SubtitleView;->updateOutput()V

    .line 291
    return-void
.end method

.method public setApplyEmbeddedStyles(Z)V
    .registers 2
    .param p1, "applyEmbeddedStyles"    # Z

    .line 278
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->applyEmbeddedStyles:Z

    .line 279
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/SubtitleView;->updateOutput()V

    .line 280
    return-void
.end method

.method public setBottomPaddingFraction(F)V
    .registers 2
    .param p1, "bottomPaddingFraction"    # F

    .line 323
    iput p1, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->bottomPaddingFraction:F

    .line 324
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/SubtitleView;->updateOutput()V

    .line 325
    return-void
.end method

.method public setCues(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/Cue;",
            ">;)V"
        }
    .end annotation

    .line 166
    .local p1, "cues":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/text/Cue;>;"
    if-eqz p1, :cond_4

    move-object v0, p1

    goto :goto_8

    :cond_4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_8
    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->cues:Ljava/util/List;

    .line 167
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/SubtitleView;->updateOutput()V

    .line 168
    return-void
.end method

.method public setFixedTextSize(IF)V
    .registers 7
    .param p1, "unit"    # I
    .param p2, "size"    # F

    .line 214
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/SubtitleView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 216
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_b

    .line 217
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    .local v1, "resources":Landroid/content/res/Resources;
    goto :goto_f

    .line 219
    .end local v1    # "resources":Landroid/content/res/Resources;
    :cond_b
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 221
    .restart local v1    # "resources":Landroid/content/res/Resources;
    :goto_f
    nop

    .line 223
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {p1, p2, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    .line 221
    const/4 v3, 0x2

    invoke-direct {p0, v3, v2}, Lcom/google/android/exoplayer2/ui/SubtitleView;->setTextSize(IF)V

    .line 224
    return-void
.end method

.method public setFractionalTextSize(F)V
    .registers 3
    .param p1, "fractionOfHeight"    # F

    .line 245
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/exoplayer2/ui/SubtitleView;->setFractionalTextSize(FZ)V

    .line 246
    return-void
.end method

.method public setFractionalTextSize(FZ)V
    .registers 4
    .param p1, "fractionOfHeight"    # F
    .param p2, "ignorePadding"    # Z

    .line 258
    nop

    .line 259
    if-eqz p2, :cond_5

    .line 260
    const/4 v0, 0x1

    goto :goto_6

    .line 261
    :cond_5
    const/4 v0, 0x0

    .line 258
    :goto_6
    invoke-direct {p0, v0, p1}, Lcom/google/android/exoplayer2/ui/SubtitleView;->setTextSize(IF)V

    .line 263
    return-void
.end method

.method public setStyle(Lcom/google/android/exoplayer2/ui/CaptionStyleCompat;)V
    .registers 2
    .param p1, "style"    # Lcom/google/android/exoplayer2/ui/CaptionStyleCompat;

    .line 309
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->style:Lcom/google/android/exoplayer2/ui/CaptionStyleCompat;

    .line 310
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/SubtitleView;->updateOutput()V

    .line 311
    return-void
.end method

.method public setUserDefaultStyle()V
    .registers 2

    .line 300
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/SubtitleView;->getUserCaptionStyle()Lcom/google/android/exoplayer2/ui/CaptionStyleCompat;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/ui/SubtitleView;->setStyle(Lcom/google/android/exoplayer2/ui/CaptionStyleCompat;)V

    .line 301
    return-void
.end method

.method public setUserDefaultTextSize()V
    .registers 3

    .line 233
    const v0, 0x3d5a511a    # 0.0533f

    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/SubtitleView;->getUserCaptionFontScale()F

    move-result v1

    mul-float v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/ui/SubtitleView;->setFractionalTextSize(F)V

    .line 234
    return-void
.end method

.method public setViewType(I)V
    .registers 4
    .param p1, "viewType"    # I

    .line 179
    iget v0, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->viewType:I

    if-ne v0, p1, :cond_5

    .line 180
    return-void

    .line 182
    :cond_5
    packed-switch p1, :pswitch_data_2c

    .line 190
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 187
    :pswitch_e
    new-instance v0, Lcom/google/android/exoplayer2/ui/WebViewSubtitleOutput;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/SubtitleView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/ui/WebViewSubtitleOutput;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ui/SubtitleView;->setView(Landroid/view/View;)V

    .line 188
    goto :goto_28

    .line 184
    :pswitch_1b
    new-instance v0, Lcom/google/android/exoplayer2/ui/CanvasSubtitleOutput;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/SubtitleView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/ui/CanvasSubtitleOutput;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ui/SubtitleView;->setView(Landroid/view/View;)V

    .line 185
    nop

    .line 192
    :goto_28
    iput p1, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->viewType:I

    .line 193
    return-void

    nop

    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_e
    .end packed-switch
.end method
