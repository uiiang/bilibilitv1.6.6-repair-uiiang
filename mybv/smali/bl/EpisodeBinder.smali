.class public Lbl/EpisodeBinder;
.super Ljava/lang/Object;
.source "EpisodeBinder.java"

# interfaces
.implements Lcom/bilibili/tv/ui/video/widget/VideoCardBinder;


# static fields
.field private static final TAG:Ljava/lang/String; = "EpisodeBinder"


# instance fields
.field private bottomEpisodeMenu:Lbl/BottomEpisodeMenu;

.field private videoListSection:Lcom/bilibili/tv/ui/video/widget/VideoListSection;


# direct methods
.method public constructor <init>(Lcom/bilibili/tv/ui/video/widget/VideoListSection;Lbl/BottomEpisodeMenu;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lbl/EpisodeBinder;->videoListSection:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    .line 27
    iput-object p2, p0, Lbl/EpisodeBinder;->bottomEpisodeMenu:Lbl/BottomEpisodeMenu;

    .line 28
    return-void
.end method

.method static synthetic access$000(Lbl/EpisodeBinder;)Lcom/bilibili/tv/ui/video/widget/VideoListSection;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lbl/EpisodeBinder;->videoListSection:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    return-object v0
.end method

.method static synthetic access$100(Lbl/EpisodeBinder;I)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lbl/EpisodeBinder;->updateNavTagSelection(I)V

    return-void
.end method

.method static synthetic access$200(Lbl/EpisodeBinder;)Lbl/BottomEpisodeMenu;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lbl/EpisodeBinder;->bottomEpisodeMenu:Lbl/BottomEpisodeMenu;

    return-object v0
.end method

.method private bindBadge(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 177
    if-eqz p2, :cond_58

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_58

    .line 178
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/MainApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 180
    const/high16 v1, 0x40800000    # 4.0f

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    .line 182
    :try_start_21
    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    .line 183
    const v2, 0xffffff

    and-int/2addr v1, v2

    const/high16 v2, -0x67000000

    or-int/2addr v1, v2

    .line 184
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 185
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 186
    invoke-virtual {v2, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 187
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 188
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_3e} :catch_42

    .line 196
    :goto_3e
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 200
    :goto_41
    return-void

    .line 189
    :catch_42
    move-exception v1

    .line 190
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 191
    invoke-virtual {v1, v4}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 192
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 193
    const v0, -0x66048d67    # -2.5999077E-23f

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 194
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3e

    .line 198
    :cond_58
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_41
.end method

.method private bindCover(Lcom/bilibili/tv/widget/ScalableImageView;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 93
    if-eqz p2, :cond_1b

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 94
    invoke-static {}, Lbl/nv;->a()Lbl/nv;

    move-result-object v0

    .line 95
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bilibili/tv/MainApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p2}, Lbl/abd;->get_thumb_url_c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 96
    invoke-virtual {v0, v1, p1}, Lbl/nv;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 98
    :cond_1b
    return-void
.end method

.method private bindDuration(Landroid/widget/TextView;I)V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 101
    if-lez p2, :cond_4f

    .line 102
    const/16 v0, 0xe10

    if-lt p2, v0, :cond_33

    .line 103
    const-string v0, "%d:%02d:%02d"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    div-int/lit16 v2, p2, 0xe10

    .line 104
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

    .line 103
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    :goto_2f
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 112
    :goto_32
    return-void

    .line 106
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

    .line 110
    :cond_4f
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_32
.end method

.method private bindPlayAndDanmaku(Landroid/widget/TextView;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/16 v2, 0x8

    .line 151
    const/4 v0, 0x2

    if-ne p5, v0, :cond_d

    .line 152
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 153
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 174
    :goto_c
    return-void

    .line 157
    :cond_d
    if-eqz p3, :cond_34

    const-string v0, "0"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_34

    .line 158
    invoke-static {p3}, Lbl/adh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 166
    :goto_21
    if-eqz p4, :cond_38

    :goto_23
    :try_start_23
    invoke-static {p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_26} :catch_3b

    move-result v0

    .line 168
    :goto_27
    if-lez v0, :cond_3e

    .line 169
    invoke-static {v0}, Lbl/adh;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_c

    .line 161
    :cond_34
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_21

    .line 166
    :cond_38
    :try_start_38
    const-string p4, "0"
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_3a} :catch_3b

    goto :goto_23

    .line 167
    :catch_3b
    move-exception v0

    move v0, v1

    goto :goto_27

    .line 172
    :cond_3e
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_c
.end method

.method private bindPubDate(Landroid/widget/TextView;J)V
    .locals 2

    .prologue
    .line 115
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_12

    .line 116
    invoke-static {p2, p3}, Lcom/bilibili/tv/util/DateHelper;->formatDate(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 121
    :goto_11
    return-void

    .line 119
    :cond_12
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_11
.end method

.method private bindUpView(Landroid/widget/TextView;Ljava/lang/String;ZI)V
    .locals 4

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 124
    const/4 v0, 0x2

    if-ne p4, v0, :cond_e

    .line 125
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 126
    invoke-virtual {p1, v3, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 148
    :goto_d
    return-void

    .line 130
    :cond_e
    if-eqz p2, :cond_48

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_48

    .line 131
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 134
    const/4 v0, 0x1

    if-eq p4, v0, :cond_21

    if-eqz p3, :cond_25

    .line 135
    :cond_21
    invoke-virtual {p1, v3, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_d

    .line 137
    :cond_25
    sget-object v0, Lbl/adl;->a:Lbl/adl;

    const v1, 0x7f0700b2

    invoke-virtual {v0, v1}, Lbl/adl;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 138
    const v1, 0x7f060120

    invoke-static {v1}, Lbl/adl;->b(I)I

    move-result v1

    .line 139
    invoke-virtual {v0, v2, v2, v1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 140
    const v1, 0x7f0500a1

    invoke-static {v1}, Lbl/adl;->d(I)I

    move-result v1

    .line 141
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 142
    invoke-virtual {p1, v0, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_d

    .line 145
    :cond_48
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 146
    invoke-virtual {p1, v3, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_d
.end method

.method private updateNavTagSelection(I)V
    .locals 2

    .prologue
    .line 203
    iget-object v0, p0, Lbl/EpisodeBinder;->videoListSection:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    if-eqz v0, :cond_b

    .line 204
    div-int/lit8 v0, p1, 0xa

    .line 205
    iget-object v1, p0, Lbl/EpisodeBinder;->videoListSection:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    invoke-virtual {v1, v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setNavTagSelectedPosition(I)V

    .line 207
    :cond_b
    return-void
.end method


# virtual methods
.method public bind(Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 32
    return-void
.end method

.method public bindCompact(Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;Ljava/lang/Object;I)V
    .locals 6

    .prologue
    .line 36
    instance-of v0, p2, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    if-eqz v0, :cond_66

    .line 37
    check-cast p2, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    .line 38
    iget v5, p2, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mListType:I

    .line 40
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->getTitleView()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p2, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mPageTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->getCoverImageView()Lcom/bilibili/tv/widget/ScalableImageView;

    move-result-object v0

    iget-object v1, p2, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mEpCover:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lbl/EpisodeBinder;->bindCover(Lcom/bilibili/tv/widget/ScalableImageView;Ljava/lang/String;)V

    .line 42
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->getDurationView()Landroid/widget/TextView;

    move-result-object v0

    iget v1, p2, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mDuration:I

    invoke-direct {p0, v0, v1}, Lbl/EpisodeBinder;->bindDuration(Landroid/widget/TextView;I)V

    .line 43
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->getPubdateView()Landroid/widget/TextView;

    move-result-object v0

    iget-wide v2, p2, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mPubDate:J

    invoke-direct {p0, v0, v2, v3}, Lbl/EpisodeBinder;->bindPubDate(Landroid/widget/TextView;J)V

    .line 44
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->getUpView()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p2, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mAuthor:Ljava/lang/String;

    iget-boolean v2, p2, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mHideUpIcon:Z

    invoke-direct {p0, v0, v1, v2, v5}, Lbl/EpisodeBinder;->bindUpView(Landroid/widget/TextView;Ljava/lang/String;ZI)V

    .line 45
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->getPlayCountView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->getDanmakuView()Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p2, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mPlays:Ljava/lang/String;

    iget-object v4, p2, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mDanmakus:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lbl/EpisodeBinder;->bindPlayAndDanmaku(Landroid/widget/TextView;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;I)V

    .line 46
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->getBadgeView()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p2, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mBadgeText:Ljava/lang/String;

    iget-object v2, p2, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mBadgeBgColor:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lbl/EpisodeBinder;->bindBadge(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    iget-object v0, p1, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->a:Landroid/view/View;

    new-instance v1, Lbl/EpisodeBinder$1;

    invoke-direct {v1, p0, p1}, Lbl/EpisodeBinder$1;-><init>(Lbl/EpisodeBinder;Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 69
    iget-object v0, p1, Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;->a:Landroid/view/View;

    new-instance v1, Lbl/EpisodeBinder$2;

    invoke-direct {v1, p0, p1, p2}, Lbl/EpisodeBinder$2;-><init>(Lbl/EpisodeBinder;Lcom/bilibili/tv/ui/video/widget/CompactVideoHolder;Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    :cond_66
    return-void
.end method

.method public getCoverUrl(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 219
    instance-of v0, p1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    if-eqz v0, :cond_9

    .line 220
    check-cast p1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    iget-object v0, p1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mEpCover:Ljava/lang/String;

    .line 222
    :goto_8
    return-object v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public getVideoId(Ljava/lang/Object;)J
    .locals 2

    .prologue
    .line 211
    instance-of v0, p1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    if-eqz v0, :cond_9

    .line 212
    check-cast p1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    iget-wide v0, p1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mCid:J

    .line 214
    :goto_8
    return-wide v0

    :cond_9
    const-wide/16 v0, -0x1

    goto :goto_8
.end method

.method public isCurrentSeason(Ljava/lang/Object;I)Z
    .locals 1

    .prologue
    .line 240
    const/4 v0, 0x0

    return v0
.end method

.method public isCurrentVideo(Ljava/lang/Object;J)Z
    .locals 2

    .prologue
    .line 227
    invoke-virtual {p0, p1}, Lbl/EpisodeBinder;->getVideoId(Ljava/lang/Object;)J

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
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 232
    instance-of v1, p1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    if-eqz v1, :cond_e

    .line 233
    check-cast p1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    iget-wide v2, p1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mCid:J

    cmp-long v1, v2, p2

    if-nez v1, :cond_e

    const/4 v0, 0x1

    .line 235
    :cond_e
    return v0
.end method
