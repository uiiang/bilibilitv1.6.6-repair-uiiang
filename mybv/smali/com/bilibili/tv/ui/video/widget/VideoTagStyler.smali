.class public final Lcom/bilibili/tv/ui/video/widget/VideoTagStyler;
.super Ljava/lang/Object;
.source "VideoTagStyler.java"


# static fields
.field private static final CORNER_RADIUS_DP:F = 4.0f

.field private static final FALLBACK_TRANSLUCENT:I = -0x66048d67


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method public static applySolid(Landroid/widget/TextView;I)V
    .locals 3

    .prologue
    .line 22
    if-nez p0, :cond_3

    .line 32
    :goto_2
    return-void

    .line 26
    :cond_3
    invoke-static {p0, p1}, Lcom/bilibili/tv/ui/video/widget/VideoTagStyler;->create(Landroid/widget/TextView;I)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    .line 27
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_11

    .line 28
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 30
    :cond_11
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2
.end method

.method public static applyTranslucent(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 36
    if-nez p0, :cond_3

    .line 53
    :goto_2
    return-void

    .line 39
    :cond_3
    const v0, -0x66048d67    # -2.5999077E-23f

    .line 40
    if-eqz p1, :cond_19

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_19

    .line 42
    :try_start_e
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_11} :catch_2b

    move-result v0

    .line 43
    const v1, 0xffffff

    and-int/2addr v0, v1

    const/high16 v1, -0x67000000

    or-int/2addr v0, v1

    .line 47
    :cond_19
    :goto_19
    invoke-static {p0, v0}, Lcom/bilibili/tv/ui/video/widget/VideoTagStyler;->create(Landroid/widget/TextView;I)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    .line 48
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_27

    .line 49
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 51
    :cond_27
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 44
    :catch_2b
    move-exception v1

    goto :goto_19
.end method

.method private static create(Landroid/widget/TextView;I)Landroid/graphics/drawable/GradientDrawable;
    .locals 3

    .prologue
    .line 56
    const/high16 v0, 0x40800000    # 4.0f

    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    .line 57
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 58
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 59
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 60
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 61
    return-object v1
.end method
