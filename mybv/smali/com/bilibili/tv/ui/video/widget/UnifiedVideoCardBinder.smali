.class public Lcom/bilibili/tv/ui/video/widget/UnifiedVideoCardBinder;
.super Ljava/lang/Object;
.source "UnifiedVideoCardBinder.java"

# interfaces
.implements Lcom/bilibili/tv/ui/video/widget/VideoCardBinder;


# instance fields
.field private listType:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput p1, p0, Lcom/bilibili/tv/ui/video/widget/UnifiedVideoCardBinder;->listType:I

    .line 16
    return-void
.end method

.method private bindFields(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/bilibili/tv/widget/ScalableImageView;Lcom/bilibili/tv/api/video/BiliVideoDetail;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 51
    iget-object v0, p9, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    invoke-direct {p0, p9}, Lcom/bilibili/tv/ui/video/widget/UnifiedVideoCardBinder;->getAuthorFromBiliVideoDetail(Lcom/bilibili/tv/api/video/BiliVideoDetail;)Ljava/lang/String;

    move-result-object v0

    .line 54
    iget-boolean v1, p9, Lcom/bilibili/tv/api/video/BiliVideoDetail;->hideUpIcon:Z

    invoke-direct {p0, p2, v0, v1}, Lcom/bilibili/tv/ui/video/widget/UnifiedVideoCardBinder;->bindUpView(Landroid/widget/TextView;Ljava/lang/String;Z)V

    .line 55
    invoke-virtual {p9}, Lcom/bilibili/tv/api/video/BiliVideoDetail;->getPlays()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p9}, Lcom/bilibili/tv/api/video/BiliVideoDetail;->getDanmakus()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p3, p4, v0, v1}, Lcom/bilibili/tv/ui/video/widget/UnifiedVideoCardBinder;->bindPlayAndDanmaku(Landroid/widget/TextView;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    iget-wide v0, p9, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mCreatedTimestamp:J

    iget-object v2, p9, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPubDateText:Ljava/lang/String;

    invoke-static {p5, v0, v1, v2, v3}, Lcom/bilibili/tv/ui/video/widget/VideoCardTexts;->bindPubDate(Landroid/widget/TextView;JLjava/lang/String;Z)V

    .line 57
    iget v0, p9, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mDuration:I

    invoke-static {p6, v0, v3}, Lcom/bilibili/tv/ui/video/widget/VideoCardTexts;->bindDuration(Landroid/widget/TextView;IZ)V

    .line 58
    iget-object v0, p9, Lcom/bilibili/tv/api/video/BiliVideoDetail;->badgeText:Ljava/lang/String;

    iget-object v1, p9, Lcom/bilibili/tv/api/video/BiliVideoDetail;->badgeBgColor:Ljava/lang/String;

    invoke-static {p7, v0, v1, v3}, Lcom/bilibili/tv/ui/video/widget/VideoBadgeStyler;->apply(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 59
    const/4 v0, 0x0

    iget-object v1, p9, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mCover:Ljava/lang/String;

    invoke-static {v0, p8, v1}, Lcom/bilibili/tv/ui/video/widget/VideoCardCoverLoader;->load(Landroid/content/Context;Lcom/bilibili/tv/widget/ScalableImageView;Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method private bindFields(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/bilibili/tv/widget/ScalableImageView;Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 65
    iget-object v0, p9, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mPageTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    iget-object v0, p9, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mAuthor:Ljava/lang/String;

    iget-boolean v1, p9, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mHideUpIcon:Z

    invoke-direct {p0, p2, v0, v1}, Lcom/bilibili/tv/ui/video/widget/UnifiedVideoCardBinder;->bindUpView(Landroid/widget/TextView;Ljava/lang/String;Z)V

    .line 68
    iget-object v0, p9, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mPlays:Ljava/lang/String;

    iget-object v1, p9, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mDanmakus:Ljava/lang/String;

    invoke-direct {p0, p3, p4, v0, v1}, Lcom/bilibili/tv/ui/video/widget/UnifiedVideoCardBinder;->bindPlayAndDanmaku(Landroid/widget/TextView;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    iget-wide v0, p9, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mPubDate:J

    invoke-static {p5, v0, v1, v3, v2}, Lcom/bilibili/tv/ui/video/widget/VideoCardTexts;->bindPubDate(Landroid/widget/TextView;JLjava/lang/String;Z)V

    .line 70
    iget v0, p9, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mDuration:I

    invoke-static {p6, v0, v2}, Lcom/bilibili/tv/ui/video/widget/VideoCardTexts;->bindDuration(Landroid/widget/TextView;IZ)V

    .line 71
    iget-object v0, p9, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mBadgeText:Ljava/lang/String;

    iget-object v1, p9, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mBadgeBgColor:Ljava/lang/String;

    invoke-static {p7, v0, v1, v2}, Lcom/bilibili/tv/ui/video/widget/VideoBadgeStyler;->apply(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 72
    iget-object v0, p9, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mEpCover:Ljava/lang/String;

    invoke-static {v3, p8, v0}, Lcom/bilibili/tv/ui/video/widget/VideoCardCoverLoader;->load(Landroid/content/Context;Lcom/bilibili/tv/widget/ScalableImageView;Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method private bindPlayAndDanmaku(Landroid/widget/TextView;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x1

    .line 105
    iget v0, p0, Lcom/bilibili/tv/ui/video/widget/UnifiedVideoCardBinder;->listType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_f

    .line 106
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 107
    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 112
    :goto_e
    return-void

    .line 110
    :cond_f
    invoke-static {p1, p3, v2}, Lcom/bilibili/tv/ui/video/widget/VideoCardTexts;->bindPlayCount(Landroid/widget/TextView;Ljava/lang/String;Z)V

    .line 111
    invoke-static {p2, p4, v2}, Lcom/bilibili/tv/ui/video/widget/VideoCardTexts;->bindDanmaku(Landroid/widget/TextView;Ljava/lang/String;Z)V

    goto :goto_e
.end method

.method private bindUpView(Landroid/widget/TextView;Ljava/lang/String;Z)V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 83
    iget v0, p0, Lcom/bilibili/tv/ui/video/widget/UnifiedVideoCardBinder;->listType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_e

    .line 84
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 85
    invoke-static {p1}, Lcom/bilibili/tv/ui/video/widget/VideoCardIcons;->clear(Landroid/widget/TextView;)V

    .line 102
    :goto_d
    return-void

    .line 89
    :cond_e
    if-eqz p2, :cond_32

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_32

    .line 90
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 93
    iget v0, p0, Lcom/bilibili/tv/ui/video/widget/UnifiedVideoCardBinder;->listType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_24

    if-eqz p3, :cond_28

    .line 94
    :cond_24
    invoke-static {p1}, Lcom/bilibili/tv/ui/video/widget/VideoCardIcons;->clear(Landroid/widget/TextView;)V

    goto :goto_d

    .line 96
    :cond_28
    const v0, 0x7f060120

    const v1, 0x7f0500a1

    invoke-static {p1, v0, v1}, Lcom/bilibili/tv/ui/video/widget/VideoCardIcons;->setUp(Landroid/widget/TextView;II)V

    goto :goto_d

    .line 99
    :cond_32
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 100
    invoke-static {p1}, Lcom/bilibili/tv/ui/video/widget/VideoCardIcons;->clear(Landroid/widget/TextView;)V

    goto :goto_d
.end method

.method private getAuthorFromBiliVideoDetail(Lcom/bilibili/tv/api/video/BiliVideoDetail;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->vtText:Ljava/lang/String;

    invoke-static {v0}, Lcom/bilibili/tv/ui/video/widget/VideoCardIcons;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 77
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->vtText:Ljava/lang/String;

    .line 79
    :goto_a
    return-object v0

    :cond_b
    invoke-virtual {p1}, Lcom/bilibili/tv/api/video/BiliVideoDetail;->getAuthor()Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method


# virtual methods
.method public bind(Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;Ljava/lang/Object;I)V
    .locals 10

    .prologue
    .line 20
    instance-of v0, p2, Lcom/bilibili/tv/api/video/BiliVideoDetail;

    if-eqz v0, :cond_2c

    .line 21
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->getTitleView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->getUpView()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->getPlayCountView()Landroid/widget/TextView;

    move-result-object v3

    .line 22
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->getDanmakuInImageView()Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->getPubdateView()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->getDurationView()Landroid/widget/TextView;

    move-result-object v6

    .line 23
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->getBadgeView()Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->getCoverImageView()Lcom/bilibili/tv/widget/ScalableImageView;

    move-result-object v8

    move-object v9, p2

    check-cast v9, Lcom/bilibili/tv/api/video/BiliVideoDetail;

    move-object v0, p0

    .line 21
    invoke-direct/range {v0 .. v9}, Lcom/bilibili/tv/ui/video/widget/UnifiedVideoCardBinder;->bindFields(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/bilibili/tv/widget/ScalableImageView;Lcom/bilibili/tv/api/video/BiliVideoDetail;)V

    .line 29
    :cond_2b
    :goto_2b
    return-void

    .line 24
    :cond_2c
    instance-of v0, p2, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    if-eqz v0, :cond_2b

    .line 25
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->getTitleView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->getUpView()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->getPlayCountView()Landroid/widget/TextView;

    move-result-object v3

    .line 26
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->getDanmakuInImageView()Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->getPubdateView()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->getDurationView()Landroid/widget/TextView;

    move-result-object v6

    .line 27
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->getBadgeView()Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->getCoverImageView()Lcom/bilibili/tv/widget/ScalableImageView;

    move-result-object v8

    move-object v9, p2

    check-cast v9, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    move-object v0, p0

    .line 25
    invoke-direct/range {v0 .. v9}, Lcom/bilibili/tv/ui/video/widget/UnifiedVideoCardBinder;->bindFields(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/bilibili/tv/widget/ScalableImageView;Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;)V

    goto :goto_2b
.end method

.method public bindCompact(Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;Ljava/lang/Object;I)V
    .locals 10

    .prologue
    .line 33
    instance-of v0, p2, Lcom/bilibili/tv/api/video/BiliVideoDetail;

    if-eqz v0, :cond_2c

    .line 34
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->getTitleView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->getUpView()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->getPlayCountView()Landroid/widget/TextView;

    move-result-object v3

    .line 35
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->getDanmakuView()Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->getPubdateView()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->getDurationView()Landroid/widget/TextView;

    move-result-object v6

    .line 36
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->getBadgeView()Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->getCoverImageView()Lcom/bilibili/tv/widget/ScalableImageView;

    move-result-object v8

    move-object v9, p2

    check-cast v9, Lcom/bilibili/tv/api/video/BiliVideoDetail;

    move-object v0, p0

    .line 34
    invoke-direct/range {v0 .. v9}, Lcom/bilibili/tv/ui/video/widget/UnifiedVideoCardBinder;->bindFields(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/bilibili/tv/widget/ScalableImageView;Lcom/bilibili/tv/api/video/BiliVideoDetail;)V

    .line 42
    :cond_2b
    :goto_2b
    return-void

    .line 37
    :cond_2c
    instance-of v0, p2, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    if-eqz v0, :cond_2b

    .line 38
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->getTitleView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->getUpView()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->getPlayCountView()Landroid/widget/TextView;

    move-result-object v3

    .line 39
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->getDanmakuView()Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->getPubdateView()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->getDurationView()Landroid/widget/TextView;

    move-result-object v6

    .line 40
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->getBadgeView()Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->getCoverImageView()Lcom/bilibili/tv/widget/ScalableImageView;

    move-result-object v8

    move-object v9, p2

    check-cast v9, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    move-object v0, p0

    .line 38
    invoke-direct/range {v0 .. v9}, Lcom/bilibili/tv/ui/video/widget/UnifiedVideoCardBinder;->bindFields(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/bilibili/tv/widget/ScalableImageView;Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;)V

    goto :goto_2b
.end method

.method public getCoverUrl(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    instance-of v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;

    if-eqz v0, :cond_9

    .line 127
    check-cast p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;

    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mCover:Ljava/lang/String;

    .line 131
    :goto_8
    return-object v0

    .line 128
    :cond_9
    instance-of v0, p1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    if-eqz v0, :cond_12

    .line 129
    check-cast p1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    iget-object v0, p1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mEpCover:Ljava/lang/String;

    goto :goto_8

    .line 131
    :cond_12
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public getVideoId(Ljava/lang/Object;)J
    .locals 2

    .prologue
    .line 116
    instance-of v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;

    if-eqz v0, :cond_9

    .line 117
    check-cast p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;

    iget-wide v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mAvid:J

    .line 121
    :goto_8
    return-wide v0

    .line 118
    :cond_9
    instance-of v0, p1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    if-eqz v0, :cond_12

    .line 119
    check-cast p1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    iget-wide v0, p1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mCid:J

    goto :goto_8

    .line 121
    :cond_12
    const-wide/16 v0, -0x1

    goto :goto_8
.end method

.method public hasPlayProgress(Ljava/lang/Object;J)Z
    .locals 2

    .prologue
    .line 164
    invoke-virtual {p0, p1, p2, p3}, Lcom/bilibili/tv/ui/video/widget/UnifiedVideoCardBinder;->isCurrentVideoByCid(Ljava/lang/Object;J)Z

    move-result v0

    return v0
.end method

.method public isCurrentSeason(Ljava/lang/Object;I)Z
    .locals 1

    .prologue
    .line 159
    const/4 v0, 0x0

    return v0
.end method

.method public isCurrentVideo(Ljava/lang/Object;J)Z
    .locals 2

    .prologue
    .line 136
    invoke-virtual {p0, p1}, Lcom/bilibili/tv/ui/video/widget/UnifiedVideoCardBinder;->getVideoId(Ljava/lang/Object;)J

    move-result-wide v0

    cmp-long v0, v0, p2

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isCurrentVideoByCid(Ljava/lang/Object;J)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 141
    instance-of v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;

    if-eqz v0, :cond_31

    .line 142
    check-cast p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;

    .line 143
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->sourcePage:Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;

    if-eqz v0, :cond_19

    .line 144
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->sourcePage:Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;

    iget-wide v4, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mCid:J

    cmp-long v0, v4, p2

    if-nez v0, :cond_17

    move v0, v1

    :goto_15
    move v1, v0

    .line 154
    :cond_16
    :goto_16
    return v1

    :cond_17
    move v0, v2

    .line 144
    goto :goto_15

    .line 145
    :cond_19
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->sourceEpisode:Ljava/lang/Object;

    if-eqz v0, :cond_29

    .line 146
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->sourceEpisode:Ljava/lang/Object;

    check-cast v0, Lcom/bilibili/tv/api/video/PgcInfo$Episode;

    .line 147
    iget-wide v4, v0, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->cid:J

    cmp-long v0, v4, p2

    if-eqz v0, :cond_16

    move v1, v2

    goto :goto_16

    .line 149
    :cond_29
    iget-wide v4, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mCid:J

    cmp-long v0, v4, p2

    if-eqz v0, :cond_16

    move v1, v2

    goto :goto_16

    .line 151
    :cond_31
    instance-of v0, p1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    if-eqz v0, :cond_3f

    .line 152
    check-cast p1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    iget-wide v4, p1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mCid:J

    cmp-long v0, v4, p2

    if-eqz v0, :cond_16

    move v1, v2

    goto :goto_16

    :cond_3f
    move v1, v2

    .line 154
    goto :goto_16
.end method
