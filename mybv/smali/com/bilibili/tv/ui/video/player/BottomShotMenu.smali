.class public Lcom/bilibili/tv/ui/video/player/BottomShotMenu;
.super Landroid/widget/FrameLayout;
.source "BottomShotMenu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bilibili/tv/ui/video/player/BottomShotMenu$OnShotClickListener;
    }
.end annotation


# static fields
.field private static final AUTO_HIDE_DELAY:I = 0x1388

.field private static final TAG:Ljava/lang/String; = "ShotMenuBug"


# instance fields
.field private allShots:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/tv/api/video/VideoShotItem;",
            ">;"
        }
    .end annotation
.end field

.field private autoHideRunnable:Ljava/lang/Runnable;

.field private isHiding:Z

.field private seekBar:Landroid/widget/SeekBar;

.field private seekbarTitle:Landroid/widget/TextView;

.field private shotClickListener:Lcom/bilibili/tv/ui/video/player/BottomShotMenu$OnShotClickListener;

.field private timeCurrent:Landroid/widget/TextView;

.field private timeTotal:Landroid/widget/TextView;

.field private totalDuration:I

.field private totalDurationMs:I

.field private videoListSection:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

.field private videoShot:Lcom/bilibili/tv/api/video/VideoShot;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->isHiding:Z

    .line 45
    invoke-direct {p0}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->init()V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->isHiding:Z

    .line 50
    invoke-direct {p0}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->init()V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->isHiding:Z

    .line 55
    invoke-direct {p0}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->init()V

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcom/bilibili/tv/ui/video/player/BottomShotMenu;)Lcom/bilibili/tv/ui/video/player/BottomShotMenu$OnShotClickListener;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->shotClickListener:Lcom/bilibili/tv/ui/video/player/BottomShotMenu$OnShotClickListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/bilibili/tv/ui/video/player/BottomShotMenu;)Lcom/bilibili/tv/ui/video/widget/VideoListSection;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->videoListSection:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    return-object v0
.end method

.method static synthetic access$202(Lcom/bilibili/tv/ui/video/player/BottomShotMenu;Z)Z
    .locals 0

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->isHiding:Z

    return p1
.end method

.method private cancelAutoHideTimer()V
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->autoHideRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_9

    .line 244
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->autoHideRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 246
    :cond_9
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a00a6

    invoke-static {v0, v1, p0}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 60
    const v0, 0x7f080214

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->videoListSection:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    .line 61
    const v0, 0x7f080215

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->seekBar:Landroid/widget/SeekBar;

    .line 62
    const v0, 0x7f080216

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->timeCurrent:Landroid/widget/TextView;

    .line 63
    const v0, 0x7f080217

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->timeTotal:Landroid/widget/TextView;

    .line 64
    const v0, 0x7f080218

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->seekbarTitle:Landroid/widget/TextView;

    .line 66
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->videoListSection:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->hideTitle()V

    .line 67
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->videoListSection:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setupBottomMenuFocusBoundary()V

    .line 69
    invoke-direct {p0}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->initAutoHideTimer()V

    .line 71
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->setVisibility(I)V

    .line 72
    return-void
.end method

.method private initAutoHideTimer()V
    .locals 1

    .prologue
    .line 227
    new-instance v0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu$6;

    invoke-direct {v0, p0}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu$6;-><init>(Lcom/bilibili/tv/ui/video/player/BottomShotMenu;)V

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->autoHideRunnable:Ljava/lang/Runnable;

    .line 233
    return-void
.end method

.method private setupTimeBasedNavigationTags(Ljava/util/List;I)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/tv/api/video/VideoShotItem;",
            ">;I)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 79
    if-eqz p1, :cond_a

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 109
    :cond_a
    :goto_a
    return-void

    .line 83
    :cond_b
    const/16 v5, 0x12c

    .line 84
    div-int v0, p2, v5

    add-int/lit8 v6, v0, 0x1

    .line 86
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move v4, v2

    .line 88
    :goto_17
    if-ge v4, v6, :cond_43

    .line 89
    mul-int v8, v4, v5

    move v1, v2

    .line 92
    :goto_1c
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4b

    .line 93
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/VideoShotItem;

    iget v0, v0, Lcom/bilibili/tv/api/video/VideoShotItem;->time:I

    if-lt v0, v8, :cond_32

    .line 99
    :goto_2c
    if-ne v1, v3, :cond_36

    .line 88
    :goto_2e
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_17

    .line 92
    :cond_32
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1c

    .line 103
    :cond_36
    invoke-static {v8, p2}, Lcom/bilibili/tv/util/TimeFormatUtil;->formatTime(II)Ljava/lang/String;

    move-result-object v0

    .line 104
    new-instance v8, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter$TagItem;

    invoke-direct {v8, v0, v1}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter$TagItem;-><init>(Ljava/lang/String;I)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2e

    .line 107
    :cond_43
    const/16 v0, 0x3c

    .line 108
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->videoListSection:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    invoke-virtual {v1, v7, v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setupCustomNavigationTags(Ljava/util/List;I)V

    goto :goto_a

    :cond_4b
    move v1, v3

    goto :goto_2c
.end method


# virtual methods
.method public cleanup()V
    .locals 1

    .prologue
    .line 262
    invoke-direct {p0}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->cancelAutoHideTimer()V

    .line 263
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->videoListSection:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    if-eqz v0, :cond_c

    .line 264
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->videoListSection:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->cleanup()V

    .line 266
    :cond_c
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4

    .prologue
    .line 270
    const-string v0, "ShotMenuBug"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchKeyEvent: keyCode="

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

    invoke-virtual {p0}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->isShowing()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_63

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_63

    .line 272
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 273
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

    .line 279
    :cond_60
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->resetAutoHideTimer()V

    .line 282
    :cond_63
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 283
    const-string v1, "ShotMenuBug"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dispatchKeyEvent: super returned "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    return v0
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 200
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->getVisibility()I

    move-result v0

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->isHiding:Z

    if-eqz v0, :cond_b

    .line 220
    :cond_a
    :goto_a
    return-void

    .line 203
    :cond_b
    invoke-direct {p0}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->cancelAutoHideTimer()V

    .line 204
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->isHiding:Z

    .line 205
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f01000d

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 206
    new-instance v1, Lcom/bilibili/tv/ui/video/player/BottomShotMenu$5;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu$5;-><init>(Lcom/bilibili/tv/ui/video/player/BottomShotMenu;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 219
    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_a
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 223
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->isHiding:Z

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
    .line 289
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 290
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->cleanup()V

    .line 291
    return-void
.end method

.method public resetAutoHideTimer()V
    .locals 4

    .prologue
    .line 236
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->autoHideRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_10

    .line 237
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->autoHideRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 238
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->autoHideRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {p0, v0, v2, v3}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 240
    :cond_10
    return-void
.end method

.method public setOnShotClickListener(Lcom/bilibili/tv/ui/video/player/BottomShotMenu$OnShotClickListener;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->shotClickListener:Lcom/bilibili/tv/ui/video/player/BottomShotMenu$OnShotClickListener;

    .line 76
    return-void
.end method

.method public show(Lcom/bilibili/tv/api/video/VideoShot;ILjava/lang/String;I)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 112
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->videoShot:Lcom/bilibili/tv/api/video/VideoShot;

    .line 113
    iput p2, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->totalDurationMs:I

    .line 114
    div-int/lit16 v0, p2, 0x3e8

    iput v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->totalDuration:I

    .line 116
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->videoShot:Lcom/bilibili/tv/api/video/VideoShot;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->videoShot:Lcom/bilibili/tv/api/video/VideoShot;

    invoke-virtual {v0}, Lcom/bilibili/tv/api/video/VideoShot;->getIndex()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->videoShot:Lcom/bilibili/tv/api/video/VideoShot;

    invoke-virtual {v0}, Lcom/bilibili/tv/api/video/VideoShot;->getIndex()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 117
    :cond_21
    const-string v0, "ShotMenuBug"

    const-string v1, "show: videoShot is null or empty"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :goto_28
    return-void

    .line 121
    :cond_29
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->seekbarTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_34

    if-eqz p3, :cond_34

    .line 122
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->seekbarTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    :cond_34
    invoke-virtual {p0, p4, p2}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->updateProgress(II)V

    .line 127
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->videoShot:Lcom/bilibili/tv/api/video/VideoShot;

    invoke-virtual {v0}, Lcom/bilibili/tv/api/video/VideoShot;->getAllShots()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->allShots:Ljava/util/List;

    .line 129
    div-int/lit16 v0, p4, 0x3e8

    .line 130
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->allShots:Ljava/util/List;

    .line 132
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->videoListSection:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    new-instance v3, Lcom/bilibili/tv/ui/video/player/BottomShotMenu$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu$1;-><init>(Lcom/bilibili/tv/ui/video/player/BottomShotMenu;ILjava/util/List;)V

    invoke-virtual {v2, v3}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setCurrentItemMatcher(Lcom/bilibili/tv/ui/video/widget/CurrentItemMatcher;)V

    .line 144
    new-instance v0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;

    iget-object v2, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->videoShot:Lcom/bilibili/tv/api/video/VideoShot;

    iget v3, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->totalDuration:I

    invoke-direct {v0, v2, v3}, Lcom/bilibili/tv/ui/video/widget/ShotBinder;-><init>(Lcom/bilibili/tv/api/video/VideoShot;I)V

    .line 145
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->videoListSection:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    iget-object v3, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->allShots:Ljava/util/List;

    invoke-virtual {v2, v3, v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setData(Ljava/util/List;Lcom/bilibili/tv/ui/video/widget/VideoCardBinder;)V

    .line 147
    iget v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->totalDuration:I

    invoke-direct {p0, v1, v0}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->setupTimeBasedNavigationTags(Ljava/util/List;I)V

    .line 149
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->videoListSection:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    new-instance v1, Lcom/bilibili/tv/ui/video/player/BottomShotMenu$2;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu$2;-><init>(Lcom/bilibili/tv/ui/video/player/BottomShotMenu;)V

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setOnNavTagScrollListener(Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnNavTagScrollListener;)V

    .line 162
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->videoListSection:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    new-instance v1, Lcom/bilibili/tv/ui/video/player/BottomShotMenu$3;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu$3;-><init>(Lcom/bilibili/tv/ui/video/player/BottomShotMenu;)V

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setOnVideoClickListener(Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnVideoClickListener;)V

    .line 179
    iput-boolean v4, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->isHiding:Z

    .line 180
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->clearAnimation()V

    .line 181
    invoke-virtual {p0, v4}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->setVisibility(I)V

    .line 182
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f01000a

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->startAnimation(Landroid/view/animation/Animation;)V

    .line 184
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->videoListSection:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    new-instance v1, Lcom/bilibili/tv/ui/video/player/BottomShotMenu$4;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu$4;-><init>(Lcom/bilibili/tv/ui/video/player/BottomShotMenu;)V

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->post(Ljava/lang/Runnable;)Z

    .line 196
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->resetAutoHideTimer()V

    goto :goto_28
.end method

.method public updateProgress(II)V
    .locals 4

    .prologue
    .line 249
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->seekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_e

    .line 250
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p2}, Landroid/widget/SeekBar;->setMax(I)V

    .line 251
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 253
    :cond_e
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->timeCurrent:Landroid/widget/TextView;

    if-eqz v0, :cond_1c

    .line 254
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->timeCurrent:Landroid/widget/TextView;

    int-to-long v2, p1

    invoke-static {v2, v3}, Lbl/aan;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 256
    :cond_1c
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->timeTotal:Landroid/widget/TextView;

    if-eqz v0, :cond_2a

    .line 257
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->timeTotal:Landroid/widget/TextView;

    int-to-long v2, p2

    invoke-static {v2, v3}, Lbl/aan;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 259
    :cond_2a
    return-void
.end method
