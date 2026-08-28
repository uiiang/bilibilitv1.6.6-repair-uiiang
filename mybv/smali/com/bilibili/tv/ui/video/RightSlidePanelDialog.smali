.class public Lcom/bilibili/tv/ui/video/RightSlidePanelDialog;
.super Landroid/app/Dialog;
.source "RightSlidePanelDialog.java"


# instance fields
.field private activity:Landroid/app/Activity;

.field private content:Landroid/view/View;

.field private useDp:Z

.field private widthDp:I

.field private widthRatio:F


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 29
    const v0, 0x3ecccccd    # 0.4f

    invoke-direct {p0, p1, v0}, Lcom/bilibili/tv/ui/video/RightSlidePanelDialog;-><init>(Landroid/app/Activity;F)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;F)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 37
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/RightSlidePanelDialog;->activity:Landroid/app/Activity;

    .line 38
    iput p2, p0, Lcom/bilibili/tv/ui/video/RightSlidePanelDialog;->widthRatio:F

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;IZ)V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 46
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/RightSlidePanelDialog;->activity:Landroid/app/Activity;

    .line 47
    iput p2, p0, Lcom/bilibili/tv/ui/video/RightSlidePanelDialog;->widthDp:I

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/video/RightSlidePanelDialog;->useDp:Z

    .line 49
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/16 v4, 0x600

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 53
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 54
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/RightSlidePanelDialog;->requestWindowFeature(I)Z

    .line 55
    const v0, 0x7f0a00b7

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/RightSlidePanelDialog;->setContentView(I)V

    .line 58
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/RightSlidePanelDialog;->content:Landroid/view/View;

    if-eqz v0, :cond_27

    .line 59
    const v0, 0x7f080263

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/RightSlidePanelDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 60
    instance-of v1, v0, Landroid/widget/FrameLayout;

    if-eqz v1, :cond_27

    .line 61
    check-cast v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/RightSlidePanelDialog;->content:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 65
    :cond_27
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/video/RightSlidePanelDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 66
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 68
    const v1, 0x7f0d0179

    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 69
    invoke-virtual {v0, v4, v4}, Landroid/view/Window;->setFlags(II)V

    .line 73
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 74
    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 75
    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 76
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 78
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 79
    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 82
    const v0, 0x7f080262

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/RightSlidePanelDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 83
    if-eqz v1, :cond_74

    .line 84
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/video/RightSlidePanelDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 86
    iget-boolean v2, p0, Lcom/bilibili/tv/ui/video/RightSlidePanelDialog;->useDp:Z

    if-eqz v2, :cond_86

    .line 87
    iget v2, p0, Lcom/bilibili/tv/ui/video/RightSlidePanelDialog;->widthDp:I

    int-to-float v2, v2

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 91
    :goto_6e
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 95
    :cond_74
    const v0, 0x7f0801c3

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/RightSlidePanelDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 96
    if-eqz v0, :cond_85

    .line 97
    new-instance v1, Lcom/bilibili/tv/ui/video/RightSlidePanelDialog$1;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/video/RightSlidePanelDialog$1;-><init>(Lcom/bilibili/tv/ui/video/RightSlidePanelDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    :cond_85
    return-void

    .line 89
    :cond_86
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    iget v2, p0, Lcom/bilibili/tv/ui/video/RightSlidePanelDialog;->widthRatio:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_6e
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x4

    if-ne p1, v0, :cond_8

    .line 116
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/video/RightSlidePanelDialog;->dismiss()V

    .line 117
    const/4 v0, 0x1

    .line 119
    :goto_7
    return v0

    :cond_8
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_7
.end method

.method public setContent(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/RightSlidePanelDialog;->content:Landroid/view/View;

    .line 111
    return-void
.end method
