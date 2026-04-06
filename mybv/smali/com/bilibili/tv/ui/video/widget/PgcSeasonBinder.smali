.class public Lcom/bilibili/tv/ui/video/widget/PgcSeasonBinder;
.super Ljava/lang/Object;
.source "PgcSeasonBinder.java"

# interfaces
.implements Lcom/bilibili/tv/ui/video/widget/VideoCardBinder;


# static fields
.field private static final TAG:Ljava/lang/String; = "PgcBinder"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private bindBadge(Landroid/widget/TextView;Lcom/bilibili/tv/api/video/PgcInfo$Season;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 103
    iget-object v0, p2, Lcom/bilibili/tv/api/video/PgcInfo$Season;->badgeInfo:Lcom/bilibili/tv/api/video/PgcInfo$BadgeInfo;

    if-eqz v0, :cond_6c

    iget-object v0, p2, Lcom/bilibili/tv/api/video/PgcInfo$Season;->badgeInfo:Lcom/bilibili/tv/api/video/PgcInfo$BadgeInfo;

    iget-object v0, v0, Lcom/bilibili/tv/api/video/PgcInfo$BadgeInfo;->text:Ljava/lang/String;

    if-eqz v0, :cond_6c

    iget-object v0, p2, Lcom/bilibili/tv/api/video/PgcInfo$Season;->badgeInfo:Lcom/bilibili/tv/api/video/PgcInfo$BadgeInfo;

    iget-object v0, v0, Lcom/bilibili/tv/api/video/PgcInfo$BadgeInfo;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6c

    .line 104
    iget-object v0, p2, Lcom/bilibili/tv/api/video/PgcInfo$Season;->badgeInfo:Lcom/bilibili/tv/api/video/PgcInfo$BadgeInfo;

    iget-object v0, v0, Lcom/bilibili/tv/api/video/PgcInfo$BadgeInfo;->text:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/MainApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 106
    const/high16 v1, 0x40800000    # 4.0f

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    .line 108
    :try_start_31
    iget-object v1, p2, Lcom/bilibili/tv/api/video/PgcInfo$Season;->badgeInfo:Lcom/bilibili/tv/api/video/PgcInfo$BadgeInfo;

    iget-object v1, v1, Lcom/bilibili/tv/api/video/PgcInfo$BadgeInfo;->bgColor:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    .line 109
    const v2, 0xffffff

    and-int/2addr v1, v2

    const/high16 v2, -0x67000000

    or-int/2addr v1, v2

    .line 110
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 111
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 112
    invoke-virtual {v2, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 113
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 114
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_52} :catch_56

    .line 122
    :goto_52
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 126
    :goto_55
    return-void

    .line 115
    :catch_56
    move-exception v1

    .line 116
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 117
    invoke-virtual {v1, v4}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 118
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 119
    const v0, -0x66048d67    # -2.5999077E-23f

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 120
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_52

    .line 124
    :cond_6c
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_55
.end method

.method private bindCover(Lcom/bilibili/tv/widget/ScalableImageView;Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 129
    if-eqz p2, :cond_15

    .line 130
    invoke-static {}, Lbl/nv;->a()Lbl/nv;

    move-result-object v0

    .line 131
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bilibili/tv/MainApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 132
    invoke-static {v1, p2}, Lbl/abd;->get_thumb_url_c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 133
    invoke-virtual {v0, v1, p1}, Lbl/nv;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 135
    :cond_15
    return-void
.end method


# virtual methods
.method public bind(Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;Ljava/lang/Object;I)V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 18
    instance-of v0, p2, Lcom/bilibili/tv/api/video/PgcInfo$Season;

    if-nez v0, :cond_8

    .line 57
    :goto_7
    return-void

    .line 21
    :cond_8
    check-cast p2, Lcom/bilibili/tv/api/video/PgcInfo$Season;

    .line 23
    const-string v0, ""

    .line 24
    iget-object v1, p2, Lcom/bilibili/tv/api/video/PgcInfo$Season;->title:Ljava/lang/String;

    if-eqz v1, :cond_c1

    iget-object v1, p2, Lcom/bilibili/tv/api/video/PgcInfo$Season;->title:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_c1

    .line 25
    iget-object v0, p2, Lcom/bilibili/tv/api/video/PgcInfo$Season;->title:Ljava/lang/String;

    .line 26
    iget-object v1, p2, Lcom/bilibili/tv/api/video/PgcInfo$Season;->seasonTitle:Ljava/lang/String;

    if-eqz v1, :cond_3f

    iget-object v1, p2, Lcom/bilibili/tv/api/video/PgcInfo$Season;->seasonTitle:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3f

    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p2, Lcom/bilibili/tv/api/video/PgcInfo$Season;->seasonTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 32
    :cond_3f
    :goto_3f
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4c

    .line 33
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->getTitleView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    :cond_4c
    iget-object v0, p2, Lcom/bilibili/tv/api/video/PgcInfo$Season;->newEp:Lcom/bilibili/tv/api/video/PgcInfo$SeasonNewEp;

    if-eqz v0, :cond_c9

    iget-object v0, p2, Lcom/bilibili/tv/api/video/PgcInfo$Season;->newEp:Lcom/bilibili/tv/api/video/PgcInfo$SeasonNewEp;

    iget-object v0, v0, Lcom/bilibili/tv/api/video/PgcInfo$SeasonNewEp;->indexShow:Ljava/lang/String;

    if-eqz v0, :cond_c9

    .line 37
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->getUpView()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p2, Lcom/bilibili/tv/api/video/PgcInfo$Season;->newEp:Lcom/bilibili/tv/api/video/PgcInfo$SeasonNewEp;

    iget-object v1, v1, Lcom/bilibili/tv/api/video/PgcInfo$SeasonNewEp;->indexShow:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->getUpView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 44
    :goto_68
    iget-object v0, p2, Lcom/bilibili/tv/api/video/PgcInfo$Season;->iconFont:Lcom/bilibili/tv/api/video/PgcInfo$IconFont;

    if-eqz v0, :cond_da

    iget-object v0, p2, Lcom/bilibili/tv/api/video/PgcInfo$Season;->iconFont:Lcom/bilibili/tv/api/video/PgcInfo$IconFont;

    iget-object v0, v0, Lcom/bilibili/tv/api/video/PgcInfo$IconFont;->text:Ljava/lang/String;

    if-eqz v0, :cond_da

    .line 45
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->getPubdateView()Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p2, Lcom/bilibili/tv/api/video/PgcInfo$Season;->iconFont:Lcom/bilibili/tv/api/video/PgcInfo$IconFont;

    iget-object v2, v2, Lcom/bilibili/tv/api/video/PgcInfo$IconFont;->text:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u64ad\u653e"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->getPubdateView()Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 51
    :goto_98
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->getPlayCountView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 52
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->getDanmakuInImageView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 53
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->getDurationView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 55
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->getBadgeView()Landroid/widget/TextView;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/bilibili/tv/ui/video/widget/PgcSeasonBinder;->bindBadge(Landroid/widget/TextView;Lcom/bilibili/tv/api/video/PgcInfo$Season;)V

    .line 56
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->getCoverImageView()Lcom/bilibili/tv/widget/ScalableImageView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/bilibili/tv/api/video/PgcInfo$Season;->getBestCover()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p3}, Lcom/bilibili/tv/ui/video/widget/PgcSeasonBinder;->bindCover(Lcom/bilibili/tv/widget/ScalableImageView;Ljava/lang/String;I)V

    goto/16 :goto_7

    .line 29
    :cond_c1
    iget-object v1, p2, Lcom/bilibili/tv/api/video/PgcInfo$Season;->seasonTitle:Ljava/lang/String;

    if-eqz v1, :cond_3f

    .line 30
    iget-object v0, p2, Lcom/bilibili/tv/api/video/PgcInfo$Season;->seasonTitle:Ljava/lang/String;

    goto/16 :goto_3f

    .line 40
    :cond_c9
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->getUpView()Landroid/widget/TextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->getUpView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_68

    .line 48
    :cond_da
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->getPubdateView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_98
.end method

.method public bindCompact(Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;Ljava/lang/Object;I)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    const/16 v3, 0x8

    .line 61
    instance-of v0, p2, Lcom/bilibili/tv/api/video/PgcInfo$Season;

    if-nez v0, :cond_9

    .line 100
    :goto_8
    return-void

    .line 64
    :cond_9
    check-cast p2, Lcom/bilibili/tv/api/video/PgcInfo$Season;

    .line 66
    const-string v0, ""

    .line 67
    iget-object v1, p2, Lcom/bilibili/tv/api/video/PgcInfo$Season;->title:Ljava/lang/String;

    if-eqz v1, :cond_c8

    iget-object v1, p2, Lcom/bilibili/tv/api/video/PgcInfo$Season;->title:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_c8

    .line 68
    iget-object v0, p2, Lcom/bilibili/tv/api/video/PgcInfo$Season;->title:Ljava/lang/String;

    .line 69
    iget-object v1, p2, Lcom/bilibili/tv/api/video/PgcInfo$Season;->seasonTitle:Ljava/lang/String;

    if-eqz v1, :cond_40

    iget-object v1, p2, Lcom/bilibili/tv/api/video/PgcInfo$Season;->seasonTitle:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_40

    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p2, Lcom/bilibili/tv/api/video/PgcInfo$Season;->seasonTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 75
    :cond_40
    :goto_40
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4d

    .line 76
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->getTitleView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    :cond_4d
    iget-object v0, p2, Lcom/bilibili/tv/api/video/PgcInfo$Season;->newEp:Lcom/bilibili/tv/api/video/PgcInfo$SeasonNewEp;

    if-eqz v0, :cond_d0

    iget-object v0, p2, Lcom/bilibili/tv/api/video/PgcInfo$Season;->newEp:Lcom/bilibili/tv/api/video/PgcInfo$SeasonNewEp;

    iget-object v0, v0, Lcom/bilibili/tv/api/video/PgcInfo$SeasonNewEp;->indexShow:Ljava/lang/String;

    if-eqz v0, :cond_d0

    .line 80
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->getUpView()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p2, Lcom/bilibili/tv/api/video/PgcInfo$Season;->newEp:Lcom/bilibili/tv/api/video/PgcInfo$SeasonNewEp;

    iget-object v1, v1, Lcom/bilibili/tv/api/video/PgcInfo$SeasonNewEp;->indexShow:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->getUpView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 82
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->getUpView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 87
    :goto_70
    iget-object v0, p2, Lcom/bilibili/tv/api/video/PgcInfo$Season;->iconFont:Lcom/bilibili/tv/api/video/PgcInfo$IconFont;

    if-eqz v0, :cond_d8

    iget-object v0, p2, Lcom/bilibili/tv/api/video/PgcInfo$Season;->iconFont:Lcom/bilibili/tv/api/video/PgcInfo$IconFont;

    iget-object v0, v0, Lcom/bilibili/tv/api/video/PgcInfo$IconFont;->text:Ljava/lang/String;

    if-eqz v0, :cond_d8

    .line 88
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->getPubdateView()Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p2, Lcom/bilibili/tv/api/video/PgcInfo$Season;->iconFont:Lcom/bilibili/tv/api/video/PgcInfo$IconFont;

    iget-object v2, v2, Lcom/bilibili/tv/api/video/PgcInfo$IconFont;->text:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u64ad\u653e"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->getPubdateView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 94
    :goto_9f
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->getPlayCountView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 95
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->getDanmakuView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 96
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->getDurationView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 98
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->getBadgeView()Landroid/widget/TextView;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/bilibili/tv/ui/video/widget/PgcSeasonBinder;->bindBadge(Landroid/widget/TextView;Lcom/bilibili/tv/api/video/PgcInfo$Season;)V

    .line 99
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->getCoverImageView()Lcom/bilibili/tv/widget/ScalableImageView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/bilibili/tv/api/video/PgcInfo$Season;->getBestCover()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p3}, Lcom/bilibili/tv/ui/video/widget/PgcSeasonBinder;->bindCover(Lcom/bilibili/tv/widget/ScalableImageView;Ljava/lang/String;I)V

    goto/16 :goto_8

    .line 72
    :cond_c8
    iget-object v1, p2, Lcom/bilibili/tv/api/video/PgcInfo$Season;->seasonTitle:Ljava/lang/String;

    if-eqz v1, :cond_40

    .line 73
    iget-object v0, p2, Lcom/bilibili/tv/api/video/PgcInfo$Season;->seasonTitle:Ljava/lang/String;

    goto/16 :goto_40

    .line 84
    :cond_d0
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->getUpView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_70

    .line 91
    :cond_d8
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->getPubdateView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_9f
.end method

.method public getCoverUrl(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 148
    const/4 v0, 0x0

    .line 149
    instance-of v1, p1, Lcom/bilibili/tv/api/video/PgcInfo$Season;

    if-eqz v1, :cond_b

    .line 150
    check-cast p1, Lcom/bilibili/tv/api/video/PgcInfo$Season;

    invoke-virtual {p1}, Lcom/bilibili/tv/api/video/PgcInfo$Season;->getBestCover()Ljava/lang/String;

    move-result-object v0

    .line 152
    :cond_b
    return-object v0
.end method

.method public getVideoId(Ljava/lang/Object;)J
    .locals 3

    .prologue
    .line 139
    const-wide/16 v0, -0x1

    .line 140
    instance-of v2, p1, Lcom/bilibili/tv/api/video/PgcInfo$Season;

    if-eqz v2, :cond_b

    .line 141
    check-cast p1, Lcom/bilibili/tv/api/video/PgcInfo$Season;

    iget v0, p1, Lcom/bilibili/tv/api/video/PgcInfo$Season;->seasonId:I

    int-to-long v0, v0

    .line 143
    :cond_b
    return-wide v0
.end method

.method public isCurrentSeason(Ljava/lang/Object;I)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 167
    .line 168
    instance-of v1, p1, Lcom/bilibili/tv/api/video/PgcInfo$Season;

    if-eqz v1, :cond_c

    .line 169
    check-cast p1, Lcom/bilibili/tv/api/video/PgcInfo$Season;

    iget v1, p1, Lcom/bilibili/tv/api/video/PgcInfo$Season;->seasonId:I

    if-ne v1, p2, :cond_c

    const/4 v0, 0x1

    .line 171
    :cond_c
    return v0
.end method

.method public isCurrentVideo(Ljava/lang/Object;J)Z
    .locals 1

    .prologue
    .line 157
    const/4 v0, 0x0

    return v0
.end method

.method public isCurrentVideoByCid(Ljava/lang/Object;J)Z
    .locals 1

    .prologue
    .line 162
    const/4 v0, 0x0

    return v0
.end method
