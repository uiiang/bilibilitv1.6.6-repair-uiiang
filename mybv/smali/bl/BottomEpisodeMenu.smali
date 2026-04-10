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

.field private static final TAG:Ljava/lang/String; = "BottomEpisodeMenu"


# instance fields
.field private autoHideRunnable:Ljava/lang/Runnable;

.field private episodeClickListener:Lbl/BottomEpisodeMenu$OnEpisodeClickListener;

.field private titleTextView:Landroid/widget/TextView;

.field private videoListSection:Lcom/bilibili/tv/ui/video/widget/VideoListSection;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 33
    invoke-direct {p0}, Lbl/BottomEpisodeMenu;->init()V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    invoke-direct {p0}, Lbl/BottomEpisodeMenu;->init()V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    invoke-direct {p0}, Lbl/BottomEpisodeMenu;->init()V

    .line 44
    return-void
.end method

.method static synthetic access$000(Lbl/BottomEpisodeMenu;)Lbl/BottomEpisodeMenu$OnEpisodeClickListener;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lbl/BottomEpisodeMenu;->episodeClickListener:Lbl/BottomEpisodeMenu$OnEpisodeClickListener;

    return-object v0
.end method

.method static synthetic access$100(Lbl/BottomEpisodeMenu;)Lcom/bilibili/tv/ui/video/widget/VideoListSection;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lbl/BottomEpisodeMenu;->videoListSection:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    return-object v0
.end method

.method private cancelAutoHideTimer()V
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lbl/BottomEpisodeMenu;->autoHideRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_9

    .line 160
    iget-object v0, p0, Lbl/BottomEpisodeMenu;->autoHideRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lbl/BottomEpisodeMenu;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 162
    :cond_9
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 47
    invoke-virtual {p0}, Lbl/BottomEpisodeMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a00a1

    invoke-static {v0, v1, p0}, Lbl/BottomEpisodeMenu;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 48
    const v0, 0x7f0801e1

    invoke-virtual {p0, v0}, Lbl/BottomEpisodeMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    iput-object v0, p0, Lbl/BottomEpisodeMenu;->videoListSection:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    .line 49
    const v0, 0x7f0801e2

    invoke-virtual {p0, v0}, Lbl/BottomEpisodeMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbl/BottomEpisodeMenu;->titleTextView:Landroid/widget/TextView;

    .line 51
    iget-object v0, p0, Lbl/BottomEpisodeMenu;->videoListSection:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->hideTitle()V

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
    .line 143
    new-instance v0, Lbl/BottomEpisodeMenu$3;

    invoke-direct {v0, p0}, Lbl/BottomEpisodeMenu$3;-><init>(Lbl/BottomEpisodeMenu;)V

    iput-object v0, p0, Lbl/BottomEpisodeMenu;->autoHideRunnable:Ljava/lang/Runnable;

    .line 149
    return-void
.end method


# virtual methods
.method public cleanup()V
    .locals 1

    .prologue
    .line 165
    invoke-direct {p0}, Lbl/BottomEpisodeMenu;->cancelAutoHideTimer()V

    .line 166
    iget-object v0, p0, Lbl/BottomEpisodeMenu;->videoListSection:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    if-eqz v0, :cond_c

    .line 167
    iget-object v0, p0, Lbl/BottomEpisodeMenu;->videoListSection:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->cleanup()V

    .line 169
    :cond_c
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 173
    invoke-virtual {p0}, Lbl/BottomEpisodeMenu;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2b

    .line 174
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 175
    const/16 v1, 0x15

    if-eq v0, v1, :cond_28

    const/16 v1, 0x16

    if-eq v0, v1, :cond_28

    const/16 v1, 0x13

    if-eq v0, v1, :cond_28

    const/16 v1, 0x14

    if-eq v0, v1, :cond_28

    const/16 v1, 0x17

    if-eq v0, v1, :cond_28

    const/16 v1, 0x42

    if-ne v0, v1, :cond_2b

    .line 181
    :cond_28
    invoke-virtual {p0}, Lbl/BottomEpisodeMenu;->resetAutoHideTimer()V

    .line 184
    :cond_2b
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 129
    invoke-virtual {p0}, Lbl/BottomEpisodeMenu;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_7

    .line 136
    :goto_6
    return-void

    .line 132
    :cond_7
    invoke-direct {p0}, Lbl/BottomEpisodeMenu;->cancelAutoHideTimer()V

    .line 133
    invoke-virtual {p0}, Lbl/BottomEpisodeMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f01000d

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 134
    invoke-virtual {p0, v0}, Lbl/BottomEpisodeMenu;->startAnimation(Landroid/view/animation/Animation;)V

    .line 135
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lbl/BottomEpisodeMenu;->setVisibility(I)V

    goto :goto_6
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 139
    invoke-virtual {p0}, Lbl/BottomEpisodeMenu;->getVisibility()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 189
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 190
    invoke-virtual {p0}, Lbl/BottomEpisodeMenu;->cleanup()V

    .line 191
    return-void
.end method

.method public resetAutoHideTimer()V
    .locals 4

    .prologue
    .line 152
    iget-object v0, p0, Lbl/BottomEpisodeMenu;->autoHideRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_10

    .line 153
    iget-object v0, p0, Lbl/BottomEpisodeMenu;->autoHideRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lbl/BottomEpisodeMenu;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 154
    iget-object v0, p0, Lbl/BottomEpisodeMenu;->autoHideRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {p0, v0, v2, v3}, Lbl/BottomEpisodeMenu;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 156
    :cond_10
    return-void
.end method

.method public setData([Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;JLjava/lang/String;I)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 65
    const-string v2, "BottomEpisodeMenu"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setData | paramsArray.length="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p1, :cond_2c

    array-length v0, p1

    :goto_11
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " | currentCid="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    if-eqz p1, :cond_2b

    array-length v0, p1

    if-nez v0, :cond_2e

    .line 106
    :cond_2b
    :goto_2b
    return-void

    :cond_2c
    move v0, v1

    .line 65
    goto :goto_11

    .line 70
    :cond_2e
    iget-object v0, p0, Lbl/BottomEpisodeMenu;->titleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_54

    .line 71
    iget-object v0, p0, Lbl/BottomEpisodeMenu;->titleTextView:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    :cond_54
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 75
    const/4 v0, 0x1

    .line 76
    array-length v3, p1

    :goto_5b
    if-ge v1, v3, :cond_6b

    aget-object v4, p1, v1

    .line 77
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    iget v5, v4, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mListType:I

    if-lez v5, :cond_68

    .line 79
    iget v0, v4, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mListType:I

    .line 76
    :cond_68
    add-int/lit8 v1, v1, 0x1

    goto :goto_5b

    .line 83
    :cond_6b
    const-string v1, "BottomEpisodeMenu"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setData | \u4f7f\u7528 UnifiedVideoCardBinder | listType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    new-instance v1, Lcom/bilibili/tv/ui/video/widget/UnifiedVideoCardBinder;

    invoke-direct {v1, v0}, Lcom/bilibili/tv/ui/video/widget/UnifiedVideoCardBinder;-><init>(I)V

    .line 86
    iget-object v0, p0, Lbl/BottomEpisodeMenu;->videoListSection:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    invoke-virtual {v0, p2, p3}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setCurrentCid(J)V

    .line 87
    iget-object v0, p0, Lbl/BottomEpisodeMenu;->videoListSection:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    invoke-virtual {v0, v2, v1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setData(Ljava/util/List;Lcom/bilibili/tv/ui/video/widget/VideoCardBinder;)V

    .line 88
    iget-object v0, p0, Lbl/BottomEpisodeMenu;->videoListSection:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    invoke-virtual {v0, p5}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setupNavigationTags(I)V

    .line 90
    iget-object v0, p0, Lbl/BottomEpisodeMenu;->videoListSection:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    new-instance v1, Lbl/BottomEpisodeMenu$1;

    invoke-direct {v1, p0}, Lbl/BottomEpisodeMenu$1;-><init>(Lbl/BottomEpisodeMenu;)V

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setOnVideoClickListener(Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnVideoClickListener;)V

    goto :goto_2b
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
    .line 109
    invoke-virtual/range {p0 .. p5}, Lbl/BottomEpisodeMenu;->setData([Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;JLjava/lang/String;I)V

    .line 111
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lbl/BottomEpisodeMenu;->setVisibility(I)V

    .line 112
    invoke-virtual {p0}, Lbl/BottomEpisodeMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f01000a

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lbl/BottomEpisodeMenu;->startAnimation(Landroid/view/animation/Animation;)V

    .line 114
    iget-object v0, p0, Lbl/BottomEpisodeMenu;->videoListSection:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    new-instance v1, Lbl/BottomEpisodeMenu$2;

    invoke-direct {v1, p0}, Lbl/BottomEpisodeMenu$2;-><init>(Lbl/BottomEpisodeMenu;)V

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->post(Ljava/lang/Runnable;)Z

    .line 125
    invoke-virtual {p0}, Lbl/BottomEpisodeMenu;->resetAutoHideTimer()V

    .line 126
    return-void
.end method
