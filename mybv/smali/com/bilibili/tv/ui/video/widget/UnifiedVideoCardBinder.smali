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
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput p1, p0, Lcom/bilibili/tv/ui/video/widget/UnifiedVideoCardBinder;->listType:I

    .line 26
    return-void
.end method

.method private bindBadge(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 215
    if-eqz p2, :cond_58

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_58

    .line 216
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 217
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/MainApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 218
    const/high16 v1, 0x40800000    # 4.0f

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    .line 220
    :try_start_21
    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    .line 221
    const v2, 0xffffff

    and-int/2addr v1, v2

    const/high16 v2, -0x67000000

    or-int/2addr v1, v2

    .line 222
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 223
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 224
    invoke-virtual {v2, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 225
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 226
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_3e} :catch_42

    .line 234
    :goto_3e
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 238
    :goto_41
    return-void

    .line 227
    :catch_42
    move-exception v1

    .line 228
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 229
    invoke-virtual {v1, v4}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 230
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 231
    const v0, -0x66048d67    # -2.5999077E-23f

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 232
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3e

    .line 236
    :cond_58
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_41
.end method

.method private bindCover(Lcom/bilibili/tv/widget/ScalableImageView;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 241
    if-eqz p2, :cond_1b

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 242
    invoke-static {}, Lbl/nv;->a()Lbl/nv;

    move-result-object v0

    .line 243
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bilibili/tv/MainApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 244
    invoke-static {v1, p2}, Lbl/abd;->get_thumb_url_c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 245
    invoke-virtual {v0, v1, p1}, Lbl/nv;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 247
    :cond_1b
    return-void
.end method

.method private bindDuration(Landroid/widget/TextView;I)V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 201
    if-lez p2, :cond_4f

    .line 202
    const/16 v0, 0xe10

    if-lt p2, v0, :cond_33

    .line 203
    const-string v0, "%d:%02d:%02d"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    div-int/lit16 v2, p2, 0xe10

    .line 204
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    rem-int/lit16 v2, p2, 0xe10

    div-int/lit8 v2, v2, 0x3c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    rem-int/lit8 v2, p2, 0x3c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    .line 203
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    :goto_2f
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 212
    :goto_32
    return-void

    .line 206
    :cond_33
    const-string v0, "%02d:%02d"

    new-array v1, v5, [Ljava/lang/Object;

    div-int/lit8 v2, p2, 0x3c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    rem-int/lit8 v2, p2, 0x3c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2f

    .line 210
    :cond_4f
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_32
.end method

.method private bindFromBiliVideoDetail(Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;Lcom/bilibili/tv/api/video/BiliVideoDetail;)V
    .locals 4

    .prologue
    .line 47
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->getTitleView()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p2, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    invoke-direct {p0, p2}, Lcom/bilibili/tv/ui/video/widget/UnifiedVideoCardBinder;->getAuthorFromBiliVideoDetail(Lcom/bilibili/tv/api/video/BiliVideoDetail;)Ljava/lang/String;

    move-result-object v0

    .line 50
    iget-boolean v1, p2, Lcom/bilibili/tv/api/video/BiliVideoDetail;->hideUpIcon:Z

    .line 51
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->getUpView()Landroid/widget/TextView;

    move-result-object v2

    invoke-direct {p0, v2, v0, v1}, Lcom/bilibili/tv/ui/video/widget/UnifiedVideoCardBinder;->bindUpView(Landroid/widget/TextView;Ljava/lang/String;Z)V

    .line 53
    invoke-virtual {p2}, Lcom/bilibili/tv/api/video/BiliVideoDetail;->getPlays()Ljava/lang/String;

    move-result-object v0

    .line 54
    invoke-virtual {p2}, Lcom/bilibili/tv/api/video/BiliVideoDetail;->getDanmakus()Ljava/lang/String;

    move-result-object v1

    .line 55
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->getPlayCountView()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->getDanmakuInImageView()Landroid/widget/TextView;

    move-result-object v3

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/bilibili/tv/ui/video/widget/UnifiedVideoCardBinder;->bindPlayAndDanmaku(Landroid/widget/TextView;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->getPubdateView()Landroid/widget/TextView;

    move-result-object v0

    iget-wide v2, p2, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mCreatedTimestamp:J

    iget-object v1, p2, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPubDateText:Ljava/lang/String;

    invoke-direct {p0, v0, v2, v3, v1}, Lcom/bilibili/tv/ui/video/widget/UnifiedVideoCardBinder;->bindPubDate(Landroid/widget/TextView;JLjava/lang/String;)V

    .line 58
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->getDurationView()Landroid/widget/TextView;

    move-result-object v0

    iget v1, p2, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mDuration:I

    invoke-direct {p0, v0, v1}, Lcom/bilibili/tv/ui/video/widget/UnifiedVideoCardBinder;->bindDuration(Landroid/widget/TextView;I)V

    .line 59
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->getBadgeView()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p2, Lcom/bilibili/tv/api/video/BiliVideoDetail;->badgeText:Ljava/lang/String;

    iget-object v2, p2, Lcom/bilibili/tv/api/video/BiliVideoDetail;->badgeBgColor:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/bilibili/tv/ui/video/widget/UnifiedVideoCardBinder;->bindBadge(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->getCoverImageView()Lcom/bilibili/tv/widget/ScalableImageView;

    move-result-object v0

    iget-object v1, p2, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mCover:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/bilibili/tv/ui/video/widget/UnifiedVideoCardBinder;->bindCover(Lcom/bilibili/tv/widget/ScalableImageView;Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method private bindFromBiliVideoDetailCompact(Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;Lcom/bilibili/tv/api/video/BiliVideoDetail;)V
    .locals 4

    .prologue
    .line 64
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->getTitleView()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p2, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    invoke-direct {p0, p2}, Lcom/bilibili/tv/ui/video/widget/UnifiedVideoCardBinder;->getAuthorFromBiliVideoDetail(Lcom/bilibili/tv/api/video/BiliVideoDetail;)Ljava/lang/String;

    move-result-object v0

    .line 67
    iget-boolean v1, p2, Lcom/bilibili/tv/api/video/BiliVideoDetail;->hideUpIcon:Z

    .line 68
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->getUpView()Landroid/widget/TextView;

    move-result-object v2

    invoke-direct {p0, v2, v0, v1}, Lcom/bilibili/tv/ui/video/widget/UnifiedVideoCardBinder;->bindUpView(Landroid/widget/TextView;Ljava/lang/String;Z)V

    .line 70
    invoke-virtual {p2}, Lcom/bilibili/tv/api/video/BiliVideoDetail;->getPlays()Ljava/lang/String;

    move-result-object v0

    .line 71
    invoke-virtual {p2}, Lcom/bilibili/tv/api/video/BiliVideoDetail;->getDanmakus()Ljava/lang/String;

    move-result-object v1

    .line 72
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->getPlayCountView()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->getDanmakuView()Landroid/widget/TextView;

    move-result-object v3

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/bilibili/tv/ui/video/widget/UnifiedVideoCardBinder;->bindPlayAndDanmakuCompact(Landroid/widget/TextView;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->getPubdateView()Landroid/widget/TextView;

    move-result-object v0

    iget-wide v2, p2, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mCreatedTimestamp:J

    iget-object v1, p2, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPubDateText:Ljava/lang/String;

    invoke-direct {p0, v0, v2, v3, v1}, Lcom/bilibili/tv/ui/video/widget/UnifiedVideoCardBinder;->bindPubDate(Landroid/widget/TextView;JLjava/lang/String;)V

    .line 75
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->getDurationView()Landroid/widget/TextView;

    move-result-object v0

    iget v1, p2, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mDuration:I

    invoke-direct {p0, v0, v1}, Lcom/bilibili/tv/ui/video/widget/UnifiedVideoCardBinder;->bindDuration(Landroid/widget/TextView;I)V

    .line 76
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->getBadgeView()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p2, Lcom/bilibili/tv/api/video/BiliVideoDetail;->badgeText:Ljava/lang/String;

    iget-object v2, p2, Lcom/bilibili/tv/api/video/BiliVideoDetail;->badgeBgColor:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/bilibili/tv/ui/video/widget/UnifiedVideoCardBinder;->bindBadge(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->getCoverImageView()Lcom/bilibili/tv/widget/ScalableImageView;

    move-result-object v0

    iget-object v1, p2, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mCover:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/bilibili/tv/ui/video/widget/UnifiedVideoCardBinder;->bindCover(Lcom/bilibili/tv/widget/ScalableImageView;Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method private bindFromResolveParams(Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;)V
    .locals 4

    .prologue
    .line 81
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->getTitleView()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p2, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mPageTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->getUpView()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p2, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mAuthor:Ljava/lang/String;

    iget-boolean v2, p2, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mHideUpIcon:Z

    invoke-direct {p0, v0, v1, v2}, Lcom/bilibili/tv/ui/video/widget/UnifiedVideoCardBinder;->bindUpView(Landroid/widget/TextView;Ljava/lang/String;Z)V

    .line 84
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->getPlayCountView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->getDanmakuInImageView()Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p2, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mPlays:Ljava/lang/String;

    iget-object v3, p2, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mDanmakus:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/bilibili/tv/ui/video/widget/UnifiedVideoCardBinder;->bindPlayAndDanmaku(Landroid/widget/TextView;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->getPubdateView()Landroid/widget/TextView;

    move-result-object v0

    iget-wide v2, p2, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mPubDate:J

    const/4 v1, 0x0

    invoke-direct {p0, v0, v2, v3, v1}, Lcom/bilibili/tv/ui/video/widget/UnifiedVideoCardBinder;->bindPubDate(Landroid/widget/TextView;JLjava/lang/String;)V

    .line 86
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->getDurationView()Landroid/widget/TextView;

    move-result-object v0

    iget v1, p2, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mDuration:I

    invoke-direct {p0, v0, v1}, Lcom/bilibili/tv/ui/video/widget/UnifiedVideoCardBinder;->bindDuration(Landroid/widget/TextView;I)V

    .line 87
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->getBadgeView()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p2, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mBadgeText:Ljava/lang/String;

    iget-object v2, p2, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mBadgeBgColor:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/bilibili/tv/ui/video/widget/UnifiedVideoCardBinder;->bindBadge(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->getCoverImageView()Lcom/bilibili/tv/widget/ScalableImageView;

    move-result-object v0

    iget-object v1, p2, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mEpCover:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/bilibili/tv/ui/video/widget/UnifiedVideoCardBinder;->bindCover(Lcom/bilibili/tv/widget/ScalableImageView;Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method private bindFromResolveParamsCompact(Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;)V
    .locals 4

    .prologue
    .line 92
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->getTitleView()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p2, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mPageTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->getUpView()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p2, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mAuthor:Ljava/lang/String;

    iget-boolean v2, p2, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mHideUpIcon:Z

    invoke-direct {p0, v0, v1, v2}, Lcom/bilibili/tv/ui/video/widget/UnifiedVideoCardBinder;->bindUpView(Landroid/widget/TextView;Ljava/lang/String;Z)V

    .line 95
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->getPlayCountView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->getDanmakuView()Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p2, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mPlays:Ljava/lang/String;

    iget-object v3, p2, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mDanmakus:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/bilibili/tv/ui/video/widget/UnifiedVideoCardBinder;->bindPlayAndDanmakuCompact(Landroid/widget/TextView;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->getPubdateView()Landroid/widget/TextView;

    move-result-object v0

    iget-wide v2, p2, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mPubDate:J

    const/4 v1, 0x0

    invoke-direct {p0, v0, v2, v3, v1}, Lcom/bilibili/tv/ui/video/widget/UnifiedVideoCardBinder;->bindPubDate(Landroid/widget/TextView;JLjava/lang/String;)V

    .line 97
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->getDurationView()Landroid/widget/TextView;

    move-result-object v0

    iget v1, p2, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mDuration:I

    invoke-direct {p0, v0, v1}, Lcom/bilibili/tv/ui/video/widget/UnifiedVideoCardBinder;->bindDuration(Landroid/widget/TextView;I)V

    .line 98
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->getBadgeView()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p2, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mBadgeText:Ljava/lang/String;

    iget-object v2, p2, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mBadgeBgColor:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/bilibili/tv/ui/video/widget/UnifiedVideoCardBinder;->bindBadge(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->getCoverImageView()Lcom/bilibili/tv/widget/ScalableImageView;

    move-result-object v0

    iget-object v1, p2, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mEpCover:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/bilibili/tv/ui/video/widget/UnifiedVideoCardBinder;->bindCover(Lcom/bilibili/tv/widget/ScalableImageView;Ljava/lang/String;)V

    .line 100
    return-void
.end method

.method private bindPlayAndDanmaku(Landroid/widget/TextView;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/16 v3, 0x8

    .line 137
    iget v0, p0, Lcom/bilibili/tv/ui/video/widget/UnifiedVideoCardBinder;->listType:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_f

    .line 138
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 139
    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 160
    :goto_e
    return-void

    .line 143
    :cond_f
    if-eqz p3, :cond_36

    const-string v0, "0"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_36

    .line 144
    invoke-static {p3}, Lbl/adh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 152
    :goto_23
    if-eqz p4, :cond_3a

    :goto_25
    :try_start_25
    invoke-static {p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_28} :catch_3d

    move-result v0

    .line 154
    :goto_29
    if-lez v0, :cond_40

    .line 155
    invoke-static {v0}, Lbl/adh;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_e

    .line 147
    :cond_36
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_23

    .line 152
    :cond_3a
    :try_start_3a
    const-string p4, "0"
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_3c} :catch_3d

    goto :goto_25

    .line 153
    :catch_3d
    move-exception v0

    move v0, v1

    goto :goto_29

    .line 158
    :cond_40
    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_e
.end method

.method private bindPlayAndDanmakuCompact(Landroid/widget/TextView;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/16 v3, 0x8

    .line 163
    iget v0, p0, Lcom/bilibili/tv/ui/video/widget/UnifiedVideoCardBinder;->listType:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_f

    .line 164
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 165
    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 186
    :goto_e
    return-void

    .line 169
    :cond_f
    if-eqz p3, :cond_36

    const-string v0, "0"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_36

    .line 170
    invoke-static {p3}, Lbl/adh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 178
    :goto_23
    if-eqz p4, :cond_3a

    :goto_25
    :try_start_25
    invoke-static {p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_28} :catch_3d

    move-result v0

    .line 180
    :goto_29
    if-lez v0, :cond_40

    .line 181
    invoke-static {v0}, Lbl/adh;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_e

    .line 173
    :cond_36
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_23

    .line 178
    :cond_3a
    :try_start_3a
    const-string p4, "0"
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_3c} :catch_3d

    goto :goto_25

    .line 179
    :catch_3d
    move-exception v0

    move v0, v1

    goto :goto_29

    .line 184
    :cond_40
    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_e
.end method

.method private bindPubDate(Landroid/widget/TextView;JLjava/lang/String;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 189
    if-eqz p4, :cond_10

    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    .line 190
    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 198
    :goto_f
    return-void

    .line 192
    :cond_10
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_21

    .line 193
    invoke-static {p2, p3}, Lcom/bilibili/tv/util/DateHelper;->formatDate(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_f

    .line 196
    :cond_21
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_f
.end method

.method private bindUpView(Landroid/widget/TextView;Ljava/lang/String;Z)V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 110
    iget v0, p0, Lcom/bilibili/tv/ui/video/widget/UnifiedVideoCardBinder;->listType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_10

    .line 111
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 112
    invoke-virtual {p1, v3, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 134
    :goto_f
    return-void

    .line 116
    :cond_10
    if-eqz p2, :cond_4c

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4c

    .line 117
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 120
    iget v0, p0, Lcom/bilibili/tv/ui/video/widget/UnifiedVideoCardBinder;->listType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_25

    if-eqz p3, :cond_29

    .line 121
    :cond_25
    invoke-virtual {p1, v3, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_f

    .line 123
    :cond_29
    sget-object v0, Lbl/adl;->a:Lbl/adl;

    const v1, 0x7f0700b2

    invoke-virtual {v0, v1}, Lbl/adl;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 124
    const v1, 0x7f060120

    invoke-static {v1}, Lbl/adl;->b(I)I

    move-result v1

    .line 125
    invoke-virtual {v0, v2, v2, v1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 126
    const v1, 0x7f0500a1

    invoke-static {v1}, Lbl/adl;->d(I)I

    move-result v1

    .line 127
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 128
    invoke-virtual {p1, v0, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_f

    .line 131
    :cond_4c
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 132
    invoke-virtual {p1, v3, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_f
.end method

.method private getAuthorFromBiliVideoDetail(Lcom/bilibili/tv/api/video/BiliVideoDetail;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->vtText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 104
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->vtText:Ljava/lang/String;

    .line 106
    :goto_a
    return-object v0

    :cond_b
    invoke-virtual {p1}, Lcom/bilibili/tv/api/video/BiliVideoDetail;->getAuthor()Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method


# virtual methods
.method public bind(Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;Ljava/lang/Object;I)V
    .locals 1

    .prologue
    .line 30
    instance-of v0, p2, Lcom/bilibili/tv/api/video/BiliVideoDetail;

    if-eqz v0, :cond_a

    .line 31
    check-cast p2, Lcom/bilibili/tv/api/video/BiliVideoDetail;

    invoke-direct {p0, p1, p2}, Lcom/bilibili/tv/ui/video/widget/UnifiedVideoCardBinder;->bindFromBiliVideoDetail(Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;Lcom/bilibili/tv/api/video/BiliVideoDetail;)V

    .line 35
    :cond_9
    :goto_9
    return-void

    .line 32
    :cond_a
    instance-of v0, p2, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    if-eqz v0, :cond_9

    .line 33
    check-cast p2, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    invoke-direct {p0, p1, p2}, Lcom/bilibili/tv/ui/video/widget/UnifiedVideoCardBinder;->bindFromResolveParams(Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;)V

    goto :goto_9
.end method

.method public bindCompact(Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;Ljava/lang/Object;I)V
    .locals 1

    .prologue
    .line 39
    instance-of v0, p2, Lcom/bilibili/tv/api/video/BiliVideoDetail;

    if-eqz v0, :cond_a

    .line 40
    check-cast p2, Lcom/bilibili/tv/api/video/BiliVideoDetail;

    invoke-direct {p0, p1, p2}, Lcom/bilibili/tv/ui/video/widget/UnifiedVideoCardBinder;->bindFromBiliVideoDetailCompact(Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;Lcom/bilibili/tv/api/video/BiliVideoDetail;)V

    .line 44
    :cond_9
    :goto_9
    return-void

    .line 41
    :cond_a
    instance-of v0, p2, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    if-eqz v0, :cond_9

    .line 42
    check-cast p2, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    invoke-direct {p0, p1, p2}, Lcom/bilibili/tv/ui/video/widget/UnifiedVideoCardBinder;->bindFromResolveParamsCompact(Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;)V

    goto :goto_9
.end method

.method public getCoverUrl(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 261
    instance-of v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;

    if-eqz v0, :cond_9

    .line 262
    check-cast p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;

    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mCover:Ljava/lang/String;

    .line 266
    :goto_8
    return-object v0

    .line 263
    :cond_9
    instance-of v0, p1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    if-eqz v0, :cond_12

    .line 264
    check-cast p1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    iget-object v0, p1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mEpCover:Ljava/lang/String;

    goto :goto_8

    .line 266
    :cond_12
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public getVideoId(Ljava/lang/Object;)J
    .locals 2

    .prologue
    .line 251
    instance-of v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;

    if-eqz v0, :cond_9

    .line 252
    check-cast p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;

    iget-wide v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mAvid:J

    .line 256
    :goto_8
    return-wide v0

    .line 253
    :cond_9
    instance-of v0, p1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    if-eqz v0, :cond_12

    .line 254
    check-cast p1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    iget-wide v0, p1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mCid:J

    goto :goto_8

    .line 256
    :cond_12
    const-wide/16 v0, -0x1

    goto :goto_8
.end method

.method public hasPlayProgress(Ljava/lang/Object;J)Z
    .locals 2

    .prologue
    .line 299
    invoke-virtual {p0, p1, p2, p3}, Lcom/bilibili/tv/ui/video/widget/UnifiedVideoCardBinder;->isCurrentVideoByCid(Ljava/lang/Object;J)Z

    move-result v0

    return v0
.end method

.method public isCurrentSeason(Ljava/lang/Object;I)Z
    .locals 1

    .prologue
    .line 294
    const/4 v0, 0x0

    return v0
.end method

.method public isCurrentVideo(Ljava/lang/Object;J)Z
    .locals 2

    .prologue
    .line 271
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

    .line 276
    instance-of v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;

    if-eqz v0, :cond_31

    .line 277
    check-cast p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;

    .line 278
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->sourcePage:Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;

    if-eqz v0, :cond_19

    .line 279
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->sourcePage:Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;

    iget-wide v4, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mCid:J

    cmp-long v0, v4, p2

    if-nez v0, :cond_17

    move v0, v1

    :goto_15
    move v1, v0

    .line 289
    :cond_16
    :goto_16
    return v1

    :cond_17
    move v0, v2

    .line 279
    goto :goto_15

    .line 280
    :cond_19
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->sourceEpisode:Ljava/lang/Object;

    if-eqz v0, :cond_29

    .line 281
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->sourceEpisode:Ljava/lang/Object;

    check-cast v0, Lcom/bilibili/tv/api/video/PgcInfo$Episode;

    .line 282
    iget-wide v4, v0, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->cid:J

    cmp-long v0, v4, p2

    if-eqz v0, :cond_16

    move v1, v2

    goto :goto_16

    .line 284
    :cond_29
    iget-wide v4, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mCid:J

    cmp-long v0, v4, p2

    if-eqz v0, :cond_16

    move v1, v2

    goto :goto_16

    .line 286
    :cond_31
    instance-of v0, p1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    if-eqz v0, :cond_3f

    .line 287
    check-cast p1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    iget-wide v4, p1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mCid:J

    cmp-long v0, v4, p2

    if-eqz v0, :cond_16

    move v1, v2

    goto :goto_16

    :cond_3f
    move v1, v2

    .line 289
    goto :goto_16
.end method
