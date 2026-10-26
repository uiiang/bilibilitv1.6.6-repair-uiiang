.class public Lbl/BottomEpisodeMenu;
.super Landroid/widget/FrameLayout;
.source "BottomEpisodeMenu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbl/BottomEpisodeMenu$OnEpisodeClickListener;
    }
.end annotation


# static fields
.field private static final AUTO_HIDE_DELAY:I = 0x1388

.field private static final TAG:Ljava/lang/String; = "ShotMenuBug"


# instance fields
.field private autoHideRunnable:Ljava/lang/Runnable;

.field private episodeClickListener:Lbl/BottomEpisodeMenu$OnEpisodeClickListener;

.field private isCollection:Z

.field private isHiding:Z

.field private itemCount:I

.field private listTitle:Ljava/lang/String;

.field private mainTitle:Ljava/lang/String;

.field private titleTextView:Landroid/widget/TextView;

.field private videoListSection:Lcom/bilibili/tv/ui/video/widget/VideoListSection;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbl/BottomEpisodeMenu;->isHiding:Z

    .line 38
    invoke-direct {p0}, Lbl/BottomEpisodeMenu;->init()V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbl/BottomEpisodeMenu;->isHiding:Z

    .line 43
    invoke-direct {p0}, Lbl/BottomEpisodeMenu;->init()V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbl/BottomEpisodeMenu;->isHiding:Z

    .line 48
    invoke-direct {p0}, Lbl/BottomEpisodeMenu;->init()V

    .line 49
    return-void
.end method

.method static synthetic access$000(Lbl/BottomEpisodeMenu;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lbl/BottomEpisodeMenu;->updateTitleForItem(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lbl/BottomEpisodeMenu;)Lbl/BottomEpisodeMenu$OnEpisodeClickListener;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lbl/BottomEpisodeMenu;->episodeClickListener:Lbl/BottomEpisodeMenu$OnEpisodeClickListener;

    return-object v0
.end method

.method static synthetic access$200(Lbl/BottomEpisodeMenu;)Lcom/bilibili/tv/ui/video/widget/VideoListSection;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lbl/BottomEpisodeMenu;->videoListSection:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    return-object v0
.end method

.method private buildTitle(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 89
    iget-boolean v0, p0, Lbl/BottomEpisodeMenu;->isCollection:Z

    if-eqz v0, :cond_24

    iget-object v0, p0, Lbl/BottomEpisodeMenu;->listTitle:Ljava/lang/String;

    .line 90
    :goto_8
    if-eqz v0, :cond_27

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_27

    move v3, v1

    .line 91
    :goto_11
    if-eqz p1, :cond_29

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_29

    .line 92
    :goto_19
    if-eqz v3, :cond_43

    if-eqz v1, :cond_43

    .line 93
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 98
    :cond_23
    :goto_23
    return-object v0

    .line 89
    :cond_24
    iget-object v0, p0, Lbl/BottomEpisodeMenu;->mainTitle:Ljava/lang/String;

    goto :goto_8

    :cond_27
    move v3, v2

    .line 90
    goto :goto_11

    :cond_29
    move v1, v2

    .line 91
    goto :goto_19

    .line 93
    :cond_2b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_23

    .line 95
    :cond_43
    if-nez v3, :cond_23

    .line 98
    if-eqz v1, :cond_49

    :goto_47
    move-object v0, p1

    goto :goto_23

    :cond_49
    const-string p1, ""

    goto :goto_47
.end method

.method private cancelAutoHideTimer()V
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lbl/BottomEpisodeMenu;->autoHideRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_9

    .line 239
    iget-object v0, p0, Lbl/BottomEpisodeMenu;->autoHideRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lbl/BottomEpisodeMenu;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 241
    :cond_9
    return-void
.end method

.method private formatTitle(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lbl/BottomEpisodeMenu;->buildTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 104
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_33

    .line 105
    if-eqz p2, :cond_30

    .line 107
    :goto_c
    iget v0, p0, Lbl/BottomEpisodeMenu;->itemCount:I

    if-lez v0, :cond_2f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lbl/BottomEpisodeMenu;->itemCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_2f
    return-object p2

    .line 105
    :cond_30
    const-string p2, ""

    goto :goto_c

    :cond_33
    move-object p2, v0

    goto :goto_c
.end method

.method private init()V
    .locals 2

    .prologue
    .line 52
    invoke-virtual {p0}, Lbl/BottomEpisodeMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a00a1

    invoke-static {v0, v1, p0}, Lbl/BottomEpisodeMenu;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 53
    const v0, 0x7f0801e1

    invoke-virtual {p0, v0}, Lbl/BottomEpisodeMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    iput-object v0, p0, Lbl/BottomEpisodeMenu;->videoListSection:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    .line 54
    const v0, 0x7f0801e2

    invoke-virtual {p0, v0}, Lbl/BottomEpisodeMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbl/BottomEpisodeMenu;->titleTextView:Landroid/widget/TextView;

    .line 56
    iget-object v0, p0, Lbl/BottomEpisodeMenu;->videoListSection:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->hideTitle()V

    .line 57
    iget-object v0, p0, Lbl/BottomEpisodeMenu;->videoListSection:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setShowIndexBadge(Z)V

    .line 59
    iget-object v0, p0, Lbl/BottomEpisodeMenu;->videoListSection:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setupBottomMenuFocusBoundary()V

    .line 61
    invoke-direct {p0}, Lbl/BottomEpisodeMenu;->initAutoHideTimer()V

    .line 63
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lbl/BottomEpisodeMenu;->setVisibility(I)V

    .line 64
    return-void
.end method

.method private initAutoHideTimer()V
    .locals 1

    .prologue
    .line 222
    new-instance v0, Lbl/BottomEpisodeMenu$4;

    invoke-direct {v0, p0}, Lbl/BottomEpisodeMenu$4;-><init>(Lbl/BottomEpisodeMenu;)V

    iput-object v0, p0, Lbl/BottomEpisodeMenu;->autoHideRunnable:Ljava/lang/Runnable;

    .line 228
    return-void
.end method

.method private updateTitleForItem(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Lbl/BottomEpisodeMenu;->titleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_e

    .line 113
    iget-object v0, p0, Lbl/BottomEpisodeMenu;->titleTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lbl/BottomEpisodeMenu;->formatTitle(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    :cond_e
    return-void
.end method


# virtual methods
.method public cleanup()V
    .locals 1

    .prologue
    .line 244
    invoke-direct {p0}, Lbl/BottomEpisodeMenu;->cancelAutoHideTimer()V

    .line 245
    iget-object v0, p0, Lbl/BottomEpisodeMenu;->videoListSection:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    if-eqz v0, :cond_c

    .line 246
    iget-object v0, p0, Lbl/BottomEpisodeMenu;->videoListSection:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->cleanup()V

    .line 248
    :cond_c
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4

    .prologue
    .line 252
    const-string v0, "ShotMenuBug"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EpisodeMenu.dispatchKeyEvent: keyCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isShowing="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lbl/BottomEpisodeMenu;->isShowing()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    invoke-virtual {p0}, Lbl/BottomEpisodeMenu;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_63

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_63

    .line 254
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 255
    const/16 v1, 0x15

    if-eq v0, v1, :cond_60

    const/16 v1, 0x16

    if-eq v0, v1, :cond_60

    const/16 v1, 0x13

    if-eq v0, v1, :cond_60

    const/16 v1, 0x14

    if-eq v0, v1, :cond_60

    const/16 v1, 0x17

    if-eq v0, v1, :cond_60

    const/16 v1, 0x42

    if-ne v0, v1, :cond_63

    .line 261
    :cond_60
    invoke-virtual {p0}, Lbl/BottomEpisodeMenu;->resetAutoHideTimer()V

    .line 264
    :cond_63
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 265
    const-string v1, "ShotMenuBug"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EpisodeMenu.dispatchKeyEvent: super returned "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    return v0
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 202
    invoke-virtual {p0}, Lbl/BottomEpisodeMenu;->getVisibility()I

    move-result v0

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lbl/BottomEpisodeMenu;->isHiding:Z

    if-eqz v0, :cond_b

    .line 215
    :cond_a
    :goto_a
    return-void

    .line 205
    :cond_b
    invoke-direct {p0}, Lbl/BottomEpisodeMenu;->cancelAutoHideTimer()V

    .line 206
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbl/BottomEpisodeMenu;->isHiding:Z

    .line 211
    invoke-virtual {p0}, Lbl/BottomEpisodeMenu;->clearAnimation()V

    .line 212
    const-string v0, "ShotMenuBug"

    const-string v1, "EpisodeMenu.hide: \u7acb\u5373GONE\uff08\u624b\u52a8/\u5b9a\u65f6\u7edf\u4e00\u8def\u5f84\uff09"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lbl/BottomEpisodeMenu;->setVisibility(I)V

    .line 214
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbl/BottomEpisodeMenu;->isHiding:Z

    goto :goto_a
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 218
    invoke-virtual {p0}, Lbl/BottomEpisodeMenu;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lbl/BottomEpisodeMenu;->isHiding:Z

    if-eqz v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 271
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 272
    invoke-virtual {p0}, Lbl/BottomEpisodeMenu;->cleanup()V

    .line 273
    return-void
.end method

.method public resetAutoHideTimer()V
    .locals 4

    .prologue
    .line 231
    iget-object v0, p0, Lbl/BottomEpisodeMenu;->autoHideRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_10

    .line 232
    iget-object v0, p0, Lbl/BottomEpisodeMenu;->autoHideRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lbl/BottomEpisodeMenu;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 233
    iget-object v0, p0, Lbl/BottomEpisodeMenu;->autoHideRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {p0, v0, v2, v3}, Lbl/BottomEpisodeMenu;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 235
    :cond_10
    return-void
.end method

.method public setData([Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;JLjava/lang/String;I)V
    .locals 8

    .prologue
    .line 118
    if-eqz p1, :cond_5

    array-length v0, p1

    if-nez v0, :cond_6

    .line 176
    :cond_5
    :goto_5
    return-void

    .line 122
    :cond_6
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 123
    const/4 v1, 0x1

    .line 124
    const/4 v0, 0x0

    .line 125
    array-length v4, p1

    const/4 v2, 0x0

    :goto_f
    if-ge v2, v4, :cond_29

    aget-object v5, p1, v2

    .line 126
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    iget v6, v5, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mListType:I

    if-lez v6, :cond_1c

    .line 128
    iget v1, v5, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mListType:I

    .line 130
    :cond_1c
    if-nez v0, :cond_26

    iget-wide v6, v5, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mCid:J

    cmp-long v6, v6, p2

    if-nez v6, :cond_26

    .line 131
    iget-object v0, v5, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mPageTitle:Ljava/lang/String;

    .line 125
    :cond_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 136
    :cond_29
    iput p5, p0, Lbl/BottomEpisodeMenu;->itemCount:I

    .line 137
    iget-object v2, p0, Lbl/BottomEpisodeMenu;->titleTextView:Landroid/widget/TextView;

    if-eqz v2, :cond_38

    .line 138
    iget-object v2, p0, Lbl/BottomEpisodeMenu;->titleTextView:Landroid/widget/TextView;

    invoke-direct {p0, v0, p4}, Lbl/BottomEpisodeMenu;->formatTitle(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    :cond_38
    new-instance v0, Lcom/bilibili/tv/ui/video/widget/UnifiedVideoCardBinder;

    invoke-direct {v0, v1}, Lcom/bilibili/tv/ui/video/widget/UnifiedVideoCardBinder;-><init>(I)V

    .line 145
    iget-object v1, p0, Lbl/BottomEpisodeMenu;->videoListSection:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    new-instance v2, Lbl/BottomEpisodeMenu$1;

    invoke-direct {v2, p0, p1}, Lbl/BottomEpisodeMenu$1;-><init>(Lbl/BottomEpisodeMenu;[Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;)V

    invoke-virtual {v1, v2}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setOnItemFocusedListener(Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnItemFocusedListener;)V

    .line 154
    iget-object v1, p0, Lbl/BottomEpisodeMenu;->videoListSection:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    invoke-virtual {v1, p2, p3}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setCurrentCid(J)V

    .line 155
    iget-object v1, p0, Lbl/BottomEpisodeMenu;->videoListSection:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    invoke-virtual {v1, p2, p3}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setCurrentPlayingCid(J)V

    .line 156
    iget-object v1, p0, Lbl/BottomEpisodeMenu;->videoListSection:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    invoke-virtual {v1, v3, v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setData(Ljava/util/List;Lcom/bilibili/tv/ui/video/widget/VideoCardBinder;)V

    .line 157
    iget-object v0, p0, Lbl/BottomEpisodeMenu;->videoListSection:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->syncAdapterCurrentState()V

    .line 158
    iget-object v0, p0, Lbl/BottomEpisodeMenu;->videoListSection:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    const/16 v1, 0xa

    invoke-virtual {v0, p5, v1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setupNavigationTags(II)V

    .line 160
    iget-object v0, p0, Lbl/BottomEpisodeMenu;->videoListSection:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    new-instance v1, Lbl/BottomEpisodeMenu$2;

    invoke-direct {v1, p0}, Lbl/BottomEpisodeMenu$2;-><init>(Lbl/BottomEpisodeMenu;)V

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setOnVideoClickListener(Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnVideoClickListener;)V

    goto :goto_5
.end method

.method public setOnEpisodeClickListener(Lbl/BottomEpisodeMenu$OnEpisodeClickListener;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lbl/BottomEpisodeMenu;->episodeClickListener:Lbl/BottomEpisodeMenu$OnEpisodeClickListener;

    .line 68
    return-void
.end method

.method public setTitleContext(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 78
    iput-object p1, p0, Lbl/BottomEpisodeMenu;->mainTitle:Ljava/lang/String;

    .line 79
    iput-object p2, p0, Lbl/BottomEpisodeMenu;->listTitle:Ljava/lang/String;

    .line 80
    if-eqz p3, :cond_12

    if-eqz p2, :cond_12

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    :goto_f
    iput-boolean v0, p0, Lbl/BottomEpisodeMenu;->isCollection:Z

    .line 81
    return-void

    .line 80
    :cond_12
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public show([Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;JLjava/lang/String;I)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 179
    invoke-virtual/range {p0 .. p5}, Lbl/BottomEpisodeMenu;->setData([Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;JLjava/lang/String;I)V

    .line 181
    iput-boolean v0, p0, Lbl/BottomEpisodeMenu;->isHiding:Z

    .line 182
    invoke-virtual {p0}, Lbl/BottomEpisodeMenu;->clearAnimation()V

    .line 183
    invoke-virtual {p0, v0}, Lbl/BottomEpisodeMenu;->setVisibility(I)V

    .line 184
    invoke-virtual {p0}, Lbl/BottomEpisodeMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f01000a

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lbl/BottomEpisodeMenu;->startAnimation(Landroid/view/animation/Animation;)V

    .line 186
    iget-object v0, p0, Lbl/BottomEpisodeMenu;->videoListSection:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    new-instance v1, Lbl/BottomEpisodeMenu$3;

    invoke-direct {v1, p0}, Lbl/BottomEpisodeMenu$3;-><init>(Lbl/BottomEpisodeMenu;)V

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->post(Ljava/lang/Runnable;)Z

    .line 198
    invoke-virtual {p0}, Lbl/BottomEpisodeMenu;->resetAutoHideTimer()V

    .line 199
    return-void
.end method
