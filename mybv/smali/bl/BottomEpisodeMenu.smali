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

.field private isHiding:Z

.field private titleTextView:Landroid/widget/TextView;

.field private videoListSection:Lcom/bilibili/tv/ui/video/widget/VideoListSection;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbl/BottomEpisodeMenu;->isHiding:Z

    .line 32
    invoke-direct {p0}, Lbl/BottomEpisodeMenu;->init()V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbl/BottomEpisodeMenu;->isHiding:Z

    .line 37
    invoke-direct {p0}, Lbl/BottomEpisodeMenu;->init()V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbl/BottomEpisodeMenu;->isHiding:Z

    .line 42
    invoke-direct {p0}, Lbl/BottomEpisodeMenu;->init()V

    .line 43
    return-void
.end method

.method static synthetic access$000(Lbl/BottomEpisodeMenu;)Lbl/BottomEpisodeMenu$OnEpisodeClickListener;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lbl/BottomEpisodeMenu;->episodeClickListener:Lbl/BottomEpisodeMenu$OnEpisodeClickListener;

    return-object v0
.end method

.method static synthetic access$100(Lbl/BottomEpisodeMenu;)Lcom/bilibili/tv/ui/video/widget/VideoListSection;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lbl/BottomEpisodeMenu;->videoListSection:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    return-object v0
.end method

.method private cancelAutoHideTimer()V
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lbl/BottomEpisodeMenu;->autoHideRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_9

    .line 169
    iget-object v0, p0, Lbl/BottomEpisodeMenu;->autoHideRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lbl/BottomEpisodeMenu;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 171
    :cond_9
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 46
    invoke-virtual {p0}, Lbl/BottomEpisodeMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a00a1

    invoke-static {v0, v1, p0}, Lbl/BottomEpisodeMenu;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 47
    const v0, 0x7f0801e1

    invoke-virtual {p0, v0}, Lbl/BottomEpisodeMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    iput-object v0, p0, Lbl/BottomEpisodeMenu;->videoListSection:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    .line 48
    const v0, 0x7f0801e2

    invoke-virtual {p0, v0}, Lbl/BottomEpisodeMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbl/BottomEpisodeMenu;->titleTextView:Landroid/widget/TextView;

    .line 50
    iget-object v0, p0, Lbl/BottomEpisodeMenu;->videoListSection:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->hideTitle()V

    .line 51
    iget-object v0, p0, Lbl/BottomEpisodeMenu;->videoListSection:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setShowIndexBadge(Z)V

    .line 53
    iget-object v0, p0, Lbl/BottomEpisodeMenu;->videoListSection:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setupBottomMenuFocusBoundary()V

    .line 55
    invoke-direct {p0}, Lbl/BottomEpisodeMenu;->initAutoHideTimer()V

    .line 57
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lbl/BottomEpisodeMenu;->setVisibility(I)V

    .line 58
    return-void
.end method

.method private initAutoHideTimer()V
    .locals 1

    .prologue
    .line 152
    new-instance v0, Lbl/BottomEpisodeMenu$3;

    invoke-direct {v0, p0}, Lbl/BottomEpisodeMenu$3;-><init>(Lbl/BottomEpisodeMenu;)V

    iput-object v0, p0, Lbl/BottomEpisodeMenu;->autoHideRunnable:Ljava/lang/Runnable;

    .line 158
    return-void
.end method


# virtual methods
.method public cleanup()V
    .locals 1

    .prologue
    .line 174
    invoke-direct {p0}, Lbl/BottomEpisodeMenu;->cancelAutoHideTimer()V

    .line 175
    iget-object v0, p0, Lbl/BottomEpisodeMenu;->videoListSection:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    if-eqz v0, :cond_c

    .line 176
    iget-object v0, p0, Lbl/BottomEpisodeMenu;->videoListSection:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->cleanup()V

    .line 178
    :cond_c
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4

    .prologue
    .line 182
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

    .line 183
    invoke-virtual {p0}, Lbl/BottomEpisodeMenu;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_63

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_63

    .line 184
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 185
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

    .line 191
    :cond_60
    invoke-virtual {p0}, Lbl/BottomEpisodeMenu;->resetAutoHideTimer()V

    .line 194
    :cond_63
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 195
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

    .line 196
    return v0
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 132
    invoke-virtual {p0}, Lbl/BottomEpisodeMenu;->getVisibility()I

    move-result v0

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lbl/BottomEpisodeMenu;->isHiding:Z

    if-eqz v0, :cond_b

    .line 145
    :cond_a
    :goto_a
    return-void

    .line 135
    :cond_b
    invoke-direct {p0}, Lbl/BottomEpisodeMenu;->cancelAutoHideTimer()V

    .line 136
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbl/BottomEpisodeMenu;->isHiding:Z

    .line 141
    invoke-virtual {p0}, Lbl/BottomEpisodeMenu;->clearAnimation()V

    .line 142
    const-string v0, "ShotMenuBug"

    const-string v1, "EpisodeMenu.hide: \u7acb\u5373GONE\uff08\u624b\u52a8/\u5b9a\u65f6\u7edf\u4e00\u8def\u5f84\uff09"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lbl/BottomEpisodeMenu;->setVisibility(I)V

    .line 144
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbl/BottomEpisodeMenu;->isHiding:Z

    goto :goto_a
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 148
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
    .line 201
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 202
    invoke-virtual {p0}, Lbl/BottomEpisodeMenu;->cleanup()V

    .line 203
    return-void
.end method

.method public resetAutoHideTimer()V
    .locals 4

    .prologue
    .line 161
    iget-object v0, p0, Lbl/BottomEpisodeMenu;->autoHideRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_10

    .line 162
    iget-object v0, p0, Lbl/BottomEpisodeMenu;->autoHideRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lbl/BottomEpisodeMenu;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 163
    iget-object v0, p0, Lbl/BottomEpisodeMenu;->autoHideRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {p0, v0, v2, v3}, Lbl/BottomEpisodeMenu;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 165
    :cond_10
    return-void
.end method

.method public setData([Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;JLjava/lang/String;I)V
    .locals 6

    .prologue
    .line 65
    if-eqz p1, :cond_5

    array-length v0, p1

    if-nez v0, :cond_6

    .line 106
    :cond_5
    :goto_5
    return-void

    .line 69
    :cond_6
    iget-object v0, p0, Lbl/BottomEpisodeMenu;->titleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_2c

    .line 70
    iget-object v0, p0, Lbl/BottomEpisodeMenu;->titleTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    :cond_2c
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 74
    const/4 v0, 0x1

    .line 75
    array-length v3, p1

    const/4 v1, 0x0

    :goto_34
    if-ge v1, v3, :cond_44

    aget-object v4, p1, v1

    .line 76
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    iget v5, v4, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mListType:I

    if-lez v5, :cond_41

    .line 78
    iget v0, v4, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mListType:I

    .line 75
    :cond_41
    add-int/lit8 v1, v1, 0x1

    goto :goto_34

    .line 82
    :cond_44
    new-instance v1, Lcom/bilibili/tv/ui/video/widget/UnifiedVideoCardBinder;

    invoke-direct {v1, v0}, Lcom/bilibili/tv/ui/video/widget/UnifiedVideoCardBinder;-><init>(I)V

    .line 84
    iget-object v0, p0, Lbl/BottomEpisodeMenu;->videoListSection:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    invoke-virtual {v0, p2, p3}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setCurrentCid(J)V

    .line 85
    iget-object v0, p0, Lbl/BottomEpisodeMenu;->videoListSection:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    invoke-virtual {v0, p2, p3}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setCurrentPlayingCid(J)V

    .line 86
    iget-object v0, p0, Lbl/BottomEpisodeMenu;->videoListSection:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    invoke-virtual {v0, v2, v1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setData(Ljava/util/List;Lcom/bilibili/tv/ui/video/widget/VideoCardBinder;)V

    .line 87
    iget-object v0, p0, Lbl/BottomEpisodeMenu;->videoListSection:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->syncAdapterCurrentState()V

    .line 88
    iget-object v0, p0, Lbl/BottomEpisodeMenu;->videoListSection:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    const/16 v1, 0xa

    invoke-virtual {v0, p5, v1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setupNavigationTags(II)V

    .line 90
    iget-object v0, p0, Lbl/BottomEpisodeMenu;->videoListSection:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    new-instance v1, Lbl/BottomEpisodeMenu$1;

    invoke-direct {v1, p0}, Lbl/BottomEpisodeMenu$1;-><init>(Lbl/BottomEpisodeMenu;)V

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setOnVideoClickListener(Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnVideoClickListener;)V

    goto :goto_5
.end method

.method public setOnEpisodeClickListener(Lbl/BottomEpisodeMenu$OnEpisodeClickListener;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lbl/BottomEpisodeMenu;->episodeClickListener:Lbl/BottomEpisodeMenu$OnEpisodeClickListener;

    .line 62
    return-void
.end method

.method public show([Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;JLjava/lang/String;I)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 109
    invoke-virtual/range {p0 .. p5}, Lbl/BottomEpisodeMenu;->setData([Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;JLjava/lang/String;I)V

    .line 111
    iput-boolean v0, p0, Lbl/BottomEpisodeMenu;->isHiding:Z

    .line 112
    invoke-virtual {p0}, Lbl/BottomEpisodeMenu;->clearAnimation()V

    .line 113
    invoke-virtual {p0, v0}, Lbl/BottomEpisodeMenu;->setVisibility(I)V

    .line 114
    invoke-virtual {p0}, Lbl/BottomEpisodeMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f01000a

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lbl/BottomEpisodeMenu;->startAnimation(Landroid/view/animation/Animation;)V

    .line 116
    iget-object v0, p0, Lbl/BottomEpisodeMenu;->videoListSection:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    new-instance v1, Lbl/BottomEpisodeMenu$2;

    invoke-direct {v1, p0}, Lbl/BottomEpisodeMenu$2;-><init>(Lbl/BottomEpisodeMenu;)V

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->post(Ljava/lang/Runnable;)Z

    .line 128
    invoke-virtual {p0}, Lbl/BottomEpisodeMenu;->resetAutoHideTimer()V

    .line 129
    return-void
.end method
