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

    .line 337
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

    .line 338
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0a008f

    invoke-virtual {v0, v1, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 339
    invoke-direct {p0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->initViews()V

    .line 340
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

    .line 343
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

    .line 344
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0a008f

    invoke-virtual {v0, v1, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 345
    invoke-direct {p0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->initViews()V

    .line 346
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

    .line 349
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

    .line 350
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0a008f

    invoke-virtual {v0, v1, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 351
    invoke-direct {p0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->initViews()V

    .line 352
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

    .line 1352
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_6

    .line 1358
    :cond_5
    return v2

    .line 1353
    :cond_6
    const/4 v0, 0x0

    :goto_7
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 1354
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eq v1, p1, :cond_5

    .line 1353
    add-int/lit8 v0, v0, 0x1

    goto :goto_7
.end method

.method private findViewByDataPosition(I)Landroid/view/View;
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1271
    :try_start_2
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$h;

    move-result-object v0

    .line 1272
    if-nez v0, :cond_c

    move-object v0, v1

    .line 1288
    :cond_b
    :goto_b
    return-object v0

    .line 1276
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

    .line 1277
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1279
    if-eqz v0, :cond_44

    .line 1280
    :goto_30
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_44

    .line 1281
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_3d} :catch_43

    move-result-object v3

    if-eq v3, v0, :cond_b

    .line 1280
    add-int/lit8 v2, v2, 0x1

    goto :goto_30

    .line 1286
    :catch_43
    move-exception v0

    :cond_44
    move-object v0, v1

    .line 1288
    goto :goto_b
.end method

.method private getViewPosition(Landroid/view/View;)I
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 683
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_7

    if-nez p1, :cond_9

    :cond_7
    move v0, v1

    .line 689
    :cond_8
    :goto_8
    return v0

    .line 684
    :cond_9
    const/4 v0, 0x0

    :goto_a
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1d

    .line 685
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eq v2, p1, :cond_8

    .line 684
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_1d
    move v0, v1

    .line 689
    goto :goto_8
.end method

.method private initNavigationTags()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 523
    const v0, 0x7f0801d6

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 524
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_11

    .line 680
    :goto_10
    return-void

    .line 528
    :cond_11
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/bilibili/tv/widget/FixLinearLayoutManager;

    invoke-virtual {p0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v3, v3}, Lcom/bilibili/tv/widget/FixLinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$h;)V

    .line 529
    new-instance v0, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    invoke-direct {v0}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    .line 530
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 531
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->attachRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 533
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    new-instance v1, Lcom/bilibili/tv/ui/video/widget/VideoListSection$9;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection$9;-><init>(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)V

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->setFocusBoundaryHandler(Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter$FocusBoundaryHandler;)V

    .line 557
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    new-instance v1, Lcom/bilibili/tv/ui/video/widget/VideoListSection$10;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection$10;-><init>(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)V

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->setOnTagFocusListener(Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter$OnTagFocusListener;)V

    .line 636
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    new-instance v1, Lcom/bilibili/tv/ui/video/widget/VideoListSection$11;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection$11;-><init>(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)V

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->setOnTagClickListener(Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter$OnTagClickListener;)V

    .line 655
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

    .line 355
    const v0, 0x7f0801a4

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->titleView:Landroid/widget/TextView;

    .line 356
    invoke-virtual {p0, v2}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 357
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_1c

    .line 520
    :goto_1b
    return-void

    .line 361
    :cond_1c
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setFocusable(Z)V

    .line 363
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setNextFocusLeftId(I)V

    .line 364
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setNextFocusRightId(I)V

    .line 367
    new-instance v0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;

    invoke-virtual {p0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->adapter:Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;

    .line 369
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->adapter:Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;

    new-instance v1, Lcom/bilibili/tv/ui/video/widget/VideoListSection$5;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection$5;-><init>(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)V

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->setFocusBoundaryHandler(Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter$FocusBoundaryHandler;)V

    .line 391
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->adapter:Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;

    new-instance v1, Lcom/bilibili/tv/ui/video/widget/VideoListSection$6;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection$6;-><init>(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)V

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->setOnItemClickListener(Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter$OnItemClickListener;)V

    .line 420
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->adapter:Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;

    new-instance v1, Lcom/bilibili/tv/ui/video/widget/VideoListSection$7;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection$7;-><init>(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)V

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->setOnItemFocusListener(Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter$OnItemFocusListener;)V

    .line 480
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/bilibili/tv/widget/FixLinearLayoutManager;

    invoke-virtual {p0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v3, v3}, Lcom/bilibili/tv/widget/FixLinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$h;)V

    .line 481
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->adapter:Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 483
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/bilibili/tv/ui/video/widget/VideoListSection$8;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection$8;-><init>(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 519
    invoke-direct {p0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->initNavigationTags()V

    goto :goto_1b
.end method

.method private isViewFullyVisible(Landroid/view/View;)Z
    .locals 6

    .prologue
    const/4 v2, 0x2

    const/4 v0, 0x0

    .line 693
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v1, :cond_8

    if-nez p1, :cond_9

    .line 705
    :cond_8
    :goto_8
    return v0

    .line 694
    :cond_9
    new-array v1, v2, [I

    .line 695
    new-array v2, v2, [I

    .line 696
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 697
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/RecyclerView;->getLocationOnScreen([I)V

    .line 699
    aget v3, v2, v0

    .line 700
    aget v2, v2, v0

    iget-object v4, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v4

    add-int/2addr v2, v4

    .line 701
    aget v4, v1, v0

    .line 702
    aget v1, v1, v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v1, v5

    .line 704
    if-lt v4, v3, :cond_8

    if-gt v1, v2, :cond_8

    const/4 v0, 0x1

    goto :goto_8
.end method

.method private restoreFocusFromExternal()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1122
    invoke-direct {p0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->restoreFocusPositionInternal()Landroid/view/View;

    move-result-object v0

    .line 1123
    if-eqz v0, :cond_d

    .line 1125
    iput-boolean v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->manualFocusRequested:Z

    .line 1126
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 1134
    :cond_c
    :goto_c
    return-void

    .line 1127
    :cond_d
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_c

    .line 1129
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1130
    iput-boolean v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->manualFocusRequested:Z

    .line 1131
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto :goto_c
.end method

.method private restoreFocusFromNavTag()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 1086
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->dataList:Ljava/util/List;

    if-nez v0, :cond_a

    move v2, v3

    .line 1087
    :goto_7
    if-nez v2, :cond_12

    .line 1116
    :goto_9
    return-void

    .line 1086
    :cond_a
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->dataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v2, v0

    goto :goto_7

    .line 1091
    :cond_12
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->getSelectedPosition()I

    move-result v4

    .line 1092
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    invoke-virtual {v0, v4}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->getItemRange(I)[I

    move-result-object v0

    .line 1096
    if-eqz v0, :cond_a1

    .line 1097
    aget v1, v0, v3

    .line 1098
    aget v5, v0, v7

    const v6, 0x7fffffff

    if-ne v5, v6, :cond_98

    add-int/lit8 v0, v2, -0x1

    .line 1104
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

    .line 1107
    iget v4, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusPosition:I

    if-lt v4, v1, :cond_6d

    iget v4, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusPosition:I

    if-gt v4, v0, :cond_6d

    .line 1108
    iget v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusPosition:I

    .line 1110
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

    .line 1112
    add-int/lit8 v0, v2, -0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1113
    iput v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusPosition:I

    .line 1114
    iput v3, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusRestoreRetryCount:I

    .line 1115
    invoke-direct {p0, v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->restoreFocusWithRetry(I)V

    goto/16 :goto_9

    .line 1098
    :cond_98
    aget v0, v0, v7

    add-int/lit8 v5, v2, -0x1

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_2b

    .line 1100
    :cond_a1
    iget v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->lastNavTagVideoStart:I

    .line 1101
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

    .line 1239
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    if-nez v1, :cond_7

    .line 1266
    :cond_6
    :goto_6
    return-object v0

    .line 1243
    :cond_7
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->dataList:Ljava/util/List;

    if-nez v1, :cond_2a

    move v1, v2

    .line 1244
    :goto_c
    if-eqz v1, :cond_6

    .line 1248
    iget v3, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusPosition:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1249
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1251
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v3

    .line 1252
    if-eqz v3, :cond_6

    .line 1256
    invoke-direct {p0, v1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->findViewByDataPosition(I)Landroid/view/View;

    move-result-object v1

    .line 1257
    if-eqz v1, :cond_31

    move-object v0, v1

    .line 1258
    goto :goto_6

    .line 1243
    :cond_2a
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->dataList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_c

    .line 1261
    :cond_31
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1262
    if-eqz v1, :cond_6

    move-object v0, v1

    .line 1263
    goto :goto_6
.end method

.method private restoreFocusWithRetry(I)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1180
    iget v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusRestoreRetryCount:I

    const/4 v1, 0x5

    if-le v0, v1, :cond_21

    .line 1183
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1e

    .line 1184
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1185
    iput-boolean v3, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->manualFocusRequested:Z

    .line 1186
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 1188
    :cond_1e
    iput v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusRestoreRetryCount:I

    .line 1211
    :goto_20
    return-void

    .line 1193
    :cond_21
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->findViewByDataPosition(I)Landroid/view/View;

    move-result-object v0

    .line 1194
    if-eqz v0, :cond_2f

    .line 1196
    iput-boolean v3, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->manualFocusRequested:Z

    .line 1197
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 1198
    iput v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusRestoreRetryCount:I

    goto :goto_20

    .line 1202
    :cond_2f
    iget v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusRestoreRetryCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusRestoreRetryCount:I

    .line 1203
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
    .line 1140
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1172
    :cond_c
    :goto_c
    return-void

    .line 1145
    :cond_d
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    iget v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusPosition:I

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->getGroupIndexForVideoPosition(I)I

    move-result v0

    .line 1148
    if-ltz v0, :cond_c

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    invoke-virtual {v1}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->getTagCount()I

    move-result v1

    if-ge v0, v1, :cond_c

    .line 1149
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    invoke-virtual {v1, v0}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->setSelectedPosition(I)V

    .line 1150
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    invoke-virtual {v1, v0}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->scrollToPositionWithOffset(I)V

    .line 1153
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    invoke-virtual {v1, v0}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->findViewByPosition(I)Landroid/view/View;

    move-result-object v1

    .line 1154
    if-eqz v1, :cond_35

    .line 1156
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    goto :goto_c

    .line 1160
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
    .line 1313
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_5

    .line 1326
    :cond_4
    :goto_4
    return-void

    .line 1314
    :cond_5
    const/4 v0, 0x0

    :goto_6
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 1315
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1316
    if-eqz v1, :cond_28

    invoke-virtual {v1}, Landroid/view/View;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_28

    .line 1317
    invoke-virtual {p0, v1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->getDataPositionForView(Landroid/view/View;)I

    move-result v1

    .line 1318
    if-ltz v1, :cond_25

    .line 1319
    iput v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusPosition:I

    goto :goto_4

    .line 1321
    :cond_25
    iput v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusPosition:I

    goto :goto_4

    .line 1314
    :cond_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_6
.end method

.method private saveFocusPositionByIndex(I)V
    .locals 0

    .prologue
    .line 1309
    iput p1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusPosition:I

    .line 1310
    return-void
.end method

.method private scrollToDataPositionAtFirstPosition(I)V
    .locals 2

    .prologue
    .line 948
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->dataList:Ljava/util/List;

    if-nez v0, :cond_9

    .line 981
    :cond_8
    :goto_8
    return-void

    .line 952
    :cond_9
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->dataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 953
    if-ltz p1, :cond_8

    if-ge p1, v0, :cond_8

    .line 958
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/bilibili/tv/ui/video/widget/VideoListSection$15;

    invoke-direct {v1, p0, p1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection$15;-><init>(Lcom/bilibili/tv/ui/video/widget/VideoListSection;I)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    goto :goto_8
.end method

.method private scrollToDataPositionOnly(I)V
    .locals 2

    .prologue
    .line 1030
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_5

    .line 1083
    :cond_4
    :goto_4
    return-void

    .line 1035
    :cond_5
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->dataList:Ljava/util/List;

    if-nez v0, :cond_2d

    const/4 v0, 0x0

    .line 1036
    :goto_a
    if-ltz p1, :cond_4

    if-ge p1, v0, :cond_4

    .line 1043
    iput p1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusPosition:I

    .line 1047
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->pendingVideoScrollRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1e

    .line 1048
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->pendingVideoScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1049
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->pendingVideoScrollRunnable:Ljava/lang/Runnable;

    .line 1054
    :cond_1e
    new-instance v0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$17;

    invoke-direct {v0, p0, p1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection$17;-><init>(Lcom/bilibili/tv/ui/video/widget/VideoListSection;I)V

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->pendingVideoScrollRunnable:Ljava/lang/Runnable;

    .line 1081
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->pendingVideoScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    goto :goto_4

    .line 1035
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
    .line 1643
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->dataList:Ljava/util/List;

    if-eqz v0, :cond_9

    .line 1644
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->dataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1646
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

    .line 119
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_12

    .line 120
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 333
    :goto_11
    return v0

    .line 123
    :cond_12
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 126
    if-eq v0, v8, :cond_1a

    if-ne v0, v7, :cond_4c

    .line 127
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

    .line 131
    :cond_4c
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->hasNavigationTags()Z

    move-result v2

    if-eqz v2, :cond_24d

    .line 133
    if-ne v0, v8, :cond_123

    iget v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->currentFocusArea:I

    if-ne v2, v1, :cond_123

    .line 134
    const-string v0, "NavTagFocusBug"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[dispatchKeyEvent DOWN] focusPosition="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusPosition:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " | navTagAdapter.getTagCount()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    invoke-virtual {v3}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->getTagCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    iget v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusPosition:I

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->getGroupIndexForVideoPosition(I)I

    move-result v0

    .line 137
    const-string v2, "NavTagFocusBug"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[dispatchKeyEvent DOWN] calculated tagIndex="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    invoke-virtual {v2}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->getTagCount()I

    move-result v2

    if-lt v0, v2, :cond_ca

    .line 140
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->getTagCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 141
    const-string v2, "NavTagFocusBug"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[dispatchKeyEvent DOWN] tagIndex capped to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_ca
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusRedirecting:Z

    .line 145
    iput v6, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->currentFocusArea:I

    .line 147
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    invoke-virtual {v2, v0}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->getStartIndex(I)I

    move-result v2

    iput v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->lastNavTagVideoStart:I

    .line 148
    const-string v2, "NavTagFocusBug"

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

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    invoke-virtual {v2, v0}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->setSelectedPosition(I)V

    .line 151
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    invoke-virtual {v2, v0}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->scrollToPositionWithOffset(I)V

    .line 154
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    invoke-virtual {v2, v0}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->findViewByPosition(I)Landroid/view/View;

    move-result-object v2

    .line 155
    if-eqz v2, :cond_118

    .line 156
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    :goto_115
    move v0, v1

    .line 170
    goto/16 :goto_11

    .line 158
    :cond_118
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v3, Lcom/bilibili/tv/ui/video/widget/VideoListSection$1;

    invoke-direct {v3, p0, v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection$1;-><init>(Lcom/bilibili/tv/ui/video/widget/VideoListSection;I)V

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    goto :goto_115

    .line 174
    :cond_123
    if-ne v0, v7, :cond_15e

    iget v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->currentFocusArea:I

    if-ne v2, v6, :cond_15e

    .line 176
    iget v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusPosition:I

    .line 177
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->dataList:Ljava/util/List;

    if-nez v2, :cond_14c

    move v2, v3

    .line 178
    :goto_130
    if-lez v2, :cond_13c

    .line 179
    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 182
    :cond_13c
    iput v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->currentFocusArea:I

    .line 184
    invoke-direct {p0, v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->findViewByDataPosition(I)Landroid/view/View;

    move-result-object v2

    .line 185
    if-eqz v2, :cond_153

    .line 186
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusRedirecting:Z

    .line 187
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    :goto_149
    move v0, v1

    .line 218
    goto/16 :goto_11

    .line 177
    :cond_14c
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->dataList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_130

    .line 190
    :cond_153
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v3, Lcom/bilibili/tv/ui/video/widget/VideoListSection$2;

    invoke-direct {v3, p0, v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection$2;-><init>(Lcom/bilibili/tv/ui/video/widget/VideoListSection;I)V

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    goto :goto_149

    .line 222
    :cond_15e
    if-ne v0, v7, :cond_174

    iget v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->currentFocusArea:I

    if-ne v2, v1, :cond_174

    .line 224
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusExitListener:Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnFocusExitListener;

    if-eqz v0, :cond_171

    .line 225
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusExitListener:Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnFocusExitListener;

    iget v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->sectionId:I

    iget v3, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusPosition:I

    invoke-interface {v0, v2, v3}, Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnFocusExitListener;->onFocusExitUp(II)V

    :cond_171
    move v0, v1

    .line 228
    goto/16 :goto_11

    .line 232
    :cond_174
    if-ne v0, v8, :cond_1a8

    iget v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->currentFocusArea:I

    if-ne v2, v6, :cond_1a8

    .line 233
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

    .line 234
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusExitListener:Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnFocusExitListener;

    if-eqz v0, :cond_1a5

    .line 235
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusExitListener:Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnFocusExitListener;

    iget v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->sectionId:I

    iget-object v3, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    invoke-virtual {v3}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->getSelectedPosition()I

    move-result v3

    invoke-interface {v0, v2, v3}, Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnFocusExitListener;->onFocusExitDown(II)V

    :cond_1a5
    move v0, v1

    .line 238
    goto/16 :goto_11

    .line 242
    :cond_1a8
    iget v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->currentFocusArea:I

    if-ne v2, v6, :cond_274

    .line 243
    const/16 v2, 0x15

    if-eq v0, v2, :cond_1b4

    const/16 v2, 0x16

    if-ne v0, v2, :cond_274

    .line 245
    :cond_1b4
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    invoke-virtual {v2}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->getSelectedPosition()I

    move-result v2

    .line 246
    iget-object v4, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    invoke-virtual {v4}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->getTagCount()I

    move-result v4

    .line 249
    const/16 v5, 0x15

    if-ne v0, v5, :cond_232

    .line 250
    add-int/lit8 v0, v2, -0x1

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 255
    :goto_1ca
    if-eq v0, v2, :cond_22f

    .line 256
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagScrollListener:Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnNavTagScrollListener;

    if-eqz v2, :cond_1d5

    .line 257
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagScrollListener:Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnNavTagScrollListener;

    invoke-interface {v2}, Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnNavTagScrollListener;->onNavTagScrollStart()V

    .line 260
    :cond_1d5
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagScrollEndRunnable:Ljava/lang/Runnable;

    if-eqz v2, :cond_1de

    .line 261
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagScrollEndRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 264
    :cond_1de
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusRedirecting:Z

    .line 265
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    invoke-virtual {v2, v0}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->setSelectedPosition(I)V

    .line 267
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    invoke-virtual {v2, v0}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->getStartIndex(I)I

    move-result v2

    .line 268
    iput v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->lastNavTagVideoStart:I

    .line 270
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

    .line 272
    invoke-direct {p0, v2}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->scrollToDataPositionOnly(I)V

    .line 275
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    invoke-virtual {v2, v0}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->findViewByPosition(I)Landroid/view/View;

    move-result-object v2

    .line 276
    if-eqz v2, :cond_23b

    .line 277
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusRedirecting:Z

    .line 278
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 293
    :goto_221
    new-instance v0, Lcom/bilibili/tv/ui/video/widget/VideoListSection$4;

    invoke-direct {v0, p0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection$4;-><init>(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)V

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagScrollEndRunnable:Ljava/lang/Runnable;

    .line 302
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagScrollEndRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x96

    invoke-virtual {p0, v0, v2, v3}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_22f
    move v0, v1

    .line 305
    goto/16 :goto_11

    .line 252
    :cond_232
    add-int/lit8 v0, v4, -0x1

    add-int/lit8 v3, v2, 0x1

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_1ca

    .line 280
    :cond_23b
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    invoke-virtual {v2, v0}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->scrollToPosition(I)V

    .line 281
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v3, Lcom/bilibili/tv/ui/video/widget/VideoListSection$3;

    invoke-direct {v3, p0, v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection$3;-><init>(Lcom/bilibili/tv/ui/video/widget/VideoListSection;I)V

    const-wide/16 v4, 0x64

    invoke-virtual {v2, v3, v4, v5}, Landroid/support/v7/widget/RecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_221

    .line 314
    :cond_24d
    iget v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->currentFocusArea:I

    if-ne v2, v1, :cond_274

    .line 315
    if-ne v0, v7, :cond_263

    .line 317
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusExitListener:Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnFocusExitListener;

    if-eqz v0, :cond_260

    .line 318
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusExitListener:Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnFocusExitListener;

    iget v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->sectionId:I

    iget v3, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusPosition:I

    invoke-interface {v0, v2, v3}, Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnFocusExitListener;->onFocusExitUp(II)V

    :cond_260
    move v0, v1

    .line 320
    goto/16 :goto_11

    .line 322
    :cond_263
    if-ne v0, v8, :cond_274

    .line 324
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusExitListener:Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnFocusExitListener;

    if-eqz v0, :cond_271

    .line 325
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusExitListener:Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnFocusExitListener;

    iget v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->sectionId:I

    const/4 v3, -0x1

    invoke-interface {v0, v2, v3}, Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnFocusExitListener;->onFocusExitDown(II)V

    :cond_271
    move v0, v1

    .line 327
    goto/16 :goto_11

    .line 333
    :cond_274
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto/16 :goto_11
.end method

.method public focusNavTag(I)V
    .locals 1

    .prologue
    .line 1604
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_9

    .line 1620
    :cond_8
    :goto_8
    return-void

    .line 1607
    :cond_9
    if-ltz p1, :cond_8

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->getTagCount()I

    move-result v0

    if-ge p1, v0, :cond_8

    .line 1611
    const/4 v0, 0x2

    iput v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->currentFocusArea:I

    .line 1612
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    invoke-virtual {v0, p1}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->getStartIndex(I)I

    move-result v0

    iput v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->lastNavTagVideoStart:I

    .line 1613
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    invoke-virtual {v0, p1}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->setSelectedPosition(I)V

    .line 1614
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    invoke-virtual {v0, p1}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->scrollToPositionWithOffset(I)V

    .line 1616
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    invoke-virtual {v0, p1}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    .line 1617
    if-eqz v0, :cond_8

    .line 1618
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto :goto_8
.end method

.method public getAdapter()Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;
    .locals 1

    .prologue
    .line 1386
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->adapter:Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;

    return-object v0
.end method

.method public getBinder()Lcom/bilibili/tv/ui/video/widget/VideoCardBinder;
    .locals 1

    .prologue
    .line 1399
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->binder:Lcom/bilibili/tv/ui/video/widget/VideoCardBinder;

    return-object v0
.end method

.method public getCurrentCid()J
    .locals 2

    .prologue
    .line 780
    iget-wide v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->currentCid:J

    return-wide v0
.end method

.method public getCurrentItemMatcher()Lcom/bilibili/tv/ui/video/widget/CurrentItemMatcher;
    .locals 1

    .prologue
    .line 800
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->currentItemMatcher:Lcom/bilibili/tv/ui/video/widget/CurrentItemMatcher;

    return-object v0
.end method

.method public getCurrentPlayingCid()J
    .locals 2

    .prologue
    .line 759
    iget-wide v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->currentPlayingCid:J

    return-wide v0
.end method

.method public getCurrentSeasonId()I
    .locals 1

    .prologue
    .line 792
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
    .line 1395
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->dataList:Ljava/util/List;

    return-object v0
.end method

.method public getDataPositionForView(Landroid/view/View;)I
    .locals 3

    .prologue
    .line 1333
    if-eqz p1, :cond_a

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->dataList:Ljava/util/List;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->adapter:Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;

    if-nez v0, :cond_c

    .line 1334
    :cond_a
    const/4 v0, -0x1

    .line 1348
    :cond_b
    :goto_b
    return v0

    .line 1337
    :cond_c
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 1338
    if-nez v1, :cond_17

    .line 1339
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->findPositionByTraversal(Landroid/view/View;)I

    move-result v0

    goto :goto_b

    .line 1342
    :cond_17
    const/4 v0, 0x0

    :goto_18
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->dataList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2b

    .line 1343
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->dataList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, v1, :cond_b

    .line 1342
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 1348
    :cond_2b
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->findPositionByTraversal(Landroid/view/View;)I

    move-result v0

    goto :goto_b
.end method

.method public getDataSize()I
    .locals 1

    .prologue
    .line 1362
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
    .line 1329
    iget v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusPosition:I

    return v0
.end method

.method public getGroupSize()I
    .locals 1

    .prologue
    .line 1459
    iget v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->groupSize:I

    return v0
.end method

.method public getNavTagAdapter()Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;
    .locals 1

    .prologue
    .line 1510
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    return-object v0
.end method

.method public getNavTagIndexForPosition(I)I
    .locals 1

    .prologue
    .line 1597
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    if-nez v0, :cond_6

    .line 1598
    const/4 v0, -0x1

    .line 1600
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
    .line 1506
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagRecyclerView:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method public getNavTagSelectedPosition()I
    .locals 1

    .prologue
    .line 1476
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    if-nez v0, :cond_6

    .line 1477
    const/4 v0, -0x1

    .line 1479
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
    .line 1378
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method public getSectionId()I
    .locals 1

    .prologue
    .line 1370
    iget v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->sectionId:I

    return v0
.end method

.method public getTitleView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 1382
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->titleView:Landroid/widget/TextView;

    return-object v0
.end method

.method public hasData()Z
    .locals 1

    .prologue
    .line 1390
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->dataList:Ljava/util/List;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->dataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    .line 1391
    :goto_d
    return v0

    .line 1390
    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public hasNavigationTags()Z
    .locals 1

    .prologue
    .line 1499
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 1500
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    .line 1502
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a

    const/4 v0, 0x1

    .line 1499
    :goto_19
    return v0

    .line 1502
    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public hideTitle()V
    .locals 2

    .prologue
    .line 722
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->titleView:Landroid/widget/TextView;

    if-eqz v0, :cond_b

    .line 723
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->titleView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 725
    :cond_b
    return-void
.end method

.method public isDataLoaded()Z
    .locals 1

    .prologue
    .line 1593
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
    .line 1483
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
    .line 1655
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->videoCardClickListener:Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnVideoCardClickListener;

    if-eqz v0, :cond_9

    .line 1656
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->videoCardClickListener:Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnVideoCardClickListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnVideoCardClickListener;->onVideoCardClicked(JLcom/bilibili/tv/player/basic/context/ResolveResourceParams;)V

    .line 1658
    :cond_9
    return-void
.end method

.method public refreshVisibleItems()V
    .locals 1

    .prologue
    .line 1649
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->adapter:Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;

    if-eqz v0, :cond_9

    .line 1650
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->adapter:Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->d()V

    .line 1652
    :cond_9
    return-void
.end method

.method public requestFocusOnCurrentPosition()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 1631
    iput v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->currentFocusArea:I

    .line 1632
    iput-boolean v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->lockFocusPosition:Z

    .line 1633
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->requestFocusOnSavedPosition()Z

    .line 1634
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/bilibili/tv/ui/video/widget/VideoListSection$21;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection$21;-><init>(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v7/widget/RecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1640
    return-void
.end method

.method public requestFocusOnPosition(I)V
    .locals 0

    .prologue
    .line 1623
    if-gez p1, :cond_3

    .line 1628
    :goto_2
    return-void

    .line 1626
    :cond_3
    iput p1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusPosition:I

    .line 1627
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->requestFocusOnCurrentPosition()V

    goto :goto_2
.end method

.method public requestFocusOnSavedPosition()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1218
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->manualFocusRequested:Z

    .line 1219
    iput v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->currentFocusArea:I

    .line 1221
    invoke-direct {p0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->restoreFocusPositionInternal()Landroid/view/View;

    move-result-object v1

    .line 1222
    if-eqz v1, :cond_11

    .line 1223
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    move-result v0

    .line 1235
    :cond_10
    :goto_10
    return v0

    .line 1226
    :cond_11
    iget-boolean v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->lockFocusPosition:Z

    if-nez v1, :cond_10

    .line 1230
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_10

    .line 1231
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1232
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    move-result v0

    goto :goto_10
.end method

.method public restoreFocusPosition()Landroid/view/View;
    .locals 1

    .prologue
    .line 1214
    invoke-direct {p0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->restoreFocusPositionInternal()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public saveFocusPosition(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 1292
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_6

    if-nez p1, :cond_7

    .line 1306
    :cond_6
    :goto_6
    return-void

    .line 1295
    :cond_7
    const/4 v0, 0x0

    :goto_8
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_6

    .line 1296
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-ne v1, p1, :cond_24

    .line 1297
    invoke-virtual {p0, p1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->getDataPositionForView(Landroid/view/View;)I

    move-result v1

    .line 1298
    if-ltz v1, :cond_21

    .line 1299
    iput v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusPosition:I

    goto :goto_6

    .line 1301
    :cond_21
    iput v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusPosition:I

    goto :goto_6

    .line 1295
    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_8
.end method

.method public saveTagFocusPosition(I)V
    .locals 0

    .prologue
    .line 1589
    iput p1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->savedTagFocusPosition:I

    .line 1590
    return-void
.end method

.method public saveVideoFocusPosition(I)V
    .locals 0

    .prologue
    .line 1585
    iput p1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->savedVideoFocusPosition:I

    .line 1586
    return-void
.end method

.method public scrollNavTagToPosition(I)V
    .locals 1

    .prologue
    .line 1487
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    if-eqz v0, :cond_9

    .line 1488
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    invoke-virtual {v0, p1}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->scrollToPosition(I)V

    .line 1490
    :cond_9
    return-void
.end method

.method public scrollToCurrentItem()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 865
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

    .line 867
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_55

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->dataList:Ljava/util/List;

    if-eqz v0, :cond_55

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->dataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_64

    .line 868
    :cond_55
    const-string v0, "NavTagFocusBug"

    const-string v1, "[scrollToCurrentItem] early return: recyclerView/dataList null or empty"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    :goto_5c
    return-void

    :cond_5d
    move v0, v2

    .line 865
    goto :goto_14

    :cond_5f
    const-string v0, "null"

    goto :goto_2c

    :cond_62
    move v1, v2

    goto :goto_3a

    .line 871
    :cond_64
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->currentItemMatcher:Lcom/bilibili/tv/ui/video/widget/CurrentItemMatcher;

    if-nez v0, :cond_70

    .line 872
    const-string v0, "NavTagFocusBug"

    const-string v1, "[scrollToCurrentItem] early return: currentItemMatcher null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5c

    .line 876
    :cond_70
    const/4 v0, -0x1

    .line 877
    :goto_71
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->dataList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_c7

    .line 878
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->currentItemMatcher:Lcom/bilibili/tv/ui/video/widget/CurrentItemMatcher;

    iget-object v3, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->dataList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3, v2}, Lcom/bilibili/tv/ui/video/widget/CurrentItemMatcher;->isCurrentItem(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_91

    .line 884
    :goto_87
    if-gez v2, :cond_94

    .line 885
    const-string v0, "NavTagFocusBug"

    const-string v1, "[scrollToCurrentItem] currentPosition < 0, return"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5c

    .line 877
    :cond_91
    add-int/lit8 v2, v2, 0x1

    goto :goto_71

    .line 889
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

    .line 892
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
    .line 925
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->dataList:Ljava/util/List;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->dataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 945
    :cond_10
    :goto_10
    return-void

    .line 928
    :cond_11
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->currentItemMatcher:Lcom/bilibili/tv/ui/video/widget/CurrentItemMatcher;

    if-eqz v0, :cond_10

    .line 932
    const/4 v1, -0x1

    .line 933
    const/4 v0, 0x0

    :goto_17
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->dataList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_36

    .line 934
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->currentItemMatcher:Lcom/bilibili/tv/ui/video/widget/CurrentItemMatcher;

    iget-object v3, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->dataList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Lcom/bilibili/tv/ui/video/widget/CurrentItemMatcher;->isCurrentItem(Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 940
    :goto_2d
    if-ltz v0, :cond_10

    .line 944
    invoke-direct {p0, v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->scrollToDataPositionAtFirstPosition(I)V

    goto :goto_10

    .line 933
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

    .line 804
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_8

    .line 862
    :cond_7
    :goto_7
    return-void

    .line 807
    :cond_8
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->dataList:Ljava/util/List;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->dataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 810
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->binder:Lcom/bilibili/tv/ui/video/widget/VideoCardBinder;

    if-eqz v0, :cond_7

    .line 814
    const/4 v2, -0x1

    move v0, v1

    .line 815
    :goto_1a
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->dataList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_6a

    .line 816
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->dataList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 819
    iget-wide v6, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->currentCid:J

    cmp-long v3, v6, v8

    if-lez v3, :cond_67

    .line 820
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->binder:Lcom/bilibili/tv/ui/video/widget/VideoCardBinder;

    iget-wide v6, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->currentCid:J

    invoke-interface {v3, v5, v6, v7}, Lcom/bilibili/tv/ui/video/widget/VideoCardBinder;->isCurrentVideoByCid(Ljava/lang/Object;J)Z

    move-result v3

    .line 821
    const/4 v4, 0x1

    .line 823
    :goto_37
    if-nez v4, :cond_47

    iget-wide v6, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->currentVideoId:J

    cmp-long v4, v6, v8

    if-lez v4, :cond_47

    .line 824
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->binder:Lcom/bilibili/tv/ui/video/widget/VideoCardBinder;

    iget-wide v6, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->currentVideoId:J

    invoke-interface {v3, v5, v6, v7}, Lcom/bilibili/tv/ui/video/widget/VideoCardBinder;->isCurrentVideo(Ljava/lang/Object;J)Z

    move-result v3

    .line 826
    :cond_47
    if-nez v3, :cond_55

    iget v4, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->currentSeasonId:I

    if-lez v4, :cond_55

    .line 827
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->binder:Lcom/bilibili/tv/ui/video/widget/VideoCardBinder;

    iget v4, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->currentSeasonId:I

    invoke-interface {v3, v5, v4}, Lcom/bilibili/tv/ui/video/widget/VideoCardBinder;->isCurrentSeason(Ljava/lang/Object;I)Z

    move-result v3

    .line 829
    :cond_55
    if-eqz v3, :cond_64

    .line 835
    :goto_57
    if-ltz v0, :cond_7

    .line 840
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Lcom/bilibili/tv/ui/video/widget/VideoListSection$13;

    invoke-direct {v2, p0, v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection$13;-><init>(Lcom/bilibili/tv/ui/video/widget/VideoListSection;I)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    goto :goto_7

    .line 815
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

    .line 1514
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

    .line 1570
    :cond_17
    :goto_17
    return-void

    .line 1518
    :cond_18
    const/4 v2, -0x1

    move v0, v1

    .line 1519
    :goto_1a
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->dataList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_68

    .line 1520
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->dataList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 1522
    iget-wide v6, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->currentCid:J

    cmp-long v3, v6, v8

    if-lez v3, :cond_66

    .line 1523
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->binder:Lcom/bilibili/tv/ui/video/widget/VideoCardBinder;

    iget-wide v6, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->currentCid:J

    invoke-interface {v3, v4, v6, v7}, Lcom/bilibili/tv/ui/video/widget/VideoCardBinder;->isCurrentVideoByCid(Ljava/lang/Object;J)Z

    move-result v3

    .line 1525
    :goto_36
    if-nez v3, :cond_46

    iget-wide v6, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->currentVideoId:J

    cmp-long v5, v6, v8

    if-lez v5, :cond_46

    .line 1526
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->binder:Lcom/bilibili/tv/ui/video/widget/VideoCardBinder;

    iget-wide v6, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->currentVideoId:J

    invoke-interface {v3, v4, v6, v7}, Lcom/bilibili/tv/ui/video/widget/VideoCardBinder;->isCurrentVideo(Ljava/lang/Object;J)Z

    move-result v3

    .line 1528
    :cond_46
    if-nez v3, :cond_54

    iget v5, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->currentSeasonId:I

    if-lez v5, :cond_54

    .line 1529
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->binder:Lcom/bilibili/tv/ui/video/widget/VideoCardBinder;

    iget v5, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->currentSeasonId:I

    invoke-interface {v3, v4, v5}, Lcom/bilibili/tv/ui/video/widget/VideoCardBinder;->isCurrentSeason(Ljava/lang/Object;I)Z

    move-result v3

    .line 1531
    :cond_54
    if-eqz v3, :cond_63

    .line 1537
    :goto_56
    if-ltz v0, :cond_17

    .line 1542
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Lcom/bilibili/tv/ui/video/widget/VideoListSection$20;

    invoke-direct {v2, p0, v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection$20;-><init>(Lcom/bilibili/tv/ui/video/widget/VideoListSection;I)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    goto :goto_17

    .line 1519
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
    .line 984
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_5

    .line 1019
    :cond_4
    :goto_4
    return-void

    .line 988
    :cond_5
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->dataList:Ljava/util/List;

    if-nez v0, :cond_19

    const/4 v0, 0x0

    .line 989
    :goto_a
    if-ltz p1, :cond_4

    if-ge p1, v0, :cond_4

    .line 994
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/bilibili/tv/ui/video/widget/VideoListSection$16;

    invoke-direct {v1, p0, p1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection$16;-><init>(Lcom/bilibili/tv/ui/video/widget/VideoListSection;I)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    goto :goto_4

    .line 988
    :cond_19
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->dataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_a
.end method

.method public setCurrentCid(J)V
    .locals 1

    .prologue
    .line 776
    iput-wide p1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->currentCid:J

    .line 777
    return-void
.end method

.method public setCurrentItemMatcher(Lcom/bilibili/tv/ui/video/widget/CurrentItemMatcher;)V
    .locals 0

    .prologue
    .line 796
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->currentItemMatcher:Lcom/bilibili/tv/ui/video/widget/CurrentItemMatcher;

    .line 797
    return-void
.end method

.method public setCurrentPlayingCid(J)V
    .locals 1

    .prologue
    .line 752
    iput-wide p1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->currentPlayingCid:J

    .line 753
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->adapter:Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;

    if-eqz v0, :cond_b

    .line 754
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->adapter:Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->setCurrentPlayingCid(J)V

    .line 756
    :cond_b
    return-void
.end method

.method public setCurrentSeasonId(I)V
    .locals 0

    .prologue
    .line 788
    iput p1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->currentSeasonId:I

    .line 789
    return-void
.end method

.method public setCurrentVideoId(J)V
    .locals 1

    .prologue
    .line 772
    iput-wide p1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->currentVideoId:J

    .line 773
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
    .line 728
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->dataList:Ljava/util/List;

    .line 729
    iput-object p2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->binder:Lcom/bilibili/tv/ui/video/widget/VideoCardBinder;

    .line 730
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->adapter:Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;

    if-eqz v0, :cond_d

    .line 731
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->adapter:Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->setData(Ljava/util/List;Lcom/bilibili/tv/ui/video/widget/VideoCardBinder;)V

    .line 733
    :cond_d
    return-void
.end method

.method public setFocusPosition(I)V
    .locals 0

    .prologue
    .line 1366
    iput p1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusPosition:I

    .line 1367
    return-void
.end method

.method public setIndexBadgeManagedByBinder(Z)V
    .locals 1

    .prologue
    .line 746
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->adapter:Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;

    if-eqz v0, :cond_9

    .line 747
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->adapter:Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;

    invoke-virtual {v0, p1}, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->setIndexBadgeManagedByBinder(Z)V

    .line 749
    :cond_9
    return-void
.end method

.method public setInterceptCurrentVideoClick(Z)V
    .locals 0

    .prologue
    .line 784
    iput-boolean p1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->interceptCurrentVideoClick:Z

    .line 785
    return-void
.end method

.method public setNavTagSelectedPosition(I)V
    .locals 1

    .prologue
    .line 1493
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    if-eqz v0, :cond_9

    .line 1494
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    invoke-virtual {v0, p1}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->setSelectedPosition(I)V

    .line 1496
    :cond_9
    return-void
.end method

.method public setOnFocusExitListener(Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnFocusExitListener;)V
    .locals 0

    .prologue
    .line 1665
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->focusExitListener:Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnFocusExitListener;

    .line 1666
    return-void
.end method

.method public setOnItemFocusedListener(Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnItemFocusedListener;)V
    .locals 0

    .prologue
    .line 1407
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->itemFocusedListener:Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnItemFocusedListener;

    .line 1408
    return-void
.end method

.method public setOnNavTagClickListener(Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnNavTagClickListener;)V
    .locals 0

    .prologue
    .line 1415
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagClickListener:Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnNavTagClickListener;

    .line 1416
    return-void
.end method

.method public setOnNavTagFocusListener(Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnNavTagFocusListener;)V
    .locals 0

    .prologue
    .line 1411
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagFocusListener:Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnNavTagFocusListener;

    .line 1412
    return-void
.end method

.method public setOnNavTagScrollListener(Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnNavTagScrollListener;)V
    .locals 0

    .prologue
    .line 1669
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagScrollListener:Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnNavTagScrollListener;

    .line 1670
    return-void
.end method

.method public setOnVideoCardClickListener(Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnVideoCardClickListener;)V
    .locals 0

    .prologue
    .line 1661
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->videoCardClickListener:Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnVideoCardClickListener;

    .line 1662
    return-void
.end method

.method public setOnVideoClickListener(Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnVideoClickListener;)V
    .locals 0

    .prologue
    .line 1403
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->videoClickListener:Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnVideoClickListener;

    .line 1404
    return-void
.end method

.method public setSectionId(I)V
    .locals 0

    .prologue
    .line 1374
    iput p1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->sectionId:I

    .line 1375
    return-void
.end method

.method public setShowIndexBadge(Z)V
    .locals 1

    .prologue
    .line 736
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->adapter:Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;

    if-eqz v0, :cond_9

    .line 737
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->adapter:Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;

    invoke-virtual {v0, p1}, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->setShowIndexBadge(Z)V

    .line 739
    :cond_9
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 716
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->titleView:Landroid/widget/TextView;

    if-eqz v0, :cond_b

    if-eqz p1, :cond_b

    .line 717
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->titleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 719
    :cond_b
    return-void
.end method

.method public setTitle(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 709
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

    .line 710
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->titleView:Landroid/widget/TextView;

    if-eqz v1, :cond_28

    if-eqz p1, :cond_28

    .line 711
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->titleView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 713
    :cond_28
    return-void
.end method

.method public setupBottomMenuFocusBoundary()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 1573
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setSoundEffectsEnabled(Z)V

    .line 1574
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$e;)V

    .line 1575
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setOverScrollMode(I)V

    .line 1577
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_25

    .line 1578
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setSoundEffectsEnabled(Z)V

    .line 1579
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$e;)V

    .line 1580
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setOverScrollMode(I)V

    .line 1582
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
    .line 1443
    iput p2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->groupSize:I

    .line 1444
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    if-nez v0, :cond_b

    .line 1456
    :cond_a
    :goto_a
    return-void

    .line 1448
    :cond_b
    if-eqz p1, :cond_25

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_25

    .line 1449
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->setCustomTags(Ljava/util/List;I)V

    .line 1450
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 1451
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    goto :goto_a

    .line 1454
    :cond_25
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    goto :goto_a
.end method

.method public setupNavigationTags(I)V
    .locals 1

    .prologue
    .line 1419
    const/16 v0, 0xa

    invoke-virtual {p0, p1, v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setupNavigationTags(II)V

    .line 1420
    return-void
.end method

.method public setupNavigationTags(II)V
    .locals 1

    .prologue
    .line 1423
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setupNavigationTags(IILcom/bilibili/tv/ui/video/widget/NavigationTagBinder;)V

    .line 1424
    return-void
.end method

.method public setupNavigationTags(IILcom/bilibili/tv/ui/video/widget/NavigationTagBinder;)V
    .locals 2

    .prologue
    .line 1427
    iput p2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->groupSize:I

    .line 1428
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    if-nez v0, :cond_b

    .line 1440
    :cond_a
    :goto_a
    return-void

    .line 1432
    :cond_b
    if-le p1, p2, :cond_1e

    .line 1433
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->setTags(IILcom/bilibili/tv/ui/video/widget/NavigationTagBinder;)V

    .line 1434
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 1435
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    goto :goto_a

    .line 1438
    :cond_1e
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    goto :goto_a
.end method

.method public syncAdapterCurrentState()V
    .locals 4

    .prologue
    .line 763
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->adapter:Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;

    if-eqz v0, :cond_20

    .line 764
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->adapter:Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;

    iget-wide v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->currentVideoId:J

    invoke-virtual {v0, v2, v3}, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->setCurrentVideoId(J)V

    .line 765
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->adapter:Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;

    iget-wide v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->currentCid:J

    invoke-virtual {v0, v2, v3}, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->setCurrentCid(J)V

    .line 766
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->adapter:Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;

    iget v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->currentSeasonId:I

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->setCurrentSeasonId(I)V

    .line 767
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->adapter:Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;

    iget-wide v2, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->currentPlayingCid:J

    invoke-virtual {v0, v2, v3}, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->setCurrentPlayingCid(J)V

    .line 769
    :cond_20
    return-void
.end method

.method public updateNavTagSelection(I)V
    .locals 2

    .prologue
    .line 1463
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1473
    :cond_c
    :goto_c
    return-void

    .line 1467
    :cond_d
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    invoke-virtual {v0, p1}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->getGroupIndexForVideoPosition(I)I

    move-result v0

    .line 1469
    if-ltz v0, :cond_c

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    invoke-virtual {v1}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->getTagCount()I

    move-result v1

    if-ge v0, v1, :cond_c

    .line 1470
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    invoke-virtual {v1, v0}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->setSelectedPosition(I)V

    .line 1471
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->navTagAdapter:Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    invoke-virtual {v1, v0}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->scrollToPositionWithOffset(I)V

    goto :goto_c
.end method
