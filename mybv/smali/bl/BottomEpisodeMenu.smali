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
    .line 31
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 32
    invoke-direct {p0}, Lbl/BottomEpisodeMenu;->init()V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    invoke-direct {p0}, Lbl/BottomEpisodeMenu;->init()V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    invoke-direct {p0}, Lbl/BottomEpisodeMenu;->init()V

    .line 43
    return-void
.end method

.method static synthetic access$000(Lbl/BottomEpisodeMenu;)Lbl/BottomEpisodeMenu$OnEpisodeClickListener;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lbl/BottomEpisodeMenu;->episodeClickListener:Lbl/BottomEpisodeMenu$OnEpisodeClickListener;

    return-object v0
.end method

.method static synthetic access$100(Lbl/BottomEpisodeMenu;)Lcom/bilibili/tv/ui/video/widget/VideoListSection;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lbl/BottomEpisodeMenu;->videoListSection:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    return-object v0
.end method

.method private cancelAutoHideTimer()V
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lbl/BottomEpisodeMenu;->autoHideRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_9

    .line 157
    iget-object v0, p0, Lbl/BottomEpisodeMenu;->autoHideRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lbl/BottomEpisodeMenu;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 159
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

    .line 52
    iget-object v0, p0, Lbl/BottomEpisodeMenu;->videoListSection:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setupBottomMenuFocusBoundary()V

    .line 54
    invoke-direct {p0}, Lbl/BottomEpisodeMenu;->initAutoHideTimer()V

    .line 56
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lbl/BottomEpisodeMenu;->setVisibility(I)V

    .line 57
    return-void
.end method

.method private initAutoHideTimer()V
    .locals 1

    .prologue
    .line 140
    new-instance v0, Lbl/BottomEpisodeMenu$3;

    invoke-direct {v0, p0}, Lbl/BottomEpisodeMenu$3;-><init>(Lbl/BottomEpisodeMenu;)V

    iput-object v0, p0, Lbl/BottomEpisodeMenu;->autoHideRunnable:Ljava/lang/Runnable;

    .line 146
    return-void
.end method


# virtual methods
.method public cleanup()V
    .locals 1

    .prologue
    .line 162
    invoke-direct {p0}, Lbl/BottomEpisodeMenu;->cancelAutoHideTimer()V

    .line 163
    iget-object v0, p0, Lbl/BottomEpisodeMenu;->videoListSection:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    if-eqz v0, :cond_c

    .line 164
    iget-object v0, p0, Lbl/BottomEpisodeMenu;->videoListSection:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->cleanup()V

    .line 166
    :cond_c
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 170
    invoke-virtual {p0}, Lbl/BottomEpisodeMenu;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2b

    .line 171
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 172
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

    .line 178
    :cond_28
    invoke-virtual {p0}, Lbl/BottomEpisodeMenu;->resetAutoHideTimer()V

    .line 181
    :cond_2b
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 126
    invoke-virtual {p0}, Lbl/BottomEpisodeMenu;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_7

    .line 133
    :goto_6
    return-void

    .line 129
    :cond_7
    invoke-direct {p0}, Lbl/BottomEpisodeMenu;->cancelAutoHideTimer()V

    .line 130
    invoke-virtual {p0}, Lbl/BottomEpisodeMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f01000d

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 131
    invoke-virtual {p0, v0}, Lbl/BottomEpisodeMenu;->startAnimation(Landroid/view/animation/Animation;)V

    .line 132
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lbl/BottomEpisodeMenu;->setVisibility(I)V

    goto :goto_6
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 136
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
    .line 186
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 187
    invoke-virtual {p0}, Lbl/BottomEpisodeMenu;->cleanup()V

    .line 188
    return-void
.end method

.method public resetAutoHideTimer()V
    .locals 4

    .prologue
    .line 149
    iget-object v0, p0, Lbl/BottomEpisodeMenu;->autoHideRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_10

    .line 150
    iget-object v0, p0, Lbl/BottomEpisodeMenu;->autoHideRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lbl/BottomEpisodeMenu;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 151
    iget-object v0, p0, Lbl/BottomEpisodeMenu;->autoHideRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {p0, v0, v2, v3}, Lbl/BottomEpisodeMenu;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 153
    :cond_10
    return-void
.end method

.method public setData([Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;JLjava/lang/String;I)V
    .locals 6

    .prologue
    .line 64
    if-eqz p1, :cond_5

    array-length v0, p1

    if-nez v0, :cond_6

    .line 103
    :cond_5
    :goto_5
    return-void

    .line 68
    :cond_6
    iget-object v0, p0, Lbl/BottomEpisodeMenu;->titleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_2c

    .line 69
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

    .line 72
    :cond_2c
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 73
    const/4 v0, 0x1

    .line 74
    array-length v3, p1

    const/4 v1, 0x0

    :goto_34
    if-ge v1, v3, :cond_44

    aget-object v4, p1, v1

    .line 75
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    iget v5, v4, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mListType:I

    if-lez v5, :cond_41

    .line 77
    iget v0, v4, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mListType:I

    .line 74
    :cond_41
    add-int/lit8 v1, v1, 0x1

    goto :goto_34

    .line 81
    :cond_44
    new-instance v1, Lcom/bilibili/tv/ui/video/widget/UnifiedVideoCardBinder;

    invoke-direct {v1, v0}, Lcom/bilibili/tv/ui/video/widget/UnifiedVideoCardBinder;-><init>(I)V

    .line 83
    iget-object v0, p0, Lbl/BottomEpisodeMenu;->videoListSection:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    invoke-virtual {v0, p2, p3}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setCurrentCid(J)V

    .line 84
    iget-object v0, p0, Lbl/BottomEpisodeMenu;->videoListSection:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    invoke-virtual {v0, v2, v1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setData(Ljava/util/List;Lcom/bilibili/tv/ui/video/widget/VideoCardBinder;)V

    .line 85
    iget-object v0, p0, Lbl/BottomEpisodeMenu;->videoListSection:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    invoke-virtual {v0, p5}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setupNavigationTags(I)V

    .line 87
    iget-object v0, p0, Lbl/BottomEpisodeMenu;->videoListSection:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    new-instance v1, Lbl/BottomEpisodeMenu$1;

    invoke-direct {v1, p0}, Lbl/BottomEpisodeMenu$1;-><init>(Lbl/BottomEpisodeMenu;)V

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setOnVideoClickListener(Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnVideoClickListener;)V

    goto :goto_5
.end method

.method public setOnEpisodeClickListener(Lbl/BottomEpisodeMenu$OnEpisodeClickListener;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lbl/BottomEpisodeMenu;->episodeClickListener:Lbl/BottomEpisodeMenu$OnEpisodeClickListener;

    .line 61
    return-void
.end method

.method public show([Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;JLjava/lang/String;I)V
    .locals 2

    .prologue
    .line 106
    invoke-virtual/range {p0 .. p5}, Lbl/BottomEpisodeMenu;->setData([Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;JLjava/lang/String;I)V

    .line 108
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lbl/BottomEpisodeMenu;->setVisibility(I)V

    .line 109
    invoke-virtual {p0}, Lbl/BottomEpisodeMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f01000a

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lbl/BottomEpisodeMenu;->startAnimation(Landroid/view/animation/Animation;)V

    .line 111
    iget-object v0, p0, Lbl/BottomEpisodeMenu;->videoListSection:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    new-instance v1, Lbl/BottomEpisodeMenu$2;

    invoke-direct {v1, p0}, Lbl/BottomEpisodeMenu$2;-><init>(Lbl/BottomEpisodeMenu;)V

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->post(Ljava/lang/Runnable;)Z

    .line 122
    invoke-virtual {p0}, Lbl/BottomEpisodeMenu;->resetAutoHideTimer()V

    .line 123
    return-void
.end method
