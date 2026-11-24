.class public final Lcom/bilibili/tv/ui/video/widget/VideoBadgeStyler;
.super Ljava/lang/Object;
.source "VideoBadgeStyler.java"


# static fields
.field private static final DEFAULT_COLOR_OPAQUE:I = -0x48d67

.field private static final DEFAULT_COLOR_TRANSLUCENT:I = -0x66048d67


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method public static apply(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/bilibili/tv/ui/video/widget/VideoBadgeStyler;->applyInternal(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 36
    return-void
.end method

.method private static applyInternal(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 3

    .prologue
    .line 94
    if-nez p0, :cond_3

    .line 111
    :goto_2
    return-void

    .line 97
    :cond_3
    if-eqz p1, :cond_b

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 98
    :cond_b
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 102
    :cond_11
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    invoke-static {p0, p2, p3, p4}, Lcom/bilibili/tv/ui/video/widget/VideoBadgeStyler;->createBackground(Landroid/widget/TextView;Ljava/lang/String;ZZ)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    .line 105
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_26

    .line 106
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 110
    :goto_21
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 108
    :cond_26
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_21
.end method

.method public static applyLeft(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, p3, v0}, Lcom/bilibili/tv/ui/video/widget/VideoBadgeStyler;->applyInternal(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 43
    return-void
.end method

.method private static createBackground(Landroid/widget/TextView;Ljava/lang/String;ZZ)Landroid/graphics/drawable/GradientDrawable;
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 115
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060085

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 116
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 117
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 119
    if-eqz p3, :cond_3d

    .line 120
    const/16 v2, 0x8

    new-array v2, v2, [F

    aput v0, v2, v3

    aput v0, v2, v5

    aput v4, v2, v6

    aput v4, v2, v7

    const/4 v3, 0x4

    aput v0, v2, v3

    const/4 v3, 0x5

    aput v0, v2, v3

    const/4 v0, 0x6

    aput v4, v2, v0

    const/4 v0, 0x7

    aput v4, v2, v0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 124
    :goto_35
    invoke-static {p1, p2}, Lcom/bilibili/tv/ui/video/widget/VideoBadgeStyler;->resolveColor(Ljava/lang/String;Z)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 125
    return-object v1

    .line 122
    :cond_3d
    const/16 v2, 0x8

    new-array v2, v2, [F

    aput v4, v2, v3

    aput v4, v2, v5

    aput v0, v2, v6

    aput v0, v2, v7

    const/4 v3, 0x4

    aput v4, v2, v3

    const/4 v3, 0x5

    aput v4, v2, v3

    const/4 v3, 0x6

    aput v0, v2, v3

    const/4 v3, 0x7

    aput v0, v2, v3

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    goto :goto_35
.end method

.method public static ensureLeftBadge(Landroid/widget/TextView;Landroid/view/View;)Landroid/widget/TextView;
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v6, -0x2

    const/4 v1, 0x0

    .line 63
    invoke-static {p0}, Lcom/bilibili/tv/ui/video/widget/VideoBadgeStyler;->findLeftBadge(Landroid/widget/TextView;)Landroid/widget/TextView;

    move-result-object v0

    .line 64
    if-eqz v0, :cond_b

    move-object v1, v0

    .line 89
    :cond_a
    :goto_a
    return-object v1

    .line 67
    :cond_b
    if-eqz p0, :cond_a

    .line 70
    if-eqz p1, :cond_61

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 71
    :goto_13
    instance-of v2, v0, Landroid/widget/FrameLayout;

    if-eqz v2, :cond_a

    .line 75
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 76
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    invoke-virtual {v1, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 77
    invoke-virtual {p0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 78
    invoke-virtual {p0}, Landroid/widget/TextView;->getGravity()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 79
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 80
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 81
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v3

    .line 82
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v5

    .line 81
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 84
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 86
    const/16 v3, 0x33

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 87
    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 88
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    goto :goto_a

    :cond_61
    move-object v0, v1

    .line 70
    goto :goto_13
.end method

.method public static findLeftBadge(Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 47
    if-nez p0, :cond_4

    .line 51
    :goto_3
    return-object v1

    .line 50
    :cond_4
    invoke-virtual {p0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 51
    instance-of v2, v0, Landroid/widget/TextView;

    if-eqz v2, :cond_10

    check-cast v0, Landroid/widget/TextView;

    :goto_e
    move-object v1, v0

    goto :goto_3

    :cond_10
    move-object v0, v1

    goto :goto_e
.end method

.method private static resolveColor(Ljava/lang/String;Z)I
    .locals 2

    .prologue
    .line 129
    if-eqz p1, :cond_e

    const v0, -0x66048d67    # -2.5999077E-23f

    .line 130
    :goto_5
    if-eqz p0, :cond_d

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 137
    :cond_d
    :goto_d
    return v0

    .line 129
    :cond_e
    const v0, -0x48d67

    goto :goto_5

    .line 134
    :cond_12
    :try_start_12
    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_15} :catch_20

    move-result v0

    .line 135
    if-eqz p1, :cond_d

    const v1, 0xffffff

    and-int/2addr v0, v1

    const/high16 v1, -0x67000000

    or-int/2addr v0, v1

    goto :goto_d

    .line 136
    :catch_20
    move-exception v1

    goto :goto_d
.end method
