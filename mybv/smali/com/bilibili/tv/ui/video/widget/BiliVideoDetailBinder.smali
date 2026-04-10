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
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private bindBadge(Landroid/widget/TextView;Lcom/bilibili/tv/api/video/BiliVideoDetail;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 160
    iget-object v0, p2, Lcom/bilibili/tv/api/video/BiliVideoDetail;->badgeText:Ljava/lang/String;

    if-eqz v0, :cond_60

    iget-object v0, p2, Lcom/bilibili/tv/api/video/BiliVideoDetail;->badgeText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_60

    .line 161
    iget-object v0, p2, Lcom/bilibili/tv/api/video/BiliVideoDetail;->badgeText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/MainApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 163
    const/high16 v1, 0x40800000    # 4.0f

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    .line 165
    :try_start_27
    iget-object v1, p2, Lcom/bilibili/tv/api/video/BiliVideoDetail;->badgeBgColor:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    .line 166
    const v2, 0xffffff

    and-int/2addr v1, v2

    const/high16 v2, -0x67000000

    or-int/2addr v1, v2

    .line 167
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 168
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 169
    invoke-virtual {v2, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 170
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 171
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_46} :catch_4a

    .line 179
    :goto_46
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 183
    :goto_49
    return-void

    .line 172
    :catch_4a
    move-exception v1

    .line 173
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 174
    invoke-virtual {v1, v4}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 175
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 176
    const v0, -0x66048d67    # -2.5999077E-23f

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 177
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_46

    .line 181
    :cond_60
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_49
.end method

.method private bindCover(Lcom/bilibili/tv/widget/ScalableImageView;Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 186
    if-eqz p2, :cond_15

    .line 187
    invoke-static {}, Lbl/nv;->a()Lbl/nv;

    move-result-object v0

    .line 188
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bilibili/tv/MainApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 189
    invoke-static {v1, p2}, Lbl/abd;->get_thumb_url_c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 190
    invoke-virtual {v0, v1, p1}, Lbl/nv;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 192
    :cond_15
    return-void
.end method


# virtual methods
.method public bind(Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;Ljava/lang/Object;I)V
    .locals 9

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 25
    instance-of v0, p2, Lcom/bilibili/tv/api/video/BiliVideoDetail;

    if-nez v0, :cond_b

    .line 84
    :goto_a
    return-void

    .line 28
    :cond_b
    check-cast p2, Lcom/bilibili/tv/api/video/BiliVideoDetail;

    .line 30
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->getTitleView()Landroid/widget/TextView;

    move-result-object v0

    iget-object v2, p2, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    invoke-virtual {p2}, Lcom/bilibili/tv/api/video/BiliVideoDetail;->getAuthor()Ljava/lang/String;

    move-result-object v0

    .line 33
    if-eqz v0, :cond_e5

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_e5

    .line 34
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->getUpView()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    iget-boolean v0, p2, Lcom/bilibili/tv/api/video/BiliVideoDetail;->hideUpIcon:Z

    if-nez v0, :cond_dc

    .line 36
    sget-object v0, Lbl/adl;->a:Lbl/adl;

    const v2, 0x7f0700b2

    invoke-virtual {v0, v2}, Lbl/adl;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 37
    const v2, 0x7f060120

    invoke-static {v2}, Lbl/adl;->b(I)I

    move-result v2

    .line 38
    invoke-virtual {v0, v1, v1, v2, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 39
    const v2, 0x7f0500a1

    invoke-static {v2}, Lbl/adl;->d(I)I

    move-result v2

    .line 40
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 41
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->getUpView()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v0, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 49
    :goto_53
    invoke-virtual {p2}, Lcom/bilibili/tv/api/video/BiliVideoDetail;->getPlays()Ljava/lang/String;

    move-result-object v0

    .line 50
    if-eqz v0, :cond_64

    .line 51
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->getPlayCountView()Landroid/widget/TextView;

    move-result-object v2

    invoke-static {v0}, Lbl/adh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    :cond_64
    :try_start_64
    invoke-virtual {p2}, Lcom/bilibili/tv/api/video/BiliVideoDetail;->getDanmakus()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_6b} :catch_ee

    move-result v0

    .line 58
    :goto_6c
    if-lez v0, :cond_f2

    .line 59
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->getDanmakuInImageView()Landroid/widget/TextView;

    move-result-object v2

    invoke-static {v0}, Lbl/adh;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->getDanmakuInImageView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 65
    :goto_80
    iget-wide v2, p2, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mCreatedTimestamp:J

    .line 66
    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_fa

    .line 67
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->getPubdateView()Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v2, v3}, Lcom/bilibili/tv/util/DateHelper;->formatDate(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->getPubdateView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 73
    :goto_9a
    iget v0, p2, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mDuration:I

    .line 74
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->getDurationView()Landroid/widget/TextView;

    move-result-object v2

    .line 75
    const/16 v3, 0xe10

    if-lt v0, v3, :cond_102

    .line 76
    const-string v3, "%d:%02d:%02d"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    div-int/lit16 v5, v0, 0xe10

    .line 77
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    rem-int/lit16 v1, v0, 0xe10

    div-int/lit8 v1, v1, 0x3c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v6

    rem-int/lit8 v0, v0, 0x3c

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v7

    .line 76
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    :goto_ca
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->getBadgeView()Landroid/widget/TextView;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/bilibili/tv/ui/video/widget/BiliVideoDetailBinder;->bindBadge(Landroid/widget/TextView;Lcom/bilibili/tv/api/video/BiliVideoDetail;)V

    .line 83
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->getCoverImageView()Lcom/bilibili/tv/widget/ScalableImageView;

    move-result-object v0

    iget-object v1, p2, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mCover:Ljava/lang/String;

    invoke-direct {p0, v0, v1, p3}, Lcom/bilibili/tv/ui/video/widget/BiliVideoDetailBinder;->bindCover(Lcom/bilibili/tv/widget/ScalableImageView;Ljava/lang/String;I)V

    goto/16 :goto_a

    .line 43
    :cond_dc
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->getUpView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_53

    .line 46
    :cond_e5
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->getUpView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_53

    .line 57
    :catch_ee
    move-exception v0

    move v0, v1

    goto/16 :goto_6c

    .line 62
    :cond_f2
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->getDanmakuInImageView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_80

    .line 70
    :cond_fa
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->getPubdateView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_9a

    .line 79
    :cond_102
    const-string v3, "%02d:%02d"

    new-array v4, v7, [Ljava/lang/Object;

    div-int/lit8 v5, v0, 0x3c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    rem-int/lit8 v0, v0, 0x3c

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_ca
.end method

.method public bindCompact(Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;Ljava/lang/Object;I)V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/16 v6, 0x8

    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 88
    instance-of v0, p2, Lcom/bilibili/tv/api/video/BiliVideoDetail;

    if-nez v0, :cond_b

    .line 157
    :goto_a
    return-void

    .line 91
    :cond_b
    check-cast p2, Lcom/bilibili/tv/api/video/BiliVideoDetail;

    .line 93
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->getTitleView()Landroid/widget/TextView;

    move-result-object v0

    iget-object v2, p2, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    invoke-virtual {p2}, Lcom/bilibili/tv/api/video/BiliVideoDetail;->getAuthor()Ljava/lang/String;

    move-result-object v0

    .line 96
    if-eqz v0, :cond_f8

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_f8

    .line 97
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->getUpView()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->getUpView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 99
    iget-boolean v0, p2, Lcom/bilibili/tv/api/video/BiliVideoDetail;->hideUpIcon:Z

    if-nez v0, :cond_ef

    .line 100
    sget-object v0, Lbl/adl;->a:Lbl/adl;

    const v2, 0x7f0700b2

    invoke-virtual {v0, v2}, Lbl/adl;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 101
    const v2, 0x7f060120

    invoke-static {v2}, Lbl/adl;->b(I)I

    move-result v2

    .line 102
    invoke-virtual {v0, v1, v1, v2, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 103
    const v2, 0x7f0500a1

    invoke-static {v2}, Lbl/adl;->d(I)I

    move-result v2

    .line 104
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 105
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->getUpView()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v0, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 114
    :goto_5a
    invoke-virtual {p2}, Lcom/bilibili/tv/api/video/BiliVideoDetail;->getPlays()Ljava/lang/String;

    move-result-object v0

    .line 115
    if-eqz v0, :cond_108

    .line 116
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->getPlayCountView()Landroid/widget/TextView;

    move-result-object v2

    invoke-static {v0}, Lbl/adh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->getPlayCountView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 124
    :goto_72
    :try_start_72
    invoke-virtual {p2}, Lcom/bilibili/tv/api/video/BiliVideoDetail;->getDanmakus()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_79} :catch_111

    move-result v0

    .line 126
    :goto_7a
    if-lez v0, :cond_115

    .line 127
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->getDanmakuView()Landroid/widget/TextView;

    move-result-object v2

    invoke-static {v0}, Lbl/adh;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->getDanmakuView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 133
    :goto_8e
    iget-wide v2, p2, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mCreatedTimestamp:J

    .line 134
    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_11e

    .line 135
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->getPubdateView()Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v2, v3}, Lcom/bilibili/tv/util/DateHelper;->formatDate(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->getPubdateView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 141
    :goto_a8
    iget v0, p2, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mDuration:I

    .line 142
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->getDurationView()Landroid/widget/TextView;

    move-result-object v2

    .line 143
    if-lez v0, :cond_142

    .line 144
    const/16 v3, 0xe10

    if-lt v0, v3, :cond_126

    .line 145
    const-string v3, "%d:%02d:%02d"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    div-int/lit16 v5, v0, 0xe10

    .line 146
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    rem-int/lit16 v5, v0, 0xe10

    div-int/lit8 v5, v5, 0x3c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    rem-int/lit8 v0, v0, 0x3c

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v8

    .line 145
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    :goto_da
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 155
    :goto_dd
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->getBadgeView()Landroid/widget/TextView;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/bilibili/tv/ui/video/widget/BiliVideoDetailBinder;->bindBadge(Landroid/widget/TextView;Lcom/bilibili/tv/api/video/BiliVideoDetail;)V

    .line 156
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->getCoverImageView()Lcom/bilibili/tv/widget/ScalableImageView;

    move-result-object v0

    iget-object v1, p2, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mCover:Ljava/lang/String;

    invoke-direct {p0, v0, v1, p3}, Lcom/bilibili/tv/ui/video/widget/BiliVideoDetailBinder;->bindCover(Lcom/bilibili/tv/widget/ScalableImageView;Ljava/lang/String;I)V

    goto/16 :goto_a

    .line 107
    :cond_ef
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->getUpView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_5a

    .line 110
    :cond_f8
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->getUpView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 111
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->getUpView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_5a

    .line 119
    :cond_108
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->getPlayCountView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_72

    .line 125
    :catch_111
    move-exception v0

    move v0, v1

    goto/16 :goto_7a

    .line 130
    :cond_115
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->getDanmakuView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_8e

    .line 138
    :cond_11e
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->getPubdateView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_a8

    .line 148
    :cond_126
    const-string v3, "%02d:%02d"

    new-array v4, v8, [Ljava/lang/Object;

    div-int/lit8 v5, v0, 0x3c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    rem-int/lit8 v0, v0, 0x3c

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_da

    .line 152
    :cond_142
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_dd
.end method

.method public getCoverUrl(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 205
    const/4 v0, 0x0

    .line 206
    instance-of v1, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;

    if-eqz v1, :cond_9

    .line 207
    check-cast p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;

    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mCover:Ljava/lang/String;

    .line 209
    :cond_9
    return-object v0
.end method

.method public getVideoId(Ljava/lang/Object;)J
    .locals 3

    .prologue
    .line 196
    const-wide/16 v0, -0x1

    .line 197
    instance-of v2, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;

    if-eqz v2, :cond_a

    .line 198
    check-cast p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;

    iget-wide v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mAvid:J

    .line 200
    :cond_a
    return-wide v0
.end method

.method public isCurrentSeason(Ljava/lang/Object;I)Z
    .locals 1

    .prologue
    .line 233
    const/4 v0, 0x0

    return v0
.end method

.method public isCurrentVideo(Ljava/lang/Object;J)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 214
    .line 215
    instance-of v1, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;

    if-eqz v1, :cond_e

    .line 216
    check-cast p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;

    iget-wide v2, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mAvid:J

    cmp-long v1, v2, p2

    if-nez v1, :cond_e

    const/4 v0, 0x1

    .line 218
    :cond_e
    return v0
.end method

.method public isCurrentVideoByCid(Ljava/lang/Object;J)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 223
    .line 224
    instance-of v1, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;

    if-eqz v1, :cond_e

    .line 225
    check-cast p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;

    .line 226
    iget-wide v2, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mCid:J

    cmp-long v1, v2, p2

    if-nez v1, :cond_e

    const/4 v0, 0x1

    .line 228
    :cond_e
    return v0
.end method
