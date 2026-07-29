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

.field private isHiding:Z

.field private lastNavTagFocusPosition:I

.field private seekBar:Landroid/widget/SeekBar;

.field private seekbarTitle:Landroid/widget/TextView;

.field private shotClickListener:Lcom/bilibili/tv/ui/video/player/BottomShotMenu$OnShotClickListener;

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

    .line 56
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 34
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->isHiding:Z

    .line 48
    const/4 v0, -0x1

    iput v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->lastNavTagFocusPosition:I

    .line 49
    iput v1, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->currentPlayTimeMsOnShow:I

    .line 57
    invoke-direct {p0}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->init()V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 61
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->isHiding:Z

    .line 48
    const/4 v0, -0x1

    iput v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->lastNavTagFocusPosition:I

    .line 49
    iput v1, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->currentPlayTimeMsOnShow:I

    .line 62
    invoke-direct {p0}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->init()V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 66
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->isHiding:Z

    .line 48
    const/4 v0, -0x1

    iput v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->lastNavTagFocusPosition:I

    .line 49
    iput v1, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->currentPlayTimeMsOnShow:I

    .line 67
    invoke-direct {p0}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->init()V

    .line 68
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

.method static synthetic access$702(Lcom/bilibili/tv/ui/video/player/BottomShotMenu;Z)Z
    .locals 0

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->isHiding:Z

    return p1
.end method

.method private cancelAutoHideTimer()V
    .locals 1

    .prologue
    .line 444
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->autoHideRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_9

    .line 445
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->autoHideRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 447
    :cond_9
    return-void
.end method

.method private focusOnCurrentChapter()V
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->chapterAdapter:Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter;

    if-eqz v0, :cond_9

    .line 389
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->chapterAdapter:Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter;->focusCurrentChapter()V

    .line 391
    :cond_9
    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a00a6

    invoke-static {v0, v1, p0}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 72
    const v0, 0x7f080214

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->videoListSection:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    .line 73
    const v0, 0x7f080215

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->seekBar:Landroid/widget/SeekBar;

    .line 74
    const v0, 0x7f080216

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->timeCurrent:Landroid/widget/TextView;

    .line 75
    const v0, 0x7f080217

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->timeTotal:Landroid/widget/TextView;

    .line 76
    const v0, 0x7f080218

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->seekbarTitle:Landroid/widget/TextView;

    .line 78
    const v0, 0x7f08021f

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->chapterSection:Landroid/widget/LinearLayout;

    .line 79
    const v0, 0x7f080221

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->chapterList:Landroid/support/v7/widget/RecyclerView;

    .line 81
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

    .line 83
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->videoListSection:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->hideTitle()V

    .line 85
    invoke-direct {p0}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->initChapterList()V

    .line 87
    invoke-direct {p0}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->initAutoHideTimer()V

    .line 89
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->setVisibility(I)V

    .line 90
    return-void
.end method

.method private initAutoHideTimer()V
    .locals 1

    .prologue
    .line 428
    new-instance v0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu$12;

    invoke-direct {v0, p0}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu$12;-><init>(Lcom/bilibili/tv/ui/video/player/BottomShotMenu;)V

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->autoHideRunnable:Ljava/lang/Runnable;

    .line 434
    return-void
.end method

.method private initChapterList()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 105
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

    .line 106
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->chapterList:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_20

    .line 151
    :goto_1f
    return-void

    .line 108
    :cond_20
    new-instance v0, Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter;

    invoke-direct {v0}, Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->chapterAdapter:Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter;

    .line 109
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->chapterList:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/bilibili/tv/widget/FixLinearLayoutManager;

    .line 110
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v3, v3}, Lcom/bilibili/tv/widget/FixLinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 109
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$h;)V

    .line 111
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->chapterList:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->chapterAdapter:Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 112
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->chapterAdapter:Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter;

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->chapterList:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter;->attachRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 114
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

    .line 116
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->chapterAdapter:Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter;

    new-instance v1, Lcom/bilibili/tv/ui/video/player/BottomShotMenu$1;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu$1;-><init>(Lcom/bilibili/tv/ui/video/player/BottomShotMenu;)V

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter;->setOnChapterClickListener(Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter$OnChapterClickListener;)V

    .line 127
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->chapterAdapter:Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter;

    new-instance v1, Lcom/bilibili/tv/ui/video/player/BottomShotMenu$2;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu$2;-><init>(Lcom/bilibili/tv/ui/video/player/BottomShotMenu;)V

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter;->setFocusBoundaryHandler(Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter$FocusBoundaryHandler;)V

    .line 139
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

    .line 93
    if-eqz p1, :cond_5

    if-nez p2, :cond_a

    :cond_5
    move v0, v1

    .line 101
    :goto_6
    return v0

    .line 99
    :cond_7
    check-cast v0, Landroid/view/View;

    move-object p1, v0

    .line 95
    :cond_a
    if-eqz p1, :cond_18

    .line 96
    if-ne p1, p2, :cond_10

    const/4 v0, 0x1

    goto :goto_6

    .line 97
    :cond_10
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 98
    instance-of v2, v0, Landroid/view/View;

    if-nez v2, :cond_7

    :cond_18
    move v0, v1

    .line 101
    goto :goto_6
.end method

.method private setupChapterList(Lorg/json/JSONArray;I)V
    .locals 3

    .prologue
    .line 365
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

    .line 366
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->chapterSection:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->chapterAdapter:Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter;

    if-nez v0, :cond_40

    .line 367
    :cond_38
    const-string v0, "BottomShotMenu"

    const-string v1, "[setupChapterList] chapterSection or chapterAdapter is null, returning"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    :goto_3f
    return-void

    .line 371
    :cond_40
    if-eqz p1, :cond_80

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_80

    .line 372
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

    .line 373
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->chapterSection:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 374
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->chapterAdapter:Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter;->setChapters(Lorg/json/JSONArray;I)V

    .line 376
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->chapterList:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/bilibili/tv/ui/video/player/BottomShotMenu$10;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu$10;-><init>(Lcom/bilibili/tv/ui/video/player/BottomShotMenu;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    goto :goto_3f

    .line 383
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

    .line 158
    if-eqz p1, :cond_a

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 195
    :cond_a
    :goto_a
    return-void

    .line 162
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

    .line 164
    const/16 v5, 0x12c

    .line 165
    div-int v0, p2, v5

    add-int/lit8 v6, v0, 0x1

    .line 167
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move v4, v2

    .line 169
    :goto_3d
    if-ge v4, v6, :cond_b7

    .line 170
    mul-int v8, v4, v5

    move v1, v2

    .line 173
    :goto_42
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_dc

    .line 174
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/VideoShotItem;

    iget v0, v0, Lcom/bilibili/tv/api/video/VideoShotItem;->time:I

    if-lt v0, v8, :cond_84

    .line 180
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

    .line 182
    if-ne v1, v3, :cond_88

    .line 169
    :goto_80
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_3d

    .line 173
    :cond_84
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_42

    .line 186
    :cond_88
    invoke-static {v8, p2}, Lcom/bilibili/tv/util/TimeFormatUtil;->formatTime(II)Ljava/lang/String;

    move-result-object v0

    .line 187
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

    .line 188
    new-instance v8, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter$TagItem;

    invoke-direct {v8, v0, v1}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter$TagItem;-><init>(Ljava/lang/String;I)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_80

    .line 191
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

    .line 193
    const/16 v0, 0x3c

    .line 194
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
    .line 468
    invoke-direct {p0}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->cancelAutoHideTimer()V

    .line 469
    invoke-static {}, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->clearAllCache()V

    .line 470
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->videoListSection:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    if-eqz v0, :cond_f

    .line 471
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->videoListSection:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->cleanup()V

    .line 473
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

    .line 477
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_112

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_112

    .line 478
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 479
    if-eq v1, v7, :cond_29

    if-eq v1, v8, :cond_29

    if-eq v1, v9, :cond_29

    if-eq v1, v6, :cond_29

    const/16 v2, 0x17

    if-eq v1, v2, :cond_29

    const/16 v2, 0x42

    if-ne v1, v2, :cond_2c

    .line 485
    :cond_29
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->resetAutoHideTimer()V

    .line 488
    :cond_2c
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->findFocus()Landroid/view/View;

    move-result-object v2

    .line 489
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

    .line 491
    if-ne v1, v6, :cond_b3

    .line 492
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->videoListSection:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    invoke-direct {p0, v2, v3}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->isChildOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v3

    .line 493
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

    .line 495
    if-eqz v3, :cond_b3

    .line 496
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->videoListSection:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    invoke-virtual {v3}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->isNavTagFocused()Z

    move-result v3

    if-eqz v3, :cond_b3

    .line 497
    const-string v1, "BottomShotMenu"

    const-string v2, "[dispatchKeyEvent] nav tag focused, moving to chapter list"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->videoListSection:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    invoke-virtual {v1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->getNavTagSelectedPosition()I

    move-result v1

    iput v1, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->lastNavTagFocusPosition:I

    .line 499
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->chapterSection:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_ab

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->chapterSection:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_ab

    .line 500
    invoke-direct {p0}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->focusOnCurrentChapter()V

    .line 541
    :cond_aa
    :goto_aa
    return v0

    .line 503
    :cond_ab
    const-string v1, "BottomShotMenu"

    const-string v2, "[dispatchKeyEvent] no chapter section, focus stays"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_aa

    .line 510
    :cond_b3
    if-ne v1, v9, :cond_e8

    .line 511
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->chapterSection:Landroid/widget/LinearLayout;

    invoke-direct {p0, v2, v3}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->isChildOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v3

    .line 512
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

    .line 514
    if-eqz v3, :cond_e8

    .line 515
    const-string v3, "BottomShotMenu"

    const-string v4, "[dispatchKeyEvent] focus on chapterSection, moving back to nav tag"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    iget v3, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->lastNavTagFocusPosition:I

    if-ltz v3, :cond_e8

    .line 517
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->videoListSection:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    iget v2, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->lastNavTagFocusPosition:I

    invoke-virtual {v1, v2}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusNavTag(I)V

    goto :goto_aa

    .line 523
    :cond_e8
    if-eq v1, v7, :cond_ec

    if-ne v1, v8, :cond_112

    .line 524
    :cond_ec
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->chapterSection:Landroid/widget/LinearLayout;

    invoke-direct {p0, v2, v3}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->isChildOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v3

    .line 525
    if-eqz v3, :cond_112

    iget-object v3, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->chapterAdapter:Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter;

    if-eqz v3, :cond_112

    .line 526
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->chapterAdapter:Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter;

    invoke-virtual {v3}, Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter;->getChapterCount()I

    move-result v3

    .line 527
    if-lez v3, :cond_112

    .line 528
    iget-object v4, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->chapterAdapter:Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter;

    invoke-virtual {v4, v2}, Lcom/bilibili/tv/ui/video/widget/ChapterListAdapter;->getFocusedPosition(Landroid/view/View;)I

    move-result v2

    .line 529
    if-ltz v2, :cond_112

    .line 530
    if-ne v1, v7, :cond_10c

    if-eqz v2, :cond_aa

    .line 533
    :cond_10c
    if-ne v1, v8, :cond_112

    add-int/lit8 v1, v3, -0x1

    if-eq v2, v1, :cond_aa

    .line 541
    :cond_112
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_aa
.end method

.method public hide()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 398
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->getVisibility()I

    move-result v0

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->isHiding:Z

    if-eqz v0, :cond_c

    .line 421
    :cond_b
    :goto_b
    return-void

    .line 401
    :cond_c
    invoke-direct {p0}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->cancelAutoHideTimer()V

    .line 402
    invoke-static {v1}, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->setDeferLoading(Z)V

    .line 403
    invoke-static {}, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->clearPendingLoads()V

    .line 404
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->isHiding:Z

    .line 405
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f01000d

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 406
    new-instance v1, Lcom/bilibili/tv/ui/video/player/BottomShotMenu$11;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu$11;-><init>(Lcom/bilibili/tv/ui/video/player/BottomShotMenu;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 420
    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_b
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 424
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
    .line 546
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 547
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->cleanup()V

    .line 548
    return-void
.end method

.method public resetAutoHideTimer()V
    .locals 4

    .prologue
    .line 437
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->autoHideRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_10

    .line 438
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->autoHideRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 439
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->autoHideRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {p0, v0, v2, v3}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 441
    :cond_10
    return-void
.end method

.method public setOnShotClickListener(Lcom/bilibili/tv/ui/video/player/BottomShotMenu$OnShotClickListener;)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->shotClickListener:Lcom/bilibili/tv/ui/video/player/BottomShotMenu$OnShotClickListener;

    .line 155
    return-void
.end method

.method public show(Lcom/bilibili/tv/api/video/VideoShot;ILjava/lang/String;I)V
    .locals 6

    .prologue
    .line 394
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->show(Lcom/bilibili/tv/api/video/VideoShot;ILjava/lang/String;ILorg/json/JSONArray;)V

    .line 395
    return-void
.end method

.method public show(Lcom/bilibili/tv/api/video/VideoShot;ILjava/lang/String;ILorg/json/JSONArray;)V
    .locals 10

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 198
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

    .line 199
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->showStartTime:J

    .line 200
    sget-wide v0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->showStartTime:J

    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->setShowStartTime(J)V

    .line 202
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->videoShot:Lcom/bilibili/tv/api/video/VideoShot;

    .line 203
    iput p2, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->totalDurationMs:I

    .line 204
    div-int/lit16 v0, p2, 0x3e8

    iput v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->totalDuration:I

    .line 205
    iput-object p5, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->viewPoints:Lorg/json/JSONArray;

    .line 206
    iput p4, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->currentPlayTimeMsOnShow:I

    .line 207
    const/4 v0, -0x1

    iput v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->lastNavTagFocusPosition:I

    .line 209
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

    .line 210
    :goto_5b
    if-eqz p5, :cond_6e

    invoke-virtual {p5}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_6e

    move v3, v4

    .line 212
    :goto_64
    if-nez v5, :cond_70

    if-nez v3, :cond_70

    .line 362
    :goto_68
    return-void

    .line 198
    :cond_69
    const-string v0, "null"

    goto :goto_23

    :cond_6c
    move v5, v2

    .line 209
    goto :goto_5b

    :cond_6e
    move v3, v2

    .line 210
    goto :goto_64

    .line 216
    :cond_70
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->seekbarTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_7b

    if-eqz p3, :cond_7b

    .line 217
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->seekbarTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 220
    :cond_7b
    invoke-virtual {p0, p4, p2}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->updateProgress(II)V

    .line 222
    div-int/lit16 v6, p4, 0x3e8

    .line 223
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

    .line 225
    if-eqz v5, :cond_17b

    .line 226
    invoke-virtual {p1}, Lcom/bilibili/tv/api/video/VideoShot;->getAllShots()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->allShots:Ljava/util/List;

    .line 227
    iget-object v7, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->allShots:Ljava/util/List;

    .line 229
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

    .line 230
    :goto_c9
    const/16 v0, 0xf

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    invoke-static {v0, v8}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-ge v1, v0, :cond_103

    .line 231
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

    .line 230
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_c9

    .line 234
    :cond_103
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->videoListSection:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setVisibility(I)V

    .line 235
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->videoListSection:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    new-instance v1, Lcom/bilibili/tv/ui/video/player/BottomShotMenu$4;

    invoke-direct {v1, p0, v6, v7}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu$4;-><init>(Lcom/bilibili/tv/ui/video/player/BottomShotMenu;ILjava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setCurrentItemMatcher(Lcom/bilibili/tv/ui/video/widget/CurrentItemMatcher;)V

    .line 251
    invoke-static {}, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->clearPendingLoads()V

    .line 252
    invoke-static {}, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->clearAllCache()V

    .line 253
    invoke-static {v4}, Lcom/bilibili/tv/ui/video/widget/ShotBinder;->setDeferLoading(Z)V

    .line 255
    new-instance v0, Lcom/bilibili/tv/ui/video/widget/ShotBinder;

    iget v1, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->totalDuration:I

    invoke-direct {v0, p1, v1}, Lcom/bilibili/tv/ui/video/widget/ShotBinder;-><init>(Lcom/bilibili/tv/api/video/VideoShot;I)V

    .line 256
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->videoListSection:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    iget-object v4, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->allShots:Ljava/util/List;

    invoke-virtual {v1, v4, v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setData(Ljava/util/List;Lcom/bilibili/tv/ui/video/widget/VideoCardBinder;)V

    .line 258
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->videoListSection:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setupBottomMenuFocusBoundary()V

    .line 260
    iget v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->totalDuration:I

    invoke-direct {p0, v7, v0}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->setupTimeBasedNavigationTags(Ljava/util/List;I)V

    .line 265
    :goto_133
    invoke-direct {p0, p5, v6}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->setupChapterList(Lorg/json/JSONArray;I)V

    .line 267
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->videoListSection:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    new-instance v1, Lcom/bilibili/tv/ui/video/player/BottomShotMenu$5;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu$5;-><init>(Lcom/bilibili/tv/ui/video/player/BottomShotMenu;)V

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setOnNavTagScrollListener(Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnNavTagScrollListener;)V

    .line 278
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->videoListSection:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    new-instance v1, Lcom/bilibili/tv/ui/video/player/BottomShotMenu$6;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu$6;-><init>(Lcom/bilibili/tv/ui/video/player/BottomShotMenu;)V

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setOnVideoClickListener(Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnVideoClickListener;)V

    .line 295
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->videoListSection:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    new-instance v1, Lcom/bilibili/tv/ui/video/player/BottomShotMenu$7;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu$7;-><init>(Lcom/bilibili/tv/ui/video/player/BottomShotMenu;)V

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setOnFocusExitListener(Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnFocusExitListener;)V

    .line 314
    iput-boolean v2, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->isHiding:Z

    .line 315
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->clearAnimation()V

    .line 316
    invoke-virtual {p0, v2}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->setVisibility(I)V

    .line 317
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f01000a

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->startAnimation(Landroid/view/animation/Animation;)V

    .line 319
    if-eqz v5, :cond_183

    .line 320
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->videoListSection:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    new-instance v1, Lcom/bilibili/tv/ui/video/player/BottomShotMenu$8;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu$8;-><init>(Lcom/bilibili/tv/ui/video/player/BottomShotMenu;)V

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->post(Ljava/lang/Runnable;)Z

    .line 361
    :cond_176
    :goto_176
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->resetAutoHideTimer()V

    goto/16 :goto_68

    .line 262
    :cond_17b
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->videoListSection:Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setVisibility(I)V

    goto :goto_133

    .line 346
    :cond_183
    if-eqz v3, :cond_176

    .line 347
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->chapterList:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/bilibili/tv/ui/video/player/BottomShotMenu$9;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/video/player/BottomShotMenu$9;-><init>(Lcom/bilibili/tv/ui/video/player/BottomShotMenu;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    goto :goto_176
.end method

.method public updateProgress(II)V
    .locals 4

    .prologue
    .line 455
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->seekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_e

    .line 456
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p2}, Landroid/widget/SeekBar;->setMax(I)V

    .line 457
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 459
    :cond_e
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->timeCurrent:Landroid/widget/TextView;

    if-eqz v0, :cond_1c

    .line 460
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->timeCurrent:Landroid/widget/TextView;

    int-to-long v2, p1

    invoke-static {v2, v3}, Lbl/aan;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 462
    :cond_1c
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->timeTotal:Landroid/widget/TextView;

    if-eqz v0, :cond_2a

    .line 463
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/player/BottomShotMenu;->timeTotal:Landroid/widget/TextView;

    int-to-long v2, p2

    invoke-static {v2, v3}, Lbl/aan;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 465
    :cond_2a
    return-void
.end method
