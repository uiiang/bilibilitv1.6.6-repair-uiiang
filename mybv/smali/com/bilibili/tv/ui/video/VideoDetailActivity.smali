.class public final Lcom/bilibili/tv/ui/video/VideoDetailActivity;
.super Lcom/bilibili/tv/ui/base/BaseActivity;
.source "VideoDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Lbl/wf;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bilibili/tv/ui/video/VideoDetailActivity$SectionBuildTask;,
        Lcom/bilibili/tv/ui/video/VideoDetailActivity$g;,
        Lcom/bilibili/tv/ui/video/VideoDetailActivity$EntryType;,
        Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;,
        Lcom/bilibili/tv/ui/video/VideoDetailActivity$d;,
        Lcom/bilibili/tv/ui/video/VideoDetailActivity$b;,
        Lcom/bilibili/tv/ui/video/VideoDetailActivity$j;,
        Lcom/bilibili/tv/ui/video/VideoDetailActivity$k;,
        Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonSectionView;,
        Lcom/bilibili/tv/ui/video/VideoDetailActivity$PgcLoadCallback;,
        Lcom/bilibili/tv/ui/video/VideoDetailActivity$PgcFollowResponse;,
        Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonFavResponse;,
        Lcom/bilibili/tv/ui/video/VideoDetailActivity$a;,
        Lcom/bilibili/tv/ui/video/VideoDetailActivity$AddToViewResponse;,
        Lcom/bilibili/tv/ui/video/VideoDetailActivity$l;,
        Lcom/bilibili/tv/ui/video/VideoDetailActivity$m;,
        Lcom/bilibili/tv/ui/video/VideoDetailActivity$LikeResponse;,
        Lcom/bilibili/tv/ui/video/VideoDetailActivity$CoinResponse;,
        Lcom/bilibili/tv/ui/video/VideoDetailActivity$TripleResponse;,
        Lcom/bilibili/tv/ui/video/VideoDetailActivity$h;,
        Lcom/bilibili/tv/ui/video/VideoDetailActivity$c;,
        Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;,
        Lcom/bilibili/tv/ui/video/VideoDetailActivity$BiliFavoriteBoxResponse;
    }
.end annotation


# static fields
.field private static final C:Ljava/lang/String; = "VideoDetailActivity"

.field public static final Companion:Lcom/bilibili/tv/ui/video/VideoDetailActivity$a;

.field private static final D:Ljava/lang/String; = "bundle_ac_id"

.field private static final E:I = 0x6

.field private static final ENABLE_BANGUMI_JUMP:Z = false

.field private static final F:I = 0xc

.field private static final FOCUS_TAG:Ljava/lang/String; = "VideoDetailFocus"

.field private static final G:I = 0x2752

.field private static final H:I = 0x2753

.field private static final LIST_TYPE_EPISODES_VIDEO:I = 0x2

.field private static final LIST_TYPE_EP_LAYOUT:I = 0x1

.field private static final LIST_TYPE_NAV_TAG:I = 0x6

.field private static final LIST_TYPE_RELATE_VIDEO:I = 0x3

.field private static final LIST_TYPE_SEASON_SECTION:I = 0x5

.field private static final LIST_TYPE_TAG:I = 0x4

.field private static final LOAD_PERF_TAG:Ljava/lang/String; = "LoadPerf"

.field private static final LOCAL_PROGRESS_PROTECT_MS:J = 0x3a98L

.field private static final REQUEST_CODE_PLAY_VIDEO:I = 0x2754

.field private static final SEASON_ID_KEY:Ljava/lang/String; = "bundle_season_id"

.field private static final SEASON_SECTION_BUILD_INTERVAL_MS:J = 0x20L

.field private static final STATE_HAS_HISTORY:I = 0x1

.field private static final STATE_LOADING:I = 0x0

.field private static final STATE_NO_HISTORY:I = 0x2

.field public static sNoHistoryPlayMode:Z


# instance fields
.field private A:Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;

.field private B:Z

.field private autoPlayAfterLoad:Z

.field private autoPlayTriggered:Z

.field private b:Landroid/widget/ImageView;

.field private blockEpisodeAutoFocus:Z

.field private cc:Landroid/widget/TextView;

.field private chargingExclusiveTag:Landroid/widget/TextView;

.field private currentSeasonId:J

.field private e:Landroid/widget/TextView;

.field private epLayoutFocusPosition:I

.field private episodesCardAdapter:Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;

.field private episodesVideoFocusPosition:I

.field public episodes_title:Landroid/widget/TextView;

.field public episodes_video:Landroid/support/v7/widget/RecyclerView;

.field private expandBtn:Lcom/bilibili/tv/widget/DrawLinearLayout;

.field private ff:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private gradientMaskView:Landroid/view/View;

.field private hh:Landroid/widget/TextView;

.field private historyBtnProgress:Landroid/widget/TextView;

.field private historyPlayBtn:Lcom/bilibili/tv/widget/DrawTextView;

.field private historyPlayBtnLayout:Lcom/bilibili/tv/widget/ProgressPlayButton;

.field private i:Landroid/widget/TextView;

.field private infoBtn:Lcom/bilibili/tv/widget/DrawLinearLayout;

.field private interactionVideoTag:Landroid/widget/TextView;

.field private isBlurLoaded:Z

.field private isContentHidden:Z

.field private isPgcFollowed:Z

.field private isSeasonFav:Z

.field private j:Lcom/bilibili/tv/widget/DrawLinearLayout;

.field private k:Landroid/widget/ImageView;

.field private l:Landroid/widget/TextView;

.field private loadPerfStartMs:J

.field private localProgressProtectedUntilMs:J

.field private m:Landroid/view/View;

.field private mEntryType:Lcom/bilibili/tv/ui/video/VideoDetailActivity$EntryType;

.field private mHistoryResolved:Z

.field private mIsPgcMode:Z

.field private mPgcInfo:Lcom/bilibili/tv/api/video/PgcInfo;

.field private mSeasonId:Ljava/lang/String;

.field private n:Landroid/support/v7/widget/RecyclerView;

.field private noHistoryPlayBtn:Lcom/bilibili/tv/widget/DrawTextView;

.field private noHistoryPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

.field private noHistoryPlayCheckBox:Landroid/widget/CheckBox;

.field private o:Landroid/support/v7/widget/RecyclerView;

.field private p:Lcom/bilibili/tv/ui/base/LoadingImageView;

.field private pendingSectionBuildRunnable:Ljava/lang/Runnable;

.field private pgcArea:Landroid/widget/TextView;

.field private pgcInfoContainer:Landroid/widget/LinearLayout;

.field private pgcNewEp:Landroid/widget/TextView;

.field private pgcRating:Landroid/widget/TextView;

.field private pgcType:Landroid/widget/TextView;

.field private preloadCoverUrl:Ljava/lang/String;

.field private q:Landroid/widget/FrameLayout;

.field private r:Landroid/support/v7/widget/RecyclerView;

.field private rePlayBtn:Lcom/bilibili/tv/widget/DrawTextView;

.field private rePlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

.field private relateBinder:Lcom/bilibili/tv/ui/video/widget/BiliVideoDetailBinder;

.field private relateCardAdapter:Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;

.field private relateVideoFocusPosition:I

.field private s:J

.field private scrollView:Landroid/widget/ScrollView;

.field private seasonBadgesLoadedSeasonId:J

.field private seasonSectionFocusPositions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private seasonSectionNavTagFocusPositions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private seasonSectionViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonSectionView;",
            ">;"
        }
    .end annotation
.end field

.field public seasonsContainer:Landroid/widget/LinearLayout;

.field private staffContainer:Landroid/widget/LinearLayout;

.field private subscribeBtn:Lcom/bilibili/tv/widget/DrawLinearLayout;

.field private subscribeImg:Landroid/widget/ImageView;

.field private subscribeText:Landroid/widget/TextView;

.field private t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;",
            ">;"
        }
    .end annotation
.end field

.field private tagViewFocusPosition:I

.field private titleSection:Landroid/widget/LinearLayout;

.field private u:Lcom/bilibili/tv/api/video/BiliVideoDetail;

.field private ugcSeasonSections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/tv/ui/video/widget/VideoListSection;",
            ">;"
        }
    .end annotation
.end field

.field private uperContainer:Landroid/widget/LinearLayout;

.field private videoListNavigator:Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;

.field private w:Lbl/add;

.field private watchLaterBtn:Lcom/bilibili/tv/widget/DrawLinearLayout;

.field private x:Lcom/bilibili/tv/ui/video/VideoDetailActivity$g;

.field private y:Z

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 151
    const/4 v0, 0x0

    sput-boolean v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->sNoHistoryPlayMode:Z

    .line 194
    new-instance v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$a;-><init>(Lbl/bbg;)V

    sput-object v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->Companion:Lcom/bilibili/tv/ui/video/VideoDetailActivity$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 98
    invoke-direct {p0}, Lcom/bilibili/tv/ui/base/BaseActivity;-><init>()V

    .line 111
    sget-object v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$EntryType;->UGC_BY_AVID:Lcom/bilibili/tv/ui/video/VideoDetailActivity$EntryType;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->mEntryType:Lcom/bilibili/tv/ui/video/VideoDetailActivity$EntryType;

    .line 156
    iput-boolean v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->isBlurLoaded:Z

    .line 158
    iput-boolean v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->mIsPgcMode:Z

    .line 179
    iput v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->epLayoutFocusPosition:I

    .line 180
    iput v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->episodesVideoFocusPosition:I

    .line 181
    iput v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->relateVideoFocusPosition:I

    .line 182
    iput v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->tagViewFocusPosition:I

    .line 184
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonSectionFocusPositions:Ljava/util/Map;

    .line 186
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonSectionNavTagFocusPositions:Ljava/util/Map;

    .line 188
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->blockEpisodeAutoFocus:Z

    .line 190
    iput-boolean v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->isContentHidden:Z

    .line 192
    iput-boolean v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->autoPlayAfterLoad:Z

    .line 193
    iput-boolean v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->autoPlayTriggered:Z

    .line 211
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->localProgressProtectedUntilMs:J

    .line 218
    iput-boolean v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->mHistoryResolved:Z

    .line 222
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->loadPerfStartMs:J

    .line 343
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonSectionViews:Ljava/util/List;

    .line 344
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->ugcSeasonSections:Ljava/util/List;

    .line 346
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonBadgesLoadedSeasonId:J

    return-void
.end method

.method private final a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 2951
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2955
    :goto_6
    return-void

    .line 2954
    :cond_7
    sget-object v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->Companion:Lcom/bilibili/tv/ui/video/VideoDetailActivity$a;

    invoke-virtual {v0, p1, p2}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$a;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_6
.end method

.method private final a(Lcom/bilibili/tv/api/video/BiliVideoDetail;)Z
    .locals 2

    .prologue
    .line 4020
    const-string v0, "BangumiJump"

    const-string v1, "ENABLE_BANGUMI_JUMP is false, skip jump"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4021
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic access$000(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->ugcSeasonSections:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Landroid/support/v7/widget/RecyclerView;I)Landroid/view/View;
    .locals 1

    .prologue
    .line 98
    invoke-direct {p0, p1, p2}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->restoreFocusPosition(Landroid/support/v7/widget/RecyclerView;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$102(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->pendingSectionBuildRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/support/v7/widget/RecyclerView;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->o:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->epLayoutFocusPosition:I

    return v0
.end method

.method static synthetic access$1300(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->relateVideoFocusPosition:I

    return v0
.end method

.method static synthetic access$1302(Lcom/bilibili/tv/ui/video/VideoDetailActivity;I)I
    .locals 0

    .prologue
    .line 98
    iput p1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->relateVideoFocusPosition:I

    return p1
.end method

.method static synthetic access$1400(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/support/v7/widget/RecyclerView;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->r:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->episodesVideoFocusPosition:I

    return v0
.end method

.method static synthetic access$1502(Lcom/bilibili/tv/ui/video/VideoDetailActivity;I)I
    .locals 0

    .prologue
    .line 98
    iput p1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->episodesVideoFocusPosition:I

    return p1
.end method

.method static synthetic access$1600(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->refreshNoHistoryLabel()V

    return-void
.end method

.method static synthetic access$1700(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/widget/ScrollView;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->scrollView:Landroid/widget/ScrollView;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->scrollToViewIfNeeded(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->staffContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$200(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->loadPerf(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->resetStaffNameVisibility()V

    return-void
.end method

.method static synthetic access$2100(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/api/video/BiliVideoDetail;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->u:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/BiliVideoDetail;)Lcom/bilibili/tv/api/video/BiliVideoDetail;
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->u:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->q(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->p(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Z
    .locals 1

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->mHistoryResolved:Z

    return v0
.end method

.method static synthetic access$2402(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Z)Z
    .locals 0

    .prologue
    .line 98
    iput-boolean p1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->mHistoryResolved:Z

    return p1
.end method

.method static synthetic access$2500(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)J
    .locals 2

    .prologue
    .line 98
    iget-wide v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->s:J

    return-wide v0
.end method

.method static synthetic access$2502(Lcom/bilibili/tv/ui/video/VideoDetailActivity;J)J
    .locals 1

    .prologue
    .line 98
    iput-wide p1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->s:J

    return-wide p1
.end method

.method static synthetic access$2600(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/BiliVideoDetail;J)I
    .locals 2

    .prologue
    .line 98
    invoke-direct {p0, p1, p2, p3}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->getDurationForCid(Lcom/bilibili/tv/api/video/BiliVideoDetail;J)I

    move-result v0

    return v0
.end method

.method static synthetic access$2700(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Z
    .locals 1

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->isLocalProgressProtected()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2800(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/BiliVideoDetail;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0, p1, p2}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->fallbackLoadHistory(Lcom/bilibili/tv/api/video/BiliVideoDetail;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/bilibili/tv/ui/video/VideoDetailActivity;JII)I
    .locals 1

    .prologue
    .line 98
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->normalizeFinishedProgress(JII)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->refreshVisualOrder()V

    return-void
.end method

.method static synthetic access$3000(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/api/video/PgcInfo;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->mPgcInfo:Lcom/bilibili/tv/api/video/PgcInfo;

    return-object v0
.end method

.method static synthetic access$3002(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/PgcInfo;)Lcom/bilibili/tv/api/video/PgcInfo;
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->mPgcInfo:Lcom/bilibili/tv/api/video/PgcInfo;

    return-object p1
.end method

.method static synthetic access$3102(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Z)Z
    .locals 0

    .prologue
    .line 98
    iput-boolean p1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->isPgcFollowed:Z

    return p1
.end method

.method static synthetic access$3200(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/PgcInfo;)Lcom/bilibili/tv/api/video/BiliVideoDetail;
    .locals 1

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->convertPgcToBiliVideoDetail(Lcom/bilibili/tv/api/video/PgcInfo;)Lcom/bilibili/tv/api/video/BiliVideoDetail;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3300(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->A:Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/PgcInfo;)V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->showPgcInfo(Lcom/bilibili/tv/api/video/PgcInfo;)V

    return-void
.end method

.method static synthetic access$3500(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->updateSubscribeButtonUI()V

    return-void
.end method

.method static synthetic access$3600(Lcom/bilibili/tv/ui/video/VideoDetailActivity;I)V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->loadPgcRelatedVideos(I)V

    return-void
.end method

.method static synthetic access$3700(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/widget/CheckBox;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->noHistoryPlayCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/BiliVideoDetail;JI)V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->playVideo(Lcom/bilibili/tv/api/video/BiliVideoDetail;JI)V

    return-void
.end method

.method static synthetic access$3902(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Z)Z
    .locals 0

    .prologue
    .line 98
    iput-boolean p1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->isSeasonFav:Z

    return p1
.end method

.method static synthetic access$400(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->onDownloadButtonClick()V

    return-void
.end method

.method static synthetic access$4000(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/BiliVideoDetail;)V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->updateHistoryDisplay(Lcom/bilibili/tv/api/video/BiliVideoDetail;)V

    return-void
.end method

.method static synthetic access$4100(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/widget/ProgressPlayButton;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/ProgressPlayButton;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/BiliVideoDetail;Lcom/bilibili/tv/api/video/PgcInfo;)V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0, p1, p2}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->updateBiliVideoDetailWithPgcInfo(Lcom/bilibili/tv/api/video/BiliVideoDetail;Lcom/bilibili/tv/api/video/PgcInfo;)V

    return-void
.end method

.method static synthetic access$4300(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->m:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/ui/base/LoadingImageView;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->p:Lcom/bilibili/tv/ui/base/LoadingImageView;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->gradientMaskView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->cc:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->i:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/BiliVideoDetail;)V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->updateStaffDisplay(Lcom/bilibili/tv/api/video/BiliVideoDetail;)V

    return-void
.end method

.method static synthetic access$4900(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/BiliVideoDetail;)V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->updateBasicVideoInfo(Lcom/bilibili/tv/api/video/BiliVideoDetail;)V

    return-void
.end method

.method static synthetic access$500(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->onSubscribeButtonClick()V

    return-void
.end method

.method static synthetic access$5000(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/BiliVideoDetail;)V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->initDefaultPlayButtons(Lcom/bilibili/tv/api/video/BiliVideoDetail;)V

    return-void
.end method

.method static synthetic access$5100(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/BiliVideoDetail;)V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->loadArchiveRelation(Lcom/bilibili/tv/api/video/BiliVideoDetail;)V

    return-void
.end method

.method static synthetic access$5200(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/BiliVideoDetail;)V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->loadHistory(Lcom/bilibili/tv/api/video/BiliVideoDetail;)V

    return-void
.end method

.method static synthetic access$5300(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/PgcInfo$Episode;I)Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;
    .locals 1

    .prologue
    .line 98
    invoke-direct {p0, p1, p2}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->convertEpisodeToPage(Lcom/bilibili/tv/api/video/PgcInfo$Episode;I)Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5400(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/BiliVideoDetail;J)I
    .locals 2

    .prologue
    .line 98
    invoke-direct {p0, p1, p2, p3}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->calcPageProgress(Lcom/bilibili/tv/api/video/BiliVideoDetail;J)I

    move-result v0

    return v0
.end method

.method static synthetic access$5500(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/PgcInfo$Section;I)V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0, p1, p2}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->createPgcSectionView(Lcom/bilibili/tv/api/video/PgcInfo$Section;I)V

    return-void
.end method

.method static synthetic access$5600(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonSectionFocusPositions:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$5700(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonSectionViews:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$5800(Lcom/bilibili/tv/ui/video/VideoDetailActivity;I)Lcom/bilibili/tv/ui/video/widget/VideoListSection;
    .locals 1

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->findVideoListSection(I)Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5900(Lcom/bilibili/tv/ui/video/VideoDetailActivity;I)I
    .locals 1

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->getSeasonSectionFocusPosition(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->showInteractionButtons()V

    return-void
.end method

.method static synthetic access$6000(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/widget/DrawLinearLayout;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->rePlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    return-object v0
.end method

.method static synthetic access$6100(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonSectionNavTagFocusPositions:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$6202(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Z)Z
    .locals 0

    .prologue
    .line 98
    iput-boolean p1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->B:Z

    return p1
.end method

.method static synthetic access$6300(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Z
    .locals 1

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->isAnyInteractionButtonFocused()Z

    move-result v0

    return v0
.end method

.method static synthetic access$6400(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->hideInteractionButtons()V

    return-void
.end method

.method static synthetic access$6700(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Z
    .locals 1

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->blockEpisodeAutoFocus:Z

    return v0
.end method

.method static synthetic access$6800(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->saveSearchHistory(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6900(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/BiliVideoDetail;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0, p1, p2}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->applySeasonBadges(Lcom/bilibili/tv/api/video/BiliVideoDetail;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$700(Lcom/bilibili/tv/ui/video/VideoDetailActivity;I)Landroid/view/View;
    .locals 1

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7002(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Z)Z
    .locals 0

    .prologue
    .line 98
    iput-boolean p1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->y:Z

    return p1
.end method

.method static synthetic access$7100(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->b:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$7200(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/ui/video/VideoDetailActivity$EntryType;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->mEntryType:Lcom/bilibili/tv/ui/video/VideoDetailActivity$EntryType;

    return-object v0
.end method

.method static synthetic access$7300(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/BiliVideoDetail;)Z
    .locals 1

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->isPgcVideo(Lcom/bilibili/tv/api/video/BiliVideoDetail;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$7400(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/BiliVideoDetail;)V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->loadPgcInfo(Lcom/bilibili/tv/api/video/BiliVideoDetail;)V

    return-void
.end method

.method static synthetic access$7600(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/BiliVideoDetail;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0, p1, p2}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->requestHistoryForUgc(Lcom/bilibili/tv/api/video/BiliVideoDetail;Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$7700(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/widget/DrawLinearLayout;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->subscribeBtn:Lcom/bilibili/tv/widget/DrawLinearLayout;

    return-object v0
.end method

.method static synthetic access$7802(Lcom/bilibili/tv/ui/video/VideoDetailActivity;J)J
    .locals 1

    .prologue
    .line 98
    iput-wide p1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->currentSeasonId:J

    return-wide p1
.end method

.method static synthetic access$7900(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->interactionVideoTag:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/support/v7/widget/RecyclerView;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->n:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method static synthetic access$8000(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->chargingExclusiveTag:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$8100(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->uperContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$8200(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->e:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$8300(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->ff:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$8400(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/BiliVideoDetail;)V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->startSeasonBadgesLoad(Lcom/bilibili/tv/api/video/BiliVideoDetail;)V

    return-void
.end method

.method static synthetic access$8500(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Z
    .locals 1

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->autoPlayAfterLoad:Z

    return v0
.end method

.method static synthetic access$8600(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Z
    .locals 1

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->autoPlayTriggered:Z

    return v0
.end method

.method static synthetic access$8602(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Z)Z
    .locals 0

    .prologue
    .line 98
    iput-boolean p1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->autoPlayTriggered:Z

    return p1
.end method

.method static synthetic access$8700(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->startFramePerf(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$8800(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/ui/video/VideoDetailActivity$g;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->x:Lcom/bilibili/tv/ui/video/VideoDetailActivity$g;

    return-object v0
.end method

.method static synthetic access$8900(Lcom/bilibili/tv/ui/video/VideoDetailActivity;I)Landroid/view/View;
    .locals 1

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->tagViewFocusPosition:I

    return v0
.end method

.method static synthetic access$9000(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->g:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$9100(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Z
    .locals 1

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->mIsPgcMode:Z

    return v0
.end method

.method static synthetic access$9200(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->videoListNavigator:Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;

    return-object v0
.end method

.method static synthetic access$9300(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->cancelPendingSectionBuilds()V

    return-void
.end method

.method static synthetic access$9500(Lcom/bilibili/tv/ui/video/VideoDetailActivity;ILcom/bilibili/tv/ui/video/VideoDetailActivity$SectionBuildTask;)V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0, p1, p2}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->scheduleRemainingSectionBuilds(ILcom/bilibili/tv/ui/video/VideoDetailActivity$SectionBuildTask;)V

    return-void
.end method

.method static synthetic access$9600(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/ui/video/widget/VideoListSection;I)V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0, p1, p2}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->setupNavigationTagsForSection(Lcom/bilibili/tv/ui/video/widget/VideoListSection;I)V

    return-void
.end method

.method static synthetic access$9700(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->hh:Landroid/widget/TextView;

    return-object v0
.end method

.method private addStaffView(Landroid/widget/LinearLayout;Ljava/lang/String;JLjava/lang/String;II)V
    .locals 7

    .prologue
    .line 3316
    new-instance v2, Lcom/bilibili/tv/widget/DrawLinearLayout;

    invoke-direct {v2, p0}, Lcom/bilibili/tv/widget/DrawLinearLayout;-><init>(Landroid/content/Context;)V

    .line 3317
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setOrientation(I)V

    .line 3318
    const/16 v0, 0x10

    invoke-virtual {v2, v0}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setGravity(I)V

    .line 3319
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setFocusable(Z)V

    .line 3320
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setFocusableInTouchMode(Z)V

    .line 3321
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setClipChildren(Z)V

    .line 3322
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setClipToPadding(Z)V

    .line 3323
    const v0, 0x7f0700e7

    invoke-virtual {v2, v0}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setUpDrawable(I)V

    .line 3324
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060085

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 3325
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f060377

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 3326
    invoke-virtual {v2, v0, v1, v0, v1}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setPadding(IIII)V

    .line 3328
    new-instance v0, Lcom/bilibili/tv/widget/CircleImageView;

    invoke-direct {v0, p0}, Lcom/bilibili/tv/widget/CircleImageView;-><init>(Landroid/content/Context;)V

    .line 3329
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f060163

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 3330
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 3331
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f060299

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 3332
    iput v1, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 3333
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/CircleImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 3334
    const/high16 v1, 0x7f0b0000

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/CircleImageView;->setImageResource(I)V

    .line 3335
    if-eqz p5, :cond_76

    invoke-virtual {p5}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_76

    .line 3336
    sget-object v1, Lbl/adl;->a:Lbl/adl;

    invoke-virtual {v1, p5, v0}, Lbl/adl;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 3338
    :cond_76
    invoke-virtual {v2, v0, v3}, Lcom/bilibili/tv/widget/DrawLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3340
    new-instance v5, Lcom/bilibili/tv/widget/DrawTextView;

    invoke-direct {v5, p0}, Lcom/bilibili/tv/widget/DrawTextView;-><init>(Landroid/content/Context;)V

    .line 3341
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f060136

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v5, v0, v1}, Lcom/bilibili/tv/widget/DrawTextView;->setTextSize(IF)V

    .line 3342
    const/4 v0, -0x1

    invoke-virtual {v5, v0}, Lcom/bilibili/tv/widget/DrawTextView;->setTextColor(I)V

    .line 3343
    const/16 v0, 0x11

    invoke-virtual {v5, v0}, Lcom/bilibili/tv/widget/DrawTextView;->setGravity(I)V

    .line 3344
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v5, v0}, Lcom/bilibili/tv/widget/DrawTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 3345
    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Lcom/bilibili/tv/widget/DrawTextView;->setFocusable(Z)V

    .line 3346
    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Lcom/bilibili/tv/widget/DrawTextView;->setMaxLines(I)V

    .line 3347
    const/16 v0, 0x10

    invoke-virtual {v5, v0}, Lcom/bilibili/tv/widget/DrawTextView;->setMaxEms(I)V

    .line 3348
    invoke-virtual {v5, p2}, Lcom/bilibili/tv/widget/DrawTextView;->setText(Ljava/lang/CharSequence;)V

    .line 3350
    if-nez p6, :cond_120

    const/4 v4, 0x1

    .line 3351
    :goto_ae
    const/4 v0, 0x1

    if-le p7, v0, :cond_122

    const/4 v3, 0x1

    .line 3352
    :goto_b2
    if-eqz v3, :cond_bb

    if-nez v4, :cond_bb

    .line 3353
    const/16 v0, 0x8

    invoke-virtual {v5, v0}, Lcom/bilibili/tv/widget/DrawTextView;->setVisibility(I)V

    .line 3356
    :cond_bb
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v6, -0x2

    invoke-direct {v0, v1, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 3359
    invoke-virtual {v2, v5, v0}, Lcom/bilibili/tv/widget/DrawLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3363
    new-instance v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$30;

    invoke-direct {v0, p0, p3, p4, p2}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$30;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;JLjava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3379
    new-instance v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$31;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$31;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/widget/DrawLinearLayout;ZZLcom/bilibili/tv/widget/DrawTextView;)V

    invoke-virtual {v2, v0}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 3388
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v3, -0x2

    invoke-direct {v0, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 3391
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f060299

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 3392
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 3393
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 3394
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 3395
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 3396
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setId(I)V

    .line 3397
    invoke-virtual {p1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3398
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    .line 3399
    const/4 v0, 0x0

    move v1, v0

    :goto_100
    if-ge v1, v2, :cond_140

    .line 3400
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawLinearLayout;

    .line 3401
    if-nez v1, :cond_124

    .line 3402
    invoke-virtual {v0}, Lcom/bilibili/tv/widget/DrawLinearLayout;->getId()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setNextFocusLeftId(I)V

    .line 3406
    :goto_111
    add-int/lit8 v3, v2, -0x1

    if-ne v1, v3, :cond_132

    .line 3407
    invoke-virtual {v0}, Lcom/bilibili/tv/widget/DrawLinearLayout;->getId()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setNextFocusRightId(I)V

    .line 3399
    :goto_11c
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_100

    .line 3350
    :cond_120
    const/4 v4, 0x0

    goto :goto_ae

    .line 3351
    :cond_122
    const/4 v3, 0x0

    goto :goto_b2

    .line 3404
    :cond_124
    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setNextFocusLeftId(I)V

    goto :goto_111

    .line 3409
    :cond_132
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setNextFocusRightId(I)V

    goto :goto_11c

    .line 3412
    :cond_140
    return-void
.end method

.method private final applyNoHistoryState(Lcom/bilibili/tv/api/video/BiliVideoDetail;Z)V
    .locals 10

    .prologue
    const-wide/16 v4, 0x0

    const v9, 0x7f080196

    const/4 v1, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 2068
    if-eqz p1, :cond_10a

    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mHistory:Lcom/bilibili/tv/api/video/BiliVideoDetail$History;

    if-eqz v0, :cond_10a

    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mHistory:Lcom/bilibili/tv/api/video/BiliVideoDetail$History;

    iget-wide v6, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$History;->mCid:J

    cmp-long v0, v6, v4

    if-lez v0, :cond_10a

    move v0, v1

    .line 2071
    :goto_17
    invoke-static {p0}, Lbl/abd;->get_default_no_history(Landroid/content/Context;)Z

    move-result v6

    .line 2072
    if-eqz v0, :cond_10d

    .line 2073
    sput-boolean v2, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->sNoHistoryPlayMode:Z

    .line 2074
    iget-object v7, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->noHistoryPlayCheckBox:Landroid/widget/CheckBox;

    if-eqz v7, :cond_28

    .line 2075
    iget-object v7, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->noHistoryPlayCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v7, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 2087
    :cond_28
    :goto_28
    iget-object v7, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->noHistoryPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    if-eqz v7, :cond_48

    if-nez v0, :cond_48

    .line 2088
    iget-object v7, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/ProgressPlayButton;

    if-eqz v7, :cond_37

    .line 2089
    iget-object v7, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/ProgressPlayButton;

    invoke-virtual {v7, v9}, Lcom/bilibili/tv/widget/ProgressPlayButton;->setNextFocusRightId(I)V

    .line 2091
    :cond_37
    iget-object v7, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->noHistoryPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    const v8, 0x7f0801df

    invoke-virtual {v7, v8}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setNextFocusRightId(I)V

    .line 2092
    iget-object v7, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->expandBtn:Lcom/bilibili/tv/widget/DrawLinearLayout;

    if-eqz v7, :cond_48

    .line 2093
    iget-object v7, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->expandBtn:Lcom/bilibili/tv/widget/DrawLinearLayout;

    invoke-virtual {v7, v9}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setNextFocusLeftId(I)V

    .line 2096
    :cond_48
    invoke-direct {p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->refreshNoHistoryLabel()V

    .line 2097
    const-string v7, "HistoryDebug"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[NO_HISTORY_STATE] reset="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", globalDefault="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", hasHistory="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ", historyCid="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2100
    if-eqz p1, :cond_80

    iget-object v6, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mHistory:Lcom/bilibili/tv/api/video/BiliVideoDetail$History;

    if-eqz v6, :cond_80

    .line 2101
    iget-object v4, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mHistory:Lcom/bilibili/tv/api/video/BiliVideoDetail$History;

    iget-wide v4, v4, Lcom/bilibili/tv/api/video/BiliVideoDetail$History;->mCid:J

    :cond_80
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", historySec="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2102
    if-eqz p1, :cond_11c

    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mHistory:Lcom/bilibili/tv/api/video/BiliVideoDetail$History;

    if-eqz v0, :cond_11c

    .line 2103
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mHistory:Lcom/bilibili/tv/api/video/BiliVideoDetail$History;

    iget v0, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$History;->mProgress:I

    :goto_94
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", checked="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->noHistoryPlayCheckBox:Landroid/widget/CheckBox;

    if-eqz v4, :cond_120

    iget-object v4, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->noHistoryPlayCheckBox:Landroid/widget/CheckBox;

    .line 2104
    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_120

    :goto_aa
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sNoHistoryPlayMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->sNoHistoryPlayMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", noHistVis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2106
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->noHistoryPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    if-eqz v0, :cond_122

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->noHistoryPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    invoke-virtual {v0}, Lcom/bilibili/tv/widget/DrawLinearLayout;->getVisibility()I

    move-result v0

    :goto_ca
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", histVis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2107
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/ProgressPlayButton;

    if-eqz v0, :cond_124

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/ProgressPlayButton;

    invoke-virtual {v0}, Lcom/bilibili/tv/widget/ProgressPlayButton;->getVisibility()I

    move-result v0

    :goto_de
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", replayVis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2108
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->rePlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    if-eqz v1, :cond_f2

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->rePlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    invoke-virtual {v1}, Lcom/bilibili/tv/widget/DrawLinearLayout;->getVisibility()I

    move-result v3

    :cond_f2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", avid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->s:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2097
    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2110
    return-void

    :cond_10a
    move v0, v2

    .line 2068
    goto/16 :goto_17

    .line 2077
    :cond_10d
    if-eqz p2, :cond_28

    .line 2079
    sput-boolean v6, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->sNoHistoryPlayMode:Z

    .line 2080
    iget-object v7, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->noHistoryPlayCheckBox:Landroid/widget/CheckBox;

    if-eqz v7, :cond_28

    .line 2081
    iget-object v7, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->noHistoryPlayCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v7, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_28

    .line 2103
    :cond_11c
    const/16 v0, -0x3e7

    goto/16 :goto_94

    :cond_120
    move v1, v2

    .line 2104
    goto :goto_aa

    :cond_122
    move v0, v3

    .line 2106
    goto :goto_ca

    :cond_124
    move v0, v3

    .line 2107
    goto :goto_de
.end method

.method private final applyPlayButtonVisibility(I)V
    .locals 4

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 2216
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/ProgressPlayButton;

    if-eqz v0, :cond_f

    .line 2217
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/ProgressPlayButton;

    if-nez p1, :cond_29

    move v0, v1

    :goto_c
    invoke-virtual {v3, v0}, Lcom/bilibili/tv/widget/ProgressPlayButton;->setVisibility(I)V

    .line 2219
    :cond_f
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->noHistoryPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    if-eqz v0, :cond_1c

    .line 2220
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->noHistoryPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2b

    move v0, v2

    :goto_19
    invoke-virtual {v3, v0}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setVisibility(I)V

    .line 2222
    :cond_1c
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->rePlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    if-eqz v0, :cond_28

    .line 2223
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->rePlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    const/4 v3, 0x1

    if-ne p1, v3, :cond_2d

    :goto_25
    invoke-virtual {v0, v2}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setVisibility(I)V

    .line 2225
    :cond_28
    return-void

    :cond_29
    move v0, v2

    .line 2217
    goto :goto_c

    :cond_2b
    move v0, v1

    .line 2220
    goto :goto_19

    :cond_2d
    move v2, v1

    .line 2223
    goto :goto_25
.end method

.method private applySeasonBadges(Lcom/bilibili/tv/api/video/BiliVideoDetail;Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bilibili/tv/api/video/BiliVideoDetail;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lmybl/AppSeasonBadgesLoader$Badge;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5436
    if-eqz p1, :cond_c

    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->sectionInfoList:Ljava/util/List;

    if-eqz v0, :cond_c

    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 5465
    :cond_c
    return-void

    .line 5439
    :cond_d
    const/4 v0, 0x0

    .line 5440
    iget-object v1, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->sectionInfoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :cond_15
    :goto_15
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$SectionInfo;

    .line 5441
    if-eqz v0, :cond_15

    iget-object v2, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$SectionInfo;->parsedEpisodes:Ljava/util/List;

    if-eqz v2, :cond_15

    .line 5444
    iget-object v0, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$SectionInfo;->parsedEpisodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v1

    :cond_2e
    :goto_2e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;

    .line 5445
    if-eqz v0, :cond_2e

    .line 5448
    iget-wide v6, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mAvid:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmybl/AppSeasonBadgesLoader$Badge;

    .line 5449
    if-eqz v1, :cond_2e

    iget-object v5, v1, Lmybl/AppSeasonBadgesLoader$Badge;->text:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2e

    .line 5450
    iget-object v5, v1, Lmybl/AppSeasonBadgesLoader$Badge;->text:Ljava/lang/String;

    iput-object v5, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->badgeText:Ljava/lang/String;

    .line 5451
    iget-object v1, v1, Lmybl/AppSeasonBadgesLoader$Badge;->bgColor:Ljava/lang/String;

    iput-object v1, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->badgeBgColor:Ljava/lang/String;

    .line 5452
    add-int/lit8 v2, v2, 0x1

    goto :goto_2e

    :cond_5d
    move v1, v2

    .line 5455
    goto :goto_15

    .line 5456
    :cond_5f
    const-string v0, "SeasonBadges"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "apply merged="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " total="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5457
    if-eqz v1, :cond_c

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->ugcSeasonSections:Ljava/util/List;

    if-eqz v0, :cond_c

    .line 5460
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->ugcSeasonSections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_91
    :goto_91
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    .line 5461
    if-eqz v0, :cond_91

    .line 5462
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->refreshVisibleItems()V

    goto :goto_91
.end method

.method private final b(Lcom/bilibili/tv/api/video/BiliVideoDetail;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 4040
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mRedirectUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_104

    .line 4041
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mRedirectUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 4042
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 4043
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 4045
    :cond_21
    const-string v2, "BangumiJump"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parsing redirect_url: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4046
    const-string v2, "/ss"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_90

    .line 4047
    const-string v2, "/ss"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 4048
    add-int/lit8 v2, v2, 0x3

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 4049
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move v0, v1

    .line 4050
    :goto_53
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_69

    .line 4051
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 4052
    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_69

    .line 4053
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4050
    add-int/lit8 v0, v0, 0x1

    goto :goto_53

    .line 4058
    :cond_69
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_104

    .line 4059
    const-string v0, "BangumiJump"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "extracted seasonId from /ss: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4060
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4090
    :goto_8f
    return-object v0

    .line 4062
    :cond_90
    const-string v2, "/ep"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_104

    .line 4063
    const-string v2, "/ep"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 4064
    add-int/lit8 v2, v2, 0x3

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 4065
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 4066
    :goto_a9
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_bf

    .line 4067
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 4068
    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_bf

    .line 4069
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4066
    add-int/lit8 v1, v1, 0x1

    goto :goto_a9

    .line 4074
    :cond_bf
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_104

    .line 4075
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4076
    const-string v1, "BangumiJump"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "found /ep format, epId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", need to fetch seasonId"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4077
    invoke-direct {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->fetchSeasonIdFromEpId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4078
    const-string v1, "BangumiJump"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fetched seasonId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8f

    .line 4083
    :cond_104
    if-eqz p1, :cond_12d

    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mBangumiInfo:Lcom/bilibili/tv/api/video/BiliVideoDetail$BangumiInfo;

    :goto_108
    if-eqz v0, :cond_12f

    .line 4084
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mBangumiInfo:Lcom/bilibili/tv/api/video/BiliVideoDetail$BangumiInfo;

    iget-object v0, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$BangumiInfo;->mSeasonId:Ljava/lang/String;

    .line 4085
    const-string v1, "video.mBangumiInfo.mSeasonId"

    invoke-static {v0, v1}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4086
    const-string v1, "BangumiJump"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "using mBangumiInfo.mSeasonId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8f

    .line 4083
    :cond_12d
    const/4 v0, 0x0

    goto :goto_108

    .line 4089
    :cond_12f
    const-string v0, "BangumiJump"

    const-string v1, "no seasonId found, returning empty"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4090
    const-string v0, ""

    goto/16 :goto_8f
.end method

.method private calcPageProgress(Lcom/bilibili/tv/api/video/BiliVideoDetail;J)I
    .locals 2

    .prologue
    .line 2915
    if-eqz p1, :cond_13

    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mHistory:Lcom/bilibili/tv/api/video/BiliVideoDetail$History;

    if-eqz v0, :cond_13

    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mHistory:Lcom/bilibili/tv/api/video/BiliVideoDetail$History;

    iget-wide v0, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$History;->mCid:J

    cmp-long v0, v0, p2

    if-nez v0, :cond_13

    .line 2916
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mHistory:Lcom/bilibili/tv/api/video/BiliVideoDetail$History;

    iget v0, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$History;->mProgress:I

    .line 2918
    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method private cancelPendingSectionBuilds()V
    .locals 2

    .prologue
    .line 285
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->pendingSectionBuildRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonsContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_f

    .line 286
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonsContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->pendingSectionBuildRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 288
    :cond_f
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->pendingSectionBuildRunnable:Ljava/lang/Runnable;

    .line 289
    return-void
.end method

.method private final coinVideo(II)V
    .locals 8

    .prologue
    .line 4674
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->B:Z

    if-eqz v0, :cond_5

    .line 4684
    :goto_4
    return-void

    .line 4677
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->B:Z

    .line 4678
    invoke-static {p0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v0

    .line 4679
    const-string v1, "BiliAccount.get(this)"

    invoke-static {v0, v1}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4680
    invoke-static {v0}, Lmybl/CookieUtil;->getFullCookieWithDevice(Lbl/mg;)Ljava/lang/String;

    move-result-object v7

    .line 4681
    invoke-static {v0}, Lmybl/CookieUtil;->getBiliJct(Lbl/mg;)Ljava/lang/String;

    move-result-object v6

    .line 4682
    const-class v0, Lmybl/MyBiliApiService;

    invoke-static {v0}, Lbl/vo;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmybl/MyBiliApiService;

    iget-wide v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->s:J

    move v4, p1

    move v5, p2

    invoke-interface/range {v1 .. v7}, Lmybl/MyBiliApiService;->coinVideo(JIILjava/lang/String;Ljava/lang/String;)Lbl/vp;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$CoinResponse;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$CoinResponse;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)V

    .line 4683
    invoke-virtual {v0, v1}, Lbl/vp;->a(Lretrofit2/Callback;)V

    goto :goto_4
.end method

.method private convertEpisodeToBiliVideoDetail(Lcom/bilibili/tv/api/video/PgcInfo$Episode;)Lcom/bilibili/tv/api/video/BiliVideoDetail;
    .locals 6

    .prologue
    .line 3517
    new-instance v2, Lcom/bilibili/tv/api/video/BiliVideoDetail;

    invoke-direct {v2}, Lcom/bilibili/tv/api/video/BiliVideoDetail;-><init>()V

    .line 3518
    iget-wide v0, p1, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->aid:J

    iput-wide v0, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mAvid:J

    .line 3519
    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->bvid:Ljava/lang/String;

    iput-object v0, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mBvid:Ljava/lang/String;

    .line 3520
    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->cover:Ljava/lang/String;

    iput-object v0, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mCover:Ljava/lang/String;

    .line 3521
    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->showTitle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a9

    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->showTitle:Ljava/lang/String;

    .line 3522
    :goto_1b
    iput-object v0, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mTitle:Ljava/lang/String;

    .line 3523
    iget-wide v0, p1, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->duration:J

    const-wide/16 v4, 0x3e8

    div-long/2addr v0, v4

    long-to-int v0, v0

    iput v0, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mDuration:I

    .line 3524
    iget-wide v0, p1, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->pubTime:J

    iput-wide v0, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mCreatedTimestamp:J

    .line 3525
    iput-object p1, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail;->sourceEpisode:Ljava/lang/Object;

    .line 3526
    iget-wide v0, p1, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->cid:J

    iput-wide v0, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mCid:J

    .line 3528
    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->badgeInfo:Lcom/bilibili/tv/api/video/PgcInfo$BadgeInfo;

    if-eqz v0, :cond_4f

    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->badgeInfo:Lcom/bilibili/tv/api/video/PgcInfo$BadgeInfo;

    iget-object v0, v0, Lcom/bilibili/tv/api/video/PgcInfo$BadgeInfo;->text:Ljava/lang/String;

    if-eqz v0, :cond_4f

    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->badgeInfo:Lcom/bilibili/tv/api/video/PgcInfo$BadgeInfo;

    iget-object v0, v0, Lcom/bilibili/tv/api/video/PgcInfo$BadgeInfo;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4f

    .line 3529
    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->badgeInfo:Lcom/bilibili/tv/api/video/PgcInfo$BadgeInfo;

    iget-object v0, v0, Lcom/bilibili/tv/api/video/PgcInfo$BadgeInfo;->text:Ljava/lang/String;

    iput-object v0, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail;->badgeText:Ljava/lang/String;

    .line 3530
    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->badgeInfo:Lcom/bilibili/tv/api/video/PgcInfo$BadgeInfo;

    iget-object v0, v0, Lcom/bilibili/tv/api/video/PgcInfo$BadgeInfo;->bgColor:Ljava/lang/String;

    iput-object v0, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail;->badgeBgColor:Ljava/lang/String;

    .line 3533
    :cond_4f
    new-instance v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Stat;

    invoke-direct {v0}, Lcom/bilibili/tv/api/video/BiliVideoDetail$Stat;-><init>()V

    .line 3534
    iget-object v1, p1, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->stat:Lcom/bilibili/tv/api/video/PgcInfo$EpisodeStat;

    if-eqz v1, :cond_b9

    .line 3535
    iget-object v1, p1, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->stat:Lcom/bilibili/tv/api/video/PgcInfo$EpisodeStat;

    iget-wide v4, v1, Lcom/bilibili/tv/api/video/PgcInfo$EpisodeStat;->play:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Stat;->mPlays:Ljava/lang/String;

    .line 3536
    iget-object v1, p1, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->stat:Lcom/bilibili/tv/api/video/PgcInfo$EpisodeStat;

    iget-wide v4, v1, Lcom/bilibili/tv/api/video/PgcInfo$EpisodeStat;->danmakus:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Stat;->mDanmakus:Ljava/lang/String;

    .line 3541
    :goto_6c
    iput-object v0, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mStat:Lcom/bilibili/tv/api/video/BiliVideoDetail$Stat;

    .line 3543
    new-instance v3, Lcom/bilibili/tv/api/video/BiliUser;

    invoke-direct {v3}, Lcom/bilibili/tv/api/video/BiliUser;-><init>()V

    .line 3544
    const-string v1, ""

    .line 3545
    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->statForUnity:Lcom/alibaba/fastjson/JSONObject;

    if-eqz v0, :cond_ce

    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->statForUnity:Lcom/alibaba/fastjson/JSONObject;

    const-string v4, "vt"

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ce

    .line 3546
    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->statForUnity:Lcom/alibaba/fastjson/JSONObject;

    const-string v4, "vt"

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    .line 3547
    if-eqz v4, :cond_ce

    .line 3548
    const-string v0, "pure_text"

    invoke-virtual {v4, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3549
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_c2

    .line 3559
    :cond_99
    :goto_99
    iput-object v0, v3, Lcom/bilibili/tv/api/video/BiliUser;->name:Ljava/lang/String;

    .line 3560
    iput-object v3, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mOwner:Lcom/bilibili/tv/api/video/BiliUser;

    .line 3561
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d0

    const/4 v1, 0x1

    :goto_a4
    iput-boolean v1, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail;->hideUpIcon:Z

    .line 3562
    iput-object v0, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail;->vtText:Ljava/lang/String;

    .line 3564
    return-object v2

    .line 3522
    :cond_a9
    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->longTitle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b5

    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->longTitle:Ljava/lang/String;

    goto/16 :goto_1b

    :cond_b5
    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->title:Ljava/lang/String;

    goto/16 :goto_1b

    .line 3538
    :cond_b9
    const-string v1, "0"

    iput-object v1, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Stat;->mPlays:Ljava/lang/String;

    .line 3539
    const-string v1, "0"

    iput-object v1, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Stat;->mDanmakus:Ljava/lang/String;

    goto :goto_6c

    .line 3552
    :cond_c2
    const-string v0, "text"

    invoke-virtual {v4, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3553
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_99

    :cond_ce
    move-object v0, v1

    goto :goto_99

    .line 3561
    :cond_d0
    const/4 v1, 0x0

    goto :goto_a4
.end method

.method private convertEpisodeToPage(Lcom/bilibili/tv/api/video/PgcInfo$Episode;I)Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;
    .locals 6

    .prologue
    .line 3465
    new-instance v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;

    invoke-direct {v2}, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;-><init>()V

    .line 3466
    iget-wide v0, p1, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->cid:J

    iput-wide v0, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mCid:J

    .line 3467
    iput p2, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mPage:I

    .line 3468
    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->longTitle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_aa

    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->longTitle:Ljava/lang/String;

    :goto_15
    iput-object v0, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mTitle:Ljava/lang/String;

    .line 3469
    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->link:Ljava/lang/String;

    iput-object v0, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mLink:Ljava/lang/String;

    .line 3470
    iget v0, p1, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->id:I

    int-to-long v0, v0

    iput-wide v0, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mEpisodeId:J

    .line 3471
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->mPgcInfo:Lcom/bilibili/tv/api/video/PgcInfo;

    if-eqz v0, :cond_ae

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->mPgcInfo:Lcom/bilibili/tv/api/video/PgcInfo;

    iget v0, v0, Lcom/bilibili/tv/api/video/PgcInfo;->seasonId:I

    :goto_28
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mSeasonId:Ljava/lang/String;

    .line 3472
    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->cover:Ljava/lang/String;

    iput-object v0, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mEpCover:Ljava/lang/String;

    .line 3473
    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->bvid:Ljava/lang/String;

    iput-object v0, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mBvid:Ljava/lang/String;

    .line 3474
    iget-wide v0, p1, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->duration:J

    const-wide/16 v4, 0x3e8

    div-long/2addr v0, v4

    long-to-int v0, v0

    iput v0, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->duration:I

    .line 3475
    iget-wide v0, p1, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->pubTime:J

    iput-wide v0, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->pubTime:J

    .line 3477
    const-string v1, ""

    .line 3478
    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->statForUnity:Lcom/alibaba/fastjson/JSONObject;

    if-eqz v0, :cond_bd

    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->statForUnity:Lcom/alibaba/fastjson/JSONObject;

    const-string v3, "vt"

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bd

    .line 3479
    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->statForUnity:Lcom/alibaba/fastjson/JSONObject;

    const-string v3, "vt"

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v3

    .line 3480
    if-eqz v3, :cond_bd

    .line 3481
    const-string v0, "pure_text"

    invoke-virtual {v3, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3482
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_b1

    .line 3492
    :cond_68
    :goto_68
    iput-object v0, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->subtitle:Ljava/lang/String;

    .line 3494
    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->stat:Lcom/bilibili/tv/api/video/PgcInfo$EpisodeStat;

    if-eqz v0, :cond_7a

    .line 3495
    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->stat:Lcom/bilibili/tv/api/video/PgcInfo$EpisodeStat;

    iget-wide v0, v0, Lcom/bilibili/tv/api/video/PgcInfo$EpisodeStat;->play:J

    iput-wide v0, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->plays:J

    .line 3496
    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->stat:Lcom/bilibili/tv/api/video/PgcInfo$EpisodeStat;

    iget-wide v0, v0, Lcom/bilibili/tv/api/video/PgcInfo$EpisodeStat;->danmakus:J

    iput-wide v0, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->danmakus:J

    .line 3499
    :cond_7a
    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->badgeInfo:Lcom/bilibili/tv/api/video/PgcInfo$BadgeInfo;

    if-eqz v0, :cond_9a

    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->badgeInfo:Lcom/bilibili/tv/api/video/PgcInfo$BadgeInfo;

    iget-object v0, v0, Lcom/bilibili/tv/api/video/PgcInfo$BadgeInfo;->text:Ljava/lang/String;

    if-eqz v0, :cond_9a

    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->badgeInfo:Lcom/bilibili/tv/api/video/PgcInfo$BadgeInfo;

    iget-object v0, v0, Lcom/bilibili/tv/api/video/PgcInfo$BadgeInfo;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9a

    .line 3500
    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->badgeInfo:Lcom/bilibili/tv/api/video/PgcInfo$BadgeInfo;

    iget-object v0, v0, Lcom/bilibili/tv/api/video/PgcInfo$BadgeInfo;->text:Ljava/lang/String;

    iput-object v0, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->badgeText:Ljava/lang/String;

    .line 3501
    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->badgeInfo:Lcom/bilibili/tv/api/video/PgcInfo$BadgeInfo;

    iget-object v0, v0, Lcom/bilibili/tv/api/video/PgcInfo$BadgeInfo;->bgColor:Ljava/lang/String;

    iput-object v0, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->badgeBgColor:Ljava/lang/String;

    .line 3504
    :cond_9a
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->mPgcInfo:Lcom/bilibili/tv/api/video/PgcInfo;

    if-eqz v0, :cond_a9

    .line 3505
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->mPgcInfo:Lcom/bilibili/tv/api/video/PgcInfo;

    iget v0, v0, Lcom/bilibili/tv/api/video/PgcInfo;->type:I

    .line 3506
    const/4 v1, 0x2

    if-ne v0, v1, :cond_bf

    .line 3507
    const-string v0, "movie"

    iput-object v0, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mFrom:Ljava/lang/String;

    .line 3513
    :cond_a9
    :goto_a9
    return-object v2

    .line 3468
    :cond_aa
    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->title:Ljava/lang/String;

    goto/16 :goto_15

    .line 3471
    :cond_ae
    const/4 v0, 0x0

    goto/16 :goto_28

    .line 3485
    :cond_b1
    const-string v0, "text"

    invoke-virtual {v3, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3486
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_68

    :cond_bd
    move-object v0, v1

    goto :goto_68

    .line 3509
    :cond_bf
    const-string v0, "bangumi"

    iput-object v0, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mFrom:Ljava/lang/String;

    goto :goto_a9
.end method

.method private convertPgcToBiliVideoDetail(Lcom/bilibili/tv/api/video/PgcInfo;)Lcom/bilibili/tv/api/video/BiliVideoDetail;
    .locals 10

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 1959
    new-instance v3, Lcom/bilibili/tv/api/video/BiliVideoDetail;

    invoke-direct {v3}, Lcom/bilibili/tv/api/video/BiliVideoDetail;-><init>()V

    .line 1961
    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo;->title:Ljava/lang/String;

    iput-object v0, v3, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mTitle:Ljava/lang/String;

    .line 1962
    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo;->cover:Ljava/lang/String;

    iput-object v0, v3, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mCover:Ljava/lang/String;

    .line 1963
    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo;->episodes:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/PgcInfo$Episode;

    .line 1964
    iget-wide v6, v0, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->aid:J

    iput-wide v6, v3, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mAvid:J

    .line 1965
    iget-object v1, v0, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->bvid:Ljava/lang/String;

    iput-object v1, v3, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mBvid:Ljava/lang/String;

    .line 1966
    iget v1, p1, Lcom/bilibili/tv/api/video/PgcInfo;->seasonId:I

    iput v1, v3, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mSeasonOId:I

    .line 1967
    iget-wide v6, v0, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->duration:J

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    long-to-int v1, v6

    iput v1, v3, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mDuration:I

    .line 1968
    iget-wide v0, v0, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->pubTime:J

    iput-wide v0, v3, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mCreatedTimestamp:J

    .line 1970
    new-instance v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$BangumiInfo;

    invoke-direct {v0}, Lcom/bilibili/tv/api/video/BiliVideoDetail$BangumiInfo;-><init>()V

    iput-object v0, v3, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mBangumiInfo:Lcom/bilibili/tv/api/video/BiliVideoDetail$BangumiInfo;

    .line 1971
    iget-object v0, v3, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mBangumiInfo:Lcom/bilibili/tv/api/video/BiliVideoDetail$BangumiInfo;

    iget v1, p1, Lcom/bilibili/tv/api/video/PgcInfo;->seasonId:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$BangumiInfo;->mSeasonId:Ljava/lang/String;

    .line 1972
    iget-object v0, v3, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mBangumiInfo:Lcom/bilibili/tv/api/video/BiliVideoDetail$BangumiInfo;

    iget-object v1, p1, Lcom/bilibili/tv/api/video/PgcInfo;->title:Ljava/lang/String;

    iput-object v1, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$BangumiInfo;->mTitle:Ljava/lang/String;

    .line 1974
    new-instance v0, Lcom/bilibili/tv/api/video/BiliUser;

    invoke-direct {v0}, Lcom/bilibili/tv/api/video/BiliUser;-><init>()V

    iput-object v0, v3, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mOwner:Lcom/bilibili/tv/api/video/BiliUser;

    .line 1975
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v3, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mStaffList:Ljava/util/List;

    .line 1978
    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo;->producer:Lcom/bilibili/tv/api/video/PgcInfo$Producer;

    if-eqz v0, :cond_78

    .line 1980
    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo;->producer:Lcom/bilibili/tv/api/video/PgcInfo$Producer;

    iget-object v0, v0, Lcom/bilibili/tv/api/video/PgcInfo$Producer;->list:Ljava/util/List;

    if-eqz v0, :cond_78

    move v1, v2

    .line 1981
    :goto_60
    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo;->producer:Lcom/bilibili/tv/api/video/PgcInfo$Producer;

    iget-object v0, v0, Lcom/bilibili/tv/api/video/PgcInfo$Producer;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_78

    .line 1982
    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo;->producer:Lcom/bilibili/tv/api/video/PgcInfo$Producer;

    iget-object v0, v0, Lcom/bilibili/tv/api/video/PgcInfo$Producer;->list:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/PgcInfo$ProducerInfo;

    .line 1981
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_60

    .line 1988
    :cond_78
    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo;->producer:Lcom/bilibili/tv/api/video/PgcInfo$Producer;

    if-eqz v0, :cond_12d

    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo;->producer:Lcom/bilibili/tv/api/video/PgcInfo$Producer;

    iget-object v0, v0, Lcom/bilibili/tv/api/video/PgcInfo$Producer;->list:Ljava/util/List;

    if-eqz v0, :cond_12d

    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo;->producer:Lcom/bilibili/tv/api/video/PgcInfo$Producer;

    iget-object v0, v0, Lcom/bilibili/tv/api/video/PgcInfo$Producer;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12d

    .line 1989
    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo;->producer:Lcom/bilibili/tv/api/video/PgcInfo$Producer;

    iget-object v0, v0, Lcom/bilibili/tv/api/video/PgcInfo$Producer;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_94
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/PgcInfo$ProducerInfo;

    .line 1990
    new-instance v6, Lcom/bilibili/tv/api/video/BiliVideoDetail$Staff;

    invoke-direct {v6}, Lcom/bilibili/tv/api/video/BiliVideoDetail$Staff;-><init>()V

    .line 1991
    iget-wide v8, v0, Lcom/bilibili/tv/api/video/PgcInfo$ProducerInfo;->mid:J

    iput-wide v8, v6, Lcom/bilibili/tv/api/video/BiliVideoDetail$Staff;->mid:J

    .line 1992
    iget-object v7, v0, Lcom/bilibili/tv/api/video/PgcInfo$ProducerInfo;->name:Ljava/lang/String;

    iput-object v7, v6, Lcom/bilibili/tv/api/video/BiliVideoDetail$Staff;->name:Ljava/lang/String;

    .line 1993
    iget-object v0, v0, Lcom/bilibili/tv/api/video/PgcInfo$ProducerInfo;->face:Ljava/lang/String;

    iput-object v0, v6, Lcom/bilibili/tv/api/video/BiliVideoDetail$Staff;->face:Ljava/lang/String;

    .line 1994
    iget-object v0, v3, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mStaffList:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_94

    .line 1996
    :cond_b7
    iget-object v1, v3, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mOwner:Lcom/bilibili/tv/api/video/BiliUser;

    iget-object v0, v3, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mStaffList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Staff;

    iget-wide v6, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Staff;->mid:J

    iput-wide v6, v1, Lcom/bilibili/tv/api/video/BiliUser;->mid:J

    .line 1997
    iget-object v1, v3, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mOwner:Lcom/bilibili/tv/api/video/BiliUser;

    iget-object v0, v3, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mStaffList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Staff;

    iget-object v0, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Staff;->name:Ljava/lang/String;

    iput-object v0, v1, Lcom/bilibili/tv/api/video/BiliUser;->name:Ljava/lang/String;

    .line 1998
    iget-object v1, v3, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mOwner:Lcom/bilibili/tv/api/video/BiliUser;

    iget-object v0, v3, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mStaffList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Staff;

    iget-object v0, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Staff;->face:Ljava/lang/String;

    iput-object v0, v1, Lcom/bilibili/tv/api/video/BiliUser;->face:Ljava/lang/String;

    .line 2014
    :goto_e1
    new-instance v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Stat;

    invoke-direct {v0}, Lcom/bilibili/tv/api/video/BiliVideoDetail$Stat;-><init>()V

    iput-object v0, v3, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mStat:Lcom/bilibili/tv/api/video/BiliVideoDetail$Stat;

    .line 2015
    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo;->stat:Lcom/bilibili/tv/api/video/PgcInfo$Stat;

    if-eqz v0, :cond_104

    .line 2016
    iget-object v0, v3, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mStat:Lcom/bilibili/tv/api/video/BiliVideoDetail$Stat;

    iget-object v1, p1, Lcom/bilibili/tv/api/video/PgcInfo;->stat:Lcom/bilibili/tv/api/video/PgcInfo$Stat;

    iget-wide v6, v1, Lcom/bilibili/tv/api/video/PgcInfo$Stat;->views:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Stat;->mPlays:Ljava/lang/String;

    .line 2017
    iget-object v0, v3, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mStat:Lcom/bilibili/tv/api/video/BiliVideoDetail$Stat;

    iget-object v1, p1, Lcom/bilibili/tv/api/video/PgcInfo;->stat:Lcom/bilibili/tv/api/video/PgcInfo$Stat;

    iget-wide v6, v1, Lcom/bilibili/tv/api/video/PgcInfo$Stat;->danmakus:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Stat;->mDanmakus:Ljava/lang/String;

    .line 2020
    :cond_104
    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo;->evaluate:Ljava/lang/String;

    iput-object v0, v3, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mDescription:Ljava/lang/String;

    .line 2022
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v3, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    .line 2023
    :goto_10f
    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo;->episodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_179

    .line 2024
    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo;->episodes:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/PgcInfo$Episode;

    .line 2025
    add-int/lit8 v1, v2, 0x1

    invoke-direct {p0, v0, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->convertEpisodeToPage(Lcom/bilibili/tv/api/video/PgcInfo$Episode;I)Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;

    move-result-object v0

    .line 2026
    iget-object v1, v3, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2023
    add-int/lit8 v2, v2, 0x1

    goto :goto_10f

    .line 1999
    :cond_12d
    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo;->upInfo:Lcom/bilibili/tv/api/video/PgcInfo$UpInfo;

    if-eqz v0, :cond_167

    .line 2000
    iget-object v0, v3, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mOwner:Lcom/bilibili/tv/api/video/BiliUser;

    iget-object v1, p1, Lcom/bilibili/tv/api/video/PgcInfo;->upInfo:Lcom/bilibili/tv/api/video/PgcInfo$UpInfo;

    iget-wide v6, v1, Lcom/bilibili/tv/api/video/PgcInfo$UpInfo;->mid:J

    iput-wide v6, v0, Lcom/bilibili/tv/api/video/BiliUser;->mid:J

    .line 2001
    iget-object v0, v3, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mOwner:Lcom/bilibili/tv/api/video/BiliUser;

    iget-object v1, p1, Lcom/bilibili/tv/api/video/PgcInfo;->upInfo:Lcom/bilibili/tv/api/video/PgcInfo$UpInfo;

    iget-object v1, v1, Lcom/bilibili/tv/api/video/PgcInfo$UpInfo;->name:Ljava/lang/String;

    iput-object v1, v0, Lcom/bilibili/tv/api/video/BiliUser;->name:Ljava/lang/String;

    .line 2002
    iget-object v0, v3, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mOwner:Lcom/bilibili/tv/api/video/BiliUser;

    iget-object v1, p1, Lcom/bilibili/tv/api/video/PgcInfo;->upInfo:Lcom/bilibili/tv/api/video/PgcInfo$UpInfo;

    iget-object v1, v1, Lcom/bilibili/tv/api/video/PgcInfo$UpInfo;->face:Ljava/lang/String;

    iput-object v1, v0, Lcom/bilibili/tv/api/video/BiliUser;->face:Ljava/lang/String;

    .line 2003
    new-instance v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Staff;

    invoke-direct {v0}, Lcom/bilibili/tv/api/video/BiliVideoDetail$Staff;-><init>()V

    .line 2004
    iget-object v1, p1, Lcom/bilibili/tv/api/video/PgcInfo;->upInfo:Lcom/bilibili/tv/api/video/PgcInfo$UpInfo;

    iget-wide v6, v1, Lcom/bilibili/tv/api/video/PgcInfo$UpInfo;->mid:J

    iput-wide v6, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Staff;->mid:J

    .line 2005
    iget-object v1, p1, Lcom/bilibili/tv/api/video/PgcInfo;->upInfo:Lcom/bilibili/tv/api/video/PgcInfo$UpInfo;

    iget-object v1, v1, Lcom/bilibili/tv/api/video/PgcInfo$UpInfo;->name:Ljava/lang/String;

    iput-object v1, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Staff;->name:Ljava/lang/String;

    .line 2006
    iget-object v1, p1, Lcom/bilibili/tv/api/video/PgcInfo;->upInfo:Lcom/bilibili/tv/api/video/PgcInfo$UpInfo;

    iget-object v1, v1, Lcom/bilibili/tv/api/video/PgcInfo$UpInfo;->face:Ljava/lang/String;

    iput-object v1, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Staff;->face:Ljava/lang/String;

    .line 2007
    iget-object v1, v3, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mStaffList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_e1

    .line 2009
    :cond_167
    iget-object v0, v3, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mOwner:Lcom/bilibili/tv/api/video/BiliUser;

    iput-wide v4, v0, Lcom/bilibili/tv/api/video/BiliUser;->mid:J

    .line 2010
    iget-object v0, v3, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mOwner:Lcom/bilibili/tv/api/video/BiliUser;

    const-string v1, ""

    iput-object v1, v0, Lcom/bilibili/tv/api/video/BiliUser;->name:Ljava/lang/String;

    .line 2011
    iget-object v0, v3, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mOwner:Lcom/bilibili/tv/api/video/BiliUser;

    const-string v1, ""

    iput-object v1, v0, Lcom/bilibili/tv/api/video/BiliUser;->face:Ljava/lang/String;

    goto/16 :goto_e1

    .line 2029
    :cond_179
    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo;->userStatus:Lcom/bilibili/tv/api/video/PgcInfo$UserStatus;

    if-eqz v0, :cond_1b5

    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo;->userStatus:Lcom/bilibili/tv/api/video/PgcInfo$UserStatus;

    iget-object v0, v0, Lcom/bilibili/tv/api/video/PgcInfo$UserStatus;->progress:Lcom/bilibili/tv/api/video/PgcInfo$Progress;

    if-eqz v0, :cond_1b5

    .line 2030
    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo;->userStatus:Lcom/bilibili/tv/api/video/PgcInfo$UserStatus;

    iget-object v0, v0, Lcom/bilibili/tv/api/video/PgcInfo$UserStatus;->progress:Lcom/bilibili/tv/api/video/PgcInfo$Progress;

    .line 2031
    iget-wide v6, v0, Lcom/bilibili/tv/api/video/PgcInfo$Progress;->lastEpId:J

    .line 2032
    iget v2, v0, Lcom/bilibili/tv/api/video/PgcInfo$Progress;->lastTime:I

    .line 2035
    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo;->episodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_191
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/PgcInfo$Episode;

    .line 2036
    iget v8, v0, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->id:I

    int-to-long v8, v8

    cmp-long v8, v8, v6

    if-nez v8, :cond_191

    .line 2037
    iget-wide v0, v0, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->cid:J

    .line 2042
    :goto_1a6
    cmp-long v4, v0, v4

    if-lez v4, :cond_1b5

    .line 2043
    new-instance v4, Lcom/bilibili/tv/api/video/BiliVideoDetail$History;

    invoke-direct {v4}, Lcom/bilibili/tv/api/video/BiliVideoDetail$History;-><init>()V

    .line 2044
    iput-wide v0, v4, Lcom/bilibili/tv/api/video/BiliVideoDetail$History;->mCid:J

    .line 2045
    iput v2, v4, Lcom/bilibili/tv/api/video/BiliVideoDetail$History;->mProgress:I

    .line 2046
    iput-object v4, v3, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mHistory:Lcom/bilibili/tv/api/video/BiliVideoDetail$History;

    .line 2050
    :cond_1b5
    return-object v3

    :cond_1b6
    move-wide v0, v4

    goto :goto_1a6
.end method

.method private createPgcEpisodesSectionView(Lcom/bilibili/tv/api/video/PgcInfo;)V
    .locals 11

    .prologue
    const/16 v10, 0xc8

    const/16 v9, 0x8

    const/4 v8, 0x1

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 3592
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonsContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_12

    if-eqz p1, :cond_12

    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo;->episodes:Ljava/util/List;

    if-nez v0, :cond_13

    .line 3674
    :cond_12
    :goto_12
    return-void

    .line 3596
    :cond_13
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_20

    .line 3597
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3600
    :cond_20
    new-instance v3, Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    invoke-direct {v3, p0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;-><init>(Landroid/content/Context;)V

    .line 3602
    invoke-virtual {v3, v10}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setSectionId(I)V

    .line 3603
    invoke-virtual {v3, v8}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setShowIndexBadge(Z)V

    .line 3605
    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo;->episodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    .line 3606
    const-string v0, "\u9009\u96c6"

    invoke-virtual {v3, v0, v6}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setTitle(Ljava/lang/String;I)V

    .line 3608
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    .line 3609
    :goto_3c
    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo;->episodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_57

    .line 3610
    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo;->episodes:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/PgcInfo$Episode;

    .line 3611
    invoke-direct {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->convertEpisodeToBiliVideoDetail(Lcom/bilibili/tv/api/video/PgcInfo$Episode;)Lcom/bilibili/tv/api/video/BiliVideoDetail;

    move-result-object v0

    .line 3613
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3609
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3c

    .line 3616
    :cond_57
    new-instance v0, Lcom/bilibili/tv/ui/video/widget/UnifiedVideoCardBinder;

    invoke-direct {v0, v8}, Lcom/bilibili/tv/ui/video/widget/UnifiedVideoCardBinder;-><init>(I)V

    .line 3617
    invoke-virtual {v3, v7, v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setData(Ljava/util/List;Lcom/bilibili/tv/ui/video/widget/VideoCardBinder;)V

    .line 3620
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->u:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    if-eqz v0, :cond_d8

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->u:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    iget-object v0, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mHistory:Lcom/bilibili/tv/api/video/BiliVideoDetail$History;

    if-eqz v0, :cond_d8

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->u:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    iget-object v0, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mHistory:Lcom/bilibili/tv/api/video/BiliVideoDetail$History;

    iget-wide v0, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$History;->mCid:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_d8

    .line 3621
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->u:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    iget-object v0, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mHistory:Lcom/bilibili/tv/api/video/BiliVideoDetail$History;

    iget-wide v0, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$History;->mCid:J

    .line 3623
    :goto_79
    cmp-long v4, v0, v4

    if-lez v4, :cond_83

    .line 3624
    invoke-virtual {v3, v0, v1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setCurrentCid(J)V

    .line 3625
    invoke-virtual {v3, v0, v1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setCurrentPlayingCid(J)V

    .line 3627
    :cond_83
    invoke-virtual {v3}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->syncAdapterCurrentState()V

    .line 3628
    invoke-virtual {v3, v2}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setInterceptCurrentVideoClick(Z)V

    .line 3630
    new-instance v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$32;

    invoke-direct {v0, p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$32;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)V

    invoke-virtual {v3, v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setOnVideoClickListener(Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnVideoClickListener;)V

    .line 3650
    invoke-virtual {v3}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    .line 3651
    if-eqz v0, :cond_9d

    .line 3652
    const v1, 0x7f08016a

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setNextFocusUpId(I)V

    .line 3655
    :cond_9d
    new-instance v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonSectionView;

    invoke-virtual {v3}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->getTitleView()Landroid/widget/TextView;

    move-result-object v4

    invoke-direct {v1, v4, v0, v10}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonSectionView;-><init>(Landroid/widget/TextView;Landroid/support/v7/widget/RecyclerView;I)V

    .line 3656
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonSectionViews:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3657
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->ugcSeasonSections:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3658
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->videoListNavigator:Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;

    if-eqz v0, :cond_b9

    .line 3659
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->videoListNavigator:Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->registerSection(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)V

    .line 3662
    :cond_b9
    invoke-virtual {v3}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->scrollToCurrentVideo()V

    .line 3664
    invoke-direct {p0, v3, v6}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->setupNavigationTagsForSection(Lcom/bilibili/tv/ui/video/widget/VideoListSection;I)V

    .line 3666
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 3668
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->hh:Landroid/widget/TextView;

    if-eqz v0, :cond_cd

    .line 3669
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->hh:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3671
    :cond_cd
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->o:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_12

    .line 3672
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->o:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v9}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    goto/16 :goto_12

    :cond_d8
    move-wide v0, v4

    goto :goto_79
.end method

.method private createPgcSectionView(Lcom/bilibili/tv/api/video/PgcInfo$Section;I)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 3961
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonsContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_11

    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo$Section;->episodes:Ljava/util/List;

    if-eqz v0, :cond_11

    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo$Section;->episodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 4016
    :cond_11
    :goto_11
    return-void

    .line 3965
    :cond_12
    new-instance v2, Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    invoke-direct {v2, p0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;-><init>(Landroid/content/Context;)V

    .line 3967
    invoke-virtual {v2, p2}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setSectionId(I)V

    .line 3968
    invoke-virtual {v2, v5}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setShowIndexBadge(Z)V

    .line 3970
    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo$Section;->episodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 3971
    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo$Section;->title:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setTitle(Ljava/lang/String;I)V

    .line 3973
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 3974
    const/4 v0, 0x0

    move v1, v0

    :goto_2f
    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo$Section;->episodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4a

    .line 3975
    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo$Section;->episodes:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/PgcInfo$Episode;

    .line 3976
    invoke-direct {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->convertEpisodeToBiliVideoDetail(Lcom/bilibili/tv/api/video/PgcInfo$Episode;)Lcom/bilibili/tv/api/video/BiliVideoDetail;

    move-result-object v0

    .line 3977
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3974
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2f

    .line 3980
    :cond_4a
    new-instance v0, Lcom/bilibili/tv/ui/video/widget/UnifiedVideoCardBinder;

    invoke-direct {v0, v5}, Lcom/bilibili/tv/ui/video/widget/UnifiedVideoCardBinder;-><init>(I)V

    .line 3981
    invoke-virtual {v2, v4, v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setData(Ljava/util/List;Lcom/bilibili/tv/ui/video/widget/VideoCardBinder;)V

    .line 3983
    iget-wide v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->s:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-lez v0, :cond_5f

    .line 3984
    iget-wide v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->s:J

    invoke-virtual {v2, v0, v1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setCurrentVideoId(J)V

    .line 3986
    :cond_5f
    invoke-virtual {v2}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->syncAdapterCurrentState()V

    .line 3988
    new-instance v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$38;

    invoke-direct {v0, p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$38;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)V

    invoke-virtual {v2, v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setOnVideoClickListener(Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnVideoClickListener;)V

    .line 3998
    invoke-virtual {v2}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    .line 3999
    if-eqz v0, :cond_76

    .line 4000
    const v1, 0x7f08016a

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setNextFocusUpId(I)V

    .line 4003
    :cond_76
    new-instance v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonSectionView;

    invoke-virtual {v2}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->getTitleView()Landroid/widget/TextView;

    move-result-object v4

    invoke-direct {v1, v4, v0, p2}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonSectionView;-><init>(Landroid/widget/TextView;Landroid/support/v7/widget/RecyclerView;I)V

    .line 4004
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonSectionViews:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4006
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->ugcSeasonSections:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4007
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->videoListNavigator:Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;

    if-eqz v0, :cond_92

    .line 4008
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->videoListNavigator:Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->registerSection(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)V

    .line 4011
    :cond_92
    invoke-virtual {v2}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->scrollToCurrentVideo()V

    .line 4013
    invoke-direct {p0, v2, v3}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->setupNavigationTagsForSection(Lcom/bilibili/tv/ui/video/widget/VideoListSection;I)V

    .line 4015
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_11
.end method

.method private createSeasonsSectionView(Ljava/util/List;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/tv/api/video/PgcInfo$Season;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 3901
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonsContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_c

    if-eqz p1, :cond_c

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 3958
    :cond_c
    :goto_c
    return-void

    .line 3905
    :cond_d
    new-instance v1, Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;-><init>(Landroid/content/Context;)V

    .line 3907
    invoke-virtual {v1, p2}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setSectionId(I)V

    .line 3908
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setShowIndexBadge(Z)V

    .line 3910
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 3911
    const-string v0, "\u591a\u5b63\u5217\u8868"

    invoke-virtual {v1, v0, v2}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setTitle(Ljava/lang/String;I)V

    .line 3913
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3914
    const/4 v0, 0x0

    :goto_28
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_38

    .line 3915
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3914
    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    .line 3918
    :cond_38
    new-instance v0, Lcom/bilibili/tv/ui/video/widget/PgcSeasonBinder;

    invoke-direct {v0}, Lcom/bilibili/tv/ui/video/widget/PgcSeasonBinder;-><init>()V

    .line 3919
    invoke-virtual {v1, v3, v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setData(Ljava/util/List;Lcom/bilibili/tv/ui/video/widget/VideoCardBinder;)V

    .line 3921
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->mSeasonId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_51

    .line 3923
    :try_start_48
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->mSeasonId:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 3924
    invoke-virtual {v1, v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setCurrentSeasonId(I)V
    :try_end_51
    .catch Ljava/lang/NumberFormatException; {:try_start_48 .. :try_end_51} :catch_91

    .line 3928
    :cond_51
    :goto_51
    invoke-virtual {v1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->syncAdapterCurrentState()V

    .line 3930
    new-instance v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$37;

    invoke-direct {v0, p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$37;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)V

    invoke-virtual {v1, v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setOnVideoClickListener(Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnVideoClickListener;)V

    .line 3940
    invoke-virtual {v1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    .line 3941
    if-eqz v0, :cond_68

    .line 3942
    const v3, 0x7f08016a

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->setNextFocusUpId(I)V

    .line 3945
    :cond_68
    new-instance v3, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonSectionView;

    invoke-virtual {v1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->getTitleView()Landroid/widget/TextView;

    move-result-object v4

    invoke-direct {v3, v4, v0, p2}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonSectionView;-><init>(Landroid/widget/TextView;Landroid/support/v7/widget/RecyclerView;I)V

    .line 3946
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonSectionViews:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3948
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->ugcSeasonSections:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3949
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->videoListNavigator:Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;

    if-eqz v0, :cond_84

    .line 3950
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->videoListNavigator:Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->registerSection(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)V

    .line 3953
    :cond_84
    invoke-virtual {v1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->scrollToCurrentVideo()V

    .line 3955
    invoke-direct {p0, v1, v2}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->setupNavigationTagsForSection(Lcom/bilibili/tv/ui/video/widget/VideoListSection;I)V

    .line 3957
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_c

    .line 3925
    :catch_91
    move-exception v0

    goto :goto_51
.end method

.method private extractSeasonId(Lcom/bilibili/tv/api/video/BiliVideoDetail;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 2987
    if-nez p1, :cond_6

    .line 2988
    const-string v0, ""

    .line 3031
    :goto_5
    return-object v0

    .line 2990
    :cond_6
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mRedirectUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a0

    .line 2991
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mRedirectUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 2992
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 2993
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 2995
    :cond_26
    const-string v2, "/ss"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_61

    .line 2996
    const-string v2, "/ss"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 2997
    add-int/lit8 v2, v2, 0x3

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 2998
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move v0, v1

    .line 2999
    :goto_40
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_56

    .line 3000
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 3001
    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_56

    .line 3002
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2999
    add-int/lit8 v0, v0, 0x1

    goto :goto_40

    .line 3007
    :cond_56
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_a0

    .line 3008
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 3010
    :cond_61
    const-string v2, "/ep"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a0

    .line 3011
    const-string v2, "/ep"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 3012
    add-int/lit8 v2, v2, 0x3

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 3013
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 3014
    :goto_7a
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_90

    .line 3015
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 3016
    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_90

    .line 3017
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3014
    add-int/lit8 v1, v1, 0x1

    goto :goto_7a

    .line 3022
    :cond_90
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_a0

    .line 3023
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3024
    invoke-direct {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->fetchSeasonIdFromEpId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_5

    .line 3028
    :cond_a0
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mBangumiInfo:Lcom/bilibili/tv/api/video/BiliVideoDetail$BangumiInfo;

    if-eqz v0, :cond_aa

    .line 3029
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mBangumiInfo:Lcom/bilibili/tv/api/video/BiliVideoDetail$BangumiInfo;

    iget-object v0, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$BangumiInfo;->mSeasonId:Ljava/lang/String;

    goto/16 :goto_5

    .line 3031
    :cond_aa
    const-string v0, ""

    goto/16 :goto_5
.end method

.method private final fallbackLoadHistory(Lcom/bilibili/tv/api/video/BiliVideoDetail;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 2544
    new-instance v0, Lcom/bilibili/tv/api/video/VideoApiService$VideoParamsMapV2$Builder;

    iget-wide v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->s:J

    invoke-direct {v0, v2, v3}, Lcom/bilibili/tv/api/video/VideoApiService$VideoParamsMapV2$Builder;-><init>(J)V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/api/video/VideoApiService$VideoParamsMapV2$Builder;->setAutoPlay(Ljava/lang/String;)Lcom/bilibili/tv/api/video/VideoApiService$VideoParamsMapV2$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/api/video/VideoApiService$VideoParamsMapV2$Builder;->build()Lcom/bilibili/tv/api/video/VideoApiService$VideoParamsMapV2;

    move-result-object v1

    .line 2545
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2546
    const-string v2, "https://app.bilibili.com/x/v2/view?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2547
    const-string v2, "plat=0&aid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->s:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2548
    const-string v2, "&autoplay=0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2549
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3a

    .line 2550
    const-string v2, "&access_key="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2553
    :cond_3a
    const-class v0, Lcom/bilibili/tv/api/video/VideoApiService;

    invoke-static {v0}, Lbl/vo;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/VideoApiService;

    invoke-interface {v0, v1, p2}, Lcom/bilibili/tv/api/video/VideoApiService;->getVideoDetails(Lcom/bilibili/tv/api/video/VideoApiService$VideoParamsMapV2;Ljava/lang/String;)Lbl/vp;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$27;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$27;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)V

    .line 2556
    invoke-virtual {v0, v1}, Lbl/vp;->a(Lbl/vu;)Lbl/vp;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$26;

    invoke-direct {v1, p0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$26;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/BiliVideoDetail;)V

    .line 2571
    invoke-virtual {v0, v1}, Lbl/vp;->a(Lretrofit2/Callback;)V

    .line 2616
    return-void
.end method

.method private fetchSeasonIdFromEpId(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 4094
    const/4 v1, 0x0

    .line 4096
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://api.bilibili.com/pgc/view/web/season?ep_id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4097
    const-string v2, "BangumiJump"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fetching seasonId from: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4098
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    .line 4099
    new-instance v2, Lcom/bilibili/tv/ui/video/VideoDetailActivity$39;

    invoke-direct {v2, p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$39;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 4115
    const-wide/16 v2, 0x5

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v3, v4}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 4116
    const-string v3, "BangumiJump"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "API response: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v0, :cond_a1

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_56
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4117
    if-eqz v0, :cond_a4

    const-string v2, "result"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a4

    .line 4118
    const-string v2, "result"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 4119
    const-string v2, "season_id"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a4

    .line 4120
    const-string v2, "season_id"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 4121
    const-string v2, "BangumiJump"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "got season_id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_9b} :catch_ac
    .catchall {:try_start_1 .. :try_end_9b} :catchall_d2

    .line 4130
    if-eqz v1, :cond_a0

    .line 4131
    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 4134
    :cond_a0
    :goto_a0
    return-object v0

    .line 4116
    :cond_a1
    :try_start_a1
    const-string v2, "null"
    :try_end_a3
    .catch Ljava/lang/Exception; {:try_start_a1 .. :try_end_a3} :catch_ac
    .catchall {:try_start_a1 .. :try_end_a3} :catchall_d2

    goto :goto_56

    .line 4130
    :cond_a4
    if-eqz v1, :cond_a9

    .line 4131
    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 4134
    :cond_a9
    :goto_a9
    const-string v0, ""

    goto :goto_a0

    .line 4125
    :catch_ac
    move-exception v0

    .line 4126
    :try_start_ad
    const-string v2, "BangumiJump"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fetchSeasonIdFromEpId error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4127
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_cc
    .catchall {:try_start_ad .. :try_end_cc} :catchall_d2

    .line 4130
    if-eqz v1, :cond_a9

    .line 4131
    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    goto :goto_a9

    .line 4130
    :catchall_d2
    move-exception v0

    if-eqz v1, :cond_d8

    .line 4131
    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 4133
    :cond_d8
    throw v0
.end method

.method private findSectionContainer(Landroid/view/View;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 921
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 922
    :goto_5
    if-eqz v1, :cond_2e

    .line 923
    instance-of v0, v1, Landroid/view/View;

    if-eqz v0, :cond_29

    move-object v0, v1

    .line 924
    check-cast v0, Landroid/view/View;

    .line 925
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v3

    const v4, 0x7f0801a5

    if-ne v3, v4, :cond_23

    .line 926
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 927
    instance-of v2, v1, Landroid/view/View;

    if-eqz v2, :cond_22

    move-object v0, v1

    .line 928
    check-cast v0, Landroid/view/View;

    .line 938
    :cond_22
    :goto_22
    return-object v0

    .line 932
    :cond_23
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonsContainer:Landroid/widget/LinearLayout;

    if-ne v0, v3, :cond_29

    move-object v0, v2

    .line 933
    goto :goto_22

    .line 936
    :cond_29
    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_5

    :cond_2e
    move-object v0, v2

    .line 938
    goto :goto_22
.end method

.method private final findTitleByCid(JLcom/bilibili/tv/api/video/BiliVideoDetail;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 2708
    if-nez p3, :cond_5

    move-object v0, v1

    .line 2729
    :goto_4
    return-object v0

    .line 2711
    :cond_5
    iget-object v0, p3, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    if-eqz v0, :cond_3d

    .line 2712
    iget-object v0, p3, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;

    .line 2713
    iget-wide v4, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mCid:J

    cmp-long v3, v4, p1

    if-nez v3, :cond_f

    .line 2714
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mPage:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 2718
    :cond_3d
    iget-object v0, p3, Lcom/bilibili/tv/api/video/BiliVideoDetail;->episodes:Lcom/alibaba/fastjson/JSONArray;

    if-eqz v0, :cond_7a

    .line 2719
    const/4 v0, 0x0

    :goto_42
    iget-object v2, p3, Lcom/bilibili/tv/api/video/BiliVideoDetail;->episodes:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_7a

    .line 2720
    iget-object v2, p3, Lcom/bilibili/tv/api/video/BiliVideoDetail;->episodes:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    .line 2721
    const-string v3, "page"

    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_77

    .line 2722
    const-string v3, "page"

    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v3

    .line 2723
    const-string v4, "cid"

    invoke-virtual {v3, v4}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_77

    const-string v4, "cid"

    invoke-virtual {v3, v4}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v4

    cmp-long v3, v4, p1

    if-nez v3, :cond_77

    .line 2724
    const-string v0, "title"

    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 2719
    :cond_77
    add-int/lit8 v0, v0, 0x1

    goto :goto_42

    :cond_7a
    move-object v0, v1

    .line 2729
    goto :goto_4
.end method

.method private findVideoListSection(I)Lcom/bilibili/tv/ui/video/widget/VideoListSection;
    .locals 3

    .prologue
    .line 848
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->ugcSeasonSections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    .line 849
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->getSectionId()I

    move-result v2

    if-ne v2, p1, :cond_6

    .line 853
    :goto_18
    return-object v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method private final formatProgressTime(I)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2671
    if-gtz p1, :cond_8

    .line 2672
    const-string v0, "00:00"

    .line 2683
    :goto_7
    return-object v0

    .line 2673
    :cond_8
    const/16 v0, 0x3c

    if-ge p1, v0, :cond_1b

    .line 2674
    const-string v0, "00:%02d"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    .line 2675
    :cond_1b
    const/16 v0, 0xe10

    if-ge p1, v0, :cond_38

    .line 2676
    div-int/lit8 v0, p1, 0x3c

    .line 2677
    rem-int/lit8 v1, p1, 0x3c

    .line 2678
    const-string v2, "%02d:%02d"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    .line 2680
    :cond_38
    div-int/lit16 v0, p1, 0xe10

    .line 2681
    rem-int/lit16 v1, p1, 0xe10

    div-int/lit8 v1, v1, 0x3c

    .line 2682
    rem-int/lit8 v2, p1, 0x3c

    .line 2683
    const-string v3, "%02d:%02d:%02d"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_7
.end method

.method private final formatProgressTimeShort(II)Ljava/lang/String;
    .locals 8

    .prologue
    const/16 v0, 0xe10

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2688
    if-gtz p1, :cond_f

    .line 2689
    if-lt p2, v0, :cond_c

    .line 2690
    const-string v0, "00:00:00"

    .line 2703
    :goto_b
    return-object v0

    .line 2692
    :cond_c
    const-string v0, "00:00"

    goto :goto_b

    .line 2693
    :cond_f
    if-lt p2, v0, :cond_35

    .line 2694
    div-int/lit16 v0, p1, 0xe10

    .line 2695
    rem-int/lit16 v1, p1, 0xe10

    div-int/lit8 v1, v1, 0x3c

    .line 2696
    rem-int/lit8 v2, p1, 0x3c

    .line 2697
    const-string v3, "%02d:%02d:%02d"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    .line 2698
    :cond_35
    const/16 v0, 0x3c

    if-ge p1, v0, :cond_48

    .line 2699
    const-string v0, "00:%02d"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    .line 2701
    :cond_48
    div-int/lit8 v0, p1, 0x3c

    .line 2702
    rem-int/lit8 v1, p1, 0x3c

    .line 2703
    const-string v2, "%02d:%02d"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_b
.end method

.method private getCurrentListType(Landroid/view/View;)I
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 1479
    if-nez p1, :cond_10

    move v0, v1

    .line 1507
    :goto_4
    return v0

    .line 1499
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1500
    instance-of v2, v0, Landroid/view/View;

    if-eqz v2, :cond_40

    .line 1501
    check-cast v0, Landroid/view/View;

    move-object p1, v0

    .line 1484
    :cond_10
    if-eqz p1, :cond_40

    .line 1485
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 1486
    const v2, 0x7f080149

    if-ne v0, v2, :cond_1d

    .line 1487
    const/4 v0, 0x1

    goto :goto_4

    .line 1488
    :cond_1d
    const v2, 0x7f080171

    if-ne v0, v2, :cond_24

    .line 1489
    const/4 v0, 0x2

    goto :goto_4

    .line 1490
    :cond_24
    const v2, 0x7f080155

    if-ne v0, v2, :cond_2b

    .line 1491
    const/4 v0, 0x3

    goto :goto_4

    .line 1492
    :cond_2b
    const v2, 0x7f08008d

    if-ne v0, v2, :cond_32

    .line 1493
    const/4 v0, 0x4

    goto :goto_4

    .line 1494
    :cond_32
    const v2, 0x7f0801a5

    if-ne v0, v2, :cond_39

    .line 1495
    const/4 v0, 0x5

    goto :goto_4

    .line 1496
    :cond_39
    const v2, 0x7f0801d6

    if-ne v0, v2, :cond_5

    .line 1497
    const/4 v0, 0x6

    goto :goto_4

    :cond_40
    move v0, v1

    .line 1507
    goto :goto_4
.end method

.method private getDataSizeForSection(I)I
    .locals 3

    .prologue
    .line 857
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->ugcSeasonSections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    .line 858
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->getSectionId()I

    move-result v2

    if-ne v2, p1, :cond_6

    .line 859
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->getDataSize()I

    move-result v0

    .line 862
    :goto_1c
    return v0

    :cond_1d
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method private getDurationForCid(Lcom/bilibili/tv/api/video/BiliVideoDetail;J)I
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 2734
    if-nez p1, :cond_4

    .line 2751
    :cond_3
    :goto_3
    return v2

    .line 2737
    :cond_4
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    if-eqz v0, :cond_2f

    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2f

    move v1, v2

    .line 2738
    :goto_12
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2f

    .line 2739
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;

    .line 2740
    iget-wide v4, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mCid:J

    cmp-long v3, v4, p2

    if-nez v3, :cond_2b

    .line 2741
    iget v2, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->duration:I

    goto :goto_3

    .line 2738
    :cond_2b
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_12

    .line 2745
    :cond_2f
    iget v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mDuration:I

    if-lez v0, :cond_36

    .line 2746
    iget v2, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mDuration:I

    goto :goto_3

    .line 2748
    :cond_36
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2749
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;

    iget v2, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->duration:I

    goto :goto_3
.end method

.method private getSeasonSectionFocusPosition(I)I
    .locals 3

    .prologue
    .line 830
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->ugcSeasonSections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    .line 832
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->getSectionId()I

    move-result v2

    if-ne v2, p1, :cond_6

    .line 833
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->getFocusPosition()I

    move-result v0

    .line 844
    :goto_1c
    return v0

    .line 838
    :cond_1d
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonSectionFocusPositions:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 839
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonSectionFocusPositions:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1c

    .line 844
    :cond_3a
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method private getVisibleIndex(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)I
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 1614
    if-eqz p1, :cond_5

    if-nez p2, :cond_7

    :cond_5
    move v0, v1

    .line 1618
    :cond_6
    :goto_6
    return v0

    .line 1615
    :cond_7
    const/4 v0, 0x0

    :goto_8
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_17

    .line 1616
    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eq v2, p2, :cond_6

    .line 1615
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_17
    move v0, v1

    .line 1618
    goto :goto_6
.end method

.method private handleListFocusNavigation(Landroid/view/View;I)Z
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1264
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->getCurrentListType(Landroid/view/View;)I

    move-result v3

    .line 1268
    if-gez v3, :cond_d

    move v0, v1

    .line 1421
    :goto_c
    return v0

    .line 1273
    :cond_d
    const/4 v4, 0x0

    .line 1275
    const/4 v0, -0x1

    .line 1277
    const/16 v5, 0x14

    if-ne p2, v5, :cond_b7

    .line 1279
    if-ne v3, v2, :cond_7b

    .line 1282
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonsContainer:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_48

    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v3

    if-nez v3, :cond_48

    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonSectionViews:Ljava/util/List;

    .line 1283
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_48

    .line 1285
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonSectionViews:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonSectionView;

    .line 1287
    iget-object v4, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonSectionView;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 1288
    iget v3, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonSectionView;->sectionId:I

    invoke-direct {p0, v3}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->getSeasonSectionFocusPosition(I)I

    move-result v3

    .line 1289
    iget v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonSectionView;->sectionId:I

    .line 1395
    :goto_3b
    if-lez v0, :cond_1f5

    .line 1396
    invoke-direct {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->findVideoListSection(I)Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    move-result-object v0

    .line 1397
    if-eqz v0, :cond_1f5

    .line 1399
    invoke-virtual {v0, v3}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->requestFocusOnPosition(I)V

    move v0, v2

    .line 1400
    goto :goto_c

    .line 1290
    :cond_48
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->episodes_video:Landroid/support/v7/widget/RecyclerView;

    if-eqz v3, :cond_59

    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->episodes_video:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_59

    .line 1291
    iget-object v4, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->episodes_video:Landroid/support/v7/widget/RecyclerView;

    .line 1292
    iget v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->episodesVideoFocusPosition:I

    goto :goto_3b

    .line 1293
    :cond_59
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->r:Landroid/support/v7/widget/RecyclerView;

    if-eqz v3, :cond_6a

    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->r:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_6a

    .line 1294
    iget-object v4, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->r:Landroid/support/v7/widget/RecyclerView;

    .line 1295
    iget v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->relateVideoFocusPosition:I

    goto :goto_3b

    .line 1296
    :cond_6a
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->n:Landroid/support/v7/widget/RecyclerView;

    if-eqz v3, :cond_21c

    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->n:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_21c

    .line 1297
    iget-object v4, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->n:Landroid/support/v7/widget/RecyclerView;

    .line 1298
    iget v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->tagViewFocusPosition:I

    goto :goto_3b

    .line 1300
    :cond_7b
    if-ne v3, v6, :cond_9f

    .line 1301
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->r:Landroid/support/v7/widget/RecyclerView;

    if-eqz v3, :cond_8e

    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->r:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_8e

    .line 1302
    iget-object v4, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->r:Landroid/support/v7/widget/RecyclerView;

    .line 1303
    iget v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->relateVideoFocusPosition:I

    goto :goto_3b

    .line 1304
    :cond_8e
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->n:Landroid/support/v7/widget/RecyclerView;

    if-eqz v3, :cond_21c

    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->n:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_21c

    .line 1305
    iget-object v4, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->n:Landroid/support/v7/widget/RecyclerView;

    .line 1306
    iget v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->tagViewFocusPosition:I

    goto :goto_3b

    .line 1308
    :cond_9f
    if-ne v3, v7, :cond_b2

    .line 1309
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->n:Landroid/support/v7/widget/RecyclerView;

    if-eqz v3, :cond_21c

    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->n:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_21c

    .line 1310
    iget-object v4, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->n:Landroid/support/v7/widget/RecyclerView;

    .line 1311
    iget v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->tagViewFocusPosition:I

    goto :goto_3b

    .line 1313
    :cond_b2
    if-ne v3, v8, :cond_21c

    move v0, v2

    .line 1314
    goto/16 :goto_c

    .line 1317
    :cond_b7
    const/16 v5, 0x13

    if-ne p2, v5, :cond_21c

    .line 1320
    if-ne v3, v2, :cond_e5

    .line 1322
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/ProgressPlayButton;

    if-eqz v3, :cond_d1

    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/ProgressPlayButton;

    invoke-virtual {v3}, Lcom/bilibili/tv/widget/ProgressPlayButton;->getVisibility()I

    move-result v3

    if-nez v3, :cond_d1

    .line 1323
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/ProgressPlayButton;

    invoke-virtual {v0}, Lcom/bilibili/tv/widget/ProgressPlayButton;->requestFocus()Z

    move v0, v2

    .line 1324
    goto/16 :goto_c

    .line 1325
    :cond_d1
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->rePlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    if-eqz v3, :cond_21c

    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->rePlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    invoke-virtual {v3}, Lcom/bilibili/tv/widget/DrawLinearLayout;->getVisibility()I

    move-result v3

    if-nez v3, :cond_21c

    .line 1326
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->rePlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    invoke-virtual {v0}, Lcom/bilibili/tv/widget/DrawLinearLayout;->requestFocus()Z

    move v0, v2

    .line 1327
    goto/16 :goto_c

    .line 1329
    :cond_e5
    if-ne v3, v6, :cond_10f

    .line 1331
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/ProgressPlayButton;

    if-eqz v3, :cond_fb

    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/ProgressPlayButton;

    invoke-virtual {v3}, Lcom/bilibili/tv/widget/ProgressPlayButton;->getVisibility()I

    move-result v3

    if-nez v3, :cond_fb

    .line 1332
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/ProgressPlayButton;

    invoke-virtual {v0}, Lcom/bilibili/tv/widget/ProgressPlayButton;->requestFocus()Z

    move v0, v2

    .line 1333
    goto/16 :goto_c

    .line 1334
    :cond_fb
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->rePlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    if-eqz v3, :cond_21c

    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->rePlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    invoke-virtual {v3}, Lcom/bilibili/tv/widget/DrawLinearLayout;->getVisibility()I

    move-result v3

    if-nez v3, :cond_21c

    .line 1335
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->rePlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    invoke-virtual {v0}, Lcom/bilibili/tv/widget/DrawLinearLayout;->requestFocus()Z

    move v0, v2

    .line 1336
    goto/16 :goto_c

    .line 1338
    :cond_10f
    if-ne v3, v7, :cond_18d

    .line 1341
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonsContainer:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_141

    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v3

    if-nez v3, :cond_141

    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonSectionViews:Ljava/util/List;

    .line 1342
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_141

    .line 1344
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonSectionViews:Ljava/util/List;

    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonSectionViews:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonSectionView;

    .line 1347
    iget-object v4, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonSectionView;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 1348
    iget v3, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonSectionView;->sectionId:I

    invoke-direct {p0, v3}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->getSeasonSectionFocusPosition(I)I

    move-result v3

    .line 1349
    iget v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonSectionView;->sectionId:I

    goto/16 :goto_3b

    .line 1350
    :cond_141
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->episodes_video:Landroid/support/v7/widget/RecyclerView;

    if-eqz v3, :cond_153

    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->episodes_video:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_153

    .line 1352
    iget-object v4, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->episodes_video:Landroid/support/v7/widget/RecyclerView;

    .line 1353
    iget v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->episodesVideoFocusPosition:I

    goto/16 :goto_3b

    .line 1354
    :cond_153
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->o:Landroid/support/v7/widget/RecyclerView;

    if-eqz v3, :cond_165

    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->o:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_165

    .line 1356
    iget-object v4, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->o:Landroid/support/v7/widget/RecyclerView;

    .line 1357
    iget v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->epLayoutFocusPosition:I

    goto/16 :goto_3b

    .line 1358
    :cond_165
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/ProgressPlayButton;

    if-eqz v3, :cond_179

    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/ProgressPlayButton;

    invoke-virtual {v3}, Lcom/bilibili/tv/widget/ProgressPlayButton;->getVisibility()I

    move-result v3

    if-nez v3, :cond_179

    .line 1360
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/ProgressPlayButton;

    invoke-virtual {v0}, Lcom/bilibili/tv/widget/ProgressPlayButton;->requestFocus()Z

    move v0, v2

    .line 1361
    goto/16 :goto_c

    .line 1362
    :cond_179
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->rePlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    if-eqz v3, :cond_21c

    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->rePlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    invoke-virtual {v3}, Lcom/bilibili/tv/widget/DrawLinearLayout;->getVisibility()I

    move-result v3

    if-nez v3, :cond_21c

    .line 1364
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->rePlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    invoke-virtual {v0}, Lcom/bilibili/tv/widget/DrawLinearLayout;->requestFocus()Z

    move v0, v2

    .line 1365
    goto/16 :goto_c

    .line 1367
    :cond_18d
    if-ne v3, v8, :cond_21c

    .line 1369
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->r:Landroid/support/v7/widget/RecyclerView;

    if-eqz v3, :cond_1a1

    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->r:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1a1

    .line 1371
    iget-object v4, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->r:Landroid/support/v7/widget/RecyclerView;

    .line 1372
    iget v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->relateVideoFocusPosition:I

    goto/16 :goto_3b

    .line 1373
    :cond_1a1
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonsContainer:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_1d1

    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1d1

    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonSectionViews:Ljava/util/List;

    .line 1374
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1d1

    .line 1375
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonSectionViews:Ljava/util/List;

    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonSectionViews:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonSectionView;

    .line 1377
    iget-object v4, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonSectionView;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 1378
    iget v3, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonSectionView;->sectionId:I

    invoke-direct {p0, v3}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->getSeasonSectionFocusPosition(I)I

    move-result v3

    .line 1379
    iget v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonSectionView;->sectionId:I

    goto/16 :goto_3b

    .line 1380
    :cond_1d1
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->episodes_video:Landroid/support/v7/widget/RecyclerView;

    if-eqz v3, :cond_1e3

    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->episodes_video:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1e3

    .line 1382
    iget-object v4, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->episodes_video:Landroid/support/v7/widget/RecyclerView;

    .line 1383
    iget v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->episodesVideoFocusPosition:I

    goto/16 :goto_3b

    .line 1384
    :cond_1e3
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->o:Landroid/support/v7/widget/RecyclerView;

    if-eqz v3, :cond_21c

    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->o:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_21c

    .line 1386
    iget-object v4, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->o:Landroid/support/v7/widget/RecyclerView;

    .line 1387
    iget v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->epLayoutFocusPosition:I

    goto/16 :goto_3b

    .line 1404
    :cond_1f5
    if-eqz v4, :cond_219

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_219

    .line 1406
    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v0

    .line 1407
    if-lez v0, :cond_219

    .line 1408
    add-int/lit8 v0, v0, -0x1

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1409
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1411
    invoke-virtual {v4, v0}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1412
    if-eqz v0, :cond_219

    .line 1414
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    move v0, v2

    .line 1415
    goto/16 :goto_c

    :cond_219
    move v0, v1

    .line 1421
    goto/16 :goto_c

    :cond_21c
    move v3, v1

    goto/16 :goto_3b
.end method

.method private hideInteractionButtons()V
    .locals 8

    .prologue
    const/16 v7, 0x8

    .line 4879
    const v0, 0x7f080167

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 4880
    const v1, 0x7f08016a

    invoke-virtual {p0, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 4881
    const v2, 0x7f08014d

    invoke-virtual {p0, v2}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 4882
    const v3, 0x7f080268

    invoke-virtual {p0, v3}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 4883
    const v4, 0x7f080241

    invoke-virtual {p0, v4}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 4884
    const v5, 0x7f0801a1

    invoke-virtual {p0, v5}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 4885
    const v6, 0x7f0801dc

    invoke-virtual {p0, v6}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 4886
    if-eqz v0, :cond_38

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 4887
    :cond_38
    if-eqz v1, :cond_3d

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 4888
    :cond_3d
    if-eqz v2, :cond_42

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 4889
    :cond_42
    if-eqz v3, :cond_47

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 4890
    :cond_47
    if-eqz v4, :cond_4c

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 4891
    :cond_4c
    if-eqz v5, :cond_51

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 4892
    :cond_51
    if-eqz v6, :cond_56

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 4893
    :cond_56
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->expandBtn:Lcom/bilibili/tv/widget/DrawLinearLayout;

    if-eqz v1, :cond_60

    .line 4894
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->expandBtn:Lcom/bilibili/tv/widget/DrawLinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setVisibility(I)V

    .line 4897
    :cond_60
    if-eqz v0, :cond_68

    .line 4898
    const v1, 0x7f0801df

    invoke-virtual {v0, v1}, Landroid/view/View;->setNextFocusLeftId(I)V

    .line 4900
    :cond_68
    return-void
.end method

.method private final initDefaultPlayButtons(Lcom/bilibili/tv/api/video/BiliVideoDetail;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v2, -0x1

    .line 2113
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtn:Lcom/bilibili/tv/widget/DrawTextView;

    if-nez v0, :cond_8

    .line 2208
    :cond_7
    :goto_7
    return-void

    .line 2116
    :cond_8
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtn:Lcom/bilibili/tv/widget/DrawTextView;

    const-string v1, "\u5f00\u59cb\u64ad\u653e"

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawTextView;->setText(Ljava/lang/CharSequence;)V

    .line 2117
    const-string v3, "HistoryDebug"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[INIT_DEFAULT] entry, mHistoryCid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz p1, :cond_df

    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mHistory:Lcom/bilibili/tv/api/video/BiliVideoDetail$History;

    if-eqz v0, :cond_df

    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mHistory:Lcom/bilibili/tv/api/video/BiliVideoDetail$History;

    iget-wide v0, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$History;->mCid:J

    :goto_26
    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", resolved="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->mHistoryResolved:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", noHistVis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2119
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->noHistoryPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    if-eqz v0, :cond_e3

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->noHistoryPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    invoke-virtual {v0}, Lcom/bilibili/tv/widget/DrawLinearLayout;->getVisibility()I

    move-result v0

    :goto_46
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", histVis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2120
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/ProgressPlayButton;

    if-eqz v0, :cond_e6

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/ProgressPlayButton;

    invoke-virtual {v0}, Lcom/bilibili/tv/widget/ProgressPlayButton;->getVisibility()I

    move-result v0

    :goto_5a
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", replayVis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2121
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->rePlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    if-eqz v1, :cond_6e

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->rePlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    invoke-virtual {v1}, Lcom/bilibili/tv/widget/DrawLinearLayout;->getVisibility()I

    move-result v2

    :cond_6e
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", avid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v4, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->s:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2117
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2123
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyBtnProgress:Landroid/widget/TextView;

    if-eqz v0, :cond_90

    .line 2124
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyBtnProgress:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2126
    :cond_90
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/ProgressPlayButton;

    if-eqz v0, :cond_99

    .line 2127
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/ProgressPlayButton;

    invoke-virtual {v0, v6, v7}, Lcom/bilibili/tv/widget/ProgressPlayButton;->setProgress(II)V

    .line 2132
    :cond_99
    if-eqz p1, :cond_e9

    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mHistory:Lcom/bilibili/tv/api/video/BiliVideoDetail$History;

    if-eqz v0, :cond_e9

    .line 2134
    invoke-direct {p0, v7}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->applyPlayButtonVisibility(I)V

    .line 2135
    invoke-direct {p0, p1, v6}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->applyNoHistoryState(Lcom/bilibili/tv/api/video/BiliVideoDetail;Z)V

    .line 2145
    :goto_a5
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/ProgressPlayButton;

    if-eqz v0, :cond_b3

    .line 2146
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/ProgressPlayButton;

    new-instance v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$20;

    invoke-direct {v1, p0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$20;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/BiliVideoDetail;)V

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/ProgressPlayButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2167
    :cond_b3
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->rePlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    if-eqz v0, :cond_c1

    .line 2168
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->rePlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    new-instance v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$21;

    invoke-direct {v1, p0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$21;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/BiliVideoDetail;)V

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2181
    :cond_c1
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->noHistoryPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    if-eqz v0, :cond_cf

    .line 2182
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->noHistoryPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    new-instance v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$22;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$22;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)V

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2197
    :cond_cf
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->noHistoryPlayBtn:Lcom/bilibili/tv/widget/DrawTextView;

    if-eqz v0, :cond_7

    .line 2198
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->noHistoryPlayBtn:Lcom/bilibili/tv/widget/DrawTextView;

    new-instance v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$23;

    invoke-direct {v1, p0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$23;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/BiliVideoDetail;)V

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_7

    .line 2117
    :cond_df
    const-wide/16 v0, 0x0

    goto/16 :goto_26

    :cond_e3
    move v0, v2

    .line 2119
    goto/16 :goto_46

    :cond_e6
    move v0, v2

    .line 2120
    goto/16 :goto_5a

    .line 2136
    :cond_e9
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->mHistoryResolved:Z

    if-eqz v0, :cond_f5

    .line 2138
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->applyPlayButtonVisibility(I)V

    .line 2139
    invoke-direct {p0, p1, v7}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->applyNoHistoryState(Lcom/bilibili/tv/api/video/BiliVideoDetail;Z)V

    goto :goto_a5

    .line 2142
    :cond_f5
    invoke-direct {p0, v6}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->applyPlayButtonVisibility(I)V

    goto :goto_a5
.end method

.method private isAnyInteractionButtonFocused()Z
    .locals 7

    .prologue
    .line 4903
    const v0, 0x7f080167

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 4904
    const v1, 0x7f08016a

    invoke-virtual {p0, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 4905
    const v2, 0x7f08014d

    invoke-virtual {p0, v2}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 4906
    const v3, 0x7f080268

    invoke-virtual {p0, v3}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 4907
    const v4, 0x7f080241

    invoke-virtual {p0, v4}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 4908
    const v5, 0x7f0801a1

    invoke-virtual {p0, v5}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 4909
    const v6, 0x7f0801dc

    invoke-virtual {p0, v6}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 4910
    if-eqz v0, :cond_39

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_69

    :cond_39
    if-eqz v1, :cond_41

    .line 4911
    invoke-virtual {v1}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_69

    :cond_41
    if-eqz v2, :cond_49

    .line 4912
    invoke-virtual {v2}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_69

    :cond_49
    if-eqz v3, :cond_51

    .line 4913
    invoke-virtual {v3}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_69

    :cond_51
    if-eqz v4, :cond_59

    .line 4914
    invoke-virtual {v4}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_69

    :cond_59
    if-eqz v5, :cond_61

    .line 4915
    invoke-virtual {v5}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_69

    :cond_61
    if-eqz v6, :cond_6b

    .line 4916
    invoke-virtual {v6}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_6b

    :cond_69
    const/4 v0, 0x1

    .line 4910
    :goto_6a
    return v0

    .line 4916
    :cond_6b
    const/4 v0, 0x0

    goto :goto_6a
.end method

.method private final isCidOfCurrentDetail(Lcom/bilibili/tv/api/video/BiliVideoDetail;J)Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 4326
    if-eqz p1, :cond_a

    const-wide/16 v4, 0x0

    cmp-long v0, p2, v4

    if-gtz v0, :cond_c

    :cond_a
    move v0, v2

    .line 4345
    :goto_b
    return v0

    .line 4329
    :cond_c
    iget-wide v4, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mCid:J

    cmp-long v0, v4, p2

    if-nez v0, :cond_14

    move v0, v1

    .line 4330
    goto :goto_b

    .line 4332
    :cond_14
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mHistory:Lcom/bilibili/tv/api/video/BiliVideoDetail$History;

    if-eqz v0, :cond_22

    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mHistory:Lcom/bilibili/tv/api/video/BiliVideoDetail$History;

    iget-wide v4, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$History;->mCid:J

    cmp-long v0, v4, p2

    if-nez v0, :cond_22

    move v0, v1

    .line 4333
    goto :goto_b

    .line 4335
    :cond_22
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->sourcePage:Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;

    if-eqz v0, :cond_30

    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->sourcePage:Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;

    iget-wide v4, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mCid:J

    cmp-long v0, v4, p2

    if-nez v0, :cond_30

    move v0, v1

    .line 4336
    goto :goto_b

    .line 4338
    :cond_30
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    if-eqz v0, :cond_50

    .line 4339
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_50

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;

    .line 4340
    if-eqz v0, :cond_3a

    iget-wide v4, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mCid:J

    cmp-long v0, v4, p2

    if-nez v0, :cond_3a

    move v0, v1

    .line 4341
    goto :goto_b

    :cond_50
    move v0, v2

    .line 4345
    goto :goto_b
.end method

.method private final isLocalProgressProtected()Z
    .locals 4

    .prologue
    .line 4350
    iget-wide v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->localProgressProtectedUntilMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_14

    .line 4351
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->localProgressProtectedUntilMs:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_14

    const/4 v0, 0x1

    .line 4350
    :goto_13
    return v0

    .line 4351
    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method private isPgcVideo(Lcom/bilibili/tv/api/video/BiliVideoDetail;)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2974
    if-nez p1, :cond_5

    .line 2983
    :cond_4
    :goto_4
    return v0

    .line 2977
    :cond_5
    iget-object v2, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mRedirectUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_f

    move v0, v1

    .line 2978
    goto :goto_4

    .line 2980
    :cond_f
    iget-object v2, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mBangumiInfo:Lcom/bilibili/tv/api/video/BiliVideoDetail$BangumiInfo;

    if-eqz v2, :cond_4

    move v0, v1

    .line 2981
    goto :goto_4
.end method

.method private final k()V
    .locals 12

    .prologue
    const v11, 0x7f06010a

    const/4 v10, 0x1

    const v9, 0x7f0700e7

    const/4 v8, 0x0

    .line 409
    new-instance v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$d;

    invoke-direct {v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$d;-><init>()V

    .line 410
    const v0, 0x7f080041

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->b:Landroid/widget/ImageView;

    .line 411
    const v0, 0x7f0801db

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->gradientMaskView:Landroid/view/View;

    .line 412
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->preloadCoverUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_44

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->b:Landroid/widget/ImageView;

    if-eqz v0, :cond_44

    .line 413
    invoke-static {}, Lbl/nv;->a()Lbl/nv;

    move-result-object v0

    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->preloadCoverUrl:Ljava/lang/String;

    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v2, v3}, Lbl/nv;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 414
    iput-boolean v10, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->isBlurLoaded:Z

    .line 415
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->gradientMaskView:Landroid/view/View;

    if-eqz v0, :cond_44

    .line 416
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->gradientMaskView:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 419
    :cond_44
    const v0, 0x7f080156

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->cc:Landroid/widget/TextView;

    .line 420
    const v0, 0x7f08015e

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->uperContainer:Landroid/widget/LinearLayout;

    .line 421
    const v0, 0x7f0801b0

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->staffContainer:Landroid/widget/LinearLayout;

    .line 422
    const v0, 0x7f080153

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->e:Landroid/widget/TextView;

    .line 423
    const v0, 0x7f080147

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->ff:Landroid/widget/TextView;

    .line 424
    const v0, 0x7f080159

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->g:Landroid/widget/TextView;

    .line 425
    const v0, 0x7f08014b

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->hh:Landroid/widget/TextView;

    .line 426
    const v0, 0x7f080154

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->i:Landroid/widget/TextView;

    .line 427
    const v0, 0x7f080170

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->episodes_title:Landroid/widget/TextView;

    .line 428
    const v0, 0x7f080064

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->m:Landroid/view/View;

    .line 429
    const v0, 0x7f080199

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->pgcInfoContainer:Landroid/widget/LinearLayout;

    .line 430
    const v0, 0x7f08019a

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->pgcRating:Landroid/widget/TextView;

    .line 431
    const v0, 0x7f08019b

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->pgcType:Landroid/widget/TextView;

    .line 432
    const v0, 0x7f08019c

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->pgcArea:Landroid/widget/TextView;

    .line 433
    const v0, 0x7f08019d

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->pgcNewEp:Landroid/widget/TextView;

    .line 434
    const v0, 0x7f0801d5

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->titleSection:Landroid/widget/LinearLayout;

    .line 435
    const v0, 0x7f0801f1

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->interactionVideoTag:Landroid/widget/TextView;

    .line 438
    :try_start_fd
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->interactionVideoTag:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 439
    if-eqz v0, :cond_182

    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->chargingExclusiveTag:Landroid/widget/TextView;

    if-nez v2, :cond_182

    .line 440
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 441
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 443
    const v4, 0x7f06014d

    invoke-static {v4}, Lbl/adl;->b(I)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 444
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 445
    const/4 v3, 0x0

    .line 446
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f06010a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    .line 445
    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 447
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0500a1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 448
    const-string v3, "\u5145\u7535\u4e13\u5c5e"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 449
    const v3, 0x7f060377

    invoke-static {v3}, Lbl/adl;->b(I)I

    move-result v3

    const v4, 0x7f0601bb

    invoke-static {v4}, Lbl/adl;->b(I)I

    move-result v4

    const v5, 0x7f060377

    .line 450
    invoke-static {v5}, Lbl/adl;->b(I)I

    move-result v5

    const v6, 0x7f0601bb

    invoke-static {v6}, Lbl/adl;->b(I)I

    move-result v6

    .line 449
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 451
    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 452
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 453
    const v3, -0x48d67

    invoke-static {v2, v3}, Lcom/bilibili/tv/ui/video/widget/VideoTagStyler;->applySolid(Landroid/widget/TextView;I)V

    .line 454
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 455
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 456
    iput-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->chargingExclusiveTag:Landroid/widget/TextView;
    :try_end_182
    .catch Ljava/lang/Exception; {:try_start_fd .. :try_end_182} :catch_4d5

    .line 461
    :cond_182
    :goto_182
    const v0, 0x7f08014d

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawLinearLayout;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->j:Lcom/bilibili/tv/widget/DrawLinearLayout;

    .line 462
    const v0, 0x7f08014e

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->k:Landroid/widget/ImageView;

    .line 463
    const v0, 0x7f08014f

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->l:Landroid/widget/TextView;

    .line 464
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->j:Lcom/bilibili/tv/widget/DrawLinearLayout;

    .line 465
    if-eqz v0, :cond_1b3

    .line 466
    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 467
    invoke-virtual {v0, v9}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setUpDrawable(I)V

    .line 468
    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 469
    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 473
    :cond_1b3
    const v0, 0x7f080241

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawLinearLayout;

    .line 474
    if-eqz v0, :cond_1cc

    .line 475
    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 476
    invoke-virtual {v0, v9}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setUpDrawable(I)V

    .line 477
    new-instance v2, Lcom/bilibili/tv/ui/video/VideoDetailActivity$3;

    invoke-direct {v2, p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$3;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)V

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 486
    :cond_1cc
    const v0, 0x7f080268

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawLinearLayout;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->subscribeBtn:Lcom/bilibili/tv/widget/DrawLinearLayout;

    .line 487
    const v0, 0x7f080269

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->subscribeImg:Landroid/widget/ImageView;

    .line 488
    const v0, 0x7f08026a

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->subscribeText:Landroid/widget/TextView;

    .line 489
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->subscribeBtn:Lcom/bilibili/tv/widget/DrawLinearLayout;

    if-eqz v0, :cond_205

    .line 490
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->subscribeBtn:Lcom/bilibili/tv/widget/DrawLinearLayout;

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 491
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->subscribeBtn:Lcom/bilibili/tv/widget/DrawLinearLayout;

    invoke-virtual {v0, v9}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setUpDrawable(I)V

    .line 492
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->subscribeBtn:Lcom/bilibili/tv/widget/DrawLinearLayout;

    new-instance v2, Lcom/bilibili/tv/ui/video/VideoDetailActivity$4;

    invoke-direct {v2, p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$4;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)V

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 500
    :cond_205
    const v0, 0x7f0801df

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawLinearLayout;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->expandBtn:Lcom/bilibili/tv/widget/DrawLinearLayout;

    .line 501
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->expandBtn:Lcom/bilibili/tv/widget/DrawLinearLayout;

    if-eqz v0, :cond_223

    .line 502
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->expandBtn:Lcom/bilibili/tv/widget/DrawLinearLayout;

    invoke-virtual {v0, v9}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setUpDrawable(I)V

    .line 503
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->expandBtn:Lcom/bilibili/tv/widget/DrawLinearLayout;

    new-instance v2, Lcom/bilibili/tv/ui/video/VideoDetailActivity$5;

    invoke-direct {v2, p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$5;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)V

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 522
    :cond_223
    const v0, 0x7f080167

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawLinearLayout;

    .line 523
    if-eqz v0, :cond_23a

    .line 524
    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 525
    invoke-virtual {v0, v9}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setUpDrawable(I)V

    .line 526
    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 527
    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 529
    :cond_23a
    const v0, 0x7f08016a

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawLinearLayout;

    .line 530
    if-eqz v0, :cond_251

    .line 531
    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 532
    invoke-virtual {v0, v9}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setUpDrawable(I)V

    .line 533
    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 534
    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 537
    :cond_251
    const v0, 0x7f0801a1

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawLinearLayout;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->watchLaterBtn:Lcom/bilibili/tv/widget/DrawLinearLayout;

    .line 538
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->watchLaterBtn:Lcom/bilibili/tv/widget/DrawLinearLayout;

    if-eqz v0, :cond_26f

    .line 539
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->watchLaterBtn:Lcom/bilibili/tv/widget/DrawLinearLayout;

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 540
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->watchLaterBtn:Lcom/bilibili/tv/widget/DrawLinearLayout;

    invoke-virtual {v0, v9}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setUpDrawable(I)V

    .line 541
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->watchLaterBtn:Lcom/bilibili/tv/widget/DrawLinearLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 544
    :cond_26f
    const v0, 0x7f0801dc

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawLinearLayout;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->infoBtn:Lcom/bilibili/tv/widget/DrawLinearLayout;

    .line 545
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->infoBtn:Lcom/bilibili/tv/widget/DrawLinearLayout;

    if-eqz v0, :cond_28d

    .line 546
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->infoBtn:Lcom/bilibili/tv/widget/DrawLinearLayout;

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 547
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->infoBtn:Lcom/bilibili/tv/widget/DrawLinearLayout;

    invoke-virtual {v0, v9}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setUpDrawable(I)V

    .line 548
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->infoBtn:Lcom/bilibili/tv/widget/DrawLinearLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 551
    :cond_28d
    const v0, 0x7f080152

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawTextView;

    .line 552
    if-eqz v0, :cond_2a1

    .line 553
    invoke-virtual {v0, v9}, Lcom/bilibili/tv/widget/DrawTextView;->setUpDrawable(I)V

    .line 554
    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 555
    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 557
    :cond_2a1
    const v0, 0x7f080151

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->q:Landroid/widget/FrameLayout;

    .line 558
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->q:Landroid/widget/FrameLayout;

    .line 559
    if-eqz v0, :cond_2bf

    .line 560
    sget-object v1, Lcom/bilibili/tv/ui/base/LoadingImageView;->Companion:Lcom/bilibili/tv/ui/base/LoadingImageView$a;

    invoke-virtual {v1, v0}, Lcom/bilibili/tv/ui/base/LoadingImageView$a;->a(Landroid/widget/FrameLayout;)Lcom/bilibili/tv/ui/base/LoadingImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->p:Lcom/bilibili/tv/ui/base/LoadingImageView;

    .line 561
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->p:Lcom/bilibili/tv/ui/base/LoadingImageView;

    .line 562
    if-eqz v0, :cond_2bf

    .line 563
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/base/LoadingImageView;->a()V

    .line 566
    :cond_2bf
    const v0, 0x7f08008d

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->n:Landroid/support/v7/widget/RecyclerView;

    .line 567
    new-instance v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$6;

    invoke-direct {v0, p0, p0, v8, v8}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$6;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Landroid/content/Context;IZ)V

    .line 596
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->n:Landroid/support/v7/widget/RecyclerView;

    .line 597
    if-eqz v1, :cond_2de

    .line 598
    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$h;)V

    .line 600
    new-instance v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$7;

    invoke-direct {v0, p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$7;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)V

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 612
    :cond_2de
    new-instance v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$g;

    invoke-direct {v0, p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$g;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)V

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->x:Lcom/bilibili/tv/ui/video/VideoDetailActivity$g;

    .line 613
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->n:Landroid/support/v7/widget/RecyclerView;

    .line 614
    if-eqz v0, :cond_2ee

    .line 615
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->x:Lcom/bilibili/tv/ui/video/VideoDetailActivity$g;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 617
    :cond_2ee
    const v0, 0x7f080149

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->o:Landroid/support/v7/widget/RecyclerView;

    .line 618
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 619
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->t:Ljava/util/List;

    .line 620
    new-instance v1, Lbl/add;

    new-instance v2, Lcom/bilibili/tv/ui/video/VideoDetailActivity$b;

    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->t:Ljava/util/List;

    invoke-direct {v2, p0, v3}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$b;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Ljava/util/List;)V

    invoke-direct {v1, v2}, Lbl/add;-><init>(Landroid/support/v7/widget/RecyclerView$a;)V

    iput-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->w:Lbl/add;

    .line 621
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->o:Landroid/support/v7/widget/RecyclerView;

    if-eqz v1, :cond_34c

    .line 622
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->o:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Lcom/bilibili/tv/widget/FixGridLayoutManager;

    const/4 v3, 0x6

    invoke-direct {v2, p0, v3, v10, v8}, Lcom/bilibili/tv/widget/FixGridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$h;)V

    .line 623
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->o:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Lcom/bilibili/tv/ui/video/VideoDetailActivity$j;

    invoke-direct {v2, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$j;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView$g;)V

    .line 624
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->o:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->w:Lbl/add;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 626
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->o:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$8;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$8;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 638
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->blockEpisodeAutoFocus:Z

    if-eqz v0, :cond_34c

    .line 639
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->o:Landroid/support/v7/widget/RecyclerView;

    const/high16 v1, 0x60000

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setDescendantFocusability(I)V

    .line 642
    :cond_34c
    const v0, 0x7f080155

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->r:Landroid/support/v7/widget/RecyclerView;

    .line 643
    new-instance v0, Lcom/bilibili/tv/ui/video/widget/BiliVideoDetailBinder;

    invoke-direct {v0}, Lcom/bilibili/tv/ui/video/widget/BiliVideoDetailBinder;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->relateBinder:Lcom/bilibili/tv/ui/video/widget/BiliVideoDetailBinder;

    .line 644
    new-instance v0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;

    invoke-direct {v0, p0}, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->relateCardAdapter:Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;

    .line 645
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->r:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_38e

    .line 646
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->r:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$9;

    invoke-direct {v1, p0, p0, v8, v8}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$9;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$h;)V

    .line 658
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->r:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->relateCardAdapter:Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 659
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->relateCardAdapter:Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;

    new-instance v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$10;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$10;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)V

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->setOnItemClickListener(Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter$OnItemClickListener;)V

    .line 673
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->r:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$11;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$11;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 702
    :cond_38e
    const v0, 0x7f080171

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->episodes_video:Landroid/support/v7/widget/RecyclerView;

    .line 703
    new-instance v0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;

    invoke-direct {v0, p0}, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->episodesCardAdapter:Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;

    .line 704
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->episodesCardAdapter:Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;

    invoke-virtual {v0, v10}, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->setShowIndexBadge(Z)V

    .line 705
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->episodes_video:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_3ce

    .line 706
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->episodes_video:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/bilibili/tv/widget/FixLinearLayoutManager;

    invoke-direct {v1, p0, v8, v8}, Lcom/bilibili/tv/widget/FixLinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$h;)V

    .line 707
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->episodes_video:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->episodesCardAdapter:Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 708
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->episodesCardAdapter:Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;

    new-instance v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$12;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$12;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)V

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->setOnItemClickListener(Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter$OnItemClickListener;)V

    .line 714
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->episodes_video:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$13;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$13;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 728
    :cond_3ce
    const v0, 0x7f0801a3

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonsContainer:Landroid/widget/LinearLayout;

    .line 729
    new-instance v0, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;

    invoke-direct {v0}, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->videoListNavigator:Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;

    .line 730
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->videoListNavigator:Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/ProgressPlayButton;

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->setUpTarget(Landroid/view/View;)V

    .line 731
    const v0, 0x7f080192

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/ProgressPlayButton;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/ProgressPlayButton;

    .line 732
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/ProgressPlayButton;

    if-eqz v0, :cond_405

    .line 733
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/ProgressPlayButton;

    new-instance v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$d;

    invoke-direct {v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$d;-><init>()V

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/ProgressPlayButton;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 734
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/ProgressPlayButton;

    invoke-virtual {v0, v9}, Lcom/bilibili/tv/widget/ProgressPlayButton;->setUpDrawable(I)V

    .line 736
    :cond_405
    const v0, 0x7f080195

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawLinearLayout;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->rePlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    .line 737
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->rePlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    if-eqz v0, :cond_423

    .line 738
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->rePlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    new-instance v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$d;

    invoke-direct {v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$d;-><init>()V

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 739
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->rePlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    invoke-virtual {v0, v9}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setUpDrawable(I)V

    .line 741
    :cond_423
    const v0, 0x7f080191

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawTextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtn:Lcom/bilibili/tv/widget/DrawTextView;

    .line 742
    const v0, 0x7f08021e

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyBtnProgress:Landroid/widget/TextView;

    .line 743
    const v0, 0x7f080194

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawTextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->rePlayBtn:Lcom/bilibili/tv/widget/DrawTextView;

    .line 744
    const v0, 0x7f080196

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawLinearLayout;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->noHistoryPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    .line 745
    const v0, 0x7f080198

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->noHistoryPlayCheckBox:Landroid/widget/CheckBox;

    .line 746
    const v0, 0x7f080197

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawTextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->noHistoryPlayBtn:Lcom/bilibili/tv/widget/DrawTextView;

    .line 747
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->noHistoryPlayCheckBox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_4ac

    .line 751
    invoke-static {p0}, Lbl/abd;->get_default_no_history(Landroid/content/Context;)Z

    move-result v0

    .line 752
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->noHistoryPlayCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 753
    sput-boolean v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->sNoHistoryPlayMode:Z

    .line 756
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->noHistoryPlayCheckBox:Landroid/widget/CheckBox;

    new-instance v2, Lcom/bilibili/tv/ui/video/VideoDetailActivity$14;

    invoke-direct {v2, p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$14;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 763
    const-string v1, "HistoryDebug"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[INIT_NO_HISTORY] stage=bind, globalDefault="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", checked="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", avid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->s:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    :cond_4ac
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->noHistoryPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    if-eqz v0, :cond_4bf

    .line 768
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->noHistoryPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    new-instance v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$15;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$15;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)V

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 775
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->noHistoryPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    invoke-virtual {v0, v9}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setUpDrawable(I)V

    .line 777
    :cond_4bf
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->noHistoryPlayBtn:Lcom/bilibili/tv/widget/DrawTextView;

    if-eqz v0, :cond_4c6

    .line 779
    invoke-direct {p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->refreshNoHistoryLabel()V

    .line 781
    :cond_4c6
    const v0, 0x7f0800f6

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->scrollView:Landroid/widget/ScrollView;

    .line 782
    invoke-direct {p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->setupGlobalFocusChangeListener()V

    .line 783
    return-void

    .line 458
    :catch_4d5
    move-exception v0

    goto/16 :goto_182
.end method

.method private final likeVideo(I)V
    .locals 7

    .prologue
    .line 4624
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->B:Z

    if-eqz v0, :cond_5

    .line 4634
    :goto_4
    return-void

    .line 4627
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->B:Z

    .line 4628
    invoke-static {p0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v0

    .line 4629
    const-string v1, "BiliAccount.get(this)"

    invoke-static {v0, v1}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4630
    invoke-static {v0}, Lmybl/CookieUtil;->getFullCookieWithDevice(Lbl/mg;)Ljava/lang/String;

    move-result-object v6

    .line 4631
    invoke-static {v0}, Lmybl/CookieUtil;->getBiliJct(Lbl/mg;)Ljava/lang/String;

    move-result-object v5

    .line 4632
    add-int/lit8 v4, p1, 0x1

    .line 4633
    const-class v0, Lmybl/MyBiliApiService;

    invoke-static {v0}, Lbl/vo;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmybl/MyBiliApiService;

    iget-wide v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->s:J

    invoke-interface/range {v1 .. v6}, Lmybl/MyBiliApiService;->likeVideo(JILjava/lang/String;Ljava/lang/String;)Lbl/vp;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$LikeResponse;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$LikeResponse;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)V

    invoke-virtual {v0, v1}, Lbl/vp;->a(Lretrofit2/Callback;)V

    goto :goto_4
.end method

.method private final loadArchiveRelation(Lcom/bilibili/tv/api/video/BiliVideoDetail;)V
    .locals 4

    .prologue
    .line 2368
    if-eqz p1, :cond_6

    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mBvid:Ljava/lang/String;

    if-nez v0, :cond_7

    .line 2421
    :cond_6
    :goto_6
    return-void

    .line 2371
    :cond_7
    invoke-static {p0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v0

    .line 2372
    const-string v1, "BiliAccount.get(this)"

    invoke-static {v0, v1}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2373
    invoke-virtual {v0}, Lbl/mg;->a()Z

    move-result v1

    .line 2374
    if-eqz v1, :cond_6

    .line 2377
    invoke-virtual {v0}, Lbl/mg;->getSESSDATA()Ljava/lang/String;

    move-result-object v0

    .line 2378
    iget-object v1, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mBvid:Ljava/lang/String;

    .line 2380
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SESSDATA="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2382
    const-class v0, Lmybl/MyBiliApiService;

    invoke-static {v0}, Lbl/vo;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmybl/MyBiliApiService;

    invoke-interface {v0, v1, v2}, Lmybl/MyBiliApiService;->getArchiveRelation(Ljava/lang/String;Ljava/lang/String;)Lbl/vp;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$24;

    invoke-direct {v1, p0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$24;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/BiliVideoDetail;)V

    invoke-virtual {v0, v1}, Lbl/vp;->a(Lretrofit2/Callback;)V

    goto :goto_6
.end method

.method private final loadHistory(Lcom/bilibili/tv/api/video/BiliVideoDetail;)V
    .locals 11

    .prologue
    const-wide/16 v8, 0x0

    const/4 v1, 0x0

    .line 2424
    invoke-static {p0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v10

    .line 2425
    const-string v0, "BiliAccount.get(this)"

    invoke-static {v10, v0}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2427
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mHistory:Lcom/bilibili/tv/api/video/BiliVideoDetail$History;

    if-eqz v0, :cond_25

    .line 2428
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->updateHistoryDisplay(Lcom/bilibili/tv/api/video/BiliVideoDetail;)V

    .line 2429
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/ProgressPlayButton;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/ProgressPlayButton;

    .line 2430
    invoke-virtual {v0}, Lcom/bilibili/tv/widget/ProgressPlayButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_24

    .line 2431
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/ProgressPlayButton;

    invoke-virtual {v0}, Lcom/bilibili/tv/widget/ProgressPlayButton;->requestFocus()Z

    .line 2541
    :cond_24
    :goto_24
    return-void

    .line 2438
    :cond_25
    iget-object v3, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mBvid:Ljava/lang/String;

    .line 2439
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    if-eqz v0, :cond_92

    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_92

    .line 2440
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;

    iget-wide v4, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mCid:J

    .line 2441
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;

    iget-wide v6, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mEpisodeId:J

    .line 2442
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;

    iget-object v0, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mBvid:Ljava/lang/String;

    if-eqz v0, :cond_6d

    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;

    iget-object v0, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mBvid:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6d

    .line 2443
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;

    iget-object v3, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mBvid:Ljava/lang/String;

    .line 2447
    :cond_6d
    :goto_6d
    cmp-long v0, v4, v8

    if-nez v0, :cond_79

    .line 2448
    invoke-virtual {v10}, Lbl/mg;->e()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->fallbackLoadHistory(Lcom/bilibili/tv/api/video/BiliVideoDetail;Ljava/lang/String;)V

    goto :goto_24

    .line 2454
    :cond_79
    iget-wide v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->s:J

    .line 2456
    invoke-virtual {v10}, Lbl/mg;->e()Ljava/lang/String;

    .line 2457
    invoke-virtual {v10}, Lbl/mg;->getSESSDATA()Ljava/lang/String;

    move-result-object v8

    .line 2460
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$25;

    move-object v2, p0

    move-object v9, p1

    invoke-direct/range {v1 .. v10}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$25;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Ljava/lang/String;JJLjava/lang/String;Lcom/bilibili/tv/api/video/BiliVideoDetail;Lbl/mg;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2540
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_24

    :cond_92
    move-wide v6, v8

    move-wide v4, v8

    goto :goto_6d
.end method

.method private loadPerf(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 225
    const-string v0, "LoadPerf"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[page] +"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->loadPerfStartMs:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    return-void
.end method

.method private loadPgcBySeasonId()V
    .locals 2

    .prologue
    .line 1834
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->mSeasonId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1895
    :goto_8
    return-void

    .line 1837
    :cond_9
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->p:Lcom/bilibili/tv/ui/base/LoadingImageView;

    .line 1838
    if-eqz v0, :cond_10

    .line 1839
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/base/LoadingImageView;->a()V

    .line 1842
    :cond_10
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->mSeasonId:Ljava/lang/String;

    new-instance v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$18;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$18;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)V

    invoke-direct {p0, v0, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->loadPgcSeasonInfo(Ljava/lang/String;Lcom/bilibili/tv/ui/video/VideoDetailActivity$PgcLoadCallback;)V

    goto :goto_8
.end method

.method private loadPgcInfo(Lcom/bilibili/tv/api/video/BiliVideoDetail;)V
    .locals 2

    .prologue
    .line 3035
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->extractSeasonId(Lcom/bilibili/tv/api/video/BiliVideoDetail;)Ljava/lang/String;

    move-result-object v0

    .line 3036
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 3121
    :goto_a
    return-void

    .line 3040
    :cond_b
    new-instance v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$29;

    invoke-direct {v1, p0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$29;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/BiliVideoDetail;)V

    invoke-direct {p0, v0, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->loadPgcSeasonInfo(Ljava/lang/String;Lcom/bilibili/tv/ui/video/VideoDetailActivity$PgcLoadCallback;)V

    goto :goto_a
.end method

.method private loadPgcRelatedVideos(I)V
    .locals 2

    .prologue
    .line 2619
    if-gtz p1, :cond_3

    .line 2668
    :goto_2
    return-void

    .line 2623
    :cond_3
    const-class v0, Lmybl/MyBiliApiService;

    invoke-static {v0}, Lbl/vo;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmybl/MyBiliApiService;

    invoke-interface {v0, p1}, Lmybl/MyBiliApiService;->getPgcRelatedRecommend(I)Lbl/vp;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$28;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$28;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)V

    .line 2624
    invoke-virtual {v0, v1}, Lbl/vp;->a(Lretrofit2/Callback;)V

    goto :goto_2
.end method

.method private loadPgcSeasonInfo(Ljava/lang/String;Lcom/bilibili/tv/ui/video/VideoDetailActivity$PgcLoadCallback;)V
    .locals 3

    .prologue
    .line 1903
    invoke-static {p0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v0

    invoke-virtual {v0}, Lbl/mg;->e()Ljava/lang/String;

    move-result-object v0

    .line 1905
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/bilibili/tv/ui/video/VideoDetailActivity$19;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$19;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Ljava/lang/String;Ljava/lang/String;Lcom/bilibili/tv/ui/video/VideoDetailActivity$PgcLoadCallback;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1955
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 1956
    return-void
.end method

.method private final loadUgcByAvid()V
    .locals 4

    .prologue
    .line 1660
    iget-wide v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->s:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_c

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->A:Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;

    if-nez v0, :cond_d

    .line 1669
    :cond_c
    :goto_c
    return-void

    .line 1663
    :cond_d
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->p:Lcom/bilibili/tv/ui/base/LoadingImageView;

    .line 1664
    if-eqz v0, :cond_14

    .line 1665
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/base/LoadingImageView;->a()V

    .line 1667
    :cond_14
    const-class v0, Lmybl/MyBiliApiService;

    invoke-static {v0}, Lbl/vo;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmybl/MyBiliApiService;

    iget-wide v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->s:J

    invoke-interface {v0, v2, v3}, Lmybl/MyBiliApiService;->getVideoInfo(J)Lbl/vp;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/api/video/VideoApiParser3;

    invoke-direct {v1}, Lcom/bilibili/tv/api/video/VideoApiParser3;-><init>()V

    invoke-virtual {v0, v1}, Lbl/vp;->a(Lbl/vu;)Lbl/vp;

    move-result-object v0

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->A:Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;

    invoke-virtual {v0, v1}, Lbl/vp;->a(Lretrofit2/Callback;)V

    .line 1668
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "video info request sent | avid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->s:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->loadPerf(Ljava/lang/String;)V

    goto :goto_c
.end method

.method private final m()V
    .locals 6

    .prologue
    const v5, 0x7f0c0170

    const/4 v4, 0x0

    .line 1053
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1054
    const-string v1, "intent"

    invoke-static {v0, v1}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1055
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 1056
    if-nez v0, :cond_1a

    .line 1057
    invoke-static {p0, v5}, Lbl/lr;->a(Landroid/content/Context;I)V

    .line 1058
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->finish()V

    .line 1075
    :goto_19
    return-void

    .line 1061
    :cond_1a
    const-string v1, "bundle_season_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->mSeasonId:Ljava/lang/String;

    .line 1062
    const-string v1, "bundle_ac_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->s:J

    .line 1063
    const-string v1, "preload_cover"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->preloadCoverUrl:Ljava/lang/String;

    .line 1064
    const-string v1, "download_auto_play"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->autoPlayAfterLoad:Z

    .line 1065
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->mSeasonId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4a

    .line 1066
    sget-object v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$EntryType;->PGC_BY_SEASON_ID:Lcom/bilibili/tv/ui/video/VideoDetailActivity$EntryType;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->mEntryType:Lcom/bilibili/tv/ui/video/VideoDetailActivity$EntryType;

    .line 1067
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->mIsPgcMode:Z

    goto :goto_19

    .line 1068
    :cond_4a
    iget-wide v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->s:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_59

    .line 1069
    sget-object v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$EntryType;->UGC_BY_AVID:Lcom/bilibili/tv/ui/video/VideoDetailActivity$EntryType;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->mEntryType:Lcom/bilibili/tv/ui/video/VideoDetailActivity$EntryType;

    .line 1070
    iput-boolean v4, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->mIsPgcMode:Z

    goto :goto_19

    .line 1072
    :cond_59
    invoke-static {p0, v5}, Lbl/lr;->a(Landroid/content/Context;I)V

    .line 1073
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->finish()V

    goto :goto_19
.end method

.method private final n()V
    .locals 4

    .prologue
    .line 1647
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "data load start | entry="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->mEntryType:Lcom/bilibili/tv/ui/video/VideoDetailActivity$EntryType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " | avid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->s:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " | seasonId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->mSeasonId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->loadPerf(Ljava/lang/String;)V

    .line 1648
    sget-object v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$45;->$SwitchMap$com$bilibili$tv$ui$video$VideoDetailActivity$EntryType:[I

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->mEntryType:Lcom/bilibili/tv/ui/video/VideoDetailActivity$EntryType;

    invoke-virtual {v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$EntryType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_46

    .line 1654
    invoke-direct {p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->loadUgcByAvid()V

    .line 1657
    :goto_40
    return-void

    .line 1650
    :pswitch_41
    invoke-direct {p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->loadPgcBySeasonId()V

    goto :goto_40

    .line 1648
    nop

    :pswitch_data_46
    .packed-switch 0x1
        :pswitch_41
    .end packed-switch
.end method

.method private normalizeFinishedProgress(JII)I
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 2759
    if-ne p3, v0, :cond_5

    move p3, v0

    .line 2765
    :cond_4
    :goto_4
    return p3

    .line 2762
    :cond_5
    if-lez p4, :cond_4

    add-int/lit8 v1, p4, -0x2

    if-lt p3, v1, :cond_4

    move p3, v0

    .line 2763
    goto :goto_4
.end method

.method private onDownloadButtonClick()V
    .locals 25

    .prologue
    .line 4454
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->u:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    if-nez v2, :cond_13

    .line 4455
    const-string v2, "\u89c6\u9891\u4fe1\u606f\u52a0\u8f7d\u4e2d..."

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 4532
    :goto_12
    return-void

    .line 4460
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->u:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    iget-wide v4, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mAvid:J

    .line 4461
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->u:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    iget-object v6, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mBvid:Ljava/lang/String;

    .line 4462
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->u:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    iget-object v7, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mTitle:Ljava/lang/String;

    .line 4463
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->u:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    iget-object v8, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mCover:Ljava/lang/String;

    .line 4464
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->u:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    iget-object v2, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mOwner:Lcom/bilibili/tv/api/video/BiliUser;

    if-eqz v2, :cond_7e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->u:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    iget-object v2, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mOwner:Lcom/bilibili/tv/api/video/BiliUser;

    iget-object v9, v2, Lcom/bilibili/tv/api/video/BiliUser;->name:Ljava/lang/String;

    .line 4467
    :goto_3b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->u:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    iget-object v2, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    if-eqz v2, :cond_81

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->u:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    iget-object v2, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_81

    .line 4469
    const-string v2, "VideoDetail"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\u6253\u5f00\u5206P\u9009\u62e9\u9875\u9762\uff0c\u5206P\u6570\u91cf="

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->u:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    iget-object v10, v10, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4470
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->u:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    iget-object v10, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    move-object/from16 v3, p0

    invoke-static/range {v3 .. v10}, Lcom/bilibili/tv/ui/download/EpisodeSelectActivity;->start(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_12

    .line 4464
    :cond_7e
    const-string v9, "\u672a\u77e5"

    goto :goto_3b

    .line 4483
    :cond_81
    const-wide/16 v14, 0x0

    .line 4484
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->u:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    iget-object v2, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    if-eqz v2, :cond_a6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->u:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    iget-object v2, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_a6

    .line 4485
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->u:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    iget-object v2, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;

    iget-wide v14, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mCid:J

    .line 4487
    :cond_a6
    const-wide/16 v2, 0x0

    cmp-long v2, v14, v2

    if-nez v2, :cond_bc

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->u:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    iget-object v2, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPage:Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;

    if-eqz v2, :cond_bc

    .line 4488
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->u:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    iget-object v2, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPage:Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;

    iget-wide v14, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mCid:J

    .line 4490
    :cond_bc
    const-wide/16 v2, 0x0

    cmp-long v2, v14, v2

    if-nez v2, :cond_d2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->u:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    iget-object v2, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mHistory:Lcom/bilibili/tv/api/video/BiliVideoDetail$History;

    if-eqz v2, :cond_d2

    .line 4491
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->u:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    iget-object v2, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mHistory:Lcom/bilibili/tv/api/video/BiliVideoDetail$History;

    iget-wide v14, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$History;->mCid:J

    .line 4493
    :cond_d2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->u:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    iget v2, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mDuration:I

    int-to-long v0, v2

    move-wide/from16 v20, v0

    .line 4496
    const/16 v17, 0x0

    .line 4497
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->u:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    iget-object v2, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    if-eqz v2, :cond_10d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->u:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    iget-object v2, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_10d

    .line 4498
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->u:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    iget-object v2, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;

    .line 4499
    if-eqz v2, :cond_10d

    iget-object v3, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mTitle:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_10d

    .line 4500
    iget-object v0, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mTitle:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 4505
    :cond_10d
    move-object/from16 v0, p0

    invoke-static {v0, v6, v14, v15}, Lcom/bilibili/tv/ui/download/VideoDetailDownloadHelper;->isTaskExists(Landroid/content/Context;Ljava/lang/String;J)Z

    move-result v2

    if-eqz v2, :cond_13a

    .line 4506
    move-object/from16 v0, p0

    invoke-static {v0, v6, v14, v15}, Lcom/bilibili/tv/ui/download/VideoDetailDownloadHelper;->getTaskStatus(Landroid/content/Context;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    .line 4507
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u8be5\u89c6\u9891\u5df2\u5728\u4e0b\u8f7d\u5217\u8868\u4e2d\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_12

    .line 4512
    :cond_13a
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 4513
    const-string v2, "1080P \u9ad8\u6e05"

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4514
    const-string v2, "720P \u9ad8\u6e05"

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4515
    const-string v2, "480P \u6e05\u6670"

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4518
    const/16 v22, 0x0

    const/16 v23, 0x1

    move-object/from16 v10, p0

    move-wide v11, v4

    move-object v13, v6

    move-object/from16 v16, v7

    move-object/from16 v18, v8

    move-object/from16 v19, v9

    invoke-static/range {v10 .. v24}, Lcom/bilibili/tv/ui/download/VideoDetailDownloadHelper;->showDownloadDialog(Landroid/content/Context;JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIILjava/util/List;)V

    goto/16 :goto_12
.end method

.method private final onPlayerReturned(ILandroid/content/Intent;)V
    .locals 12

    .prologue
    const-wide/16 v10, 0x3a98

    const/4 v1, 0x1

    const-wide/16 v8, 0x0

    const/4 v2, 0x0

    .line 4235
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->u:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    if-nez v0, :cond_b

    .line 4306
    :goto_a
    return-void

    .line 4238
    :cond_b
    if-eqz p2, :cond_f2

    const-string v0, "last_cid"

    invoke-virtual {p2, v0, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    move-wide v6, v4

    .line 4239
    :goto_14
    if-eqz p2, :cond_f5

    const-string v0, "last_progress"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    move v4, v0

    .line 4244
    :goto_1d
    cmp-long v0, v6, v8

    if-lez v0, :cond_24

    .line 4245
    invoke-direct {p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->syncNoHistoryOff()V

    .line 4247
    :cond_24
    cmp-long v0, v6, v8

    if-lez v0, :cond_f8

    if-lez v4, :cond_f8

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->u:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    invoke-direct {p0, v0, v6, v7}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->isCidOfCurrentDetail(Lcom/bilibili/tv/api/video/BiliVideoDetail;J)Z

    move-result v0

    if-eqz v0, :cond_f8

    move v0, v1

    .line 4248
    :goto_33
    const-string v5, "HistoryDebug"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[ON_RESULT] resultCode="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, ", lastCid="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, ", lastProgressSec="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    div-int/lit16 v8, v4, 0x3e8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, ", ownVideo="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, ", localProgressSec="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 4251
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->u:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    iget-object v3, v3, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mHistory:Lcom/bilibili/tv/api/video/BiliVideoDetail$History;

    if-eqz v3, :cond_fb

    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->u:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    iget-object v3, v3, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mHistory:Lcom/bilibili/tv/api/video/BiliVideoDetail$History;

    iget v3, v3, Lcom/bilibili/tv/api/video/BiliVideoDetail$History;->mProgress:I

    :goto_76
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, ", sNoHistoryPlayMode="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v8, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->sNoHistoryPlayMode:Z

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4248
    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4254
    if-eqz v0, :cond_ff

    .line 4257
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->u:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    iget-object v0, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mHistory:Lcom/bilibili/tv/api/video/BiliVideoDetail$History;

    if-nez v0, :cond_9e

    .line 4258
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->u:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    new-instance v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$History;

    invoke-direct {v2}, Lcom/bilibili/tv/api/video/BiliVideoDetail$History;-><init>()V

    iput-object v2, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mHistory:Lcom/bilibili/tv/api/video/BiliVideoDetail$History;

    .line 4260
    :cond_9e
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->u:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    iget-object v0, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mHistory:Lcom/bilibili/tv/api/video/BiliVideoDetail$History;

    iput-wide v6, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$History;->mCid:J

    .line 4261
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->u:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    iget-object v0, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mHistory:Lcom/bilibili/tv/api/video/BiliVideoDetail$History;

    div-int/lit16 v2, v4, 0x3e8

    iput v2, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$History;->mProgress:I

    .line 4263
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long/2addr v2, v10

    iput-wide v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->localProgressProtectedUntilMs:J

    .line 4264
    const-string v0, "HistoryDebug"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[ON_RESULT] apply player progress: cid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", progressSec="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    div-int/lit16 v3, v4, 0x3e8

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", protectMs="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4267
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->u:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    invoke-direct {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->updateHistoryDisplay(Lcom/bilibili/tv/api/video/BiliVideoDetail;)V

    .line 4268
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->u:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    new-instance v2, Lcom/bilibili/tv/ui/video/VideoDetailActivity$40;

    invoke-direct {v2, p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$40;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)V

    invoke-direct {p0, v0, v2, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->requestHistoryForUgc(Lcom/bilibili/tv/api/video/BiliVideoDetail;Ljava/lang/Runnable;Z)V

    goto/16 :goto_a

    :cond_f2
    move-wide v6, v8

    .line 4238
    goto/16 :goto_14

    :cond_f5
    move v4, v2

    .line 4239
    goto/16 :goto_1d

    :cond_f8
    move v0, v2

    .line 4247
    goto/16 :goto_33

    .line 4251
    :cond_fb
    const/16 v3, -0x3e7

    goto/16 :goto_76

    .line 4280
    :cond_ff
    sget-boolean v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->sNoHistoryPlayMode:Z

    if-nez v0, :cond_136

    .line 4285
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->noHistoryPlayCheckBox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_11e

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->noHistoryPlayCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_11e

    .line 4286
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->noHistoryPlayCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 4287
    invoke-direct {p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->refreshNoHistoryLabel()V

    .line 4288
    const-string v0, "HistoryDebug"

    const-string v2, "[ON_RESULT] no return value but non-incognito, uncheck checkbox"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4291
    :cond_11e
    const-string v0, "HistoryDebug"

    const-string v2, "[ON_RESULT] no player progress, fallback refresh (normal mode)"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4292
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->u:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    invoke-direct {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->updateHistoryDisplay(Lcom/bilibili/tv/api/video/BiliVideoDetail;)V

    .line 4293
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->u:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    new-instance v2, Lcom/bilibili/tv/ui/video/VideoDetailActivity$41;

    invoke-direct {v2, p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$41;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)V

    invoke-direct {p0, v0, v2, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->requestHistoryForUgc(Lcom/bilibili/tv/api/video/BiliVideoDetail;Ljava/lang/Runnable;Z)V

    goto/16 :goto_a

    .line 4305
    :cond_136
    const-string v0, "HistoryDebug"

    const-string v1, "[ON_RESULT] incognito mode, keep detail UI unchanged"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a
.end method

.method private final onSubscribeButtonClick()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2268
    invoke-static {p0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v0

    .line 2269
    invoke-virtual {v0}, Lbl/mg;->a()Z

    move-result v1

    if-nez v1, :cond_12

    .line 2270
    const-string v0, "\u8d26\u53f7\u672a\u767b\u5f55\uff0c\u65e0\u6cd5\u8ba2\u9605"

    invoke-static {p0, v0}, Lbl/lr;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 2300
    :goto_11
    return-void

    .line 2274
    :cond_12
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->mPgcInfo:Lcom/bilibili/tv/api/video/PgcInfo;

    if-eqz v1, :cond_5c

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->mPgcInfo:Lcom/bilibili/tv/api/video/PgcInfo;

    iget v1, v1, Lcom/bilibili/tv/api/video/PgcInfo;->seasonId:I

    if-lez v1, :cond_5c

    .line 2275
    invoke-static {v0}, Lmybl/CookieUtil;->getFullCookieWithDevice(Lbl/mg;)Ljava/lang/String;

    move-result-object v1

    .line 2276
    invoke-static {v0}, Lmybl/CookieUtil;->getBiliJct(Lbl/mg;)Ljava/lang/String;

    move-result-object v2

    .line 2277
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->isPgcFollowed:Z

    if-eqz v0, :cond_42

    .line 2278
    const-class v0, Lmybl/MyBiliApiService;

    invoke-static {v0}, Lbl/vo;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmybl/MyBiliApiService;

    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->mPgcInfo:Lcom/bilibili/tv/api/video/PgcInfo;

    iget v3, v3, Lcom/bilibili/tv/api/video/PgcInfo;->seasonId:I

    int-to-long v4, v3

    invoke-interface {v0, v4, v5, v2, v1}, Lmybl/MyBiliApiService;->pgcFollowDel(JLjava/lang/String;Ljava/lang/String;)Lbl/vp;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$PgcFollowResponse;

    invoke-direct {v1, p0, v6}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$PgcFollowResponse;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Z)V

    .line 2279
    invoke-virtual {v0, v1}, Lbl/vp;->a(Lretrofit2/Callback;)V

    goto :goto_11

    .line 2281
    :cond_42
    const-class v0, Lmybl/MyBiliApiService;

    invoke-static {v0}, Lbl/vo;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmybl/MyBiliApiService;

    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->mPgcInfo:Lcom/bilibili/tv/api/video/PgcInfo;

    iget v3, v3, Lcom/bilibili/tv/api/video/PgcInfo;->seasonId:I

    int-to-long v4, v3

    invoke-interface {v0, v4, v5, v2, v1}, Lmybl/MyBiliApiService;->pgcFollowAdd(JLjava/lang/String;Ljava/lang/String;)Lbl/vp;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$PgcFollowResponse;

    invoke-direct {v1, p0, v7}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$PgcFollowResponse;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Z)V

    .line 2282
    invoke-virtual {v0, v1}, Lbl/vp;->a(Lretrofit2/Callback;)V

    goto :goto_11

    .line 2287
    :cond_5c
    iget-wide v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->currentSeasonId:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gtz v1, :cond_6e

    .line 2288
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u5f53\u524d\u89c6\u9891\u4e0d\u5c5e\u4e8e\u4efb\u4f55\u5408\u96c6"

    invoke-static {v0, v1}, Lbl/lr;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_11

    .line 2291
    :cond_6e
    invoke-static {v0}, Lmybl/CookieUtil;->getFullCookieWithDevice(Lbl/mg;)Ljava/lang/String;

    move-result-object v1

    .line 2292
    invoke-static {v0}, Lmybl/CookieUtil;->getBiliJct(Lbl/mg;)Ljava/lang/String;

    move-result-object v2

    .line 2293
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->isSeasonFav:Z

    if-eqz v0, :cond_91

    .line 2294
    const-class v0, Lmybl/MyBiliApiService;

    invoke-static {v0}, Lbl/vo;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmybl/MyBiliApiService;

    iget-wide v4, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->currentSeasonId:J

    invoke-interface {v0, v4, v5, v2, v1}, Lmybl/MyBiliApiService;->unfavSeason(JLjava/lang/String;Ljava/lang/String;)Lbl/vp;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonFavResponse;

    invoke-direct {v1, p0, v6}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonFavResponse;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Z)V

    .line 2295
    invoke-virtual {v0, v1}, Lbl/vp;->a(Lretrofit2/Callback;)V

    goto :goto_11

    .line 2297
    :cond_91
    const-class v0, Lmybl/MyBiliApiService;

    invoke-static {v0}, Lbl/vo;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmybl/MyBiliApiService;

    iget-wide v4, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->currentSeasonId:J

    invoke-interface {v0, v4, v5, v2, v1}, Lmybl/MyBiliApiService;->favSeason(JLjava/lang/String;Ljava/lang/String;)Lbl/vp;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonFavResponse;

    invoke-direct {v1, p0, v7}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonFavResponse;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Z)V

    .line 2298
    invoke-virtual {v0, v1}, Lbl/vp;->a(Lretrofit2/Callback;)V

    goto/16 :goto_11
.end method

.method private final p(Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 4535
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->B:Z

    if-eqz v0, :cond_5

    .line 4544
    :goto_4
    return-void

    .line 4538
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->B:Z

    .line 4539
    const-class v0, Lcom/bilibili/tv/api/favorite/BiliFavoriteVideoApiService;

    .line 4540
    invoke-static {v0}, Lbl/vo;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bilibili/tv/api/favorite/BiliFavoriteVideoApiService;

    .line 4541
    invoke-static {p0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v0

    .line 4542
    const-string v2, "BiliAccount.get(this)"

    invoke-static {v0, v2}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4543
    invoke-virtual {v0}, Lbl/mg;->e()Ljava/lang/String;

    move-result-object v2

    iget-wide v4, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->s:J

    const-string v6, "0"

    move-object v3, p1

    invoke-interface/range {v1 .. v6}, Lcom/bilibili/tv/api/favorite/BiliFavoriteVideoApiService;->addVideoToList(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Lbl/vp;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$l;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$l;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)V

    invoke-virtual {v0, v1}, Lbl/vp;->a(Lretrofit2/Callback;)V

    goto :goto_4
.end method

.method private final playVideo(Lcom/bilibili/tv/api/video/BiliVideoDetail;JI)V
    .locals 6

    .prologue
    .line 2922
    if-nez p1, :cond_3

    .line 2948
    :cond_2
    :goto_2
    return-void

    .line 2927
    :cond_3
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->noHistoryPlayCheckBox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_f

    .line 2928
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->noHistoryPlayCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    sput-boolean v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->sNoHistoryPlayMode:Z

    .line 2930
    :cond_f
    const-string v0, "HistoryDebug"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CLICK_PLAY] clickCid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", clickProgressSec="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", noHistory="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->sNoHistoryPlayMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2932
    const/4 v2, 0x0

    .line 2933
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_61

    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    if-eqz v0, :cond_61

    .line 2934
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_61

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;

    .line 2935
    iget-wide v4, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mCid:J

    cmp-long v3, v4, p2

    if-nez v3, :cond_4e

    move-object v2, v0

    .line 2941
    :cond_61
    if-nez v2, :cond_79

    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    if-eqz v0, :cond_79

    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_79

    .line 2942
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;

    move-object v2, v0

    .line 2944
    :cond_79
    if-eqz v2, :cond_2

    .line 2945
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mCover:Ljava/lang/String;

    invoke-static {p0, v0}, Lbl/abd;->prefetchCoverToMemoryCache(Landroid/content/Context;Ljava/lang/String;)V

    .line 2946
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const/16 v4, 0x2754

    move-object v0, p0

    move-object v1, p1

    move v5, p4

    invoke-static/range {v0 .. v5}, Lbl/xg;->a(Landroid/app/Activity;Lcom/bilibili/tv/api/video/BiliVideoDetail;Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;Landroid/os/Bundle;II)V

    goto/16 :goto_2
.end method

.method private final q(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 4580
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->B:Z

    if-eqz v0, :cond_5

    .line 4588
    :goto_4
    return-void

    .line 4583
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->B:Z

    .line 4584
    invoke-static {p0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v1

    .line 4585
    const-string v0, "BiliAccount.get(this)"

    invoke-static {v1, v0}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4586
    const-class v0, Lcom/bilibili/tv/api/favorite/BiliFavoriteVideoApiService;

    invoke-static {v0}, Lbl/vo;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/favorite/BiliFavoriteVideoApiService;

    invoke-virtual {v1}, Lbl/mg;->e()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->s:J

    invoke-interface {v0, v1, p1, v2, v3}, Lcom/bilibili/tv/api/favorite/BiliFavoriteVideoApiService;->deleteVideoFromList(Ljava/lang/String;Ljava/lang/String;J)Lbl/vp;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$m;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$m;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)V

    .line 4587
    invoke-virtual {v0, v1}, Lbl/vp;->a(Lretrofit2/Callback;)V

    goto :goto_4
.end method

.method private final refreshNoHistoryLabel()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2232
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->noHistoryPlayBtn:Lcom/bilibili/tv/widget/DrawTextView;

    if-nez v0, :cond_7

    .line 2245
    :goto_6
    return-void

    .line 2236
    :cond_7
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->noHistoryPlayCheckBox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->noHistoryPlayCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_33

    move v0, v1

    .line 2239
    :goto_14
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->noHistoryPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    if-eqz v3, :cond_21

    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->noHistoryPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    invoke-virtual {v3}, Lcom/bilibili/tv/widget/DrawLinearLayout;->isFocused()Z

    move-result v3

    if-eqz v3, :cond_21

    move v0, v1

    .line 2243
    :cond_21
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->noHistoryPlayBtn:Lcom/bilibili/tv/widget/DrawTextView;

    const-string v3, "\u65e0\u75d5"

    invoke-virtual {v1, v3}, Lcom/bilibili/tv/widget/DrawTextView;->setText(Ljava/lang/CharSequence;)V

    .line 2244
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->noHistoryPlayBtn:Lcom/bilibili/tv/widget/DrawTextView;

    if-eqz v0, :cond_30

    :goto_2c
    invoke-virtual {v1, v2}, Lcom/bilibili/tv/widget/DrawTextView;->setVisibility(I)V

    goto :goto_6

    :cond_30
    const/16 v2, 0x8

    goto :goto_2c

    :cond_33
    move v0, v2

    goto :goto_14
.end method

.method private refreshVisualOrder()V
    .locals 7

    .prologue
    .line 1426
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonsContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->videoListNavigator:Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;

    if-nez v0, :cond_9

    .line 1467
    :cond_8
    :goto_8
    return-void

    .line 1431
    :cond_9
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    .line 1435
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1436
    const/4 v0, 0x0

    move v1, v0

    :goto_16
    if-ge v1, v2, :cond_50

    .line 1437
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1438
    instance-of v4, v0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    if-eqz v4, :cond_4c

    .line 1439
    check-cast v0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    .line 1441
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->getSectionId()I

    move-result v4

    .line 1444
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->videoListNavigator:Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;

    invoke-virtual {v0, v4, v1}, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->updateVisualOrder(II)V

    .line 1446
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonSectionViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_33
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonSectionView;

    .line 1447
    iget v6, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonSectionView;->sectionId:I

    if-ne v6, v4, :cond_33

    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_33

    .line 1448
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1436
    :cond_4c
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_16

    .line 1455
    :cond_50
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonSectionViews:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_8

    .line 1457
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonSectionViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1458
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonSectionViews:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_8
.end method

.method private requestHistoryForUgc(Lcom/bilibili/tv/api/video/BiliVideoDetail;Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 1672
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->requestHistoryForUgc(Lcom/bilibili/tv/api/video/BiliVideoDetail;Ljava/lang/Runnable;Z)V

    .line 1673
    return-void
.end method

.method private requestHistoryForUgc(Lcom/bilibili/tv/api/video/BiliVideoDetail;Ljava/lang/Runnable;Z)V
    .locals 17

    .prologue
    .line 1680
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mHistory:Lcom/bilibili/tv/api/video/BiliVideoDetail$History;

    if-eqz v2, :cond_e

    if-nez p3, :cond_e

    .line 1681
    if-eqz p2, :cond_d

    .line 1682
    invoke-interface/range {p2 .. p2}, Ljava/lang/Runnable;->run()V

    .line 1831
    :cond_d
    :goto_d
    return-void

    .line 1687
    :cond_e
    invoke-static/range {p0 .. p0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v13

    .line 1688
    const-string v2, "BiliAccount.get(this)"

    invoke-static {v13, v2}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1690
    const-wide/16 v5, 0x0

    .line 1691
    const-wide/16 v10, 0x0

    .line 1692
    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mBvid:Ljava/lang/String;

    .line 1693
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    if-eqz v2, :cond_78

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_78

    .line 1694
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;

    iget-wide v5, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mCid:J

    .line 1695
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;

    iget-wide v10, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mEpisodeId:J

    .line 1696
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;

    iget-object v2, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mBvid:Ljava/lang/String;

    if-eqz v2, :cond_78

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;

    iget-object v2, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mBvid:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_78

    .line 1697
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;

    iget-object v9, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mBvid:Ljava/lang/String;

    .line 1701
    :cond_78
    const-wide/16 v2, 0x0

    cmp-long v2, v5, v2

    if-nez v2, :cond_89

    .line 1702
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->mHistoryResolved:Z

    .line 1703
    if-eqz p2, :cond_d

    .line 1704
    invoke-interface/range {p2 .. p2}, Ljava/lang/Runnable;->run()V

    goto :goto_d

    .line 1711
    :cond_89
    invoke-virtual {v13}, Lbl/mg;->getSESSDATA()Ljava/lang/String;

    move-result-object v12

    .line 1714
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    .line 1715
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "history request start | cid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " | force="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->loadPerf(Ljava/lang/String;)V

    .line 1716
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/bilibili/tv/ui/video/VideoDetailActivity$17;

    move-object/from16 v4, p0

    move/from16 v7, p3

    move-object/from16 v8, p1

    move-object/from16 v16, p2

    invoke-direct/range {v3 .. v16}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$17;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;JZLcom/bilibili/tv/api/video/BiliVideoDetail;Ljava/lang/String;JLjava/lang/String;Lbl/mg;JLjava/lang/Runnable;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1830
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto/16 :goto_d
.end method

.method private resetStaffNameVisibility()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x1

    .line 815
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->staffContainer:Landroid/widget/LinearLayout;

    if-nez v0, :cond_7

    .line 826
    :cond_6
    return-void

    .line 818
    :cond_7
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->staffContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    move v3, v2

    .line 819
    :goto_e
    if-ge v3, v4, :cond_6

    .line 820
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->staffContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawLinearLayout;

    .line 821
    invoke-virtual {v0}, Lcom/bilibili/tv/widget/DrawLinearLayout;->getChildCount()I

    move-result v1

    if-le v1, v5, :cond_32

    invoke-virtual {v0, v5}, Lcom/bilibili/tv/widget/DrawLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/TextView;

    if-eqz v1, :cond_32

    .line 822
    invoke-virtual {v0, v5}, Lcom/bilibili/tv/widget/DrawLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 823
    if-nez v3, :cond_36

    move v1, v2

    :goto_2f
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 819
    :cond_32
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_e

    .line 823
    :cond_36
    const/16 v1, 0x8

    goto :goto_2f
.end method

.method private restoreFocusPosition(Landroid/support/v7/widget/RecyclerView;I)Landroid/view/View;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1623
    if-nez p1, :cond_4

    .line 1643
    :cond_3
    :goto_3
    return-object v0

    .line 1627
    :cond_4
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v1

    .line 1629
    if-eqz v1, :cond_3

    .line 1634
    add-int/lit8 v0, v1, -0x1

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1637
    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1638
    if-nez v0, :cond_3

    .line 1643
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_3
.end method

.method private saveCurrentFocusPosition(Landroid/view/View;)V
    .locals 8

    .prologue
    const v2, 0x7f080149

    const/4 v3, 0x0

    .line 1512
    if-nez p1, :cond_7

    .line 1611
    :cond_6
    :goto_6
    return-void

    .line 1516
    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f080126

    if-eq v0, v1, :cond_27

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_42

    .line 1517
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f08008d

    if-ne v0, v1, :cond_42

    .line 1518
    :cond_27
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->n:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_6

    move v0, v3

    .line 1519
    :goto_2c
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->n:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_6

    .line 1520
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->n:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-ne v1, p1, :cond_3f

    .line 1521
    iput v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->tagViewFocusPosition:I

    goto :goto_6

    .line 1519
    :cond_3f
    add-int/lit8 v0, v0, 0x1

    goto :goto_2c

    .line 1528
    :cond_42
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_71

    .line 1529
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getId()I

    move-result v0

    const v1, 0x7f080155

    if-ne v0, v1, :cond_71

    .line 1530
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    .line 1531
    :goto_5f
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v1

    if-ge v3, v1, :cond_6

    .line 1532
    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-ne v1, p1, :cond_6e

    .line 1533
    iput v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->relateVideoFocusPosition:I

    goto :goto_6

    .line 1531
    :cond_6e
    add-int/lit8 v3, v3, 0x1

    goto :goto_5f

    .line 1539
    :cond_71
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_9e

    .line 1540
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getId()I

    move-result v0

    if-ne v0, v2, :cond_9e

    .line 1541
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    .line 1542
    :goto_8b
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v1

    if-ge v3, v1, :cond_6

    .line 1543
    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-ne v1, p1, :cond_9b

    .line 1544
    iput v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->epLayoutFocusPosition:I

    goto/16 :goto_6

    .line 1542
    :cond_9b
    add-int/lit8 v3, v3, 0x1

    goto :goto_8b

    .line 1548
    :cond_9e
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    if-ne v0, v2, :cond_bf

    .line 1550
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->o:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_6

    .line 1551
    :goto_a8
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->o:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v0

    if-ge v3, v0, :cond_6

    .line 1552
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->o:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-ne v0, p1, :cond_bc

    .line 1553
    iput v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->epLayoutFocusPosition:I

    goto/16 :goto_6

    .line 1551
    :cond_bc
    add-int/lit8 v3, v3, 0x1

    goto :goto_a8

    .line 1560
    :cond_bf
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_ef

    .line 1561
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getId()I

    move-result v0

    const v1, 0x7f080171

    if-ne v0, v1, :cond_ef

    .line 1562
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    .line 1563
    :goto_dc
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v1

    if-ge v3, v1, :cond_6

    .line 1564
    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-ne v1, p1, :cond_ec

    .line 1565
    iput v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->episodesVideoFocusPosition:I

    goto/16 :goto_6

    .line 1563
    :cond_ec
    add-int/lit8 v3, v3, 0x1

    goto :goto_dc

    .line 1571
    :cond_ef
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_6

    .line 1572
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    .line 1573
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getId()I

    move-result v1

    .line 1574
    const v2, 0x7f0801a5

    if-ne v1, v2, :cond_6

    .line 1575
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonSectionViews:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_10c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonSectionView;

    .line 1576
    iget-object v4, v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonSectionView;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    if-ne v4, v0, :cond_10c

    .line 1577
    const/4 v4, 0x0

    .line 1578
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->ugcSeasonSections:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_123
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_138

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    .line 1579
    invoke-virtual {v2}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->getSectionId()I

    move-result v6

    iget v7, v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonSectionView;->sectionId:I

    if-ne v6, v7, :cond_123

    move-object v4, v2

    .line 1585
    :cond_138
    const/4 v2, -0x1

    .line 1586
    if-eqz v4, :cond_13f

    .line 1587
    invoke-virtual {v4, p1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->getDataPositionForView(Landroid/view/View;)I

    move-result v2

    .line 1590
    :cond_13f
    if-gez v2, :cond_169

    .line 1591
    :goto_141
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v5

    if-ge v3, v5, :cond_169

    .line 1592
    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-ne v5, p1, :cond_166

    .line 1599
    :goto_14d
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonSectionFocusPositions:Ljava/util/Map;

    iget v1, v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonSectionView;->sectionId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1600
    if-eqz v4, :cond_6

    .line 1601
    invoke-virtual {v4, v3}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setFocusPosition(I)V

    .line 1603
    invoke-direct {p0, v4, v3}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->updateNavTagSelectionForSection(Lcom/bilibili/tv/ui/video/widget/VideoListSection;I)V

    goto/16 :goto_6

    .line 1591
    :cond_166
    add-int/lit8 v3, v3, 0x1

    goto :goto_141

    :cond_169
    move v3, v2

    goto :goto_14d
.end method

.method private saveSearchHistory(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 3854
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3867
    :goto_6
    return-void

    .line 3858
    :cond_7
    const-string v0, "VideoDetailActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u4fdd\u5b58\u641c\u7d22\u5386\u53f2: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3860
    :try_start_1f
    new-instance v0, Landroid/provider/SearchRecentSuggestions;

    const-string v1, "uii.ang.bilitv.provider.TvSearchSuggestionProvider"

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Landroid/provider/SearchRecentSuggestions;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    const/4 v1, 0x0

    .line 3861
    invoke-virtual {v0, p1, v1}, Landroid/provider/SearchRecentSuggestions;->saveRecentQuery(Ljava/lang/String;Ljava/lang/String;)V

    .line 3862
    const/16 v0, 0x32

    invoke-direct {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->truncateSearchHistory(I)V

    .line 3863
    const-string v0, "VideoDetailActivity"

    const-string v1, "\u4fdd\u5b58\u641c\u7d22\u5386\u53f2\u6210\u529f"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_37} :catch_38

    goto :goto_6

    .line 3864
    :catch_38
    move-exception v0

    .line 3865
    const-string v1, "VideoDetailActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u4fdd\u5b58\u641c\u7d22\u5386\u53f2\u5931\u8d25: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6
.end method

.method private scheduleRemainingSectionBuilds(ILcom/bilibili/tv/ui/video/VideoDetailActivity$SectionBuildTask;)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 297
    if-le p1, v2, :cond_9

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonsContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_9

    if-nez p2, :cond_a

    .line 330
    :cond_9
    :goto_9
    return-void

    .line 300
    :cond_a
    invoke-direct {p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->cancelPendingSectionBuilds()V

    .line 301
    new-array v0, v2, [I

    const/4 v1, 0x0

    aput v2, v0, v1

    .line 302
    new-instance v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$2;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$2;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;[IILcom/bilibili/tv/ui/video/VideoDetailActivity$SectionBuildTask;)V

    .line 328
    iput-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->pendingSectionBuildRunnable:Ljava/lang/Runnable;

    .line 329
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonsContainer:Landroid/widget/LinearLayout;

    const-wide/16 v2, 0x20

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_9
.end method

.method private scrollToViewIfNeeded(Landroid/view/View;)V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 866
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->scrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_9

    if-nez p1, :cond_a

    .line 918
    :cond_9
    :goto_9
    return-void

    .line 869
    :cond_a
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 870
    const v3, 0x7f080192

    if-eq v0, v3, :cond_36

    const v3, 0x7f080195

    if-eq v0, v3, :cond_36

    const v3, 0x7f080196

    if-eq v0, v3, :cond_36

    const v3, 0x7f080167

    if-eq v0, v3, :cond_36

    const v3, 0x7f08016a

    if-eq v0, v3, :cond_36

    const v3, 0x7f08014d

    if-eq v0, v3, :cond_36

    const v3, 0x7f080268

    if-eq v0, v3, :cond_36

    const v3, 0x7f0801a1

    if-ne v0, v3, :cond_57

    :cond_36
    move v0, v2

    .line 879
    :goto_37
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->staffContainer:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_c9

    move v3, v1

    .line 880
    :goto_3c
    iget-object v4, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->staffContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_c9

    .line 881
    iget-object v4, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->staffContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-ne v4, p1, :cond_59

    move v3, v2

    .line 887
    :goto_4d
    if-nez v0, :cond_51

    if-eqz v3, :cond_5c

    .line 888
    :cond_51
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->scrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v1, v1}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    goto :goto_9

    :cond_57
    move v0, v1

    .line 870
    goto :goto_37

    .line 880
    :cond_59
    add-int/lit8 v3, v3, 0x1

    goto :goto_3c

    .line 891
    :cond_5c
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 892
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->scrollView:Landroid/widget/ScrollView;

    invoke-virtual {v3, v0}, Landroid/widget/ScrollView;->getHitRect(Landroid/graphics/Rect;)V

    .line 893
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 894
    invoke-virtual {p1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 895
    new-array v3, v5, [I

    .line 896
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->scrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->getLocationOnScreen([I)V

    .line 897
    new-array v0, v5, [I

    .line 898
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 899
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 900
    const/high16 v4, 0x42480000    # 50.0f

    mul-float/2addr v0, v4

    float-to-int v4, v0

    .line 902
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->findSectionContainer(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 903
    if-eqz v0, :cond_8f

    move-object p1, v0

    .line 905
    :cond_8f
    new-array v0, v5, [I

    .line 906
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 907
    aget v0, v0, v2

    aget v2, v3, v2

    sub-int/2addr v0, v2

    .line 908
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v2, v0

    .line 910
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->scrollView:Landroid/widget/ScrollView;

    invoke-virtual {v3}, Landroid/widget/ScrollView;->getHeight()I

    move-result v3

    .line 911
    if-ge v0, v4, :cond_b5

    .line 912
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->scrollView:Landroid/widget/ScrollView;

    invoke-virtual {v2}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v2

    .line 913
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->scrollView:Landroid/widget/ScrollView;

    add-int/2addr v0, v2

    sub-int/2addr v0, v4

    invoke-virtual {v3, v1, v0}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    goto/16 :goto_9

    .line 914
    :cond_b5
    sub-int v0, v3, v4

    if-le v2, v0, :cond_9

    .line 915
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->scrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v0

    .line 916
    iget-object v5, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->scrollView:Landroid/widget/ScrollView;

    add-int/2addr v0, v2

    sub-int/2addr v0, v3

    add-int/2addr v0, v4

    invoke-virtual {v5, v1, v0}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    goto/16 :goto_9

    :cond_c9
    move v3, v1

    goto :goto_4d
.end method

.method private setupGlobalFocusChangeListener()V
    .locals 2

    .prologue
    .line 786
    const v0, 0x1020002

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 787
    if-eqz v0, :cond_15

    .line 788
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$16;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$16;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalFocusChangeListener(Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;)V

    .line 812
    :cond_15
    return-void
.end method

.method private setupNavigationTagsForSection(Lcom/bilibili/tv/ui/video/widget/VideoListSection;I)V
    .locals 1

    .prologue
    .line 3719
    if-nez p1, :cond_3

    .line 3839
    :cond_2
    :goto_2
    return-void

    .line 3723
    :cond_3
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->getSectionId()I

    .line 3725
    invoke-virtual {p1, p2}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setupNavigationTags(I)V

    .line 3728
    new-instance v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$34;

    invoke-direct {v0, p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$34;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)V

    invoke-virtual {p1, v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setOnFocusExitListener(Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnFocusExitListener;)V

    .line 3817
    new-instance v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$35;

    invoke-direct {v0, p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$35;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)V

    invoke-virtual {p1, v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setOnNavTagFocusListener(Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnNavTagFocusListener;)V

    .line 3828
    new-instance v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$36;

    invoke-direct {v0, p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$36;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)V

    invoke-virtual {p1, v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setOnNavTagClickListener(Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnNavTagClickListener;)V

    .line 3835
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->getFocusPosition()I

    move-result v0

    .line 3836
    if-ltz v0, :cond_2

    .line 3837
    invoke-virtual {p1, v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->updateNavTagSelection(I)V

    goto :goto_2
.end method

.method private showFavoriteMenu()V
    .locals 4

    .prologue
    .line 4390
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->u:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    if-nez v0, :cond_5

    .line 4404
    :goto_4
    return-void

    .line 4393
    :cond_5
    new-instance v0, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;

    iget-wide v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->s:J

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->u:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    invoke-direct {v0, p0, v2, v3, v1}, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;-><init>(Landroid/app/Activity;JLcom/bilibili/tv/api/video/BiliVideoDetail;)V

    .line 4394
    new-instance v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$42;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$42;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)V

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;->setOnFavoriteStatusChangedListener(Lcom/bilibili/tv/ui/video/FavoriteMenuDialog$OnFavoriteStatusChangedListener;)V

    .line 4403
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;->show()V

    goto :goto_4
.end method

.method private showInteractionButtons()V
    .locals 14

    .prologue
    .line 4808
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->expandBtn:Lcom/bilibili/tv/widget/DrawLinearLayout;

    if-eqz v0, :cond_b

    .line 4809
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->expandBtn:Lcom/bilibili/tv/widget/DrawLinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setVisibility(I)V

    .line 4811
    :cond_b
    const v0, 0x7f080167

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 4812
    const v0, 0x7f08016a

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 4813
    const v0, 0x7f08014d

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 4814
    const v0, 0x7f080268

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 4815
    const v0, 0x7f080241

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 4816
    const v0, 0x7f0801a1

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 4817
    const v0, 0x7f0801dc

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 4819
    invoke-static {p0}, Lbl/abd;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_ea

    const/4 v0, 0x1

    .line 4821
    :goto_43
    invoke-direct {p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->updateSubscribeButtonUI()V

    .line 4822
    invoke-static {p0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v1

    invoke-virtual {v1}, Lbl/mg;->a()Z

    move-result v1

    if-eqz v1, :cond_ed

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->mPgcInfo:Lcom/bilibili/tv/api/video/PgcInfo;

    if-eqz v1, :cond_5a

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->mPgcInfo:Lcom/bilibili/tv/api/video/PgcInfo;

    iget v1, v1, Lcom/bilibili/tv/api/video/PgcInfo;->seasonId:I

    if-gtz v1, :cond_62

    :cond_5a
    iget-wide v10, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->currentSeasonId:J

    const-wide/16 v12, 0x0

    cmp-long v1, v10, v12

    if-lez v1, :cond_ed

    :cond_62
    const/4 v1, 0x1

    move v2, v1

    .line 4824
    :goto_64
    if-eqz v3, :cond_6a

    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4825
    :cond_6a
    if-eqz v4, :cond_70

    const/4 v1, 0x0

    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4826
    :cond_70
    if-eqz v5, :cond_76

    const/4 v1, 0x0

    invoke-virtual {v5, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4827
    :cond_76
    if-eqz v6, :cond_7e

    .line 4828
    if-eqz v2, :cond_f1

    const/4 v1, 0x0

    :goto_7b
    invoke-virtual {v6, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4830
    :cond_7e
    if-eqz v7, :cond_87

    .line 4831
    if-eqz v0, :cond_f4

    const/16 v1, 0x8

    :goto_84
    invoke-virtual {v7, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4833
    :cond_87
    if-eqz v8, :cond_8d

    const/4 v1, 0x0

    invoke-virtual {v8, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4834
    :cond_8d
    if-eqz v9, :cond_93

    const/4 v1, 0x0

    invoke-virtual {v9, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4838
    :cond_93
    if-nez v0, :cond_f6

    const/4 v0, 0x1

    move v1, v0

    .line 4839
    :goto_97
    if-eqz v5, :cond_a3

    .line 4840
    if-eqz v2, :cond_f9

    if-eqz v6, :cond_f9

    .line 4841
    const v0, 0x7f080268

    invoke-virtual {v5, v0}, Landroid/view/View;->setNextFocusRightId(I)V

    .line 4848
    :cond_a3
    :goto_a3
    if-eqz v6, :cond_b5

    if-eqz v2, :cond_b5

    .line 4849
    if-eqz v1, :cond_109

    const v0, 0x7f080241

    :goto_ac
    invoke-virtual {v6, v0}, Landroid/view/View;->setNextFocusRightId(I)V

    .line 4850
    const v0, 0x7f08014d

    invoke-virtual {v6, v0}, Landroid/view/View;->setNextFocusLeftId(I)V

    .line 4852
    :cond_b5
    if-eqz v7, :cond_c9

    if-eqz v1, :cond_c9

    .line 4853
    if-eqz v2, :cond_10d

    if-eqz v6, :cond_10d

    .line 4854
    const v0, 0x7f080268

    .line 4853
    :goto_c0
    invoke-virtual {v7, v0}, Landroid/view/View;->setNextFocusLeftId(I)V

    .line 4855
    const v0, 0x7f0801a1

    invoke-virtual {v7, v0}, Landroid/view/View;->setNextFocusRightId(I)V

    .line 4857
    :cond_c9
    if-eqz v8, :cond_d5

    .line 4858
    if-eqz v2, :cond_111

    if-eqz v6, :cond_111

    .line 4859
    const v0, 0x7f080268

    invoke-virtual {v8, v0}, Landroid/view/View;->setNextFocusLeftId(I)V

    .line 4867
    :cond_d5
    :goto_d5
    if-eqz v3, :cond_e9

    .line 4868
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->rePlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    if-eqz v0, :cond_121

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->rePlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    invoke-virtual {v0}, Lcom/bilibili/tv/widget/DrawLinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_121

    .line 4869
    const v0, 0x7f080195

    invoke-virtual {v3, v0}, Landroid/view/View;->setNextFocusLeftId(I)V

    .line 4876
    :cond_e9
    :goto_e9
    return-void

    .line 4819
    :cond_ea
    const/4 v0, 0x0

    goto/16 :goto_43

    .line 4822
    :cond_ed
    const/4 v1, 0x0

    move v2, v1

    goto/16 :goto_64

    .line 4828
    :cond_f1
    const/16 v1, 0x8

    goto :goto_7b

    .line 4831
    :cond_f4
    const/4 v1, 0x0

    goto :goto_84

    .line 4838
    :cond_f6
    const/4 v0, 0x0

    move v1, v0

    goto :goto_97

    .line 4842
    :cond_f9
    if-eqz v1, :cond_102

    .line 4843
    const v0, 0x7f080241

    invoke-virtual {v5, v0}, Landroid/view/View;->setNextFocusRightId(I)V

    goto :goto_a3

    .line 4845
    :cond_102
    const v0, 0x7f0801a1

    invoke-virtual {v5, v0}, Landroid/view/View;->setNextFocusRightId(I)V

    goto :goto_a3

    .line 4849
    :cond_109
    const v0, 0x7f0801a1

    goto :goto_ac

    .line 4854
    :cond_10d
    const v0, 0x7f08014d

    goto :goto_c0

    .line 4860
    :cond_111
    if-eqz v1, :cond_11a

    .line 4861
    const v0, 0x7f080241

    invoke-virtual {v8, v0}, Landroid/view/View;->setNextFocusLeftId(I)V

    goto :goto_d5

    .line 4863
    :cond_11a
    const v0, 0x7f08014d

    invoke-virtual {v8, v0}, Landroid/view/View;->setNextFocusLeftId(I)V

    goto :goto_d5

    .line 4870
    :cond_121
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->noHistoryPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    if-eqz v0, :cond_134

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->noHistoryPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    invoke-virtual {v0}, Lcom/bilibili/tv/widget/DrawLinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_134

    .line 4871
    const v0, 0x7f080196

    invoke-virtual {v3, v0}, Landroid/view/View;->setNextFocusLeftId(I)V

    goto :goto_e9

    .line 4873
    :cond_134
    const v0, 0x7f080192

    invoke-virtual {v3, v0}, Landroid/view/View;->setNextFocusLeftId(I)V

    goto :goto_e9
.end method

.method private showPgcEpisodes(Lcom/bilibili/tv/api/video/PgcInfo;)V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 3568
    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo;->episodes:Ljava/util/List;

    if-eqz v0, :cond_e

    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo;->episodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 3569
    :cond_e
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->hh:Landroid/widget/TextView;

    if-eqz v0, :cond_17

    .line 3570
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->hh:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3572
    :cond_17
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->o:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_20

    .line 3573
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->o:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 3589
    :cond_20
    :goto_20
    return-void

    .line 3578
    :cond_21
    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo;->episodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_3d

    .line 3579
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->hh:Landroid/widget/TextView;

    if-eqz v0, :cond_33

    .line 3580
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->hh:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3582
    :cond_33
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->o:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_20

    .line 3583
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->o:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    goto :goto_20

    .line 3588
    :cond_3d
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->createPgcEpisodesSectionView(Lcom/bilibili/tv/api/video/PgcInfo;)V

    goto :goto_20
.end method

.method private showPgcInfo(Lcom/bilibili/tv/api/video/PgcInfo;)V
    .locals 6

    .prologue
    const v3, 0x7f060377

    const v4, 0x7f0601bb

    const/4 v2, -0x2

    const/4 v5, 0x0

    .line 3415
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->pgcInfoContainer:Landroid/widget/LinearLayout;

    if-nez v0, :cond_d

    .line 3462
    :goto_c
    return-void

    .line 3418
    :cond_d
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->pgcInfoContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3420
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->pgcRating:Landroid/widget/TextView;

    if-eqz v0, :cond_ca

    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo;->rating:Lcom/bilibili/tv/api/video/PgcInfo$Rating;

    if-eqz v0, :cond_ca

    .line 3421
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->pgcRating:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/bilibili/tv/api/video/PgcInfo;->getRatingString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3422
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->pgcRating:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3427
    :cond_28
    :goto_28
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->pgcType:Landroid/widget/TextView;

    if-eqz v0, :cond_35

    .line 3428
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->pgcType:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/bilibili/tv/api/video/PgcInfo;->getTypeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3431
    :cond_35
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->pgcArea:Landroid/widget/TextView;

    if-eqz v0, :cond_42

    .line 3432
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->pgcArea:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/bilibili/tv/api/video/PgcInfo;->getAreaString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3435
    :cond_42
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->pgcNewEp:Landroid/widget/TextView;

    if-eqz v0, :cond_d7

    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo;->newEp:Lcom/bilibili/tv/api/video/PgcInfo$NewEp;

    if-eqz v0, :cond_d7

    .line 3436
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->pgcNewEp:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/bilibili/tv/api/video/PgcInfo;->newEp:Lcom/bilibili/tv/api/video/PgcInfo$NewEp;

    iget-object v1, v1, Lcom/bilibili/tv/api/video/PgcInfo$NewEp;->indexShow:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3441
    :cond_53
    :goto_53
    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo;->badgeInfo:Lcom/bilibili/tv/api/video/PgcInfo$BadgeInfo;

    if-eqz v0, :cond_bf

    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo;->badgeInfo:Lcom/bilibili/tv/api/video/PgcInfo$BadgeInfo;

    iget-object v0, v0, Lcom/bilibili/tv/api/video/PgcInfo$BadgeInfo;->text:Ljava/lang/String;

    if-eqz v0, :cond_bf

    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo;->badgeInfo:Lcom/bilibili/tv/api/video/PgcInfo$BadgeInfo;

    iget-object v0, v0, Lcom/bilibili/tv/api/video/PgcInfo$BadgeInfo;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_bf

    .line 3442
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 3443
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 3447
    const v2, 0x7f06014d

    invoke-static {v2}, Lbl/adl;->b(I)I

    move-result v2

    invoke-virtual {v1, v2, v5, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 3448
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3449
    const/high16 v1, 0x41600000    # 14.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 3450
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0500a1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3451
    iget-object v1, p1, Lcom/bilibili/tv/api/video/PgcInfo;->badgeInfo:Lcom/bilibili/tv/api/video/PgcInfo$BadgeInfo;

    iget-object v1, v1, Lcom/bilibili/tv/api/video/PgcInfo$BadgeInfo;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3452
    invoke-static {v3}, Lbl/adl;->b(I)I

    move-result v1

    invoke-static {v4}, Lbl/adl;->b(I)I

    move-result v2

    invoke-static {v3}, Lbl/adl;->b(I)I

    move-result v3

    invoke-static {v4}, Lbl/adl;->b(I)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 3453
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 3454
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 3455
    iget-object v1, p1, Lcom/bilibili/tv/api/video/PgcInfo;->badgeInfo:Lcom/bilibili/tv/api/video/PgcInfo$BadgeInfo;

    iget-object v1, v1, Lcom/bilibili/tv/api/video/PgcInfo$BadgeInfo;->bgColor:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/video/widget/VideoTagStyler;->applyTranslucent(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 3456
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->pgcInfoContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 3459
    :cond_bf
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->showPgcSections(Lcom/bilibili/tv/api/video/PgcInfo;)V

    .line 3460
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->showPgcEpisodes(Lcom/bilibili/tv/api/video/PgcInfo;)V

    .line 3461
    invoke-direct {p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->refreshVisualOrder()V

    goto/16 :goto_c

    .line 3423
    :cond_ca
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->pgcRating:Landroid/widget/TextView;

    if-eqz v0, :cond_28

    .line 3424
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->pgcRating:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_28

    .line 3437
    :cond_d7
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->pgcNewEp:Landroid/widget/TextView;

    if-eqz v0, :cond_53

    .line 3438
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->pgcNewEp:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_53
.end method

.method private showPgcSections(Lcom/bilibili/tv/api/video/PgcInfo;)V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3677
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonsContainer:Landroid/widget/LinearLayout;

    if-nez v0, :cond_7

    .line 3716
    :cond_6
    :goto_6
    return-void

    .line 3681
    :cond_7
    invoke-direct {p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->cancelPendingSectionBuilds()V

    .line 3682
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3683
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 3684
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonSectionViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3685
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->videoListNavigator:Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;

    if-eqz v0, :cond_22

    .line 3686
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->videoListNavigator:Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->clearSections()V

    .line 3689
    :cond_22
    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo;->seasons:Ljava/util/List;

    if-eqz v0, :cond_5e

    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo;->seasons:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5e

    move v1, v2

    .line 3690
    :goto_2f
    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo;->sections:Ljava/util/List;

    if-eqz v0, :cond_60

    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo;->sections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_60

    move v0, v2

    .line 3692
    :goto_3c
    if-nez v1, :cond_40

    if-eqz v0, :cond_6

    .line 3696
    :cond_40
    if-eqz v1, :cond_62

    move v4, v2

    :goto_43
    if-eqz v0, :cond_64

    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo;->sections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_4b
    add-int/2addr v4, v0

    .line 3699
    if-eqz v1, :cond_66

    .line 3700
    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo;->seasons:Ljava/util/List;

    invoke-direct {p0, v0, v3}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->createSeasonsSectionView(Ljava/util/List;I)V

    .line 3704
    :goto_53
    if-le v4, v2, :cond_6

    .line 3705
    new-instance v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$33;

    invoke-direct {v0, p0, v1, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$33;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;ZLcom/bilibili/tv/api/video/PgcInfo;)V

    invoke-direct {p0, v4, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->scheduleRemainingSectionBuilds(ILcom/bilibili/tv/ui/video/VideoDetailActivity$SectionBuildTask;)V

    goto :goto_6

    :cond_5e
    move v1, v3

    .line 3689
    goto :goto_2f

    :cond_60
    move v0, v3

    .line 3690
    goto :goto_3c

    :cond_62
    move v4, v3

    .line 3696
    goto :goto_43

    :cond_64
    move v0, v3

    goto :goto_4b

    .line 3702
    :cond_66
    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo;->sections:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/PgcInfo$Section;

    invoke-direct {p0, v0, v3}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->createPgcSectionView(Lcom/bilibili/tv/api/video/PgcInfo$Section;I)V

    goto :goto_53
.end method

.method private showVideoIntroPanel()V
    .locals 8

    .prologue
    .line 4411
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->u:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    .line 4412
    if-nez v1, :cond_5

    .line 4447
    :cond_4
    :goto_4
    return-void

    .line 4415
    :cond_5
    new-instance v2, Lcom/bilibili/tv/ui/video/RightSlidePanelDialog;

    const v0, 0x3ecccccd    # 0.4f

    invoke-direct {v2, p0, v0}, Lcom/bilibili/tv/ui/video/RightSlidePanelDialog;-><init>(Landroid/app/Activity;F)V

    .line 4416
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v3, 0x7f0a00b8

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 4417
    const v0, 0x7f080264

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 4418
    if-eqz v0, :cond_31

    .line 4419
    iget-object v4, v1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mBvid:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_63

    .line 4420
    iget-object v4, v1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mBvid:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4425
    :cond_31
    :goto_31
    const v0, 0x7f080265

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 4426
    if-eqz v0, :cond_49

    .line 4427
    iget-object v4, v1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mDescription:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7c

    .line 4428
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4433
    :cond_49
    :goto_49
    invoke-virtual {v2, v3}, Lcom/bilibili/tv/ui/video/RightSlidePanelDialog;->setContent(Landroid/view/View;)V

    .line 4434
    invoke-virtual {v2}, Lcom/bilibili/tv/ui/video/RightSlidePanelDialog;->show()V

    .line 4436
    const v0, 0x7f080266

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 4437
    if-eqz v0, :cond_4

    .line 4438
    new-instance v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$43;

    invoke-direct {v1, p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$43;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Landroid/view/View;)V

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_4

    .line 4422
    :cond_63
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "av"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, v1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mAvid:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_31

    .line 4430
    :cond_7c
    iget-object v1, v1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_49
.end method

.method private startFramePerf(Ljava/lang/String;)V
    .locals 9

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 234
    const v0, 0x1020002

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 235
    if-nez v8, :cond_c

    .line 274
    :goto_b
    return-void

    .line 238
    :cond_c
    invoke-virtual {v8}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 239
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 240
    new-array v3, v2, [J

    const-wide/16 v4, 0x0

    aput-wide v4, v3, v1

    .line 241
    new-array v4, v2, [I

    aput v1, v4, v1

    .line 242
    new-instance v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$1;

    move-object v2, p0

    move-object v5, p1

    invoke-direct/range {v1 .. v8}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$1;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;[J[ILjava/lang/String;JLandroid/view/View;)V

    .line 273
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_b
.end method

.method private startSeasonBadgesLoad(Lcom/bilibili/tv/api/video/BiliVideoDetail;)V
    .locals 9

    .prologue
    const-wide/16 v6, 0x0

    .line 5391
    if-eqz p1, :cond_14

    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->ugcSeason:Lcom/alibaba/fastjson/JSONObject;

    if-eqz v0, :cond_14

    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->sectionInfoList:Ljava/util/List;

    if-eqz v0, :cond_14

    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->sectionInfoList:Ljava/util/List;

    .line 5392
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 5431
    :cond_14
    :goto_14
    return-void

    .line 5395
    :cond_15
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->ugcSeason:Lcom/alibaba/fastjson/JSONObject;

    const-string v1, "id"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v2

    .line 5396
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->ugcSeason:Lcom/alibaba/fastjson/JSONObject;

    const-string v1, "mid"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v4

    .line 5397
    cmp-long v0, v4, v6

    if-gtz v0, :cond_31

    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mOwner:Lcom/bilibili/tv/api/video/BiliUser;

    if-eqz v0, :cond_31

    .line 5398
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mOwner:Lcom/bilibili/tv/api/video/BiliUser;

    iget-wide v4, v0, Lcom/bilibili/tv/api/video/BiliUser;->mid:J

    .line 5400
    :cond_31
    cmp-long v0, v2, v6

    if-lez v0, :cond_14

    cmp-long v0, v4, v6

    if-lez v0, :cond_14

    .line 5403
    iget-wide v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonBadgesLoadedSeasonId:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_14

    .line 5406
    iput-wide v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonBadgesLoadedSeasonId:J

    .line 5408
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->ugcSeason:Lcom/alibaba/fastjson/JSONObject;

    const-string v1, "ep_count"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v6

    .line 5409
    const-string v0, "SeasonBadges"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "start season="

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, " vmid="

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, " ep="

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5411
    new-instance v8, Ljava/lang/Thread;

    new-instance v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$44;

    move-object v1, p0

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$44;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;JJILcom/bilibili/tv/api/video/BiliVideoDetail;)V

    const-string v1, "SeasonBadgesLoad"

    invoke-direct {v8, v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 5430
    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    goto :goto_14
.end method

.method private final syncNoHistoryOff()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 4314
    sput-boolean v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->sNoHistoryPlayMode:Z

    .line 4315
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->noHistoryPlayCheckBox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->noHistoryPlayCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 4316
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->noHistoryPlayCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 4318
    :cond_14
    invoke-direct {p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->refreshNoHistoryLabel()V

    .line 4319
    return-void
.end method

.method private toggleContentVisibility()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v1, 0x0

    .line 1236
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->isContentHidden:Z

    if-nez v0, :cond_1d

    const/4 v0, 0x1

    :goto_8
    iput-boolean v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->isContentHidden:Z

    .line 1238
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->m:Landroid/view/View;

    .line 1239
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->gradientMaskView:Landroid/view/View;

    .line 1241
    iget-boolean v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->isContentHidden:Z

    if-eqz v3, :cond_1f

    .line 1242
    if-eqz v0, :cond_17

    .line 1243
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1245
    :cond_17
    if-eqz v2, :cond_1c

    .line 1246
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1261
    :cond_1c
    :goto_1c
    return-void

    :cond_1d
    move v0, v1

    .line 1236
    goto :goto_8

    .line 1249
    :cond_1f
    if-eqz v0, :cond_24

    .line 1250
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1252
    :cond_24
    if-eqz v2, :cond_29

    .line 1253
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1255
    :cond_29
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/ProgressPlayButton;

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/ProgressPlayButton;

    invoke-virtual {v0}, Lcom/bilibili/tv/widget/ProgressPlayButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3b

    .line 1256
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/ProgressPlayButton;

    invoke-virtual {v0}, Lcom/bilibili/tv/widget/ProgressPlayButton;->requestFocus()Z

    goto :goto_1c

    .line 1257
    :cond_3b
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->rePlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->rePlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    invoke-virtual {v0}, Lcom/bilibili/tv/widget/DrawLinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1c

    .line 1258
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->rePlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    invoke-virtual {v0}, Lcom/bilibili/tv/widget/DrawLinearLayout;->requestFocus()Z

    goto :goto_1c
.end method

.method private final tripleVideo()V
    .locals 6

    .prologue
    .line 4727
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->B:Z

    if-eqz v0, :cond_5

    .line 4736
    :goto_4
    return-void

    .line 4730
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->B:Z

    .line 4731
    invoke-static {p0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v0

    .line 4732
    const-string v1, "BiliAccount.get(this)"

    invoke-static {v0, v1}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4733
    invoke-static {v0}, Lmybl/CookieUtil;->getFullCookieWithDevice(Lbl/mg;)Ljava/lang/String;

    move-result-object v1

    .line 4734
    invoke-static {v0}, Lmybl/CookieUtil;->getBiliJct(Lbl/mg;)Ljava/lang/String;

    move-result-object v2

    .line 4735
    const-class v0, Lmybl/MyBiliApiService;

    invoke-static {v0}, Lbl/vo;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmybl/MyBiliApiService;

    iget-wide v4, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->s:J

    invoke-interface {v0, v4, v5, v2, v1}, Lmybl/MyBiliApiService;->tripleVideo(JLjava/lang/String;Ljava/lang/String;)Lbl/vp;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$TripleResponse;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$TripleResponse;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)V

    invoke-virtual {v0, v1}, Lbl/vp;->a(Lretrofit2/Callback;)V

    goto :goto_4
.end method

.method private truncateSearchHistory(I)V
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 3874
    const-string v0, "content://uii.ang.bilitv.provider.TvSearchSuggestionProvider/suggestions"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 3877
    :try_start_7
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "_id ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_13} :catch_47
    .catchall {:try_start_7 .. :try_end_13} :catchall_6b

    move-result-object v2

    .line 3878
    if-eqz v2, :cond_41

    .line 3879
    :try_start_16
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 3880
    if-le v0, p1, :cond_41

    .line 3881
    sub-int v3, v0, p1

    .line 3882
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3883
    const/4 v0, 0x0

    :goto_22
    if-ge v0, v3, :cond_41

    .line 3884
    const-string v4, "_id"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 3885
    invoke-static {v1, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 3886
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v5, v4, v6, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3887
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_3e} :catch_78
    .catchall {:try_start_16 .. :try_end_3e} :catchall_73

    .line 3883
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    .line 3894
    :cond_41
    if-eqz v2, :cond_46

    .line 3895
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 3898
    :cond_46
    :goto_46
    return-void

    .line 3891
    :catch_47
    move-exception v0

    move-object v1, v6

    .line 3892
    :goto_49
    :try_start_49
    const-string v2, "VideoDetailActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "truncateSearchHistory error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_65
    .catchall {:try_start_49 .. :try_end_65} :catchall_75

    .line 3894
    if-eqz v1, :cond_46

    .line 3895
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_46

    .line 3894
    :catchall_6b
    move-exception v0

    move-object v2, v6

    :goto_6d
    if-eqz v2, :cond_72

    .line 3895
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 3897
    :cond_72
    throw v0

    .line 3894
    :catchall_73
    move-exception v0

    goto :goto_6d

    :catchall_75
    move-exception v0

    move-object v2, v1

    goto :goto_6d

    .line 3891
    :catch_78
    move-exception v0

    move-object v1, v2

    goto :goto_49
.end method

.method private updateBasicVideoInfo(Lcom/bilibili/tv/api/video/BiliVideoDetail;)V
    .locals 7

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 3235
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->e:Landroid/widget/TextView;

    .line 3236
    if-eqz v0, :cond_12

    .line 3237
    invoke-virtual {p1}, Lcom/bilibili/tv/api/video/BiliVideoDetail;->getPlays()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lbl/adh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3241
    :cond_12
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->ff:Landroid/widget/TextView;

    .line 3242
    if-eqz v0, :cond_21

    .line 3243
    invoke-virtual {p1}, Lcom/bilibili/tv/api/video/BiliVideoDetail;->getDanmakus()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lbl/adh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3247
    :cond_21
    const v0, 0x7f08016d

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 3248
    if-eqz v0, :cond_62

    iget v1, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mDuration:I

    if-lez v1, :cond_62

    .line 3249
    iget v1, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mDuration:I

    const/16 v2, 0xe10

    if-lt v1, v2, :cond_74

    .line 3250
    const-string v1, "%d:%02d:%02d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mDuration:I

    div-int/lit16 v3, v3, 0xe10

    .line 3251
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    iget v3, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mDuration:I

    rem-int/lit16 v3, v3, 0xe10

    div-int/lit8 v3, v3, 0x3c

    .line 3252
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget v3, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mDuration:I

    rem-int/lit8 v3, v3, 0x3c

    .line 3253
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    .line 3250
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3262
    :cond_62
    :goto_62
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->g:Landroid/widget/TextView;

    .line 3263
    if-eqz v0, :cond_73

    .line 3264
    iget-wide v2, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mCreatedTimestamp:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_94

    .line 3265
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3272
    :cond_73
    :goto_73
    return-void

    .line 3255
    :cond_74
    const-string v1, "%02d:%02d"

    new-array v2, v5, [Ljava/lang/Object;

    iget v3, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mDuration:I

    div-int/lit8 v3, v3, 0x3c

    .line 3256
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    iget v3, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mDuration:I

    rem-int/lit8 v3, v3, 0x3c

    .line 3257
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    .line 3255
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_62

    .line 3267
    :cond_94
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3268
    iget-wide v2, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mCreatedTimestamp:J

    invoke-static {v2, v3}, Lcom/bilibili/tv/util/DateHelper;->formatDate(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_73
.end method

.method private updateBiliVideoDetailWithPgcInfo(Lcom/bilibili/tv/api/video/BiliVideoDetail;Lcom/bilibili/tv/api/video/PgcInfo;)V
    .locals 10

    .prologue
    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    .line 3124
    if-eqz p1, :cond_b

    if-eqz p2, :cond_b

    iget-object v0, p2, Lcom/bilibili/tv/api/video/PgcInfo;->episodes:Ljava/util/List;

    if-nez v0, :cond_c

    .line 3230
    :cond_b
    :goto_b
    return-void

    .line 3128
    :cond_c
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mBangumiInfo:Lcom/bilibili/tv/api/video/BiliVideoDetail$BangumiInfo;

    if-nez v0, :cond_17

    .line 3129
    new-instance v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$BangumiInfo;

    invoke-direct {v0}, Lcom/bilibili/tv/api/video/BiliVideoDetail$BangumiInfo;-><init>()V

    iput-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mBangumiInfo:Lcom/bilibili/tv/api/video/BiliVideoDetail$BangumiInfo;

    .line 3131
    :cond_17
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mBangumiInfo:Lcom/bilibili/tv/api/video/BiliVideoDetail$BangumiInfo;

    iget v1, p2, Lcom/bilibili/tv/api/video/PgcInfo;->seasonId:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$BangumiInfo;->mSeasonId:Ljava/lang/String;

    .line 3132
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mBangumiInfo:Lcom/bilibili/tv/api/video/BiliVideoDetail$BangumiInfo;

    iget-object v1, p2, Lcom/bilibili/tv/api/video/PgcInfo;->title:Ljava/lang/String;

    iput-object v1, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$BangumiInfo;->mTitle:Ljava/lang/String;

    .line 3135
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    if-eqz v0, :cond_1b9

    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1b9

    .line 3136
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;

    iget-wide v0, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mCid:J

    move-wide v2, v0

    .line 3141
    :goto_3e
    iget-object v0, p2, Lcom/bilibili/tv/api/video/PgcInfo;->episodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_44
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/PgcInfo$Episode;

    .line 3142
    iget-wide v8, v0, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->cid:J

    cmp-long v0, v8, v2

    if-nez v0, :cond_44

    .line 3143
    const/4 v0, 0x1

    .line 3149
    :goto_57
    if-nez v0, :cond_5d

    cmp-long v0, v2, v4

    if-gtz v0, :cond_b

    .line 3154
    :cond_5d
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    if-nez v0, :cond_68

    .line 3155
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    .line 3157
    :cond_68
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    move v1, v6

    .line 3158
    :goto_6e
    iget-object v0, p2, Lcom/bilibili/tv/api/video/PgcInfo;->episodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_8d

    .line 3159
    iget-object v0, p2, Lcom/bilibili/tv/api/video/PgcInfo;->episodes:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/PgcInfo$Episode;

    .line 3160
    add-int/lit8 v2, v1, 0x1

    invoke-direct {p0, v0, v2}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->convertEpisodeToPage(Lcom/bilibili/tv/api/video/PgcInfo$Episode;I)Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;

    move-result-object v0

    .line 3161
    iget-object v2, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3158
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6e

    .line 3165
    :cond_8d
    iget-object v0, p2, Lcom/bilibili/tv/api/video/PgcInfo;->stat:Lcom/bilibili/tv/api/video/PgcInfo$Stat;

    if-eqz v0, :cond_b4

    .line 3166
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mStat:Lcom/bilibili/tv/api/video/BiliVideoDetail$Stat;

    if-nez v0, :cond_9c

    .line 3167
    new-instance v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Stat;

    invoke-direct {v0}, Lcom/bilibili/tv/api/video/BiliVideoDetail$Stat;-><init>()V

    iput-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mStat:Lcom/bilibili/tv/api/video/BiliVideoDetail$Stat;

    .line 3169
    :cond_9c
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mStat:Lcom/bilibili/tv/api/video/BiliVideoDetail$Stat;

    iget-object v1, p2, Lcom/bilibili/tv/api/video/PgcInfo;->stat:Lcom/bilibili/tv/api/video/PgcInfo$Stat;

    iget-wide v2, v1, Lcom/bilibili/tv/api/video/PgcInfo$Stat;->views:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Stat;->mPlays:Ljava/lang/String;

    .line 3170
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mStat:Lcom/bilibili/tv/api/video/BiliVideoDetail$Stat;

    iget-object v1, p2, Lcom/bilibili/tv/api/video/PgcInfo;->stat:Lcom/bilibili/tv/api/video/PgcInfo$Stat;

    iget-wide v2, v1, Lcom/bilibili/tv/api/video/PgcInfo$Stat;->danmakus:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Stat;->mDanmakus:Ljava/lang/String;

    .line 3174
    :cond_b4
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mOwner:Lcom/bilibili/tv/api/video/BiliUser;

    if-nez v0, :cond_bf

    .line 3175
    new-instance v0, Lcom/bilibili/tv/api/video/BiliUser;

    invoke-direct {v0}, Lcom/bilibili/tv/api/video/BiliUser;-><init>()V

    iput-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mOwner:Lcom/bilibili/tv/api/video/BiliUser;

    .line 3177
    :cond_bf
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mStaffList:Ljava/util/List;

    if-nez v0, :cond_ca

    .line 3178
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mStaffList:Ljava/util/List;

    .line 3181
    :cond_ca
    iget-object v0, p2, Lcom/bilibili/tv/api/video/PgcInfo;->producer:Lcom/bilibili/tv/api/video/PgcInfo$Producer;

    if-eqz v0, :cond_176

    iget-object v0, p2, Lcom/bilibili/tv/api/video/PgcInfo;->producer:Lcom/bilibili/tv/api/video/PgcInfo$Producer;

    iget-object v0, v0, Lcom/bilibili/tv/api/video/PgcInfo$Producer;->list:Ljava/util/List;

    if-eqz v0, :cond_176

    iget-object v0, p2, Lcom/bilibili/tv/api/video/PgcInfo;->producer:Lcom/bilibili/tv/api/video/PgcInfo$Producer;

    iget-object v0, v0, Lcom/bilibili/tv/api/video/PgcInfo$Producer;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_176

    .line 3182
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mStaffList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3183
    iget-object v0, p2, Lcom/bilibili/tv/api/video/PgcInfo;->producer:Lcom/bilibili/tv/api/video/PgcInfo$Producer;

    iget-object v0, v0, Lcom/bilibili/tv/api/video/PgcInfo$Producer;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_eb
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/PgcInfo$ProducerInfo;

    .line 3184
    new-instance v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$Staff;

    invoke-direct {v2}, Lcom/bilibili/tv/api/video/BiliVideoDetail$Staff;-><init>()V

    .line 3185
    iget-wide v8, v0, Lcom/bilibili/tv/api/video/PgcInfo$ProducerInfo;->mid:J

    iput-wide v8, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$Staff;->mid:J

    .line 3186
    iget-object v3, v0, Lcom/bilibili/tv/api/video/PgcInfo$ProducerInfo;->name:Ljava/lang/String;

    iput-object v3, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$Staff;->name:Ljava/lang/String;

    .line 3187
    iget-object v0, v0, Lcom/bilibili/tv/api/video/PgcInfo$ProducerInfo;->face:Ljava/lang/String;

    iput-object v0, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$Staff;->face:Ljava/lang/String;

    .line 3188
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mStaffList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_eb

    .line 3190
    :cond_10e
    iget-object v1, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mOwner:Lcom/bilibili/tv/api/video/BiliUser;

    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mStaffList:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Staff;

    iget-wide v2, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Staff;->mid:J

    iput-wide v2, v1, Lcom/bilibili/tv/api/video/BiliUser;->mid:J

    .line 3191
    iget-object v1, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mOwner:Lcom/bilibili/tv/api/video/BiliUser;

    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mStaffList:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Staff;

    iget-object v0, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Staff;->name:Ljava/lang/String;

    iput-object v0, v1, Lcom/bilibili/tv/api/video/BiliUser;->name:Ljava/lang/String;

    .line 3192
    iget-object v1, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mOwner:Lcom/bilibili/tv/api/video/BiliUser;

    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mStaffList:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Staff;

    iget-object v0, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Staff;->face:Ljava/lang/String;

    iput-object v0, v1, Lcom/bilibili/tv/api/video/BiliUser;->face:Ljava/lang/String;

    .line 3207
    :cond_138
    :goto_138
    iget-object v0, p2, Lcom/bilibili/tv/api/video/PgcInfo;->userStatus:Lcom/bilibili/tv/api/video/PgcInfo$UserStatus;

    if-eqz v0, :cond_b

    iget-object v0, p2, Lcom/bilibili/tv/api/video/PgcInfo;->userStatus:Lcom/bilibili/tv/api/video/PgcInfo$UserStatus;

    iget-object v0, v0, Lcom/bilibili/tv/api/video/PgcInfo$UserStatus;->progress:Lcom/bilibili/tv/api/video/PgcInfo$Progress;

    if-eqz v0, :cond_b

    .line 3208
    iget-object v0, p2, Lcom/bilibili/tv/api/video/PgcInfo;->userStatus:Lcom/bilibili/tv/api/video/PgcInfo$UserStatus;

    iget-object v0, v0, Lcom/bilibili/tv/api/video/PgcInfo$UserStatus;->progress:Lcom/bilibili/tv/api/video/PgcInfo$Progress;

    .line 3209
    iget-wide v2, v0, Lcom/bilibili/tv/api/video/PgcInfo$Progress;->lastEpId:J

    .line 3210
    iget v6, v0, Lcom/bilibili/tv/api/video/PgcInfo$Progress;->lastTime:I

    .line 3215
    iget-object v0, p2, Lcom/bilibili/tv/api/video/PgcInfo;->episodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_150
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/PgcInfo$Episode;

    .line 3216
    iget v7, v0, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->id:I

    int-to-long v8, v7

    cmp-long v7, v8, v2

    if-nez v7, :cond_150

    .line 3217
    iget-wide v0, v0, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->cid:J

    .line 3222
    :goto_165
    cmp-long v2, v0, v4

    if-lez v2, :cond_b

    .line 3223
    new-instance v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$History;

    invoke-direct {v2}, Lcom/bilibili/tv/api/video/BiliVideoDetail$History;-><init>()V

    .line 3224
    iput-wide v0, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$History;->mCid:J

    .line 3225
    iput v6, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$History;->mProgress:I

    .line 3226
    iput-object v2, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mHistory:Lcom/bilibili/tv/api/video/BiliVideoDetail$History;

    goto/16 :goto_b

    .line 3194
    :cond_176
    iget-object v0, p2, Lcom/bilibili/tv/api/video/PgcInfo;->upInfo:Lcom/bilibili/tv/api/video/PgcInfo$UpInfo;

    if-eqz v0, :cond_138

    .line 3195
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mOwner:Lcom/bilibili/tv/api/video/BiliUser;

    iget-object v1, p2, Lcom/bilibili/tv/api/video/PgcInfo;->upInfo:Lcom/bilibili/tv/api/video/PgcInfo$UpInfo;

    iget-wide v2, v1, Lcom/bilibili/tv/api/video/PgcInfo$UpInfo;->mid:J

    iput-wide v2, v0, Lcom/bilibili/tv/api/video/BiliUser;->mid:J

    .line 3196
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mOwner:Lcom/bilibili/tv/api/video/BiliUser;

    iget-object v1, p2, Lcom/bilibili/tv/api/video/PgcInfo;->upInfo:Lcom/bilibili/tv/api/video/PgcInfo$UpInfo;

    iget-object v1, v1, Lcom/bilibili/tv/api/video/PgcInfo$UpInfo;->name:Ljava/lang/String;

    iput-object v1, v0, Lcom/bilibili/tv/api/video/BiliUser;->name:Ljava/lang/String;

    .line 3197
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mOwner:Lcom/bilibili/tv/api/video/BiliUser;

    iget-object v1, p2, Lcom/bilibili/tv/api/video/PgcInfo;->upInfo:Lcom/bilibili/tv/api/video/PgcInfo$UpInfo;

    iget-object v1, v1, Lcom/bilibili/tv/api/video/PgcInfo$UpInfo;->face:Ljava/lang/String;

    iput-object v1, v0, Lcom/bilibili/tv/api/video/BiliUser;->face:Ljava/lang/String;

    .line 3198
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mStaffList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3199
    new-instance v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Staff;

    invoke-direct {v0}, Lcom/bilibili/tv/api/video/BiliVideoDetail$Staff;-><init>()V

    .line 3200
    iget-object v1, p2, Lcom/bilibili/tv/api/video/PgcInfo;->upInfo:Lcom/bilibili/tv/api/video/PgcInfo$UpInfo;

    iget-wide v2, v1, Lcom/bilibili/tv/api/video/PgcInfo$UpInfo;->mid:J

    iput-wide v2, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Staff;->mid:J

    .line 3201
    iget-object v1, p2, Lcom/bilibili/tv/api/video/PgcInfo;->upInfo:Lcom/bilibili/tv/api/video/PgcInfo$UpInfo;

    iget-object v1, v1, Lcom/bilibili/tv/api/video/PgcInfo$UpInfo;->name:Ljava/lang/String;

    iput-object v1, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Staff;->name:Ljava/lang/String;

    .line 3202
    iget-object v1, p2, Lcom/bilibili/tv/api/video/PgcInfo;->upInfo:Lcom/bilibili/tv/api/video/PgcInfo$UpInfo;

    iget-object v1, v1, Lcom/bilibili/tv/api/video/PgcInfo$UpInfo;->face:Ljava/lang/String;

    iput-object v1, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Staff;->face:Ljava/lang/String;

    .line 3203
    iget-object v1, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mStaffList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_138

    :cond_1b4
    move-wide v0, v4

    goto :goto_165

    :cond_1b6
    move v0, v6

    goto/16 :goto_57

    :cond_1b9
    move-wide v2, v4

    goto/16 :goto_3e
.end method

.method private final updateHistoryDisplay(Lcom/bilibili/tv/api/video/BiliVideoDetail;)V
    .locals 14

    .prologue
    .line 2769
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 2770
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtn:Lcom/bilibili/tv/widget/DrawTextView;

    if-nez v0, :cond_9

    .line 2909
    :goto_8
    return-void

    .line 2773
    :cond_9
    if-eqz p1, :cond_f

    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mHistory:Lcom/bilibili/tv/api/video/BiliVideoDetail$History;

    if-nez v0, :cond_6e

    .line 2774
    :cond_f
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->mHistoryResolved:Z

    if-eqz v0, :cond_53

    .line 2776
    const-string v0, "HistoryDebug"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[UPDATE_DISPLAY] NO_HISTORY_CONFIRMED, show incognito UI; avid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->s:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2777
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtn:Lcom/bilibili/tv/widget/DrawTextView;

    const-string v1, "\u5f00\u59cb\u64ad\u653e"

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawTextView;->setText(Ljava/lang/CharSequence;)V

    .line 2778
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyBtnProgress:Landroid/widget/TextView;

    if-eqz v0, :cond_3f

    .line 2779
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyBtnProgress:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2781
    :cond_3f
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/ProgressPlayButton;

    if-eqz v0, :cond_4a

    .line 2782
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/ProgressPlayButton;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/bilibili/tv/widget/ProgressPlayButton;->setProgress(II)V

    .line 2784
    :cond_4a
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->applyPlayButtonVisibility(I)V

    .line 2785
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->applyNoHistoryState(Lcom/bilibili/tv/api/video/BiliVideoDetail;Z)V

    goto :goto_8

    .line 2787
    :cond_53
    const-string v0, "HistoryDebug"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[UPDATE_DISPLAY] SKIP mHistory=null (history not ready yet), keep current UI; avid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->s:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 2791
    :cond_6e
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->mHistoryResolved:Z

    .line 2795
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->applyPlayButtonVisibility(I)V

    .line 2796
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->applyNoHistoryState(Lcom/bilibili/tv/api/video/BiliVideoDetail;Z)V

    .line 2798
    const/4 v0, 0x0

    .line 2799
    iget-object v1, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->episodes:Lcom/alibaba/fastjson/JSONArray;

    if-eqz v1, :cond_85

    .line 2800
    iget-object v1, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->episodes:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v1

    add-int/2addr v0, v1

    .line 2802
    :cond_85
    iget-object v1, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    if-eqz v1, :cond_2e9

    .line 2803
    iget-object v1, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    move v1, v0

    .line 2805
    :goto_91
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mHistory:Lcom/bilibili/tv/api/video/BiliVideoDetail$History;

    iget-wide v8, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$History;->mCid:J

    .line 2806
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mHistory:Lcom/bilibili/tv/api/video/BiliVideoDetail$History;

    iget v10, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$History;->mProgress:I

    .line 2807
    invoke-direct {p0, v8, v9, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->findTitleByCid(JLcom/bilibili/tv/api/video/BiliVideoDetail;)Ljava/lang/String;

    .line 2809
    const/4 v4, 0x0

    .line 2810
    const/4 v3, 0x0

    .line 2811
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    if-eqz v0, :cond_201

    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_201

    const/4 v0, 0x1

    move v5, v0

    .line 2812
    :goto_ad
    if-eqz v5, :cond_20a

    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    if-eqz v0, :cond_20a

    .line 2813
    const/4 v0, 0x0

    move v2, v0

    :goto_b5
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_2e5

    .line 2814
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;

    .line 2815
    iget-wide v12, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mCid:J

    cmp-long v11, v12, v8

    if-nez v11, :cond_205

    .line 2816
    iget v3, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->duration:I

    .line 2817
    add-int/lit8 v0, v2, 0x1

    move v2, v3

    :goto_d0
    move v4, v0

    .line 2824
    :goto_d1
    if-gtz v2, :cond_2e2

    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    if-eqz v0, :cond_2e2

    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2e2

    .line 2825
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;

    iget v0, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->duration:I

    .line 2829
    :goto_ea
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtn:Lcom/bilibili/tv/widget/DrawTextView;

    const/4 v2, -0x1

    if-ne v10, v2, :cond_20f

    const-string v2, "\u91cd\u65b0\u64ad\u653e"

    :goto_f1
    invoke-virtual {v3, v2}, Lcom/bilibili/tv/widget/DrawTextView;->setText(Ljava/lang/CharSequence;)V

    .line 2830
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->rePlayBtn:Lcom/bilibili/tv/widget/DrawTextView;

    const-string v3, "\u91cd\u64ad"

    invoke-virtual {v2, v3}, Lcom/bilibili/tv/widget/DrawTextView;->setText(Ljava/lang/CharSequence;)V

    .line 2831
    const-string v2, "HistoryDebug"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[UPDATE_DISPLAY] cid="

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v11, ", progressSec="

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v11, ", totalDuration="

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v11, ", pageIndex="

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v11, ", episodeCount="

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", multi="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", histVis="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2834
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/ProgressPlayButton;

    if-eqz v1, :cond_213

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/ProgressPlayButton;

    invoke-virtual {v1}, Lcom/bilibili/tv/widget/ProgressPlayButton;->getVisibility()I

    move-result v1

    :goto_14e
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", replayVis="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2835
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->rePlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    if-eqz v1, :cond_216

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->rePlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    invoke-virtual {v1}, Lcom/bilibili/tv/widget/DrawLinearLayout;->getVisibility()I

    move-result v1

    :goto_162
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2831
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2841
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->rePlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    if-eqz v1, :cond_17b

    .line 2842
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->rePlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    const/4 v1, -0x1

    if-ne v10, v1, :cond_219

    const/16 v1, 0x8

    :goto_178
    invoke-virtual {v2, v1}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setVisibility(I)V

    .line 2845
    :cond_17b
    const-wide/16 v2, 0x0

    cmp-long v1, v8, v2

    if-lez v1, :cond_21c

    const/4 v1, 0x1

    move v3, v1

    .line 2847
    :goto_183
    const/4 v1, -0x1

    if-eq v10, v1, :cond_18c

    if-lez v0, :cond_220

    add-int/lit8 v1, v0, -0x2

    if-lt v10, v1, :cond_220

    :cond_18c
    const/4 v1, 0x1

    move v2, v1

    .line 2848
    :goto_18e
    if-lez v10, :cond_224

    const/4 v1, 0x1

    .line 2850
    :goto_191
    if-nez v3, :cond_227

    .line 2851
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyBtnProgress:Landroid/widget/TextView;

    if-eqz v0, :cond_19e

    .line 2852
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyBtnProgress:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2854
    :cond_19e
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/ProgressPlayButton;

    if-eqz v0, :cond_1a9

    .line 2855
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/ProgressPlayButton;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/bilibili/tv/widget/ProgressPlayButton;->setProgress(II)V

    .line 2896
    :cond_1a9
    :goto_1a9
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->rePlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    if-eqz v0, :cond_2d5

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->rePlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    invoke-virtual {v0}, Lcom/bilibili/tv/widget/DrawLinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2d5

    const/4 v0, 0x1

    .line 2897
    :goto_1b6
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/ProgressPlayButton;

    if-eqz v1, :cond_1c4

    .line 2898
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/ProgressPlayButton;

    if-eqz v0, :cond_2d8

    .line 2899
    const v1, 0x7f080195

    .line 2898
    :goto_1c1
    invoke-virtual {v2, v1}, Lcom/bilibili/tv/widget/ProgressPlayButton;->setNextFocusRightId(I)V

    .line 2901
    :cond_1c4
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->rePlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    if-eqz v1, :cond_1d0

    .line 2902
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->rePlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    const v2, 0x7f0801df

    invoke-virtual {v1, v2}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setNextFocusRightId(I)V

    .line 2904
    :cond_1d0
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->expandBtn:Lcom/bilibili/tv/widget/DrawLinearLayout;

    if-eqz v1, :cond_1de

    .line 2905
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->expandBtn:Lcom/bilibili/tv/widget/DrawLinearLayout;

    if-eqz v0, :cond_2dd

    .line 2906
    const v0, 0x7f080195

    .line 2905
    :goto_1db
    invoke-virtual {v1, v0}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setNextFocusLeftId(I)V

    .line 2908
    :cond_1de
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateHistoryDisplay done | cost="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v6

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->loadPerf(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 2811
    :cond_201
    const/4 v0, 0x0

    move v5, v0

    goto/16 :goto_ad

    .line 2813
    :cond_205
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_b5

    .line 2822
    :cond_20a
    iget v2, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mDuration:I

    move v4, v3

    goto/16 :goto_d1

    .line 2829
    :cond_20f
    const-string v2, "\u7ee7\u7eed\u64ad\u653e"

    goto/16 :goto_f1

    .line 2834
    :cond_213
    const/4 v1, -0x1

    goto/16 :goto_14e

    .line 2835
    :cond_216
    const/4 v1, -0x1

    goto/16 :goto_162

    .line 2842
    :cond_219
    const/4 v1, 0x0

    goto/16 :goto_178

    .line 2845
    :cond_21c
    const/4 v1, 0x0

    move v3, v1

    goto/16 :goto_183

    .line 2847
    :cond_220
    const/4 v1, 0x0

    move v2, v1

    goto/16 :goto_18e

    .line 2848
    :cond_224
    const/4 v1, 0x0

    goto/16 :goto_191

    .line 2858
    :cond_227
    if-eqz v2, :cond_247

    .line 2859
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyBtnProgress:Landroid/widget/TextView;

    if-eqz v0, :cond_23a

    .line 2860
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyBtnProgress:Landroid/widget/TextView;

    const-string v1, "\u5df2\u770b\u5b8c"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2861
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyBtnProgress:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2863
    :cond_23a
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/ProgressPlayButton;

    if-eqz v0, :cond_1a9

    .line 2864
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/ProgressPlayButton;

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/bilibili/tv/widget/ProgressPlayButton;->setProgress(II)V

    goto/16 :goto_1a9

    .line 2866
    :cond_247
    if-eqz v1, :cond_294

    .line 2867
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyBtnProgress:Landroid/widget/TextView;

    if-eqz v1, :cond_27d

    .line 2868
    if-eqz v5, :cond_28a

    if-lez v4, :cond_28a

    .line 2869
    invoke-direct {p0, v10, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->formatProgressTimeShort(II)Ljava/lang/String;

    move-result-object v1

    .line 2870
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyBtnProgress:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "P"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2874
    :goto_277
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyBtnProgress:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2876
    :cond_27d
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/ProgressPlayButton;

    if-eqz v1, :cond_1a9

    if-lez v0, :cond_1a9

    .line 2877
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/ProgressPlayButton;

    invoke-virtual {v1, v10, v0}, Lcom/bilibili/tv/widget/ProgressPlayButton;->setProgress(II)V

    goto/16 :goto_1a9

    .line 2872
    :cond_28a
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyBtnProgress:Landroid/widget/TextView;

    invoke-direct {p0, v10, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->formatProgressTimeShort(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_277

    .line 2880
    :cond_294
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyBtnProgress:Landroid/widget/TextView;

    if-eqz v0, :cond_2c0

    .line 2881
    if-eqz v5, :cond_2cd

    if-lez v4, :cond_2cd

    .line 2882
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyBtnProgress:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "P"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " 00:00"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2886
    :goto_2ba
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyBtnProgress:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2888
    :cond_2c0
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/ProgressPlayButton;

    if-eqz v0, :cond_1a9

    .line 2889
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/ProgressPlayButton;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/bilibili/tv/widget/ProgressPlayButton;->setProgress(II)V

    goto/16 :goto_1a9

    .line 2884
    :cond_2cd
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyBtnProgress:Landroid/widget/TextView;

    const-string v1, "00:00"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2ba

    .line 2896
    :cond_2d5
    const/4 v0, 0x0

    goto/16 :goto_1b6

    .line 2899
    :cond_2d8
    const v1, 0x7f0801df

    goto/16 :goto_1c1

    .line 2906
    :cond_2dd
    const v0, 0x7f080192

    goto/16 :goto_1db

    :cond_2e2
    move v0, v2

    goto/16 :goto_ea

    :cond_2e5
    move v0, v3

    move v2, v4

    goto/16 :goto_d0

    :cond_2e9
    move v1, v0

    goto/16 :goto_91
.end method

.method private updateNavTagSelectionForSection(Lcom/bilibili/tv/ui/video/widget/VideoListSection;I)V
    .locals 1

    .prologue
    .line 3842
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->hasNavigationTags()Z

    move-result v0

    if-nez v0, :cond_9

    .line 3847
    :cond_8
    :goto_8
    return-void

    .line 3846
    :cond_9
    invoke-virtual {p1, p2}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->updateNavTagSelection(I)V

    goto :goto_8
.end method

.method private updateStaffDisplay(Lcom/bilibili/tv/api/video/BiliVideoDetail;)V
    .locals 12

    .prologue
    const/4 v6, 0x0

    const/4 v9, 0x0

    .line 3276
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->staffContainer:Landroid/widget/LinearLayout;

    .line 3277
    iget-object v11, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->uperContainer:Landroid/widget/LinearLayout;

    .line 3278
    if-eqz v2, :cond_43

    .line 3279
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 3280
    invoke-virtual {p1}, Lcom/bilibili/tv/api/video/BiliVideoDetail;->hasStaff()Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-virtual {p1}, Lcom/bilibili/tv/api/video/BiliVideoDetail;->getStaffList()Ljava/util/List;

    move-result-object v0

    move-object v10, v0

    .line 3284
    :goto_16
    if-eqz v10, :cond_44

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_44

    .line 3285
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v8

    move v7, v9

    .line 3286
    :goto_23
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    if-ge v7, v0, :cond_3e

    .line 3287
    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Staff;

    .line 3288
    iget-object v3, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Staff;->name:Ljava/lang/String;

    iget-wide v4, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Staff;->mid:J

    iget-object v6, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Staff;->face:Ljava/lang/String;

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->addStaffView(Landroid/widget/LinearLayout;Ljava/lang/String;JLjava/lang/String;II)V

    .line 3286
    add-int/lit8 v7, v7, 0x1

    goto :goto_23

    :cond_3c
    move-object v10, v6

    .line 3280
    goto :goto_16

    .line 3290
    :cond_3e
    if-eqz v11, :cond_43

    .line 3291
    invoke-virtual {v11, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3313
    :cond_43
    :goto_43
    return-void

    .line 3295
    :cond_44
    invoke-virtual {p1}, Lcom/bilibili/tv/api/video/BiliVideoDetail;->getAuthor()Ljava/lang/String;

    move-result-object v3

    .line 3296
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6e

    const-string v0, "null"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6e

    .line 3297
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mOwner:Lcom/bilibili/tv/api/video/BiliUser;

    if-eqz v0, :cond_5e

    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mOwner:Lcom/bilibili/tv/api/video/BiliUser;

    iget-object v6, v0, Lcom/bilibili/tv/api/video/BiliUser;->face:Ljava/lang/String;

    .line 3298
    :cond_5e
    invoke-virtual {p1}, Lcom/bilibili/tv/api/video/BiliVideoDetail;->getMid()J

    move-result-wide v4

    const/4 v8, 0x1

    move-object v1, p0

    move v7, v9

    invoke-direct/range {v1 .. v8}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->addStaffView(Landroid/widget/LinearLayout;Ljava/lang/String;JLjava/lang/String;II)V

    .line 3299
    if-eqz v11, :cond_43

    .line 3300
    invoke-virtual {v11, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_43

    .line 3304
    :cond_6e
    if-eqz v11, :cond_43

    .line 3305
    const/16 v0, 0x8

    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_43
.end method

.method private final updateSubscribeButtonUI()V
    .locals 5

    .prologue
    const v1, 0x7f070115

    const v2, 0x7f070114

    const/4 v0, 0x1

    .line 2248
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->subscribeText:Landroid/widget/TextView;

    if-eqz v3, :cond_f

    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->subscribeImg:Landroid/widget/ImageView;

    if-nez v3, :cond_10

    .line 2265
    :cond_f
    :goto_f
    return-void

    .line 2251
    :cond_10
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->mPgcInfo:Lcom/bilibili/tv/api/video/PgcInfo;

    if-eqz v3, :cond_4b

    .line 2253
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->mPgcInfo:Lcom/bilibili/tv/api/video/PgcInfo;

    iget v3, v3, Lcom/bilibili/tv/api/video/PgcInfo;->type:I

    if-eq v3, v0, :cond_21

    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->mPgcInfo:Lcom/bilibili/tv/api/video/PgcInfo;

    iget v3, v3, Lcom/bilibili/tv/api/video/PgcInfo;->type:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_34

    .line 2254
    :cond_21
    :goto_21
    iget-boolean v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->isPgcFollowed:Z

    if-eqz v3, :cond_39

    .line 2255
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->subscribeText:Landroid/widget/TextView;

    if-eqz v0, :cond_36

    const-string v0, "\u5df2\u8ffd\u756a"

    :goto_2b
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2256
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->subscribeImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_f

    .line 2253
    :cond_34
    const/4 v0, 0x0

    goto :goto_21

    .line 2255
    :cond_36
    const-string v0, "\u5df2\u8ffd\u5267"

    goto :goto_2b

    .line 2258
    :cond_39
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->subscribeText:Landroid/widget/TextView;

    if-eqz v0, :cond_48

    const-string v0, "\u8ffd\u756a"

    :goto_3f
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2259
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->subscribeImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_f

    .line 2258
    :cond_48
    const-string v0, "\u8ffd\u5267"

    goto :goto_3f

    .line 2262
    :cond_4b
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->subscribeText:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->isSeasonFav:Z

    if-eqz v0, :cond_61

    const-string v0, "\u5df2\u8ba2\u9605\u5408\u96c6"

    :goto_53
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2263
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->subscribeImg:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->isSeasonFav:Z

    if-eqz v0, :cond_64

    move v0, v1

    :goto_5d
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_f

    .line 2262
    :cond_61
    const-string v0, "\u8ba2\u9605\u5408\u96c6"

    goto :goto_53

    :cond_64
    move v0, v2

    .line 2263
    goto :goto_5d
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 363
    const-string v0, "ott-platform.detail.0.0.pv"

    return-object v0
.end method

.method public final a(Landroid/app/Activity;Lcom/bilibili/tv/api/video/BiliVideoDetail;)V
    .locals 2

    .prologue
    .line 2958
    const-string v0, "video"

    invoke-static {p2, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2959
    invoke-direct {p0, p2}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->a(Lcom/bilibili/tv/api/video/BiliVideoDetail;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 2971
    :cond_b
    :goto_b
    return-void

    .line 2962
    :cond_c
    if-eqz p1, :cond_b

    .line 2965
    invoke-direct {p0, p2}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->b(Lcom/bilibili/tv/api/video/BiliVideoDetail;)Ljava/lang/String;

    move-result-object v0

    .line 2966
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 2969
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 2970
    invoke-direct {p0, p1, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_b
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 383
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "activity init | entry="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->mEntryType:Lcom/bilibili/tv/ui/video/VideoDetailActivity$EntryType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->loadPerf(Ljava/lang/String;)V

    .line 384
    invoke-direct {p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->m()V

    .line 385
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->mIsPgcMode:Z

    if-nez v0, :cond_31

    iget-wide v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->s:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_31

    .line 386
    const v0, 0x7f0c0170

    invoke-static {p0, v0}, Lbl/lr;->a(Landroid/content/Context;I)V

    .line 387
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->finish()V

    .line 393
    :goto_30
    return-void

    .line 390
    :cond_31
    invoke-direct {p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->k()V

    .line 391
    new-instance v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;

    invoke-direct {v0, p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)V

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->A:Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;

    .line 392
    const-string v0, "tv_video_view_open"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lbl/ok;->a(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_30
.end method

.method public final a(Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;)V
    .locals 2

    .prologue
    .line 4804
    sget-object v0, Lbl/aft;->a:Lbl/aft;

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->u:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    invoke-virtual {v0, p0, v1, p1}, Lbl/aft;->a(Landroid/app/Activity;Lcom/bilibili/tv/api/video/BiliVideoDetail;Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;)V

    .line 4805
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1079
    if-eqz p1, :cond_12

    iget-boolean v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->isBlurLoaded:Z

    if-nez v0, :cond_12

    .line 1080
    invoke-static {}, Lbl/nv;->a()Lbl/nv;

    move-result-object v0

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, p1, v1}, Lbl/nv;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 1081
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->isBlurLoaded:Z

    .line 1083
    :cond_12
    return-void
.end method

.method public a_()Z
    .locals 1

    .prologue
    .line 368
    invoke-static {p0}, Lbl/wg;->a(Lbl/wf;)Z

    move-result v0

    return v0
.end method

.method public b()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 373
    const/4 v0, 0x0

    return-object v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 9

    .prologue
    const/high16 v8, 0x40000

    const/16 v7, 0x14

    const/16 v6, 0x13

    const/4 v5, 0x0

    const/4 v1, 0x1

    .line 1095
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->w:Lbl/add;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->relateCardAdapter:Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;

    if-nez v0, :cond_15

    .line 1096
    :cond_10
    invoke-super {p0, p1}, Lcom/bilibili/tv/ui/base/BaseActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 1232
    :goto_14
    return v0

    .line 1098
    :cond_15
    if-eqz p1, :cond_41

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v2, v0

    .line 1099
    :goto_20
    if-eqz p1, :cond_44

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1101
    :goto_2a
    if-eqz v2, :cond_26d

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_26d

    .line 1102
    if-eqz v0, :cond_46

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x52

    if-ne v2, v3, :cond_46

    .line 1103
    invoke-direct {p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->toggleContentVisibility()V

    move v0, v1

    .line 1104
    goto :goto_14

    .line 1098
    :cond_41
    const/4 v0, 0x0

    move-object v2, v0

    goto :goto_20

    .line 1099
    :cond_44
    const/4 v0, 0x0

    goto :goto_2a

    .line 1106
    :cond_46
    if-eqz v0, :cond_58

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_58

    iget-boolean v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->isContentHidden:Z

    if-eqz v2, :cond_58

    .line 1107
    invoke-direct {p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->toggleContentVisibility()V

    move v0, v1

    .line 1108
    goto :goto_14

    .line 1111
    :cond_58
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v2

    .line 1113
    if-nez v2, :cond_63

    .line 1114
    invoke-super {p0, p1}, Lcom/bilibili/tv/ui/base/BaseActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_14

    .line 1123
    :cond_63
    invoke-direct {p0, v2}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->saveCurrentFocusPosition(Landroid/view/View;)V

    .line 1125
    if-eqz v0, :cond_f5

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v6, :cond_f5

    .line 1126
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    const v4, 0x7f080167

    if-eq v3, v4, :cond_92

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    const v4, 0x7f08016a

    if-eq v3, v4, :cond_92

    .line 1127
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    const v4, 0x7f08014d

    if-eq v3, v4, :cond_92

    .line 1128
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    const v4, 0x7f0801a1

    if-ne v3, v4, :cond_d4

    .line 1129
    :cond_92
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->staffContainer:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_ac

    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->staffContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-lez v3, :cond_ac

    .line 1130
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->staffContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1131
    if-eqz v3, :cond_ac

    .line 1132
    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    move v0, v1

    .line 1133
    goto/16 :goto_14

    .line 1136
    :cond_ac
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/ProgressPlayButton;

    if-eqz v3, :cond_c0

    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/ProgressPlayButton;

    invoke-virtual {v3}, Lcom/bilibili/tv/widget/ProgressPlayButton;->getVisibility()I

    move-result v3

    if-nez v3, :cond_c0

    .line 1137
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/ProgressPlayButton;

    invoke-virtual {v0}, Lcom/bilibili/tv/widget/ProgressPlayButton;->requestFocus()Z

    move v0, v1

    .line 1138
    goto/16 :goto_14

    .line 1139
    :cond_c0
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->rePlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    if-eqz v3, :cond_d4

    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->rePlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    invoke-virtual {v3}, Lcom/bilibili/tv/widget/DrawLinearLayout;->getVisibility()I

    move-result v3

    if-nez v3, :cond_d4

    .line 1140
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->rePlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    invoke-virtual {v0}, Lcom/bilibili/tv/widget/DrawLinearLayout;->requestFocus()Z

    move v0, v1

    .line 1141
    goto/16 :goto_14

    .line 1144
    :cond_d4
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    const v4, 0x7f080192

    if-eq v3, v4, :cond_ef

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    const v4, 0x7f080195

    if-eq v3, v4, :cond_ef

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    const v4, 0x7f080196

    if-ne v3, v4, :cond_242

    .line 1145
    :cond_ef
    invoke-super {p0, p1}, Lcom/bilibili/tv/ui/base/BaseActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto/16 :goto_14

    .line 1147
    :cond_f5
    if-eqz v0, :cond_242

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v7, :cond_242

    .line 1148
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    const v4, 0x7f080167

    if-eq v3, v4, :cond_145

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    const v4, 0x7f08016a

    if-eq v3, v4, :cond_145

    .line 1149
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    const v4, 0x7f08014d

    if-eq v3, v4, :cond_145

    .line 1150
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    const v4, 0x7f0801a1

    if-eq v3, v4, :cond_145

    .line 1151
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    const v4, 0x7f080192

    if-eq v3, v4, :cond_145

    .line 1152
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    const v4, 0x7f080195

    if-eq v3, v4, :cond_145

    .line 1153
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    const v4, 0x7f080196

    if-eq v3, v4, :cond_145

    .line 1154
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    const v4, 0x7f0801dc

    if-ne v3, v4, :cond_242

    .line 1155
    :cond_145
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->o:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_184

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->o:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_184

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->o:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_184

    .line 1156
    iget v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->epLayoutFocusPosition:I

    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->o:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1157
    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1158
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->o:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1159
    if-eqz v0, :cond_23c

    .line 1160
    iput-boolean v5, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->blockEpisodeAutoFocus:Z

    .line 1161
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->o:Landroid/support/v7/widget/RecyclerView;

    if-eqz v2, :cond_17e

    .line 1162
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->o:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v8}, Landroid/support/v7/widget/RecyclerView;->setDescendantFocusability(I)V

    .line 1164
    :cond_17e
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    move v0, v1

    .line 1165
    goto/16 :goto_14

    .line 1167
    :cond_184
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonsContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1c9

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1c9

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonSectionViews:Ljava/util/List;

    .line 1168
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1c9

    .line 1169
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonSectionViews:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonSectionView;

    .line 1170
    iget-object v2, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonSectionView;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v2, :cond_23c

    iget-object v2, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonSectionView;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_23c

    .line 1171
    iget v2, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonSectionView;->sectionId:I

    invoke-direct {p0, v2}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->getSeasonSectionFocusPosition(I)I

    move-result v2

    .line 1173
    iget v3, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonSectionView;->sectionId:I

    invoke-direct {p0, v3}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->findVideoListSection(I)Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    move-result-object v3

    .line 1174
    if-eqz v3, :cond_1c3

    .line 1175
    invoke-virtual {v3, v2}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setFocusPosition(I)V

    .line 1176
    invoke-virtual {v3}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->requestFocusOnSavedPosition()Z

    :goto_1c0
    move v0, v1

    .line 1180
    goto/16 :goto_14

    .line 1178
    :cond_1c3
    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonSectionView;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->requestFocus()Z

    goto :goto_1c0

    .line 1182
    :cond_1c9
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->episodes_video:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_208

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->episodes_video:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_208

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->episodes_video:Landroid/support/v7/widget/RecyclerView;

    .line 1183
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_208

    .line 1184
    iget v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->episodesVideoFocusPosition:I

    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->episodes_video:Landroid/support/v7/widget/RecyclerView;

    .line 1185
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 1184
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1186
    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1187
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->episodes_video:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1188
    if-eqz v0, :cond_23c

    .line 1189
    iput-boolean v5, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->blockEpisodeAutoFocus:Z

    .line 1190
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->episodes_video:Landroid/support/v7/widget/RecyclerView;

    if-eqz v2, :cond_202

    .line 1191
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->episodes_video:Landroid/support/v7/widget/RecyclerView;

    .line 1192
    invoke-virtual {v2, v8}, Landroid/support/v7/widget/RecyclerView;->setDescendantFocusability(I)V

    .line 1194
    :cond_202
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    move v0, v1

    .line 1195
    goto/16 :goto_14

    .line 1197
    :cond_208
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->r:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_23c

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->r:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_23c

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->r:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_23c

    .line 1198
    iget v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->relateVideoFocusPosition:I

    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->r:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1199
    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1200
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->r:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1201
    if-eqz v0, :cond_23c

    .line 1202
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    move v0, v1

    .line 1203
    goto/16 :goto_14

    .line 1206
    :cond_23c
    invoke-super {p0, p1}, Lcom/bilibili/tv/ui/base/BaseActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto/16 :goto_14

    .line 1210
    :cond_242
    if-eqz v0, :cond_26d

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v3, v6, :cond_250

    .line 1211
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v7, :cond_26d

    .line 1214
    :cond_250
    invoke-direct {p0, v2}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->getCurrentListType(Landroid/view/View;)I

    move-result v3

    .line 1217
    const/4 v4, 0x5

    if-eq v3, v4, :cond_25a

    const/4 v4, 0x6

    if-ne v3, v4, :cond_260

    .line 1221
    :cond_25a
    invoke-super {p0, p1}, Lcom/bilibili/tv/ui/base/BaseActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto/16 :goto_14

    .line 1224
    :cond_260
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v2, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->handleListFocusNavigation(Landroid/view/View;I)Z

    move-result v0

    .line 1226
    if-eqz v0, :cond_26d

    move v0, v1

    .line 1227
    goto/16 :goto_14

    .line 1232
    :cond_26d
    invoke-super {p0, p1}, Lcom/bilibili/tv/ui/base/BaseActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto/16 :goto_14
.end method

.method public g()I
    .locals 1

    .prologue
    .line 378
    const v0, 0x7f0a002b

    return v0
.end method

.method public final l()Lcom/bilibili/tv/widget/DrawTextView;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 965
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0a004b

    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->o:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 967
    const v1, 0x7f08014c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawTextView;

    .line 968
    if-nez v0, :cond_21

    .line 969
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.bilibili.tv.widget.DrawTextView"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 971
    :cond_21
    invoke-virtual {v0}, Lcom/bilibili/tv/widget/DrawTextView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 972
    if-eqz v1, :cond_2c

    .line 973
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 975
    :cond_2c
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawTextView;->setFocusable(Z)V

    .line 976
    invoke-virtual {v0, v3}, Lcom/bilibili/tv/widget/DrawTextView;->setFocusableInTouchMode(Z)V

    .line 977
    invoke-virtual {v0}, Lcom/bilibili/tv/widget/DrawTextView;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawTextView;->setNextFocusRightId(I)V

    .line 978
    const v1, 0x7f0c015d

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawTextView;->setText(I)V

    .line 979
    invoke-virtual {v0}, Lcom/bilibili/tv/widget/DrawTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/4 v2, -0x1

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 980
    invoke-virtual {v0}, Lcom/bilibili/tv/widget/DrawTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0600a0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 981
    new-instance v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$k;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$k;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)V

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 982
    return-object v0
.end method

.method public final o()V
    .locals 3

    .prologue
    .line 4356
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->u:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    .line 4357
    if-eqz v2, :cond_7e

    .line 4358
    const v0, 0x7f080168

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 4359
    if-eqz v0, :cond_1b

    .line 4361
    invoke-virtual {v2}, Lcom/bilibili/tv/api/video/BiliVideoDetail;->isLikeVideo()Z

    move-result v1

    if-eqz v1, :cond_7f

    const v1, 0x7f0700fb

    .line 4360
    :goto_18
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 4363
    :cond_1b
    const v0, 0x7f080169

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 4364
    if-eqz v0, :cond_31

    .line 4365
    invoke-virtual {v2}, Lcom/bilibili/tv/api/video/BiliVideoDetail;->isLikeVideo()Z

    move-result v1

    if-eqz v1, :cond_83

    const-string v1, "\u5df2\u70b9\u8d5e"

    :goto_2e
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4367
    :cond_31
    const v0, 0x7f08016b

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 4368
    if-eqz v0, :cond_48

    .line 4370
    invoke-virtual {v2}, Lcom/bilibili/tv/api/video/BiliVideoDetail;->isCoinVideo()Z

    move-result v1

    if-eqz v1, :cond_86

    const v1, 0x7f0700f9

    .line 4369
    :goto_45
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 4372
    :cond_48
    const v0, 0x7f08016c

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 4373
    if-eqz v0, :cond_5e

    .line 4374
    invoke-virtual {v2}, Lcom/bilibili/tv/api/video/BiliVideoDetail;->isCoinVideo()Z

    move-result v1

    if-eqz v1, :cond_8a

    const-string v1, "\u5df2\u6295\u5e01"

    :goto_5b
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4376
    :cond_5e
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->k:Landroid/widget/ImageView;

    .line 4377
    if-eqz v1, :cond_6e

    .line 4379
    invoke-virtual {v2}, Lcom/bilibili/tv/api/video/BiliVideoDetail;->isFavoriteVideo()Z

    move-result v0

    if-eqz v0, :cond_8d

    const v0, 0x7f07006a

    .line 4378
    :goto_6b
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 4381
    :cond_6e
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->l:Landroid/widget/TextView;

    .line 4382
    if-eqz v1, :cond_7e

    .line 4384
    invoke-virtual {v2}, Lcom/bilibili/tv/api/video/BiliVideoDetail;->isFavoriteVideo()Z

    move-result v0

    if-eqz v0, :cond_91

    const v0, 0x7f0c0167

    .line 4383
    :goto_7b
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 4387
    :cond_7e
    return-void

    .line 4361
    :cond_7f
    const v1, 0x7f0700fa

    goto :goto_18

    .line 4365
    :cond_83
    const-string v1, "\u70b9\u8d5e"

    goto :goto_2e

    .line 4370
    :cond_86
    const v1, 0x7f0700f8

    goto :goto_45

    .line 4374
    :cond_8a
    const-string v1, "\u6295\u5e01"

    goto :goto_5b

    .line 4379
    :cond_8d
    const v0, 0x7f070069

    goto :goto_6b

    .line 4384
    :cond_91
    const v0, 0x7f0c0166

    goto :goto_7b
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 4214
    const/4 v0, -0x1

    if-ne p2, v0, :cond_e

    const/16 v0, 0x2752

    if-eq p1, v0, :cond_b

    const/16 v0, 0x2753

    if-ne p1, v0, :cond_e

    .line 4215
    :cond_b
    invoke-direct {p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->n()V

    .line 4217
    :cond_e
    const/16 v0, 0x2754

    if-ne p1, v0, :cond_15

    .line 4218
    invoke-direct {p0, p2, p3}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->onPlayerReturned(ILandroid/content/Intent;)V

    .line 4220
    :cond_15
    invoke-super {p0, p1, p2, p3}, Lcom/bilibili/tv/ui/base/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 4221
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4140
    const-string v0, "v"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4141
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 4142
    const v1, 0x7f080167

    if-ne v0, v1, :cond_39

    .line 4143
    invoke-static {p0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v0

    .line 4144
    const-string v1, "BiliAccount.get(this)"

    invoke-static {v0, v1}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4145
    invoke-virtual {v0}, Lbl/mg;->a()Z

    move-result v0

    if-nez v0, :cond_25

    .line 4146
    const-string v0, "\u8d26\u53f7\u672a\u767b\u5f55\uff0c\u65e0\u6cd5\u70b9\u51fb"

    invoke-static {p0, v0}, Lbl/lr;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 4190
    :cond_24
    :goto_24
    return-void

    .line 4149
    :cond_25
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->u:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->u:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    invoke-virtual {v0}, Lcom/bilibili/tv/api/video/BiliVideoDetail;->isLikeVideo()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 4150
    invoke-direct {p0, v3}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->likeVideo(I)V

    goto :goto_24

    .line 4153
    :cond_35
    invoke-direct {p0, v2}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->likeVideo(I)V

    goto :goto_24

    .line 4155
    :cond_39
    const v1, 0x7f08016a

    if-ne v0, v1, :cond_57

    .line 4156
    invoke-static {p0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v0

    .line 4157
    const-string v1, "BiliAccount.get(this)"

    invoke-static {v0, v1}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4158
    invoke-virtual {v0}, Lbl/mg;->a()Z

    move-result v0

    if-nez v0, :cond_53

    .line 4159
    const-string v0, "\u8d26\u53f7\u672a\u767b\u5f55\uff0c\u65e0\u6cd5\u70b9\u51fb"

    invoke-static {p0, v0}, Lbl/lr;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_24

    .line 4162
    :cond_53
    invoke-direct {p0, v3, v2}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->coinVideo(II)V

    goto :goto_24

    .line 4164
    :cond_57
    const v1, 0x7f08014d

    if-ne v0, v1, :cond_75

    .line 4165
    invoke-static {p0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v0

    .line 4166
    const-string v1, "BiliAccount.get(this)"

    invoke-static {v0, v1}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4167
    invoke-virtual {v0}, Lbl/mg;->a()Z

    move-result v0

    if-nez v0, :cond_71

    .line 4168
    const-string v0, "\u8d26\u53f7\u672a\u767b\u5f55\uff0c\u65e0\u6cd5\u70b9\u51fb"

    invoke-static {p0, v0}, Lbl/lr;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_24

    .line 4171
    :cond_71
    invoke-direct {p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->showFavoriteMenu()V

    goto :goto_24

    .line 4172
    :cond_75
    const v1, 0x7f0801a1

    if-ne v0, v1, :cond_b3

    .line 4173
    invoke-static {p0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v0

    .line 4174
    const-string v1, "BiliAccount.get(this)"

    invoke-static {v0, v1}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4175
    invoke-virtual {v0}, Lbl/mg;->a()Z

    move-result v1

    if-nez v1, :cond_8f

    .line 4176
    const-string v0, "\u8d26\u53f7\u672a\u767b\u5f55\uff0c\u65e0\u6cd5\u70b9\u51fb"

    invoke-static {p0, v0}, Lbl/lr;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_24

    .line 4179
    :cond_8f
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->u:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    .line 4180
    if-eqz v1, :cond_24

    .line 4181
    invoke-static {v0}, Lmybl/CookieUtil;->getFullCookieWithDevice(Lbl/mg;)Ljava/lang/String;

    move-result-object v2

    .line 4182
    invoke-static {v0}, Lmybl/CookieUtil;->getBiliJct(Lbl/mg;)Ljava/lang/String;

    move-result-object v3

    .line 4183
    const-class v0, Lcom/bilibili/tv/api/history/BiliPlayerHistoryService;

    invoke-static {v0}, Lbl/vo;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/history/BiliPlayerHistoryService;

    iget-wide v4, v1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mAvid:J

    .line 4184
    invoke-interface {v0, v4, v5, v3, v2}, Lcom/bilibili/tv/api/history/BiliPlayerHistoryService;->addVideoToviews(JLjava/lang/String;Ljava/lang/String;)Lbl/vp;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$AddToViewResponse;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$AddToViewResponse;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)V

    .line 4185
    invoke-virtual {v0, v1}, Lbl/vp;->a(Lretrofit2/Callback;)V

    goto/16 :goto_24

    .line 4187
    :cond_b3
    const v1, 0x7f0801dc

    if-ne v0, v1, :cond_24

    .line 4188
    invoke-direct {p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->showVideoIntroPanel()V

    goto/16 :goto_24
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 399
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->o:Landroid/support/v7/widget/RecyclerView;

    .line 400
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->z:Z

    .line 404
    const/4 v0, 0x0

    sput-boolean v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->sNoHistoryPlayMode:Z

    .line 405
    invoke-super {p0}, Lcom/bilibili/tv/ui/base/BaseActivity;->onDestroy()V

    .line 406
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 4205
    const-string v0, "event"

    invoke-static {p2, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4206
    const/16 v0, 0x17

    if-eq p1, v0, :cond_d

    const/16 v0, 0x42

    if-ne p1, v0, :cond_18

    :cond_d
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->y:Z

    if-eqz v0, :cond_18

    .line 4207
    sget-object v0, Lcom/bilibili/tv/ui/account/LoginActivity;->Companion:Lcom/bilibili/tv/ui/account/LoginActivity$a;

    const/16 v1, 0x2752

    invoke-virtual {v0, p0, v1}, Lcom/bilibili/tv/ui/account/LoginActivity$a;->a(Landroid/app/Activity;I)V

    .line 4209
    :cond_18
    invoke-super {p0, p1, p2}, Lcom/bilibili/tv/ui/base/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public final onLongClick(Landroid/view/View;)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1007
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->u:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    .line 1008
    const-string v0, "v"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1009
    invoke-static {p0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v0

    .line 1010
    const-string v1, "BiliAccount.get(this)"

    invoke-static {v0, v1}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1011
    invoke-virtual {v0}, Lbl/mg;->a()Z

    move-result v0

    if-nez v0, :cond_25

    .line 1012
    const v0, 0x7f0c0062

    invoke-static {p0, v0}, Lbl/lr;->a(Landroid/content/Context;I)V

    .line 1013
    sget-object v0, Lcom/bilibili/tv/ui/account/LoginActivity;->Companion:Lcom/bilibili/tv/ui/account/LoginActivity$a;

    const/16 v1, 0x2753

    invoke-virtual {v0, p0, v1}, Lcom/bilibili/tv/ui/account/LoginActivity$a;->a(Landroid/app/Activity;I)V

    .line 1021
    :cond_24
    :goto_24
    return v2

    .line 1016
    :cond_25
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 1017
    const v1, 0x7f080167

    if-ne v0, v1, :cond_32

    .line 1018
    invoke-direct {p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->tripleVideo()V

    goto :goto_24

    .line 1019
    :cond_32
    const v1, 0x7f08016a

    if-ne v0, v1, :cond_24

    .line 1020
    const/4 v0, 0x2

    invoke-direct {p0, v0, v2}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->coinVideo(II)V

    goto :goto_24
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 4194
    invoke-super {p0}, Lcom/bilibili/tv/ui/base/BaseActivity;->onPause()V

    .line 4195
    return-void
.end method

.method public onPostCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 1087
    invoke-super {p0, p1}, Lcom/bilibili/tv/ui/base/BaseActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 1088
    invoke-direct {p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->n()V

    .line 1089
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 4199
    invoke-super {p0}, Lcom/bilibili/tv/ui/base/BaseActivity;->onStop()V

    .line 4200
    return-void
.end method
