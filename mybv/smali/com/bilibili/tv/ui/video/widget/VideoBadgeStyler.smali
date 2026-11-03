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
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method public static apply(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/bilibili/tv/ui/video/widget/VideoBadgeStyler;->applyInternal(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 31
    return-void
.end method

.method private static applyInternal(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 1

    .prologue
    .line 42
    if-nez p0, :cond_3

    .line 53
    :goto_2
    return-void

    .line 45
    :cond_3
    if-eqz p1, :cond_b

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 46
    :cond_b
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 50
    :cond_11
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    invoke-static {p0, p2, p3, p4}, Lcom/bilibili/tv/ui/video/widget/VideoBadgeStyler;->createBackground(Landroid/widget/TextView;Ljava/lang/String;ZZ)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 52
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method

.method public static applyLeft(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, p3, v0}, Lcom/bilibili/tv/ui/video/widget/VideoBadgeStyler;->applyInternal(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 38
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

    .line 57
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060085

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 58
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 59
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 61
    if-eqz p3, :cond_3d

    .line 62
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

    .line 66
    :goto_35
    invoke-static {p1, p2}, Lcom/bilibili/tv/ui/video/widget/VideoBadgeStyler;->resolveColor(Ljava/lang/String;Z)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 67
    return-object v1

    .line 64
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

.method private static resolveColor(Ljava/lang/String;Z)I
    .locals 2

    .prologue
    .line 71
    if-eqz p1, :cond_e

    const v0, -0x66048d67    # -2.5999077E-23f

    .line 72
    :goto_5
    if-eqz p0, :cond_d

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 79
    :cond_d
    :goto_d
    return v0

    .line 71
    :cond_e
    const v0, -0x48d67

    goto :goto_5

    .line 76
    :cond_12
    :try_start_12
    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_15} :catch_20

    move-result v0

    .line 77
    if-eqz p1, :cond_d

    const v1, 0xffffff

    and-int/2addr v0, v1

    const/high16 v1, -0x67000000

    or-int/2addr v0, v1

    goto :goto_d

    .line 78
    :catch_20
    move-exception v1

    goto :goto_d
.end method
