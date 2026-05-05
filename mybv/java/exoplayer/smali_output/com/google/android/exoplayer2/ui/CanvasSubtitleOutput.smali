.class final Lcom/google/android/exoplayer2/ui/CanvasSubtitleOutput;
.super Landroid/view/View;
.source "CanvasSubtitleOutput.java"

# interfaces
.implements Lcom/google/android/exoplayer2/ui/SubtitleView$Output;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
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

.field private final painters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/ui/SubtitlePainter;",
            ">;"
        }
    .end annotation
.end field

.field private style:Lcom/google/android/exoplayer2/ui/CaptionStyleCompat;

.field private textSize:F

.field private textSizeType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/ui/CanvasSubtitleOutput;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 56
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/CanvasSubtitleOutput;->painters:Ljava/util/List;

    .line 58
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/CanvasSubtitleOutput;->cues:Ljava/util/List;

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/ui/CanvasSubtitleOutput;->textSizeType:I

    .line 60
    const v0, 0x3d5a511a    # 0.0533f

    iput v0, p0, Lcom/google/android/exoplayer2/ui/CanvasSubtitleOutput;->textSize:F

    .line 61
    sget-object v0, Lcom/google/android/exoplayer2/ui/CaptionStyleCompat;->DEFAULT:Lcom/google/android/exoplayer2/ui/CaptionStyleCompat;

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/CanvasSubtitleOutput;->style:Lcom/google/android/exoplayer2/ui/CaptionStyleCompat;

    .line 62
    const v0, 0x3da3d70a    # 0.08f

    iput v0, p0, Lcom/google/android/exoplayer2/ui/CanvasSubtitleOutput;->bottomPaddingFraction:F

    .line 63
    return-void
.end method

.method private static repositionVerticalCue(Lcom/google/android/exoplayer2/text/Cue;)Lcom/google/android/exoplayer2/text/Cue;
    .registers 5
    .param p0, "cue"    # Lcom/google/android/exoplayer2/text/Cue;

    .line 153
    nop

    .line 154
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/Cue;->buildUpon()Lcom/google/android/exoplayer2/text/Cue$Builder;

    move-result-object v0

    .line 155
    const v1, -0x800001

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/text/Cue$Builder;->setPosition(F)Lcom/google/android/exoplayer2/text/Cue$Builder;

    move-result-object v0

    .line 156
    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/text/Cue$Builder;->setPositionAnchor(I)Lcom/google/android/exoplayer2/text/Cue$Builder;

    move-result-object v0

    .line 157
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/text/Cue$Builder;->setTextAlignment(Landroid/text/Layout$Alignment;)Lcom/google/android/exoplayer2/text/Cue$Builder;

    move-result-object v0

    .line 159
    .local v0, "cueBuilder":Lcom/google/android/exoplayer2/text/Cue$Builder;
    iget v1, p0, Lcom/google/android/exoplayer2/text/Cue;->lineType:I

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    if-nez v1, :cond_25

    .line 160
    iget v1, p0, Lcom/google/android/exoplayer2/text/Cue;->line:F

    sub-float/2addr v3, v1

    invoke-virtual {v0, v3, v2}, Lcom/google/android/exoplayer2/text/Cue$Builder;->setLine(FI)Lcom/google/android/exoplayer2/text/Cue$Builder;

    goto :goto_2d

    .line 162
    :cond_25
    iget v1, p0, Lcom/google/android/exoplayer2/text/Cue;->line:F

    neg-float v1, v1

    sub-float/2addr v1, v3

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Lcom/google/android/exoplayer2/text/Cue$Builder;->setLine(FI)Lcom/google/android/exoplayer2/text/Cue$Builder;

    .line 164
    :goto_2d
    iget v1, p0, Lcom/google/android/exoplayer2/text/Cue;->lineAnchor:I

    packed-switch v1, :pswitch_data_42

    :pswitch_32
    goto :goto_3c

    .line 166
    :pswitch_33
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/text/Cue$Builder;->setLineAnchor(I)Lcom/google/android/exoplayer2/text/Cue$Builder;

    .line 167
    goto :goto_3c

    .line 169
    :pswitch_37
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/text/Cue$Builder;->setLineAnchor(I)Lcom/google/android/exoplayer2/text/Cue$Builder;

    .line 170
    nop

    .line 176
    :goto_3c
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/text/Cue$Builder;->build()Lcom/google/android/exoplayer2/text/Cue;

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_42
    .packed-switch 0x0
        :pswitch_37
        :pswitch_32
        :pswitch_33
    .end packed-switch
.end method


# virtual methods
.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 27
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 87
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/CanvasSubtitleOutput;->cues:Ljava/util/List;

    .line 88
    .local v1, "cues":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/text/Cue;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 89
    return-void

    .line 92
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/ui/CanvasSubtitleOutput;->getHeight()I

    move-result v2

    .line 95
    .local v2, "rawViewHeight":I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/ui/CanvasSubtitleOutput;->getPaddingLeft()I

    move-result v14

    .line 96
    .local v14, "left":I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/ui/CanvasSubtitleOutput;->getPaddingTop()I

    move-result v15

    .line 97
    .local v15, "top":I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/ui/CanvasSubtitleOutput;->getWidth()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/ui/CanvasSubtitleOutput;->getPaddingRight()I

    move-result v4

    sub-int v13, v3, v4

    .line 98
    .local v13, "right":I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/ui/CanvasSubtitleOutput;->getPaddingBottom()I

    move-result v3

    sub-int v12, v2, v3

    .line 99
    .local v12, "bottom":I
    if-le v12, v15, :cond_9f

    if-gt v13, v14, :cond_31

    move/from16 v23, v12

    move/from16 v24, v13

    goto/16 :goto_a3

    .line 103
    :cond_31
    sub-int v11, v12, v15

    .line 105
    .local v11, "viewHeightMinusPadding":I
    iget v3, v0, Lcom/google/android/exoplayer2/ui/CanvasSubtitleOutput;->textSizeType:I

    iget v4, v0, Lcom/google/android/exoplayer2/ui/CanvasSubtitleOutput;->textSize:F

    .line 106
    invoke-static {v3, v4, v2, v11}, Lcom/google/android/exoplayer2/ui/SubtitleViewUtils;->resolveTextSize(IFII)F

    move-result v16

    .line 108
    .local v16, "defaultViewTextSizePx":F
    const/4 v3, 0x0

    cmpg-float v3, v16, v3

    if-gtz v3, :cond_41

    .line 110
    return-void

    .line 113
    :cond_41
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v10

    .line 114
    .local v10, "cueCount":I
    const/4 v3, 0x0

    move v9, v3

    .local v9, "i":I
    :goto_47
    if-ge v9, v10, :cond_9e

    .line 115
    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/text/Cue;

    .line 116
    .local v3, "cue":Lcom/google/android/exoplayer2/text/Cue;
    iget v4, v3, Lcom/google/android/exoplayer2/text/Cue;->verticalType:I

    const/high16 v5, -0x80000000

    if-eq v4, v5, :cond_5b

    .line 117
    invoke-static {v3}, Lcom/google/android/exoplayer2/ui/CanvasSubtitleOutput;->repositionVerticalCue(Lcom/google/android/exoplayer2/text/Cue;)Lcom/google/android/exoplayer2/text/Cue;

    move-result-object v3

    move-object v8, v3

    goto :goto_5c

    .line 116
    :cond_5b
    move-object v8, v3

    .line 119
    .end local v3    # "cue":Lcom/google/android/exoplayer2/text/Cue;
    .local v8, "cue":Lcom/google/android/exoplayer2/text/Cue;
    :goto_5c
    iget v3, v8, Lcom/google/android/exoplayer2/text/Cue;->textSizeType:I

    iget v4, v8, Lcom/google/android/exoplayer2/text/Cue;->textSize:F

    .line 120
    invoke-static {v3, v4, v2, v11}, Lcom/google/android/exoplayer2/ui/SubtitleViewUtils;->resolveTextSize(IFII)F

    move-result v17

    .line 122
    .local v17, "cueTextSizePx":F
    iget-object v3, v0, Lcom/google/android/exoplayer2/ui/CanvasSubtitleOutput;->painters:Ljava/util/List;

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v18, v3

    check-cast v18, Lcom/google/android/exoplayer2/ui/SubtitlePainter;

    .line 123
    .local v18, "painter":Lcom/google/android/exoplayer2/ui/SubtitlePainter;
    iget-object v5, v0, Lcom/google/android/exoplayer2/ui/CanvasSubtitleOutput;->style:Lcom/google/android/exoplayer2/ui/CaptionStyleCompat;

    iget v7, v0, Lcom/google/android/exoplayer2/ui/CanvasSubtitleOutput;->bottomPaddingFraction:F

    move-object/from16 v3, v18

    move-object v4, v8

    move/from16 v6, v16

    move/from16 v19, v7

    move/from16 v7, v17

    move-object/from16 v20, v8

    .end local v8    # "cue":Lcom/google/android/exoplayer2/text/Cue;
    .local v20, "cue":Lcom/google/android/exoplayer2/text/Cue;
    move/from16 v8, v19

    move/from16 v19, v9

    .end local v9    # "i":I
    .local v19, "i":I
    move-object/from16 v9, p1

    move/from16 v21, v10

    .end local v10    # "cueCount":I
    .local v21, "cueCount":I
    move v10, v14

    move/from16 v22, v11

    .end local v11    # "viewHeightMinusPadding":I
    .local v22, "viewHeightMinusPadding":I
    move v11, v15

    move/from16 v23, v12

    .end local v12    # "bottom":I
    .local v23, "bottom":I
    move v12, v13

    move/from16 v24, v13

    .end local v13    # "right":I
    .local v24, "right":I
    move/from16 v13, v23

    invoke-virtual/range {v3 .. v13}, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->draw(Lcom/google/android/exoplayer2/text/Cue;Lcom/google/android/exoplayer2/ui/CaptionStyleCompat;FFFLandroid/graphics/Canvas;IIII)V

    .line 114
    .end local v17    # "cueTextSizePx":F
    .end local v18    # "painter":Lcom/google/android/exoplayer2/ui/SubtitlePainter;
    .end local v20    # "cue":Lcom/google/android/exoplayer2/text/Cue;
    add-int/lit8 v9, v19, 0x1

    move/from16 v10, v21

    move/from16 v11, v22

    move/from16 v12, v23

    move/from16 v13, v24

    .end local v19    # "i":I
    .restart local v9    # "i":I
    goto :goto_47

    .line 135
    .end local v9    # "i":I
    .end local v21    # "cueCount":I
    .end local v22    # "viewHeightMinusPadding":I
    .end local v23    # "bottom":I
    .end local v24    # "right":I
    .restart local v10    # "cueCount":I
    .restart local v11    # "viewHeightMinusPadding":I
    .restart local v12    # "bottom":I
    .restart local v13    # "right":I
    :cond_9e
    return-void

    .line 99
    .end local v10    # "cueCount":I
    .end local v11    # "viewHeightMinusPadding":I
    .end local v16    # "defaultViewTextSizePx":F
    :cond_9f
    move/from16 v23, v12

    move/from16 v24, v13

    .line 101
    .end local v12    # "bottom":I
    .end local v13    # "right":I
    .restart local v23    # "bottom":I
    .restart local v24    # "right":I
    :goto_a3
    return-void
.end method

.method public update(Ljava/util/List;Lcom/google/android/exoplayer2/ui/CaptionStyleCompat;FIF)V
    .registers 9
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

    .line 72
    .local p1, "cues":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/text/Cue;>;"
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/CanvasSubtitleOutput;->cues:Ljava/util/List;

    .line 73
    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/CanvasSubtitleOutput;->style:Lcom/google/android/exoplayer2/ui/CaptionStyleCompat;

    .line 74
    iput p3, p0, Lcom/google/android/exoplayer2/ui/CanvasSubtitleOutput;->textSize:F

    .line 75
    iput p4, p0, Lcom/google/android/exoplayer2/ui/CanvasSubtitleOutput;->textSizeType:I

    .line 76
    iput p5, p0, Lcom/google/android/exoplayer2/ui/CanvasSubtitleOutput;->bottomPaddingFraction:F

    .line 78
    :goto_a
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/CanvasSubtitleOutput;->painters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_25

    .line 79
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/CanvasSubtitleOutput;->painters:Ljava/util/List;

    new-instance v1, Lcom/google/android/exoplayer2/ui/SubtitlePainter;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/CanvasSubtitleOutput;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/ui/SubtitlePainter;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 82
    :cond_25
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/CanvasSubtitleOutput;->invalidate()V

    .line 83
    return-void
.end method
