.class public Lcom/bilibili/tv/widget/ProgressPlayButton;
.super Landroid/widget/LinearLayout;
.source "ProgressPlayButton.java"

# interfaces
.implements Lbl/afz;


# instance fields
.field private bgColor:I

.field private bgPaint:Landroid/graphics/Paint;

.field private cornerRadius:F

.field private focusHelper:Lbl/afy;

.field private progressColor:I

.field private progressPaint:Landroid/graphics/Paint;

.field private progressRatio:F

.field private rectF:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/bilibili/tv/widget/ProgressPlayButton;->progressRatio:F

    .line 31
    invoke-direct {p0, p1}, Lcom/bilibili/tv/widget/ProgressPlayButton;->init(Landroid/content/Context;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/bilibili/tv/widget/ProgressPlayButton;->progressRatio:F

    .line 36
    invoke-direct {p0, p1}, Lcom/bilibili/tv/widget/ProgressPlayButton;->init(Landroid/content/Context;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/bilibili/tv/widget/ProgressPlayButton;->progressRatio:F

    .line 41
    invoke-direct {p0, p1}, Lcom/bilibili/tv/widget/ProgressPlayButton;->init(Landroid/content/Context;)V

    .line 42
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 45
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/widget/ProgressPlayButton;->setWillNotDraw(Z)V

    .line 47
    new-instance v0, Lbl/afy;

    invoke-direct {v0, p1, p0}, Lbl/afy;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/bilibili/tv/widget/ProgressPlayButton;->focusHelper:Lbl/afy;

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0500ac

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/bilibili/tv/widget/ProgressPlayButton;->progressColor:I

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0500ad

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/bilibili/tv/widget/ProgressPlayButton;->bgColor:I

    .line 52
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/bilibili/tv/widget/ProgressPlayButton;->progressPaint:Landroid/graphics/Paint;

    .line 53
    iget-object v0, p0, Lcom/bilibili/tv/widget/ProgressPlayButton;->progressPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/bilibili/tv/widget/ProgressPlayButton;->progressColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 54
    iget-object v0, p0, Lcom/bilibili/tv/widget/ProgressPlayButton;->progressPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 56
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/bilibili/tv/widget/ProgressPlayButton;->bgPaint:Landroid/graphics/Paint;

    .line 57
    iget-object v0, p0, Lcom/bilibili/tv/widget/ProgressPlayButton;->bgPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/bilibili/tv/widget/ProgressPlayButton;->bgColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 58
    iget-object v0, p0, Lcom/bilibili/tv/widget/ProgressPlayButton;->bgPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 60
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/widget/ProgressPlayButton;->rectF:Landroid/graphics/RectF;

    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06006e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/bilibili/tv/widget/ProgressPlayButton;->cornerRadius:F

    .line 63
    const v0, 0x7f070058

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/widget/ProgressPlayButton;->setBackgroundResource(I)V

    .line 64
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v7, 0x0

    .line 82
    invoke-virtual {p0}, Lcom/bilibili/tv/widget/ProgressPlayButton;->getMeasuredWidth()I

    move-result v0

    .line 83
    invoke-virtual {p0}, Lcom/bilibili/tv/widget/ProgressPlayButton;->getMeasuredHeight()I

    move-result v1

    .line 85
    if-lez v0, :cond_3d

    if-lez v1, :cond_3d

    .line 86
    iget-object v3, p0, Lcom/bilibili/tv/widget/ProgressPlayButton;->rectF:Landroid/graphics/RectF;

    int-to-float v4, v0

    int-to-float v5, v1

    invoke-virtual {v3, v7, v7, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 88
    iget-object v3, p0, Lcom/bilibili/tv/widget/ProgressPlayButton;->rectF:Landroid/graphics/RectF;

    iget v4, p0, Lcom/bilibili/tv/widget/ProgressPlayButton;->cornerRadius:F

    iget v5, p0, Lcom/bilibili/tv/widget/ProgressPlayButton;->cornerRadius:F

    iget-object v6, p0, Lcom/bilibili/tv/widget/ProgressPlayButton;->bgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 90
    iget v3, p0, Lcom/bilibili/tv/widget/ProgressPlayButton;->progressRatio:F

    cmpl-float v3, v3, v7

    if-lez v3, :cond_3d

    .line 91
    int-to-float v0, v0

    iget v3, p0, Lcom/bilibili/tv/widget/ProgressPlayButton;->progressRatio:F

    mul-float/2addr v0, v3

    float-to-int v0, v0

    .line 92
    iget-object v3, p0, Lcom/bilibili/tv/widget/ProgressPlayButton;->rectF:Landroid/graphics/RectF;

    int-to-float v0, v0

    int-to-float v1, v1

    invoke-virtual {v3, v7, v7, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 93
    iget-object v0, p0, Lcom/bilibili/tv/widget/ProgressPlayButton;->rectF:Landroid/graphics/RectF;

    iget v1, p0, Lcom/bilibili/tv/widget/ProgressPlayButton;->cornerRadius:F

    iget v3, p0, Lcom/bilibili/tv/widget/ProgressPlayButton;->cornerRadius:F

    iget-object v4, p0, Lcom/bilibili/tv/widget/ProgressPlayButton;->progressPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 97
    :cond_3d
    iget-object v0, p0, Lcom/bilibili/tv/widget/ProgressPlayButton;->focusHelper:Lbl/afy;

    invoke-virtual {p0}, Lcom/bilibili/tv/widget/ProgressPlayButton;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/bilibili/tv/widget/ProgressPlayButton;->getMeasuredHeight()I

    move-result v5

    move-object v1, p1

    move v3, v2

    invoke-virtual/range {v0 .. v5}, Lbl/afy;->a(Landroid/graphics/Canvas;IIII)V

    .line 99
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 100
    return-void
.end method

.method public setProgress(II)V
    .locals 2

    .prologue
    .line 67
    if-lez p2, :cond_b

    .line 68
    int-to-float v0, p1

    int-to-float v1, p2

    div-float/2addr v0, v1

    iput v0, p0, Lcom/bilibili/tv/widget/ProgressPlayButton;->progressRatio:F

    .line 72
    :goto_7
    invoke-virtual {p0}, Lcom/bilibili/tv/widget/ProgressPlayButton;->invalidate()V

    .line 73
    return-void

    .line 70
    :cond_b
    const/4 v0, 0x0

    iput v0, p0, Lcom/bilibili/tv/widget/ProgressPlayButton;->progressRatio:F

    goto :goto_7
.end method

.method public setProgressRatio(F)V
    .locals 2

    .prologue
    .line 76
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/bilibili/tv/widget/ProgressPlayButton;->progressRatio:F

    .line 77
    invoke-virtual {p0}, Lcom/bilibili/tv/widget/ProgressPlayButton;->invalidate()V

    .line 78
    return-void
.end method

.method public setUpDrawable(I)V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/bilibili/tv/widget/ProgressPlayButton;->focusHelper:Lbl/afy;

    invoke-virtual {v0, p1}, Lbl/afy;->setUpDrawable(I)V

    .line 105
    return-void
.end method

.method public setUpDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/bilibili/tv/widget/ProgressPlayButton;->focusHelper:Lbl/afy;

    invoke-virtual {v0, p1}, Lbl/afy;->a(Landroid/graphics/drawable/Drawable;)V

    .line 114
    return-void
.end method

.method public setUpEnabled(Z)V
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/bilibili/tv/widget/ProgressPlayButton;->focusHelper:Lbl/afy;

    invoke-virtual {v0, p1}, Lbl/afy;->setUpEnabled(Z)V

    .line 110
    return-void
.end method
