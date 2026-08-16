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

.field private static final DEBUG_MODE:Z

.field private static showStartTime:J


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

.field private chapterAdapter:Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter;

.field private chapterList:Landroid/support/v7/widget/RecyclerView;

.field private chapterSection:Landroid/widget/LinearLayout;

.field private currentPlayTimeMsOnShow:I

.field private forceHideRunnable:Ljava/lang/Runnable;

.field private isHiding:Z

.field private lastNavTagFocusPosition:I

.field private seekBar:Landroid/widget/SeekBar;

.field private seekbarTitle:Landroid/widget/TextView;

.field private shotClickListener:Lcom/bilibili/tv/ui/video/player/BottomShotMenu$OnShotClickListener;

.field private skipSegments:Lorg/json/JSONArray;

.field private timeCurrent:Landroid/widget/TextView;

.field private timeTotal:Landroid/widget/TextView;

.field private totalDuration:I

.field private totalDurationMs:I

.field private videoListSection:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

.field private videoShot:Lcom/bilibili/tv/api/video/VideoShot;

.field private viewPoints:Lorg/json/JSONArray;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 28
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->showStartTime:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 58
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 34
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->isHiding:Z

    .line 48
    const/4 v0, -0x1

    iput v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->lastNavTagFocusPosition:I

    .line 49
    iput v1, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->currentPlayTimeMsOnShow:I

    .line 442
    new-instance v0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu$11;

    invoke-direct {v0, p0}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu$11;-><init>(Lcom/bilibili/tv/ui/video/player/BottomShotMenu;)V

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->forceHideRunnable:Ljava/lang/Runnable;

    .line 59
    invoke-direct {p0}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->init()V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 63
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->isHiding:Z

    .line 48
    const/4 v0, -0x1

    iput v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->lastNavTagFocusPosition:I

    .line 49
    iput v1, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->currentPlayTimeMsOnShow:I

    .line 442
    new-instance v0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu$11;

    invoke-direct {v0, p0}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu$11;-><init>(Lcom/bilibili/tv/ui/video/player/BottomShotMenu;)V

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->forceHideRunnable:Ljava/lang/Runnable;

    .line 64
    invoke-direct {p0}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->init()V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 68
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->isHiding:Z

    .line 48
    const/4 v0, -0x1

    iput v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->lastNavTagFocusPosition:I

    .line 49
    iput v1, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->currentPlayTimeMsOnShow:I

    .line 442
    new-instance v0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu$11;

    invoke-direct {v0, p0}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu$11;-><init>(Lcom/bilibili/tv/ui/video/player/BottomShotMenu;)V

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->forceHideRunnable:Ljava/lang/Runnable;

    .line 69
    invoke-direct {p0}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->init()V

    .line 70
    return-void
.end method

.method static synthetic access$000(Lcom/bilibili/tv/ui/video/player/BottomShotMenu;)Lcom/bilibili/tv/ui/video/player/BottomShotMenu$OnShotClickListener;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->shotClickListener:Lcom/bilibili/tv/ui/video/player/BottomShotMenu$OnShotClickListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/bilibili/tv/ui/video/player/BottomShotMenu;)I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->lastNavTagFocusPosition:I

    return v0
.end method

.method static synthetic access$102(Lcom/bilibili/tv/ui/video/player/BottomShotMenu;I)I
    .locals 0

    .prologue
    .line 27
    iput p1, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->lastNavTagFocusPosition:I

    return p1
.end method

.method static synthetic access$200(Lcom/bilibili/tv/ui/video/player/BottomShotMenu;)Lcom/bilibili/tv/ui/video/widget/VideoListSection;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->videoListSection:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    return-object v0
.end method

.method static synthetic access$300(Lcom/bilibili/tv/ui/video/player/BottomShotMenu;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->chapterSection:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$400(Lcom/bilibili/tv/ui/video/player/BottomShotMenu;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->focusOnCurrentChapter()V

    return-void
.end method

.method static synthetic access$500(Lcom/bilibili/tv/ui/video/player/BottomShotMenu;)Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->chapterAdapter:Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter;

    return-object v0
.end method

.method static synthetic access$600(Lcom/bilibili/tv/ui/video/player/BottomShotMenu;)Landroid/support/v7/widget/RecyclerView;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->chapterList:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/bilibili/tv/ui/video/player/BottomShotMenu;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->finishHide()V

    return-void
.end method

.method private cancelAutoHideTimer()V
    .locals 1

    .prologue
    .line 471
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->autoHideRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_9

    .line 472
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->autoHideRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 474
    :cond_9
    return-void
.end method

.method private finishHide()V
    .locals 2

    .prologue
    .line 431
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->forceHideRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 432
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->clearAnimation()V

    .line 433
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->setVisibility(I)V

    .line 434
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->isHiding:Z

    .line 435
    invoke-static {}, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->clearAllCache()V

    .line 436
    const-string v0, "BottomShotMenu"

    const-string v1, "[finishHide] \u83dc\u5355\u5df2\u771f\u6b63\u9690\u85cf\uff08GONE\uff09"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    return-void
.end method

.method private focusOnCurrentChapter()V
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->chapterAdapter:Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter;

    if-eqz v0, :cond_9

    .line 404
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->chapterAdapter:Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter;->focusCurrentChapter()V

    .line 406
    :cond_9
    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a00a6

    invoke-static {v0, v1, p0}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 74
    const v0, 0x7f080214

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->videoListSection:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    .line 75
    const v0, 0x7f080215

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->seekBar:Landroid/widget/SeekBar;

    .line 76
    const v0, 0x7f080216

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->timeCurrent:Landroid/widget/TextView;

    .line 77
    const v0, 0x7f080217

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->timeTotal:Landroid/widget/TextView;

    .line 78
    const v0, 0x7f080218

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->seekbarTitle:Landroid/widget/TextView;

    .line 80
    const v0, 0x7f08021f

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->chapterSection:Landroid/widget/LinearLayout;

    .line 81
    const v0, 0x7f080221

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->chapterList:Landroid/support/v7/widget/RecyclerView;

    .line 83
    const-string v0, "BottomShotMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[init] chapterSection="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->chapterSection:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", chapterList="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->chapterList:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->videoListSection:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->hideTitle()V

    .line 87
    invoke-direct {p0}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->initChapterList()V

    .line 89
    invoke-direct {p0}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->initAutoHideTimer()V

    .line 91
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->setVisibility(I)V

    .line 92
    return-void
.end method

.method private initAutoHideTimer()V
    .locals 1

    .prologue
    .line 455
    new-instance v0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu$12;

    invoke-direct {v0, p0}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu$12;-><init>(Lcom/bilibili/tv/ui/video/player/BottomShotMenu;)V

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->autoHideRunnable:Ljava/lang/Runnable;

    .line 461
    return-void
.end method

.method private initChapterList()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 107
    const-string v0, "BottomShotMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[initChapterList] chapterList="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->chapterList:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->chapterList:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_20

    .line 153
    :goto_1f
    return-void

    .line 110
    :cond_20
    new-instance v0, Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter;

    invoke-direct {v0}, Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->chapterAdapter:Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter;

    .line 111
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->chapterList:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/bilibili/tv/widget/FixLinearLayoutManager;

    .line 112
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v3, v3}, Lcom/bilibili/tv/widget/FixLinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 111
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$h;)V

    .line 113
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->chapterList:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->chapterAdapter:Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 114
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->chapterAdapter:Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter;

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->chapterList:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter;->attachRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 116
    const-string v0, "BottomShotMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[initChapterList] chapterAdapter created="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->chapterAdapter:Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->chapterAdapter:Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter;

    new-instance v1, Lcom/bilibili/tv/ui/video/player/BottomShotMenu$1;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu$1;-><init>(Lcom/bilibili/tv/ui/video/player/BottomShotMenu;)V

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter;->setOnChapterClickListener(Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter$OnChapterClickListener;)V

    .line 129
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->chapterAdapter:Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter;

    new-instance v1, Lcom/bilibili/tv/ui/video/player/BottomShotMenu$2;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu$2;-><init>(Lcom/bilibili/tv/ui/video/player/BottomShotMenu;)V

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter;->setFocusBoundaryHandler(Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter$FocusBoundaryHandler;)V

    .line 141
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->chapterList:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/bilibili/tv/ui/video/player/BottomShotMenu$3;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu$3;-><init>(Lcom/bilibili/tv/ui/video/player/BottomShotMenu;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    goto :goto_1f
.end method

.method private isChildOf(Landroid/view/View;Landroid/view/View;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 95
    if-eqz p1, :cond_5

    if-nez p2, :cond_a

    :cond_5
    move v0, v1

    .line 103
    :goto_6
    return v0

    .line 101
    :cond_7
    check-cast v0, Landroid/view/View;

    move-object p1, v0

    .line 97
    :cond_a
    if-eqz p1, :cond_18

    .line 98
    if-ne p1, p2, :cond_10

    const/4 v0, 0x1

    goto :goto_6

    .line 99
    :cond_10
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 100
    instance-of v2, v0, Landroid/view/View;

    if-nez v2, :cond_7

    :cond_18
    move v0, v1

    .line 103
    goto :goto_6
.end method

.method private setupChapterList(Lorg/json/JSONArray;I)V
    .locals 3

    .prologue
    .line 380
    const-string v0, "BottomShotMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setupChapterList] chapters="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", chapterSection="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->chapterSection:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", chapterAdapter="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->chapterAdapter:Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->chapterSection:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->chapterAdapter:Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter;

    if-nez v0, :cond_40

    .line 382
    :cond_38
    const-string v0, "BottomShotMenu"

    const-string v1, "[setupChapterList] chapterSection or chapterAdapter is null, returning"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    :goto_3f
    return-void

    .line 386
    :cond_40
    if-eqz p1, :cond_80

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_80

    .line 387
    const-string v0, "BottomShotMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setupChapterList] chapters.length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", setting VISIBLE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->chapterSection:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 389
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->chapterAdapter:Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter;->setChapters(Lorg/json/JSONArray;I)V

    .line 391
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->chapterList:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/bilibili/tv/ui/video/player/BottomShotMenu$10;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu$10;-><init>(Lcom/bilibili/tv/ui/video/player/BottomShotMenu;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    goto :goto_3f

    .line 398
    :cond_80
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->chapterSection:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_3f
.end method

.method private setupTimeBasedNavigationTags(Ljava/util/List;I)V
    .locals 11
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

    .line 168
    if-eqz p1, :cond_a

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 205
    :cond_a
    :goto_a
    return-void

    .line 172
    :cond_b
    const-string v0, "NavTagFocusBug"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[setupTimeBasedNavigationTags] shots.size()="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", totalDuration="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    const/16 v5, 0x12c

    .line 175
    div-int v0, p2, v5

    add-int/lit8 v6, v0, 0x1

    .line 177
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move v4, v2

    .line 179
    :goto_3d
    if-ge v4, v6, :cond_b7

    .line 180
    mul-int v8, v4, v5

    move v1, v2

    .line 183
    :goto_42
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_dc

    .line 184
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/VideoShotItem;

    iget v0, v0, Lcom/bilibili/tv/api/video/VideoShotItem;->time:I

    if-lt v0, v8, :cond_84

    .line 190
    :goto_52
    const-string v0, "NavTagFocusBug"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[setupTimeBasedNavigationTags] seg="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", targetTime="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", startIndex="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    if-ne v1, v3, :cond_88

    .line 179
    :goto_80
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_3d

    .line 183
    :cond_84
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_42

    .line 196
    :cond_88
    invoke-static {v8, p2}, Lcom/bilibili/tv/util/TimeFormatUtil;->formatTime(II)Ljava/lang/String;

    move-result-object v0

    .line 197
    const-string v8, "NavTagFocusBug"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[setupTimeBasedNavigationTags] adding tag: label="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", startIndex="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    new-instance v8, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter$TagItem;

    invoke-direct {v8, v0, v1}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter$TagItem;-><init>(Ljava/lang/String;I)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_80

    .line 201
    :cond_b7
    const-string v0, "NavTagFocusBug"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setupTimeBasedNavigationTags] total customTags="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    const/16 v0, 0x3c

    .line 204
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->videoListSection:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    invoke-virtual {v1, v7, v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setupCustomNavigationTags(Ljava/util/List;I)V

    goto/16 :goto_a

    :cond_dc
    move v1, v3

    goto/16 :goto_52
.end method


# virtual methods
.method public cleanup()V
    .locals 1

    .prologue
    .line 495
    invoke-direct {p0}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->cancelAutoHideTimer()V

    .line 496
    invoke-static {}, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->clearAllCache()V

    .line 497
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->videoListSection:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    if-eqz v0, :cond_f

    .line 498
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->videoListSection:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->cleanup()V

    .line 500
    :cond_f
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 10

    .prologue
    const/16 v6, 0x14

    const/16 v9, 0x13

    const/16 v8, 0x16

    const/16 v7, 0x15

    const/4 v0, 0x1

    .line 504
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_112

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_112

    .line 505
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 506
    if-eq v1, v7, :cond_29

    if-eq v1, v8, :cond_29

    if-eq v1, v9, :cond_29

    if-eq v1, v6, :cond_29

    const/16 v2, 0x17

    if-eq v1, v2, :cond_29

    const/16 v2, 0x42

    if-ne v1, v2, :cond_2c

    .line 512
    :cond_29
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->resetAutoHideTimer()V

    .line 515
    :cond_2c
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->findFocus()Landroid/view/View;

    move-result-object v2

    .line 516
    const-string v3, "BottomShotMenu"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[dispatchKeyEvent] keyCode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", currentFocus="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    if-ne v1, v6, :cond_b3

    .line 519
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->videoListSection:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    invoke-direct {p0, v2, v3}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->isChildOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v3

    .line 520
    const-string v4, "BottomShotMenu"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[dispatchKeyEvent] DOWN: isInVideoListSection="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", isNavTagFocused="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->videoListSection:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    invoke-virtual {v6}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->isNavTagFocused()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    if-eqz v3, :cond_b3

    .line 523
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->videoListSection:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    invoke-virtual {v3}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->isNavTagFocused()Z

    move-result v3

    if-eqz v3, :cond_b3

    .line 524
    const-string v1, "BottomShotMenu"

    const-string v2, "[dispatchKeyEvent] nav tag focused, moving to chapter list"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->videoListSection:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    invoke-virtual {v1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->getNavTagSelectedPosition()I

    move-result v1

    iput v1, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->lastNavTagFocusPosition:I

    .line 526
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->chapterSection:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_ab

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->chapterSection:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_ab

    .line 527
    invoke-direct {p0}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->focusOnCurrentChapter()V

    .line 568
    :cond_aa
    :goto_aa
    return v0

    .line 530
    :cond_ab
    const-string v1, "BottomShotMenu"

    const-string v2, "[dispatchKeyEvent] no chapter section, focus stays"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_aa

    .line 537
    :cond_b3
    if-ne v1, v9, :cond_e8

    .line 538
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->chapterSection:Landroid/widget/LinearLayout;

    invoke-direct {p0, v2, v3}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->isChildOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v3

    .line 539
    const-string v4, "BottomShotMenu"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[dispatchKeyEvent] UP: isInChapterSection="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    if-eqz v3, :cond_e8

    .line 542
    const-string v3, "BottomShotMenu"

    const-string v4, "[dispatchKeyEvent] focus on chapterSection, moving back to nav tag"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    iget v3, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->lastNavTagFocusPosition:I

    if-ltz v3, :cond_e8

    .line 544
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->videoListSection:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    iget v2, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->lastNavTagFocusPosition:I

    invoke-virtual {v1, v2}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusNavTag(I)V

    goto :goto_aa

    .line 550
    :cond_e8
    if-eq v1, v7, :cond_ec

    if-ne v1, v8, :cond_112

    .line 551
    :cond_ec
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->chapterSection:Landroid/widget/LinearLayout;

    invoke-direct {p0, v2, v3}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->isChildOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v3

    .line 552
    if-eqz v3, :cond_112

    iget-object v3, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->chapterAdapter:Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter;

    if-eqz v3, :cond_112

    .line 553
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->chapterAdapter:Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter;

    invoke-virtual {v3}, Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter;->getChapterCount()I

    move-result v3

    .line 554
    if-lez v3, :cond_112

    .line 555
    iget-object v4, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->chapterAdapter:Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter;

    invoke-virtual {v4, v2}, Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter;->getFocusedPosition(Landroid/view/View;)I

    move-result v2

    .line 556
    if-ltz v2, :cond_112

    .line 557
    if-ne v1, v7, :cond_10c

    if-eqz v2, :cond_aa

    .line 560
    :cond_10c
    if-ne v1, v8, :cond_112

    add-int/lit8 v1, v3, -0x1

    if-eq v2, v1, :cond_aa

    .line 568
    :cond_112
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_aa
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 413
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->getVisibility()I

    move-result v0

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->isHiding:Z

    if-eqz v0, :cond_b

    .line 425
    :cond_a
    :goto_a
    return-void

    .line 416
    :cond_b
    invoke-direct {p0}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->cancelAutoHideTimer()V

    .line 417
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->setDeferLoading(Z)V

    .line 418
    invoke-static {}, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->clearPendingLoads()V

    .line 424
    invoke-direct {p0}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->finishHide()V

    goto :goto_a
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 451
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
    .line 573
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 574
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->cleanup()V

    .line 575
    return-void
.end method

.method public resetAutoHideTimer()V
    .locals 4

    .prologue
    .line 464
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->autoHideRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_10

    .line 465
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->autoHideRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 466
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->autoHideRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {p0, v0, v2, v3}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 468
    :cond_10
    return-void
.end method

.method public setOnShotClickListener(Lcom/bilibili/tv/ui/video/player/BottomShotMenu$OnShotClickListener;)V
    .locals 0

    .prologue
    .line 156
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->shotClickListener:Lcom/bilibili/tv/ui/video/player/BottomShotMenu$OnShotClickListener;

    .line 157
    return-void
.end method

.method public setSkipSegments(Lorg/json/JSONArray;)V
    .locals 3

    .prologue
    .line 163
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->skipSegments:Lorg/json/JSONArray;

    .line 164
    const-string v1, "BottomShotMenu"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setSkipSegments] count="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_25

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_19
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    return-void

    .line 164
    :cond_25
    const-string v0, "null"

    goto :goto_19
.end method

.method public show(Lcom/bilibili/tv/api/video/VideoShot;ILjava/lang/String;I)V
    .locals 6

    .prologue
    .line 409
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->show(Lcom/bilibili/tv/api/video/VideoShot;ILjava/lang/String;ILorg/json/JSONArray;)V

    .line 410
    return-void
.end method

.method public show(Lcom/bilibili/tv/api/video/VideoShot;ILjava/lang/String;ILorg/json/JSONArray;)V
    .locals 10

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 208
    const-string v1, "BottomShotMenu"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[show] chapters="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", chapters.length="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p5, :cond_69

    invoke-virtual {p5}, Lorg/json/JSONArray;->length()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_23
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->showStartTime:J

    .line 210
    sget-wide v0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->showStartTime:J

    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->setShowStartTime(J)V

    .line 212
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->videoShot:Lcom/bilibili/tv/api/video/VideoShot;

    .line 213
    iput p2, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->totalDurationMs:I

    .line 214
    div-int/lit16 v0, p2, 0x3e8

    iput v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->totalDuration:I

    .line 215
    iput-object p5, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->viewPoints:Lorg/json/JSONArray;

    .line 216
    iput p4, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->currentPlayTimeMsOnShow:I

    .line 217
    const/4 v0, -0x1

    iput v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->lastNavTagFocusPosition:I

    .line 219
    if-eqz p1, :cond_6c

    invoke-virtual {p1}, Lcom/bilibili/tv/api/video/VideoShot;->getIndex()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6c

    invoke-virtual {p1}, Lcom/bilibili/tv/api/video/VideoShot;->getIndex()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6c

    move v5, v4

    .line 220
    :goto_5b
    if-eqz p5, :cond_6e

    invoke-virtual {p5}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_6e

    move v3, v4

    .line 222
    :goto_64
    if-nez v5, :cond_70

    if-nez v3, :cond_70

    .line 377
    :goto_68
    return-void

    .line 208
    :cond_69
    const-string v0, "null"

    goto :goto_23

    :cond_6c
    move v5, v2

    .line 219
    goto :goto_5b

    :cond_6e
    move v3, v2

    .line 220
    goto :goto_64

    .line 226
    :cond_70
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->seekbarTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_7b

    if-eqz p3, :cond_7b

    .line 227
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->seekbarTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 230
    :cond_7b
    invoke-virtual {p0, p4, p2}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->updateProgress(II)V

    .line 232
    div-int/lit16 v6, p4, 0x3e8

    .line 233
    const-string v0, "NavTagFocusBug"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[show] currentPlayTimeSec="

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, " | currentPlayTimeMs="

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    if-eqz v5, :cond_18a

    .line 236
    invoke-virtual {p1}, Lcom/bilibili/tv/api/video/VideoShot;->getAllShots()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->allShots:Ljava/util/List;

    .line 237
    iget-object v7, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->allShots:Ljava/util/List;

    .line 239
    const-string v0, "NavTagFocusBug"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[show] shots.size()="

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 240
    :goto_c9
    const/16 v0, 0xf

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    invoke-static {v0, v8}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-ge v1, v0, :cond_103

    .line 241
    const-string v8, "NavTagFocusBug"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[show] shot["

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, "].time="

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/VideoShotItem;

    iget v0, v0, Lcom/bilibili/tv/api/video/VideoShotItem;->time:I

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_c9

    .line 244
    :cond_103
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->videoListSection:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setVisibility(I)V

    .line 245
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->videoListSection:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    new-instance v1, Lcom/bilibili/tv/ui/video/player/BottomShotMenu$4;

    invoke-direct {v1, p0, v6, v7}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu$4;-><init>(Lcom/bilibili/tv/ui/video/player/BottomShotMenu;ILjava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setCurrentItemMatcher(Lcom/bilibili/tv/ui/video/widget/CurrentItemMatcher;)V

    .line 261
    invoke-static {}, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->clearPendingLoads()V

    .line 262
    invoke-static {}, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->clearAllCache()V

    .line 263
    invoke-static {v4}, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->setDeferLoading(Z)V

    .line 265
    new-instance v0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;

    iget v1, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->totalDuration:I

    invoke-direct {v0, p1, v1}, Lcom/bilibili/tv/ui/video/widget/ShotBinder;-><init>(Lcom/bilibili/tv/api/video/VideoShot;I)V

    .line 266
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->skipSegments:Lorg/json/JSONArray;

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->setSkipSegments(Lorg/json/JSONArray;)V

    .line 268
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->videoListSection:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    invoke-virtual {v1, v4}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setIndexBadgeManagedByBinder(Z)V

    .line 269
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->videoListSection:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    iget-object v4, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->allShots:Ljava/util/List;

    invoke-virtual {v1, v4, v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setData(Ljava/util/List;Lcom/bilibili/tv/ui/video/widget/VideoCardBinder;)V

    .line 271
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->videoListSection:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setupBottomMenuFocusBoundary()V

    .line 273
    iget v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->totalDuration:I

    invoke-direct {p0, v7, v0}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->setupTimeBasedNavigationTags(Ljava/util/List;I)V

    .line 278
    :goto_13d
    invoke-direct {p0, p5, v6}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->setupChapterList(Lorg/json/JSONArray;I)V

    .line 280
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->videoListSection:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    new-instance v1, Lcom/bilibili/tv/ui/video/player/BottomShotMenu$5;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu$5;-><init>(Lcom/bilibili/tv/ui/video/player/BottomShotMenu;)V

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setOnNavTagScrollListener(Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnNavTagScrollListener;)V

    .line 291
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->videoListSection:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    new-instance v1, Lcom/bilibili/tv/ui/video/player/BottomShotMenu$6;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu$6;-><init>(Lcom/bilibili/tv/ui/video/player/BottomShotMenu;)V

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setOnVideoClickListener(Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnVideoClickListener;)V

    .line 308
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->videoListSection:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    new-instance v1, Lcom/bilibili/tv/ui/video/player/BottomShotMenu$7;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu$7;-><init>(Lcom/bilibili/tv/ui/video/player/BottomShotMenu;)V

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setOnFocusExitListener(Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnFocusExitListener;)V

    .line 327
    iput-boolean v2, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->isHiding:Z

    .line 328
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->clearAnimation()V

    .line 330
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->forceHideRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 331
    invoke-virtual {p0, v2}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->setVisibility(I)V

    .line 332
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f01000a

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->startAnimation(Landroid/view/animation/Animation;)V

    .line 334
    if-eqz v5, :cond_192

    .line 335
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->videoListSection:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    new-instance v1, Lcom/bilibili/tv/ui/video/player/BottomShotMenu$8;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu$8;-><init>(Lcom/bilibili/tv/ui/video/player/BottomShotMenu;)V

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->post(Ljava/lang/Runnable;)Z

    .line 376
    :cond_185
    :goto_185
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->resetAutoHideTimer()V

    goto/16 :goto_68

    .line 275
    :cond_18a
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->videoListSection:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setVisibility(I)V

    goto :goto_13d

    .line 361
    :cond_192
    if-eqz v3, :cond_185

    .line 362
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->chapterList:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/bilibili/tv/ui/video/player/BottomShotMenu$9;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu$9;-><init>(Lcom/bilibili/tv/ui/video/player/BottomShotMenu;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    goto :goto_185
.end method

.method public updateProgress(II)V
    .locals 4

    .prologue
    .line 482
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->seekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_e

    .line 483
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p2}, Landroid/widget/SeekBar;->setMax(I)V

    .line 484
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 486
    :cond_e
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->timeCurrent:Landroid/widget/TextView;

    if-eqz v0, :cond_1c

    .line 487
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->timeCurrent:Landroid/widget/TextView;

    int-to-long v2, p1

    invoke-static {v2, v3}, Lbl/aan;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 489
    :cond_1c
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->timeTotal:Landroid/widget/TextView;

    if-eqz v0, :cond_2a

    .line 490
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->timeTotal:Landroid/widget/TextView;

    int-to-long v2, p2

    invoke-static {v2, v3}, Lbl/aan;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 492
    :cond_2a
    return-void
.end method
