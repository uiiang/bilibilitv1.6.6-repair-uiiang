.class public Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;
.super Landroid/support/v7/widget/RecyclerView$v;
.source "CompactVideoHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder$Companion;


# instance fields
.field public final a:Landroid/view/View;

.field private badgeView:Landroid/widget/TextView;

.field private coverImageView:Lcom/bilibili/tv/widget/ScalableImageView;

.field private danmakuView:Landroid/widget/TextView;

.field private durationView:Landroid/widget/TextView;

.field private playCountView:Landroid/widget/TextView;

.field private pubdateView:Landroid/widget/TextView;

.field private rootLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

.field private titleView:Landroid/widget/TextView;

.field private upView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 113
    new-instance v0, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder$Companion;-><init>(Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder$1;)V

    sput-object v0, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->Companion:Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 32
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$v;-><init>(Landroid/view/View;)V

    .line 33
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->a:Landroid/view/View;

    .line 34
    const v0, 0x7f0800a1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/ScalableImageView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->coverImageView:Lcom/bilibili/tv/widget/ScalableImageView;

    .line 35
    const v0, 0x7f080132

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->titleView:Landroid/widget/TextView;

    .line 36
    const v0, 0x7f08013f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->upView:Landroid/widget/TextView;

    .line 37
    const v0, 0x7f0800d4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->playCountView:Landroid/widget/TextView;

    .line 38
    const v0, 0x7f08006c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->danmakuView:Landroid/widget/TextView;

    .line 39
    const v0, 0x7f0801af

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->pubdateView:Landroid/widget/TextView;

    .line 40
    const v0, 0x7f0801a6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->durationView:Landroid/widget/TextView;

    .line 41
    const v0, 0x7f0801d8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->badgeView:Landroid/widget/TextView;

    move-object v0, p1

    .line 42
    check-cast v0, Lcom/bilibili/tv/widget/DrawLinearLayout;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->rootLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    .line 43
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->rootLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    const v1, 0x7f0700e8

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setUpDrawable(I)V

    .line 45
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 46
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060120

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 47
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0500a7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 49
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0700b2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 50
    invoke-virtual {v3, v6, v6, v1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 51
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v2, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 52
    iget-object v4, p0, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->upView:Landroid/widget/TextView;

    invoke-virtual {v4, v3, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 54
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0700b1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 55
    invoke-virtual {v3, v6, v6, v1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 56
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v2, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 57
    iget-object v4, p0, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->playCountView:Landroid/widget/TextView;

    invoke-virtual {v4, v3, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 59
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0700b0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 60
    invoke-virtual {v0, v6, v6, v1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 61
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v2, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 62
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->danmakuView:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 63
    return-void
.end method


# virtual methods
.method public getBadgeView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->badgeView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getCoverImageView()Lcom/bilibili/tv/widget/ScalableImageView;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->coverImageView:Lcom/bilibili/tv/widget/ScalableImageView;

    return-object v0
.end method

.method public getDanmakuView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->danmakuView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getDurationView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->durationView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getPlayCountView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->playCountView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getPubdateView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->pubdateView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getRootLayout()Lcom/bilibili/tv/widget/DrawLinearLayout;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->rootLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    return-object v0
.end method

.method public getTitleView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->titleView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getUpView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->upView:Landroid/widget/TextView;

    return-object v0
.end method
