.class public final Lcom/bilibili/tv/ui/video/widget/VideoCardIcons;
.super Ljava/lang/Object;
.source "VideoCardIcons.java"


# static fields
.field public static final SIZE_COMPACT:I = 0x7f060120

.field public static final SIZE_WIDE:I = 0x7f060179


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method public static apply(Landroid/content/Context;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;II)V
    .locals 3

    .prologue
    .line 32
    if-nez p0, :cond_3

    .line 40
    :goto_2
    return-void

    .line 35
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 36
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 37
    const v2, 0x7f0700b2

    invoke-static {p0, p1, v2, v0, v1}, Lcom/bilibili/tv/ui/video/widget/VideoCardIcons;->setCompoundDrawable(Landroid/content/Context;Landroid/widget/TextView;III)V

    .line 38
    const v2, 0x7f0700b1

    invoke-static {p0, p2, v2, v0, v1}, Lcom/bilibili/tv/ui/video/widget/VideoCardIcons;->setCompoundDrawable(Landroid/content/Context;Landroid/widget/TextView;III)V

    .line 39
    const v2, 0x7f0700b0

    invoke-static {p0, p3, v2, v0, v1}, Lcom/bilibili/tv/ui/video/widget/VideoCardIcons;->setCompoundDrawable(Landroid/content/Context;Landroid/widget/TextView;III)V

    goto :goto_2
.end method

.method public static clear(Landroid/widget/TextView;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 102
    if-eqz p0, :cond_6

    .line 103
    invoke-virtual {p0, v0, v0, v0, v0}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 105
    :cond_6
    return-void
.end method

.method public static isEmpty(Ljava/lang/CharSequence;)Z
    .locals 1

    .prologue
    .line 108
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private static setCompoundDrawable(Landroid/content/Context;Landroid/widget/TextView;III)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 91
    if-nez p1, :cond_5

    .line 98
    :goto_4
    return-void

    .line 94
    :cond_5
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 95
    invoke-virtual {v0, v1, v1, p3, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 96
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p4, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 97
    invoke-virtual {p1, v0, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_4
.end method

.method public static setDanmaku(Landroid/content/Context;Landroid/widget/TextView;II)V
    .locals 3

    .prologue
    .line 82
    if-nez p0, :cond_3

    .line 88
    :goto_2
    return-void

    .line 85
    :cond_3
    const v0, 0x7f0700b0

    .line 86
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 87
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 85
    invoke-static {p0, p1, v0, v1, v2}, Lcom/bilibili/tv/ui/video/widget/VideoCardIcons;->setCompoundDrawable(Landroid/content/Context;Landroid/widget/TextView;III)V

    goto :goto_2
.end method

.method public static setDanmaku(Landroid/widget/TextView;II)V
    .locals 1

    .prologue
    .line 57
    if-nez p0, :cond_3

    .line 61
    :goto_2
    return-void

    .line 60
    :cond_3
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0, p1, p2}, Lcom/bilibili/tv/ui/video/widget/VideoCardIcons;->setDanmaku(Landroid/content/Context;Landroid/widget/TextView;II)V

    goto :goto_2
.end method

.method public static setPlay(Landroid/content/Context;Landroid/widget/TextView;II)V
    .locals 3

    .prologue
    .line 73
    if-nez p0, :cond_3

    .line 79
    :goto_2
    return-void

    .line 76
    :cond_3
    const v0, 0x7f0700b1

    .line 77
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 78
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 76
    invoke-static {p0, p1, v0, v1, v2}, Lcom/bilibili/tv/ui/video/widget/VideoCardIcons;->setCompoundDrawable(Landroid/content/Context;Landroid/widget/TextView;III)V

    goto :goto_2
.end method

.method public static setPlay(Landroid/widget/TextView;II)V
    .locals 1

    .prologue
    .line 50
    if-nez p0, :cond_3

    .line 54
    :goto_2
    return-void

    .line 53
    :cond_3
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0, p1, p2}, Lcom/bilibili/tv/ui/video/widget/VideoCardIcons;->setPlay(Landroid/content/Context;Landroid/widget/TextView;II)V

    goto :goto_2
.end method

.method public static setUp(Landroid/content/Context;Landroid/widget/TextView;II)V
    .locals 3

    .prologue
    .line 64
    if-nez p0, :cond_3

    .line 70
    :goto_2
    return-void

    .line 67
    :cond_3
    const v0, 0x7f0700b2

    .line 68
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 69
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 67
    invoke-static {p0, p1, v0, v1, v2}, Lcom/bilibili/tv/ui/video/widget/VideoCardIcons;->setCompoundDrawable(Landroid/content/Context;Landroid/widget/TextView;III)V

    goto :goto_2
.end method

.method public static setUp(Landroid/widget/TextView;II)V
    .locals 1

    .prologue
    .line 43
    if-nez p0, :cond_3

    .line 47
    :goto_2
    return-void

    .line 46
    :cond_3
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0, p1, p2}, Lcom/bilibili/tv/ui/video/widget/VideoCardIcons;->setUp(Landroid/content/Context;Landroid/widget/TextView;II)V

    goto :goto_2
.end method

.method public static setVisible(Landroid/widget/TextView;Z)V
    .locals 1

    .prologue
    .line 112
    if-eqz p0, :cond_8

    .line 113
    if-eqz p1, :cond_9

    const/4 v0, 0x0

    :goto_5
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 115
    :cond_8
    return-void

    .line 113
    :cond_9
    const/16 v0, 0x8

    goto :goto_5
.end method
