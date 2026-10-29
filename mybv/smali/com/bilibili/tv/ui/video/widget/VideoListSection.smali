.class public Lcom/bilibili/tv/ui/video/widget/VideoListSection;
.super Landroid/widget/LinearLayout;
.source "VideoListSection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnNavTagClickListener;,
        Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnNavTagFocusListener;,
        Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnItemFocusedListener;,
        Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnVideoClickListener;,
        Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnNavTagScrollListener;,
        Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnFocusExitListener;,
        Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnVideoCardClickListener;
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

.field private itemFocusedListener:Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnItemFocusedListener;

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

    .line 342
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 77
    iput v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->sectionId:I

    .line 78
    iput v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusPosition:I

    .line 79
    const/16 v0, 0xa

    iput v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->groupSize:I

    .line 80
    iput-wide v4, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->currentVideoId:J

    .line 81
    iput-wide v4, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->currentCid:J

    .line 82
    iput-wide v4, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->currentPlayingCid:J

    .line 83
    iput-boolean v6, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->interceptCurrentVideoClick:Z

    .line 84
    iput v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->currentSeasonId:I

    .line 92
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->manualFocusRequested:Z

    .line 93
    iput v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->savedVideoFocusPosition:I

    .line 94
    iput v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->savedTagFocusPosition:I

    .line 95
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->isRestoringFocus:Z

    .line 101
    iput v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->currentFocusArea:I

    .line 102
    iput v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->lastNavTagVideoStart:I

    .line 103
    iput v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusRestoreRetryCount:I

    .line 106
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusRedirecting:Z

    .line 107
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->lockFocusPosition:Z

    .line 110
    iput-object v3, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->pendingVideoScrollRunnable:Ljava/lang/Runnable;

    .line 111
    iput-object v3, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->pendingNavTagScrollRunnable:Ljava/lang/Runnable;

    .line 115
    iput-object v3, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagScrollEndRunnable:Ljava/lang/Runnable;

    .line 343
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0a008f

    invoke-virtual {v0, v1, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 344
    invoke-direct {p0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->initViews()V

    .line 345
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

    .line 348
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 77
    iput v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->sectionId:I

    .line 78
    iput v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusPosition:I

    .line 79
    const/16 v0, 0xa

    iput v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->groupSize:I

    .line 80
    iput-wide v4, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->currentVideoId:J

    .line 81
    iput-wide v4, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->currentCid:J

    .line 82
    iput-wide v4, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->currentPlayingCid:J

    .line 83
    iput-boolean v6, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->interceptCurrentVideoClick:Z

    .line 84
    iput v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->currentSeasonId:I

    .line 92
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->manualFocusRequested:Z

    .line 93
    iput v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->savedVideoFocusPosition:I

    .line 94
    iput v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->savedTagFocusPosition:I

    .line 95
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->isRestoringFocus:Z

    .line 101
    iput v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->currentFocusArea:I

    .line 102
    iput v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->lastNavTagVideoStart:I

    .line 103
    iput v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusRestoreRetryCount:I

    .line 106
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusRedirecting:Z

    .line 107
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->lockFocusPosition:Z

    .line 110
    iput-object v3, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->pendingVideoScrollRunnable:Ljava/lang/Runnable;

    .line 111
    iput-object v3, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->pendingNavTagScrollRunnable:Ljava/lang/Runnable;

    .line 115
    iput-object v3, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagScrollEndRunnable:Ljava/lang/Runnable;

    .line 349
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0a008f

    invoke-virtual {v0, v1, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 350
    invoke-direct {p0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->initViews()V

    .line 351
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

    .line 354
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 77
    iput v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->sectionId:I

    .line 78
    iput v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusPosition:I

    .line 79
    const/16 v0, 0xa

    iput v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->groupSize:I

    .line 80
    iput-wide v4, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->currentVideoId:J

    .line 81
    iput-wide v4, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->currentCid:J

    .line 82
    iput-wide v4, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->currentPlayingCid:J

    .line 83
    iput-boolean v6, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->interceptCurrentVideoClick:Z

    .line 84
    iput v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->currentSeasonId:I

    .line 92
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->manualFocusRequested:Z

    .line 93
    iput v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->savedVideoFocusPosition:I

    .line 94
    iput v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->savedTagFocusPosition:I

    .line 95
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->isRestoringFocus:Z

    .line 101
    iput v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->currentFocusArea:I

    .line 102
    iput v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->lastNavTagVideoStart:I

    .line 103
    iput v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusRestoreRetryCount:I

    .line 106
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusRedirecting:Z

    .line 107
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->lockFocusPosition:Z

    .line 110
    iput-object v3, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->pendingVideoScrollRunnable:Ljava/lang/Runnable;

    .line 111
    iput-object v3, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->pendingNavTagScrollRunnable:Ljava/lang/Runnable;

    .line 115
    iput-object v3, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagScrollEndRunnable:Ljava/lang/Runnable;

    .line 355
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0a008f

    invoke-virtual {v0, v1, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 356
    invoke-direct {p0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->initViews()V

    .line 357
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

.method static synthetic access$1400(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnItemFocusedListener;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->itemFocusedListener:Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnItemFocusedListener;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)Z
    .locals 1

    .prologue
    .line 16
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->lockFocusPosition:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/bilibili/tv/ui/video/widget/VideoListSection;Z)Z
    .locals 0

    .prologue
    .line 16
    iput-boolean p1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->lockFocusPosition:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)I
    .locals 1

    .prologue
    .line 16
    iget v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->currentFocusArea:I

    return v0
.end method

.method static synthetic access$1602(Lcom/bilibili/tv/ui/video/widget/VideoListSection;I)I
    .locals 0

    .prologue
    .line 16
    iput p1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->currentFocusArea:I

    return p1
.end method

.method static synthetic access$1700(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)Z
    .locals 1

    .prologue
    .line 16
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->manualFocusRequested:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/bilibili/tv/ui/video/widget/VideoListSection;Z)Z
    .locals 0

    .prologue
    .line 16
    iput-boolean p1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->manualFocusRequested:Z

    return p1
.end method

.method static synthetic access$1802(Lcom/bilibili/tv/ui/video/widget/VideoListSection;I)I
    .locals 0

    .prologue
    .line 16
    iput p1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusRestoreRetryCount:I

    return p1
.end method

.method static synthetic access$1900(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnNavTagFocusListener;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagFocusListener:Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnNavTagFocusListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)Landroid/support/v7/widget/RecyclerView;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)I
    .locals 1

    .prologue
    .line 16
    iget v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->sectionId:I

    return v0
.end method

.method static synthetic access$2100(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->restoreFocusFromNavTag()V

    return-void
.end method

.method static synthetic access$2200(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->restoreFocusFromExternal()V

    return-void
.end method

.method static synthetic access$2300(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->saveCurrentFocusFromRecyclerView()V

    return-void
.end method

.method static synthetic access$2402(Lcom/bilibili/tv/ui/video/widget/VideoListSection;I)I
    .locals 0

    .prologue
    .line 16
    iput p1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->lastNavTagVideoStart:I

    return p1
.end method

.method static synthetic access$2500(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)Landroid/support/v7/widget/RecyclerView;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagRecyclerView:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/bilibili/tv/ui/video/widget/VideoListSection;I)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->scrollToDataPositionOnly(I)V

    return-void
.end method

.method static synthetic access$2700(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnNavTagClickListener;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagClickListener:Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnNavTagClickListener;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->restoreNavTagFromVideo()V

    return-void
.end method

.method static synthetic access$2902(Lcom/bilibili/tv/ui/video/widget/VideoListSection;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .prologue
    .line 16
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->pendingVideoScrollRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$300(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)I
    .locals 1

    .prologue
    .line 16
    iget v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusPosition:I

    return v0
.end method

.method static synthetic access$3000(Lcom/bilibili/tv/ui/video/widget/VideoListSection;I)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->restoreFocusWithRetry(I)V

    return-void
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

    .line 1362
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_6

    .line 1368
    :cond_5
    return v2

    .line 1363
    :cond_6
    const/4 v0, 0x0

    :goto_7
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 1364
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eq v1, p1, :cond_5

    .line 1363
    add-int/lit8 v0, v0, 0x1

    goto :goto_7
.end method

.method private findViewByDataPosition(I)Landroid/view/View;
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1281
    :try_start_2
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$h;

    move-result-object v0

    .line 1282
    if-nez v0, :cond_c

    move-object v0, v1

    .line 1298
    :cond_b
    :goto_b
    return-object v0

    .line 1286
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

    .line 1287
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1289
    if-eqz v0, :cond_44

    .line 1290
    :goto_30
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_44

    .line 1291
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_3d} :catch_43

    move-result-object v3

    if-eq v3, v0, :cond_b

    .line 1290
    add-int/lit8 v2, v2, 0x1

    goto :goto_30

    .line 1296
    :catch_43
    move-exception v0

    :cond_44
    move-object v0, v1

    .line 1298
    goto :goto_b
.end method

.method private getViewPosition(Landroid/view/View;)I
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 693
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_7

    if-nez p1, :cond_9

    :cond_7
    move v0, v1

    .line 699
    :cond_8
    :goto_8
    return v0

    .line 694
    :cond_9
    const/4 v0, 0x0

    :goto_a
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1d

    .line 695
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eq v2, p1, :cond_8

    .line 694
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_1d
    move v0, v1

    .line 699
    goto :goto_8
.end method

.method private initNavigationTags()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 528
    const v0, 0x7f0801d6

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 529
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_11

    .line 690
    :goto_10
    return-void

    .line 533
    :cond_11
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/bilibili/tv/widget/FixLinearLayoutManager;

    invoke-virtual {p0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v3, v3}, Lcom/bilibili/tv/widget/FixLinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$h;)V

    .line 534
    new-instance v0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    invoke-direct {v0}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    .line 535
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 536
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->attachRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 538
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    new-instance v1, Lcom/bilibili/tv/ui/video/widget/VideoListSection$9;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection$9;-><init>(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)V

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->setFocusBoundaryHandler(Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter$FocusBoundaryHandler;)V

    .line 562
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    new-instance v1, Lcom/bilibili/tv/ui/video/widget/VideoListSection$10;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection$10;-><init>(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)V

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->setOnTagFocusListener(Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter$OnTagFocusListener;)V

    .line 646
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    new-instance v1, Lcom/bilibili/tv/ui/video/widget/VideoListSection$11;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection$11;-><init>(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)V

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->setOnTagClickListener(Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter$OnTagClickListener;)V

    .line 665
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

    .line 360
    const v0, 0x7f0801a4

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->titleView:Landroid/widget/TextView;

    .line 361
    invoke-virtual {p0, v2}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 362
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_1c

    .line 525
    :goto_1b
    return-void

    .line 366
    :cond_1c
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setFocusable(Z)V

    .line 368
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setNextFocusLeftId(I)V

    .line 369
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setNextFocusRightId(I)V

    .line 372
    new-instance v0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;

    invoke-virtual {p0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->adapter:Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;

    .line 374
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->adapter:Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;

    new-instance v1, Lcom/bilibili/tv/ui/video/widget/VideoListSection$5;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection$5;-><init>(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)V

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->setFocusBoundaryHandler(Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter$FocusBoundaryHandler;)V

    .line 396
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->adapter:Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;

    new-instance v1, Lcom/bilibili/tv/ui/video/widget/VideoListSection$6;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection$6;-><init>(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)V

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->setOnItemClickListener(Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter$OnItemClickListener;)V

    .line 425
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->adapter:Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;

    new-instance v1, Lcom/bilibili/tv/ui/video/widget/VideoListSection$7;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection$7;-><init>(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)V

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->setOnItemFocusListener(Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter$OnItemFocusListener;)V

    .line 485
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/bilibili/tv/widget/FixLinearLayoutManager;

    invoke-virtual {p0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v3, v3}, Lcom/bilibili/tv/widget/FixLinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$h;)V

    .line 486
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->adapter:Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 488
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/bilibili/tv/ui/video/widget/VideoListSection$8;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection$8;-><init>(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 524
    invoke-direct {p0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->initNavigationTags()V

    goto :goto_1b
.end method

.method private isViewFullyVisible(Landroid/view/View;)Z
    .locals 6

    .prologue
    const/4 v2, 0x2

    const/4 v0, 0x0

    .line 703
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v1, :cond_8

    if-nez p1, :cond_9

    .line 715
    :cond_8
    :goto_8
    return v0

    .line 704
    :cond_9
    new-array v1, v2, [I

    .line 705
    new-array v2, v2, [I

    .line 706
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 707
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/RecyclerView;->getLocationOnScreen([I)V

    .line 709
    aget v3, v2, v0

    .line 710
    aget v2, v2, v0

    iget-object v4, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v4

    add-int/2addr v2, v4

    .line 711
    aget v4, v1, v0

    .line 712
    aget v1, v1, v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v1, v5

    .line 714
    if-lt v4, v3, :cond_8

    if-gt v1, v2, :cond_8

    const/4 v0, 0x1

    goto :goto_8
.end method

.method private restoreFocusFromExternal()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1132
    invoke-direct {p0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->restoreFocusPositionInternal()Landroid/view/View;

    move-result-object v0

    .line 1133
    if-eqz v0, :cond_d

    .line 1135
    iput-boolean v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->manualFocusRequested:Z

    .line 1136
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 1144
    :cond_c
    :goto_c
    return-void

    .line 1137
    :cond_d
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_c

    .line 1139
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1140
    iput-boolean v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->manualFocusRequested:Z

    .line 1141
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto :goto_c
.end method

.method private restoreFocusFromNavTag()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 1096
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->dataList:Ljava/util/List;

    if-nez v0, :cond_a

    move v2, v3

    .line 1097
    :goto_7
    if-nez v2, :cond_12

    .line 1126
    :goto_9
    return-void

    .line 1096
    :cond_a
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->dataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v2, v0

    goto :goto_7

    .line 1101
    :cond_12
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->getSelectedPosition()I

    move-result v4

    .line 1102
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    invoke-virtual {v0, v4}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->getItemRange(I)[I

    move-result-object v0

    .line 1106
    if-eqz v0, :cond_a1

    .line 1107
    aget v1, v0, v3

    .line 1108
    aget v5, v0, v7

    const v6, 0x7fffffff

    if-ne v5, v6, :cond_98

    add-int/lit8 v0, v2, -0x1

    .line 1114
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

    .line 1117
    iget v4, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusPosition:I

    if-lt v4, v1, :cond_6d

    iget v4, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusPosition:I

    if-gt v4, v0, :cond_6d

    .line 1118
    iget v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusPosition:I

    .line 1120
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

    .line 1122
    add-int/lit8 v0, v2, -0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1123
    iput v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusPosition:I

    .line 1124
    iput v3, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusRestoreRetryCount:I

    .line 1125
    invoke-direct {p0, v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->restoreFocusWithRetry(I)V

    goto/16 :goto_9

    .line 1108
    :cond_98
    aget v0, v0, v7

    add-int/lit8 v5, v2, -0x1

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_2b

    .line 1110
    :cond_a1
    iget v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->lastNavTagVideoStart:I

    .line 1111
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

    .line 1249
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    if-nez v1, :cond_7

    .line 1276
    :cond_6
    :goto_6
    return-object v0

    .line 1253
    :cond_7
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->dataList:Ljava/util/List;

    if-nez v1, :cond_2a

    move v1, v2

    .line 1254
    :goto_c
    if-eqz v1, :cond_6

    .line 1258
    iget v3, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusPosition:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1259
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1261
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v3

    .line 1262
    if-eqz v3, :cond_6

    .line 1266
    invoke-direct {p0, v1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->findViewByDataPosition(I)Landroid/view/View;

    move-result-object v1

    .line 1267
    if-eqz v1, :cond_31

    move-object v0, v1

    .line 1268
    goto :goto_6

    .line 1253
    :cond_2a
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->dataList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_c

    .line 1271
    :cond_31
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1272
    if-eqz v1, :cond_6

    move-object v0, v1

    .line 1273
    goto :goto_6
.end method

.method private restoreFocusWithRetry(I)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1190
    iget v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusRestoreRetryCount:I

    const/4 v1, 0x5

    if-le v0, v1, :cond_21

    .line 1193
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1e

    .line 1194
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1195
    iput-boolean v3, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->manualFocusRequested:Z

    .line 1196
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 1198
    :cond_1e
    iput v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusRestoreRetryCount:I

    .line 1221
    :goto_20
    return-void

    .line 1203
    :cond_21
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->findViewByDataPosition(I)Landroid/view/View;

    move-result-object v0

    .line 1204
    if-eqz v0, :cond_2f

    .line 1206
    iput-boolean v3, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->manualFocusRequested:Z

    .line 1207
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 1208
    iput v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusRestoreRetryCount:I

    goto :goto_20

    .line 1212
    :cond_2f
    iget v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusRestoreRetryCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusRestoreRetryCount:I

    .line 1213
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
    .line 1150
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1182
    :cond_c
    :goto_c
    return-void

    .line 1155
    :cond_d
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    iget v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusPosition:I

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->getGroupIndexForVideoPosition(I)I

    move-result v0

    .line 1158
    if-ltz v0, :cond_c

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    invoke-virtual {v1}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->getTagCount()I

    move-result v1

    if-ge v0, v1, :cond_c

    .line 1159
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    invoke-virtual {v1, v0}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->setSelectedPosition(I)V

    .line 1160
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    invoke-virtual {v1, v0}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->scrollToPositionWithOffset(I)V

    .line 1163
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    invoke-virtual {v1, v0}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->findViewByPosition(I)Landroid/view/View;

    move-result-object v1

    .line 1164
    if-eqz v1, :cond_35

    .line 1166
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    goto :goto_c

    .line 1170
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
    .line 1323
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_5

    .line 1336
    :cond_4
    :goto_4
    return-void

    .line 1324
    :cond_5
    const/4 v0, 0x0

    :goto_6
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 1325
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1326
    if-eqz v1, :cond_28

    invoke-virtual {v1}, Landroid/view/View;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_28

    .line 1327
    invoke-virtual {p0, v1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->getDataPositionForView(Landroid/view/View;)I

    move-result v1

    .line 1328
    if-ltz v1, :cond_25

    .line 1329
    iput v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusPosition:I

    goto :goto_4

    .line 1331
    :cond_25
    iput v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusPosition:I

    goto :goto_4

    .line 1324
    :cond_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_6
.end method

.method private saveFocusPositionByIndex(I)V
    .locals 0

    .prologue
    .line 1319
    iput p1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusPosition:I

    .line 1320
    return-void
.end method

.method private scrollToDataPositionAtFirstPosition(I)V
    .locals 2

    .prologue
    .line 958
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->dataList:Ljava/util/List;

    if-nez v0, :cond_9

    .line 991
    :cond_8
    :goto_8
    return-void

    .line 962
    :cond_9
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->dataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 963
    if-ltz p1, :cond_8

    if-ge p1, v0, :cond_8

    .line 968
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/bilibili/tv/ui/video/widget/VideoListSection$15;

    invoke-direct {v1, p0, p1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection$15;-><init>(Lcom/bilibili/tv/ui/video/widget/VideoListSection;I)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    goto :goto_8
.end method

.method private scrollToDataPositionOnly(I)V
    .locals 4

    .prologue
    .line 1040
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_5

    .line 1093
    :goto_4
    return-void

    .line 1045
    :cond_5
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->dataList:Ljava/util/List;

    if-nez v0, :cond_31

    const/4 v0, 0x0

    .line 1046
    :goto_a
    if-ltz p1, :cond_e

    if-lt p1, v0, :cond_38

    .line 1047
    :cond_e
    const-string v1, "ShotPerf"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[scroll-skip] pos="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " | dataSize="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1045
    :cond_31
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->dataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_a

    .line 1053
    :cond_38
    iput p1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusPosition:I

    .line 1057
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->pendingVideoScrollRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_60

    .line 1058
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->pendingVideoScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1059
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->pendingVideoScrollRunnable:Ljava/lang/Runnable;

    .line 1060
    const-string v1, "ShotPerf"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[scroll-cancel] pos="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1064
    :cond_60
    new-instance v1, Lcom/bilibili/tv/ui/video/widget/VideoListSection$17;

    invoke-direct {v1, p0, p1, v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection$17;-><init>(Lcom/bilibili/tv/ui/video/widget/VideoListSection;II)V

    iput-object v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->pendingVideoScrollRunnable:Ljava/lang/Runnable;

    .line 1091
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->pendingVideoScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    goto :goto_4
.end method


# virtual methods
.method public cleanup()V
    .locals 1

    .prologue
    .line 1653
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->dataList:Ljava/util/List;

    if-eqz v0, :cond_9

    .line 1654
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->dataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1656
    :cond_9
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 10

    .prologue
    const/16 v8, 0x14

    const/16 v7, 0x13

    const/4 v6, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 119
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_12

    .line 120
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 338
    :goto_11
    return v0

    .line 123
    :cond_12
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    .line 126
    if-eq v4, v8, :cond_1a

    if-ne v4, v7, :cond_4c

    .line 127
    :cond_1a
    const-string v0, "VideoDetailFocus"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dispatchKeyEvent | keyCode="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", hasNavTags="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->hasNavigationTags()Z

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", focusArea="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->currentFocusArea:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :cond_4c
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->hasNavigationTags()Z

    move-result v0

    if-eqz v0, :cond_2af

    .line 133
    if-ne v4, v8, :cond_123

    iget v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->currentFocusArea:I

    if-ne v0, v2, :cond_123

    .line 134
    const-string v0, "NavTagFocusBug"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[dispatchKeyEvent DOWN] focusPosition="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusPosition:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " | navTagAdapter.getTagCount()="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    invoke-virtual {v3}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->getTagCount()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    iget v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusPosition:I

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->getGroupIndexForVideoPosition(I)I

    move-result v0

    .line 137
    const-string v1, "NavTagFocusBug"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[dispatchKeyEvent DOWN] calculated tagIndex="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    invoke-virtual {v1}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->getTagCount()I

    move-result v1

    if-lt v0, v1, :cond_ca

    .line 140
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->getTagCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 141
    const-string v1, "NavTagFocusBug"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[dispatchKeyEvent DOWN] tagIndex capped to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_ca
    iput-boolean v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusRedirecting:Z

    .line 145
    iput v6, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->currentFocusArea:I

    .line 147
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    invoke-virtual {v1, v0}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->getStartIndex(I)I

    move-result v1

    iput v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->lastNavTagVideoStart:I

    .line 148
    const-string v1, "NavTagFocusBug"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[dispatchKeyEvent DOWN] lastNavTagVideoStart="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->lastNavTagVideoStart:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " | will focus on tag["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    invoke-virtual {v1, v0}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->setSelectedPosition(I)V

    .line 151
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    invoke-virtual {v1, v0}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->scrollToPositionWithOffset(I)V

    .line 154
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    invoke-virtual {v1, v0}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->findViewByPosition(I)Landroid/view/View;

    move-result-object v1

    .line 155
    if-eqz v1, :cond_118

    .line 156
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    :goto_115
    move v0, v2

    .line 170
    goto/16 :goto_11

    .line 158
    :cond_118
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v3, Lcom/bilibili/tv/ui/video/widget/VideoListSection$1;

    invoke-direct {v3, p0, v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection$1;-><init>(Lcom/bilibili/tv/ui/video/widget/VideoListSection;I)V

    invoke-virtual {v1, v3}, Landroid/support/v7/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    goto :goto_115

    .line 174
    :cond_123
    if-ne v4, v7, :cond_15e

    iget v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->currentFocusArea:I

    if-ne v0, v6, :cond_15e

    .line 176
    iget v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusPosition:I

    .line 177
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->dataList:Ljava/util/List;

    if-nez v3, :cond_14c

    move v3, v1

    .line 178
    :goto_130
    if-lez v3, :cond_13c

    .line 179
    add-int/lit8 v3, v3, -0x1

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 182
    :cond_13c
    iput v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->currentFocusArea:I

    .line 184
    invoke-direct {p0, v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->findViewByDataPosition(I)Landroid/view/View;

    move-result-object v1

    .line 185
    if-eqz v1, :cond_153

    .line 186
    iput-boolean v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusRedirecting:Z

    .line 187
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    :goto_149
    move v0, v2

    .line 218
    goto/16 :goto_11

    .line 177
    :cond_14c
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->dataList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    goto :goto_130

    .line 190
    :cond_153
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v3, Lcom/bilibili/tv/ui/video/widget/VideoListSection$2;

    invoke-direct {v3, p0, v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection$2;-><init>(Lcom/bilibili/tv/ui/video/widget/VideoListSection;I)V

    invoke-virtual {v1, v3}, Landroid/support/v7/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    goto :goto_149

    .line 222
    :cond_15e
    if-ne v4, v7, :cond_174

    iget v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->currentFocusArea:I

    if-ne v0, v2, :cond_174

    .line 224
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusExitListener:Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnFocusExitListener;

    if-eqz v0, :cond_171

    .line 225
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusExitListener:Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnFocusExitListener;

    iget v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->sectionId:I

    iget v3, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusPosition:I

    invoke-interface {v0, v1, v3}, Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnFocusExitListener;->onFocusExitUp(II)V

    :cond_171
    move v0, v2

    .line 228
    goto/16 :goto_11

    .line 232
    :cond_174
    if-ne v4, v8, :cond_1a8

    iget v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->currentFocusArea:I

    if-ne v0, v6, :cond_1a8

    .line 233
    const-string v0, "VideoDetailFocus"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dispatchKeyEvent | NAV_TAG\u2192DOWN \u2192 \u7126\u70b9\u79bb\u5f00\u7ec4\u4ef6, focusExitListener="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusExitListener:Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnFocusExitListener;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusExitListener:Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnFocusExitListener;

    if-eqz v0, :cond_1a5

    .line 235
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusExitListener:Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnFocusExitListener;

    iget v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->sectionId:I

    iget-object v3, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    invoke-virtual {v3}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->getSelectedPosition()I

    move-result v3

    invoke-interface {v0, v1, v3}, Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnFocusExitListener;->onFocusExitDown(II)V

    :cond_1a5
    move v0, v2

    .line 238
    goto/16 :goto_11

    .line 242
    :cond_1a8
    iget v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->currentFocusArea:I

    if-ne v0, v6, :cond_2d6

    .line 243
    const/16 v0, 0x15

    if-eq v4, v0, :cond_1b4

    const/16 v0, 0x16

    if-ne v4, v0, :cond_2d6

    .line 245
    :cond_1b4
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->getSelectedPosition()I

    move-result v5

    .line 246
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->getTagCount()I

    move-result v6

    .line 249
    const/16 v0, 0x15

    if-ne v4, v0, :cond_288

    .line 250
    add-int/lit8 v0, v5, -0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v3, v0

    .line 255
    :goto_1cb
    if-eq v3, v5, :cond_285

    .line 256
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagScrollListener:Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnNavTagScrollListener;

    if-eqz v0, :cond_1d6

    .line 257
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagScrollListener:Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnNavTagScrollListener;

    invoke-interface {v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnNavTagScrollListener;->onNavTagScrollStart()V

    .line 260
    :cond_1d6
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagScrollEndRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1df

    .line 261
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagScrollEndRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 264
    :cond_1df
    iput-boolean v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusRedirecting:Z

    .line 265
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->setSelectedPosition(I)V

    .line 267
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->getStartIndex(I)I

    move-result v7

    .line 268
    iput v7, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->lastNavTagVideoStart:I

    .line 270
    const-string v0, "VideoDetailFocus"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "dispatchKeyEvent | NAV_TAG\u2192LEFT/RIGHT | targetTagIndex="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " -> lastNavTagVideoStart="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->lastNavTagVideoStart:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    const-string v8, "ShotPerf"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[nav-key] "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v0, 0x15

    if-ne v4, v0, :cond_293

    const-string v0, "LEFT"

    :goto_225
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " | tag="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "->"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " | tagCount="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " | videoStart="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " | dataSize="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 276
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->dataList:Ljava/util/List;

    if-nez v0, :cond_296

    move v0, v1

    :goto_25c
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 272
    invoke-static {v8, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    invoke-direct {p0, v7}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->scrollToDataPositionOnly(I)V

    .line 280
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    .line 281
    if-eqz v0, :cond_29d

    .line 282
    iput-boolean v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusRedirecting:Z

    .line 283
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 298
    :goto_277
    new-instance v0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$4;

    invoke-direct {v0, p0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection$4;-><init>(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)V

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagScrollEndRunnable:Ljava/lang/Runnable;

    .line 307
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagScrollEndRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x96

    invoke-virtual {p0, v0, v4, v5}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_285
    move v0, v2

    .line 310
    goto/16 :goto_11

    .line 252
    :cond_288
    add-int/lit8 v0, v6, -0x1

    add-int/lit8 v3, v5, 0x1

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    move v3, v0

    goto/16 :goto_1cb

    .line 272
    :cond_293
    const-string v0, "RIGHT"

    goto :goto_225

    .line 276
    :cond_296
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->dataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_25c

    .line 285
    :cond_29d
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->scrollToPosition(I)V

    .line 286
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/bilibili/tv/ui/video/widget/VideoListSection$3;

    invoke-direct {v1, p0, v3}, Lcom/bilibili/tv/ui/video/widget/VideoListSection$3;-><init>(Lcom/bilibili/tv/ui/video/widget/VideoListSection;I)V

    const-wide/16 v4, 0x64

    invoke-virtual {v0, v1, v4, v5}, Landroid/support/v7/widget/RecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_277

    .line 319
    :cond_2af
    iget v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->currentFocusArea:I

    if-ne v0, v2, :cond_2d6

    .line 320
    if-ne v4, v7, :cond_2c5

    .line 322
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusExitListener:Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnFocusExitListener;

    if-eqz v0, :cond_2c2

    .line 323
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusExitListener:Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnFocusExitListener;

    iget v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->sectionId:I

    iget v3, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusPosition:I

    invoke-interface {v0, v1, v3}, Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnFocusExitListener;->onFocusExitUp(II)V

    :cond_2c2
    move v0, v2

    .line 325
    goto/16 :goto_11

    .line 327
    :cond_2c5
    if-ne v4, v8, :cond_2d6

    .line 329
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusExitListener:Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnFocusExitListener;

    if-eqz v0, :cond_2d3

    .line 330
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusExitListener:Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnFocusExitListener;

    iget v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->sectionId:I

    const/4 v3, -0x1

    invoke-interface {v0, v1, v3}, Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnFocusExitListener;->onFocusExitDown(II)V

    :cond_2d3
    move v0, v2

    .line 332
    goto/16 :goto_11

    .line 338
    :cond_2d6
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto/16 :goto_11
.end method

.method public focusNavTag(I)V
    .locals 1

    .prologue
    .line 1614
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_9

    .line 1630
    :cond_8
    :goto_8
    return-void

    .line 1617
    :cond_9
    if-ltz p1, :cond_8

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->getTagCount()I

    move-result v0

    if-ge p1, v0, :cond_8

    .line 1621
    const/4 v0, 0x2

    iput v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->currentFocusArea:I

    .line 1622
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    invoke-virtual {v0, p1}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->getStartIndex(I)I

    move-result v0

    iput v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->lastNavTagVideoStart:I

    .line 1623
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    invoke-virtual {v0, p1}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->setSelectedPosition(I)V

    .line 1624
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    invoke-virtual {v0, p1}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->scrollToPositionWithOffset(I)V

    .line 1626
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    invoke-virtual {v0, p1}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    .line 1627
    if-eqz v0, :cond_8

    .line 1628
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto :goto_8
.end method

.method public getAdapter()Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;
    .locals 1

    .prologue
    .line 1396
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->adapter:Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;

    return-object v0
.end method

.method public getBinder()Lcom/bilibili/tv/ui/video/widget/VideoCardBinder;
    .locals 1

    .prologue
    .line 1409
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->binder:Lcom/bilibili/tv/ui/video/widget/VideoCardBinder;

    return-object v0
.end method

.method public getCurrentCid()J
    .locals 2

    .prologue
    .line 790
    iget-wide v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->currentCid:J

    return-wide v0
.end method

.method public getCurrentItemMatcher()Lcom/bilibili/tv/ui/video/widget/CurrentItemMatcher;
    .locals 1

    .prologue
    .line 810
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->currentItemMatcher:Lcom/bilibili/tv/ui/video/widget/CurrentItemMatcher;

    return-object v0
.end method

.method public getCurrentPlayingCid()J
    .locals 2

    .prologue
    .line 769
    iget-wide v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->currentPlayingCid:J

    return-wide v0
.end method

.method public getCurrentSeasonId()I
    .locals 1

    .prologue
    .line 802
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
    .line 1405
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->dataList:Ljava/util/List;

    return-object v0
.end method

.method public getDataPositionForView(Landroid/view/View;)I
    .locals 3

    .prologue
    .line 1343
    if-eqz p1, :cond_a

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->dataList:Ljava/util/List;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->adapter:Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;

    if-nez v0, :cond_c

    .line 1344
    :cond_a
    const/4 v0, -0x1

    .line 1358
    :cond_b
    :goto_b
    return v0

    .line 1347
    :cond_c
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 1348
    if-nez v1, :cond_17

    .line 1349
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->findPositionByTraversal(Landroid/view/View;)I

    move-result v0

    goto :goto_b

    .line 1352
    :cond_17
    const/4 v0, 0x0

    :goto_18
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->dataList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2b

    .line 1353
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->dataList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, v1, :cond_b

    .line 1352
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 1358
    :cond_2b
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->findPositionByTraversal(Landroid/view/View;)I

    move-result v0

    goto :goto_b
.end method

.method public getDataSize()I
    .locals 1

    .prologue
    .line 1372
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
    .line 1339
    iget v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusPosition:I

    return v0
.end method

.method public getGroupSize()I
    .locals 1

    .prologue
    .line 1469
    iget v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->groupSize:I

    return v0
.end method

.method public getNavTagAdapter()Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;
    .locals 1

    .prologue
    .line 1520
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    return-object v0
.end method

.method public getNavTagIndexForPosition(I)I
    .locals 1

    .prologue
    .line 1607
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    if-nez v0, :cond_6

    .line 1608
    const/4 v0, -0x1

    .line 1610
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
    .line 1516
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagRecyclerView:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method public getNavTagSelectedPosition()I
    .locals 1

    .prologue
    .line 1486
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    if-nez v0, :cond_6

    .line 1487
    const/4 v0, -0x1

    .line 1489
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
    .line 1388
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method public getSectionId()I
    .locals 1

    .prologue
    .line 1380
    iget v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->sectionId:I

    return v0
.end method

.method public getTitleView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 1392
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->titleView:Landroid/widget/TextView;

    return-object v0
.end method

.method public hasData()Z
    .locals 1

    .prologue
    .line 1400
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->dataList:Ljava/util/List;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->dataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    .line 1401
    :goto_d
    return v0

    .line 1400
    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public hasNavigationTags()Z
    .locals 1

    .prologue
    .line 1509
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 1510
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    .line 1512
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a

    const/4 v0, 0x1

    .line 1509
    :goto_19
    return v0

    .line 1512
    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public hideTitle()V
    .locals 2

    .prologue
    .line 732
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->titleView:Landroid/widget/TextView;

    if-eqz v0, :cond_b

    .line 733
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->titleView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 735
    :cond_b
    return-void
.end method

.method public isDataLoaded()Z
    .locals 1

    .prologue
    .line 1603
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
    .line 1493
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
    .line 1665
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->videoCardClickListener:Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnVideoCardClickListener;

    if-eqz v0, :cond_9

    .line 1666
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->videoCardClickListener:Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnVideoCardClickListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnVideoCardClickListener;->onVideoCardClicked(JLcom/bilibili/tv/player/basic/context/ResolveResourceParams;)V

    .line 1668
    :cond_9
    return-void
.end method

.method public refreshVisibleItems()V
    .locals 1

    .prologue
    .line 1659
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->adapter:Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;

    if-eqz v0, :cond_9

    .line 1660
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->adapter:Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->d()V

    .line 1662
    :cond_9
    return-void
.end method

.method public requestFocusOnCurrentPosition()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 1641
    iput v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->currentFocusArea:I

    .line 1642
    iput-boolean v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->lockFocusPosition:Z

    .line 1643
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->requestFocusOnSavedPosition()Z

    .line 1644
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/bilibili/tv/ui/video/widget/VideoListSection$21;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection$21;-><init>(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v7/widget/RecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1650
    return-void
.end method

.method public requestFocusOnPosition(I)V
    .locals 0

    .prologue
    .line 1633
    if-gez p1, :cond_3

    .line 1638
    :goto_2
    return-void

    .line 1636
    :cond_3
    iput p1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusPosition:I

    .line 1637
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->requestFocusOnCurrentPosition()V

    goto :goto_2
.end method

.method public requestFocusOnSavedPosition()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1228
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->manualFocusRequested:Z

    .line 1229
    iput v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->currentFocusArea:I

    .line 1231
    invoke-direct {p0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->restoreFocusPositionInternal()Landroid/view/View;

    move-result-object v1

    .line 1232
    if-eqz v1, :cond_11

    .line 1233
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    move-result v0

    .line 1245
    :cond_10
    :goto_10
    return v0

    .line 1236
    :cond_11
    iget-boolean v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->lockFocusPosition:Z

    if-nez v1, :cond_10

    .line 1240
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_10

    .line 1241
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1242
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    move-result v0

    goto :goto_10
.end method

.method public restoreFocusPosition()Landroid/view/View;
    .locals 1

    .prologue
    .line 1224
    invoke-direct {p0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->restoreFocusPositionInternal()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public saveFocusPosition(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 1302
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_6

    if-nez p1, :cond_7

    .line 1316
    :cond_6
    :goto_6
    return-void

    .line 1305
    :cond_7
    const/4 v0, 0x0

    :goto_8
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_6

    .line 1306
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-ne v1, p1, :cond_24

    .line 1307
    invoke-virtual {p0, p1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->getDataPositionForView(Landroid/view/View;)I

    move-result v1

    .line 1308
    if-ltz v1, :cond_21

    .line 1309
    iput v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusPosition:I

    goto :goto_6

    .line 1311
    :cond_21
    iput v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusPosition:I

    goto :goto_6

    .line 1305
    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_8
.end method

.method public saveTagFocusPosition(I)V
    .locals 0

    .prologue
    .line 1599
    iput p1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->savedTagFocusPosition:I

    .line 1600
    return-void
.end method

.method public saveVideoFocusPosition(I)V
    .locals 0

    .prologue
    .line 1595
    iput p1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->savedVideoFocusPosition:I

    .line 1596
    return-void
.end method

.method public scrollNavTagToPosition(I)V
    .locals 1

    .prologue
    .line 1497
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    if-eqz v0, :cond_9

    .line 1498
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    invoke-virtual {v0, p1}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->scrollToPosition(I)V

    .line 1500
    :cond_9
    return-void
.end method

.method public scrollToCurrentItem()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 875
    const-string v3, "NavTagFocusBug"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[scrollToCurrentItem] called | recyclerView="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_5d

    move v0, v1

    :goto_14
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " | dataList="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->dataList:Ljava/util/List;

    if-eqz v0, :cond_5f

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->dataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_2c
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " | currentItemMatcher="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->currentItemMatcher:Lcom/bilibili/tv/ui/video/widget/CurrentItemMatcher;

    if-eqz v4, :cond_62

    :goto_3a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_55

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->dataList:Ljava/util/List;

    if-eqz v0, :cond_55

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->dataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_64

    .line 878
    :cond_55
    const-string v0, "NavTagFocusBug"

    const-string v1, "[scrollToCurrentItem] early return: recyclerView/dataList null or empty"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    :goto_5c
    return-void

    :cond_5d
    move v0, v2

    .line 875
    goto :goto_14

    :cond_5f
    const-string v0, "null"

    goto :goto_2c

    :cond_62
    move v1, v2

    goto :goto_3a

    .line 881
    :cond_64
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->currentItemMatcher:Lcom/bilibili/tv/ui/video/widget/CurrentItemMatcher;

    if-nez v0, :cond_70

    .line 882
    const-string v0, "NavTagFocusBug"

    const-string v1, "[scrollToCurrentItem] early return: currentItemMatcher null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5c

    .line 886
    :cond_70
    const/4 v0, -0x1

    .line 887
    :goto_71
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->dataList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_c7

    .line 888
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->currentItemMatcher:Lcom/bilibili/tv/ui/video/widget/CurrentItemMatcher;

    iget-object v3, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->dataList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3, v2}, Lcom/bilibili/tv/ui/video/widget/CurrentItemMatcher;->isCurrentItem(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_91

    .line 894
    :goto_87
    if-gez v2, :cond_94

    .line 895
    const-string v0, "NavTagFocusBug"

    const-string v1, "[scrollToCurrentItem] currentPosition < 0, return"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5c

    .line 887
    :cond_91
    add-int/lit8 v2, v2, 0x1

    goto :goto_71

    .line 899
    :cond_94
    const-string v0, "NavTagFocusBug"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[scrollToCurrentItem] currentPosition="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " | dataList.size()="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->dataList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/bilibili/tv/ui/video/widget/VideoListSection$14;

    invoke-direct {v1, p0, v2}, Lcom/bilibili/tv/ui/video/widget/VideoListSection$14;-><init>(Lcom/bilibili/tv/ui/video/widget/VideoListSection;I)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    goto :goto_5c

    :cond_c7
    move v2, v0

    goto :goto_87
.end method

.method public scrollToCurrentItemAtFirstPosition()V
    .locals 4

    .prologue
    .line 935
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->dataList:Ljava/util/List;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->dataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 955
    :cond_10
    :goto_10
    return-void

    .line 938
    :cond_11
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->currentItemMatcher:Lcom/bilibili/tv/ui/video/widget/CurrentItemMatcher;

    if-eqz v0, :cond_10

    .line 942
    const/4 v1, -0x1

    .line 943
    const/4 v0, 0x0

    :goto_17
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->dataList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_36

    .line 944
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->currentItemMatcher:Lcom/bilibili/tv/ui/video/widget/CurrentItemMatcher;

    iget-object v3, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->dataList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Lcom/bilibili/tv/ui/video/widget/CurrentItemMatcher;->isCurrentItem(Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 950
    :goto_2d
    if-ltz v0, :cond_10

    .line 954
    invoke-direct {p0, v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->scrollToDataPositionAtFirstPosition(I)V

    goto :goto_10

    .line 943
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

    .line 814
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_8

    .line 872
    :cond_7
    :goto_7
    return-void

    .line 817
    :cond_8
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->dataList:Ljava/util/List;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->dataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 820
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->binder:Lcom/bilibili/tv/ui/video/widget/VideoCardBinder;

    if-eqz v0, :cond_7

    .line 824
    const/4 v2, -0x1

    move v0, v1

    .line 825
    :goto_1a
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->dataList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_6a

    .line 826
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->dataList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 829
    iget-wide v6, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->currentCid:J

    cmp-long v3, v6, v8

    if-lez v3, :cond_67

    .line 830
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->binder:Lcom/bilibili/tv/ui/video/widget/VideoCardBinder;

    iget-wide v6, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->currentCid:J

    invoke-interface {v3, v5, v6, v7}, Lcom/bilibili/tv/ui/video/widget/VideoCardBinder;->isCurrentVideoByCid(Ljava/lang/Object;J)Z

    move-result v3

    .line 831
    const/4 v4, 0x1

    .line 833
    :goto_37
    if-nez v4, :cond_47

    iget-wide v6, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->currentVideoId:J

    cmp-long v4, v6, v8

    if-lez v4, :cond_47

    .line 834
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->binder:Lcom/bilibili/tv/ui/video/widget/VideoCardBinder;

    iget-wide v6, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->currentVideoId:J

    invoke-interface {v3, v5, v6, v7}, Lcom/bilibili/tv/ui/video/widget/VideoCardBinder;->isCurrentVideo(Ljava/lang/Object;J)Z

    move-result v3

    .line 836
    :cond_47
    if-nez v3, :cond_55

    iget v4, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->currentSeasonId:I

    if-lez v4, :cond_55

    .line 837
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->binder:Lcom/bilibili/tv/ui/video/widget/VideoCardBinder;

    iget v4, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->currentSeasonId:I

    invoke-interface {v3, v5, v4}, Lcom/bilibili/tv/ui/video/widget/VideoCardBinder;->isCurrentSeason(Ljava/lang/Object;I)Z

    move-result v3

    .line 839
    :cond_55
    if-eqz v3, :cond_64

    .line 845
    :goto_57
    if-ltz v0, :cond_7

    .line 850
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Lcom/bilibili/tv/ui/video/widget/VideoListSection$13;

    invoke-direct {v2, p0, v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection$13;-><init>(Lcom/bilibili/tv/ui/video/widget/VideoListSection;I)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    goto :goto_7

    .line 825
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

    .line 1524
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

    .line 1580
    :cond_17
    :goto_17
    return-void

    .line 1528
    :cond_18
    const/4 v2, -0x1

    move v0, v1

    .line 1529
    :goto_1a
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->dataList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_68

    .line 1530
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->dataList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 1532
    iget-wide v6, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->currentCid:J

    cmp-long v3, v6, v8

    if-lez v3, :cond_66

    .line 1533
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->binder:Lcom/bilibili/tv/ui/video/widget/VideoCardBinder;

    iget-wide v6, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->currentCid:J

    invoke-interface {v3, v4, v6, v7}, Lcom/bilibili/tv/ui/video/widget/VideoCardBinder;->isCurrentVideoByCid(Ljava/lang/Object;J)Z

    move-result v3

    .line 1535
    :goto_36
    if-nez v3, :cond_46

    iget-wide v6, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->currentVideoId:J

    cmp-long v5, v6, v8

    if-lez v5, :cond_46

    .line 1536
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->binder:Lcom/bilibili/tv/ui/video/widget/VideoCardBinder;

    iget-wide v6, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->currentVideoId:J

    invoke-interface {v3, v4, v6, v7}, Lcom/bilibili/tv/ui/video/widget/VideoCardBinder;->isCurrentVideo(Ljava/lang/Object;J)Z

    move-result v3

    .line 1538
    :cond_46
    if-nez v3, :cond_54

    iget v5, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->currentSeasonId:I

    if-lez v5, :cond_54

    .line 1539
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->binder:Lcom/bilibili/tv/ui/video/widget/VideoCardBinder;

    iget v5, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->currentSeasonId:I

    invoke-interface {v3, v4, v5}, Lcom/bilibili/tv/ui/video/widget/VideoCardBinder;->isCurrentSeason(Ljava/lang/Object;I)Z

    move-result v3

    .line 1541
    :cond_54
    if-eqz v3, :cond_63

    .line 1547
    :goto_56
    if-ltz v0, :cond_17

    .line 1552
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Lcom/bilibili/tv/ui/video/widget/VideoListSection$20;

    invoke-direct {v2, p0, v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection$20;-><init>(Lcom/bilibili/tv/ui/video/widget/VideoListSection;I)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    goto :goto_17

    .line 1529
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
    .line 994
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_5

    .line 1029
    :cond_4
    :goto_4
    return-void

    .line 998
    :cond_5
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->dataList:Ljava/util/List;

    if-nez v0, :cond_19

    const/4 v0, 0x0

    .line 999
    :goto_a
    if-ltz p1, :cond_4

    if-ge p1, v0, :cond_4

    .line 1004
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/bilibili/tv/ui/video/widget/VideoListSection$16;

    invoke-direct {v1, p0, p1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection$16;-><init>(Lcom/bilibili/tv/ui/video/widget/VideoListSection;I)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    goto :goto_4

    .line 998
    :cond_19
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->dataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_a
.end method

.method public setCurrentCid(J)V
    .locals 1

    .prologue
    .line 786
    iput-wide p1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->currentCid:J

    .line 787
    return-void
.end method

.method public setCurrentItemMatcher(Lcom/bilibili/tv/ui/video/widget/CurrentItemMatcher;)V
    .locals 0

    .prologue
    .line 806
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->currentItemMatcher:Lcom/bilibili/tv/ui/video/widget/CurrentItemMatcher;

    .line 807
    return-void
.end method

.method public setCurrentPlayingCid(J)V
    .locals 1

    .prologue
    .line 762
    iput-wide p1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->currentPlayingCid:J

    .line 763
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->adapter:Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;

    if-eqz v0, :cond_b

    .line 764
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->adapter:Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->setCurrentPlayingCid(J)V

    .line 766
    :cond_b
    return-void
.end method

.method public setCurrentSeasonId(I)V
    .locals 0

    .prologue
    .line 798
    iput p1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->currentSeasonId:I

    .line 799
    return-void
.end method

.method public setCurrentVideoId(J)V
    .locals 1

    .prologue
    .line 782
    iput-wide p1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->currentVideoId:J

    .line 783
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
    .line 738
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->dataList:Ljava/util/List;

    .line 739
    iput-object p2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->binder:Lcom/bilibili/tv/ui/video/widget/VideoCardBinder;

    .line 740
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->adapter:Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;

    if-eqz v0, :cond_d

    .line 741
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->adapter:Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->setData(Ljava/util/List;Lcom/bilibili/tv/ui/video/widget/VideoCardBinder;)V

    .line 743
    :cond_d
    return-void
.end method

.method public setFocusPosition(I)V
    .locals 0

    .prologue
    .line 1376
    iput p1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusPosition:I

    .line 1377
    return-void
.end method

.method public setIndexBadgeManagedByBinder(Z)V
    .locals 1

    .prologue
    .line 756
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->adapter:Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;

    if-eqz v0, :cond_9

    .line 757
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->adapter:Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;

    invoke-virtual {v0, p1}, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->setIndexBadgeManagedByBinder(Z)V

    .line 759
    :cond_9
    return-void
.end method

.method public setInterceptCurrentVideoClick(Z)V
    .locals 0

    .prologue
    .line 794
    iput-boolean p1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->interceptCurrentVideoClick:Z

    .line 795
    return-void
.end method

.method public setNavTagSelectedPosition(I)V
    .locals 1

    .prologue
    .line 1503
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    if-eqz v0, :cond_9

    .line 1504
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    invoke-virtual {v0, p1}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->setSelectedPosition(I)V

    .line 1506
    :cond_9
    return-void
.end method

.method public setOnFocusExitListener(Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnFocusExitListener;)V
    .locals 0

    .prologue
    .line 1675
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusExitListener:Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnFocusExitListener;

    .line 1676
    return-void
.end method

.method public setOnItemFocusedListener(Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnItemFocusedListener;)V
    .locals 0

    .prologue
    .line 1417
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->itemFocusedListener:Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnItemFocusedListener;

    .line 1418
    return-void
.end method

.method public setOnNavTagClickListener(Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnNavTagClickListener;)V
    .locals 0

    .prologue
    .line 1425
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagClickListener:Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnNavTagClickListener;

    .line 1426
    return-void
.end method

.method public setOnNavTagFocusListener(Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnNavTagFocusListener;)V
    .locals 0

    .prologue
    .line 1421
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagFocusListener:Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnNavTagFocusListener;

    .line 1422
    return-void
.end method

.method public setOnNavTagScrollListener(Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnNavTagScrollListener;)V
    .locals 0

    .prologue
    .line 1679
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagScrollListener:Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnNavTagScrollListener;

    .line 1680
    return-void
.end method

.method public setOnVideoCardClickListener(Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnVideoCardClickListener;)V
    .locals 0

    .prologue
    .line 1671
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->videoCardClickListener:Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnVideoCardClickListener;

    .line 1672
    return-void
.end method

.method public setOnVideoClickListener(Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnVideoClickListener;)V
    .locals 0

    .prologue
    .line 1413
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->videoClickListener:Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnVideoClickListener;

    .line 1414
    return-void
.end method

.method public setSectionId(I)V
    .locals 0

    .prologue
    .line 1384
    iput p1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->sectionId:I

    .line 1385
    return-void
.end method

.method public setShowIndexBadge(Z)V
    .locals 1

    .prologue
    .line 746
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->adapter:Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;

    if-eqz v0, :cond_9

    .line 747
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->adapter:Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;

    invoke-virtual {v0, p1}, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->setShowIndexBadge(Z)V

    .line 749
    :cond_9
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 726
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->titleView:Landroid/widget/TextView;

    if-eqz v0, :cond_b

    if-eqz p1, :cond_b

    .line 727
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->titleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 729
    :cond_b
    return-void
.end method

.method public setTitle(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 719
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

    .line 720
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->titleView:Landroid/widget/TextView;

    if-eqz v1, :cond_28

    if-eqz p1, :cond_28

    .line 721
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->titleView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 723
    :cond_28
    return-void
.end method

.method public setupBottomMenuFocusBoundary()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 1583
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setSoundEffectsEnabled(Z)V

    .line 1584
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$e;)V

    .line 1585
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setOverScrollMode(I)V

    .line 1587
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_25

    .line 1588
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setSoundEffectsEnabled(Z)V

    .line 1589
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$e;)V

    .line 1590
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setOverScrollMode(I)V

    .line 1592
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
    .line 1453
    iput p2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->groupSize:I

    .line 1454
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    if-nez v0, :cond_b

    .line 1466
    :cond_a
    :goto_a
    return-void

    .line 1458
    :cond_b
    if-eqz p1, :cond_25

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_25

    .line 1459
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->setCustomTags(Ljava/util/List;I)V

    .line 1460
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 1461
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    goto :goto_a

    .line 1464
    :cond_25
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    goto :goto_a
.end method

.method public setupNavigationTags(I)V
    .locals 1

    .prologue
    .line 1429
    const/16 v0, 0xa

    invoke-virtual {p0, p1, v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setupNavigationTags(II)V

    .line 1430
    return-void
.end method

.method public setupNavigationTags(II)V
    .locals 1

    .prologue
    .line 1433
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setupNavigationTags(IILcom/bilibili/tv/ui/video/widget/NavigationTagBinder;)V

    .line 1434
    return-void
.end method

.method public setupNavigationTags(IILcom/bilibili/tv/ui/video/widget/NavigationTagBinder;)V
    .locals 2

    .prologue
    .line 1437
    iput p2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->groupSize:I

    .line 1438
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    if-nez v0, :cond_b

    .line 1450
    :cond_a
    :goto_a
    return-void

    .line 1442
    :cond_b
    if-le p1, p2, :cond_1e

    .line 1443
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->setTags(IILcom/bilibili/tv/ui/video/widget/NavigationTagBinder;)V

    .line 1444
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 1445
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    goto :goto_a

    .line 1448
    :cond_1e
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    goto :goto_a
.end method

.method public syncAdapterCurrentState()V
    .locals 4

    .prologue
    .line 773
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->adapter:Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;

    if-eqz v0, :cond_20

    .line 774
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->adapter:Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;

    iget-wide v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->currentVideoId:J

    invoke-virtual {v0, v2, v3}, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->setCurrentVideoId(J)V

    .line 775
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->adapter:Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;

    iget-wide v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->currentCid:J

    invoke-virtual {v0, v2, v3}, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->setCurrentCid(J)V

    .line 776
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->adapter:Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;

    iget v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->currentSeasonId:I

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->setCurrentSeasonId(I)V

    .line 777
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->adapter:Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;

    iget-wide v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->currentPlayingCid:J

    invoke-virtual {v0, v2, v3}, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->setCurrentPlayingCid(J)V

    .line 779
    :cond_20
    return-void
.end method

.method public updateNavTagSelection(I)V
    .locals 2

    .prologue
    .line 1473
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1483
    :cond_c
    :goto_c
    return-void

    .line 1477
    :cond_d
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    invoke-virtual {v0, p1}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->getGroupIndexForVideoPosition(I)I

    move-result v0

    .line 1479
    if-ltz v0, :cond_c

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    invoke-virtual {v1}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->getTagCount()I

    move-result v1

    if-ge v0, v1, :cond_c

    .line 1480
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    invoke-virtual {v1, v0}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->setSelectedPosition(I)V

    .line 1481
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    invoke-virtual {v1, v0}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->scrollToPositionWithOffset(I)V

    goto :goto_c
.end method
