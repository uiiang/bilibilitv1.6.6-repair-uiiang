.class public Lcom/bilibili/tv/ui/video/widget/BiliVideoDetailBinder;
.super Ljava/lang/Object;
.source "BiliVideoDetailBinder.java"

# interfaces
.implements Lcom/bilibili/tv/ui/video/widget/VideoCardBinder;


# static fields
.field private static final TAG:Ljava/lang/String; = "BiliBinder"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private bindBadge(Landroid/widget/TextView;Lcom/bilibili/tv/api/video/BiliVideoDetail;)V
    .locals 3

    .prologue
    .line 81
    iget-object v0, p2, Lcom/bilibili/tv/api/video/BiliVideoDetail;->badgeText:Ljava/lang/String;

    iget-object v1, p2, Lcom/bilibili/tv/api/video/BiliVideoDetail;->badgeBgColor:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {p1, v0, v1, v2}, Lcom/bilibili/tv/ui/video/widget/VideoBadgeStyler;->apply(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 82
    return-void
.end method

.method private bindCover(Lcom/bilibili/tv/widget/ScalableImageView;Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x0

    invoke-static {v0, p1, p2}, Lcom/bilibili/tv/ui/video/widget/VideoCardCoverLoader;->load(Landroid/content/Context;Lcom/bilibili/tv/widget/ScalableImageView;Ljava/lang/String;)V

    .line 86
    return-void
.end method


# virtual methods
.method public bind(Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;Ljava/lang/Object;I)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 16
    instance-of v0, p2, Lcom/bilibili/tv/api/video/BiliVideoDetail;

    if-nez v0, :cond_6

    .line 46
    :goto_5
    return-void

    .line 19
    :cond_6
    check-cast p2, Lcom/bilibili/tv/api/video/BiliVideoDetail;

    .line 21
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->getTitleView()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p2, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    invoke-virtual {p2}, Lcom/bilibili/tv/api/video/BiliVideoDetail;->getAuthor()Ljava/lang/String;

    move-result-object v0

    .line 24
    if-eqz v0, :cond_7e

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7e

    .line 25
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->getUpView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    iget-boolean v0, p2, Lcom/bilibili/tv/api/video/BiliVideoDetail;->hideUpIcon:Z

    if-nez v0, :cond_76

    .line 27
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->getUpView()Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f060120

    const v2, 0x7f0500a1

    invoke-static {v0, v1, v2}, Lcom/bilibili/tv/ui/video/widget/VideoCardIcons;->setUp(Landroid/widget/TextView;II)V

    .line 35
    :goto_35
    invoke-virtual {p2}, Lcom/bilibili/tv/api/video/BiliVideoDetail;->getPlays()Ljava/lang/String;

    move-result-object v0

    .line 36
    if-eqz v0, :cond_46

    .line 37
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->getPlayCountView()Landroid/widget/TextView;

    move-result-object v1

    invoke-static {v0}, Lbl/adh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    :cond_46
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->getDanmakuInImageView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/bilibili/tv/api/video/BiliVideoDetail;->getDanmakus()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Lcom/bilibili/tv/ui/video/widget/VideoCardTexts;->bindDanmaku(Landroid/widget/TextView;Ljava/lang/String;Z)V

    .line 41
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->getPubdateView()Landroid/widget/TextView;

    move-result-object v0

    iget-wide v2, p2, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mCreatedTimestamp:J

    const/4 v1, 0x0

    invoke-static {v0, v2, v3, v1, v4}, Lcom/bilibili/tv/ui/video/widget/VideoCardTexts;->bindPubDate(Landroid/widget/TextView;JLjava/lang/String;Z)V

    .line 42
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->getDurationView()Landroid/widget/TextView;

    move-result-object v0

    iget v1, p2, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mDuration:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/bilibili/tv/ui/video/widget/VideoCardTexts;->bindDuration(Landroid/widget/TextView;IZ)V

    .line 44
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->getBadgeView()Landroid/widget/TextView;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/bilibili/tv/ui/video/widget/BiliVideoDetailBinder;->bindBadge(Landroid/widget/TextView;Lcom/bilibili/tv/api/video/BiliVideoDetail;)V

    .line 45
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->getCoverImageView()Lcom/bilibili/tv/widget/ScalableImageView;

    move-result-object v0

    iget-object v1, p2, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mCover:Ljava/lang/String;

    invoke-direct {p0, v0, v1, p3}, Lcom/bilibili/tv/ui/video/widget/BiliVideoDetailBinder;->bindCover(Lcom/bilibili/tv/widget/ScalableImageView;Ljava/lang/String;I)V

    goto :goto_5

    .line 29
    :cond_76
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->getUpView()Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v0}, Lcom/bilibili/tv/ui/video/widget/VideoCardIcons;->clear(Landroid/widget/TextView;)V

    goto :goto_35

    .line 32
    :cond_7e
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->getUpView()Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v0}, Lcom/bilibili/tv/ui/video/widget/VideoCardIcons;->clear(Landroid/widget/TextView;)V

    goto :goto_35
.end method

.method public bindCompact(Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;Ljava/lang/Object;I)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 50
    instance-of v0, p2, Lcom/bilibili/tv/api/video/BiliVideoDetail;

    if-nez v0, :cond_6

    .line 78
    :goto_5
    return-void

    .line 53
    :cond_6
    check-cast p2, Lcom/bilibili/tv/api/video/BiliVideoDetail;

    .line 55
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->getTitleView()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p2, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    invoke-virtual {p2}, Lcom/bilibili/tv/api/video/BiliVideoDetail;->getAuthor()Ljava/lang/String;

    move-result-object v0

    .line 58
    if-eqz v0, :cond_7f

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7f

    .line 59
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->getUpView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->getUpView()Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 61
    iget-boolean v0, p2, Lcom/bilibili/tv/api/video/BiliVideoDetail;->hideUpIcon:Z

    if-nez v0, :cond_77

    .line 62
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->getUpView()Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f060120

    const v2, 0x7f0500a1

    invoke-static {v0, v1, v2}, Lcom/bilibili/tv/ui/video/widget/VideoCardIcons;->setUp(Landroid/widget/TextView;II)V

    .line 71
    :goto_3d
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->getPlayCountView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/bilibili/tv/api/video/BiliVideoDetail;->getPlays()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Lcom/bilibili/tv/ui/video/widget/VideoCardTexts;->bindPlayCount(Landroid/widget/TextView;Ljava/lang/String;Z)V

    .line 72
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->getDanmakuView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/bilibili/tv/api/video/BiliVideoDetail;->getDanmakus()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Lcom/bilibili/tv/ui/video/widget/VideoCardTexts;->bindDanmaku(Landroid/widget/TextView;Ljava/lang/String;Z)V

    .line 73
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->getPubdateView()Landroid/widget/TextView;

    move-result-object v0

    iget-wide v2, p2, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mCreatedTimestamp:J

    const/4 v1, 0x0

    invoke-static {v0, v2, v3, v1, v4}, Lcom/bilibili/tv/ui/video/widget/VideoCardTexts;->bindPubDate(Landroid/widget/TextView;JLjava/lang/String;Z)V

    .line 74
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->getDurationView()Landroid/widget/TextView;

    move-result-object v0

    iget v1, p2, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mDuration:I

    invoke-static {v0, v1, v4}, Lcom/bilibili/tv/ui/video/widget/VideoCardTexts;->bindDuration(Landroid/widget/TextView;IZ)V

    .line 76
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->getBadgeView()Landroid/widget/TextView;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/bilibili/tv/ui/video/widget/BiliVideoDetailBinder;->bindBadge(Landroid/widget/TextView;Lcom/bilibili/tv/api/video/BiliVideoDetail;)V

    .line 77
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->getCoverImageView()Lcom/bilibili/tv/widget/ScalableImageView;

    move-result-object v0

    iget-object v1, p2, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mCover:Ljava/lang/String;

    invoke-direct {p0, v0, v1, p3}, Lcom/bilibili/tv/ui/video/widget/BiliVideoDetailBinder;->bindCover(Lcom/bilibili/tv/widget/ScalableImageView;Ljava/lang/String;I)V

    goto :goto_5

    .line 64
    :cond_77
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->getUpView()Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v0}, Lcom/bilibili/tv/ui/video/widget/VideoCardIcons;->clear(Landroid/widget/TextView;)V

    goto :goto_3d

    .line 67
    :cond_7f
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->getUpView()Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 68
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->getUpView()Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v0}, Lcom/bilibili/tv/ui/video/widget/VideoCardIcons;->clear(Landroid/widget/TextView;)V

    goto :goto_3d
.end method

.method public getCoverUrl(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 99
    const/4 v0, 0x0

    .line 100
    instance-of v1, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;

    if-eqz v1, :cond_9

    .line 101
    check-cast p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;

    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mCover:Ljava/lang/String;

    .line 103
    :cond_9
    return-object v0
.end method

.method public getVideoId(Ljava/lang/Object;)J
    .locals 3

    .prologue
    .line 90
    const-wide/16 v0, -0x1

    .line 91
    instance-of v2, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;

    if-eqz v2, :cond_a

    .line 92
    check-cast p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;

    iget-wide v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mAvid:J

    .line 94
    :cond_a
    return-wide v0
.end method

.method public hasPlayProgress(Ljava/lang/Object;J)Z
    .locals 1

    .prologue
    .line 132
    const/4 v0, 0x0

    return v0
.end method

.method public isCurrentSeason(Ljava/lang/Object;I)Z
    .locals 1

    .prologue
    .line 127
    const/4 v0, 0x0

    return v0
.end method

.method public isCurrentVideo(Ljava/lang/Object;J)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 108
    .line 109
    instance-of v1, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;

    if-eqz v1, :cond_e

    .line 110
    check-cast p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;

    iget-wide v2, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mAvid:J

    cmp-long v1, v2, p2

    if-nez v1, :cond_e

    const/4 v0, 0x1

    .line 112
    :cond_e
    return v0
.end method

.method public isCurrentVideoByCid(Ljava/lang/Object;J)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 117
    .line 118
    instance-of v1, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;

    if-eqz v1, :cond_e

    .line 119
    check-cast p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;

    .line 120
    iget-wide v2, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mCid:J

    cmp-long v1, v2, p2

    if-nez v1, :cond_e

    const/4 v0, 0x1

    .line 122
    :cond_e
    return v0
.end method
