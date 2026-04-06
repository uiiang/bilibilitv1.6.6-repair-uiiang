.class public Lcom/bilibili/tv/ui/video/widget/PageVideoDetailBinder;
.super Ljava/lang/Object;
.source "PageVideoDetailBinder.java"

# interfaces
.implements Lcom/bilibili/tv/ui/video/widget/VideoCardBinder;


# static fields
.field private static final TAG:Ljava/lang/String; = "PageBinder"


# instance fields
.field private isPgcMode:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-boolean p1, p0, Lcom/bilibili/tv/ui/video/widget/PageVideoDetailBinder;->isPgcMode:Z

    .line 22
    return-void
.end method

.method private bindBadge(Landroid/widget/TextView;Lcom/bilibili/tv/api/video/BiliVideoDetail;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 162
    iget-object v0, p2, Lcom/bilibili/tv/api/video/BiliVideoDetail;->badgeText:Ljava/lang/String;

    if-eqz v0, :cond_60

    iget-object v0, p2, Lcom/bilibili/tv/api/video/BiliVideoDetail;->badgeText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_60

    .line 163
    iget-object v0, p2, Lcom/bilibili/tv/api/video/BiliVideoDetail;->badgeText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/MainApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 165
    const/high16 v1, 0x40800000    # 4.0f

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    .line 167
    :try_start_27
    iget-object v1, p2, Lcom/bilibili/tv/api/video/BiliVideoDetail;->badgeBgColor:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    .line 168
    const v2, 0xffffff

    and-int/2addr v1, v2

    const/high16 v2, -0x67000000

    or-int/2addr v1, v2

    .line 169
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 170
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 171
    invoke-virtual {v2, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 172
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 173
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_46} :catch_4a

    .line 181
    :goto_46
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 185
    :goto_49
    return-void

    .line 174
    :catch_4a
    move-exception v1

    .line 175
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 176
    invoke-virtual {v1, v4}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 177
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 178
    const v0, -0x66048d67    # -2.5999077E-23f

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 179
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_46

    .line 183
    :cond_60
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_49
.end method

.method private bindCover(Lcom/bilibili/tv/widget/ScalableImageView;Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 188
    if-eqz p2, :cond_1b

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 189
    invoke-static {}, Lbl/nv;->a()Lbl/nv;

    move-result-object v0

    .line 190
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bilibili/tv/MainApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 191
    invoke-static {v1, p2}, Lbl/abd;->get_thumb_url_c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 192
    invoke-virtual {v0, v1, p1}, Lbl/nv;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 194
    :cond_1b
    return-void
.end method


# virtual methods
.method public bind(Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;Ljava/lang/Object;I)V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v3, 0x0

    const/16 v6, 0x8

    const/4 v1, 0x0

    .line 26
    instance-of v0, p2, Lcom/bilibili/tv/api/video/BiliVideoDetail;

    if-nez v0, :cond_b

    .line 89
    :goto_a
    return-void

    .line 29
    :cond_b
    check-cast p2, Lcom/bilibili/tv/api/video/BiliVideoDetail;

    .line 31
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->getTitleView()Landroid/widget/TextView;

    move-result-object v0

    iget-object v2, p2, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/video/widget/PageVideoDetailBinder;->isPgcMode:Z

    if-eqz v0, :cond_e5

    .line 34
    iget-object v0, p2, Lcom/bilibili/tv/api/video/BiliVideoDetail;->vtText:Ljava/lang/String;

    if-eqz v0, :cond_dc

    iget-object v0, p2, Lcom/bilibili/tv/api/video/BiliVideoDetail;->vtText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_dc

    .line 35
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->getUpView()Landroid/widget/TextView;

    move-result-object v0

    iget-object v2, p2, Lcom/bilibili/tv/api/video/BiliVideoDetail;->vtText:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->getUpView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 43
    :goto_36
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->getUpView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 45
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/video/widget/PageVideoDetailBinder;->isPgcMode:Z

    if-eqz v0, :cond_104

    .line 46
    invoke-virtual {p2}, Lcom/bilibili/tv/api/video/BiliVideoDetail;->getPlays()Ljava/lang/String;

    move-result-object v0

    .line 47
    if-eqz v0, :cond_ee

    const-string v2, "0"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_ee

    .line 48
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->getPlayCountView()Landroid/widget/TextView;

    move-result-object v2

    invoke-static {v0}, Lbl/adh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->getPlayCountView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 56
    :goto_61
    :try_start_61
    invoke-virtual {p2}, Lcom/bilibili/tv/api/video/BiliVideoDetail;->getDanmakus()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_68} :catch_f7

    move-result v0

    .line 58
    :goto_69
    if-lez v0, :cond_fb

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

    .line 69
    :goto_7d
    iget-wide v2, p2, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mCreatedTimestamp:J

    .line 70
    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_114

    .line 71
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->getPubdateView()Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v2, v3}, Lcom/bilibili/tv/util/DateHelper;->formatDate(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->getPubdateView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 77
    :goto_97
    iget v0, p2, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mDuration:I

    .line 78
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->getDurationView()Landroid/widget/TextView;

    move-result-object v2

    .line 79
    const/16 v3, 0xe10

    if-lt v0, v3, :cond_11d

    .line 80
    const-string v3, "%d:%02d:%02d"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    div-int/lit16 v5, v0, 0xe10

    .line 81
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

    .line 80
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    :goto_c7
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 87
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->getBadgeView()Landroid/widget/TextView;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/bilibili/tv/ui/video/widget/PageVideoDetailBinder;->bindBadge(Landroid/widget/TextView;Lcom/bilibili/tv/api/video/BiliVideoDetail;)V

    .line 88
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->getCoverImageView()Lcom/bilibili/tv/widget/ScalableImageView;

    move-result-object v0

    iget-object v1, p2, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mCover:Ljava/lang/String;

    invoke-direct {p0, v0, v1, p3}, Lcom/bilibili/tv/ui/video/widget/PageVideoDetailBinder;->bindCover(Lcom/bilibili/tv/widget/ScalableImageView;Ljava/lang/String;I)V

    goto/16 :goto_a

    .line 38
    :cond_dc
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->getUpView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_36

    .line 41
    :cond_e5
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->getUpView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_36

    .line 51
    :cond_ee
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->getPlayCountView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_61

    .line 57
    :catch_f7
    move-exception v0

    move v0, v1

    goto/16 :goto_69

    .line 62
    :cond_fb
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->getDanmakuInImageView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_7d

    .line 65
    :cond_104
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->getPlayCountView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 66
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->getDanmakuInImageView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_7d

    .line 74
    :cond_114
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;->getPubdateView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_97

    .line 83
    :cond_11d
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

    goto :goto_c7
.end method

.method public bindCompact(Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;Ljava/lang/Object;I)V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/16 v6, 0x8

    const/4 v1, 0x0

    .line 93
    instance-of v0, p2, Lcom/bilibili/tv/api/video/BiliVideoDetail;

    if-nez v0, :cond_a

    .line 159
    :goto_9
    return-void

    .line 96
    :cond_a
    check-cast p2, Lcom/bilibili/tv/api/video/BiliVideoDetail;

    .line 98
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->getTitleView()Landroid/widget/TextView;

    move-result-object v0

    iget-object v2, p2, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/video/widget/PageVideoDetailBinder;->isPgcMode:Z

    if-eqz v0, :cond_df

    .line 101
    iget-object v0, p2, Lcom/bilibili/tv/api/video/BiliVideoDetail;->vtText:Ljava/lang/String;

    if-eqz v0, :cond_d6

    iget-object v0, p2, Lcom/bilibili/tv/api/video/BiliVideoDetail;->vtText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d6

    .line 102
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->getUpView()Landroid/widget/TextView;

    move-result-object v0

    iget-object v2, p2, Lcom/bilibili/tv/api/video/BiliVideoDetail;->vtText:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->getUpView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 111
    :goto_35
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/video/widget/PageVideoDetailBinder;->isPgcMode:Z

    if-eqz v0, :cond_fe

    .line 112
    invoke-virtual {p2}, Lcom/bilibili/tv/api/video/BiliVideoDetail;->getPlays()Ljava/lang/String;

    move-result-object v0

    .line 113
    if-eqz v0, :cond_e8

    const-string v2, "0"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e8

    .line 114
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->getPlayCountView()Landroid/widget/TextView;

    move-result-object v2

    invoke-static {v0}, Lbl/adh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->getPlayCountView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 122
    :goto_59
    :try_start_59
    invoke-virtual {p2}, Lcom/bilibili/tv/api/video/BiliVideoDetail;->getDanmakus()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_60} :catch_f1

    move-result v0

    .line 124
    :goto_61
    if-lez v0, :cond_f5

    .line 125
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->getDanmakuView()Landroid/widget/TextView;

    move-result-object v2

    invoke-static {v0}, Lbl/adh;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->getDanmakuView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 135
    :goto_75
    iget-wide v2, p2, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mCreatedTimestamp:J

    .line 136
    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_10e

    .line 137
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->getPubdateView()Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v2, v3}, Lcom/bilibili/tv/util/DateHelper;->formatDate(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->getPubdateView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 143
    :goto_8f
    iget v0, p2, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mDuration:I

    .line 144
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->getDurationView()Landroid/widget/TextView;

    move-result-object v2

    .line 145
    if-lez v0, :cond_133

    .line 146
    const/16 v3, 0xe10

    if-lt v0, v3, :cond_117

    .line 147
    const-string v3, "%d:%02d:%02d"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    div-int/lit16 v5, v0, 0xe10

    .line 148
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

    .line 147
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    :goto_c1
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 157
    :goto_c4
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->getBadgeView()Landroid/widget/TextView;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/bilibili/tv/ui/video/widget/PageVideoDetailBinder;->bindBadge(Landroid/widget/TextView;Lcom/bilibili/tv/api/video/BiliVideoDetail;)V

    .line 158
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->getCoverImageView()Lcom/bilibili/tv/widget/ScalableImageView;

    move-result-object v0

    iget-object v1, p2, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mCover:Ljava/lang/String;

    invoke-direct {p0, v0, v1, p3}, Lcom/bilibili/tv/ui/video/widget/PageVideoDetailBinder;->bindCover(Lcom/bilibili/tv/widget/ScalableImageView;Ljava/lang/String;I)V

    goto/16 :goto_9

    .line 105
    :cond_d6
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->getUpView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_35

    .line 108
    :cond_df
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->getUpView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_35

    .line 117
    :cond_e8
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->getPlayCountView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_59

    .line 123
    :catch_f1
    move-exception v0

    move v0, v1

    goto/16 :goto_61

    .line 128
    :cond_f5
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->getDanmakuView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_75

    .line 131
    :cond_fe
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->getPlayCountView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 132
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->getDanmakuView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_75

    .line 140
    :cond_10e
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->getPubdateView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_8f

    .line 150
    :cond_117
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

    goto :goto_c1

    .line 154
    :cond_133
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_c4
.end method

.method public getCoverUrl(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 207
    const/4 v0, 0x0

    .line 208
    instance-of v1, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;

    if-eqz v1, :cond_9

    .line 209
    check-cast p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;

    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mCover:Ljava/lang/String;

    .line 211
    :cond_9
    return-object v0
.end method

.method public getVideoId(Ljava/lang/Object;)J
    .locals 3

    .prologue
    .line 198
    const-wide/16 v0, -0x1

    .line 199
    instance-of v2, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;

    if-eqz v2, :cond_a

    .line 200
    check-cast p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;

    iget-wide v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mAvid:J

    .line 202
    :cond_a
    return-wide v0
.end method

.method public isCurrentSeason(Ljava/lang/Object;I)Z
    .locals 1

    .prologue
    .line 235
    const/4 v0, 0x0

    return v0
.end method

.method public isCurrentVideo(Ljava/lang/Object;J)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 216
    .line 217
    instance-of v1, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;

    if-eqz v1, :cond_e

    .line 218
    check-cast p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;

    iget-wide v2, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mAvid:J

    cmp-long v1, v2, p2

    if-nez v1, :cond_e

    const/4 v0, 0x1

    .line 220
    :cond_e
    return v0
.end method

.method public isCurrentVideoByCid(Ljava/lang/Object;J)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 225
    .line 226
    instance-of v1, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;

    if-eqz v1, :cond_e

    .line 227
    check-cast p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;

    .line 228
    iget-wide v2, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mCid:J

    cmp-long v1, v2, p2

    if-nez v1, :cond_e

    const/4 v0, 0x1

    .line 230
    :cond_e
    return v0
.end method
