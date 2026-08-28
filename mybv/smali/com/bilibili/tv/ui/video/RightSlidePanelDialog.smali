.class public Lcom/bilibili/tv/ui/video/RightSlidePanelDialog;
.super Landroid/app/Dialog;
.source "RightSlidePanelDialog.java"


# instance fields
.field private activity:Landroid/app/Activity;

.field private content:Landroid/view/View;

.field private widthRatio:F


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 27
    const v0, 0x3ecccccd    # 0.4f

    invoke-direct {p0, p1, v0}, Lcom/bilibili/tv/ui/video/RightSlidePanelDialog;-><init>(Landroid/app/Activity;F)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;F)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 32
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/RightSlidePanelDialog;->activity:Landroid/app/Activity;

    .line 33
    iput p2, p0, Lcom/bilibili/tv/ui/video/RightSlidePanelDialog;->widthRatio:F

    .line 34
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/16 v4, 0x600

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 38
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 39
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/RightSlidePanelDialog;->requestWindowFeature(I)Z

    .line 40
    const v0, 0x7f0a00b7

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/RightSlidePanelDialog;->setContentView(I)V

    .line 43
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/RightSlidePanelDialog;->content:Landroid/view/View;

    if-eqz v0, :cond_27

    .line 44
    const v0, 0x7f080263

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/RightSlidePanelDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 45
    instance-of v1, v0, Landroid/widget/FrameLayout;

    if-eqz v1, :cond_27

    .line 46
    check-cast v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/RightSlidePanelDialog;->content:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 50
    :cond_27
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/video/RightSlidePanelDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 51
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 53
    const v1, 0x7f0d0179

    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 54
    invoke-virtual {v0, v4, v4}, Landroid/view/Window;->setFlags(II)V

    .line 58
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 59
    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 60
    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 61
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 63
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 64
    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 67
    const v0, 0x7f080262

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/RightSlidePanelDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 68
    if-eqz v0, :cond_70

    .line 69
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/video/RightSlidePanelDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 70
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    int-to-float v1, v1

    iget v2, p0, Lcom/bilibili/tv/ui/video/RightSlidePanelDialog;->widthRatio:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 74
    :cond_70
    const v0, 0x7f0801c3

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/RightSlidePanelDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 75
    if-eqz v0, :cond_81

    .line 76
    new-instance v1, Lcom/bilibili/tv/ui/video/RightSlidePanelDialog$1;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/video/RightSlidePanelDialog$1;-><init>(Lcom/bilibili/tv/ui/video/RightSlidePanelDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    :cond_81
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x4

    if-ne p1, v0, :cond_8

    .line 95
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/video/RightSlidePanelDialog;->dismiss()V

    .line 96
    const/4 v0, 0x1

    .line 98
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
    .line 89
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/RightSlidePanelDialog;->content:Landroid/view/View;

    .line 90
    return-void
.end method
