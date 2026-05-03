.class public Lcom/bilibili/tv/ui/video/widget/VideoListSection;
.super Landroid/widget/LinearLayout;
.source "VideoListSection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnNavTagScrollListener;,
        Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnFocusExitListener;,
        Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnVideoCardClickListener;,
        Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnNavTagClickListener;,
        Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnNavTagFocusListener;,
        Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnVideoClickListener;
    }
.end annotation


# static fields
.field private static final FOCUS_AREA_NAV_TAG:I = 0x2

.field private static final FOCUS_AREA_NONE:I = 0x0

.field private static final FOCUS_AREA_VIDEO:I = 0x1

.field private static final MAX_FOCUS_RESTORE_RETRY:I = 0x5

.field private static final NAV_TAG_SCROLL_DEBOUNCE_MS:I = 0x96

.field private static final TAG:Ljava/lang/String; = "VideoDetailFocus"


# instance fields
.field private adapter:Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;

.field private binder:Lcom/bilibili/tv/ui/video/widget/VideoCardBinder;

.field private currentCid:J

.field private currentFocusArea:I

.field private currentItemMatcher:Lcom/bilibili/tv/ui/video/widget/CurrentItemMatcher;

.field private currentPlayingCid:J

.field private currentSeasonId:I

.field private currentVideoId:J

.field private dataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<*>;"
        }
    .end annotation
.end field

.field private focusExitListener:Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnFocusExitListener;

.field private focusPosition:I

.field private focusRedirecting:Z

.field private focusRestoreRetryCount:I

.field private groupSize:I

.field private interceptCurrentVideoClick:Z

.field private isRestoringFocus:Z

.field private lastNavTagVideoStart:I

.field private lockFocusPosition:Z

.field private manualFocusRequested:Z

.field private navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

.field private navTagClickListener:Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnNavTagClickListener;

.field private navTagFocusListener:Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnNavTagFocusListener;

.field private navTagRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private navTagScrollEndRunnable:Ljava/lang/Runnable;

.field private navTagScrollListener:Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnNavTagScrollListener;

.field private pendingNavTagScrollRunnable:Ljava/lang/Runnable;

.field private pendingVideoScrollRunnable:Ljava/lang/Runnable;

.field private recyclerView:Landroid/support/v7/widget/RecyclerView;

.field private savedTagFocusPosition:I

.field private savedVideoFocusPosition:I

.field private sectionId:I

.field private titleView:Landroid/widget/TextView;

.field private videoCardClickListener:Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnVideoCardClickListener;

.field private videoClickListener:Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnVideoClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const-wide/16 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 323
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 71
    iput v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->sectionId:I

    .line 72
    iput v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusPosition:I

    .line 73
    const/16 v0, 0xa

    iput v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->groupSize:I

    .line 74
    iput-wide v4, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->currentVideoId:J

    .line 75
    iput-wide v4, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->currentCid:J

    .line 76
    iput-wide v4, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->currentPlayingCid:J

    .line 77
    iput-boolean v6, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->interceptCurrentVideoClick:Z

    .line 78
    iput v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->currentSeasonId:I

    .line 85
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->manualFocusRequested:Z

    .line 86
    iput v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->savedVideoFocusPosition:I

    .line 87
    iput v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->savedTagFocusPosition:I

    .line 88
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->isRestoringFocus:Z

    .line 94
    iput v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->currentFocusArea:I

    .line 95
    iput v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->lastNavTagVideoStart:I

    .line 96
    iput v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusRestoreRetryCount:I

    .line 99
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusRedirecting:Z

    .line 100
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->lockFocusPosition:Z

    .line 103
    iput-object v3, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->pendingVideoScrollRunnable:Ljava/lang/Runnable;

    .line 104
    iput-object v3, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->pendingNavTagScrollRunnable:Ljava/lang/Runnable;

    .line 108
    iput-object v3, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagScrollEndRunnable:Ljava/lang/Runnable;

    .line 324
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0a008f

    invoke-virtual {v0, v1, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 325
    invoke-direct {p0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->initViews()V

    .line 326
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const-wide/16 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 329
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 71
    iput v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->sectionId:I

    .line 72
    iput v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusPosition:I

    .line 73
    const/16 v0, 0xa

    iput v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->groupSize:I

    .line 74
    iput-wide v4, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->currentVideoId:J

    .line 75
    iput-wide v4, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->currentCid:J

    .line 76
    iput-wide v4, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->currentPlayingCid:J

    .line 77
    iput-boolean v6, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->interceptCurrentVideoClick:Z

    .line 78
    iput v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->currentSeasonId:I

    .line 85
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->manualFocusRequested:Z

    .line 86
    iput v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->savedVideoFocusPosition:I

    .line 87
    iput v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->savedTagFocusPosition:I

    .line 88
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->isRestoringFocus:Z

    .line 94
    iput v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->currentFocusArea:I

    .line 95
    iput v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->lastNavTagVideoStart:I

    .line 96
    iput v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusRestoreRetryCount:I

    .line 99
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusRedirecting:Z

    .line 100
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->lockFocusPosition:Z

    .line 103
    iput-object v3, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->pendingVideoScrollRunnable:Ljava/lang/Runnable;

    .line 104
    iput-object v3, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->pendingNavTagScrollRunnable:Ljava/lang/Runnable;

    .line 108
    iput-object v3, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagScrollEndRunnable:Ljava/lang/Runnable;

    .line 330
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0a008f

    invoke-virtual {v0, v1, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 331
    invoke-direct {p0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->initViews()V

    .line 332
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const-wide/16 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 335
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 71
    iput v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->sectionId:I

    .line 72
    iput v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusPosition:I

    .line 73
    const/16 v0, 0xa

    iput v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->groupSize:I

    .line 74
    iput-wide v4, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->currentVideoId:J

    .line 75
    iput-wide v4, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->currentCid:J

    .line 76
    iput-wide v4, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->currentPlayingCid:J

    .line 77
    iput-boolean v6, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->interceptCurrentVideoClick:Z

    .line 78
    iput v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->currentSeasonId:I

    .line 85
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->manualFocusRequested:Z

    .line 86
    iput v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->savedVideoFocusPosition:I

    .line 87
    iput v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->savedTagFocusPosition:I

    .line 88
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->isRestoringFocus:Z

    .line 94
    iput v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->currentFocusArea:I

    .line 95
    iput v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->lastNavTagVideoStart:I

    .line 96
    iput v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusRestoreRetryCount:I

    .line 99
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusRedirecting:Z

    .line 100
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->lockFocusPosition:Z

    .line 103
    iput-object v3, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->pendingVideoScrollRunnable:Ljava/lang/Runnable;

    .line 104
    iput-object v3, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->pendingNavTagScrollRunnable:Ljava/lang/Runnable;

    .line 108
    iput-object v3, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagScrollEndRunnable:Ljava/lang/Runnable;

    .line 336
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0a008f

    invoke-virtual {v0, v1, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 337
    invoke-direct {p0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->initViews()V

    .line 338
    return-void
.end method

.method static synthetic access$000(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)Z
    .locals 1

    .prologue
    .line 16
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusRedirecting:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)I
    .locals 1

    .prologue
    .line 16
    iget v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->currentSeasonId:I

    return v0
.end method

.method static synthetic access$102(Lcom/bilibili/tv/ui/video/widget/VideoListSection;Z)Z
    .locals 0

    .prologue
    .line 16
    iput-boolean p1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusRedirecting:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)Z
    .locals 1

    .prologue
    .line 16
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->interceptCurrentVideoClick:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/bilibili/tv/ui/video/widget/VideoListSection;I)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->saveFocusPositionByIndex(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnVideoClickListener;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->videoClickListener:Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnVideoClickListener;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)Z
    .locals 1

    .prologue
    .line 16
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->lockFocusPosition:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/bilibili/tv/ui/video/widget/VideoListSection;Z)Z
    .locals 0

    .prologue
    .line 16
    iput-boolean p1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->lockFocusPosition:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)I
    .locals 1

    .prologue
    .line 16
    iget v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->currentFocusArea:I

    return v0
.end method

.method static synthetic access$1502(Lcom/bilibili/tv/ui/video/widget/VideoListSection;I)I
    .locals 0

    .prologue
    .line 16
    iput p1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->currentFocusArea:I

    return p1
.end method

.method static synthetic access$1600(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)Z
    .locals 1

    .prologue
    .line 16
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->manualFocusRequested:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/bilibili/tv/ui/video/widget/VideoListSection;Z)Z
    .locals 0

    .prologue
    .line 16
    iput-boolean p1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->manualFocusRequested:Z

    return p1
.end method

.method static synthetic access$1702(Lcom/bilibili/tv/ui/video/widget/VideoListSection;I)I
    .locals 0

    .prologue
    .line 16
    iput p1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusRestoreRetryCount:I

    return p1
.end method

.method static synthetic access$1800(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnNavTagFocusListener;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagFocusListener:Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnNavTagFocusListener;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)I
    .locals 1

    .prologue
    .line 16
    iget v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->sectionId:I

    return v0
.end method

.method static synthetic access$200(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)Landroid/support/v7/widget/RecyclerView;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->restoreFocusFromNavTag()V

    return-void
.end method

.method static synthetic access$2100(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->restoreFocusFromExternal()V

    return-void
.end method

.method static synthetic access$2200(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->saveCurrentFocusFromRecyclerView()V

    return-void
.end method

.method static synthetic access$2302(Lcom/bilibili/tv/ui/video/widget/VideoListSection;I)I
    .locals 0

    .prologue
    .line 16
    iput p1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->lastNavTagVideoStart:I

    return p1
.end method

.method static synthetic access$2400(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)Landroid/support/v7/widget/RecyclerView;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagRecyclerView:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/bilibili/tv/ui/video/widget/VideoListSection;I)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->scrollToDataPositionOnly(I)V

    return-void
.end method

.method static synthetic access$2600(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnNavTagClickListener;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagClickListener:Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnNavTagClickListener;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->restoreNavTagFromVideo()V

    return-void
.end method

.method static synthetic access$2802(Lcom/bilibili/tv/ui/video/widget/VideoListSection;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .prologue
    .line 16
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->pendingVideoScrollRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$2900(Lcom/bilibili/tv/ui/video/widget/VideoListSection;I)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->restoreFocusWithRetry(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)I
    .locals 1

    .prologue
    .line 16
    iget v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusPosition:I

    return v0
.end method

.method static synthetic access$302(Lcom/bilibili/tv/ui/video/widget/VideoListSection;I)I
    .locals 0

    .prologue
    .line 16
    iput p1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusPosition:I

    return p1
.end method

.method static synthetic access$400(Lcom/bilibili/tv/ui/video/widget/VideoListSection;I)Landroid/view/View;
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->findViewByDataPosition(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnNavTagScrollListener;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagScrollListener:Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnNavTagScrollListener;

    return-object v0
.end method

.method static synthetic access$602(Lcom/bilibili/tv/ui/video/widget/VideoListSection;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .prologue
    .line 16
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagScrollEndRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$700(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)J
    .locals 2

    .prologue
    .line 16
    iget-wide v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->currentCid:J

    return-wide v0
.end method

.method static synthetic access$800(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->adapter:Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;

    return-object v0
.end method

.method static synthetic access$900(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)J
    .locals 2

    .prologue
    .line 16
    iget-wide v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->currentVideoId:J

    return-wide v0
.end method

.method private findPositionByTraversal(Landroid/view/View;)I
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 1316
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_6

    .line 1322
    :cond_5
    return v2

    .line 1317
    :cond_6
    const/4 v0, 0x0

    :goto_7
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 1318
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eq v1, p1, :cond_5

    .line 1317
    add-int/lit8 v0, v0, 0x1

    goto :goto_7
.end method

.method private findViewByDataPosition(I)Landroid/view/View;
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1235
    :try_start_2
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$h;

    move-result-object v0

    .line 1236
    if-nez v0, :cond_c

    move-object v0, v1

    .line 1252
    :cond_b
    :goto_b
    return-object v0

    .line 1240
    :cond_c
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "c"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 1241
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1243
    if-eqz v0, :cond_44

    .line 1244
    :goto_30
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_44

    .line 1245
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_3d} :catch_43

    move-result-object v3

    if-eq v3, v0, :cond_b

    .line 1244
    add-int/lit8 v2, v2, 0x1

    goto :goto_30

    .line 1250
    :catch_43
    move-exception v0

    :cond_44
    move-object v0, v1

    .line 1252
    goto :goto_b
.end method

.method private getViewPosition(Landroid/view/View;)I
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 665
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_7

    if-nez p1, :cond_9

    :cond_7
    move v0, v1

    .line 671
    :cond_8
    :goto_8
    return v0

    .line 666
    :cond_9
    const/4 v0, 0x0

    :goto_a
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1d

    .line 667
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eq v2, p1, :cond_8

    .line 666
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_1d
    move v0, v1

    .line 671
    goto :goto_8
.end method

.method private initNavigationTags()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 505
    const v0, 0x7f0801d6

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 506
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_11

    .line 662
    :goto_10
    return-void

    .line 510
    :cond_11
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/bilibili/tv/widget/FixLinearLayoutManager;

    invoke-virtual {p0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v3, v3}, Lcom/bilibili/tv/widget/FixLinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$h;)V

    .line 511
    new-instance v0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    invoke-direct {v0}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    .line 512
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 513
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->attachRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 515
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    new-instance v1, Lcom/bilibili/tv/ui/video/widget/VideoListSection$9;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection$9;-><init>(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)V

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->setFocusBoundaryHandler(Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter$FocusBoundaryHandler;)V

    .line 539
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    new-instance v1, Lcom/bilibili/tv/ui/video/widget/VideoListSection$10;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection$10;-><init>(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)V

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->setOnTagFocusListener(Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter$OnTagFocusListener;)V

    .line 618
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    new-instance v1, Lcom/bilibili/tv/ui/video/widget/VideoListSection$11;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection$11;-><init>(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)V

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->setOnTagClickListener(Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter$OnTagClickListener;)V

    .line 637
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/bilibili/tv/ui/video/widget/VideoListSection$12;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection$12;-><init>(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    goto :goto_10
.end method

.method private initViews()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const v2, 0x7f0801a5

    .line 341
    const v0, 0x7f0801a4

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->titleView:Landroid/widget/TextView;

    .line 342
    invoke-virtual {p0, v2}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 343
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_1c

    .line 502
    :goto_1b
    return-void

    .line 347
    :cond_1c
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setFocusable(Z)V

    .line 349
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setNextFocusLeftId(I)V

    .line 350
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setNextFocusRightId(I)V

    .line 353
    new-instance v0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;

    invoke-virtual {p0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->adapter:Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;

    .line 355
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->adapter:Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;

    new-instance v1, Lcom/bilibili/tv/ui/video/widget/VideoListSection$5;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection$5;-><init>(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)V

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->setFocusBoundaryHandler(Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter$FocusBoundaryHandler;)V

    .line 377
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->adapter:Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;

    new-instance v1, Lcom/bilibili/tv/ui/video/widget/VideoListSection$6;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection$6;-><init>(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)V

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->setOnItemClickListener(Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter$OnItemClickListener;)V

    .line 406
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->adapter:Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;

    new-instance v1, Lcom/bilibili/tv/ui/video/widget/VideoListSection$7;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection$7;-><init>(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)V

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->setOnItemFocusListener(Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter$OnItemFocusListener;)V

    .line 462
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/bilibili/tv/widget/FixLinearLayoutManager;

    invoke-virtual {p0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v3, v3}, Lcom/bilibili/tv/widget/FixLinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$h;)V

    .line 463
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->adapter:Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 465
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/bilibili/tv/ui/video/widget/VideoListSection$8;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection$8;-><init>(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 501
    invoke-direct {p0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->initNavigationTags()V

    goto :goto_1b
.end method

.method private isViewFullyVisible(Landroid/view/View;)Z
    .locals 6

    .prologue
    const/4 v2, 0x2

    const/4 v0, 0x0

    .line 675
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v1, :cond_8

    if-nez p1, :cond_9

    .line 687
    :cond_8
    :goto_8
    return v0

    .line 676
    :cond_9
    new-array v1, v2, [I

    .line 677
    new-array v2, v2, [I

    .line 678
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 679
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/RecyclerView;->getLocationOnScreen([I)V

    .line 681
    aget v3, v2, v0

    .line 682
    aget v2, v2, v0

    iget-object v4, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v4

    add-int/2addr v2, v4

    .line 683
    aget v4, v1, v0

    .line 684
    aget v1, v1, v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v1, v5

    .line 686
    if-lt v4, v3, :cond_8

    if-gt v1, v2, :cond_8

    const/4 v0, 0x1

    goto :goto_8
.end method

.method private restoreFocusFromExternal()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1086
    invoke-direct {p0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->restoreFocusPositionInternal()Landroid/view/View;

    move-result-object v0

    .line 1087
    if-eqz v0, :cond_d

    .line 1089
    iput-boolean v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->manualFocusRequested:Z

    .line 1090
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 1098
    :cond_c
    :goto_c
    return-void

    .line 1091
    :cond_d
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_c

    .line 1093
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1094
    iput-boolean v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->manualFocusRequested:Z

    .line 1095
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto :goto_c
.end method

.method private restoreFocusFromNavTag()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 1050
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->dataList:Ljava/util/List;

    if-nez v0, :cond_a

    move v2, v3

    .line 1051
    :goto_7
    if-nez v2, :cond_12

    .line 1080
    :goto_9
    return-void

    .line 1050
    :cond_a
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->dataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v2, v0

    goto :goto_7

    .line 1055
    :cond_12
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->getSelectedPosition()I

    move-result v4

    .line 1056
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    invoke-virtual {v0, v4}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->getItemRange(I)[I

    move-result-object v0

    .line 1060
    if-eqz v0, :cond_a1

    .line 1061
    aget v1, v0, v3

    .line 1062
    aget v5, v0, v7

    const v6, 0x7fffffff

    if-ne v5, v6, :cond_98

    add-int/lit8 v0, v2, -0x1

    .line 1068
    :goto_2b
    const-string v5, "VideoDetailFocus"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "restoreFocusFromNavTag | selectedTagIndex="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " | range=["

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "] | focusPosition="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusPosition:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1071
    iget v4, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusPosition:I

    if-lt v4, v1, :cond_6d

    iget v4, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusPosition:I

    if-gt v4, v0, :cond_6d

    iget v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusPosition:I

    .line 1074
    :cond_6d
    const-string v0, "VideoDetailFocus"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "restoreFocusFromNavTag | targetPosition="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1076
    add-int/lit8 v0, v2, -0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1077
    iput v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusPosition:I

    .line 1078
    iput v3, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusRestoreRetryCount:I

    .line 1079
    invoke-direct {p0, v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->restoreFocusWithRetry(I)V

    goto/16 :goto_9

    .line 1062
    :cond_98
    aget v0, v0, v7

    add-int/lit8 v5, v2, -0x1

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_2b

    .line 1064
    :cond_a1
    iget v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->lastNavTagVideoStart:I

    .line 1065
    iget v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->lastNavTagVideoStart:I

    iget-object v5, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    invoke-virtual {v5}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->getGroupSize()I

    move-result v5

    add-int/2addr v0, v5

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v5, v2, -0x1

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto/16 :goto_2b
.end method

.method private restoreFocusPositionInternal()Landroid/view/View;
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 1203
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    if-nez v1, :cond_7

    .line 1230
    :cond_6
    :goto_6
    return-object v0

    .line 1207
    :cond_7
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->dataList:Ljava/util/List;

    if-nez v1, :cond_2a

    move v1, v2

    .line 1208
    :goto_c
    if-eqz v1, :cond_6

    .line 1212
    iget v3, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusPosition:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1213
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1215
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v3

    .line 1216
    if-eqz v3, :cond_6

    .line 1220
    invoke-direct {p0, v1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->findViewByDataPosition(I)Landroid/view/View;

    move-result-object v1

    .line 1221
    if-eqz v1, :cond_31

    move-object v0, v1

    .line 1222
    goto :goto_6

    .line 1207
    :cond_2a
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->dataList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_c

    .line 1225
    :cond_31
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1226
    if-eqz v1, :cond_6

    move-object v0, v1

    .line 1227
    goto :goto_6
.end method

.method private restoreFocusWithRetry(I)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1144
    iget v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusRestoreRetryCount:I

    const/4 v1, 0x5

    if-le v0, v1, :cond_21

    .line 1147
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1e

    .line 1148
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1149
    iput-boolean v3, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->manualFocusRequested:Z

    .line 1150
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 1152
    :cond_1e
    iput v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusRestoreRetryCount:I

    .line 1175
    :goto_20
    return-void

    .line 1157
    :cond_21
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->findViewByDataPosition(I)Landroid/view/View;

    move-result-object v0

    .line 1158
    if-eqz v0, :cond_2f

    .line 1160
    iput-boolean v3, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->manualFocusRequested:Z

    .line 1161
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 1162
    iput v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusRestoreRetryCount:I

    goto :goto_20

    .line 1166
    :cond_2f
    iget v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusRestoreRetryCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusRestoreRetryCount:I

    .line 1167
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/bilibili/tv/ui/video/widget/VideoListSection$19;

    invoke-direct {v1, p0, p1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection$19;-><init>(Lcom/bilibili/tv/ui/video/widget/VideoListSection;I)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v7/widget/RecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_20
.end method

.method private restoreNavTagFromVideo()V
    .locals 6

    .prologue
    .line 1104
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1136
    :cond_c
    :goto_c
    return-void

    .line 1109
    :cond_d
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    iget v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusPosition:I

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->getGroupIndexForVideoPosition(I)I

    move-result v0

    .line 1112
    if-ltz v0, :cond_c

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    invoke-virtual {v1}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->getTagCount()I

    move-result v1

    if-ge v0, v1, :cond_c

    .line 1113
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    invoke-virtual {v1, v0}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->setSelectedPosition(I)V

    .line 1114
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    invoke-virtual {v1, v0}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->scrollToPositionWithOffset(I)V

    .line 1117
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    invoke-virtual {v1, v0}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->findViewByPosition(I)Landroid/view/View;

    move-result-object v1

    .line 1118
    if-eqz v1, :cond_35

    .line 1120
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    goto :goto_c

    .line 1124
    :cond_35
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Lcom/bilibili/tv/ui/video/widget/VideoListSection$18;

    invoke-direct {v2, p0, v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection$18;-><init>(Lcom/bilibili/tv/ui/video/widget/VideoListSection;I)V

    const-wide/16 v4, 0x64

    invoke-virtual {v1, v2, v4, v5}, Landroid/support/v7/widget/RecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_c
.end method

.method private saveCurrentFocusFromRecyclerView()V
    .locals 3

    .prologue
    .line 1277
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_5

    .line 1290
    :cond_4
    :goto_4
    return-void

    .line 1278
    :cond_5
    const/4 v0, 0x0

    :goto_6
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 1279
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1280
    if-eqz v1, :cond_28

    invoke-virtual {v1}, Landroid/view/View;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_28

    .line 1281
    invoke-virtual {p0, v1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->getDataPositionForView(Landroid/view/View;)I

    move-result v1

    .line 1282
    if-ltz v1, :cond_25

    .line 1283
    iput v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusPosition:I

    goto :goto_4

    .line 1285
    :cond_25
    iput v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusPosition:I

    goto :goto_4

    .line 1278
    :cond_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_6
.end method

.method private saveFocusPositionByIndex(I)V
    .locals 0

    .prologue
    .line 1273
    iput p1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusPosition:I

    .line 1274
    return-void
.end method

.method private scrollToDataPositionAtFirstPosition(I)V
    .locals 2

    .prologue
    .line 912
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->dataList:Ljava/util/List;

    if-nez v0, :cond_9

    .line 945
    :cond_8
    :goto_8
    return-void

    .line 916
    :cond_9
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->dataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 917
    if-ltz p1, :cond_8

    if-ge p1, v0, :cond_8

    .line 922
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/bilibili/tv/ui/video/widget/VideoListSection$15;

    invoke-direct {v1, p0, p1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection$15;-><init>(Lcom/bilibili/tv/ui/video/widget/VideoListSection;I)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    goto :goto_8
.end method

.method private scrollToDataPositionOnly(I)V
    .locals 2

    .prologue
    .line 994
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_5

    .line 1047
    :cond_4
    :goto_4
    return-void

    .line 999
    :cond_5
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->dataList:Ljava/util/List;

    if-nez v0, :cond_2d

    const/4 v0, 0x0

    .line 1000
    :goto_a
    if-ltz p1, :cond_4

    if-ge p1, v0, :cond_4

    .line 1007
    iput p1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusPosition:I

    .line 1011
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->pendingVideoScrollRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1e

    .line 1012
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->pendingVideoScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1013
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->pendingVideoScrollRunnable:Ljava/lang/Runnable;

    .line 1018
    :cond_1e
    new-instance v0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$17;

    invoke-direct {v0, p0, p1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection$17;-><init>(Lcom/bilibili/tv/ui/video/widget/VideoListSection;I)V

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->pendingVideoScrollRunnable:Ljava/lang/Runnable;

    .line 1045
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->pendingVideoScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    goto :goto_4

    .line 999
    :cond_2d
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->dataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_a
.end method


# virtual methods
.method public cleanup()V
    .locals 1

    .prologue
    .line 1603
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->dataList:Ljava/util/List;

    if-eqz v0, :cond_9

    .line 1604
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->dataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1606
    :cond_9
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 9

    .prologue
    const/4 v3, 0x0

    const/16 v8, 0x14

    const/16 v7, 0x13

    const/4 v6, 0x2

    const/4 v1, 0x1

    .line 112
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_12

    .line 113
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 319
    :goto_11
    return v0

    .line 116
    :cond_12
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 119
    if-eq v0, v8, :cond_1a

    if-ne v0, v7, :cond_4c

    .line 120
    :cond_1a
    const-string v2, "VideoDetailFocus"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dispatchKeyEvent | keyCode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", hasNavTags="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->hasNavigationTags()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", focusArea="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->currentFocusArea:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :cond_4c
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->hasNavigationTags()Z

    move-result v2

    if-eqz v2, :cond_1c9

    .line 126
    if-ne v0, v8, :cond_9f

    iget v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->currentFocusArea:I

    if-ne v2, v1, :cond_9f

    .line 127
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    iget v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusPosition:I

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->getGroupIndexForVideoPosition(I)I

    move-result v0

    .line 128
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    invoke-virtual {v2}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->getTagCount()I

    move-result v2

    if-lt v0, v2, :cond_70

    .line 129
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->getTagCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 132
    :cond_70
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusRedirecting:Z

    .line 133
    iput v6, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->currentFocusArea:I

    .line 135
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    invoke-virtual {v2, v0}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->getStartIndex(I)I

    move-result v2

    iput v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->lastNavTagVideoStart:I

    .line 136
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    invoke-virtual {v2, v0}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->setSelectedPosition(I)V

    .line 137
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    invoke-virtual {v2, v0}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->scrollToPositionWithOffset(I)V

    .line 140
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    invoke-virtual {v2, v0}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->findViewByPosition(I)Landroid/view/View;

    move-result-object v2

    .line 141
    if-eqz v2, :cond_94

    .line 142
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    :goto_91
    move v0, v1

    .line 156
    goto/16 :goto_11

    .line 144
    :cond_94
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v3, Lcom/bilibili/tv/ui/video/widget/VideoListSection$1;

    invoke-direct {v3, p0, v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection$1;-><init>(Lcom/bilibili/tv/ui/video/widget/VideoListSection;I)V

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    goto :goto_91

    .line 160
    :cond_9f
    if-ne v0, v7, :cond_da

    iget v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->currentFocusArea:I

    if-ne v2, v6, :cond_da

    .line 162
    iget v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusPosition:I

    .line 163
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->dataList:Ljava/util/List;

    if-nez v2, :cond_c8

    move v2, v3

    .line 164
    :goto_ac
    if-lez v2, :cond_b8

    .line 165
    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 168
    :cond_b8
    iput v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->currentFocusArea:I

    .line 170
    invoke-direct {p0, v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->findViewByDataPosition(I)Landroid/view/View;

    move-result-object v2

    .line 171
    if-eqz v2, :cond_cf

    .line 172
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusRedirecting:Z

    .line 173
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    :goto_c5
    move v0, v1

    .line 204
    goto/16 :goto_11

    .line 163
    :cond_c8
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->dataList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_ac

    .line 176
    :cond_cf
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v3, Lcom/bilibili/tv/ui/video/widget/VideoListSection$2;

    invoke-direct {v3, p0, v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection$2;-><init>(Lcom/bilibili/tv/ui/video/widget/VideoListSection;I)V

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    goto :goto_c5

    .line 208
    :cond_da
    if-ne v0, v7, :cond_f0

    iget v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->currentFocusArea:I

    if-ne v2, v1, :cond_f0

    .line 210
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusExitListener:Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnFocusExitListener;

    if-eqz v0, :cond_ed

    .line 211
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusExitListener:Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnFocusExitListener;

    iget v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->sectionId:I

    iget v3, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusPosition:I

    invoke-interface {v0, v2, v3}, Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnFocusExitListener;->onFocusExitUp(II)V

    :cond_ed
    move v0, v1

    .line 214
    goto/16 :goto_11

    .line 218
    :cond_f0
    if-ne v0, v8, :cond_124

    iget v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->currentFocusArea:I

    if-ne v2, v6, :cond_124

    .line 219
    const-string v0, "VideoDetailFocus"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dispatchKeyEvent | NAV_TAG\u2192DOWN \u2192 \u7126\u70b9\u79bb\u5f00\u7ec4\u4ef6, focusExitListener="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusExitListener:Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnFocusExitListener;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusExitListener:Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnFocusExitListener;

    if-eqz v0, :cond_121

    .line 221
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusExitListener:Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnFocusExitListener;

    iget v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->sectionId:I

    iget-object v3, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    invoke-virtual {v3}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->getSelectedPosition()I

    move-result v3

    invoke-interface {v0, v2, v3}, Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnFocusExitListener;->onFocusExitDown(II)V

    :cond_121
    move v0, v1

    .line 224
    goto/16 :goto_11

    .line 228
    :cond_124
    iget v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->currentFocusArea:I

    if-ne v2, v6, :cond_1f0

    .line 229
    const/16 v2, 0x15

    if-eq v0, v2, :cond_130

    const/16 v2, 0x16

    if-ne v0, v2, :cond_1f0

    .line 231
    :cond_130
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    invoke-virtual {v2}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->getSelectedPosition()I

    move-result v2

    .line 232
    iget-object v4, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    invoke-virtual {v4}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->getTagCount()I

    move-result v4

    .line 235
    const/16 v5, 0x15

    if-ne v0, v5, :cond_1ae

    .line 236
    add-int/lit8 v0, v2, -0x1

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 241
    :goto_146
    if-eq v0, v2, :cond_1ab

    .line 242
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagScrollListener:Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnNavTagScrollListener;

    if-eqz v2, :cond_151

    .line 243
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagScrollListener:Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnNavTagScrollListener;

    invoke-interface {v2}, Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnNavTagScrollListener;->onNavTagScrollStart()V

    .line 246
    :cond_151
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagScrollEndRunnable:Ljava/lang/Runnable;

    if-eqz v2, :cond_15a

    .line 247
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagScrollEndRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 250
    :cond_15a
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusRedirecting:Z

    .line 251
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    invoke-virtual {v2, v0}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->setSelectedPosition(I)V

    .line 253
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    invoke-virtual {v2, v0}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->getStartIndex(I)I

    move-result v2

    .line 254
    iput v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->lastNavTagVideoStart:I

    .line 256
    const-string v3, "VideoDetailFocus"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dispatchKeyEvent | NAV_TAG\u2192LEFT/RIGHT | targetTagIndex="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " -> lastNavTagVideoStart="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->lastNavTagVideoStart:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    invoke-direct {p0, v2}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->scrollToDataPositionOnly(I)V

    .line 261
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    invoke-virtual {v2, v0}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->findViewByPosition(I)Landroid/view/View;

    move-result-object v2

    .line 262
    if-eqz v2, :cond_1b7

    .line 263
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusRedirecting:Z

    .line 264
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 279
    :goto_19d
    new-instance v0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$4;

    invoke-direct {v0, p0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection$4;-><init>(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)V

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagScrollEndRunnable:Ljava/lang/Runnable;

    .line 288
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagScrollEndRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x96

    invoke-virtual {p0, v0, v2, v3}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1ab
    move v0, v1

    .line 291
    goto/16 :goto_11

    .line 238
    :cond_1ae
    add-int/lit8 v0, v4, -0x1

    add-int/lit8 v3, v2, 0x1

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_146

    .line 266
    :cond_1b7
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    invoke-virtual {v2, v0}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->scrollToPosition(I)V

    .line 267
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v3, Lcom/bilibili/tv/ui/video/widget/VideoListSection$3;

    invoke-direct {v3, p0, v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection$3;-><init>(Lcom/bilibili/tv/ui/video/widget/VideoListSection;I)V

    const-wide/16 v4, 0x64

    invoke-virtual {v2, v3, v4, v5}, Landroid/support/v7/widget/RecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_19d

    .line 300
    :cond_1c9
    iget v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->currentFocusArea:I

    if-ne v2, v1, :cond_1f0

    .line 301
    if-ne v0, v7, :cond_1df

    .line 303
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusExitListener:Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnFocusExitListener;

    if-eqz v0, :cond_1dc

    .line 304
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusExitListener:Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnFocusExitListener;

    iget v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->sectionId:I

    iget v3, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusPosition:I

    invoke-interface {v0, v2, v3}, Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnFocusExitListener;->onFocusExitUp(II)V

    :cond_1dc
    move v0, v1

    .line 306
    goto/16 :goto_11

    .line 308
    :cond_1df
    if-ne v0, v8, :cond_1f0

    .line 310
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusExitListener:Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnFocusExitListener;

    if-eqz v0, :cond_1ed

    .line 311
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusExitListener:Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnFocusExitListener;

    iget v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->sectionId:I

    const/4 v3, -0x1

    invoke-interface {v0, v2, v3}, Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnFocusExitListener;->onFocusExitDown(II)V

    :cond_1ed
    move v0, v1

    .line 313
    goto/16 :goto_11

    .line 319
    :cond_1f0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto/16 :goto_11
.end method

.method public focusNavTag(I)V
    .locals 1

    .prologue
    .line 1564
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_9

    .line 1580
    :cond_8
    :goto_8
    return-void

    .line 1567
    :cond_9
    if-ltz p1, :cond_8

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->getTagCount()I

    move-result v0

    if-ge p1, v0, :cond_8

    .line 1571
    const/4 v0, 0x2

    iput v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->currentFocusArea:I

    .line 1572
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    invoke-virtual {v0, p1}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->getStartIndex(I)I

    move-result v0

    iput v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->lastNavTagVideoStart:I

    .line 1573
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    invoke-virtual {v0, p1}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->setSelectedPosition(I)V

    .line 1574
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    invoke-virtual {v0, p1}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->scrollToPositionWithOffset(I)V

    .line 1576
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    invoke-virtual {v0, p1}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    .line 1577
    if-eqz v0, :cond_8

    .line 1578
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto :goto_8
.end method

.method public getAdapter()Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;
    .locals 1

    .prologue
    .line 1350
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->adapter:Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;

    return-object v0
.end method

.method public getBinder()Lcom/bilibili/tv/ui/video/widget/VideoCardBinder;
    .locals 1

    .prologue
    .line 1363
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->binder:Lcom/bilibili/tv/ui/video/widget/VideoCardBinder;

    return-object v0
.end method

.method public getCurrentCid()J
    .locals 2

    .prologue
    .line 752
    iget-wide v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->currentCid:J

    return-wide v0
.end method

.method public getCurrentItemMatcher()Lcom/bilibili/tv/ui/video/widget/CurrentItemMatcher;
    .locals 1

    .prologue
    .line 772
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->currentItemMatcher:Lcom/bilibili/tv/ui/video/widget/CurrentItemMatcher;

    return-object v0
.end method

.method public getCurrentPlayingCid()J
    .locals 2

    .prologue
    .line 731
    iget-wide v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->currentPlayingCid:J

    return-wide v0
.end method

.method public getCurrentSeasonId()I
    .locals 1

    .prologue
    .line 764
    iget v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->currentSeasonId:I

    return v0
.end method

.method public getDataList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 1359
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->dataList:Ljava/util/List;

    return-object v0
.end method

.method public getDataPositionForView(Landroid/view/View;)I
    .locals 3

    .prologue
    .line 1297
    if-eqz p1, :cond_a

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->dataList:Ljava/util/List;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->adapter:Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;

    if-nez v0, :cond_c

    .line 1298
    :cond_a
    const/4 v0, -0x1

    .line 1312
    :cond_b
    :goto_b
    return v0

    .line 1301
    :cond_c
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 1302
    if-nez v1, :cond_17

    .line 1303
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->findPositionByTraversal(Landroid/view/View;)I

    move-result v0

    goto :goto_b

    .line 1306
    :cond_17
    const/4 v0, 0x0

    :goto_18
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->dataList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2b

    .line 1307
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->dataList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, v1, :cond_b

    .line 1306
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 1312
    :cond_2b
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->findPositionByTraversal(Landroid/view/View;)I

    move-result v0

    goto :goto_b
.end method

.method public getDataSize()I
    .locals 1

    .prologue
    .line 1326
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->dataList:Ljava/util/List;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->dataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_5
.end method

.method public getFocusPosition()I
    .locals 1

    .prologue
    .line 1293
    iget v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusPosition:I

    return v0
.end method

.method public getGroupSize()I
    .locals 1

    .prologue
    .line 1419
    iget v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->groupSize:I

    return v0
.end method

.method public getNavTagAdapter()Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;
    .locals 1

    .prologue
    .line 1470
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    return-object v0
.end method

.method public getNavTagIndexForPosition(I)I
    .locals 1

    .prologue
    .line 1557
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    if-nez v0, :cond_6

    .line 1558
    const/4 v0, -0x1

    .line 1560
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    invoke-virtual {v0, p1}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->getGroupIndexForVideoPosition(I)I

    move-result v0

    goto :goto_5
.end method

.method public getNavTagRecyclerView()Landroid/support/v7/widget/RecyclerView;
    .locals 1

    .prologue
    .line 1466
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagRecyclerView:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method public getNavTagSelectedPosition()I
    .locals 1

    .prologue
    .line 1436
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    if-nez v0, :cond_6

    .line 1437
    const/4 v0, -0x1

    .line 1439
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->getSelectedPosition()I

    move-result v0

    goto :goto_5
.end method

.method public getRecyclerView()Landroid/support/v7/widget/RecyclerView;
    .locals 1

    .prologue
    .line 1342
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method public getSectionId()I
    .locals 1

    .prologue
    .line 1334
    iget v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->sectionId:I

    return v0
.end method

.method public getTitleView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 1346
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->titleView:Landroid/widget/TextView;

    return-object v0
.end method

.method public hasData()Z
    .locals 1

    .prologue
    .line 1354
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->dataList:Ljava/util/List;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->dataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    .line 1355
    :goto_d
    return v0

    .line 1354
    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public hasNavigationTags()Z
    .locals 1

    .prologue
    .line 1459
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 1460
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    .line 1462
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a

    const/4 v0, 0x1

    .line 1459
    :goto_19
    return v0

    .line 1462
    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public hideTitle()V
    .locals 2

    .prologue
    .line 704
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->titleView:Landroid/widget/TextView;

    if-eqz v0, :cond_b

    .line 705
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->titleView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 707
    :cond_b
    return-void
.end method

.method public isDataLoaded()Z
    .locals 1

    .prologue
    .line 1553
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->dataList:Ljava/util/List;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->dataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->adapter:Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->adapter:Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->a()I

    move-result v0

    if-lez v0, :cond_1a

    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public isNavTagFocused()Z
    .locals 2

    .prologue
    .line 1443
    iget v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->currentFocusArea:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public onVideoCardClicked(JLcom/bilibili/tv/player/basic/context/ResolveResourceParams;)V
    .locals 1

    .prologue
    .line 1615
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->videoCardClickListener:Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnVideoCardClickListener;

    if-eqz v0, :cond_9

    .line 1616
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->videoCardClickListener:Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnVideoCardClickListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnVideoCardClickListener;->onVideoCardClicked(JLcom/bilibili/tv/player/basic/context/ResolveResourceParams;)V

    .line 1618
    :cond_9
    return-void
.end method

.method public refreshVisibleItems()V
    .locals 1

    .prologue
    .line 1609
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->adapter:Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;

    if-eqz v0, :cond_9

    .line 1610
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->adapter:Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->d()V

    .line 1612
    :cond_9
    return-void
.end method

.method public requestFocusOnCurrentPosition()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 1591
    iput v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->currentFocusArea:I

    .line 1592
    iput-boolean v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->lockFocusPosition:Z

    .line 1593
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->requestFocusOnSavedPosition()Z

    .line 1594
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/bilibili/tv/ui/video/widget/VideoListSection$21;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection$21;-><init>(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v7/widget/RecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1600
    return-void
.end method

.method public requestFocusOnPosition(I)V
    .locals 0

    .prologue
    .line 1583
    if-gez p1, :cond_3

    .line 1588
    :goto_2
    return-void

    .line 1586
    :cond_3
    iput p1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusPosition:I

    .line 1587
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->requestFocusOnCurrentPosition()V

    goto :goto_2
.end method

.method public requestFocusOnSavedPosition()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1182
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->manualFocusRequested:Z

    .line 1183
    iput v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->currentFocusArea:I

    .line 1185
    invoke-direct {p0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->restoreFocusPositionInternal()Landroid/view/View;

    move-result-object v1

    .line 1186
    if-eqz v1, :cond_11

    .line 1187
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    move-result v0

    .line 1199
    :cond_10
    :goto_10
    return v0

    .line 1190
    :cond_11
    iget-boolean v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->lockFocusPosition:Z

    if-nez v1, :cond_10

    .line 1194
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_10

    .line 1195
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1196
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    move-result v0

    goto :goto_10
.end method

.method public restoreFocusPosition()Landroid/view/View;
    .locals 1

    .prologue
    .line 1178
    invoke-direct {p0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->restoreFocusPositionInternal()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public saveFocusPosition(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 1256
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_6

    if-nez p1, :cond_7

    .line 1270
    :cond_6
    :goto_6
    return-void

    .line 1259
    :cond_7
    const/4 v0, 0x0

    :goto_8
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_6

    .line 1260
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-ne v1, p1, :cond_24

    .line 1261
    invoke-virtual {p0, p1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->getDataPositionForView(Landroid/view/View;)I

    move-result v1

    .line 1262
    if-ltz v1, :cond_21

    .line 1263
    iput v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusPosition:I

    goto :goto_6

    .line 1265
    :cond_21
    iput v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusPosition:I

    goto :goto_6

    .line 1259
    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_8
.end method

.method public saveTagFocusPosition(I)V
    .locals 0

    .prologue
    .line 1549
    iput p1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->savedTagFocusPosition:I

    .line 1550
    return-void
.end method

.method public saveVideoFocusPosition(I)V
    .locals 0

    .prologue
    .line 1545
    iput p1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->savedVideoFocusPosition:I

    .line 1546
    return-void
.end method

.method public scrollNavTagToPosition(I)V
    .locals 1

    .prologue
    .line 1447
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    if-eqz v0, :cond_9

    .line 1448
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    invoke-virtual {v0, p1}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->scrollToPosition(I)V

    .line 1450
    :cond_9
    return-void
.end method

.method public scrollToCurrentItem()V
    .locals 4

    .prologue
    .line 837
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->dataList:Ljava/util/List;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->dataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 886
    :cond_10
    :goto_10
    return-void

    .line 840
    :cond_11
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->currentItemMatcher:Lcom/bilibili/tv/ui/video/widget/CurrentItemMatcher;

    if-eqz v0, :cond_10

    .line 844
    const/4 v1, -0x1

    .line 845
    const/4 v0, 0x0

    :goto_17
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->dataList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_3d

    .line 846
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->currentItemMatcher:Lcom/bilibili/tv/ui/video/widget/CurrentItemMatcher;

    iget-object v3, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->dataList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Lcom/bilibili/tv/ui/video/widget/CurrentItemMatcher;->isCurrentItem(Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 852
    :goto_2d
    if-ltz v0, :cond_10

    .line 857
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Lcom/bilibili/tv/ui/video/widget/VideoListSection$14;

    invoke-direct {v2, p0, v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection$14;-><init>(Lcom/bilibili/tv/ui/video/widget/VideoListSection;I)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    goto :goto_10

    .line 845
    :cond_3a
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    :cond_3d
    move v0, v1

    goto :goto_2d
.end method

.method public scrollToCurrentItemAtFirstPosition()V
    .locals 4

    .prologue
    .line 889
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->dataList:Ljava/util/List;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->dataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 909
    :cond_10
    :goto_10
    return-void

    .line 892
    :cond_11
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->currentItemMatcher:Lcom/bilibili/tv/ui/video/widget/CurrentItemMatcher;

    if-eqz v0, :cond_10

    .line 896
    const/4 v1, -0x1

    .line 897
    const/4 v0, 0x0

    :goto_17
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->dataList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_36

    .line 898
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->currentItemMatcher:Lcom/bilibili/tv/ui/video/widget/CurrentItemMatcher;

    iget-object v3, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->dataList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Lcom/bilibili/tv/ui/video/widget/CurrentItemMatcher;->isCurrentItem(Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 904
    :goto_2d
    if-ltz v0, :cond_10

    .line 908
    invoke-direct {p0, v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->scrollToDataPositionAtFirstPosition(I)V

    goto :goto_10

    .line 897
    :cond_33
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    :cond_36
    move v0, v1

    goto :goto_2d
.end method

.method public scrollToCurrentVideo()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const/4 v1, 0x0

    .line 776
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_8

    .line 834
    :cond_7
    :goto_7
    return-void

    .line 779
    :cond_8
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->dataList:Ljava/util/List;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->dataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 782
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->binder:Lcom/bilibili/tv/ui/video/widget/VideoCardBinder;

    if-eqz v0, :cond_7

    .line 786
    const/4 v2, -0x1

    move v0, v1

    .line 787
    :goto_1a
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->dataList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_6a

    .line 788
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->dataList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 791
    iget-wide v6, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->currentCid:J

    cmp-long v3, v6, v8

    if-lez v3, :cond_67

    .line 792
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->binder:Lcom/bilibili/tv/ui/video/widget/VideoCardBinder;

    iget-wide v6, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->currentCid:J

    invoke-interface {v3, v5, v6, v7}, Lcom/bilibili/tv/ui/video/widget/VideoCardBinder;->isCurrentVideoByCid(Ljava/lang/Object;J)Z

    move-result v3

    .line 793
    const/4 v4, 0x1

    .line 795
    :goto_37
    if-nez v4, :cond_47

    iget-wide v6, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->currentVideoId:J

    cmp-long v4, v6, v8

    if-lez v4, :cond_47

    .line 796
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->binder:Lcom/bilibili/tv/ui/video/widget/VideoCardBinder;

    iget-wide v6, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->currentVideoId:J

    invoke-interface {v3, v5, v6, v7}, Lcom/bilibili/tv/ui/video/widget/VideoCardBinder;->isCurrentVideo(Ljava/lang/Object;J)Z

    move-result v3

    .line 798
    :cond_47
    if-nez v3, :cond_55

    iget v4, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->currentSeasonId:I

    if-lez v4, :cond_55

    .line 799
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->binder:Lcom/bilibili/tv/ui/video/widget/VideoCardBinder;

    iget v4, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->currentSeasonId:I

    invoke-interface {v3, v5, v4}, Lcom/bilibili/tv/ui/video/widget/VideoCardBinder;->isCurrentSeason(Ljava/lang/Object;I)Z

    move-result v3

    .line 801
    :cond_55
    if-eqz v3, :cond_64

    .line 807
    :goto_57
    if-ltz v0, :cond_7

    .line 812
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Lcom/bilibili/tv/ui/video/widget/VideoListSection$13;

    invoke-direct {v2, p0, v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection$13;-><init>(Lcom/bilibili/tv/ui/video/widget/VideoListSection;I)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    goto :goto_7

    .line 787
    :cond_64
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    :cond_67
    move v4, v1

    move v3, v1

    goto :goto_37

    :cond_6a
    move v0, v2

    goto :goto_57
.end method

.method public scrollToCurrentVideoAtFirstPosition()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const/4 v1, 0x0

    .line 1474
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->dataList:Ljava/util/List;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->dataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->binder:Lcom/bilibili/tv/ui/video/widget/VideoCardBinder;

    if-nez v0, :cond_18

    .line 1530
    :cond_17
    :goto_17
    return-void

    .line 1478
    :cond_18
    const/4 v2, -0x1

    move v0, v1

    .line 1479
    :goto_1a
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->dataList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_68

    .line 1480
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->dataList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 1482
    iget-wide v6, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->currentCid:J

    cmp-long v3, v6, v8

    if-lez v3, :cond_66

    .line 1483
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->binder:Lcom/bilibili/tv/ui/video/widget/VideoCardBinder;

    iget-wide v6, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->currentCid:J

    invoke-interface {v3, v4, v6, v7}, Lcom/bilibili/tv/ui/video/widget/VideoCardBinder;->isCurrentVideoByCid(Ljava/lang/Object;J)Z

    move-result v3

    .line 1485
    :goto_36
    if-nez v3, :cond_46

    iget-wide v6, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->currentVideoId:J

    cmp-long v5, v6, v8

    if-lez v5, :cond_46

    .line 1486
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->binder:Lcom/bilibili/tv/ui/video/widget/VideoCardBinder;

    iget-wide v6, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->currentVideoId:J

    invoke-interface {v3, v4, v6, v7}, Lcom/bilibili/tv/ui/video/widget/VideoCardBinder;->isCurrentVideo(Ljava/lang/Object;J)Z

    move-result v3

    .line 1488
    :cond_46
    if-nez v3, :cond_54

    iget v5, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->currentSeasonId:I

    if-lez v5, :cond_54

    .line 1489
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->binder:Lcom/bilibili/tv/ui/video/widget/VideoCardBinder;

    iget v5, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->currentSeasonId:I

    invoke-interface {v3, v4, v5}, Lcom/bilibili/tv/ui/video/widget/VideoCardBinder;->isCurrentSeason(Ljava/lang/Object;I)Z

    move-result v3

    .line 1491
    :cond_54
    if-eqz v3, :cond_63

    .line 1497
    :goto_56
    if-ltz v0, :cond_17

    .line 1502
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Lcom/bilibili/tv/ui/video/widget/VideoListSection$20;

    invoke-direct {v2, p0, v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection$20;-><init>(Lcom/bilibili/tv/ui/video/widget/VideoListSection;I)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    goto :goto_17

    .line 1479
    :cond_63
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    :cond_66
    move v3, v1

    goto :goto_36

    :cond_68
    move v0, v2

    goto :goto_56
.end method

.method public scrollToDataPosition(I)V
    .locals 2

    .prologue
    .line 948
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_5

    .line 983
    :cond_4
    :goto_4
    return-void

    .line 952
    :cond_5
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->dataList:Ljava/util/List;

    if-nez v0, :cond_19

    const/4 v0, 0x0

    .line 953
    :goto_a
    if-ltz p1, :cond_4

    if-ge p1, v0, :cond_4

    .line 958
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/bilibili/tv/ui/video/widget/VideoListSection$16;

    invoke-direct {v1, p0, p1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection$16;-><init>(Lcom/bilibili/tv/ui/video/widget/VideoListSection;I)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    goto :goto_4

    .line 952
    :cond_19
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->dataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_a
.end method

.method public setCurrentCid(J)V
    .locals 1

    .prologue
    .line 748
    iput-wide p1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->currentCid:J

    .line 749
    return-void
.end method

.method public setCurrentItemMatcher(Lcom/bilibili/tv/ui/video/widget/CurrentItemMatcher;)V
    .locals 0

    .prologue
    .line 768
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->currentItemMatcher:Lcom/bilibili/tv/ui/video/widget/CurrentItemMatcher;

    .line 769
    return-void
.end method

.method public setCurrentPlayingCid(J)V
    .locals 1

    .prologue
    .line 724
    iput-wide p1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->currentPlayingCid:J

    .line 725
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->adapter:Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;

    if-eqz v0, :cond_b

    .line 726
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->adapter:Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->setCurrentPlayingCid(J)V

    .line 728
    :cond_b
    return-void
.end method

.method public setCurrentSeasonId(I)V
    .locals 0

    .prologue
    .line 760
    iput p1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->currentSeasonId:I

    .line 761
    return-void
.end method

.method public setCurrentVideoId(J)V
    .locals 1

    .prologue
    .line 744
    iput-wide p1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->currentVideoId:J

    .line 745
    return-void
.end method

.method public setData(Ljava/util/List;Lcom/bilibili/tv/ui/video/widget/VideoCardBinder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;",
            "Lcom/bilibili/tv/ui/video/widget/VideoCardBinder;",
            ")V"
        }
    .end annotation

    .prologue
    .line 710
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->dataList:Ljava/util/List;

    .line 711
    iput-object p2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->binder:Lcom/bilibili/tv/ui/video/widget/VideoCardBinder;

    .line 712
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->adapter:Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;

    if-eqz v0, :cond_d

    .line 713
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->adapter:Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->setData(Ljava/util/List;Lcom/bilibili/tv/ui/video/widget/VideoCardBinder;)V

    .line 715
    :cond_d
    return-void
.end method

.method public setFocusPosition(I)V
    .locals 0

    .prologue
    .line 1330
    iput p1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusPosition:I

    .line 1331
    return-void
.end method

.method public setInterceptCurrentVideoClick(Z)V
    .locals 0

    .prologue
    .line 756
    iput-boolean p1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->interceptCurrentVideoClick:Z

    .line 757
    return-void
.end method

.method public setNavTagSelectedPosition(I)V
    .locals 1

    .prologue
    .line 1453
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    if-eqz v0, :cond_9

    .line 1454
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    invoke-virtual {v0, p1}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->setSelectedPosition(I)V

    .line 1456
    :cond_9
    return-void
.end method

.method public setOnFocusExitListener(Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnFocusExitListener;)V
    .locals 0

    .prologue
    .line 1625
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusExitListener:Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnFocusExitListener;

    .line 1626
    return-void
.end method

.method public setOnNavTagClickListener(Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnNavTagClickListener;)V
    .locals 0

    .prologue
    .line 1375
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagClickListener:Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnNavTagClickListener;

    .line 1376
    return-void
.end method

.method public setOnNavTagFocusListener(Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnNavTagFocusListener;)V
    .locals 0

    .prologue
    .line 1371
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagFocusListener:Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnNavTagFocusListener;

    .line 1372
    return-void
.end method

.method public setOnNavTagScrollListener(Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnNavTagScrollListener;)V
    .locals 0

    .prologue
    .line 1629
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagScrollListener:Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnNavTagScrollListener;

    .line 1630
    return-void
.end method

.method public setOnVideoCardClickListener(Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnVideoCardClickListener;)V
    .locals 0

    .prologue
    .line 1621
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->videoCardClickListener:Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnVideoCardClickListener;

    .line 1622
    return-void
.end method

.method public setOnVideoClickListener(Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnVideoClickListener;)V
    .locals 0

    .prologue
    .line 1367
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->videoClickListener:Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnVideoClickListener;

    .line 1368
    return-void
.end method

.method public setSectionId(I)V
    .locals 0

    .prologue
    .line 1338
    iput p1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->sectionId:I

    .line 1339
    return-void
.end method

.method public setShowIndexBadge(Z)V
    .locals 1

    .prologue
    .line 718
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->adapter:Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;

    if-eqz v0, :cond_9

    .line 719
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->adapter:Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;

    invoke-virtual {v0, p1}, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->setShowIndexBadge(Z)V

    .line 721
    :cond_9
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 698
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->titleView:Landroid/widget/TextView;

    if-eqz v0, :cond_b

    if-eqz p1, :cond_b

    .line 699
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->titleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 701
    :cond_b
    return-void
.end method

.method public setTitle(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 691
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 692
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->titleView:Landroid/widget/TextView;

    if-eqz v1, :cond_28

    if-eqz p1, :cond_28

    .line 693
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->titleView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 695
    :cond_28
    return-void
.end method

.method public setupBottomMenuFocusBoundary()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 1533
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setSoundEffectsEnabled(Z)V

    .line 1534
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$e;)V

    .line 1535
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setOverScrollMode(I)V

    .line 1537
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_25

    .line 1538
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setSoundEffectsEnabled(Z)V

    .line 1539
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$e;)V

    .line 1540
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setOverScrollMode(I)V

    .line 1542
    :cond_25
    return-void
.end method

.method public setupCustomNavigationTags(Ljava/util/List;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter$TagItem;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 1403
    iput p2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->groupSize:I

    .line 1404
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    if-nez v0, :cond_b

    .line 1416
    :cond_a
    :goto_a
    return-void

    .line 1408
    :cond_b
    if-eqz p1, :cond_25

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_25

    .line 1409
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->setCustomTags(Ljava/util/List;I)V

    .line 1410
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 1411
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    goto :goto_a

    .line 1414
    :cond_25
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    goto :goto_a
.end method

.method public setupNavigationTags(I)V
    .locals 1

    .prologue
    .line 1379
    const/16 v0, 0xa

    invoke-virtual {p0, p1, v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setupNavigationTags(II)V

    .line 1380
    return-void
.end method

.method public setupNavigationTags(II)V
    .locals 1

    .prologue
    .line 1383
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setupNavigationTags(IILcom/bilibili/tv/ui/video/widget/NavigationTagBinder;)V

    .line 1384
    return-void
.end method

.method public setupNavigationTags(IILcom/bilibili/tv/ui/video/widget/NavigationTagBinder;)V
    .locals 2

    .prologue
    .line 1387
    iput p2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->groupSize:I

    .line 1388
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    if-nez v0, :cond_b

    .line 1400
    :cond_a
    :goto_a
    return-void

    .line 1392
    :cond_b
    if-le p1, p2, :cond_1e

    .line 1393
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->setTags(IILcom/bilibili/tv/ui/video/widget/NavigationTagBinder;)V

    .line 1394
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 1395
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    goto :goto_a

    .line 1398
    :cond_1e
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    goto :goto_a
.end method

.method public syncAdapterCurrentState()V
    .locals 4

    .prologue
    .line 735
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->adapter:Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;

    if-eqz v0, :cond_20

    .line 736
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->adapter:Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;

    iget-wide v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->currentVideoId:J

    invoke-virtual {v0, v2, v3}, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->setCurrentVideoId(J)V

    .line 737
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->adapter:Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;

    iget-wide v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->currentCid:J

    invoke-virtual {v0, v2, v3}, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->setCurrentCid(J)V

    .line 738
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->adapter:Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;

    iget v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->currentSeasonId:I

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->setCurrentSeasonId(I)V

    .line 739
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->adapter:Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;

    iget-wide v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->currentPlayingCid:J

    invoke-virtual {v0, v2, v3}, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->setCurrentPlayingCid(J)V

    .line 741
    :cond_20
    return-void
.end method

.method public updateNavTagSelection(I)V
    .locals 2

    .prologue
    .line 1423
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1433
    :cond_c
    :goto_c
    return-void

    .line 1427
    :cond_d
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    invoke-virtual {v0, p1}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->getGroupIndexForVideoPosition(I)I

    move-result v0

    .line 1429
    if-ltz v0, :cond_c

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    invoke-virtual {v1}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->getTagCount()I

    move-result v1

    if-ge v0, v1, :cond_c

    .line 1430
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    invoke-virtual {v1, v0}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->setSelectedPosition(I)V

    .line 1431
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    invoke-virtual {v1, v0}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->scrollToPositionWithOffset(I)V

    goto :goto_c
.end method
