.class public final Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;
.super Landroid/widget/FrameLayout;
.source "AspectRatioFrameLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout$AspectRatioListener;,
        Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout$AspectRatioUpdateDispatcher;,
        Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout$ResizeMode;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final MAX_ASPECT_RATIO_DEFORMATION_FRACTION:F = 0.01f

.field public static final RESIZE_MODE_FILL:I = 0x3

.field public static final RESIZE_MODE_FIT:I = 0x0

.field public static final RESIZE_MODE_FIXED_HEIGHT:I = 0x2

.field public static final RESIZE_MODE_FIXED_WIDTH:I = 0x1

.field public static final RESIZE_MODE_ZOOM:I = 0x4


# instance fields
.field private aspectRatioListener:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout$AspectRatioListener;

.field private final aspectRatioUpdateDispatcher:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout$AspectRatioUpdateDispatcher;

.field private resizeMode:I

.field private videoAspectRatio:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 109
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 110
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 113
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 114
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->resizeMode:I

    .line 115
    if-eqz p2, :cond_24

    .line 116
    nop

    .line 118
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget-object v2, Lcom/google/android/exoplayer2/ui/R$styleable;->AspectRatioFrameLayout:[I

    .line 119
    invoke-virtual {v1, p2, v2, v0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 121
    .local v1, "a":Landroid/content/res/TypedArray;
    :try_start_13
    sget v2, Lcom/google/android/exoplayer2/ui/R$styleable;->AspectRatioFrameLayout_resize_mode:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->resizeMode:I
    :try_end_1b
    .catchall {:try_start_13 .. :try_end_1b} :catchall_1f

    .line 123
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 124
    goto :goto_24

    .line 123
    :catchall_1f
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 124
    throw v0

    .line 126
    .end local v1    # "a":Landroid/content/res/TypedArray;
    :cond_24
    :goto_24
    new-instance v0, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout$AspectRatioUpdateDispatcher;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout$AspectRatioUpdateDispatcher;-><init>(Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout$1;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->aspectRatioUpdateDispatcher:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout$AspectRatioUpdateDispatcher;

    .line 127
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;)Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout$AspectRatioListener;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    .line 40
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->aspectRatioListener:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout$AspectRatioListener;

    return-object v0
.end method


# virtual methods
.method public getResizeMode()I
    .registers 2

    .line 153
    iget v0, p0, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->resizeMode:I

    return v0
.end method

.method protected onMeasure(II)V
    .registers 10
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 170
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 171
    iget v0, p0, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->videoAspectRatio:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_b

    .line 173
    return-void

    .line 176
    :cond_b
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->getMeasuredWidth()I

    move-result v0

    .line 177
    .local v0, "width":I
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->getMeasuredHeight()I

    move-result v2

    .line 178
    .local v2, "height":I
    int-to-float v3, v0

    int-to-float v4, v2

    div-float/2addr v3, v4

    .line 179
    .local v3, "viewAspectRatio":F
    iget v4, p0, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->videoAspectRatio:F

    div-float/2addr v4, v3

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v4, v5

    .line 180
    .local v4, "aspectDeformation":F
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const v6, 0x3c23d70a    # 0.01f

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_30

    .line 182
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->aspectRatioUpdateDispatcher:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout$AspectRatioUpdateDispatcher;

    iget v5, p0, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->videoAspectRatio:F

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v3, v6}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout$AspectRatioUpdateDispatcher;->scheduleUpdate(FFZ)V

    .line 183
    return-void

    .line 186
    :cond_30
    iget v5, p0, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->resizeMode:I

    packed-switch v5, :pswitch_data_7c

    :pswitch_35
    goto :goto_65

    .line 194
    :pswitch_36
    cmpl-float v1, v4, v1

    if-lez v1, :cond_41

    .line 195
    int-to-float v1, v2

    iget v5, p0, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->videoAspectRatio:F

    mul-float v1, v1, v5

    float-to-int v0, v1

    goto :goto_65

    .line 197
    :cond_41
    int-to-float v1, v0

    iget v5, p0, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->videoAspectRatio:F

    div-float/2addr v1, v5

    float-to-int v2, v1

    .line 199
    goto :goto_65

    .line 191
    :pswitch_47
    int-to-float v1, v2

    iget v5, p0, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->videoAspectRatio:F

    mul-float v1, v1, v5

    float-to-int v0, v1

    .line 192
    goto :goto_65

    .line 188
    :pswitch_4e
    int-to-float v1, v0

    iget v5, p0, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->videoAspectRatio:F

    div-float/2addr v1, v5

    float-to-int v2, v1

    .line 189
    goto :goto_65

    .line 201
    :pswitch_54
    cmpl-float v1, v4, v1

    if-lez v1, :cond_5e

    .line 202
    int-to-float v1, v0

    iget v5, p0, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->videoAspectRatio:F

    div-float/2addr v1, v5

    float-to-int v2, v1

    goto :goto_65

    .line 204
    :cond_5e
    int-to-float v1, v2

    iget v5, p0, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->videoAspectRatio:F

    mul-float v1, v1, v5

    float-to-int v0, v1

    .line 206
    nop

    .line 212
    :goto_65
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->aspectRatioUpdateDispatcher:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout$AspectRatioUpdateDispatcher;

    iget v5, p0, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->videoAspectRatio:F

    const/4 v6, 0x1

    invoke-virtual {v1, v5, v3, v6}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout$AspectRatioUpdateDispatcher;->scheduleUpdate(FFZ)V

    .line 213
    nop

    .line 214
    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 215
    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 213
    invoke-super {p0, v5, v1}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 216
    return-void

    :pswitch_data_7c
    .packed-switch 0x0
        :pswitch_54
        :pswitch_4e
        :pswitch_47
        :pswitch_35
        :pswitch_36
    .end packed-switch
.end method

.method public setAspectRatio(F)V
    .registers 3
    .param p1, "widthHeightRatio"    # F

    .line 135
    iget v0, p0, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->videoAspectRatio:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_b

    .line 136
    iput p1, p0, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->videoAspectRatio:F

    .line 137
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->requestLayout()V

    .line 139
    :cond_b
    return-void
.end method

.method public setAspectRatioListener(Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout$AspectRatioListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout$AspectRatioListener;

    .line 148
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->aspectRatioListener:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout$AspectRatioListener;

    .line 149
    return-void
.end method

.method public setResizeMode(I)V
    .registers 3
    .param p1, "resizeMode"    # I

    .line 162
    iget v0, p0, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->resizeMode:I

    if-eq v0, p1, :cond_9

    .line 163
    iput p1, p0, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->resizeMode:I

    .line 164
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->requestLayout()V

    .line 166
    :cond_9
    return-void
.end method
