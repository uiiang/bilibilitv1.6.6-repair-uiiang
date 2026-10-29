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

.field private indexBadgeView:Landroid/widget/TextView;

.field private playCountView:Landroid/widget/TextView;

.field private pubdateView:Landroid/widget/TextView;

.field private rootLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

.field private titleView:Landroid/widget/TextView;

.field private upView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 97
    new-instance v0, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder$Companion;-><init>(Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder$1;)V

    sput-object v0, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->Companion:Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 26
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$v;-><init>(Landroid/view/View;)V

    .line 27
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->a:Landroid/view/View;

    .line 28
    const v0, 0x7f0800a1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/ScalableImageView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->coverImageView:Lcom/bilibili/tv/widget/ScalableImageView;

    .line 29
    const v0, 0x7f080132

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->titleView:Landroid/widget/TextView;

    .line 30
    const v0, 0x7f08013f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->upView:Landroid/widget/TextView;

    .line 31
    const v0, 0x7f0800d4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->playCountView:Landroid/widget/TextView;

    .line 32
    const v0, 0x7f08006c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->danmakuView:Landroid/widget/TextView;

    .line 33
    const v0, 0x7f0801af

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->pubdateView:Landroid/widget/TextView;

    .line 34
    const v0, 0x7f0801a6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->durationView:Landroid/widget/TextView;

    .line 35
    const v0, 0x7f0801d8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->badgeView:Landroid/widget/TextView;

    .line 36
    const v0, 0x7f0801ea

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->indexBadgeView:Landroid/widget/TextView;

    move-object v0, p1

    .line 37
    check-cast v0, Lcom/bilibili/tv/widget/DrawLinearLayout;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->rootLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    .line 38
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->rootLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    const v1, 0x7f0700e8

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setUpDrawable(I)V

    .line 40
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 41
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->upView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->playCountView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->danmakuView:Landroid/widget/TextView;

    const v4, 0x7f060120

    const v5, 0x7f0500a7

    invoke-static/range {v0 .. v5}, Lcom/bilibili/tv/ui/video/widget/VideoCardIcons;->apply(Landroid/content/Context;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;II)V

    .line 43
    return-void
.end method


# virtual methods
.method public getBadgeView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->badgeView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getCoverImageView()Lcom/bilibili/tv/widget/ScalableImageView;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->coverImageView:Lcom/bilibili/tv/widget/ScalableImageView;

    return-object v0
.end method

.method public getDanmakuView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->danmakuView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getDurationView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->durationView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getIndexBadgeView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->indexBadgeView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getPlayCountView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->playCountView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getPubdateView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->pubdateView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getRootLayout()Lcom/bilibili/tv/widget/DrawLinearLayout;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->rootLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    return-object v0
.end method

.method public getTitleView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->titleView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getUpView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->upView:Landroid/widget/TextView;

    return-object v0
.end method
