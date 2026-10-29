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
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private bindBadge(Landroid/widget/TextView;Lcom/bilibili/tv/api/video/PgcInfo$Season;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 98
    iget-object v0, p2, Lcom/bilibili/tv/api/video/PgcInfo$Season;->badgeInfo:Lcom/bilibili/tv/api/video/PgcInfo$BadgeInfo;

    if-eqz v0, :cond_16

    iget-object v0, p2, Lcom/bilibili/tv/api/video/PgcInfo$Season;->badgeInfo:Lcom/bilibili/tv/api/video/PgcInfo$BadgeInfo;

    iget-object v0, v0, Lcom/bilibili/tv/api/video/PgcInfo$BadgeInfo;->text:Ljava/lang/String;

    .line 99
    :goto_9
    iget-object v2, p2, Lcom/bilibili/tv/api/video/PgcInfo$Season;->badgeInfo:Lcom/bilibili/tv/api/video/PgcInfo$BadgeInfo;

    if-eqz v2, :cond_11

    iget-object v1, p2, Lcom/bilibili/tv/api/video/PgcInfo$Season;->badgeInfo:Lcom/bilibili/tv/api/video/PgcInfo$BadgeInfo;

    iget-object v1, v1, Lcom/bilibili/tv/api/video/PgcInfo$BadgeInfo;->bgColor:Ljava/lang/String;

    .line 100
    :cond_11
    const/4 v2, 0x1

    invoke-static {p1, v0, v1, v2}, Lcom/bilibili/tv/ui/video/widget/VideoBadgeStyler;->apply(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 101
    return-void

    :cond_16
    move-object v0, v1

    .line 98
    goto :goto_9
.end method

.method private bindCover(Lcom/bilibili/tv/widget/ScalableImageView;Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x0

    invoke-static {v0, p1, p2}, Lcom/bilibili/tv/ui/video/widget/VideoCardCoverLoader;->load(Landroid/content/Context;Lcom/bilibili/tv/widget/ScalableImageView;Ljava/lang/String;)V

    .line 105
    return-void
.end method


# virtual methods
.method public bind(Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;Ljava/lang/Object;I)V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 13
    instance-of v0, p2, Lcom/bilibili/tv/api/video/PgcInfo$Season;

    if-nez v0, :cond_8

    .line 52
    :goto_7
    return-void

    .line 16
    :cond_8
    check-cast p2, Lcom/bilibili/tv/api/video/PgcInfo$Season;

    .line 18
    const-string v0, ""

    .line 19
    iget-object v1, p2, Lcom/bilibili/tv/api/video/PgcInfo$Season;->title:Ljava/lang/String;

    if-eqz v1, :cond_c1

    iget-object v1, p2, Lcom/bilibili/tv/api/video/PgcInfo$Season;->title:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_c1

    .line 20
    iget-object v0, p2, Lcom/bilibili/tv/api/video/PgcInfo$Season;->title:Ljava/lang/String;

    .line 21
    iget-object v1, p2, Lcom/bilibili/tv/api/video/PgcInfo$Season;->seasonTitle:Ljava/lang/String;

    if-eqz v1, :cond_3f

    iget-object v1, p2, Lcom/bilibili/tv/api/video/PgcInfo$Season;->seasonTitle:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3f

    .line 22
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

    .line 27
    :cond_3f
    :goto_3f
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4c

    .line 28
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->getTitleView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31
    :cond_4c
    iget-object v0, p2, Lcom/bilibili/tv/api/video/PgcInfo$Season;->newEp:Lcom/bilibili/tv/api/video/PgcInfo$SeasonNewEp;

    if-eqz v0, :cond_c9

    iget-object v0, p2, Lcom/bilibili/tv/api/video/PgcInfo$Season;->newEp:Lcom/bilibili/tv/api/video/PgcInfo$SeasonNewEp;

    iget-object v0, v0, Lcom/bilibili/tv/api/video/PgcInfo$SeasonNewEp;->indexShow:Ljava/lang/String;

    if-eqz v0, :cond_c9

    .line 32
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->getUpView()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p2, Lcom/bilibili/tv/api/video/PgcInfo$Season;->newEp:Lcom/bilibili/tv/api/video/PgcInfo$SeasonNewEp;

    iget-object v1, v1, Lcom/bilibili/tv/api/video/PgcInfo$SeasonNewEp;->indexShow:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->getUpView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 39
    :goto_68
    iget-object v0, p2, Lcom/bilibili/tv/api/video/PgcInfo$Season;->iconFont:Lcom/bilibili/tv/api/video/PgcInfo$IconFont;

    if-eqz v0, :cond_da

    iget-object v0, p2, Lcom/bilibili/tv/api/video/PgcInfo$Season;->iconFont:Lcom/bilibili/tv/api/video/PgcInfo$IconFont;

    iget-object v0, v0, Lcom/bilibili/tv/api/video/PgcInfo$IconFont;->text:Ljava/lang/String;

    if-eqz v0, :cond_da

    .line 40
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

    .line 41
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->getPubdateView()Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 46
    :goto_98
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->getPlayCountView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 47
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->getDanmakuInImageView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 48
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->getDurationView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 50
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->getBadgeView()Landroid/widget/TextView;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/bilibili/tv/ui/video/widget/PgcSeasonBinder;->bindBadge(Landroid/widget/TextView;Lcom/bilibili/tv/api/video/PgcInfo$Season;)V

    .line 51
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->getCoverImageView()Lcom/bilibili/tv/widget/ScalableImageView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/bilibili/tv/api/video/PgcInfo$Season;->getBestCover()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p3}, Lcom/bilibili/tv/ui/video/widget/PgcSeasonBinder;->bindCover(Lcom/bilibili/tv/widget/ScalableImageView;Ljava/lang/String;I)V

    goto/16 :goto_7

    .line 24
    :cond_c1
    iget-object v1, p2, Lcom/bilibili/tv/api/video/PgcInfo$Season;->seasonTitle:Ljava/lang/String;

    if-eqz v1, :cond_3f

    .line 25
    iget-object v0, p2, Lcom/bilibili/tv/api/video/PgcInfo$Season;->seasonTitle:Ljava/lang/String;

    goto/16 :goto_3f

    .line 35
    :cond_c9
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->getUpView()Landroid/widget/TextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->getUpView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_68

    .line 43
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

    .line 56
    instance-of v0, p2, Lcom/bilibili/tv/api/video/PgcInfo$Season;

    if-nez v0, :cond_9

    .line 95
    :goto_8
    return-void

    .line 59
    :cond_9
    check-cast p2, Lcom/bilibili/tv/api/video/PgcInfo$Season;

    .line 61
    const-string v0, ""

    .line 62
    iget-object v1, p2, Lcom/bilibili/tv/api/video/PgcInfo$Season;->title:Ljava/lang/String;

    if-eqz v1, :cond_c8

    iget-object v1, p2, Lcom/bilibili/tv/api/video/PgcInfo$Season;->title:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_c8

    .line 63
    iget-object v0, p2, Lcom/bilibili/tv/api/video/PgcInfo$Season;->title:Ljava/lang/String;

    .line 64
    iget-object v1, p2, Lcom/bilibili/tv/api/video/PgcInfo$Season;->seasonTitle:Ljava/lang/String;

    if-eqz v1, :cond_40

    iget-object v1, p2, Lcom/bilibili/tv/api/video/PgcInfo$Season;->seasonTitle:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_40

    .line 65
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

    .line 70
    :cond_40
    :goto_40
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4d

    .line 71
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->getTitleView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    :cond_4d
    iget-object v0, p2, Lcom/bilibili/tv/api/video/PgcInfo$Season;->newEp:Lcom/bilibili/tv/api/video/PgcInfo$SeasonNewEp;

    if-eqz v0, :cond_d0

    iget-object v0, p2, Lcom/bilibili/tv/api/video/PgcInfo$Season;->newEp:Lcom/bilibili/tv/api/video/PgcInfo$SeasonNewEp;

    iget-object v0, v0, Lcom/bilibili/tv/api/video/PgcInfo$SeasonNewEp;->indexShow:Ljava/lang/String;

    if-eqz v0, :cond_d0

    .line 75
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->getUpView()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p2, Lcom/bilibili/tv/api/video/PgcInfo$Season;->newEp:Lcom/bilibili/tv/api/video/PgcInfo$SeasonNewEp;

    iget-object v1, v1, Lcom/bilibili/tv/api/video/PgcInfo$SeasonNewEp;->indexShow:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->getUpView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 77
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->getUpView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 82
    :goto_70
    iget-object v0, p2, Lcom/bilibili/tv/api/video/PgcInfo$Season;->iconFont:Lcom/bilibili/tv/api/video/PgcInfo$IconFont;

    if-eqz v0, :cond_d8

    iget-object v0, p2, Lcom/bilibili/tv/api/video/PgcInfo$Season;->iconFont:Lcom/bilibili/tv/api/video/PgcInfo$IconFont;

    iget-object v0, v0, Lcom/bilibili/tv/api/video/PgcInfo$IconFont;->text:Ljava/lang/String;

    if-eqz v0, :cond_d8

    .line 83
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

    .line 84
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->getPubdateView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 89
    :goto_9f
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->getPlayCountView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 90
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->getDanmakuView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 91
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->getDurationView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 93
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->getBadgeView()Landroid/widget/TextView;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/bilibili/tv/ui/video/widget/PgcSeasonBinder;->bindBadge(Landroid/widget/TextView;Lcom/bilibili/tv/api/video/PgcInfo$Season;)V

    .line 94
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->getCoverImageView()Lcom/bilibili/tv/widget/ScalableImageView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/bilibili/tv/api/video/PgcInfo$Season;->getBestCover()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p3}, Lcom/bilibili/tv/ui/video/widget/PgcSeasonBinder;->bindCover(Lcom/bilibili/tv/widget/ScalableImageView;Ljava/lang/String;I)V

    goto/16 :goto_8

    .line 67
    :cond_c8
    iget-object v1, p2, Lcom/bilibili/tv/api/video/PgcInfo$Season;->seasonTitle:Ljava/lang/String;

    if-eqz v1, :cond_40

    .line 68
    iget-object v0, p2, Lcom/bilibili/tv/api/video/PgcInfo$Season;->seasonTitle:Ljava/lang/String;

    goto/16 :goto_40

    .line 79
    :cond_d0
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->getUpView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_70

    .line 86
    :cond_d8
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->getPubdateView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_9f
.end method

.method public getCoverUrl(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 118
    const/4 v0, 0x0

    .line 119
    instance-of v1, p1, Lcom/bilibili/tv/api/video/PgcInfo$Season;

    if-eqz v1, :cond_b

    .line 120
    check-cast p1, Lcom/bilibili/tv/api/video/PgcInfo$Season;

    invoke-virtual {p1}, Lcom/bilibili/tv/api/video/PgcInfo$Season;->getBestCover()Ljava/lang/String;

    move-result-object v0

    .line 122
    :cond_b
    return-object v0
.end method

.method public getVideoId(Ljava/lang/Object;)J
    .locals 3

    .prologue
    .line 109
    const-wide/16 v0, -0x1

    .line 110
    instance-of v2, p1, Lcom/bilibili/tv/api/video/PgcInfo$Season;

    if-eqz v2, :cond_b

    .line 111
    check-cast p1, Lcom/bilibili/tv/api/video/PgcInfo$Season;

    iget v0, p1, Lcom/bilibili/tv/api/video/PgcInfo$Season;->seasonId:I

    int-to-long v0, v0

    .line 113
    :cond_b
    return-wide v0
.end method

.method public hasPlayProgress(Ljava/lang/Object;J)Z
    .locals 1

    .prologue
    .line 146
    const/4 v0, 0x0

    return v0
.end method

.method public isCurrentSeason(Ljava/lang/Object;I)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 137
    .line 138
    instance-of v1, p1, Lcom/bilibili/tv/api/video/PgcInfo$Season;

    if-eqz v1, :cond_c

    .line 139
    check-cast p1, Lcom/bilibili/tv/api/video/PgcInfo$Season;

    iget v1, p1, Lcom/bilibili/tv/api/video/PgcInfo$Season;->seasonId:I

    if-ne v1, p2, :cond_c

    const/4 v0, 0x1

    .line 141
    :cond_c
    return v0
.end method

.method public isCurrentVideo(Ljava/lang/Object;J)Z
    .locals 1

    .prologue
    .line 127
    const/4 v0, 0x0

    return v0
.end method

.method public isCurrentVideoByCid(Ljava/lang/Object;J)Z
    .locals 1

    .prologue
    .line 132
    const/4 v0, 0x0

    return v0
.end method
