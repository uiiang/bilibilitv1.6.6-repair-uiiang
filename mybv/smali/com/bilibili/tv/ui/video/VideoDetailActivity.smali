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

.field private static final LOCAL_PROGRESS_PROTECT_MS:J = 0x3a98L

.field private static final REQUEST_CODE_PLAY_VIDEO:I = 0x2754

.field private static final SEASON_ID_KEY:Ljava/lang/String; = "bundle_season_id"

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

.field private localProgressProtectedUntilMs:J

.field private m:Landroid/view/View;

.field private mEntryType:Lcom/bilibili/tv/ui/video/VideoDetailActivity$EntryType;

.field private mIsPgcMode:Z

.field private mPgcInfo:Lcom/bilibili/tv/api/video/PgcInfo;

.field private mSeasonId:Ljava/lang/String;

.field private n:Landroid/support/v7/widget/RecyclerView;

.field private noHistoryPlayBtn:Lcom/bilibili/tv/widget/DrawTextView;

.field private noHistoryPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

.field private noHistoryPlayCheckBox:Landroid/widget/CheckBox;

.field private o:Landroid/support/v7/widget/RecyclerView;

.field private p:Lcom/bilibili/tv/ui/base/LoadingImageView;

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
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 98
    invoke-direct {p0}, Lcom/bilibili/tv/ui/base/BaseActivity;-><init>()V

    .line 111
    sget-object v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$EntryType;->UGC_BY_AVID:Lcom/bilibili/tv/ui/video/VideoDetailActivity$EntryType;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->mEntryType:Lcom/bilibili/tv/ui/video/VideoDetailActivity$EntryType;

    .line 156
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->isBlurLoaded:Z

    .line 158
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->mIsPgcMode:Z

    .line 179
    iput v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->epLayoutFocusPosition:I

    .line 180
    iput v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->episodesVideoFocusPosition:I

    .line 181
    iput v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->relateVideoFocusPosition:I

    .line 182
    iput v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->tagViewFocusPosition:I

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
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->isContentHidden:Z

    .line 192
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->autoPlayAfterLoad:Z

    .line 193
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->autoPlayTriggered:Z

    .line 208
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->localProgressProtectedUntilMs:J

    .line 216
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonSectionViews:Ljava/util/List;

    .line 217
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->ugcSeasonSections:Ljava/util/List;

    return-void
.end method

.method private final a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 2744
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2748
    :goto_6
    return-void

    .line 2747
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
    .line 3806
    const-string v0, "BangumiJump"

    const-string v1, "ENABLE_BANGUMI_JUMP is false, skip jump"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3807
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic access$000(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->onDownloadButtonClick()V

    return-void
.end method

.method static synthetic access$100(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->onSubscribeButtonClick()V

    return-void
.end method

.method static synthetic access$1000(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/support/v7/widget/RecyclerView;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->r:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->episodesVideoFocusPosition:I

    return v0
.end method

.method static synthetic access$1102(Lcom/bilibili/tv/ui/video/VideoDetailActivity;I)I
    .locals 0

    .prologue
    .line 98
    iput p1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->episodesVideoFocusPosition:I

    return p1
.end method

.method static synthetic access$1200(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->refreshNoHistoryLabel()V

    return-void
.end method

.method static synthetic access$1300(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/widget/ScrollView;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->scrollView:Landroid/widget/ScrollView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->scrollToViewIfNeeded(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->staffContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->resetStaffNameVisibility()V

    return-void
.end method

.method static synthetic access$1700(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/api/video/BiliVideoDetail;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->u:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/BiliVideoDetail;)Lcom/bilibili/tv/api/video/BiliVideoDetail;
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->u:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->q(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->p(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->showInteractionButtons()V

    return-void
.end method

.method static synthetic access$2000(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/BiliVideoDetail;J)I
    .locals 2

    .prologue
    .line 98
    invoke-direct {p0, p1, p2, p3}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->getDurationForCid(Lcom/bilibili/tv/api/video/BiliVideoDetail;J)I

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Z
    .locals 1

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->isLocalProgressProtected()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/BiliVideoDetail;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0, p1, p2}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->fallbackLoadHistory(Lcom/bilibili/tv/api/video/BiliVideoDetail;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/bilibili/tv/ui/video/VideoDetailActivity;JII)I
    .locals 1

    .prologue
    .line 98
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->normalizeFinishedProgress(JII)I

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/api/video/PgcInfo;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->mPgcInfo:Lcom/bilibili/tv/api/video/PgcInfo;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/PgcInfo;)Lcom/bilibili/tv/api/video/PgcInfo;
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->mPgcInfo:Lcom/bilibili/tv/api/video/PgcInfo;

    return-object p1
.end method

.method static synthetic access$2502(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Z)Z
    .locals 0

    .prologue
    .line 98
    iput-boolean p1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->isPgcFollowed:Z

    return p1
.end method

.method static synthetic access$2600(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/PgcInfo;)Lcom/bilibili/tv/api/video/BiliVideoDetail;
    .locals 1

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->convertPgcToBiliVideoDetail(Lcom/bilibili/tv/api/video/PgcInfo;)Lcom/bilibili/tv/api/video/BiliVideoDetail;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2700(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)J
    .locals 2

    .prologue
    .line 98
    iget-wide v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->s:J

    return-wide v0
.end method

.method static synthetic access$2702(Lcom/bilibili/tv/ui/video/VideoDetailActivity;J)J
    .locals 1

    .prologue
    .line 98
    iput-wide p1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->s:J

    return-wide p1
.end method

.method static synthetic access$2800(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->A:Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/PgcInfo;)V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->showPgcInfo(Lcom/bilibili/tv/api/video/PgcInfo;)V

    return-void
.end method

.method static synthetic access$300(Lcom/bilibili/tv/ui/video/VideoDetailActivity;I)Landroid/view/View;
    .locals 1

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3000(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->updateSubscribeButtonUI()V

    return-void
.end method

.method static synthetic access$3100(Lcom/bilibili/tv/ui/video/VideoDetailActivity;I)V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->loadPgcRelatedVideos(I)V

    return-void
.end method

.method static synthetic access$3200(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/widget/CheckBox;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->noHistoryPlayCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/BiliVideoDetail;JI)V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->playVideo(Lcom/bilibili/tv/api/video/BiliVideoDetail;JI)V

    return-void
.end method

.method static synthetic access$3402(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Z)Z
    .locals 0

    .prologue
    .line 98
    iput-boolean p1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->isSeasonFav:Z

    return p1
.end method

.method static synthetic access$3500(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/BiliVideoDetail;)V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->updateHistoryDisplay(Lcom/bilibili/tv/api/video/BiliVideoDetail;)V

    return-void
.end method

.method static synthetic access$3600(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/widget/ProgressPlayButton;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/ProgressPlayButton;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/BiliVideoDetail;Lcom/bilibili/tv/api/video/PgcInfo;)V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0, p1, p2}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->updateBiliVideoDetailWithPgcInfo(Lcom/bilibili/tv/api/video/BiliVideoDetail;Lcom/bilibili/tv/api/video/PgcInfo;)V

    return-void
.end method

.method static synthetic access$3800(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->m:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/ui/base/LoadingImageView;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->p:Lcom/bilibili/tv/ui/base/LoadingImageView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/support/v7/widget/RecyclerView;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->n:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->gradientMaskView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->cc:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->i:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/BiliVideoDetail;)V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->updateStaffDisplay(Lcom/bilibili/tv/api/video/BiliVideoDetail;)V

    return-void
.end method

.method static synthetic access$4400(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/BiliVideoDetail;)V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->updateBasicVideoInfo(Lcom/bilibili/tv/api/video/BiliVideoDetail;)V

    return-void
.end method

.method static synthetic access$4500(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/BiliVideoDetail;)V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->initDefaultPlayButtons(Lcom/bilibili/tv/api/video/BiliVideoDetail;)V

    return-void
.end method

.method static synthetic access$4600(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/BiliVideoDetail;)V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->loadArchiveRelation(Lcom/bilibili/tv/api/video/BiliVideoDetail;)V

    return-void
.end method

.method static synthetic access$4700(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/BiliVideoDetail;)V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->loadHistory(Lcom/bilibili/tv/api/video/BiliVideoDetail;)V

    return-void
.end method

.method static synthetic access$4800(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/PgcInfo$Episode;I)Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;
    .locals 1

    .prologue
    .line 98
    invoke-direct {p0, p1, p2}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->convertEpisodeToPage(Lcom/bilibili/tv/api/video/PgcInfo$Episode;I)Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4900(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/BiliVideoDetail;J)I
    .locals 2

    .prologue
    .line 98
    invoke-direct {p0, p1, p2, p3}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->calcPageProgress(Lcom/bilibili/tv/api/video/BiliVideoDetail;J)I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->tagViewFocusPosition:I

    return v0
.end method

.method static synthetic access$5000(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonSectionFocusPositions:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$5100(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonSectionViews:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$5200(Lcom/bilibili/tv/ui/video/VideoDetailActivity;I)Lcom/bilibili/tv/ui/video/widget/VideoListSection;
    .locals 1

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->findVideoListSection(I)Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5300(Lcom/bilibili/tv/ui/video/VideoDetailActivity;I)I
    .locals 1

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->getSeasonSectionFocusPosition(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$5400(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/widget/DrawLinearLayout;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->rePlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    return-object v0
.end method

.method static synthetic access$5500(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonSectionNavTagFocusPositions:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$5602(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Z)Z
    .locals 0

    .prologue
    .line 98
    iput-boolean p1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->B:Z

    return p1
.end method

.method static synthetic access$5700(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Z
    .locals 1

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->isAnyInteractionButtonFocused()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5800(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->hideInteractionButtons()V

    return-void
.end method

.method static synthetic access$600(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Landroid/support/v7/widget/RecyclerView;I)Landroid/view/View;
    .locals 1

    .prologue
    .line 98
    invoke-direct {p0, p1, p2}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->restoreFocusPosition(Landroid/support/v7/widget/RecyclerView;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6100(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Z
    .locals 1

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->blockEpisodeAutoFocus:Z

    return v0
.end method

.method static synthetic access$6200(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->saveSearchHistory(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6302(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Z)Z
    .locals 0

    .prologue
    .line 98
    iput-boolean p1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->y:Z

    return p1
.end method

.method static synthetic access$6400(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->b:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$6500(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/ui/video/VideoDetailActivity$EntryType;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->mEntryType:Lcom/bilibili/tv/ui/video/VideoDetailActivity$EntryType;

    return-object v0
.end method

.method static synthetic access$6600(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/BiliVideoDetail;)Z
    .locals 1

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->isPgcVideo(Lcom/bilibili/tv/api/video/BiliVideoDetail;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$6700(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/BiliVideoDetail;)V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->loadPgcInfo(Lcom/bilibili/tv/api/video/BiliVideoDetail;)V

    return-void
.end method

.method static synthetic access$6900(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/BiliVideoDetail;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0, p1, p2}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->requestHistoryForUgc(Lcom/bilibili/tv/api/video/BiliVideoDetail;Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$700(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/support/v7/widget/RecyclerView;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->o:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method static synthetic access$7000(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/widget/DrawLinearLayout;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->subscribeBtn:Lcom/bilibili/tv/widget/DrawLinearLayout;

    return-object v0
.end method

.method static synthetic access$7102(Lcom/bilibili/tv/ui/video/VideoDetailActivity;J)J
    .locals 1

    .prologue
    .line 98
    iput-wide p1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->currentSeasonId:J

    return-wide p1
.end method

.method static synthetic access$7200(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->interactionVideoTag:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$7300(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->chargingExclusiveTag:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$7400(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->uperContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$7500(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->e:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$7600(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->ff:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$7700(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->refreshVisualOrder()V

    return-void
.end method

.method static synthetic access$7800(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Z
    .locals 1

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->autoPlayAfterLoad:Z

    return v0
.end method

.method static synthetic access$7900(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Z
    .locals 1

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->autoPlayTriggered:Z

    return v0
.end method

.method static synthetic access$7902(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Z)Z
    .locals 0

    .prologue
    .line 98
    iput-boolean p1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->autoPlayTriggered:Z

    return p1
.end method

.method static synthetic access$800(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->epLayoutFocusPosition:I

    return v0
.end method

.method static synthetic access$8000(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/ui/video/VideoDetailActivity$g;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->x:Lcom/bilibili/tv/ui/video/VideoDetailActivity$g;

    return-object v0
.end method

.method static synthetic access$8100(Lcom/bilibili/tv/ui/video/VideoDetailActivity;I)Landroid/view/View;
    .locals 1

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$8200(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->g:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$8300(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Z
    .locals 1

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->mIsPgcMode:Z

    return v0
.end method

.method static synthetic access$8400(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->videoListNavigator:Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;

    return-object v0
.end method

.method static synthetic access$8500(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->ugcSeasonSections:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$8600(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/ui/video/widget/VideoListSection;I)V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0, p1, p2}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->setupNavigationTagsForSection(Lcom/bilibili/tv/ui/video/widget/VideoListSection;I)V

    return-void
.end method

.method static synthetic access$8700(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->hh:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->relateVideoFocusPosition:I

    return v0
.end method

.method static synthetic access$902(Lcom/bilibili/tv/ui/video/VideoDetailActivity;I)I
    .locals 0

    .prologue
    .line 98
    iput p1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->relateVideoFocusPosition:I

    return p1
.end method

.method private addStaffView(Landroid/widget/LinearLayout;Ljava/lang/String;JLjava/lang/String;II)V
    .locals 7

    .prologue
    .line 3109
    new-instance v2, Lcom/bilibili/tv/widget/DrawLinearLayout;

    invoke-direct {v2, p0}, Lcom/bilibili/tv/widget/DrawLinearLayout;-><init>(Landroid/content/Context;)V

    .line 3110
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setOrientation(I)V

    .line 3111
    const/16 v0, 0x10

    invoke-virtual {v2, v0}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setGravity(I)V

    .line 3112
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setFocusable(Z)V

    .line 3113
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setFocusableInTouchMode(Z)V

    .line 3114
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setClipChildren(Z)V

    .line 3115
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setClipToPadding(Z)V

    .line 3116
    const v0, 0x7f0700e7

    invoke-virtual {v2, v0}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setUpDrawable(I)V

    .line 3117
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060085

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 3118
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f060377

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 3119
    invoke-virtual {v2, v0, v1, v0, v1}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setPadding(IIII)V

    .line 3121
    new-instance v0, Lcom/bilibili/tv/widget/CircleImageView;

    invoke-direct {v0, p0}, Lcom/bilibili/tv/widget/CircleImageView;-><init>(Landroid/content/Context;)V

    .line 3122
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f060163

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 3123
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 3124
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f060299

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 3125
    iput v1, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 3126
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/CircleImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 3127
    const/high16 v1, 0x7f0b0000

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/CircleImageView;->setImageResource(I)V

    .line 3128
    if-eqz p5, :cond_76

    invoke-virtual {p5}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_76

    .line 3129
    sget-object v1, Lbl/adl;->a:Lbl/adl;

    invoke-virtual {v1, p5, v0}, Lbl/adl;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 3131
    :cond_76
    invoke-virtual {v2, v0, v3}, Lcom/bilibili/tv/widget/DrawLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3133
    new-instance v5, Lcom/bilibili/tv/widget/DrawTextView;

    invoke-direct {v5, p0}, Lcom/bilibili/tv/widget/DrawTextView;-><init>(Landroid/content/Context;)V

    .line 3134
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f060136

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v5, v0, v1}, Lcom/bilibili/tv/widget/DrawTextView;->setTextSize(IF)V

    .line 3135
    const/4 v0, -0x1

    invoke-virtual {v5, v0}, Lcom/bilibili/tv/widget/DrawTextView;->setTextColor(I)V

    .line 3136
    const/16 v0, 0x11

    invoke-virtual {v5, v0}, Lcom/bilibili/tv/widget/DrawTextView;->setGravity(I)V

    .line 3137
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v5, v0}, Lcom/bilibili/tv/widget/DrawTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 3138
    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Lcom/bilibili/tv/widget/DrawTextView;->setFocusable(Z)V

    .line 3139
    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Lcom/bilibili/tv/widget/DrawTextView;->setMaxLines(I)V

    .line 3140
    const/16 v0, 0x10

    invoke-virtual {v5, v0}, Lcom/bilibili/tv/widget/DrawTextView;->setMaxEms(I)V

    .line 3141
    invoke-virtual {v5, p2}, Lcom/bilibili/tv/widget/DrawTextView;->setText(Ljava/lang/CharSequence;)V

    .line 3143
    if-nez p6, :cond_120

    const/4 v4, 0x1

    .line 3144
    :goto_ae
    const/4 v0, 0x1

    if-le p7, v0, :cond_122

    const/4 v3, 0x1

    .line 3145
    :goto_b2
    if-eqz v3, :cond_bb

    if-nez v4, :cond_bb

    .line 3146
    const/16 v0, 0x8

    invoke-virtual {v5, v0}, Lcom/bilibili/tv/widget/DrawTextView;->setVisibility(I)V

    .line 3149
    :cond_bb
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v6, -0x2

    invoke-direct {v0, v1, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 3152
    invoke-virtual {v2, v5, v0}, Lcom/bilibili/tv/widget/DrawLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3156
    new-instance v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$28;

    invoke-direct {v0, p0, p3, p4, p2}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$28;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;JLjava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3172
    new-instance v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$29;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$29;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/widget/DrawLinearLayout;ZZLcom/bilibili/tv/widget/DrawTextView;)V

    invoke-virtual {v2, v0}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 3181
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v3, -0x2

    invoke-direct {v0, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 3184
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f060299

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 3185
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 3186
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 3187
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 3188
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 3189
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setId(I)V

    .line 3190
    invoke-virtual {p1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3191
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    .line 3192
    const/4 v0, 0x0

    move v1, v0

    :goto_100
    if-ge v1, v2, :cond_140

    .line 3193
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawLinearLayout;

    .line 3194
    if-nez v1, :cond_124

    .line 3195
    invoke-virtual {v0}, Lcom/bilibili/tv/widget/DrawLinearLayout;->getId()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setNextFocusLeftId(I)V

    .line 3199
    :goto_111
    add-int/lit8 v3, v2, -0x1

    if-ne v1, v3, :cond_132

    .line 3200
    invoke-virtual {v0}, Lcom/bilibili/tv/widget/DrawLinearLayout;->getId()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setNextFocusRightId(I)V

    .line 3192
    :goto_11c
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_100

    .line 3143
    :cond_120
    const/4 v4, 0x0

    goto :goto_ae

    .line 3144
    :cond_122
    const/4 v3, 0x0

    goto :goto_b2

    .line 3197
    :cond_124
    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setNextFocusLeftId(I)V

    goto :goto_111

    .line 3202
    :cond_132
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setNextFocusRightId(I)V

    goto :goto_11c

    .line 3205
    :cond_140
    return-void
.end method

.method private final applyNoHistoryState(Lcom/bilibili/tv/api/video/BiliVideoDetail;Z)V
    .locals 9

    .prologue
    const-wide/16 v4, 0x0

    const v8, 0x7f080196

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1918
    if-eqz p1, :cond_ba

    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mHistory:Lcom/bilibili/tv/api/video/BiliVideoDetail$History;

    if-eqz v0, :cond_ba

    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mHistory:Lcom/bilibili/tv/api/video/BiliVideoDetail$History;

    iget-wide v6, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$History;->mCid:J

    cmp-long v0, v6, v4

    if-lez v0, :cond_ba

    move v0, v1

    .line 1921
    :goto_16
    invoke-static {p0}, Lbl/abd;->get_default_no_history(Landroid/content/Context;)Z

    move-result v3

    .line 1922
    if-eqz v0, :cond_bd

    .line 1923
    sput-boolean v2, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->sNoHistoryPlayMode:Z

    .line 1924
    iget-object v6, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->noHistoryPlayCheckBox:Landroid/widget/CheckBox;

    if-eqz v6, :cond_27

    .line 1925
    iget-object v6, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->noHistoryPlayCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v6, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1934
    :cond_27
    :goto_27
    iget-object v6, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->noHistoryPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    if-eqz v6, :cond_34

    .line 1935
    if-eqz v0, :cond_cc

    .line 1938
    iget-object v6, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->noHistoryPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setVisibility(I)V

    .line 1950
    :cond_34
    :goto_34
    invoke-direct {p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->refreshNoHistoryLabel()V

    .line 1951
    const-string v6, "HistoryDebug"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[NO_HISTORY_STATE] reset="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", globalDefault="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, ", hasHistory="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", historyCid="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1954
    if-eqz p1, :cond_6c

    iget-object v3, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mHistory:Lcom/bilibili/tv/api/video/BiliVideoDetail$History;

    if-eqz v3, :cond_6c

    .line 1955
    iget-object v3, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mHistory:Lcom/bilibili/tv/api/video/BiliVideoDetail$History;

    iget-wide v4, v3, Lcom/bilibili/tv/api/video/BiliVideoDetail$History;->mCid:J

    :cond_6c
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", historySec="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1956
    if-eqz p1, :cond_ed

    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mHistory:Lcom/bilibili/tv/api/video/BiliVideoDetail$History;

    if-eqz v0, :cond_ed

    .line 1957
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mHistory:Lcom/bilibili/tv/api/video/BiliVideoDetail$History;

    iget v0, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$History;->mProgress:I

    :goto_80
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", checked="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->noHistoryPlayCheckBox:Landroid/widget/CheckBox;

    if-eqz v3, :cond_f0

    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->noHistoryPlayCheckBox:Landroid/widget/CheckBox;

    .line 1958
    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_f0

    :goto_96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sNoHistoryPlayMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->sNoHistoryPlayMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", avid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->s:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1951
    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1961
    return-void

    :cond_ba
    move v0, v2

    .line 1918
    goto/16 :goto_16

    .line 1927
    :cond_bd
    if-eqz p2, :cond_27

    .line 1929
    sput-boolean v3, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->sNoHistoryPlayMode:Z

    .line 1930
    iget-object v6, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->noHistoryPlayCheckBox:Landroid/widget/CheckBox;

    if-eqz v6, :cond_27

    .line 1931
    iget-object v6, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->noHistoryPlayCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v6, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_27

    .line 1940
    :cond_cc
    iget-object v6, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->noHistoryPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    invoke-virtual {v6, v2}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setVisibility(I)V

    .line 1941
    iget-object v6, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/ProgressPlayButton;

    if-eqz v6, :cond_da

    .line 1942
    iget-object v6, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/ProgressPlayButton;

    invoke-virtual {v6, v8}, Lcom/bilibili/tv/widget/ProgressPlayButton;->setNextFocusRightId(I)V

    .line 1944
    :cond_da
    iget-object v6, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->noHistoryPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    const v7, 0x7f0801df

    invoke-virtual {v6, v7}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setNextFocusRightId(I)V

    .line 1945
    iget-object v6, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->expandBtn:Lcom/bilibili/tv/widget/DrawLinearLayout;

    if-eqz v6, :cond_34

    .line 1946
    iget-object v6, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->expandBtn:Lcom/bilibili/tv/widget/DrawLinearLayout;

    invoke-virtual {v6, v8}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setNextFocusLeftId(I)V

    goto/16 :goto_34

    .line 1957
    :cond_ed
    const/16 v0, -0x3e7

    goto :goto_80

    :cond_f0
    move v1, v2

    .line 1958
    goto :goto_96
.end method

.method private final b(Lcom/bilibili/tv/api/video/BiliVideoDetail;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 3826
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mRedirectUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_104

    .line 3827
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mRedirectUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 3828
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 3829
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 3831
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

    .line 3832
    const-string v2, "/ss"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_90

    .line 3833
    const-string v2, "/ss"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 3834
    add-int/lit8 v2, v2, 0x3

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 3835
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move v0, v1

    .line 3836
    :goto_53
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_69

    .line 3837
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 3838
    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_69

    .line 3839
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3836
    add-int/lit8 v0, v0, 0x1

    goto :goto_53

    .line 3844
    :cond_69
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_104

    .line 3845
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

    .line 3846
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3876
    :goto_8f
    return-object v0

    .line 3848
    :cond_90
    const-string v2, "/ep"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_104

    .line 3849
    const-string v2, "/ep"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 3850
    add-int/lit8 v2, v2, 0x3

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 3851
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 3852
    :goto_a9
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_bf

    .line 3853
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 3854
    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_bf

    .line 3855
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3852
    add-int/lit8 v1, v1, 0x1

    goto :goto_a9

    .line 3860
    :cond_bf
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_104

    .line 3861
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3862
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

    .line 3863
    invoke-direct {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->fetchSeasonIdFromEpId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3864
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

    .line 3869
    :cond_104
    if-eqz p1, :cond_12d

    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mBangumiInfo:Lcom/bilibili/tv/api/video/BiliVideoDetail$BangumiInfo;

    :goto_108
    if-eqz v0, :cond_12f

    .line 3870
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mBangumiInfo:Lcom/bilibili/tv/api/video/BiliVideoDetail$BangumiInfo;

    iget-object v0, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$BangumiInfo;->mSeasonId:Ljava/lang/String;

    .line 3871
    const-string v1, "video.mBangumiInfo.mSeasonId"

    invoke-static {v0, v1}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3872
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

    .line 3869
    :cond_12d
    const/4 v0, 0x0

    goto :goto_108

    .line 3875
    :cond_12f
    const-string v0, "BangumiJump"

    const-string v1, "no seasonId found, returning empty"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3876
    const-string v0, ""

    goto/16 :goto_8f
.end method

.method private calcPageProgress(Lcom/bilibili/tv/api/video/BiliVideoDetail;J)I
    .locals 2

    .prologue
    .line 2708
    if-eqz p1, :cond_13

    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mHistory:Lcom/bilibili/tv/api/video/BiliVideoDetail$History;

    if-eqz v0, :cond_13

    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mHistory:Lcom/bilibili/tv/api/video/BiliVideoDetail$History;

    iget-wide v0, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$History;->mCid:J

    cmp-long v0, v0, p2

    if-nez v0, :cond_13

    .line 2709
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mHistory:Lcom/bilibili/tv/api/video/BiliVideoDetail$History;

    iget v0, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$History;->mProgress:I

    .line 2711
    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method private final coinVideo(II)V
    .locals 8

    .prologue
    .line 4460
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->B:Z

    if-eqz v0, :cond_5

    .line 4470
    :goto_4
    return-void

    .line 4463
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->B:Z

    .line 4464
    invoke-static {p0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v0

    .line 4465
    const-string v1, "BiliAccount.get(this)"

    invoke-static {v0, v1}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4466
    invoke-static {v0}, Lmybl/CookieUtil;->getFullCookieWithDevice(Lbl/mg;)Ljava/lang/String;

    move-result-object v7

    .line 4467
    invoke-static {v0}, Lmybl/CookieUtil;->getBiliJct(Lbl/mg;)Ljava/lang/String;

    move-result-object v6

    .line 4468
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

    .line 4469
    invoke-virtual {v0, v1}, Lbl/vp;->a(Lretrofit2/Callback;)V

    goto :goto_4
.end method

.method private convertEpisodeToBiliVideoDetail(Lcom/bilibili/tv/api/video/PgcInfo$Episode;)Lcom/bilibili/tv/api/video/BiliVideoDetail;
    .locals 6

    .prologue
    .line 3310
    new-instance v2, Lcom/bilibili/tv/api/video/BiliVideoDetail;

    invoke-direct {v2}, Lcom/bilibili/tv/api/video/BiliVideoDetail;-><init>()V

    .line 3311
    iget-wide v0, p1, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->aid:J

    iput-wide v0, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mAvid:J

    .line 3312
    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->bvid:Ljava/lang/String;

    iput-object v0, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mBvid:Ljava/lang/String;

    .line 3313
    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->cover:Ljava/lang/String;

    iput-object v0, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mCover:Ljava/lang/String;

    .line 3314
    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->showTitle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a9

    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->showTitle:Ljava/lang/String;

    .line 3315
    :goto_1b
    iput-object v0, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mTitle:Ljava/lang/String;

    .line 3316
    iget-wide v0, p1, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->duration:J

    const-wide/16 v4, 0x3e8

    div-long/2addr v0, v4

    long-to-int v0, v0

    iput v0, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mDuration:I

    .line 3317
    iget-wide v0, p1, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->pubTime:J

    iput-wide v0, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mCreatedTimestamp:J

    .line 3318
    iput-object p1, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail;->sourceEpisode:Ljava/lang/Object;

    .line 3319
    iget-wide v0, p1, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->cid:J

    iput-wide v0, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mCid:J

    .line 3321
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

    .line 3322
    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->badgeInfo:Lcom/bilibili/tv/api/video/PgcInfo$BadgeInfo;

    iget-object v0, v0, Lcom/bilibili/tv/api/video/PgcInfo$BadgeInfo;->text:Ljava/lang/String;

    iput-object v0, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail;->badgeText:Ljava/lang/String;

    .line 3323
    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->badgeInfo:Lcom/bilibili/tv/api/video/PgcInfo$BadgeInfo;

    iget-object v0, v0, Lcom/bilibili/tv/api/video/PgcInfo$BadgeInfo;->bgColor:Ljava/lang/String;

    iput-object v0, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail;->badgeBgColor:Ljava/lang/String;

    .line 3326
    :cond_4f
    new-instance v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Stat;

    invoke-direct {v0}, Lcom/bilibili/tv/api/video/BiliVideoDetail$Stat;-><init>()V

    .line 3327
    iget-object v1, p1, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->stat:Lcom/bilibili/tv/api/video/PgcInfo$EpisodeStat;

    if-eqz v1, :cond_b9

    .line 3328
    iget-object v1, p1, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->stat:Lcom/bilibili/tv/api/video/PgcInfo$EpisodeStat;

    iget-wide v4, v1, Lcom/bilibili/tv/api/video/PgcInfo$EpisodeStat;->play:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Stat;->mPlays:Ljava/lang/String;

    .line 3329
    iget-object v1, p1, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->stat:Lcom/bilibili/tv/api/video/PgcInfo$EpisodeStat;

    iget-wide v4, v1, Lcom/bilibili/tv/api/video/PgcInfo$EpisodeStat;->danmakus:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Stat;->mDanmakus:Ljava/lang/String;

    .line 3334
    :goto_6c
    iput-object v0, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mStat:Lcom/bilibili/tv/api/video/BiliVideoDetail$Stat;

    .line 3336
    new-instance v3, Lcom/bilibili/tv/api/video/BiliUser;

    invoke-direct {v3}, Lcom/bilibili/tv/api/video/BiliUser;-><init>()V

    .line 3337
    const-string v1, ""

    .line 3338
    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->statForUnity:Lcom/alibaba/fastjson/JSONObject;

    if-eqz v0, :cond_ce

    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->statForUnity:Lcom/alibaba/fastjson/JSONObject;

    const-string v4, "vt"

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ce

    .line 3339
    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->statForUnity:Lcom/alibaba/fastjson/JSONObject;

    const-string v4, "vt"

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    .line 3340
    if-eqz v4, :cond_ce

    .line 3341
    const-string v0, "pure_text"

    invoke-virtual {v4, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3342
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_c2

    .line 3352
    :cond_99
    :goto_99
    iput-object v0, v3, Lcom/bilibili/tv/api/video/BiliUser;->name:Ljava/lang/String;

    .line 3353
    iput-object v3, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mOwner:Lcom/bilibili/tv/api/video/BiliUser;

    .line 3354
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d0

    const/4 v1, 0x1

    :goto_a4
    iput-boolean v1, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail;->hideUpIcon:Z

    .line 3355
    iput-object v0, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail;->vtText:Ljava/lang/String;

    .line 3357
    return-object v2

    .line 3315
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

    .line 3331
    :cond_b9
    const-string v1, "0"

    iput-object v1, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Stat;->mPlays:Ljava/lang/String;

    .line 3332
    const-string v1, "0"

    iput-object v1, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Stat;->mDanmakus:Ljava/lang/String;

    goto :goto_6c

    .line 3345
    :cond_c2
    const-string v0, "text"

    invoke-virtual {v4, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3346
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_99

    :cond_ce
    move-object v0, v1

    goto :goto_99

    .line 3354
    :cond_d0
    const/4 v1, 0x0

    goto :goto_a4
.end method

.method private convertEpisodeToPage(Lcom/bilibili/tv/api/video/PgcInfo$Episode;I)Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;
    .locals 6

    .prologue
    .line 3258
    new-instance v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;

    invoke-direct {v2}, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;-><init>()V

    .line 3259
    iget-wide v0, p1, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->cid:J

    iput-wide v0, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mCid:J

    .line 3260
    iput p2, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mPage:I

    .line 3261
    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->longTitle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_aa

    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->longTitle:Ljava/lang/String;

    :goto_15
    iput-object v0, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mTitle:Ljava/lang/String;

    .line 3262
    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->link:Ljava/lang/String;

    iput-object v0, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mLink:Ljava/lang/String;

    .line 3263
    iget v0, p1, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->id:I

    int-to-long v0, v0

    iput-wide v0, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mEpisodeId:J

    .line 3264
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->mPgcInfo:Lcom/bilibili/tv/api/video/PgcInfo;

    if-eqz v0, :cond_ae

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->mPgcInfo:Lcom/bilibili/tv/api/video/PgcInfo;

    iget v0, v0, Lcom/bilibili/tv/api/video/PgcInfo;->seasonId:I

    :goto_28
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mSeasonId:Ljava/lang/String;

    .line 3265
    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->cover:Ljava/lang/String;

    iput-object v0, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mEpCover:Ljava/lang/String;

    .line 3266
    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->bvid:Ljava/lang/String;

    iput-object v0, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mBvid:Ljava/lang/String;

    .line 3267
    iget-wide v0, p1, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->duration:J

    const-wide/16 v4, 0x3e8

    div-long/2addr v0, v4

    long-to-int v0, v0

    iput v0, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->duration:I

    .line 3268
    iget-wide v0, p1, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->pubTime:J

    iput-wide v0, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->pubTime:J

    .line 3270
    const-string v1, ""

    .line 3271
    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->statForUnity:Lcom/alibaba/fastjson/JSONObject;

    if-eqz v0, :cond_bd

    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->statForUnity:Lcom/alibaba/fastjson/JSONObject;

    const-string v3, "vt"

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bd

    .line 3272
    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->statForUnity:Lcom/alibaba/fastjson/JSONObject;

    const-string v3, "vt"

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v3

    .line 3273
    if-eqz v3, :cond_bd

    .line 3274
    const-string v0, "pure_text"

    invoke-virtual {v3, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3275
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_b1

    .line 3285
    :cond_68
    :goto_68
    iput-object v0, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->subtitle:Ljava/lang/String;

    .line 3287
    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->stat:Lcom/bilibili/tv/api/video/PgcInfo$EpisodeStat;

    if-eqz v0, :cond_7a

    .line 3288
    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->stat:Lcom/bilibili/tv/api/video/PgcInfo$EpisodeStat;

    iget-wide v0, v0, Lcom/bilibili/tv/api/video/PgcInfo$EpisodeStat;->play:J

    iput-wide v0, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->plays:J

    .line 3289
    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->stat:Lcom/bilibili/tv/api/video/PgcInfo$EpisodeStat;

    iget-wide v0, v0, Lcom/bilibili/tv/api/video/PgcInfo$EpisodeStat;->danmakus:J

    iput-wide v0, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->danmakus:J

    .line 3292
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

    .line 3293
    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->badgeInfo:Lcom/bilibili/tv/api/video/PgcInfo$BadgeInfo;

    iget-object v0, v0, Lcom/bilibili/tv/api/video/PgcInfo$BadgeInfo;->text:Ljava/lang/String;

    iput-object v0, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->badgeText:Ljava/lang/String;

    .line 3294
    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->badgeInfo:Lcom/bilibili/tv/api/video/PgcInfo$BadgeInfo;

    iget-object v0, v0, Lcom/bilibili/tv/api/video/PgcInfo$BadgeInfo;->bgColor:Ljava/lang/String;

    iput-object v0, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->badgeBgColor:Ljava/lang/String;

    .line 3297
    :cond_9a
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->mPgcInfo:Lcom/bilibili/tv/api/video/PgcInfo;

    if-eqz v0, :cond_a9

    .line 3298
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->mPgcInfo:Lcom/bilibili/tv/api/video/PgcInfo;

    iget v0, v0, Lcom/bilibili/tv/api/video/PgcInfo;->type:I

    .line 3299
    const/4 v1, 0x2

    if-ne v0, v1, :cond_bf

    .line 3300
    const-string v0, "movie"

    iput-object v0, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mFrom:Ljava/lang/String;

    .line 3306
    :cond_a9
    :goto_a9
    return-object v2

    .line 3261
    :cond_aa
    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->title:Ljava/lang/String;

    goto/16 :goto_15

    .line 3264
    :cond_ae
    const/4 v0, 0x0

    goto/16 :goto_28

    .line 3278
    :cond_b1
    const-string v0, "text"

    invoke-virtual {v3, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3279
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_68

    :cond_bd
    move-object v0, v1

    goto :goto_68

    .line 3302
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

    .line 1809
    new-instance v3, Lcom/bilibili/tv/api/video/BiliVideoDetail;

    invoke-direct {v3}, Lcom/bilibili/tv/api/video/BiliVideoDetail;-><init>()V

    .line 1811
    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo;->title:Ljava/lang/String;

    iput-object v0, v3, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mTitle:Ljava/lang/String;

    .line 1812
    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo;->cover:Ljava/lang/String;

    iput-object v0, v3, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mCover:Ljava/lang/String;

    .line 1813
    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo;->episodes:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/PgcInfo$Episode;

    .line 1814
    iget-wide v6, v0, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->aid:J

    iput-wide v6, v3, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mAvid:J

    .line 1815
    iget-object v1, v0, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->bvid:Ljava/lang/String;

    iput-object v1, v3, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mBvid:Ljava/lang/String;

    .line 1816
    iget v1, p1, Lcom/bilibili/tv/api/video/PgcInfo;->seasonId:I

    iput v1, v3, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mSeasonOId:I

    .line 1817
    iget-wide v6, v0, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->duration:J

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    long-to-int v1, v6

    iput v1, v3, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mDuration:I

    .line 1818
    iget-wide v0, v0, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->pubTime:J

    iput-wide v0, v3, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mCreatedTimestamp:J

    .line 1820
    new-instance v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$BangumiInfo;

    invoke-direct {v0}, Lcom/bilibili/tv/api/video/BiliVideoDetail$BangumiInfo;-><init>()V

    iput-object v0, v3, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mBangumiInfo:Lcom/bilibili/tv/api/video/BiliVideoDetail$BangumiInfo;

    .line 1821
    iget-object v0, v3, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mBangumiInfo:Lcom/bilibili/tv/api/video/BiliVideoDetail$BangumiInfo;

    iget v1, p1, Lcom/bilibili/tv/api/video/PgcInfo;->seasonId:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$BangumiInfo;->mSeasonId:Ljava/lang/String;

    .line 1822
    iget-object v0, v3, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mBangumiInfo:Lcom/bilibili/tv/api/video/BiliVideoDetail$BangumiInfo;

    iget-object v1, p1, Lcom/bilibili/tv/api/video/PgcInfo;->title:Ljava/lang/String;

    iput-object v1, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$BangumiInfo;->mTitle:Ljava/lang/String;

    .line 1824
    new-instance v0, Lcom/bilibili/tv/api/video/BiliUser;

    invoke-direct {v0}, Lcom/bilibili/tv/api/video/BiliUser;-><init>()V

    iput-object v0, v3, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mOwner:Lcom/bilibili/tv/api/video/BiliUser;

    .line 1825
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v3, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mStaffList:Ljava/util/List;

    .line 1828
    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo;->producer:Lcom/bilibili/tv/api/video/PgcInfo$Producer;

    if-eqz v0, :cond_78

    .line 1830
    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo;->producer:Lcom/bilibili/tv/api/video/PgcInfo$Producer;

    iget-object v0, v0, Lcom/bilibili/tv/api/video/PgcInfo$Producer;->list:Ljava/util/List;

    if-eqz v0, :cond_78

    move v1, v2

    .line 1831
    :goto_60
    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo;->producer:Lcom/bilibili/tv/api/video/PgcInfo$Producer;

    iget-object v0, v0, Lcom/bilibili/tv/api/video/PgcInfo$Producer;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_78

    .line 1832
    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo;->producer:Lcom/bilibili/tv/api/video/PgcInfo$Producer;

    iget-object v0, v0, Lcom/bilibili/tv/api/video/PgcInfo$Producer;->list:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/PgcInfo$ProducerInfo;

    .line 1831
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_60

    .line 1838
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

    .line 1839
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

    .line 1840
    new-instance v6, Lcom/bilibili/tv/api/video/BiliVideoDetail$Staff;

    invoke-direct {v6}, Lcom/bilibili/tv/api/video/BiliVideoDetail$Staff;-><init>()V

    .line 1841
    iget-wide v8, v0, Lcom/bilibili/tv/api/video/PgcInfo$ProducerInfo;->mid:J

    iput-wide v8, v6, Lcom/bilibili/tv/api/video/BiliVideoDetail$Staff;->mid:J

    .line 1842
    iget-object v7, v0, Lcom/bilibili/tv/api/video/PgcInfo$ProducerInfo;->name:Ljava/lang/String;

    iput-object v7, v6, Lcom/bilibili/tv/api/video/BiliVideoDetail$Staff;->name:Ljava/lang/String;

    .line 1843
    iget-object v0, v0, Lcom/bilibili/tv/api/video/PgcInfo$ProducerInfo;->face:Ljava/lang/String;

    iput-object v0, v6, Lcom/bilibili/tv/api/video/BiliVideoDetail$Staff;->face:Ljava/lang/String;

    .line 1844
    iget-object v0, v3, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mStaffList:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_94

    .line 1846
    :cond_b7
    iget-object v1, v3, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mOwner:Lcom/bilibili/tv/api/video/BiliUser;

    iget-object v0, v3, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mStaffList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Staff;

    iget-wide v6, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Staff;->mid:J

    iput-wide v6, v1, Lcom/bilibili/tv/api/video/BiliUser;->mid:J

    .line 1847
    iget-object v1, v3, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mOwner:Lcom/bilibili/tv/api/video/BiliUser;

    iget-object v0, v3, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mStaffList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Staff;

    iget-object v0, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Staff;->name:Ljava/lang/String;

    iput-object v0, v1, Lcom/bilibili/tv/api/video/BiliUser;->name:Ljava/lang/String;

    .line 1848
    iget-object v1, v3, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mOwner:Lcom/bilibili/tv/api/video/BiliUser;

    iget-object v0, v3, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mStaffList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Staff;

    iget-object v0, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Staff;->face:Ljava/lang/String;

    iput-object v0, v1, Lcom/bilibili/tv/api/video/BiliUser;->face:Ljava/lang/String;

    .line 1864
    :goto_e1
    new-instance v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Stat;

    invoke-direct {v0}, Lcom/bilibili/tv/api/video/BiliVideoDetail$Stat;-><init>()V

    iput-object v0, v3, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mStat:Lcom/bilibili/tv/api/video/BiliVideoDetail$Stat;

    .line 1865
    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo;->stat:Lcom/bilibili/tv/api/video/PgcInfo$Stat;

    if-eqz v0, :cond_104

    .line 1866
    iget-object v0, v3, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mStat:Lcom/bilibili/tv/api/video/BiliVideoDetail$Stat;

    iget-object v1, p1, Lcom/bilibili/tv/api/video/PgcInfo;->stat:Lcom/bilibili/tv/api/video/PgcInfo$Stat;

    iget-wide v6, v1, Lcom/bilibili/tv/api/video/PgcInfo$Stat;->views:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Stat;->mPlays:Ljava/lang/String;

    .line 1867
    iget-object v0, v3, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mStat:Lcom/bilibili/tv/api/video/BiliVideoDetail$Stat;

    iget-object v1, p1, Lcom/bilibili/tv/api/video/PgcInfo;->stat:Lcom/bilibili/tv/api/video/PgcInfo$Stat;

    iget-wide v6, v1, Lcom/bilibili/tv/api/video/PgcInfo$Stat;->danmakus:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Stat;->mDanmakus:Ljava/lang/String;

    .line 1870
    :cond_104
    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo;->evaluate:Ljava/lang/String;

    iput-object v0, v3, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mDescription:Ljava/lang/String;

    .line 1872
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v3, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    .line 1873
    :goto_10f
    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo;->episodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_179

    .line 1874
    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo;->episodes:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/PgcInfo$Episode;

    .line 1875
    add-int/lit8 v1, v2, 0x1

    invoke-direct {p0, v0, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->convertEpisodeToPage(Lcom/bilibili/tv/api/video/PgcInfo$Episode;I)Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;

    move-result-object v0

    .line 1876
    iget-object v1, v3, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1873
    add-int/lit8 v2, v2, 0x1

    goto :goto_10f

    .line 1849
    :cond_12d
    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo;->upInfo:Lcom/bilibili/tv/api/video/PgcInfo$UpInfo;

    if-eqz v0, :cond_167

    .line 1850
    iget-object v0, v3, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mOwner:Lcom/bilibili/tv/api/video/BiliUser;

    iget-object v1, p1, Lcom/bilibili/tv/api/video/PgcInfo;->upInfo:Lcom/bilibili/tv/api/video/PgcInfo$UpInfo;

    iget-wide v6, v1, Lcom/bilibili/tv/api/video/PgcInfo$UpInfo;->mid:J

    iput-wide v6, v0, Lcom/bilibili/tv/api/video/BiliUser;->mid:J

    .line 1851
    iget-object v0, v3, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mOwner:Lcom/bilibili/tv/api/video/BiliUser;

    iget-object v1, p1, Lcom/bilibili/tv/api/video/PgcInfo;->upInfo:Lcom/bilibili/tv/api/video/PgcInfo$UpInfo;

    iget-object v1, v1, Lcom/bilibili/tv/api/video/PgcInfo$UpInfo;->name:Ljava/lang/String;

    iput-object v1, v0, Lcom/bilibili/tv/api/video/BiliUser;->name:Ljava/lang/String;

    .line 1852
    iget-object v0, v3, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mOwner:Lcom/bilibili/tv/api/video/BiliUser;

    iget-object v1, p1, Lcom/bilibili/tv/api/video/PgcInfo;->upInfo:Lcom/bilibili/tv/api/video/PgcInfo$UpInfo;

    iget-object v1, v1, Lcom/bilibili/tv/api/video/PgcInfo$UpInfo;->face:Ljava/lang/String;

    iput-object v1, v0, Lcom/bilibili/tv/api/video/BiliUser;->face:Ljava/lang/String;

    .line 1853
    new-instance v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Staff;

    invoke-direct {v0}, Lcom/bilibili/tv/api/video/BiliVideoDetail$Staff;-><init>()V

    .line 1854
    iget-object v1, p1, Lcom/bilibili/tv/api/video/PgcInfo;->upInfo:Lcom/bilibili/tv/api/video/PgcInfo$UpInfo;

    iget-wide v6, v1, Lcom/bilibili/tv/api/video/PgcInfo$UpInfo;->mid:J

    iput-wide v6, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Staff;->mid:J

    .line 1855
    iget-object v1, p1, Lcom/bilibili/tv/api/video/PgcInfo;->upInfo:Lcom/bilibili/tv/api/video/PgcInfo$UpInfo;

    iget-object v1, v1, Lcom/bilibili/tv/api/video/PgcInfo$UpInfo;->name:Ljava/lang/String;

    iput-object v1, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Staff;->name:Ljava/lang/String;

    .line 1856
    iget-object v1, p1, Lcom/bilibili/tv/api/video/PgcInfo;->upInfo:Lcom/bilibili/tv/api/video/PgcInfo$UpInfo;

    iget-object v1, v1, Lcom/bilibili/tv/api/video/PgcInfo$UpInfo;->face:Ljava/lang/String;

    iput-object v1, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Staff;->face:Ljava/lang/String;

    .line 1857
    iget-object v1, v3, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mStaffList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_e1

    .line 1859
    :cond_167
    iget-object v0, v3, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mOwner:Lcom/bilibili/tv/api/video/BiliUser;

    iput-wide v4, v0, Lcom/bilibili/tv/api/video/BiliUser;->mid:J

    .line 1860
    iget-object v0, v3, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mOwner:Lcom/bilibili/tv/api/video/BiliUser;

    const-string v1, ""

    iput-object v1, v0, Lcom/bilibili/tv/api/video/BiliUser;->name:Ljava/lang/String;

    .line 1861
    iget-object v0, v3, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mOwner:Lcom/bilibili/tv/api/video/BiliUser;

    const-string v1, ""

    iput-object v1, v0, Lcom/bilibili/tv/api/video/BiliUser;->face:Ljava/lang/String;

    goto/16 :goto_e1

    .line 1879
    :cond_179
    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo;->userStatus:Lcom/bilibili/tv/api/video/PgcInfo$UserStatus;

    if-eqz v0, :cond_1b5

    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo;->userStatus:Lcom/bilibili/tv/api/video/PgcInfo$UserStatus;

    iget-object v0, v0, Lcom/bilibili/tv/api/video/PgcInfo$UserStatus;->progress:Lcom/bilibili/tv/api/video/PgcInfo$Progress;

    if-eqz v0, :cond_1b5

    .line 1880
    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo;->userStatus:Lcom/bilibili/tv/api/video/PgcInfo$UserStatus;

    iget-object v0, v0, Lcom/bilibili/tv/api/video/PgcInfo$UserStatus;->progress:Lcom/bilibili/tv/api/video/PgcInfo$Progress;

    .line 1881
    iget-wide v6, v0, Lcom/bilibili/tv/api/video/PgcInfo$Progress;->lastEpId:J

    .line 1882
    iget v2, v0, Lcom/bilibili/tv/api/video/PgcInfo$Progress;->lastTime:I

    .line 1885
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

    .line 1886
    iget v8, v0, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->id:I

    int-to-long v8, v8

    cmp-long v8, v8, v6

    if-nez v8, :cond_191

    .line 1887
    iget-wide v0, v0, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->cid:J

    .line 1892
    :goto_1a6
    cmp-long v4, v0, v4

    if-lez v4, :cond_1b5

    .line 1893
    new-instance v4, Lcom/bilibili/tv/api/video/BiliVideoDetail$History;

    invoke-direct {v4}, Lcom/bilibili/tv/api/video/BiliVideoDetail$History;-><init>()V

    .line 1894
    iput-wide v0, v4, Lcom/bilibili/tv/api/video/BiliVideoDetail$History;->mCid:J

    .line 1895
    iput v2, v4, Lcom/bilibili/tv/api/video/BiliVideoDetail$History;->mProgress:I

    .line 1896
    iput-object v4, v3, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mHistory:Lcom/bilibili/tv/api/video/BiliVideoDetail$History;

    .line 1900
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

    .line 3385
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonsContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_12

    if-eqz p1, :cond_12

    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo;->episodes:Ljava/util/List;

    if-nez v0, :cond_13

    .line 3467
    :cond_12
    :goto_12
    return-void

    .line 3389
    :cond_13
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_20

    .line 3390
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3393
    :cond_20
    new-instance v3, Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    invoke-direct {v3, p0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;-><init>(Landroid/content/Context;)V

    .line 3395
    invoke-virtual {v3, v10}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setSectionId(I)V

    .line 3396
    invoke-virtual {v3, v8}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setShowIndexBadge(Z)V

    .line 3398
    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo;->episodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    .line 3399
    const-string v0, "\u9009\u96c6"

    invoke-virtual {v3, v0, v6}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setTitle(Ljava/lang/String;I)V

    .line 3401
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    .line 3402
    :goto_3c
    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo;->episodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_57

    .line 3403
    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo;->episodes:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/PgcInfo$Episode;

    .line 3404
    invoke-direct {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->convertEpisodeToBiliVideoDetail(Lcom/bilibili/tv/api/video/PgcInfo$Episode;)Lcom/bilibili/tv/api/video/BiliVideoDetail;

    move-result-object v0

    .line 3406
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3402
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3c

    .line 3409
    :cond_57
    new-instance v0, Lcom/bilibili/tv/ui/video/widget/UnifiedVideoCardBinder;

    invoke-direct {v0, v8}, Lcom/bilibili/tv/ui/video/widget/UnifiedVideoCardBinder;-><init>(I)V

    .line 3410
    invoke-virtual {v3, v7, v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setData(Ljava/util/List;Lcom/bilibili/tv/ui/video/widget/VideoCardBinder;)V

    .line 3413
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

    .line 3414
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->u:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    iget-object v0, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mHistory:Lcom/bilibili/tv/api/video/BiliVideoDetail$History;

    iget-wide v0, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$History;->mCid:J

    .line 3416
    :goto_79
    cmp-long v4, v0, v4

    if-lez v4, :cond_83

    .line 3417
    invoke-virtual {v3, v0, v1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setCurrentCid(J)V

    .line 3418
    invoke-virtual {v3, v0, v1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setCurrentPlayingCid(J)V

    .line 3420
    :cond_83
    invoke-virtual {v3}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->syncAdapterCurrentState()V

    .line 3421
    invoke-virtual {v3, v2}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setInterceptCurrentVideoClick(Z)V

    .line 3423
    new-instance v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$30;

    invoke-direct {v0, p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$30;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)V

    invoke-virtual {v3, v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setOnVideoClickListener(Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnVideoClickListener;)V

    .line 3443
    invoke-virtual {v3}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    .line 3444
    if-eqz v0, :cond_9d

    .line 3445
    const v1, 0x7f08016a

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setNextFocusUpId(I)V

    .line 3448
    :cond_9d
    new-instance v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonSectionView;

    invoke-virtual {v3}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->getTitleView()Landroid/widget/TextView;

    move-result-object v4

    invoke-direct {v1, v4, v0, v10}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonSectionView;-><init>(Landroid/widget/TextView;Landroid/support/v7/widget/RecyclerView;I)V

    .line 3449
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonSectionViews:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3450
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->ugcSeasonSections:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3451
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->videoListNavigator:Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;

    if-eqz v0, :cond_b9

    .line 3452
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->videoListNavigator:Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->registerSection(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)V

    .line 3455
    :cond_b9
    invoke-virtual {v3}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->scrollToCurrentVideo()V

    .line 3457
    invoke-direct {p0, v3, v6}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->setupNavigationTagsForSection(Lcom/bilibili/tv/ui/video/widget/VideoListSection;I)V

    .line 3459
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 3461
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->hh:Landroid/widget/TextView;

    if-eqz v0, :cond_cd

    .line 3462
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->hh:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3464
    :cond_cd
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->o:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_12

    .line 3465
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

    .line 3747
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonsContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_11

    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo$Section;->episodes:Ljava/util/List;

    if-eqz v0, :cond_11

    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo$Section;->episodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 3802
    :cond_11
    :goto_11
    return-void

    .line 3751
    :cond_12
    new-instance v2, Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    invoke-direct {v2, p0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;-><init>(Landroid/content/Context;)V

    .line 3753
    invoke-virtual {v2, p2}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setSectionId(I)V

    .line 3754
    invoke-virtual {v2, v5}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setShowIndexBadge(Z)V

    .line 3756
    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo$Section;->episodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 3757
    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo$Section;->title:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setTitle(Ljava/lang/String;I)V

    .line 3759
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 3760
    const/4 v0, 0x0

    move v1, v0

    :goto_2f
    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo$Section;->episodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4a

    .line 3761
    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo$Section;->episodes:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/PgcInfo$Episode;

    .line 3762
    invoke-direct {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->convertEpisodeToBiliVideoDetail(Lcom/bilibili/tv/api/video/PgcInfo$Episode;)Lcom/bilibili/tv/api/video/BiliVideoDetail;

    move-result-object v0

    .line 3763
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3760
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2f

    .line 3766
    :cond_4a
    new-instance v0, Lcom/bilibili/tv/ui/video/widget/UnifiedVideoCardBinder;

    invoke-direct {v0, v5}, Lcom/bilibili/tv/ui/video/widget/UnifiedVideoCardBinder;-><init>(I)V

    .line 3767
    invoke-virtual {v2, v4, v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setData(Ljava/util/List;Lcom/bilibili/tv/ui/video/widget/VideoCardBinder;)V

    .line 3769
    iget-wide v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->s:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-lez v0, :cond_5f

    .line 3770
    iget-wide v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->s:J

    invoke-virtual {v2, v0, v1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setCurrentVideoId(J)V

    .line 3772
    :cond_5f
    invoke-virtual {v2}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->syncAdapterCurrentState()V

    .line 3774
    new-instance v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$35;

    invoke-direct {v0, p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$35;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)V

    invoke-virtual {v2, v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setOnVideoClickListener(Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnVideoClickListener;)V

    .line 3784
    invoke-virtual {v2}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    .line 3785
    if-eqz v0, :cond_76

    .line 3786
    const v1, 0x7f08016a

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setNextFocusUpId(I)V

    .line 3789
    :cond_76
    new-instance v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonSectionView;

    invoke-virtual {v2}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->getTitleView()Landroid/widget/TextView;

    move-result-object v4

    invoke-direct {v1, v4, v0, p2}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonSectionView;-><init>(Landroid/widget/TextView;Landroid/support/v7/widget/RecyclerView;I)V

    .line 3790
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonSectionViews:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3792
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->ugcSeasonSections:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3793
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->videoListNavigator:Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;

    if-eqz v0, :cond_92

    .line 3794
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->videoListNavigator:Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->registerSection(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)V

    .line 3797
    :cond_92
    invoke-virtual {v2}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->scrollToCurrentVideo()V

    .line 3799
    invoke-direct {p0, v2, v3}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->setupNavigationTagsForSection(Lcom/bilibili/tv/ui/video/widget/VideoListSection;I)V

    .line 3801
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
    .line 3687
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonsContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_c

    if-eqz p1, :cond_c

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 3744
    :cond_c
    :goto_c
    return-void

    .line 3691
    :cond_d
    new-instance v1, Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;-><init>(Landroid/content/Context;)V

    .line 3693
    invoke-virtual {v1, p2}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setSectionId(I)V

    .line 3694
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setShowIndexBadge(Z)V

    .line 3696
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 3697
    const-string v0, "\u591a\u5b63\u5217\u8868"

    invoke-virtual {v1, v0, v2}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setTitle(Ljava/lang/String;I)V

    .line 3699
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3700
    const/4 v0, 0x0

    :goto_28
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_38

    .line 3701
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3700
    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    .line 3704
    :cond_38
    new-instance v0, Lcom/bilibili/tv/ui/video/widget/PgcSeasonBinder;

    invoke-direct {v0}, Lcom/bilibili/tv/ui/video/widget/PgcSeasonBinder;-><init>()V

    .line 3705
    invoke-virtual {v1, v3, v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setData(Ljava/util/List;Lcom/bilibili/tv/ui/video/widget/VideoCardBinder;)V

    .line 3707
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->mSeasonId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_51

    .line 3709
    :try_start_48
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->mSeasonId:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 3710
    invoke-virtual {v1, v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setCurrentSeasonId(I)V
    :try_end_51
    .catch Ljava/lang/NumberFormatException; {:try_start_48 .. :try_end_51} :catch_91

    .line 3714
    :cond_51
    :goto_51
    invoke-virtual {v1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->syncAdapterCurrentState()V

    .line 3716
    new-instance v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$34;

    invoke-direct {v0, p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$34;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)V

    invoke-virtual {v1, v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setOnVideoClickListener(Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnVideoClickListener;)V

    .line 3726
    invoke-virtual {v1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    .line 3727
    if-eqz v0, :cond_68

    .line 3728
    const v3, 0x7f08016a

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->setNextFocusUpId(I)V

    .line 3731
    :cond_68
    new-instance v3, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonSectionView;

    invoke-virtual {v1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->getTitleView()Landroid/widget/TextView;

    move-result-object v4

    invoke-direct {v3, v4, v0, p2}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonSectionView;-><init>(Landroid/widget/TextView;Landroid/support/v7/widget/RecyclerView;I)V

    .line 3732
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonSectionViews:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3734
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->ugcSeasonSections:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3735
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->videoListNavigator:Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;

    if-eqz v0, :cond_84

    .line 3736
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->videoListNavigator:Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->registerSection(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)V

    .line 3739
    :cond_84
    invoke-virtual {v1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->scrollToCurrentVideo()V

    .line 3741
    invoke-direct {p0, v1, v2}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->setupNavigationTagsForSection(Lcom/bilibili/tv/ui/video/widget/VideoListSection;I)V

    .line 3743
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_c

    .line 3711
    :catch_91
    move-exception v0

    goto :goto_51
.end method

.method private extractSeasonId(Lcom/bilibili/tv/api/video/BiliVideoDetail;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 2780
    if-nez p1, :cond_6

    .line 2781
    const-string v0, ""

    .line 2824
    :goto_5
    return-object v0

    .line 2783
    :cond_6
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mRedirectUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a0

    .line 2784
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mRedirectUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 2785
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 2786
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 2788
    :cond_26
    const-string v2, "/ss"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_61

    .line 2789
    const-string v2, "/ss"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 2790
    add-int/lit8 v2, v2, 0x3

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 2791
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move v0, v1

    .line 2792
    :goto_40
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_56

    .line 2793
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 2794
    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_56

    .line 2795
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2792
    add-int/lit8 v0, v0, 0x1

    goto :goto_40

    .line 2800
    :cond_56
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_a0

    .line 2801
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 2803
    :cond_61
    const-string v2, "/ep"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a0

    .line 2804
    const-string v2, "/ep"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 2805
    add-int/lit8 v2, v2, 0x3

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 2806
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 2807
    :goto_7a
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_90

    .line 2808
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 2809
    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_90

    .line 2810
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2807
    add-int/lit8 v1, v1, 0x1

    goto :goto_7a

    .line 2815
    :cond_90
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_a0

    .line 2816
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2817
    invoke-direct {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->fetchSeasonIdFromEpId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_5

    .line 2821
    :cond_a0
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mBangumiInfo:Lcom/bilibili/tv/api/video/BiliVideoDetail$BangumiInfo;

    if-eqz v0, :cond_aa

    .line 2822
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mBangumiInfo:Lcom/bilibili/tv/api/video/BiliVideoDetail$BangumiInfo;

    iget-object v0, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$BangumiInfo;->mSeasonId:Ljava/lang/String;

    goto/16 :goto_5

    .line 2824
    :cond_aa
    const-string v0, ""

    goto/16 :goto_5
.end method

.method private final fallbackLoadHistory(Lcom/bilibili/tv/api/video/BiliVideoDetail;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 2361
    new-instance v0, Lcom/bilibili/tv/api/video/VideoApiService$VideoParamsMapV2$Builder;

    iget-wide v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->s:J

    invoke-direct {v0, v2, v3}, Lcom/bilibili/tv/api/video/VideoApiService$VideoParamsMapV2$Builder;-><init>(J)V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/api/video/VideoApiService$VideoParamsMapV2$Builder;->setAutoPlay(Ljava/lang/String;)Lcom/bilibili/tv/api/video/VideoApiService$VideoParamsMapV2$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/api/video/VideoApiService$VideoParamsMapV2$Builder;->build()Lcom/bilibili/tv/api/video/VideoApiService$VideoParamsMapV2;

    move-result-object v1

    .line 2362
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2363
    const-string v2, "https://app.bilibili.com/x/v2/view?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2364
    const-string v2, "plat=0&aid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->s:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2365
    const-string v2, "&autoplay=0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2366
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3a

    .line 2367
    const-string v2, "&access_key="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2370
    :cond_3a
    const-class v0, Lcom/bilibili/tv/api/video/VideoApiService;

    invoke-static {v0}, Lbl/vo;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/VideoApiService;

    invoke-interface {v0, v1, p2}, Lcom/bilibili/tv/api/video/VideoApiService;->getVideoDetails(Lcom/bilibili/tv/api/video/VideoApiService$VideoParamsMapV2;Ljava/lang/String;)Lbl/vp;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$25;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$25;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)V

    .line 2373
    invoke-virtual {v0, v1}, Lbl/vp;->a(Lbl/vu;)Lbl/vp;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$24;

    invoke-direct {v1, p0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$24;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/BiliVideoDetail;)V

    .line 2388
    invoke-virtual {v0, v1}, Lbl/vp;->a(Lretrofit2/Callback;)V

    .line 2430
    return-void
.end method

.method private fetchSeasonIdFromEpId(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 3880
    const/4 v1, 0x0

    .line 3882
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

    .line 3883
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

    .line 3884
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    .line 3885
    new-instance v2, Lcom/bilibili/tv/ui/video/VideoDetailActivity$36;

    invoke-direct {v2, p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$36;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 3901
    const-wide/16 v2, 0x5

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v3, v4}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 3902
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

    .line 3903
    if-eqz v0, :cond_a4

    const-string v2, "result"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a4

    .line 3904
    const-string v2, "result"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 3905
    const-string v2, "season_id"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a4

    .line 3906
    const-string v2, "season_id"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 3907
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

    .line 3916
    if-eqz v1, :cond_a0

    .line 3917
    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 3920
    :cond_a0
    :goto_a0
    return-object v0

    .line 3902
    :cond_a1
    :try_start_a1
    const-string v2, "null"
    :try_end_a3
    .catch Ljava/lang/Exception; {:try_start_a1 .. :try_end_a3} :catch_ac
    .catchall {:try_start_a1 .. :try_end_a3} :catchall_d2

    goto :goto_56

    .line 3916
    :cond_a4
    if-eqz v1, :cond_a9

    .line 3917
    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 3920
    :cond_a9
    :goto_a9
    const-string v0, ""

    goto :goto_a0

    .line 3911
    :catch_ac
    move-exception v0

    .line 3912
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

    .line 3913
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_cc
    .catchall {:try_start_ad .. :try_end_cc} :catchall_d2

    .line 3916
    if-eqz v1, :cond_a9

    .line 3917
    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    goto :goto_a9

    .line 3916
    :catchall_d2
    move-exception v0

    if-eqz v1, :cond_d8

    .line 3917
    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 3919
    :cond_d8
    throw v0
.end method

.method private findSectionContainer(Landroid/view/View;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 791
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 792
    :goto_5
    if-eqz v1, :cond_2e

    .line 793
    instance-of v0, v1, Landroid/view/View;

    if-eqz v0, :cond_29

    move-object v0, v1

    .line 794
    check-cast v0, Landroid/view/View;

    .line 795
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v3

    const v4, 0x7f0801a5

    if-ne v3, v4, :cond_23

    .line 796
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 797
    instance-of v2, v1, Landroid/view/View;

    if-eqz v2, :cond_22

    move-object v0, v1

    .line 798
    check-cast v0, Landroid/view/View;

    .line 808
    :cond_22
    :goto_22
    return-object v0

    .line 802
    :cond_23
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonsContainer:Landroid/widget/LinearLayout;

    if-ne v0, v3, :cond_29

    move-object v0, v2

    .line 803
    goto :goto_22

    .line 806
    :cond_29
    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_5

    :cond_2e
    move-object v0, v2

    .line 808
    goto :goto_22
.end method

.method private final findTitleByCid(JLcom/bilibili/tv/api/video/BiliVideoDetail;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 2522
    if-nez p3, :cond_5

    move-object v0, v1

    .line 2543
    :goto_4
    return-object v0

    .line 2525
    :cond_5
    iget-object v0, p3, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    if-eqz v0, :cond_3d

    .line 2526
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

    .line 2527
    iget-wide v4, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mCid:J

    cmp-long v3, v4, p1

    if-nez v3, :cond_f

    .line 2528
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

    .line 2532
    :cond_3d
    iget-object v0, p3, Lcom/bilibili/tv/api/video/BiliVideoDetail;->episodes:Lcom/alibaba/fastjson/JSONArray;

    if-eqz v0, :cond_7a

    .line 2533
    const/4 v0, 0x0

    :goto_42
    iget-object v2, p3, Lcom/bilibili/tv/api/video/BiliVideoDetail;->episodes:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_7a

    .line 2534
    iget-object v2, p3, Lcom/bilibili/tv/api/video/BiliVideoDetail;->episodes:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    .line 2535
    const-string v3, "page"

    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_77

    .line 2536
    const-string v3, "page"

    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v3

    .line 2537
    const-string v4, "cid"

    invoke-virtual {v3, v4}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_77

    const-string v4, "cid"

    invoke-virtual {v3, v4}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v4

    cmp-long v3, v4, p1

    if-nez v3, :cond_77

    .line 2538
    const-string v0, "title"

    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 2533
    :cond_77
    add-int/lit8 v0, v0, 0x1

    goto :goto_42

    :cond_7a
    move-object v0, v1

    .line 2543
    goto :goto_4
.end method

.method private findVideoListSection(I)Lcom/bilibili/tv/ui/video/widget/VideoListSection;
    .locals 3

    .prologue
    .line 718
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

    .line 719
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->getSectionId()I

    move-result v2

    if-ne v2, p1, :cond_6

    .line 723
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

    .line 2485
    if-gtz p1, :cond_8

    .line 2486
    const-string v0, "00:00"

    .line 2497
    :goto_7
    return-object v0

    .line 2487
    :cond_8
    const/16 v0, 0x3c

    if-ge p1, v0, :cond_1b

    .line 2488
    const-string v0, "00:%02d"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    .line 2489
    :cond_1b
    const/16 v0, 0xe10

    if-ge p1, v0, :cond_38

    .line 2490
    div-int/lit8 v0, p1, 0x3c

    .line 2491
    rem-int/lit8 v1, p1, 0x3c

    .line 2492
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

    .line 2494
    :cond_38
    div-int/lit16 v0, p1, 0xe10

    .line 2495
    rem-int/lit16 v1, p1, 0xe10

    div-int/lit8 v1, v1, 0x3c

    .line 2496
    rem-int/lit8 v2, p1, 0x3c

    .line 2497
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

    .line 2502
    if-gtz p1, :cond_f

    .line 2503
    if-lt p2, v0, :cond_c

    .line 2504
    const-string v0, "00:00:00"

    .line 2517
    :goto_b
    return-object v0

    .line 2506
    :cond_c
    const-string v0, "00:00"

    goto :goto_b

    .line 2507
    :cond_f
    if-lt p2, v0, :cond_35

    .line 2508
    div-int/lit16 v0, p1, 0xe10

    .line 2509
    rem-int/lit16 v1, p1, 0xe10

    div-int/lit8 v1, v1, 0x3c

    .line 2510
    rem-int/lit8 v2, p1, 0x3c

    .line 2511
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

    .line 2512
    :cond_35
    const/16 v0, 0x3c

    if-ge p1, v0, :cond_48

    .line 2513
    const-string v0, "00:%02d"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    .line 2515
    :cond_48
    div-int/lit8 v0, p1, 0x3c

    .line 2516
    rem-int/lit8 v1, p1, 0x3c

    .line 2517
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

    .line 1349
    if-nez p1, :cond_10

    move v0, v1

    .line 1377
    :goto_4
    return v0

    .line 1369
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1370
    instance-of v2, v0, Landroid/view/View;

    if-eqz v2, :cond_40

    .line 1371
    check-cast v0, Landroid/view/View;

    move-object p1, v0

    .line 1354
    :cond_10
    if-eqz p1, :cond_40

    .line 1355
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 1356
    const v2, 0x7f080149

    if-ne v0, v2, :cond_1d

    .line 1357
    const/4 v0, 0x1

    goto :goto_4

    .line 1358
    :cond_1d
    const v2, 0x7f080171

    if-ne v0, v2, :cond_24

    .line 1359
    const/4 v0, 0x2

    goto :goto_4

    .line 1360
    :cond_24
    const v2, 0x7f080155

    if-ne v0, v2, :cond_2b

    .line 1361
    const/4 v0, 0x3

    goto :goto_4

    .line 1362
    :cond_2b
    const v2, 0x7f08008d

    if-ne v0, v2, :cond_32

    .line 1363
    const/4 v0, 0x4

    goto :goto_4

    .line 1364
    :cond_32
    const v2, 0x7f0801a5

    if-ne v0, v2, :cond_39

    .line 1365
    const/4 v0, 0x5

    goto :goto_4

    .line 1366
    :cond_39
    const v2, 0x7f0801d6

    if-ne v0, v2, :cond_5

    .line 1367
    const/4 v0, 0x6

    goto :goto_4

    :cond_40
    move v0, v1

    .line 1377
    goto :goto_4
.end method

.method private getDataSizeForSection(I)I
    .locals 3

    .prologue
    .line 727
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

    .line 728
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->getSectionId()I

    move-result v2

    if-ne v2, p1, :cond_6

    .line 729
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->getDataSize()I

    move-result v0

    .line 732
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

    .line 2548
    if-nez p1, :cond_4

    .line 2565
    :cond_3
    :goto_3
    return v2

    .line 2551
    :cond_4
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    if-eqz v0, :cond_2f

    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2f

    move v1, v2

    .line 2552
    :goto_12
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2f

    .line 2553
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;

    .line 2554
    iget-wide v4, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mCid:J

    cmp-long v3, v4, p2

    if-nez v3, :cond_2b

    .line 2555
    iget v2, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->duration:I

    goto :goto_3

    .line 2552
    :cond_2b
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_12

    .line 2559
    :cond_2f
    iget v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mDuration:I

    if-lez v0, :cond_36

    .line 2560
    iget v2, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mDuration:I

    goto :goto_3

    .line 2562
    :cond_36
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2563
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
    .line 700
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

    .line 702
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->getSectionId()I

    move-result v2

    if-ne v2, p1, :cond_6

    .line 703
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->getFocusPosition()I

    move-result v0

    .line 714
    :goto_1c
    return v0

    .line 708
    :cond_1d
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonSectionFocusPositions:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 709
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonSectionFocusPositions:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1c

    .line 714
    :cond_3a
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method private getVisibleIndex(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)I
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 1484
    if-eqz p1, :cond_5

    if-nez p2, :cond_7

    :cond_5
    move v0, v1

    .line 1488
    :cond_6
    :goto_6
    return v0

    .line 1485
    :cond_7
    const/4 v0, 0x0

    :goto_8
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_17

    .line 1486
    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eq v2, p2, :cond_6

    .line 1485
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_17
    move v0, v1

    .line 1488
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

    .line 1134
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->getCurrentListType(Landroid/view/View;)I

    move-result v3

    .line 1138
    if-gez v3, :cond_d

    move v0, v1

    .line 1291
    :goto_c
    return v0

    .line 1143
    :cond_d
    const/4 v4, 0x0

    .line 1145
    const/4 v0, -0x1

    .line 1147
    const/16 v5, 0x14

    if-ne p2, v5, :cond_b7

    .line 1149
    if-ne v3, v2, :cond_7b

    .line 1152
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonsContainer:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_48

    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v3

    if-nez v3, :cond_48

    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonSectionViews:Ljava/util/List;

    .line 1153
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_48

    .line 1155
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonSectionViews:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonSectionView;

    .line 1157
    iget-object v4, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonSectionView;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 1158
    iget v3, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonSectionView;->sectionId:I

    invoke-direct {p0, v3}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->getSeasonSectionFocusPosition(I)I

    move-result v3

    .line 1159
    iget v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonSectionView;->sectionId:I

    .line 1265
    :goto_3b
    if-lez v0, :cond_1f5

    .line 1266
    invoke-direct {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->findVideoListSection(I)Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    move-result-object v0

    .line 1267
    if-eqz v0, :cond_1f5

    .line 1269
    invoke-virtual {v0, v3}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->requestFocusOnPosition(I)V

    move v0, v2

    .line 1270
    goto :goto_c

    .line 1160
    :cond_48
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->episodes_video:Landroid/support/v7/widget/RecyclerView;

    if-eqz v3, :cond_59

    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->episodes_video:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_59

    .line 1161
    iget-object v4, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->episodes_video:Landroid/support/v7/widget/RecyclerView;

    .line 1162
    iget v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->episodesVideoFocusPosition:I

    goto :goto_3b

    .line 1163
    :cond_59
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->r:Landroid/support/v7/widget/RecyclerView;

    if-eqz v3, :cond_6a

    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->r:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_6a

    .line 1164
    iget-object v4, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->r:Landroid/support/v7/widget/RecyclerView;

    .line 1165
    iget v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->relateVideoFocusPosition:I

    goto :goto_3b

    .line 1166
    :cond_6a
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->n:Landroid/support/v7/widget/RecyclerView;

    if-eqz v3, :cond_21c

    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->n:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_21c

    .line 1167
    iget-object v4, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->n:Landroid/support/v7/widget/RecyclerView;

    .line 1168
    iget v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->tagViewFocusPosition:I

    goto :goto_3b

    .line 1170
    :cond_7b
    if-ne v3, v6, :cond_9f

    .line 1171
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->r:Landroid/support/v7/widget/RecyclerView;

    if-eqz v3, :cond_8e

    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->r:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_8e

    .line 1172
    iget-object v4, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->r:Landroid/support/v7/widget/RecyclerView;

    .line 1173
    iget v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->relateVideoFocusPosition:I

    goto :goto_3b

    .line 1174
    :cond_8e
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->n:Landroid/support/v7/widget/RecyclerView;

    if-eqz v3, :cond_21c

    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->n:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_21c

    .line 1175
    iget-object v4, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->n:Landroid/support/v7/widget/RecyclerView;

    .line 1176
    iget v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->tagViewFocusPosition:I

    goto :goto_3b

    .line 1178
    :cond_9f
    if-ne v3, v7, :cond_b2

    .line 1179
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->n:Landroid/support/v7/widget/RecyclerView;

    if-eqz v3, :cond_21c

    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->n:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_21c

    .line 1180
    iget-object v4, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->n:Landroid/support/v7/widget/RecyclerView;

    .line 1181
    iget v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->tagViewFocusPosition:I

    goto :goto_3b

    .line 1183
    :cond_b2
    if-ne v3, v8, :cond_21c

    move v0, v2

    .line 1184
    goto/16 :goto_c

    .line 1187
    :cond_b7
    const/16 v5, 0x13

    if-ne p2, v5, :cond_21c

    .line 1190
    if-ne v3, v2, :cond_e5

    .line 1192
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/ProgressPlayButton;

    if-eqz v3, :cond_d1

    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/ProgressPlayButton;

    invoke-virtual {v3}, Lcom/bilibili/tv/widget/ProgressPlayButton;->getVisibility()I

    move-result v3

    if-nez v3, :cond_d1

    .line 1193
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/ProgressPlayButton;

    invoke-virtual {v0}, Lcom/bilibili/tv/widget/ProgressPlayButton;->requestFocus()Z

    move v0, v2

    .line 1194
    goto/16 :goto_c

    .line 1195
    :cond_d1
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->rePlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    if-eqz v3, :cond_21c

    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->rePlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    invoke-virtual {v3}, Lcom/bilibili/tv/widget/DrawLinearLayout;->getVisibility()I

    move-result v3

    if-nez v3, :cond_21c

    .line 1196
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->rePlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    invoke-virtual {v0}, Lcom/bilibili/tv/widget/DrawLinearLayout;->requestFocus()Z

    move v0, v2

    .line 1197
    goto/16 :goto_c

    .line 1199
    :cond_e5
    if-ne v3, v6, :cond_10f

    .line 1201
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/ProgressPlayButton;

    if-eqz v3, :cond_fb

    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/ProgressPlayButton;

    invoke-virtual {v3}, Lcom/bilibili/tv/widget/ProgressPlayButton;->getVisibility()I

    move-result v3

    if-nez v3, :cond_fb

    .line 1202
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/ProgressPlayButton;

    invoke-virtual {v0}, Lcom/bilibili/tv/widget/ProgressPlayButton;->requestFocus()Z

    move v0, v2

    .line 1203
    goto/16 :goto_c

    .line 1204
    :cond_fb
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->rePlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    if-eqz v3, :cond_21c

    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->rePlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    invoke-virtual {v3}, Lcom/bilibili/tv/widget/DrawLinearLayout;->getVisibility()I

    move-result v3

    if-nez v3, :cond_21c

    .line 1205
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->rePlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    invoke-virtual {v0}, Lcom/bilibili/tv/widget/DrawLinearLayout;->requestFocus()Z

    move v0, v2

    .line 1206
    goto/16 :goto_c

    .line 1208
    :cond_10f
    if-ne v3, v7, :cond_18d

    .line 1211
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonsContainer:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_141

    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v3

    if-nez v3, :cond_141

    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonSectionViews:Ljava/util/List;

    .line 1212
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_141

    .line 1214
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonSectionViews:Ljava/util/List;

    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonSectionViews:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonSectionView;

    .line 1217
    iget-object v4, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonSectionView;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 1218
    iget v3, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonSectionView;->sectionId:I

    invoke-direct {p0, v3}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->getSeasonSectionFocusPosition(I)I

    move-result v3

    .line 1219
    iget v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonSectionView;->sectionId:I

    goto/16 :goto_3b

    .line 1220
    :cond_141
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->episodes_video:Landroid/support/v7/widget/RecyclerView;

    if-eqz v3, :cond_153

    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->episodes_video:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_153

    .line 1222
    iget-object v4, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->episodes_video:Landroid/support/v7/widget/RecyclerView;

    .line 1223
    iget v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->episodesVideoFocusPosition:I

    goto/16 :goto_3b

    .line 1224
    :cond_153
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->o:Landroid/support/v7/widget/RecyclerView;

    if-eqz v3, :cond_165

    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->o:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_165

    .line 1226
    iget-object v4, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->o:Landroid/support/v7/widget/RecyclerView;

    .line 1227
    iget v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->epLayoutFocusPosition:I

    goto/16 :goto_3b

    .line 1228
    :cond_165
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/ProgressPlayButton;

    if-eqz v3, :cond_179

    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/ProgressPlayButton;

    invoke-virtual {v3}, Lcom/bilibili/tv/widget/ProgressPlayButton;->getVisibility()I

    move-result v3

    if-nez v3, :cond_179

    .line 1230
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/ProgressPlayButton;

    invoke-virtual {v0}, Lcom/bilibili/tv/widget/ProgressPlayButton;->requestFocus()Z

    move v0, v2

    .line 1231
    goto/16 :goto_c

    .line 1232
    :cond_179
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->rePlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    if-eqz v3, :cond_21c

    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->rePlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    invoke-virtual {v3}, Lcom/bilibili/tv/widget/DrawLinearLayout;->getVisibility()I

    move-result v3

    if-nez v3, :cond_21c

    .line 1234
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->rePlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    invoke-virtual {v0}, Lcom/bilibili/tv/widget/DrawLinearLayout;->requestFocus()Z

    move v0, v2

    .line 1235
    goto/16 :goto_c

    .line 1237
    :cond_18d
    if-ne v3, v8, :cond_21c

    .line 1239
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->r:Landroid/support/v7/widget/RecyclerView;

    if-eqz v3, :cond_1a1

    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->r:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1a1

    .line 1241
    iget-object v4, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->r:Landroid/support/v7/widget/RecyclerView;

    .line 1242
    iget v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->relateVideoFocusPosition:I

    goto/16 :goto_3b

    .line 1243
    :cond_1a1
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonsContainer:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_1d1

    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1d1

    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonSectionViews:Ljava/util/List;

    .line 1244
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1d1

    .line 1245
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonSectionViews:Ljava/util/List;

    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonSectionViews:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonSectionView;

    .line 1247
    iget-object v4, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonSectionView;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 1248
    iget v3, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonSectionView;->sectionId:I

    invoke-direct {p0, v3}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->getSeasonSectionFocusPosition(I)I

    move-result v3

    .line 1249
    iget v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonSectionView;->sectionId:I

    goto/16 :goto_3b

    .line 1250
    :cond_1d1
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->episodes_video:Landroid/support/v7/widget/RecyclerView;

    if-eqz v3, :cond_1e3

    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->episodes_video:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1e3

    .line 1252
    iget-object v4, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->episodes_video:Landroid/support/v7/widget/RecyclerView;

    .line 1253
    iget v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->episodesVideoFocusPosition:I

    goto/16 :goto_3b

    .line 1254
    :cond_1e3
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->o:Landroid/support/v7/widget/RecyclerView;

    if-eqz v3, :cond_21c

    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->o:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_21c

    .line 1256
    iget-object v4, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->o:Landroid/support/v7/widget/RecyclerView;

    .line 1257
    iget v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->epLayoutFocusPosition:I

    goto/16 :goto_3b

    .line 1274
    :cond_1f5
    if-eqz v4, :cond_219

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_219

    .line 1276
    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v0

    .line 1277
    if-lez v0, :cond_219

    .line 1278
    add-int/lit8 v0, v0, -0x1

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1279
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1281
    invoke-virtual {v4, v0}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1282
    if-eqz v0, :cond_219

    .line 1284
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    move v0, v2

    .line 1285
    goto/16 :goto_c

    :cond_219
    move v0, v1

    .line 1291
    goto/16 :goto_c

    :cond_21c
    move v3, v1

    goto/16 :goto_3b
.end method

.method private hideInteractionButtons()V
    .locals 8

    .prologue
    const/16 v7, 0x8

    .line 4665
    const v0, 0x7f080167

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 4666
    const v1, 0x7f08016a

    invoke-virtual {p0, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 4667
    const v2, 0x7f08014d

    invoke-virtual {p0, v2}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 4668
    const v3, 0x7f080268

    invoke-virtual {p0, v3}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 4669
    const v4, 0x7f080241

    invoke-virtual {p0, v4}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 4670
    const v5, 0x7f0801a1

    invoke-virtual {p0, v5}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 4671
    const v6, 0x7f0801dc

    invoke-virtual {p0, v6}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 4672
    if-eqz v0, :cond_38

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 4673
    :cond_38
    if-eqz v1, :cond_3d

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 4674
    :cond_3d
    if-eqz v2, :cond_42

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 4675
    :cond_42
    if-eqz v3, :cond_47

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 4676
    :cond_47
    if-eqz v4, :cond_4c

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 4677
    :cond_4c
    if-eqz v5, :cond_51

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 4678
    :cond_51
    if-eqz v6, :cond_56

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 4679
    :cond_56
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->expandBtn:Lcom/bilibili/tv/widget/DrawLinearLayout;

    if-eqz v1, :cond_60

    .line 4680
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->expandBtn:Lcom/bilibili/tv/widget/DrawLinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setVisibility(I)V

    .line 4683
    :cond_60
    if-eqz v0, :cond_68

    .line 4684
    const v1, 0x7f0801df

    invoke-virtual {v0, v1}, Landroid/view/View;->setNextFocusLeftId(I)V

    .line 4686
    :cond_68
    return-void
.end method

.method private final initDefaultPlayButtons(Lcom/bilibili/tv/api/video/BiliVideoDetail;)V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x1

    .line 1964
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtn:Lcom/bilibili/tv/widget/DrawTextView;

    if-nez v0, :cond_8

    .line 2043
    :cond_7
    :goto_7
    return-void

    .line 1967
    :cond_8
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtn:Lcom/bilibili/tv/widget/DrawTextView;

    const-string v1, "\u5f00\u59cb\u64ad\u653e"

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1968
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyBtnProgress:Landroid/widget/TextView;

    if-eqz v0, :cond_18

    .line 1969
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyBtnProgress:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1971
    :cond_18
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/ProgressPlayButton;

    if-eqz v0, :cond_22

    .line 1972
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/ProgressPlayButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/bilibili/tv/widget/ProgressPlayButton;->setProgress(II)V

    .line 1975
    :cond_22
    invoke-direct {p0, p1, v2}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->applyNoHistoryState(Lcom/bilibili/tv/api/video/BiliVideoDetail;Z)V

    .line 1976
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->rePlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    if-eqz v0, :cond_2e

    .line 1977
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->rePlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setVisibility(I)V

    .line 1980
    :cond_2e
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/ProgressPlayButton;

    if-eqz v0, :cond_3c

    .line 1981
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/ProgressPlayButton;

    new-instance v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$18;

    invoke-direct {v1, p0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$18;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/BiliVideoDetail;)V

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/ProgressPlayButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2002
    :cond_3c
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->rePlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    if-eqz v0, :cond_4a

    .line 2003
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->rePlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    new-instance v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$19;

    invoke-direct {v1, p0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$19;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/BiliVideoDetail;)V

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2016
    :cond_4a
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->noHistoryPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    if-eqz v0, :cond_58

    .line 2017
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->noHistoryPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    new-instance v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$20;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$20;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)V

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2032
    :cond_58
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->noHistoryPlayBtn:Lcom/bilibili/tv/widget/DrawTextView;

    if-eqz v0, :cond_7

    .line 2033
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->noHistoryPlayBtn:Lcom/bilibili/tv/widget/DrawTextView;

    new-instance v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$21;

    invoke-direct {v1, p0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$21;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/BiliVideoDetail;)V

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_7
.end method

.method private isAnyInteractionButtonFocused()Z
    .locals 7

    .prologue
    .line 4689
    const v0, 0x7f080167

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 4690
    const v1, 0x7f08016a

    invoke-virtual {p0, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 4691
    const v2, 0x7f08014d

    invoke-virtual {p0, v2}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 4692
    const v3, 0x7f080268

    invoke-virtual {p0, v3}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 4693
    const v4, 0x7f080241

    invoke-virtual {p0, v4}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 4694
    const v5, 0x7f0801a1

    invoke-virtual {p0, v5}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 4695
    const v6, 0x7f0801dc

    invoke-virtual {p0, v6}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 4696
    if-eqz v0, :cond_39

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_69

    :cond_39
    if-eqz v1, :cond_41

    .line 4697
    invoke-virtual {v1}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_69

    :cond_41
    if-eqz v2, :cond_49

    .line 4698
    invoke-virtual {v2}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_69

    :cond_49
    if-eqz v3, :cond_51

    .line 4699
    invoke-virtual {v3}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_69

    :cond_51
    if-eqz v4, :cond_59

    .line 4700
    invoke-virtual {v4}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_69

    :cond_59
    if-eqz v5, :cond_61

    .line 4701
    invoke-virtual {v5}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_69

    :cond_61
    if-eqz v6, :cond_6b

    .line 4702
    invoke-virtual {v6}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_6b

    :cond_69
    const/4 v0, 0x1

    .line 4696
    :goto_6a
    return v0

    .line 4702
    :cond_6b
    const/4 v0, 0x0

    goto :goto_6a
.end method

.method private final isCidOfCurrentDetail(Lcom/bilibili/tv/api/video/BiliVideoDetail;J)Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 4112
    if-eqz p1, :cond_a

    const-wide/16 v4, 0x0

    cmp-long v0, p2, v4

    if-gtz v0, :cond_c

    :cond_a
    move v0, v2

    .line 4131
    :goto_b
    return v0

    .line 4115
    :cond_c
    iget-wide v4, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mCid:J

    cmp-long v0, v4, p2

    if-nez v0, :cond_14

    move v0, v1

    .line 4116
    goto :goto_b

    .line 4118
    :cond_14
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mHistory:Lcom/bilibili/tv/api/video/BiliVideoDetail$History;

    if-eqz v0, :cond_22

    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mHistory:Lcom/bilibili/tv/api/video/BiliVideoDetail$History;

    iget-wide v4, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$History;->mCid:J

    cmp-long v0, v4, p2

    if-nez v0, :cond_22

    move v0, v1

    .line 4119
    goto :goto_b

    .line 4121
    :cond_22
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->sourcePage:Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;

    if-eqz v0, :cond_30

    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->sourcePage:Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;

    iget-wide v4, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mCid:J

    cmp-long v0, v4, p2

    if-nez v0, :cond_30

    move v0, v1

    .line 4122
    goto :goto_b

    .line 4124
    :cond_30
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    if-eqz v0, :cond_50

    .line 4125
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

    .line 4126
    if-eqz v0, :cond_3a

    iget-wide v4, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mCid:J

    cmp-long v0, v4, p2

    if-nez v0, :cond_3a

    move v0, v1

    .line 4127
    goto :goto_b

    :cond_50
    move v0, v2

    .line 4131
    goto :goto_b
.end method

.method private final isLocalProgressProtected()Z
    .locals 4

    .prologue
    .line 4136
    iget-wide v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->localProgressProtectedUntilMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_14

    .line 4137
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->localProgressProtectedUntilMs:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_14

    const/4 v0, 0x1

    .line 4136
    :goto_13
    return v0

    .line 4137
    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method private isPgcVideo(Lcom/bilibili/tv/api/video/BiliVideoDetail;)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2767
    if-nez p1, :cond_5

    .line 2776
    :cond_4
    :goto_4
    return v0

    .line 2770
    :cond_5
    iget-object v2, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mRedirectUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_f

    move v0, v1

    .line 2771
    goto :goto_4

    .line 2773
    :cond_f
    iget-object v2, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mBangumiInfo:Lcom/bilibili/tv/api/video/BiliVideoDetail$BangumiInfo;

    if-eqz v2, :cond_4

    move v0, v1

    .line 2774
    goto :goto_4
.end method

.method private final k()V
    .locals 12

    .prologue
    const v11, 0x7f06010a

    const/4 v10, 0x1

    const v9, 0x7f0700e7

    const/4 v8, 0x0

    .line 279
    new-instance v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$d;

    invoke-direct {v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$d;-><init>()V

    .line 280
    const v0, 0x7f080041

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->b:Landroid/widget/ImageView;

    .line 281
    const v0, 0x7f0801db

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->gradientMaskView:Landroid/view/View;

    .line 282
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->preloadCoverUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_44

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->b:Landroid/widget/ImageView;

    if-eqz v0, :cond_44

    .line 283
    invoke-static {}, Lbl/nv;->a()Lbl/nv;

    move-result-object v0

    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->preloadCoverUrl:Ljava/lang/String;

    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v2, v3}, Lbl/nv;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 284
    iput-boolean v10, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->isBlurLoaded:Z

    .line 285
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->gradientMaskView:Landroid/view/View;

    if-eqz v0, :cond_44

    .line 286
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->gradientMaskView:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 289
    :cond_44
    const v0, 0x7f080156

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->cc:Landroid/widget/TextView;

    .line 290
    const v0, 0x7f08015e

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->uperContainer:Landroid/widget/LinearLayout;

    .line 291
    const v0, 0x7f0801b0

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->staffContainer:Landroid/widget/LinearLayout;

    .line 292
    const v0, 0x7f080153

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->e:Landroid/widget/TextView;

    .line 293
    const v0, 0x7f080147

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->ff:Landroid/widget/TextView;

    .line 294
    const v0, 0x7f080159

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->g:Landroid/widget/TextView;

    .line 295
    const v0, 0x7f08014b

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->hh:Landroid/widget/TextView;

    .line 296
    const v0, 0x7f080154

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->i:Landroid/widget/TextView;

    .line 297
    const v0, 0x7f080170

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->episodes_title:Landroid/widget/TextView;

    .line 298
    const v0, 0x7f080064

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->m:Landroid/view/View;

    .line 299
    const v0, 0x7f080199

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->pgcInfoContainer:Landroid/widget/LinearLayout;

    .line 300
    const v0, 0x7f08019a

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->pgcRating:Landroid/widget/TextView;

    .line 301
    const v0, 0x7f08019b

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->pgcType:Landroid/widget/TextView;

    .line 302
    const v0, 0x7f08019c

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->pgcArea:Landroid/widget/TextView;

    .line 303
    const v0, 0x7f08019d

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->pgcNewEp:Landroid/widget/TextView;

    .line 304
    const v0, 0x7f0801d5

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->titleSection:Landroid/widget/LinearLayout;

    .line 305
    const v0, 0x7f0801f1

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->interactionVideoTag:Landroid/widget/TextView;

    .line 308
    :try_start_fd
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->interactionVideoTag:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 309
    if-eqz v0, :cond_182

    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->chargingExclusiveTag:Landroid/widget/TextView;

    if-nez v2, :cond_182

    .line 310
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 311
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 313
    const v4, 0x7f06014d

    invoke-static {v4}, Lbl/adl;->b(I)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 314
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 315
    const/4 v3, 0x0

    .line 316
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f06010a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    .line 315
    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 317
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0500a1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 318
    const-string v3, "\u5145\u7535\u4e13\u5c5e"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 319
    const v3, 0x7f060377

    invoke-static {v3}, Lbl/adl;->b(I)I

    move-result v3

    const v4, 0x7f0601bb

    invoke-static {v4}, Lbl/adl;->b(I)I

    move-result v4

    const v5, 0x7f060377

    .line 320
    invoke-static {v5}, Lbl/adl;->b(I)I

    move-result v5

    const v6, 0x7f0601bb

    invoke-static {v6}, Lbl/adl;->b(I)I

    move-result v6

    .line 319
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 321
    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 322
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 323
    const v3, -0x48d67

    invoke-static {v2, v3}, Lcom/bilibili/tv/ui/video/widget/VideoTagStyler;->applySolid(Landroid/widget/TextView;I)V

    .line 324
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 325
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 326
    iput-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->chargingExclusiveTag:Landroid/widget/TextView;
    :try_end_182
    .catch Ljava/lang/Exception; {:try_start_fd .. :try_end_182} :catch_4d5

    .line 331
    :cond_182
    :goto_182
    const v0, 0x7f08014d

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawLinearLayout;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->j:Lcom/bilibili/tv/widget/DrawLinearLayout;

    .line 332
    const v0, 0x7f08014e

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->k:Landroid/widget/ImageView;

    .line 333
    const v0, 0x7f08014f

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->l:Landroid/widget/TextView;

    .line 334
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->j:Lcom/bilibili/tv/widget/DrawLinearLayout;

    .line 335
    if-eqz v0, :cond_1b3

    .line 336
    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 337
    invoke-virtual {v0, v9}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setUpDrawable(I)V

    .line 338
    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 339
    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 343
    :cond_1b3
    const v0, 0x7f080241

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawLinearLayout;

    .line 344
    if-eqz v0, :cond_1cc

    .line 345
    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 346
    invoke-virtual {v0, v9}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setUpDrawable(I)V

    .line 347
    new-instance v2, Lcom/bilibili/tv/ui/video/VideoDetailActivity$1;

    invoke-direct {v2, p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$1;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)V

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 356
    :cond_1cc
    const v0, 0x7f080268

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawLinearLayout;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->subscribeBtn:Lcom/bilibili/tv/widget/DrawLinearLayout;

    .line 357
    const v0, 0x7f080269

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->subscribeImg:Landroid/widget/ImageView;

    .line 358
    const v0, 0x7f08026a

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->subscribeText:Landroid/widget/TextView;

    .line 359
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->subscribeBtn:Lcom/bilibili/tv/widget/DrawLinearLayout;

    if-eqz v0, :cond_205

    .line 360
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->subscribeBtn:Lcom/bilibili/tv/widget/DrawLinearLayout;

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 361
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->subscribeBtn:Lcom/bilibili/tv/widget/DrawLinearLayout;

    invoke-virtual {v0, v9}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setUpDrawable(I)V

    .line 362
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->subscribeBtn:Lcom/bilibili/tv/widget/DrawLinearLayout;

    new-instance v2, Lcom/bilibili/tv/ui/video/VideoDetailActivity$2;

    invoke-direct {v2, p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$2;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)V

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 370
    :cond_205
    const v0, 0x7f0801df

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawLinearLayout;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->expandBtn:Lcom/bilibili/tv/widget/DrawLinearLayout;

    .line 371
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->expandBtn:Lcom/bilibili/tv/widget/DrawLinearLayout;

    if-eqz v0, :cond_223

    .line 372
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->expandBtn:Lcom/bilibili/tv/widget/DrawLinearLayout;

    invoke-virtual {v0, v9}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setUpDrawable(I)V

    .line 373
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->expandBtn:Lcom/bilibili/tv/widget/DrawLinearLayout;

    new-instance v2, Lcom/bilibili/tv/ui/video/VideoDetailActivity$3;

    invoke-direct {v2, p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$3;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)V

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 392
    :cond_223
    const v0, 0x7f080167

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawLinearLayout;

    .line 393
    if-eqz v0, :cond_23a

    .line 394
    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 395
    invoke-virtual {v0, v9}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setUpDrawable(I)V

    .line 396
    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 397
    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 399
    :cond_23a
    const v0, 0x7f08016a

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawLinearLayout;

    .line 400
    if-eqz v0, :cond_251

    .line 401
    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 402
    invoke-virtual {v0, v9}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setUpDrawable(I)V

    .line 403
    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 404
    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 407
    :cond_251
    const v0, 0x7f0801a1

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawLinearLayout;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->watchLaterBtn:Lcom/bilibili/tv/widget/DrawLinearLayout;

    .line 408
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->watchLaterBtn:Lcom/bilibili/tv/widget/DrawLinearLayout;

    if-eqz v0, :cond_26f

    .line 409
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->watchLaterBtn:Lcom/bilibili/tv/widget/DrawLinearLayout;

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 410
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->watchLaterBtn:Lcom/bilibili/tv/widget/DrawLinearLayout;

    invoke-virtual {v0, v9}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setUpDrawable(I)V

    .line 411
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->watchLaterBtn:Lcom/bilibili/tv/widget/DrawLinearLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 414
    :cond_26f
    const v0, 0x7f0801dc

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawLinearLayout;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->infoBtn:Lcom/bilibili/tv/widget/DrawLinearLayout;

    .line 415
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->infoBtn:Lcom/bilibili/tv/widget/DrawLinearLayout;

    if-eqz v0, :cond_28d

    .line 416
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->infoBtn:Lcom/bilibili/tv/widget/DrawLinearLayout;

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 417
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->infoBtn:Lcom/bilibili/tv/widget/DrawLinearLayout;

    invoke-virtual {v0, v9}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setUpDrawable(I)V

    .line 418
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->infoBtn:Lcom/bilibili/tv/widget/DrawLinearLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 421
    :cond_28d
    const v0, 0x7f080152

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawTextView;

    .line 422
    if-eqz v0, :cond_2a1

    .line 423
    invoke-virtual {v0, v9}, Lcom/bilibili/tv/widget/DrawTextView;->setUpDrawable(I)V

    .line 424
    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 425
    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 427
    :cond_2a1
    const v0, 0x7f080151

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->q:Landroid/widget/FrameLayout;

    .line 428
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->q:Landroid/widget/FrameLayout;

    .line 429
    if-eqz v0, :cond_2bf

    .line 430
    sget-object v1, Lcom/bilibili/tv/ui/base/LoadingImageView;->Companion:Lcom/bilibili/tv/ui/base/LoadingImageView$a;

    invoke-virtual {v1, v0}, Lcom/bilibili/tv/ui/base/LoadingImageView$a;->a(Landroid/widget/FrameLayout;)Lcom/bilibili/tv/ui/base/LoadingImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->p:Lcom/bilibili/tv/ui/base/LoadingImageView;

    .line 431
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->p:Lcom/bilibili/tv/ui/base/LoadingImageView;

    .line 432
    if-eqz v0, :cond_2bf

    .line 433
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/base/LoadingImageView;->a()V

    .line 436
    :cond_2bf
    const v0, 0x7f08008d

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->n:Landroid/support/v7/widget/RecyclerView;

    .line 437
    new-instance v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$4;

    invoke-direct {v0, p0, p0, v8, v8}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$4;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Landroid/content/Context;IZ)V

    .line 466
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->n:Landroid/support/v7/widget/RecyclerView;

    .line 467
    if-eqz v1, :cond_2de

    .line 468
    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$h;)V

    .line 470
    new-instance v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$5;

    invoke-direct {v0, p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$5;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)V

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 482
    :cond_2de
    new-instance v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$g;

    invoke-direct {v0, p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$g;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)V

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->x:Lcom/bilibili/tv/ui/video/VideoDetailActivity$g;

    .line 483
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->n:Landroid/support/v7/widget/RecyclerView;

    .line 484
    if-eqz v0, :cond_2ee

    .line 485
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->x:Lcom/bilibili/tv/ui/video/VideoDetailActivity$g;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 487
    :cond_2ee
    const v0, 0x7f080149

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->o:Landroid/support/v7/widget/RecyclerView;

    .line 488
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 489
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->t:Ljava/util/List;

    .line 490
    new-instance v1, Lbl/add;

    new-instance v2, Lcom/bilibili/tv/ui/video/VideoDetailActivity$b;

    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->t:Ljava/util/List;

    invoke-direct {v2, p0, v3}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$b;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Ljava/util/List;)V

    invoke-direct {v1, v2}, Lbl/add;-><init>(Landroid/support/v7/widget/RecyclerView$a;)V

    iput-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->w:Lbl/add;

    .line 491
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->o:Landroid/support/v7/widget/RecyclerView;

    if-eqz v1, :cond_34c

    .line 492
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->o:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Lcom/bilibili/tv/widget/FixGridLayoutManager;

    const/4 v3, 0x6

    invoke-direct {v2, p0, v3, v10, v8}, Lcom/bilibili/tv/widget/FixGridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$h;)V

    .line 493
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->o:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Lcom/bilibili/tv/ui/video/VideoDetailActivity$j;

    invoke-direct {v2, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$j;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView$g;)V

    .line 494
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->o:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->w:Lbl/add;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 496
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->o:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$6;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$6;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 508
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->blockEpisodeAutoFocus:Z

    if-eqz v0, :cond_34c

    .line 509
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->o:Landroid/support/v7/widget/RecyclerView;

    const/high16 v1, 0x60000

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setDescendantFocusability(I)V

    .line 512
    :cond_34c
    const v0, 0x7f080155

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->r:Landroid/support/v7/widget/RecyclerView;

    .line 513
    new-instance v0, Lcom/bilibili/tv/ui/video/widget/BiliVideoDetailBinder;

    invoke-direct {v0}, Lcom/bilibili/tv/ui/video/widget/BiliVideoDetailBinder;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->relateBinder:Lcom/bilibili/tv/ui/video/widget/BiliVideoDetailBinder;

    .line 514
    new-instance v0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;

    invoke-direct {v0, p0}, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->relateCardAdapter:Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;

    .line 515
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->r:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_38e

    .line 516
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->r:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$7;

    invoke-direct {v1, p0, p0, v8, v8}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$7;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$h;)V

    .line 528
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->r:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->relateCardAdapter:Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 529
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->relateCardAdapter:Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;

    new-instance v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$8;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$8;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)V

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->setOnItemClickListener(Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter$OnItemClickListener;)V

    .line 543
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->r:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$9;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$9;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 572
    :cond_38e
    const v0, 0x7f080171

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->episodes_video:Landroid/support/v7/widget/RecyclerView;

    .line 573
    new-instance v0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;

    invoke-direct {v0, p0}, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->episodesCardAdapter:Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;

    .line 574
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->episodesCardAdapter:Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;

    invoke-virtual {v0, v10}, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->setShowIndexBadge(Z)V

    .line 575
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->episodes_video:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_3ce

    .line 576
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->episodes_video:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/bilibili/tv/widget/FixLinearLayoutManager;

    invoke-direct {v1, p0, v8, v8}, Lcom/bilibili/tv/widget/FixLinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$h;)V

    .line 577
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->episodes_video:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->episodesCardAdapter:Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 578
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->episodesCardAdapter:Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;

    new-instance v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$10;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$10;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)V

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->setOnItemClickListener(Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter$OnItemClickListener;)V

    .line 584
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->episodes_video:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$11;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$11;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 598
    :cond_3ce
    const v0, 0x7f0801a3

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonsContainer:Landroid/widget/LinearLayout;

    .line 599
    new-instance v0, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;

    invoke-direct {v0}, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->videoListNavigator:Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;

    .line 600
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->videoListNavigator:Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/ProgressPlayButton;

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->setUpTarget(Landroid/view/View;)V

    .line 601
    const v0, 0x7f080192

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/ProgressPlayButton;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/ProgressPlayButton;

    .line 602
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/ProgressPlayButton;

    if-eqz v0, :cond_405

    .line 603
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/ProgressPlayButton;

    new-instance v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$d;

    invoke-direct {v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$d;-><init>()V

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/ProgressPlayButton;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 604
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/ProgressPlayButton;

    invoke-virtual {v0, v9}, Lcom/bilibili/tv/widget/ProgressPlayButton;->setUpDrawable(I)V

    .line 606
    :cond_405
    const v0, 0x7f080195

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawLinearLayout;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->rePlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    .line 607
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->rePlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    if-eqz v0, :cond_423

    .line 608
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->rePlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    new-instance v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$d;

    invoke-direct {v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$d;-><init>()V

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 609
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->rePlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    invoke-virtual {v0, v9}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setUpDrawable(I)V

    .line 611
    :cond_423
    const v0, 0x7f080191

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawTextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtn:Lcom/bilibili/tv/widget/DrawTextView;

    .line 612
    const v0, 0x7f08021e

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyBtnProgress:Landroid/widget/TextView;

    .line 613
    const v0, 0x7f080194

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawTextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->rePlayBtn:Lcom/bilibili/tv/widget/DrawTextView;

    .line 614
    const v0, 0x7f080196

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawLinearLayout;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->noHistoryPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    .line 615
    const v0, 0x7f080198

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->noHistoryPlayCheckBox:Landroid/widget/CheckBox;

    .line 616
    const v0, 0x7f080197

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawTextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->noHistoryPlayBtn:Lcom/bilibili/tv/widget/DrawTextView;

    .line 617
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->noHistoryPlayCheckBox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_4ac

    .line 621
    invoke-static {p0}, Lbl/abd;->get_default_no_history(Landroid/content/Context;)Z

    move-result v0

    .line 622
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->noHistoryPlayCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 623
    sput-boolean v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->sNoHistoryPlayMode:Z

    .line 626
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->noHistoryPlayCheckBox:Landroid/widget/CheckBox;

    new-instance v2, Lcom/bilibili/tv/ui/video/VideoDetailActivity$12;

    invoke-direct {v2, p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$12;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 633
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

    .line 636
    :cond_4ac
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->noHistoryPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    if-eqz v0, :cond_4bf

    .line 638
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->noHistoryPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    new-instance v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$13;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$13;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)V

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 645
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->noHistoryPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    invoke-virtual {v0, v9}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setUpDrawable(I)V

    .line 647
    :cond_4bf
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->noHistoryPlayBtn:Lcom/bilibili/tv/widget/DrawTextView;

    if-eqz v0, :cond_4c6

    .line 649
    invoke-direct {p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->refreshNoHistoryLabel()V

    .line 651
    :cond_4c6
    const v0, 0x7f0800f6

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->scrollView:Landroid/widget/ScrollView;

    .line 652
    invoke-direct {p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->setupGlobalFocusChangeListener()V

    .line 653
    return-void

    .line 328
    :catch_4d5
    move-exception v0

    goto/16 :goto_182
.end method

.method private final likeVideo(I)V
    .locals 7

    .prologue
    .line 4410
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->B:Z

    if-eqz v0, :cond_5

    .line 4420
    :goto_4
    return-void

    .line 4413
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->B:Z

    .line 4414
    invoke-static {p0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v0

    .line 4415
    const-string v1, "BiliAccount.get(this)"

    invoke-static {v0, v1}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4416
    invoke-static {v0}, Lmybl/CookieUtil;->getFullCookieWithDevice(Lbl/mg;)Ljava/lang/String;

    move-result-object v6

    .line 4417
    invoke-static {v0}, Lmybl/CookieUtil;->getBiliJct(Lbl/mg;)Ljava/lang/String;

    move-result-object v5

    .line 4418
    add-int/lit8 v4, p1, 0x1

    .line 4419
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
    .line 2186
    if-eqz p1, :cond_6

    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mBvid:Ljava/lang/String;

    if-nez v0, :cond_7

    .line 2239
    :cond_6
    :goto_6
    return-void

    .line 2189
    :cond_7
    invoke-static {p0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v0

    .line 2190
    const-string v1, "BiliAccount.get(this)"

    invoke-static {v0, v1}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2191
    invoke-virtual {v0}, Lbl/mg;->a()Z

    move-result v1

    .line 2192
    if-eqz v1, :cond_6

    .line 2195
    invoke-virtual {v0}, Lbl/mg;->getSESSDATA()Ljava/lang/String;

    move-result-object v0

    .line 2196
    iget-object v1, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mBvid:Ljava/lang/String;

    .line 2198
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SESSDATA="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2200
    const-class v0, Lmybl/MyBiliApiService;

    invoke-static {v0}, Lbl/vo;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmybl/MyBiliApiService;

    invoke-interface {v0, v1, v2}, Lmybl/MyBiliApiService;->getArchiveRelation(Ljava/lang/String;Ljava/lang/String;)Lbl/vp;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$22;

    invoke-direct {v1, p0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$22;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/BiliVideoDetail;)V

    invoke-virtual {v0, v1}, Lbl/vp;->a(Lretrofit2/Callback;)V

    goto :goto_6
.end method

.method private final loadHistory(Lcom/bilibili/tv/api/video/BiliVideoDetail;)V
    .locals 11

    .prologue
    const-wide/16 v8, 0x0

    const/4 v1, 0x0

    .line 2242
    invoke-static {p0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v10

    .line 2243
    const-string v0, "BiliAccount.get(this)"

    invoke-static {v10, v0}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2245
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mHistory:Lcom/bilibili/tv/api/video/BiliVideoDetail$History;

    if-eqz v0, :cond_25

    .line 2246
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->updateHistoryDisplay(Lcom/bilibili/tv/api/video/BiliVideoDetail;)V

    .line 2247
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/ProgressPlayButton;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/ProgressPlayButton;

    .line 2248
    invoke-virtual {v0}, Lcom/bilibili/tv/widget/ProgressPlayButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_24

    .line 2249
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/ProgressPlayButton;

    invoke-virtual {v0}, Lcom/bilibili/tv/widget/ProgressPlayButton;->requestFocus()Z

    .line 2358
    :cond_24
    :goto_24
    return-void

    .line 2256
    :cond_25
    iget-object v3, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mBvid:Ljava/lang/String;

    .line 2257
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    if-eqz v0, :cond_92

    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_92

    .line 2258
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;

    iget-wide v4, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mCid:J

    .line 2259
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;

    iget-wide v6, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mEpisodeId:J

    .line 2260
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

    .line 2261
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;

    iget-object v3, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mBvid:Ljava/lang/String;

    .line 2265
    :cond_6d
    :goto_6d
    cmp-long v0, v4, v8

    if-nez v0, :cond_79

    .line 2266
    invoke-virtual {v10}, Lbl/mg;->e()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->fallbackLoadHistory(Lcom/bilibili/tv/api/video/BiliVideoDetail;Ljava/lang/String;)V

    goto :goto_24

    .line 2272
    :cond_79
    iget-wide v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->s:J

    .line 2274
    invoke-virtual {v10}, Lbl/mg;->e()Ljava/lang/String;

    .line 2275
    invoke-virtual {v10}, Lbl/mg;->getSESSDATA()Ljava/lang/String;

    move-result-object v8

    .line 2278
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$23;

    move-object v2, p0

    move-object v9, p1

    invoke-direct/range {v1 .. v10}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$23;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Ljava/lang/String;JJLjava/lang/String;Lcom/bilibili/tv/api/video/BiliVideoDetail;Lbl/mg;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2357
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_24

    :cond_92
    move-wide v6, v8

    move-wide v4, v8

    goto :goto_6d
.end method

.method private loadPgcBySeasonId()V
    .locals 2

    .prologue
    .line 1684
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->mSeasonId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1745
    :goto_8
    return-void

    .line 1687
    :cond_9
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->p:Lcom/bilibili/tv/ui/base/LoadingImageView;

    .line 1688
    if-eqz v0, :cond_10

    .line 1689
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/base/LoadingImageView;->a()V

    .line 1692
    :cond_10
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->mSeasonId:Ljava/lang/String;

    new-instance v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$16;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$16;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)V

    invoke-direct {p0, v0, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->loadPgcSeasonInfo(Ljava/lang/String;Lcom/bilibili/tv/ui/video/VideoDetailActivity$PgcLoadCallback;)V

    goto :goto_8
.end method

.method private loadPgcInfo(Lcom/bilibili/tv/api/video/BiliVideoDetail;)V
    .locals 2

    .prologue
    .line 2828
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->extractSeasonId(Lcom/bilibili/tv/api/video/BiliVideoDetail;)Ljava/lang/String;

    move-result-object v0

    .line 2829
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 2914
    :goto_a
    return-void

    .line 2833
    :cond_b
    new-instance v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$27;

    invoke-direct {v1, p0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$27;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/BiliVideoDetail;)V

    invoke-direct {p0, v0, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->loadPgcSeasonInfo(Ljava/lang/String;Lcom/bilibili/tv/ui/video/VideoDetailActivity$PgcLoadCallback;)V

    goto :goto_a
.end method

.method private loadPgcRelatedVideos(I)V
    .locals 2

    .prologue
    .line 2433
    if-gtz p1, :cond_3

    .line 2482
    :goto_2
    return-void

    .line 2437
    :cond_3
    const-class v0, Lmybl/MyBiliApiService;

    invoke-static {v0}, Lbl/vo;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmybl/MyBiliApiService;

    invoke-interface {v0, p1}, Lmybl/MyBiliApiService;->getPgcRelatedRecommend(I)Lbl/vp;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$26;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$26;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)V

    .line 2438
    invoke-virtual {v0, v1}, Lbl/vp;->a(Lretrofit2/Callback;)V

    goto :goto_2
.end method

.method private loadPgcSeasonInfo(Ljava/lang/String;Lcom/bilibili/tv/ui/video/VideoDetailActivity$PgcLoadCallback;)V
    .locals 3

    .prologue
    .line 1753
    invoke-static {p0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v0

    invoke-virtual {v0}, Lbl/mg;->e()Ljava/lang/String;

    move-result-object v0

    .line 1755
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/bilibili/tv/ui/video/VideoDetailActivity$17;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$17;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Ljava/lang/String;Ljava/lang/String;Lcom/bilibili/tv/ui/video/VideoDetailActivity$PgcLoadCallback;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1805
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 1806
    return-void
.end method

.method private final loadUgcByAvid()V
    .locals 4

    .prologue
    .line 1529
    iget-wide v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->s:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_c

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->A:Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;

    if-nez v0, :cond_d

    .line 1537
    :cond_c
    :goto_c
    return-void

    .line 1532
    :cond_d
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->p:Lcom/bilibili/tv/ui/base/LoadingImageView;

    .line 1533
    if-eqz v0, :cond_14

    .line 1534
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/base/LoadingImageView;->a()V

    .line 1536
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

    goto :goto_c
.end method

.method private final m()V
    .locals 6

    .prologue
    const v5, 0x7f0c0170

    const/4 v4, 0x0

    .line 923
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 924
    const-string v1, "intent"

    invoke-static {v0, v1}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 925
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 926
    if-nez v0, :cond_1a

    .line 927
    invoke-static {p0, v5}, Lbl/lr;->a(Landroid/content/Context;I)V

    .line 928
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->finish()V

    .line 945
    :goto_19
    return-void

    .line 931
    :cond_1a
    const-string v1, "bundle_season_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->mSeasonId:Ljava/lang/String;

    .line 932
    const-string v1, "bundle_ac_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->s:J

    .line 933
    const-string v1, "preload_cover"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->preloadCoverUrl:Ljava/lang/String;

    .line 934
    const-string v1, "download_auto_play"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->autoPlayAfterLoad:Z

    .line 935
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->mSeasonId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4a

    .line 936
    sget-object v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$EntryType;->PGC_BY_SEASON_ID:Lcom/bilibili/tv/ui/video/VideoDetailActivity$EntryType;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->mEntryType:Lcom/bilibili/tv/ui/video/VideoDetailActivity$EntryType;

    .line 937
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->mIsPgcMode:Z

    goto :goto_19

    .line 938
    :cond_4a
    iget-wide v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->s:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_59

    .line 939
    sget-object v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$EntryType;->UGC_BY_AVID:Lcom/bilibili/tv/ui/video/VideoDetailActivity$EntryType;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->mEntryType:Lcom/bilibili/tv/ui/video/VideoDetailActivity$EntryType;

    .line 940
    iput-boolean v4, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->mIsPgcMode:Z

    goto :goto_19

    .line 942
    :cond_59
    invoke-static {p0, v5}, Lbl/lr;->a(Landroid/content/Context;I)V

    .line 943
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->finish()V

    goto :goto_19
.end method

.method private final n()V
    .locals 2

    .prologue
    .line 1517
    sget-object v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$41;->$SwitchMap$com$bilibili$tv$ui$video$VideoDetailActivity$EntryType:[I

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->mEntryType:Lcom/bilibili/tv/ui/video/VideoDetailActivity$EntryType;

    invoke-virtual {v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$EntryType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_16

    .line 1523
    invoke-direct {p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->loadUgcByAvid()V

    .line 1526
    :goto_10
    return-void

    .line 1519
    :pswitch_11
    invoke-direct {p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->loadPgcBySeasonId()V

    goto :goto_10

    .line 1517
    nop

    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_11
    .end packed-switch
.end method

.method private normalizeFinishedProgress(JII)I
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 2573
    if-ne p3, v0, :cond_5

    move p3, v0

    .line 2579
    :cond_4
    :goto_4
    return p3

    .line 2576
    :cond_5
    if-lez p4, :cond_4

    add-int/lit8 v1, p4, -0x2

    if-lt p3, v1, :cond_4

    move p3, v0

    .line 2577
    goto :goto_4
.end method

.method private onDownloadButtonClick()V
    .locals 25

    .prologue
    .line 4240
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->u:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    if-nez v2, :cond_13

    .line 4241
    const-string v2, "\u89c6\u9891\u4fe1\u606f\u52a0\u8f7d\u4e2d..."

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 4318
    :goto_12
    return-void

    .line 4246
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->u:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    iget-wide v4, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mAvid:J

    .line 4247
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->u:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    iget-object v6, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mBvid:Ljava/lang/String;

    .line 4248
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->u:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    iget-object v7, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mTitle:Ljava/lang/String;

    .line 4249
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->u:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    iget-object v8, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mCover:Ljava/lang/String;

    .line 4250
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->u:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    iget-object v2, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mOwner:Lcom/bilibili/tv/api/video/BiliUser;

    if-eqz v2, :cond_7e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->u:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    iget-object v2, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mOwner:Lcom/bilibili/tv/api/video/BiliUser;

    iget-object v9, v2, Lcom/bilibili/tv/api/video/BiliUser;->name:Ljava/lang/String;

    .line 4253
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

    .line 4255
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

    .line 4256
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->u:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    iget-object v10, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    move-object/from16 v3, p0

    invoke-static/range {v3 .. v10}, Lcom/bilibili/tv/ui/download/EpisodeSelectActivity;->start(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_12

    .line 4250
    :cond_7e
    const-string v9, "\u672a\u77e5"

    goto :goto_3b

    .line 4269
    :cond_81
    const-wide/16 v14, 0x0

    .line 4270
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

    .line 4271
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->u:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    iget-object v2, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;

    iget-wide v14, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mCid:J

    .line 4273
    :cond_a6
    const-wide/16 v2, 0x0

    cmp-long v2, v14, v2

    if-nez v2, :cond_bc

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->u:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    iget-object v2, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPage:Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;

    if-eqz v2, :cond_bc

    .line 4274
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->u:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    iget-object v2, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPage:Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;

    iget-wide v14, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mCid:J

    .line 4276
    :cond_bc
    const-wide/16 v2, 0x0

    cmp-long v2, v14, v2

    if-nez v2, :cond_d2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->u:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    iget-object v2, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mHistory:Lcom/bilibili/tv/api/video/BiliVideoDetail$History;

    if-eqz v2, :cond_d2

    .line 4277
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->u:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    iget-object v2, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mHistory:Lcom/bilibili/tv/api/video/BiliVideoDetail$History;

    iget-wide v14, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$History;->mCid:J

    .line 4279
    :cond_d2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->u:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    iget v2, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mDuration:I

    int-to-long v0, v2

    move-wide/from16 v20, v0

    .line 4282
    const/16 v17, 0x0

    .line 4283
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

    .line 4284
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->u:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    iget-object v2, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;

    .line 4285
    if-eqz v2, :cond_10d

    iget-object v3, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mTitle:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_10d

    .line 4286
    iget-object v0, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mTitle:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 4291
    :cond_10d
    move-object/from16 v0, p0

    invoke-static {v0, v6, v14, v15}, Lcom/bilibili/tv/ui/download/VideoDetailDownloadHelper;->isTaskExists(Landroid/content/Context;Ljava/lang/String;J)Z

    move-result v2

    if-eqz v2, :cond_13a

    .line 4292
    move-object/from16 v0, p0

    invoke-static {v0, v6, v14, v15}, Lcom/bilibili/tv/ui/download/VideoDetailDownloadHelper;->getTaskStatus(Landroid/content/Context;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    .line 4293
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

    .line 4298
    :cond_13a
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 4299
    const-string v2, "1080P \u9ad8\u6e05"

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4300
    const-string v2, "720P \u9ad8\u6e05"

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4301
    const-string v2, "480P \u6e05\u6670"

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4304
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

    .line 4021
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->u:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    if-nez v0, :cond_b

    .line 4092
    :goto_a
    return-void

    .line 4024
    :cond_b
    if-eqz p2, :cond_f2

    const-string v0, "last_cid"

    invoke-virtual {p2, v0, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    move-wide v6, v4

    .line 4025
    :goto_14
    if-eqz p2, :cond_f5

    const-string v0, "last_progress"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    move v4, v0

    .line 4030
    :goto_1d
    cmp-long v0, v6, v8

    if-lez v0, :cond_24

    .line 4031
    invoke-direct {p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->syncNoHistoryOff()V

    .line 4033
    :cond_24
    cmp-long v0, v6, v8

    if-lez v0, :cond_f8

    if-lez v4, :cond_f8

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->u:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    invoke-direct {p0, v0, v6, v7}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->isCidOfCurrentDetail(Lcom/bilibili/tv/api/video/BiliVideoDetail;J)Z

    move-result v0

    if-eqz v0, :cond_f8

    move v0, v1

    .line 4034
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

    .line 4037
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

    .line 4034
    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4040
    if-eqz v0, :cond_ff

    .line 4043
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->u:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    iget-object v0, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mHistory:Lcom/bilibili/tv/api/video/BiliVideoDetail$History;

    if-nez v0, :cond_9e

    .line 4044
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->u:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    new-instance v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$History;

    invoke-direct {v2}, Lcom/bilibili/tv/api/video/BiliVideoDetail$History;-><init>()V

    iput-object v2, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mHistory:Lcom/bilibili/tv/api/video/BiliVideoDetail$History;

    .line 4046
    :cond_9e
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->u:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    iget-object v0, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mHistory:Lcom/bilibili/tv/api/video/BiliVideoDetail$History;

    iput-wide v6, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$History;->mCid:J

    .line 4047
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->u:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    iget-object v0, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mHistory:Lcom/bilibili/tv/api/video/BiliVideoDetail$History;

    div-int/lit16 v2, v4, 0x3e8

    iput v2, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$History;->mProgress:I

    .line 4049
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long/2addr v2, v10

    iput-wide v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->localProgressProtectedUntilMs:J

    .line 4050
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

    .line 4053
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->u:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    invoke-direct {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->updateHistoryDisplay(Lcom/bilibili/tv/api/video/BiliVideoDetail;)V

    .line 4054
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->u:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    new-instance v2, Lcom/bilibili/tv/ui/video/VideoDetailActivity$37;

    invoke-direct {v2, p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$37;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)V

    invoke-direct {p0, v0, v2, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->requestHistoryForUgc(Lcom/bilibili/tv/api/video/BiliVideoDetail;Ljava/lang/Runnable;Z)V

    goto/16 :goto_a

    :cond_f2
    move-wide v6, v8

    .line 4024
    goto/16 :goto_14

    :cond_f5
    move v4, v2

    .line 4025
    goto/16 :goto_1d

    :cond_f8
    move v0, v2

    .line 4033
    goto/16 :goto_33

    .line 4037
    :cond_fb
    const/16 v3, -0x3e7

    goto/16 :goto_76

    .line 4066
    :cond_ff
    sget-boolean v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->sNoHistoryPlayMode:Z

    if-nez v0, :cond_136

    .line 4071
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->noHistoryPlayCheckBox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_11e

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->noHistoryPlayCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_11e

    .line 4072
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->noHistoryPlayCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 4073
    invoke-direct {p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->refreshNoHistoryLabel()V

    .line 4074
    const-string v0, "HistoryDebug"

    const-string v2, "[ON_RESULT] no return value but non-incognito, uncheck checkbox"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4077
    :cond_11e
    const-string v0, "HistoryDebug"

    const-string v2, "[ON_RESULT] no player progress, fallback refresh (normal mode)"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4078
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->u:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    invoke-direct {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->updateHistoryDisplay(Lcom/bilibili/tv/api/video/BiliVideoDetail;)V

    .line 4079
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->u:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    new-instance v2, Lcom/bilibili/tv/ui/video/VideoDetailActivity$38;

    invoke-direct {v2, p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$38;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)V

    invoke-direct {p0, v0, v2, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->requestHistoryForUgc(Lcom/bilibili/tv/api/video/BiliVideoDetail;Ljava/lang/Runnable;Z)V

    goto/16 :goto_a

    .line 4091
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

    .line 2086
    invoke-static {p0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v0

    .line 2087
    invoke-virtual {v0}, Lbl/mg;->a()Z

    move-result v1

    if-nez v1, :cond_12

    .line 2088
    const-string v0, "\u8d26\u53f7\u672a\u767b\u5f55\uff0c\u65e0\u6cd5\u8ba2\u9605"

    invoke-static {p0, v0}, Lbl/lr;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 2118
    :goto_11
    return-void

    .line 2092
    :cond_12
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->mPgcInfo:Lcom/bilibili/tv/api/video/PgcInfo;

    if-eqz v1, :cond_5c

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->mPgcInfo:Lcom/bilibili/tv/api/video/PgcInfo;

    iget v1, v1, Lcom/bilibili/tv/api/video/PgcInfo;->seasonId:I

    if-lez v1, :cond_5c

    .line 2093
    invoke-static {v0}, Lmybl/CookieUtil;->getFullCookieWithDevice(Lbl/mg;)Ljava/lang/String;

    move-result-object v1

    .line 2094
    invoke-static {v0}, Lmybl/CookieUtil;->getBiliJct(Lbl/mg;)Ljava/lang/String;

    move-result-object v2

    .line 2095
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->isPgcFollowed:Z

    if-eqz v0, :cond_42

    .line 2096
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

    .line 2097
    invoke-virtual {v0, v1}, Lbl/vp;->a(Lretrofit2/Callback;)V

    goto :goto_11

    .line 2099
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

    .line 2100
    invoke-virtual {v0, v1}, Lbl/vp;->a(Lretrofit2/Callback;)V

    goto :goto_11

    .line 2105
    :cond_5c
    iget-wide v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->currentSeasonId:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gtz v1, :cond_6e

    .line 2106
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u5f53\u524d\u89c6\u9891\u4e0d\u5c5e\u4e8e\u4efb\u4f55\u5408\u96c6"

    invoke-static {v0, v1}, Lbl/lr;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_11

    .line 2109
    :cond_6e
    invoke-static {v0}, Lmybl/CookieUtil;->getFullCookieWithDevice(Lbl/mg;)Ljava/lang/String;

    move-result-object v1

    .line 2110
    invoke-static {v0}, Lmybl/CookieUtil;->getBiliJct(Lbl/mg;)Ljava/lang/String;

    move-result-object v2

    .line 2111
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->isSeasonFav:Z

    if-eqz v0, :cond_91

    .line 2112
    const-class v0, Lmybl/MyBiliApiService;

    invoke-static {v0}, Lbl/vo;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmybl/MyBiliApiService;

    iget-wide v4, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->currentSeasonId:J

    invoke-interface {v0, v4, v5, v2, v1}, Lmybl/MyBiliApiService;->unfavSeason(JLjava/lang/String;Ljava/lang/String;)Lbl/vp;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonFavResponse;

    invoke-direct {v1, p0, v6}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonFavResponse;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Z)V

    .line 2113
    invoke-virtual {v0, v1}, Lbl/vp;->a(Lretrofit2/Callback;)V

    goto :goto_11

    .line 2115
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

    .line 2116
    invoke-virtual {v0, v1}, Lbl/vp;->a(Lretrofit2/Callback;)V

    goto/16 :goto_11
.end method

.method private final p(Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 4321
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->B:Z

    if-eqz v0, :cond_5

    .line 4330
    :goto_4
    return-void

    .line 4324
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->B:Z

    .line 4325
    const-class v0, Lcom/bilibili/tv/api/favorite/BiliFavoriteVideoApiService;

    .line 4326
    invoke-static {v0}, Lbl/vo;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bilibili/tv/api/favorite/BiliFavoriteVideoApiService;

    .line 4327
    invoke-static {p0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v0

    .line 4328
    const-string v2, "BiliAccount.get(this)"

    invoke-static {v0, v2}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4329
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
    .line 2715
    if-nez p1, :cond_3

    .line 2741
    :cond_2
    :goto_2
    return-void

    .line 2720
    :cond_3
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->noHistoryPlayCheckBox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_f

    .line 2721
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->noHistoryPlayCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    sput-boolean v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->sNoHistoryPlayMode:Z

    .line 2723
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

    .line 2725
    const/4 v2, 0x0

    .line 2726
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_61

    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    if-eqz v0, :cond_61

    .line 2727
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

    .line 2728
    iget-wide v4, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mCid:J

    cmp-long v3, v4, p2

    if-nez v3, :cond_4e

    move-object v2, v0

    .line 2734
    :cond_61
    if-nez v2, :cond_79

    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    if-eqz v0, :cond_79

    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_79

    .line 2735
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;

    move-object v2, v0

    .line 2737
    :cond_79
    if-eqz v2, :cond_2

    .line 2738
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mCover:Ljava/lang/String;

    invoke-static {p0, v0}, Lbl/abd;->prefetchCoverToMemoryCache(Landroid/content/Context;Ljava/lang/String;)V

    .line 2739
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
    .line 4366
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->B:Z

    if-eqz v0, :cond_5

    .line 4374
    :goto_4
    return-void

    .line 4369
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->B:Z

    .line 4370
    invoke-static {p0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v1

    .line 4371
    const-string v0, "BiliAccount.get(this)"

    invoke-static {v1, v0}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4372
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

    .line 4373
    invoke-virtual {v0, v1}, Lbl/vp;->a(Lretrofit2/Callback;)V

    goto :goto_4
.end method

.method private final refreshNoHistoryLabel()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2050
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->noHistoryPlayBtn:Lcom/bilibili/tv/widget/DrawTextView;

    if-nez v0, :cond_7

    .line 2063
    :goto_6
    return-void

    .line 2054
    :cond_7
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->noHistoryPlayCheckBox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->noHistoryPlayCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_33

    move v0, v1

    .line 2057
    :goto_14
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->noHistoryPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    if-eqz v3, :cond_21

    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->noHistoryPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    invoke-virtual {v3}, Lcom/bilibili/tv/widget/DrawLinearLayout;->isFocused()Z

    move-result v3

    if-eqz v3, :cond_21

    move v0, v1

    .line 2061
    :cond_21
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->noHistoryPlayBtn:Lcom/bilibili/tv/widget/DrawTextView;

    const-string v3, "\u65e0\u75d5"

    invoke-virtual {v1, v3}, Lcom/bilibili/tv/widget/DrawTextView;->setText(Ljava/lang/CharSequence;)V

    .line 2062
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
    .line 1296
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonsContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->videoListNavigator:Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;

    if-nez v0, :cond_9

    .line 1337
    :cond_8
    :goto_8
    return-void

    .line 1301
    :cond_9
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    .line 1305
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1306
    const/4 v0, 0x0

    move v1, v0

    :goto_16
    if-ge v1, v2, :cond_50

    .line 1307
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1308
    instance-of v4, v0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    if-eqz v4, :cond_4c

    .line 1309
    check-cast v0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    .line 1311
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->getSectionId()I

    move-result v4

    .line 1314
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->videoListNavigator:Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;

    invoke-virtual {v0, v4, v1}, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->updateVisualOrder(II)V

    .line 1316
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

    .line 1317
    iget v6, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonSectionView;->sectionId:I

    if-ne v6, v4, :cond_33

    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_33

    .line 1318
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1306
    :cond_4c
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_16

    .line 1325
    :cond_50
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonSectionViews:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_8

    .line 1327
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonSectionViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1328
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonSectionViews:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_8
.end method

.method private requestHistoryForUgc(Lcom/bilibili/tv/api/video/BiliVideoDetail;Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 1540
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->requestHistoryForUgc(Lcom/bilibili/tv/api/video/BiliVideoDetail;Ljava/lang/Runnable;Z)V

    .line 1541
    return-void
.end method

.method private requestHistoryForUgc(Lcom/bilibili/tv/api/video/BiliVideoDetail;Ljava/lang/Runnable;Z)V
    .locals 12

    .prologue
    const-wide/16 v8, 0x0

    const/4 v1, 0x0

    .line 1548
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mHistory:Lcom/bilibili/tv/api/video/BiliVideoDetail$History;

    if-eqz v0, :cond_f

    if-nez p3, :cond_f

    .line 1549
    if-eqz p2, :cond_e

    .line 1550
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 1681
    :cond_e
    :goto_e
    return-void

    .line 1555
    :cond_f
    invoke-static {p0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v10

    .line 1556
    const-string v0, "BiliAccount.get(this)"

    invoke-static {v10, v0}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1560
    iget-object v3, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mBvid:Ljava/lang/String;

    .line 1561
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    if-eqz v0, :cond_7f

    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7f

    .line 1562
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;

    iget-wide v4, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mCid:J

    .line 1563
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;

    iget-wide v6, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mEpisodeId:J

    .line 1564
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;

    iget-object v0, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mBvid:Ljava/lang/String;

    if-eqz v0, :cond_60

    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;

    iget-object v0, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mBvid:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_60

    .line 1565
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;

    iget-object v3, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mBvid:Ljava/lang/String;

    .line 1569
    :cond_60
    :goto_60
    cmp-long v0, v4, v8

    if-nez v0, :cond_6a

    .line 1570
    if-eqz p2, :cond_e

    .line 1571
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    goto :goto_e

    .line 1578
    :cond_6a
    invoke-virtual {v10}, Lbl/mg;->getSESSDATA()Ljava/lang/String;

    move-result-object v8

    .line 1581
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$15;

    move-object v2, p0

    move-object v9, p1

    move-object v11, p2

    invoke-direct/range {v1 .. v11}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$15;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Ljava/lang/String;JJLjava/lang/String;Lcom/bilibili/tv/api/video/BiliVideoDetail;Lbl/mg;Ljava/lang/Runnable;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1680
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_e

    :cond_7f
    move-wide v6, v8

    move-wide v4, v8

    goto :goto_60
.end method

.method private resetStaffNameVisibility()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x1

    .line 685
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->staffContainer:Landroid/widget/LinearLayout;

    if-nez v0, :cond_7

    .line 696
    :cond_6
    return-void

    .line 688
    :cond_7
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->staffContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    move v3, v2

    .line 689
    :goto_e
    if-ge v3, v4, :cond_6

    .line 690
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->staffContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawLinearLayout;

    .line 691
    invoke-virtual {v0}, Lcom/bilibili/tv/widget/DrawLinearLayout;->getChildCount()I

    move-result v1

    if-le v1, v5, :cond_32

    invoke-virtual {v0, v5}, Lcom/bilibili/tv/widget/DrawLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/TextView;

    if-eqz v1, :cond_32

    .line 692
    invoke-virtual {v0, v5}, Lcom/bilibili/tv/widget/DrawLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 693
    if-nez v3, :cond_36

    move v1, v2

    :goto_2f
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 689
    :cond_32
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_e

    .line 693
    :cond_36
    const/16 v1, 0x8

    goto :goto_2f
.end method

.method private restoreFocusPosition(Landroid/support/v7/widget/RecyclerView;I)Landroid/view/View;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1493
    if-nez p1, :cond_4

    .line 1513
    :cond_3
    :goto_3
    return-object v0

    .line 1497
    :cond_4
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v1

    .line 1499
    if-eqz v1, :cond_3

    .line 1504
    add-int/lit8 v0, v1, -0x1

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1507
    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1508
    if-nez v0, :cond_3

    .line 1513
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

    .line 1382
    if-nez p1, :cond_7

    .line 1481
    :cond_6
    :goto_6
    return-void

    .line 1386
    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f080126

    if-eq v0, v1, :cond_27

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_42

    .line 1387
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f08008d

    if-ne v0, v1, :cond_42

    .line 1388
    :cond_27
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->n:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_6

    move v0, v3

    .line 1389
    :goto_2c
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->n:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_6

    .line 1390
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->n:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-ne v1, p1, :cond_3f

    .line 1391
    iput v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->tagViewFocusPosition:I

    goto :goto_6

    .line 1389
    :cond_3f
    add-int/lit8 v0, v0, 0x1

    goto :goto_2c

    .line 1398
    :cond_42
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_71

    .line 1399
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getId()I

    move-result v0

    const v1, 0x7f080155

    if-ne v0, v1, :cond_71

    .line 1400
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    .line 1401
    :goto_5f
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v1

    if-ge v3, v1, :cond_6

    .line 1402
    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-ne v1, p1, :cond_6e

    .line 1403
    iput v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->relateVideoFocusPosition:I

    goto :goto_6

    .line 1401
    :cond_6e
    add-int/lit8 v3, v3, 0x1

    goto :goto_5f

    .line 1409
    :cond_71
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_9e

    .line 1410
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getId()I

    move-result v0

    if-ne v0, v2, :cond_9e

    .line 1411
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    .line 1412
    :goto_8b
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v1

    if-ge v3, v1, :cond_6

    .line 1413
    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-ne v1, p1, :cond_9b

    .line 1414
    iput v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->epLayoutFocusPosition:I

    goto/16 :goto_6

    .line 1412
    :cond_9b
    add-int/lit8 v3, v3, 0x1

    goto :goto_8b

    .line 1418
    :cond_9e
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    if-ne v0, v2, :cond_bf

    .line 1420
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->o:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_6

    .line 1421
    :goto_a8
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->o:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v0

    if-ge v3, v0, :cond_6

    .line 1422
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->o:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-ne v0, p1, :cond_bc

    .line 1423
    iput v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->epLayoutFocusPosition:I

    goto/16 :goto_6

    .line 1421
    :cond_bc
    add-int/lit8 v3, v3, 0x1

    goto :goto_a8

    .line 1430
    :cond_bf
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_ef

    .line 1431
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getId()I

    move-result v0

    const v1, 0x7f080171

    if-ne v0, v1, :cond_ef

    .line 1432
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    .line 1433
    :goto_dc
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v1

    if-ge v3, v1, :cond_6

    .line 1434
    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-ne v1, p1, :cond_ec

    .line 1435
    iput v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->episodesVideoFocusPosition:I

    goto/16 :goto_6

    .line 1433
    :cond_ec
    add-int/lit8 v3, v3, 0x1

    goto :goto_dc

    .line 1441
    :cond_ef
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_6

    .line 1442
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    .line 1443
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getId()I

    move-result v1

    .line 1444
    const v2, 0x7f0801a5

    if-ne v1, v2, :cond_6

    .line 1445
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

    .line 1446
    iget-object v4, v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonSectionView;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    if-ne v4, v0, :cond_10c

    .line 1447
    const/4 v4, 0x0

    .line 1448
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

    .line 1449
    invoke-virtual {v2}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->getSectionId()I

    move-result v6

    iget v7, v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonSectionView;->sectionId:I

    if-ne v6, v7, :cond_123

    move-object v4, v2

    .line 1455
    :cond_138
    const/4 v2, -0x1

    .line 1456
    if-eqz v4, :cond_13f

    .line 1457
    invoke-virtual {v4, p1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->getDataPositionForView(Landroid/view/View;)I

    move-result v2

    .line 1460
    :cond_13f
    if-gez v2, :cond_169

    .line 1461
    :goto_141
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v5

    if-ge v3, v5, :cond_169

    .line 1462
    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-ne v5, p1, :cond_166

    .line 1469
    :goto_14d
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonSectionFocusPositions:Ljava/util/Map;

    iget v1, v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonSectionView;->sectionId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1470
    if-eqz v4, :cond_6

    .line 1471
    invoke-virtual {v4, v3}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setFocusPosition(I)V

    .line 1473
    invoke-direct {p0, v4, v3}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->updateNavTagSelectionForSection(Lcom/bilibili/tv/ui/video/widget/VideoListSection;I)V

    goto/16 :goto_6

    .line 1461
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
    .line 3640
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3653
    :goto_6
    return-void

    .line 3644
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

    .line 3646
    :try_start_1f
    new-instance v0, Landroid/provider/SearchRecentSuggestions;

    const-string v1, "uii.ang.bilitv.provider.TvSearchSuggestionProvider"

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Landroid/provider/SearchRecentSuggestions;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    const/4 v1, 0x0

    .line 3647
    invoke-virtual {v0, p1, v1}, Landroid/provider/SearchRecentSuggestions;->saveRecentQuery(Ljava/lang/String;Ljava/lang/String;)V

    .line 3648
    const/16 v0, 0x32

    invoke-direct {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->truncateSearchHistory(I)V

    .line 3649
    const-string v0, "VideoDetailActivity"

    const-string v1, "\u4fdd\u5b58\u641c\u7d22\u5386\u53f2\u6210\u529f"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_37} :catch_38

    goto :goto_6

    .line 3650
    :catch_38
    move-exception v0

    .line 3651
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

.method private scrollToViewIfNeeded(Landroid/view/View;)V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 736
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->scrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_9

    if-nez p1, :cond_a

    .line 788
    :cond_9
    :goto_9
    return-void

    .line 739
    :cond_a
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 740
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

    .line 749
    :goto_37
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->staffContainer:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_c9

    move v3, v1

    .line 750
    :goto_3c
    iget-object v4, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->staffContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_c9

    .line 751
    iget-object v4, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->staffContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-ne v4, p1, :cond_59

    move v3, v2

    .line 757
    :goto_4d
    if-nez v0, :cond_51

    if-eqz v3, :cond_5c

    .line 758
    :cond_51
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->scrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v1, v1}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    goto :goto_9

    :cond_57
    move v0, v1

    .line 740
    goto :goto_37

    .line 750
    :cond_59
    add-int/lit8 v3, v3, 0x1

    goto :goto_3c

    .line 761
    :cond_5c
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 762
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->scrollView:Landroid/widget/ScrollView;

    invoke-virtual {v3, v0}, Landroid/widget/ScrollView;->getHitRect(Landroid/graphics/Rect;)V

    .line 763
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 764
    invoke-virtual {p1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 765
    new-array v3, v5, [I

    .line 766
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->scrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->getLocationOnScreen([I)V

    .line 767
    new-array v0, v5, [I

    .line 768
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 769
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 770
    const/high16 v4, 0x42480000    # 50.0f

    mul-float/2addr v0, v4

    float-to-int v4, v0

    .line 772
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->findSectionContainer(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 773
    if-eqz v0, :cond_8f

    move-object p1, v0

    .line 775
    :cond_8f
    new-array v0, v5, [I

    .line 776
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 777
    aget v0, v0, v2

    aget v2, v3, v2

    sub-int/2addr v0, v2

    .line 778
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v2, v0

    .line 780
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->scrollView:Landroid/widget/ScrollView;

    invoke-virtual {v3}, Landroid/widget/ScrollView;->getHeight()I

    move-result v3

    .line 781
    if-ge v0, v4, :cond_b5

    .line 782
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->scrollView:Landroid/widget/ScrollView;

    invoke-virtual {v2}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v2

    .line 783
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->scrollView:Landroid/widget/ScrollView;

    add-int/2addr v0, v2

    sub-int/2addr v0, v4

    invoke-virtual {v3, v1, v0}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    goto/16 :goto_9

    .line 784
    :cond_b5
    sub-int v0, v3, v4

    if-le v2, v0, :cond_9

    .line 785
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->scrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v0

    .line 786
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
    .line 656
    const v0, 0x1020002

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 657
    if-eqz v0, :cond_15

    .line 658
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$14;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$14;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalFocusChangeListener(Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;)V

    .line 682
    :cond_15
    return-void
.end method

.method private setupNavigationTagsForSection(Lcom/bilibili/tv/ui/video/widget/VideoListSection;I)V
    .locals 1

    .prologue
    .line 3505
    if-nez p1, :cond_3

    .line 3625
    :cond_2
    :goto_2
    return-void

    .line 3509
    :cond_3
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->getSectionId()I

    .line 3511
    invoke-virtual {p1, p2}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setupNavigationTags(I)V

    .line 3514
    new-instance v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$31;

    invoke-direct {v0, p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$31;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)V

    invoke-virtual {p1, v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setOnFocusExitListener(Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnFocusExitListener;)V

    .line 3603
    new-instance v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$32;

    invoke-direct {v0, p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$32;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)V

    invoke-virtual {p1, v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setOnNavTagFocusListener(Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnNavTagFocusListener;)V

    .line 3614
    new-instance v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$33;

    invoke-direct {v0, p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$33;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)V

    invoke-virtual {p1, v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setOnNavTagClickListener(Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnNavTagClickListener;)V

    .line 3621
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->getFocusPosition()I

    move-result v0

    .line 3622
    if-ltz v0, :cond_2

    .line 3623
    invoke-virtual {p1, v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->updateNavTagSelection(I)V

    goto :goto_2
.end method

.method private showFavoriteMenu()V
    .locals 4

    .prologue
    .line 4176
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->u:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    if-nez v0, :cond_5

    .line 4190
    :goto_4
    return-void

    .line 4179
    :cond_5
    new-instance v0, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;

    iget-wide v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->s:J

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->u:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    invoke-direct {v0, p0, v2, v3, v1}, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;-><init>(Landroid/app/Activity;JLcom/bilibili/tv/api/video/BiliVideoDetail;)V

    .line 4180
    new-instance v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$39;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$39;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)V

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;->setOnFavoriteStatusChangedListener(Lcom/bilibili/tv/ui/video/FavoriteMenuDialog$OnFavoriteStatusChangedListener;)V

    .line 4189
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;->show()V

    goto :goto_4
.end method

.method private showInteractionButtons()V
    .locals 14

    .prologue
    .line 4594
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->expandBtn:Lcom/bilibili/tv/widget/DrawLinearLayout;

    if-eqz v0, :cond_b

    .line 4595
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->expandBtn:Lcom/bilibili/tv/widget/DrawLinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setVisibility(I)V

    .line 4597
    :cond_b
    const v0, 0x7f080167

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 4598
    const v0, 0x7f08016a

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 4599
    const v0, 0x7f08014d

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 4600
    const v0, 0x7f080268

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 4601
    const v0, 0x7f080241

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 4602
    const v0, 0x7f0801a1

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 4603
    const v0, 0x7f0801dc

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 4605
    invoke-static {p0}, Lbl/abd;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_ea

    const/4 v0, 0x1

    .line 4607
    :goto_43
    invoke-direct {p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->updateSubscribeButtonUI()V

    .line 4608
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

    .line 4610
    :goto_64
    if-eqz v3, :cond_6a

    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4611
    :cond_6a
    if-eqz v4, :cond_70

    const/4 v1, 0x0

    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4612
    :cond_70
    if-eqz v5, :cond_76

    const/4 v1, 0x0

    invoke-virtual {v5, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4613
    :cond_76
    if-eqz v6, :cond_7e

    .line 4614
    if-eqz v2, :cond_f1

    const/4 v1, 0x0

    :goto_7b
    invoke-virtual {v6, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4616
    :cond_7e
    if-eqz v7, :cond_87

    .line 4617
    if-eqz v0, :cond_f4

    const/16 v1, 0x8

    :goto_84
    invoke-virtual {v7, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4619
    :cond_87
    if-eqz v8, :cond_8d

    const/4 v1, 0x0

    invoke-virtual {v8, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4620
    :cond_8d
    if-eqz v9, :cond_93

    const/4 v1, 0x0

    invoke-virtual {v9, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4624
    :cond_93
    if-nez v0, :cond_f6

    const/4 v0, 0x1

    move v1, v0

    .line 4625
    :goto_97
    if-eqz v5, :cond_a3

    .line 4626
    if-eqz v2, :cond_f9

    if-eqz v6, :cond_f9

    .line 4627
    const v0, 0x7f080268

    invoke-virtual {v5, v0}, Landroid/view/View;->setNextFocusRightId(I)V

    .line 4634
    :cond_a3
    :goto_a3
    if-eqz v6, :cond_b5

    if-eqz v2, :cond_b5

    .line 4635
    if-eqz v1, :cond_109

    const v0, 0x7f080241

    :goto_ac
    invoke-virtual {v6, v0}, Landroid/view/View;->setNextFocusRightId(I)V

    .line 4636
    const v0, 0x7f08014d

    invoke-virtual {v6, v0}, Landroid/view/View;->setNextFocusLeftId(I)V

    .line 4638
    :cond_b5
    if-eqz v7, :cond_c9

    if-eqz v1, :cond_c9

    .line 4639
    if-eqz v2, :cond_10d

    if-eqz v6, :cond_10d

    .line 4640
    const v0, 0x7f080268

    .line 4639
    :goto_c0
    invoke-virtual {v7, v0}, Landroid/view/View;->setNextFocusLeftId(I)V

    .line 4641
    const v0, 0x7f0801a1

    invoke-virtual {v7, v0}, Landroid/view/View;->setNextFocusRightId(I)V

    .line 4643
    :cond_c9
    if-eqz v8, :cond_d5

    .line 4644
    if-eqz v2, :cond_111

    if-eqz v6, :cond_111

    .line 4645
    const v0, 0x7f080268

    invoke-virtual {v8, v0}, Landroid/view/View;->setNextFocusLeftId(I)V

    .line 4653
    :cond_d5
    :goto_d5
    if-eqz v3, :cond_e9

    .line 4654
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->rePlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    if-eqz v0, :cond_121

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->rePlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    invoke-virtual {v0}, Lcom/bilibili/tv/widget/DrawLinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_121

    .line 4655
    const v0, 0x7f080195

    invoke-virtual {v3, v0}, Landroid/view/View;->setNextFocusLeftId(I)V

    .line 4662
    :cond_e9
    :goto_e9
    return-void

    .line 4605
    :cond_ea
    const/4 v0, 0x0

    goto/16 :goto_43

    .line 4608
    :cond_ed
    const/4 v1, 0x0

    move v2, v1

    goto/16 :goto_64

    .line 4614
    :cond_f1
    const/16 v1, 0x8

    goto :goto_7b

    .line 4617
    :cond_f4
    const/4 v1, 0x0

    goto :goto_84

    .line 4624
    :cond_f6
    const/4 v0, 0x0

    move v1, v0

    goto :goto_97

    .line 4628
    :cond_f9
    if-eqz v1, :cond_102

    .line 4629
    const v0, 0x7f080241

    invoke-virtual {v5, v0}, Landroid/view/View;->setNextFocusRightId(I)V

    goto :goto_a3

    .line 4631
    :cond_102
    const v0, 0x7f0801a1

    invoke-virtual {v5, v0}, Landroid/view/View;->setNextFocusRightId(I)V

    goto :goto_a3

    .line 4635
    :cond_109
    const v0, 0x7f0801a1

    goto :goto_ac

    .line 4640
    :cond_10d
    const v0, 0x7f08014d

    goto :goto_c0

    .line 4646
    :cond_111
    if-eqz v1, :cond_11a

    .line 4647
    const v0, 0x7f080241

    invoke-virtual {v8, v0}, Landroid/view/View;->setNextFocusLeftId(I)V

    goto :goto_d5

    .line 4649
    :cond_11a
    const v0, 0x7f08014d

    invoke-virtual {v8, v0}, Landroid/view/View;->setNextFocusLeftId(I)V

    goto :goto_d5

    .line 4656
    :cond_121
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->noHistoryPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    if-eqz v0, :cond_134

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->noHistoryPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    invoke-virtual {v0}, Lcom/bilibili/tv/widget/DrawLinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_134

    .line 4657
    const v0, 0x7f080196

    invoke-virtual {v3, v0}, Landroid/view/View;->setNextFocusLeftId(I)V

    goto :goto_e9

    .line 4659
    :cond_134
    const v0, 0x7f080192

    invoke-virtual {v3, v0}, Landroid/view/View;->setNextFocusLeftId(I)V

    goto :goto_e9
.end method

.method private showPgcEpisodes(Lcom/bilibili/tv/api/video/PgcInfo;)V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 3361
    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo;->episodes:Ljava/util/List;

    if-eqz v0, :cond_e

    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo;->episodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 3362
    :cond_e
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->hh:Landroid/widget/TextView;

    if-eqz v0, :cond_17

    .line 3363
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->hh:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3365
    :cond_17
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->o:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_20

    .line 3366
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->o:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 3382
    :cond_20
    :goto_20
    return-void

    .line 3371
    :cond_21
    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo;->episodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_3d

    .line 3372
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->hh:Landroid/widget/TextView;

    if-eqz v0, :cond_33

    .line 3373
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->hh:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3375
    :cond_33
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->o:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_20

    .line 3376
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->o:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    goto :goto_20

    .line 3381
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

    .line 3208
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->pgcInfoContainer:Landroid/widget/LinearLayout;

    if-nez v0, :cond_d

    .line 3255
    :goto_c
    return-void

    .line 3211
    :cond_d
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->pgcInfoContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3213
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->pgcRating:Landroid/widget/TextView;

    if-eqz v0, :cond_ca

    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo;->rating:Lcom/bilibili/tv/api/video/PgcInfo$Rating;

    if-eqz v0, :cond_ca

    .line 3214
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->pgcRating:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/bilibili/tv/api/video/PgcInfo;->getRatingString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3215
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->pgcRating:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3220
    :cond_28
    :goto_28
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->pgcType:Landroid/widget/TextView;

    if-eqz v0, :cond_35

    .line 3221
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->pgcType:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/bilibili/tv/api/video/PgcInfo;->getTypeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3224
    :cond_35
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->pgcArea:Landroid/widget/TextView;

    if-eqz v0, :cond_42

    .line 3225
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->pgcArea:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/bilibili/tv/api/video/PgcInfo;->getAreaString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3228
    :cond_42
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->pgcNewEp:Landroid/widget/TextView;

    if-eqz v0, :cond_d7

    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo;->newEp:Lcom/bilibili/tv/api/video/PgcInfo$NewEp;

    if-eqz v0, :cond_d7

    .line 3229
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->pgcNewEp:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/bilibili/tv/api/video/PgcInfo;->newEp:Lcom/bilibili/tv/api/video/PgcInfo$NewEp;

    iget-object v1, v1, Lcom/bilibili/tv/api/video/PgcInfo$NewEp;->indexShow:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3234
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

    .line 3235
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 3236
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 3240
    const v2, 0x7f06014d

    invoke-static {v2}, Lbl/adl;->b(I)I

    move-result v2

    invoke-virtual {v1, v2, v5, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 3241
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3242
    const/high16 v1, 0x41600000    # 14.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 3243
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0500a1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3244
    iget-object v1, p1, Lcom/bilibili/tv/api/video/PgcInfo;->badgeInfo:Lcom/bilibili/tv/api/video/PgcInfo$BadgeInfo;

    iget-object v1, v1, Lcom/bilibili/tv/api/video/PgcInfo$BadgeInfo;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3245
    invoke-static {v3}, Lbl/adl;->b(I)I

    move-result v1

    invoke-static {v4}, Lbl/adl;->b(I)I

    move-result v2

    invoke-static {v3}, Lbl/adl;->b(I)I

    move-result v3

    invoke-static {v4}, Lbl/adl;->b(I)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 3246
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 3247
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 3248
    iget-object v1, p1, Lcom/bilibili/tv/api/video/PgcInfo;->badgeInfo:Lcom/bilibili/tv/api/video/PgcInfo$BadgeInfo;

    iget-object v1, v1, Lcom/bilibili/tv/api/video/PgcInfo$BadgeInfo;->bgColor:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/video/widget/VideoTagStyler;->applyTranslucent(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 3249
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->pgcInfoContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 3252
    :cond_bf
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->showPgcSections(Lcom/bilibili/tv/api/video/PgcInfo;)V

    .line 3253
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->showPgcEpisodes(Lcom/bilibili/tv/api/video/PgcInfo;)V

    .line 3254
    invoke-direct {p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->refreshVisualOrder()V

    goto/16 :goto_c

    .line 3216
    :cond_ca
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->pgcRating:Landroid/widget/TextView;

    if-eqz v0, :cond_28

    .line 3217
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->pgcRating:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_28

    .line 3230
    :cond_d7
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->pgcNewEp:Landroid/widget/TextView;

    if-eqz v0, :cond_53

    .line 3231
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->pgcNewEp:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_53
.end method

.method private showPgcSections(Lcom/bilibili/tv/api/video/PgcInfo;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3470
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonsContainer:Landroid/widget/LinearLayout;

    if-nez v0, :cond_7

    .line 3502
    :cond_6
    return-void

    .line 3474
    :cond_7
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3475
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 3476
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonSectionViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3477
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->videoListNavigator:Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;

    if-eqz v0, :cond_1f

    .line 3478
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->videoListNavigator:Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->clearSections()V

    .line 3481
    :cond_1f
    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo;->seasons:Ljava/util/List;

    if-eqz v0, :cond_61

    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo;->seasons:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_61

    move v0, v1

    .line 3482
    :goto_2c
    iget-object v3, p1, Lcom/bilibili/tv/api/video/PgcInfo;->sections:Ljava/util/List;

    if-eqz v3, :cond_63

    iget-object v3, p1, Lcom/bilibili/tv/api/video/PgcInfo;->sections:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_63

    move v3, v1

    .line 3484
    :goto_39
    if-nez v0, :cond_3d

    if-eqz v3, :cond_6

    .line 3490
    :cond_3d
    if-eqz v0, :cond_65

    .line 3491
    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo;->seasons:Ljava/util/List;

    invoke-direct {p0, v0, v2}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->createSeasonsSectionView(Ljava/util/List;I)V

    move v0, v1

    .line 3495
    :goto_45
    if-eqz v3, :cond_6

    move v1, v0

    .line 3496
    :goto_48
    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo;->sections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_6

    .line 3497
    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo;->sections:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/PgcInfo$Section;

    .line 3498
    invoke-direct {p0, v0, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->createPgcSectionView(Lcom/bilibili/tv/api/video/PgcInfo$Section;I)V

    .line 3499
    add-int/lit8 v0, v1, 0x1

    .line 3496
    add-int/lit8 v2, v2, 0x1

    move v1, v0

    goto :goto_48

    :cond_61
    move v0, v2

    .line 3481
    goto :goto_2c

    :cond_63
    move v3, v2

    .line 3482
    goto :goto_39

    :cond_65
    move v0, v2

    goto :goto_45
.end method

.method private showVideoIntroPanel()V
    .locals 8

    .prologue
    .line 4197
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->u:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    .line 4198
    if-nez v1, :cond_5

    .line 4233
    :cond_4
    :goto_4
    return-void

    .line 4201
    :cond_5
    new-instance v2, Lcom/bilibili/tv/ui/video/RightSlidePanelDialog;

    const v0, 0x3ecccccd    # 0.4f

    invoke-direct {v2, p0, v0}, Lcom/bilibili/tv/ui/video/RightSlidePanelDialog;-><init>(Landroid/app/Activity;F)V

    .line 4202
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v3, 0x7f0a00b8

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 4203
    const v0, 0x7f080264

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 4204
    if-eqz v0, :cond_31

    .line 4205
    iget-object v4, v1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mBvid:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_63

    .line 4206
    iget-object v4, v1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mBvid:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4211
    :cond_31
    :goto_31
    const v0, 0x7f080265

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 4212
    if-eqz v0, :cond_49

    .line 4213
    iget-object v4, v1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mDescription:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7c

    .line 4214
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4219
    :cond_49
    :goto_49
    invoke-virtual {v2, v3}, Lcom/bilibili/tv/ui/video/RightSlidePanelDialog;->setContent(Landroid/view/View;)V

    .line 4220
    invoke-virtual {v2}, Lcom/bilibili/tv/ui/video/RightSlidePanelDialog;->show()V

    .line 4222
    const v0, 0x7f080266

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 4223
    if-eqz v0, :cond_4

    .line 4224
    new-instance v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$40;

    invoke-direct {v1, p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$40;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Landroid/view/View;)V

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_4

    .line 4208
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

    .line 4216
    :cond_7c
    iget-object v1, v1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_49
.end method

.method private final syncNoHistoryOff()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 4100
    sput-boolean v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->sNoHistoryPlayMode:Z

    .line 4101
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->noHistoryPlayCheckBox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->noHistoryPlayCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 4102
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->noHistoryPlayCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 4104
    :cond_14
    invoke-direct {p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->refreshNoHistoryLabel()V

    .line 4105
    return-void
.end method

.method private toggleContentVisibility()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v1, 0x0

    .line 1106
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->isContentHidden:Z

    if-nez v0, :cond_1d

    const/4 v0, 0x1

    :goto_8
    iput-boolean v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->isContentHidden:Z

    .line 1108
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->m:Landroid/view/View;

    .line 1109
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->gradientMaskView:Landroid/view/View;

    .line 1111
    iget-boolean v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->isContentHidden:Z

    if-eqz v3, :cond_1f

    .line 1112
    if-eqz v0, :cond_17

    .line 1113
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1115
    :cond_17
    if-eqz v2, :cond_1c

    .line 1116
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1131
    :cond_1c
    :goto_1c
    return-void

    :cond_1d
    move v0, v1

    .line 1106
    goto :goto_8

    .line 1119
    :cond_1f
    if-eqz v0, :cond_24

    .line 1120
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1122
    :cond_24
    if-eqz v2, :cond_29

    .line 1123
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1125
    :cond_29
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/ProgressPlayButton;

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/ProgressPlayButton;

    invoke-virtual {v0}, Lcom/bilibili/tv/widget/ProgressPlayButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3b

    .line 1126
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/ProgressPlayButton;

    invoke-virtual {v0}, Lcom/bilibili/tv/widget/ProgressPlayButton;->requestFocus()Z

    goto :goto_1c

    .line 1127
    :cond_3b
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->rePlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->rePlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    invoke-virtual {v0}, Lcom/bilibili/tv/widget/DrawLinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1c

    .line 1128
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->rePlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    invoke-virtual {v0}, Lcom/bilibili/tv/widget/DrawLinearLayout;->requestFocus()Z

    goto :goto_1c
.end method

.method private final tripleVideo()V
    .locals 6

    .prologue
    .line 4513
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->B:Z

    if-eqz v0, :cond_5

    .line 4522
    :goto_4
    return-void

    .line 4516
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->B:Z

    .line 4517
    invoke-static {p0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v0

    .line 4518
    const-string v1, "BiliAccount.get(this)"

    invoke-static {v0, v1}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4519
    invoke-static {v0}, Lmybl/CookieUtil;->getFullCookieWithDevice(Lbl/mg;)Ljava/lang/String;

    move-result-object v1

    .line 4520
    invoke-static {v0}, Lmybl/CookieUtil;->getBiliJct(Lbl/mg;)Ljava/lang/String;

    move-result-object v2

    .line 4521
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

    .line 3660
    const-string v0, "content://uii.ang.bilitv.provider.TvSearchSuggestionProvider/suggestions"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 3663
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

    .line 3664
    if-eqz v2, :cond_41

    .line 3665
    :try_start_16
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 3666
    if-le v0, p1, :cond_41

    .line 3667
    sub-int v3, v0, p1

    .line 3668
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3669
    const/4 v0, 0x0

    :goto_22
    if-ge v0, v3, :cond_41

    .line 3670
    const-string v4, "_id"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 3671
    invoke-static {v1, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 3672
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v5, v4, v6, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3673
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_3e} :catch_78
    .catchall {:try_start_16 .. :try_end_3e} :catchall_73

    .line 3669
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    .line 3680
    :cond_41
    if-eqz v2, :cond_46

    .line 3681
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 3684
    :cond_46
    :goto_46
    return-void

    .line 3677
    :catch_47
    move-exception v0

    move-object v1, v6

    .line 3678
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

    .line 3680
    if-eqz v1, :cond_46

    .line 3681
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_46

    .line 3680
    :catchall_6b
    move-exception v0

    move-object v2, v6

    :goto_6d
    if-eqz v2, :cond_72

    .line 3681
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 3683
    :cond_72
    throw v0

    .line 3680
    :catchall_73
    move-exception v0

    goto :goto_6d

    :catchall_75
    move-exception v0

    move-object v2, v1

    goto :goto_6d

    .line 3677
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

    .line 3028
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->e:Landroid/widget/TextView;

    .line 3029
    if-eqz v0, :cond_12

    .line 3030
    invoke-virtual {p1}, Lcom/bilibili/tv/api/video/BiliVideoDetail;->getPlays()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lbl/adh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3034
    :cond_12
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->ff:Landroid/widget/TextView;

    .line 3035
    if-eqz v0, :cond_21

    .line 3036
    invoke-virtual {p1}, Lcom/bilibili/tv/api/video/BiliVideoDetail;->getDanmakus()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lbl/adh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3040
    :cond_21
    const v0, 0x7f08016d

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 3041
    if-eqz v0, :cond_62

    iget v1, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mDuration:I

    if-lez v1, :cond_62

    .line 3042
    iget v1, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mDuration:I

    const/16 v2, 0xe10

    if-lt v1, v2, :cond_74

    .line 3043
    const-string v1, "%d:%02d:%02d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mDuration:I

    div-int/lit16 v3, v3, 0xe10

    .line 3044
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    iget v3, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mDuration:I

    rem-int/lit16 v3, v3, 0xe10

    div-int/lit8 v3, v3, 0x3c

    .line 3045
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget v3, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mDuration:I

    rem-int/lit8 v3, v3, 0x3c

    .line 3046
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    .line 3043
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3055
    :cond_62
    :goto_62
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->g:Landroid/widget/TextView;

    .line 3056
    if-eqz v0, :cond_73

    .line 3057
    iget-wide v2, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mCreatedTimestamp:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_94

    .line 3058
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3065
    :cond_73
    :goto_73
    return-void

    .line 3048
    :cond_74
    const-string v1, "%02d:%02d"

    new-array v2, v5, [Ljava/lang/Object;

    iget v3, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mDuration:I

    div-int/lit8 v3, v3, 0x3c

    .line 3049
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    iget v3, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mDuration:I

    rem-int/lit8 v3, v3, 0x3c

    .line 3050
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    .line 3048
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_62

    .line 3060
    :cond_94
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3061
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

    .line 2917
    if-eqz p1, :cond_b

    if-eqz p2, :cond_b

    iget-object v0, p2, Lcom/bilibili/tv/api/video/PgcInfo;->episodes:Ljava/util/List;

    if-nez v0, :cond_c

    .line 3023
    :cond_b
    :goto_b
    return-void

    .line 2921
    :cond_c
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mBangumiInfo:Lcom/bilibili/tv/api/video/BiliVideoDetail$BangumiInfo;

    if-nez v0, :cond_17

    .line 2922
    new-instance v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$BangumiInfo;

    invoke-direct {v0}, Lcom/bilibili/tv/api/video/BiliVideoDetail$BangumiInfo;-><init>()V

    iput-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mBangumiInfo:Lcom/bilibili/tv/api/video/BiliVideoDetail$BangumiInfo;

    .line 2924
    :cond_17
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mBangumiInfo:Lcom/bilibili/tv/api/video/BiliVideoDetail$BangumiInfo;

    iget v1, p2, Lcom/bilibili/tv/api/video/PgcInfo;->seasonId:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$BangumiInfo;->mSeasonId:Ljava/lang/String;

    .line 2925
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mBangumiInfo:Lcom/bilibili/tv/api/video/BiliVideoDetail$BangumiInfo;

    iget-object v1, p2, Lcom/bilibili/tv/api/video/PgcInfo;->title:Ljava/lang/String;

    iput-object v1, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$BangumiInfo;->mTitle:Ljava/lang/String;

    .line 2928
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    if-eqz v0, :cond_1b9

    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1b9

    .line 2929
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;

    iget-wide v0, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mCid:J

    move-wide v2, v0

    .line 2934
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

    .line 2935
    iget-wide v8, v0, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->cid:J

    cmp-long v0, v8, v2

    if-nez v0, :cond_44

    .line 2936
    const/4 v0, 0x1

    .line 2942
    :goto_57
    if-nez v0, :cond_5d

    cmp-long v0, v2, v4

    if-gtz v0, :cond_b

    .line 2947
    :cond_5d
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    if-nez v0, :cond_68

    .line 2948
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    .line 2950
    :cond_68
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    move v1, v6

    .line 2951
    :goto_6e
    iget-object v0, p2, Lcom/bilibili/tv/api/video/PgcInfo;->episodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_8d

    .line 2952
    iget-object v0, p2, Lcom/bilibili/tv/api/video/PgcInfo;->episodes:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/PgcInfo$Episode;

    .line 2953
    add-int/lit8 v2, v1, 0x1

    invoke-direct {p0, v0, v2}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->convertEpisodeToPage(Lcom/bilibili/tv/api/video/PgcInfo$Episode;I)Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;

    move-result-object v0

    .line 2954
    iget-object v2, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2951
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6e

    .line 2958
    :cond_8d
    iget-object v0, p2, Lcom/bilibili/tv/api/video/PgcInfo;->stat:Lcom/bilibili/tv/api/video/PgcInfo$Stat;

    if-eqz v0, :cond_b4

    .line 2959
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mStat:Lcom/bilibili/tv/api/video/BiliVideoDetail$Stat;

    if-nez v0, :cond_9c

    .line 2960
    new-instance v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Stat;

    invoke-direct {v0}, Lcom/bilibili/tv/api/video/BiliVideoDetail$Stat;-><init>()V

    iput-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mStat:Lcom/bilibili/tv/api/video/BiliVideoDetail$Stat;

    .line 2962
    :cond_9c
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mStat:Lcom/bilibili/tv/api/video/BiliVideoDetail$Stat;

    iget-object v1, p2, Lcom/bilibili/tv/api/video/PgcInfo;->stat:Lcom/bilibili/tv/api/video/PgcInfo$Stat;

    iget-wide v2, v1, Lcom/bilibili/tv/api/video/PgcInfo$Stat;->views:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Stat;->mPlays:Ljava/lang/String;

    .line 2963
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mStat:Lcom/bilibili/tv/api/video/BiliVideoDetail$Stat;

    iget-object v1, p2, Lcom/bilibili/tv/api/video/PgcInfo;->stat:Lcom/bilibili/tv/api/video/PgcInfo$Stat;

    iget-wide v2, v1, Lcom/bilibili/tv/api/video/PgcInfo$Stat;->danmakus:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Stat;->mDanmakus:Ljava/lang/String;

    .line 2967
    :cond_b4
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mOwner:Lcom/bilibili/tv/api/video/BiliUser;

    if-nez v0, :cond_bf

    .line 2968
    new-instance v0, Lcom/bilibili/tv/api/video/BiliUser;

    invoke-direct {v0}, Lcom/bilibili/tv/api/video/BiliUser;-><init>()V

    iput-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mOwner:Lcom/bilibili/tv/api/video/BiliUser;

    .line 2970
    :cond_bf
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mStaffList:Ljava/util/List;

    if-nez v0, :cond_ca

    .line 2971
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mStaffList:Ljava/util/List;

    .line 2974
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

    .line 2975
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mStaffList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2976
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

    .line 2977
    new-instance v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$Staff;

    invoke-direct {v2}, Lcom/bilibili/tv/api/video/BiliVideoDetail$Staff;-><init>()V

    .line 2978
    iget-wide v8, v0, Lcom/bilibili/tv/api/video/PgcInfo$ProducerInfo;->mid:J

    iput-wide v8, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$Staff;->mid:J

    .line 2979
    iget-object v3, v0, Lcom/bilibili/tv/api/video/PgcInfo$ProducerInfo;->name:Ljava/lang/String;

    iput-object v3, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$Staff;->name:Ljava/lang/String;

    .line 2980
    iget-object v0, v0, Lcom/bilibili/tv/api/video/PgcInfo$ProducerInfo;->face:Ljava/lang/String;

    iput-object v0, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$Staff;->face:Ljava/lang/String;

    .line 2981
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mStaffList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_eb

    .line 2983
    :cond_10e
    iget-object v1, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mOwner:Lcom/bilibili/tv/api/video/BiliUser;

    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mStaffList:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Staff;

    iget-wide v2, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Staff;->mid:J

    iput-wide v2, v1, Lcom/bilibili/tv/api/video/BiliUser;->mid:J

    .line 2984
    iget-object v1, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mOwner:Lcom/bilibili/tv/api/video/BiliUser;

    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mStaffList:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Staff;

    iget-object v0, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Staff;->name:Ljava/lang/String;

    iput-object v0, v1, Lcom/bilibili/tv/api/video/BiliUser;->name:Ljava/lang/String;

    .line 2985
    iget-object v1, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mOwner:Lcom/bilibili/tv/api/video/BiliUser;

    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mStaffList:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Staff;

    iget-object v0, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Staff;->face:Ljava/lang/String;

    iput-object v0, v1, Lcom/bilibili/tv/api/video/BiliUser;->face:Ljava/lang/String;

    .line 3000
    :cond_138
    :goto_138
    iget-object v0, p2, Lcom/bilibili/tv/api/video/PgcInfo;->userStatus:Lcom/bilibili/tv/api/video/PgcInfo$UserStatus;

    if-eqz v0, :cond_b

    iget-object v0, p2, Lcom/bilibili/tv/api/video/PgcInfo;->userStatus:Lcom/bilibili/tv/api/video/PgcInfo$UserStatus;

    iget-object v0, v0, Lcom/bilibili/tv/api/video/PgcInfo$UserStatus;->progress:Lcom/bilibili/tv/api/video/PgcInfo$Progress;

    if-eqz v0, :cond_b

    .line 3001
    iget-object v0, p2, Lcom/bilibili/tv/api/video/PgcInfo;->userStatus:Lcom/bilibili/tv/api/video/PgcInfo$UserStatus;

    iget-object v0, v0, Lcom/bilibili/tv/api/video/PgcInfo$UserStatus;->progress:Lcom/bilibili/tv/api/video/PgcInfo$Progress;

    .line 3002
    iget-wide v2, v0, Lcom/bilibili/tv/api/video/PgcInfo$Progress;->lastEpId:J

    .line 3003
    iget v6, v0, Lcom/bilibili/tv/api/video/PgcInfo$Progress;->lastTime:I

    .line 3008
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

    .line 3009
    iget v7, v0, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->id:I

    int-to-long v8, v7

    cmp-long v7, v8, v2

    if-nez v7, :cond_150

    .line 3010
    iget-wide v0, v0, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->cid:J

    .line 3015
    :goto_165
    cmp-long v2, v0, v4

    if-lez v2, :cond_b

    .line 3016
    new-instance v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$History;

    invoke-direct {v2}, Lcom/bilibili/tv/api/video/BiliVideoDetail$History;-><init>()V

    .line 3017
    iput-wide v0, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$History;->mCid:J

    .line 3018
    iput v6, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$History;->mProgress:I

    .line 3019
    iput-object v2, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mHistory:Lcom/bilibili/tv/api/video/BiliVideoDetail$History;

    goto/16 :goto_b

    .line 2987
    :cond_176
    iget-object v0, p2, Lcom/bilibili/tv/api/video/PgcInfo;->upInfo:Lcom/bilibili/tv/api/video/PgcInfo$UpInfo;

    if-eqz v0, :cond_138

    .line 2988
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mOwner:Lcom/bilibili/tv/api/video/BiliUser;

    iget-object v1, p2, Lcom/bilibili/tv/api/video/PgcInfo;->upInfo:Lcom/bilibili/tv/api/video/PgcInfo$UpInfo;

    iget-wide v2, v1, Lcom/bilibili/tv/api/video/PgcInfo$UpInfo;->mid:J

    iput-wide v2, v0, Lcom/bilibili/tv/api/video/BiliUser;->mid:J

    .line 2989
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mOwner:Lcom/bilibili/tv/api/video/BiliUser;

    iget-object v1, p2, Lcom/bilibili/tv/api/video/PgcInfo;->upInfo:Lcom/bilibili/tv/api/video/PgcInfo$UpInfo;

    iget-object v1, v1, Lcom/bilibili/tv/api/video/PgcInfo$UpInfo;->name:Ljava/lang/String;

    iput-object v1, v0, Lcom/bilibili/tv/api/video/BiliUser;->name:Ljava/lang/String;

    .line 2990
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mOwner:Lcom/bilibili/tv/api/video/BiliUser;

    iget-object v1, p2, Lcom/bilibili/tv/api/video/PgcInfo;->upInfo:Lcom/bilibili/tv/api/video/PgcInfo$UpInfo;

    iget-object v1, v1, Lcom/bilibili/tv/api/video/PgcInfo$UpInfo;->face:Ljava/lang/String;

    iput-object v1, v0, Lcom/bilibili/tv/api/video/BiliUser;->face:Ljava/lang/String;

    .line 2991
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mStaffList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2992
    new-instance v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Staff;

    invoke-direct {v0}, Lcom/bilibili/tv/api/video/BiliVideoDetail$Staff;-><init>()V

    .line 2993
    iget-object v1, p2, Lcom/bilibili/tv/api/video/PgcInfo;->upInfo:Lcom/bilibili/tv/api/video/PgcInfo$UpInfo;

    iget-wide v2, v1, Lcom/bilibili/tv/api/video/PgcInfo$UpInfo;->mid:J

    iput-wide v2, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Staff;->mid:J

    .line 2994
    iget-object v1, p2, Lcom/bilibili/tv/api/video/PgcInfo;->upInfo:Lcom/bilibili/tv/api/video/PgcInfo$UpInfo;

    iget-object v1, v1, Lcom/bilibili/tv/api/video/PgcInfo$UpInfo;->name:Ljava/lang/String;

    iput-object v1, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Staff;->name:Ljava/lang/String;

    .line 2995
    iget-object v1, p2, Lcom/bilibili/tv/api/video/PgcInfo;->upInfo:Lcom/bilibili/tv/api/video/PgcInfo$UpInfo;

    iget-object v1, v1, Lcom/bilibili/tv/api/video/PgcInfo$UpInfo;->face:Ljava/lang/String;

    iput-object v1, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Staff;->face:Ljava/lang/String;

    .line 2996
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
    .locals 12

    .prologue
    .line 2583
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtn:Lcom/bilibili/tv/widget/DrawTextView;

    if-nez v0, :cond_5

    .line 2702
    :cond_4
    :goto_4
    return-void

    .line 2586
    :cond_5
    if-eqz p1, :cond_4

    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mHistory:Lcom/bilibili/tv/api/video/BiliVideoDetail$History;

    if-eqz v0, :cond_4

    .line 2592
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->applyNoHistoryState(Lcom/bilibili/tv/api/video/BiliVideoDetail;Z)V

    .line 2594
    const/4 v0, 0x0

    .line 2595
    iget-object v1, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->episodes:Lcom/alibaba/fastjson/JSONArray;

    if-eqz v1, :cond_1b

    .line 2596
    iget-object v1, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->episodes:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v1

    add-int/2addr v0, v1

    .line 2598
    :cond_1b
    iget-object v1, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    if-eqz v1, :cond_22b

    .line 2599
    iget-object v1, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    move v1, v0

    .line 2601
    :goto_27
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mHistory:Lcom/bilibili/tv/api/video/BiliVideoDetail$History;

    iget-wide v6, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$History;->mCid:J

    .line 2602
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mHistory:Lcom/bilibili/tv/api/video/BiliVideoDetail$History;

    iget v8, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$History;->mProgress:I

    .line 2603
    invoke-direct {p0, v6, v7, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->findTitleByCid(JLcom/bilibili/tv/api/video/BiliVideoDetail;)Ljava/lang/String;

    .line 2605
    const/4 v4, 0x0

    .line 2606
    const/4 v3, 0x0

    .line 2607
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    if-eqz v0, :cond_14e

    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_14e

    const/4 v0, 0x1

    move v5, v0

    .line 2608
    :goto_43
    if-eqz v5, :cond_157

    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    if-eqz v0, :cond_157

    .line 2609
    const/4 v0, 0x0

    move v2, v0

    :goto_4b
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_227

    .line 2610
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;

    .line 2611
    iget-wide v10, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mCid:J

    cmp-long v9, v10, v6

    if-nez v9, :cond_152

    .line 2612
    iget v3, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->duration:I

    .line 2613
    add-int/lit8 v0, v2, 0x1

    move v2, v3

    :goto_66
    move v4, v0

    .line 2620
    :goto_67
    if-gtz v2, :cond_224

    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    if-eqz v0, :cond_224

    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_224

    .line 2621
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;

    iget v0, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->duration:I

    .line 2625
    :goto_80
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtn:Lcom/bilibili/tv/widget/DrawTextView;

    const/4 v2, -0x1

    if-ne v8, v2, :cond_15c

    const-string v2, "\u91cd\u65b0\u64ad\u653e"

    :goto_87
    invoke-virtual {v3, v2}, Lcom/bilibili/tv/widget/DrawTextView;->setText(Ljava/lang/CharSequence;)V

    .line 2626
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->rePlayBtn:Lcom/bilibili/tv/widget/DrawTextView;

    const-string v3, "\u91cd\u64ad"

    invoke-virtual {v2, v3}, Lcom/bilibili/tv/widget/DrawTextView;->setText(Ljava/lang/CharSequence;)V

    .line 2627
    const-string v2, "HistoryDebug"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[UPDATE_DISPLAY] cid="

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v9, ", progressSec="

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v9, ", totalDuration="

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v9, ", pageIndex="

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v9, ", episodeCount="

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", multi="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2635
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->rePlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    if-eqz v1, :cond_e9

    .line 2636
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->rePlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    const/4 v1, -0x1

    if-ne v8, v1, :cond_160

    const/16 v1, 0x8

    :goto_e6
    invoke-virtual {v2, v1}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setVisibility(I)V

    .line 2639
    :cond_e9
    const-wide/16 v2, 0x0

    cmp-long v1, v6, v2

    if-lez v1, :cond_162

    const/4 v1, 0x1

    move v3, v1

    .line 2641
    :goto_f1
    const/4 v1, -0x1

    if-eq v8, v1, :cond_fa

    if-lez v0, :cond_165

    add-int/lit8 v1, v0, -0x2

    if-lt v8, v1, :cond_165

    :cond_fa
    const/4 v1, 0x1

    move v2, v1

    .line 2642
    :goto_fc
    if-lez v8, :cond_168

    const/4 v1, 0x1

    .line 2644
    :goto_ff
    if-nez v3, :cond_16a

    .line 2645
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyBtnProgress:Landroid/widget/TextView;

    if-eqz v0, :cond_10c

    .line 2646
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyBtnProgress:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2648
    :cond_10c
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/ProgressPlayButton;

    if-eqz v0, :cond_117

    .line 2649
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/ProgressPlayButton;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/bilibili/tv/widget/ProgressPlayButton;->setProgress(II)V

    .line 2690
    :cond_117
    :goto_117
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->rePlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    if-eqz v0, :cond_217

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->rePlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    invoke-virtual {v0}, Lcom/bilibili/tv/widget/DrawLinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_217

    const/4 v0, 0x1

    .line 2691
    :goto_124
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/ProgressPlayButton;

    if-eqz v1, :cond_132

    .line 2692
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/ProgressPlayButton;

    if-eqz v0, :cond_21a

    .line 2693
    const v1, 0x7f080195

    .line 2692
    :goto_12f
    invoke-virtual {v2, v1}, Lcom/bilibili/tv/widget/ProgressPlayButton;->setNextFocusRightId(I)V

    .line 2695
    :cond_132
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->rePlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    if-eqz v1, :cond_13e

    .line 2696
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->rePlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    const v2, 0x7f0801df

    invoke-virtual {v1, v2}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setNextFocusRightId(I)V

    .line 2698
    :cond_13e
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->expandBtn:Lcom/bilibili/tv/widget/DrawLinearLayout;

    if-eqz v1, :cond_4

    .line 2699
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->expandBtn:Lcom/bilibili/tv/widget/DrawLinearLayout;

    if-eqz v0, :cond_21f

    .line 2700
    const v0, 0x7f080195

    .line 2699
    :goto_149
    invoke-virtual {v1, v0}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setNextFocusLeftId(I)V

    goto/16 :goto_4

    .line 2607
    :cond_14e
    const/4 v0, 0x0

    move v5, v0

    goto/16 :goto_43

    .line 2609
    :cond_152
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_4b

    .line 2618
    :cond_157
    iget v2, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mDuration:I

    move v4, v3

    goto/16 :goto_67

    .line 2625
    :cond_15c
    const-string v2, "\u7ee7\u7eed\u64ad\u653e"

    goto/16 :goto_87

    .line 2636
    :cond_160
    const/4 v1, 0x0

    goto :goto_e6

    .line 2639
    :cond_162
    const/4 v1, 0x0

    move v3, v1

    goto :goto_f1

    .line 2641
    :cond_165
    const/4 v1, 0x0

    move v2, v1

    goto :goto_fc

    .line 2642
    :cond_168
    const/4 v1, 0x0

    goto :goto_ff

    .line 2652
    :cond_16a
    if-eqz v2, :cond_189

    .line 2653
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyBtnProgress:Landroid/widget/TextView;

    if-eqz v0, :cond_17d

    .line 2654
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyBtnProgress:Landroid/widget/TextView;

    const-string v1, "\u5df2\u770b\u5b8c"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2655
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyBtnProgress:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2657
    :cond_17d
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/ProgressPlayButton;

    if-eqz v0, :cond_117

    .line 2658
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/ProgressPlayButton;

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/bilibili/tv/widget/ProgressPlayButton;->setProgress(II)V

    goto :goto_117

    .line 2660
    :cond_189
    if-eqz v1, :cond_1d6

    .line 2661
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyBtnProgress:Landroid/widget/TextView;

    if-eqz v1, :cond_1bf

    .line 2662
    if-eqz v5, :cond_1cc

    if-lez v4, :cond_1cc

    .line 2663
    invoke-direct {p0, v8, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->formatProgressTimeShort(II)Ljava/lang/String;

    move-result-object v1

    .line 2664
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

    .line 2668
    :goto_1b9
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyBtnProgress:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2670
    :cond_1bf
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/ProgressPlayButton;

    if-eqz v1, :cond_117

    if-lez v0, :cond_117

    .line 2671
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/ProgressPlayButton;

    invoke-virtual {v1, v8, v0}, Lcom/bilibili/tv/widget/ProgressPlayButton;->setProgress(II)V

    goto/16 :goto_117

    .line 2666
    :cond_1cc
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyBtnProgress:Landroid/widget/TextView;

    invoke-direct {p0, v8, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->formatProgressTimeShort(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1b9

    .line 2674
    :cond_1d6
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyBtnProgress:Landroid/widget/TextView;

    if-eqz v0, :cond_202

    .line 2675
    if-eqz v5, :cond_20f

    if-lez v4, :cond_20f

    .line 2676
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

    .line 2680
    :goto_1fc
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyBtnProgress:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2682
    :cond_202
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/ProgressPlayButton;

    if-eqz v0, :cond_117

    .line 2683
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/ProgressPlayButton;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/bilibili/tv/widget/ProgressPlayButton;->setProgress(II)V

    goto/16 :goto_117

    .line 2678
    :cond_20f
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyBtnProgress:Landroid/widget/TextView;

    const-string v1, "00:00"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1fc

    .line 2690
    :cond_217
    const/4 v0, 0x0

    goto/16 :goto_124

    .line 2693
    :cond_21a
    const v1, 0x7f0801df

    goto/16 :goto_12f

    .line 2700
    :cond_21f
    const v0, 0x7f080192

    goto/16 :goto_149

    :cond_224
    move v0, v2

    goto/16 :goto_80

    :cond_227
    move v0, v3

    move v2, v4

    goto/16 :goto_66

    :cond_22b
    move v1, v0

    goto/16 :goto_27
.end method

.method private updateNavTagSelectionForSection(Lcom/bilibili/tv/ui/video/widget/VideoListSection;I)V
    .locals 1

    .prologue
    .line 3628
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->hasNavigationTags()Z

    move-result v0

    if-nez v0, :cond_9

    .line 3633
    :cond_8
    :goto_8
    return-void

    .line 3632
    :cond_9
    invoke-virtual {p1, p2}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->updateNavTagSelection(I)V

    goto :goto_8
.end method

.method private updateStaffDisplay(Lcom/bilibili/tv/api/video/BiliVideoDetail;)V
    .locals 12

    .prologue
    const/4 v6, 0x0

    const/4 v9, 0x0

    .line 3069
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->staffContainer:Landroid/widget/LinearLayout;

    .line 3070
    iget-object v11, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->uperContainer:Landroid/widget/LinearLayout;

    .line 3071
    if-eqz v2, :cond_43

    .line 3072
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 3073
    invoke-virtual {p1}, Lcom/bilibili/tv/api/video/BiliVideoDetail;->hasStaff()Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-virtual {p1}, Lcom/bilibili/tv/api/video/BiliVideoDetail;->getStaffList()Ljava/util/List;

    move-result-object v0

    move-object v10, v0

    .line 3077
    :goto_16
    if-eqz v10, :cond_44

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_44

    .line 3078
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v8

    move v7, v9

    .line 3079
    :goto_23
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    if-ge v7, v0, :cond_3e

    .line 3080
    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Staff;

    .line 3081
    iget-object v3, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Staff;->name:Ljava/lang/String;

    iget-wide v4, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Staff;->mid:J

    iget-object v6, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Staff;->face:Ljava/lang/String;

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->addStaffView(Landroid/widget/LinearLayout;Ljava/lang/String;JLjava/lang/String;II)V

    .line 3079
    add-int/lit8 v7, v7, 0x1

    goto :goto_23

    :cond_3c
    move-object v10, v6

    .line 3073
    goto :goto_16

    .line 3083
    :cond_3e
    if-eqz v11, :cond_43

    .line 3084
    invoke-virtual {v11, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3106
    :cond_43
    :goto_43
    return-void

    .line 3088
    :cond_44
    invoke-virtual {p1}, Lcom/bilibili/tv/api/video/BiliVideoDetail;->getAuthor()Ljava/lang/String;

    move-result-object v3

    .line 3089
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6e

    const-string v0, "null"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6e

    .line 3090
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mOwner:Lcom/bilibili/tv/api/video/BiliUser;

    if-eqz v0, :cond_5e

    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mOwner:Lcom/bilibili/tv/api/video/BiliUser;

    iget-object v6, v0, Lcom/bilibili/tv/api/video/BiliUser;->face:Ljava/lang/String;

    .line 3091
    :cond_5e
    invoke-virtual {p1}, Lcom/bilibili/tv/api/video/BiliVideoDetail;->getMid()J

    move-result-wide v4

    const/4 v8, 0x1

    move-object v1, p0

    move v7, v9

    invoke-direct/range {v1 .. v8}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->addStaffView(Landroid/widget/LinearLayout;Ljava/lang/String;JLjava/lang/String;II)V

    .line 3092
    if-eqz v11, :cond_43

    .line 3093
    invoke-virtual {v11, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_43

    .line 3097
    :cond_6e
    if-eqz v11, :cond_43

    .line 3098
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

    .line 2066
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->subscribeText:Landroid/widget/TextView;

    if-eqz v3, :cond_f

    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->subscribeImg:Landroid/widget/ImageView;

    if-nez v3, :cond_10

    .line 2083
    :cond_f
    :goto_f
    return-void

    .line 2069
    :cond_10
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->mPgcInfo:Lcom/bilibili/tv/api/video/PgcInfo;

    if-eqz v3, :cond_4b

    .line 2071
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->mPgcInfo:Lcom/bilibili/tv/api/video/PgcInfo;

    iget v3, v3, Lcom/bilibili/tv/api/video/PgcInfo;->type:I

    if-eq v3, v0, :cond_21

    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->mPgcInfo:Lcom/bilibili/tv/api/video/PgcInfo;

    iget v3, v3, Lcom/bilibili/tv/api/video/PgcInfo;->type:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_34

    .line 2072
    :cond_21
    :goto_21
    iget-boolean v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->isPgcFollowed:Z

    if-eqz v3, :cond_39

    .line 2073
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->subscribeText:Landroid/widget/TextView;

    if-eqz v0, :cond_36

    const-string v0, "\u5df2\u8ffd\u756a"

    :goto_2b
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2074
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->subscribeImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_f

    .line 2071
    :cond_34
    const/4 v0, 0x0

    goto :goto_21

    .line 2073
    :cond_36
    const-string v0, "\u5df2\u8ffd\u5267"

    goto :goto_2b

    .line 2076
    :cond_39
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->subscribeText:Landroid/widget/TextView;

    if-eqz v0, :cond_48

    const-string v0, "\u8ffd\u756a"

    :goto_3f
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2077
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->subscribeImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_f

    .line 2076
    :cond_48
    const-string v0, "\u8ffd\u5267"

    goto :goto_3f

    .line 2080
    :cond_4b
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->subscribeText:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->isSeasonFav:Z

    if-eqz v0, :cond_61

    const-string v0, "\u5df2\u8ba2\u9605\u5408\u96c6"

    :goto_53
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2081
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->subscribeImg:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->isSeasonFav:Z

    if-eqz v0, :cond_64

    move v0, v1

    :goto_5d
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_f

    .line 2080
    :cond_61
    const-string v0, "\u8ba2\u9605\u5408\u96c6"

    goto :goto_53

    :cond_64
    move v0, v2

    .line 2081
    goto :goto_5d
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 234
    const-string v0, "ott-platform.detail.0.0.pv"

    return-object v0
.end method

.method public final a(Landroid/app/Activity;Lcom/bilibili/tv/api/video/BiliVideoDetail;)V
    .locals 2

    .prologue
    .line 2751
    const-string v0, "video"

    invoke-static {p2, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2752
    invoke-direct {p0, p2}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->a(Lcom/bilibili/tv/api/video/BiliVideoDetail;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 2764
    :cond_b
    :goto_b
    return-void

    .line 2755
    :cond_c
    if-eqz p1, :cond_b

    .line 2758
    invoke-direct {p0, p2}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->b(Lcom/bilibili/tv/api/video/BiliVideoDetail;)Ljava/lang/String;

    move-result-object v0

    .line 2759
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 2762
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 2763
    invoke-direct {p0, p1, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_b
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 254
    invoke-direct {p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->m()V

    .line 255
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->mIsPgcMode:Z

    if-nez v0, :cond_19

    iget-wide v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->s:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_19

    .line 256
    const v0, 0x7f0c0170

    invoke-static {p0, v0}, Lbl/lr;->a(Landroid/content/Context;I)V

    .line 257
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->finish()V

    .line 263
    :goto_18
    return-void

    .line 260
    :cond_19
    invoke-direct {p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->k()V

    .line 261
    new-instance v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;

    invoke-direct {v0, p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)V

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->A:Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;

    .line 262
    const-string v0, "tv_video_view_open"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lbl/ok;->a(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_18
.end method

.method public final a(Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;)V
    .locals 2

    .prologue
    .line 4590
    sget-object v0, Lbl/aft;->a:Lbl/aft;

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->u:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    invoke-virtual {v0, p0, v1, p1}, Lbl/aft;->a(Landroid/app/Activity;Lcom/bilibili/tv/api/video/BiliVideoDetail;Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;)V

    .line 4591
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 949
    if-eqz p1, :cond_12

    iget-boolean v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->isBlurLoaded:Z

    if-nez v0, :cond_12

    .line 950
    invoke-static {}, Lbl/nv;->a()Lbl/nv;

    move-result-object v0

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, p1, v1}, Lbl/nv;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 951
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->isBlurLoaded:Z

    .line 953
    :cond_12
    return-void
.end method

.method public a_()Z
    .locals 1

    .prologue
    .line 239
    invoke-static {p0}, Lbl/wg;->a(Lbl/wf;)Z

    move-result v0

    return v0
.end method

.method public b()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 244
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

    .line 965
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->w:Lbl/add;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->relateCardAdapter:Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;

    if-nez v0, :cond_15

    .line 966
    :cond_10
    invoke-super {p0, p1}, Lcom/bilibili/tv/ui/base/BaseActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 1102
    :goto_14
    return v0

    .line 968
    :cond_15
    if-eqz p1, :cond_41

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v2, v0

    .line 969
    :goto_20
    if-eqz p1, :cond_44

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 971
    :goto_2a
    if-eqz v2, :cond_26d

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_26d

    .line 972
    if-eqz v0, :cond_46

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x52

    if-ne v2, v3, :cond_46

    .line 973
    invoke-direct {p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->toggleContentVisibility()V

    move v0, v1

    .line 974
    goto :goto_14

    .line 968
    :cond_41
    const/4 v0, 0x0

    move-object v2, v0

    goto :goto_20

    .line 969
    :cond_44
    const/4 v0, 0x0

    goto :goto_2a

    .line 976
    :cond_46
    if-eqz v0, :cond_58

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_58

    iget-boolean v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->isContentHidden:Z

    if-eqz v2, :cond_58

    .line 977
    invoke-direct {p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->toggleContentVisibility()V

    move v0, v1

    .line 978
    goto :goto_14

    .line 981
    :cond_58
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v2

    .line 983
    if-nez v2, :cond_63

    .line 984
    invoke-super {p0, p1}, Lcom/bilibili/tv/ui/base/BaseActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_14

    .line 993
    :cond_63
    invoke-direct {p0, v2}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->saveCurrentFocusPosition(Landroid/view/View;)V

    .line 995
    if-eqz v0, :cond_f5

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v6, :cond_f5

    .line 996
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    const v4, 0x7f080167

    if-eq v3, v4, :cond_92

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    const v4, 0x7f08016a

    if-eq v3, v4, :cond_92

    .line 997
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    const v4, 0x7f08014d

    if-eq v3, v4, :cond_92

    .line 998
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    const v4, 0x7f0801a1

    if-ne v3, v4, :cond_d4

    .line 999
    :cond_92
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->staffContainer:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_ac

    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->staffContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-lez v3, :cond_ac

    .line 1000
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->staffContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1001
    if-eqz v3, :cond_ac

    .line 1002
    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    move v0, v1

    .line 1003
    goto/16 :goto_14

    .line 1006
    :cond_ac
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/ProgressPlayButton;

    if-eqz v3, :cond_c0

    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/ProgressPlayButton;

    invoke-virtual {v3}, Lcom/bilibili/tv/widget/ProgressPlayButton;->getVisibility()I

    move-result v3

    if-nez v3, :cond_c0

    .line 1007
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/ProgressPlayButton;

    invoke-virtual {v0}, Lcom/bilibili/tv/widget/ProgressPlayButton;->requestFocus()Z

    move v0, v1

    .line 1008
    goto/16 :goto_14

    .line 1009
    :cond_c0
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->rePlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    if-eqz v3, :cond_d4

    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->rePlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    invoke-virtual {v3}, Lcom/bilibili/tv/widget/DrawLinearLayout;->getVisibility()I

    move-result v3

    if-nez v3, :cond_d4

    .line 1010
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->rePlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    invoke-virtual {v0}, Lcom/bilibili/tv/widget/DrawLinearLayout;->requestFocus()Z

    move v0, v1

    .line 1011
    goto/16 :goto_14

    .line 1014
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

    .line 1015
    :cond_ef
    invoke-super {p0, p1}, Lcom/bilibili/tv/ui/base/BaseActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto/16 :goto_14

    .line 1017
    :cond_f5
    if-eqz v0, :cond_242

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v7, :cond_242

    .line 1018
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    const v4, 0x7f080167

    if-eq v3, v4, :cond_145

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    const v4, 0x7f08016a

    if-eq v3, v4, :cond_145

    .line 1019
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    const v4, 0x7f08014d

    if-eq v3, v4, :cond_145

    .line 1020
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    const v4, 0x7f0801a1

    if-eq v3, v4, :cond_145

    .line 1021
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    const v4, 0x7f080192

    if-eq v3, v4, :cond_145

    .line 1022
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    const v4, 0x7f080195

    if-eq v3, v4, :cond_145

    .line 1023
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    const v4, 0x7f080196

    if-eq v3, v4, :cond_145

    .line 1024
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    const v4, 0x7f0801dc

    if-ne v3, v4, :cond_242

    .line 1025
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

    .line 1026
    iget v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->epLayoutFocusPosition:I

    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->o:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1027
    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1028
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->o:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1029
    if-eqz v0, :cond_23c

    .line 1030
    iput-boolean v5, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->blockEpisodeAutoFocus:Z

    .line 1031
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->o:Landroid/support/v7/widget/RecyclerView;

    if-eqz v2, :cond_17e

    .line 1032
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->o:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v8}, Landroid/support/v7/widget/RecyclerView;->setDescendantFocusability(I)V

    .line 1034
    :cond_17e
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    move v0, v1

    .line 1035
    goto/16 :goto_14

    .line 1037
    :cond_184
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonsContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1c9

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1c9

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonSectionViews:Ljava/util/List;

    .line 1038
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1c9

    .line 1039
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonSectionViews:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonSectionView;

    .line 1040
    iget-object v2, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonSectionView;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v2, :cond_23c

    iget-object v2, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonSectionView;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_23c

    .line 1041
    iget v2, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonSectionView;->sectionId:I

    invoke-direct {p0, v2}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->getSeasonSectionFocusPosition(I)I

    move-result v2

    .line 1043
    iget v3, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonSectionView;->sectionId:I

    invoke-direct {p0, v3}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->findVideoListSection(I)Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    move-result-object v3

    .line 1044
    if-eqz v3, :cond_1c3

    .line 1045
    invoke-virtual {v3, v2}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setFocusPosition(I)V

    .line 1046
    invoke-virtual {v3}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->requestFocusOnSavedPosition()Z

    :goto_1c0
    move v0, v1

    .line 1050
    goto/16 :goto_14

    .line 1048
    :cond_1c3
    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonSectionView;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->requestFocus()Z

    goto :goto_1c0

    .line 1052
    :cond_1c9
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->episodes_video:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_208

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->episodes_video:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_208

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->episodes_video:Landroid/support/v7/widget/RecyclerView;

    .line 1053
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_208

    .line 1054
    iget v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->episodesVideoFocusPosition:I

    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->episodes_video:Landroid/support/v7/widget/RecyclerView;

    .line 1055
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 1054
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1056
    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1057
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->episodes_video:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1058
    if-eqz v0, :cond_23c

    .line 1059
    iput-boolean v5, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->blockEpisodeAutoFocus:Z

    .line 1060
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->episodes_video:Landroid/support/v7/widget/RecyclerView;

    if-eqz v2, :cond_202

    .line 1061
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->episodes_video:Landroid/support/v7/widget/RecyclerView;

    .line 1062
    invoke-virtual {v2, v8}, Landroid/support/v7/widget/RecyclerView;->setDescendantFocusability(I)V

    .line 1064
    :cond_202
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    move v0, v1

    .line 1065
    goto/16 :goto_14

    .line 1067
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

    .line 1068
    iget v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->relateVideoFocusPosition:I

    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->r:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1069
    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1070
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->r:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1071
    if-eqz v0, :cond_23c

    .line 1072
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    move v0, v1

    .line 1073
    goto/16 :goto_14

    .line 1076
    :cond_23c
    invoke-super {p0, p1}, Lcom/bilibili/tv/ui/base/BaseActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto/16 :goto_14

    .line 1080
    :cond_242
    if-eqz v0, :cond_26d

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v3, v6, :cond_250

    .line 1081
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v7, :cond_26d

    .line 1084
    :cond_250
    invoke-direct {p0, v2}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->getCurrentListType(Landroid/view/View;)I

    move-result v3

    .line 1087
    const/4 v4, 0x5

    if-eq v3, v4, :cond_25a

    const/4 v4, 0x6

    if-ne v3, v4, :cond_260

    .line 1091
    :cond_25a
    invoke-super {p0, p1}, Lcom/bilibili/tv/ui/base/BaseActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto/16 :goto_14

    .line 1094
    :cond_260
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v2, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->handleListFocusNavigation(Landroid/view/View;I)Z

    move-result v0

    .line 1096
    if-eqz v0, :cond_26d

    move v0, v1

    .line 1097
    goto/16 :goto_14

    .line 1102
    :cond_26d
    invoke-super {p0, p1}, Lcom/bilibili/tv/ui/base/BaseActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto/16 :goto_14
.end method

.method public g()I
    .locals 1

    .prologue
    .line 249
    const v0, 0x7f0a002b

    return v0
.end method

.method public final l()Lcom/bilibili/tv/widget/DrawTextView;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 835
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0a004b

    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->o:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 837
    const v1, 0x7f08014c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawTextView;

    .line 838
    if-nez v0, :cond_21

    .line 839
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.bilibili.tv.widget.DrawTextView"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 841
    :cond_21
    invoke-virtual {v0}, Lcom/bilibili/tv/widget/DrawTextView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 842
    if-eqz v1, :cond_2c

    .line 843
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 845
    :cond_2c
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawTextView;->setFocusable(Z)V

    .line 846
    invoke-virtual {v0, v3}, Lcom/bilibili/tv/widget/DrawTextView;->setFocusableInTouchMode(Z)V

    .line 847
    invoke-virtual {v0}, Lcom/bilibili/tv/widget/DrawTextView;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawTextView;->setNextFocusRightId(I)V

    .line 848
    const v1, 0x7f0c015d

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawTextView;->setText(I)V

    .line 849
    invoke-virtual {v0}, Lcom/bilibili/tv/widget/DrawTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/4 v2, -0x1

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 850
    invoke-virtual {v0}, Lcom/bilibili/tv/widget/DrawTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0600a0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 851
    new-instance v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$k;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$k;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)V

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 852
    return-object v0
.end method

.method public final o()V
    .locals 3

    .prologue
    .line 4142
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->u:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    .line 4143
    if-eqz v2, :cond_7e

    .line 4144
    const v0, 0x7f080168

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 4145
    if-eqz v0, :cond_1b

    .line 4147
    invoke-virtual {v2}, Lcom/bilibili/tv/api/video/BiliVideoDetail;->isLikeVideo()Z

    move-result v1

    if-eqz v1, :cond_7f

    const v1, 0x7f0700fb

    .line 4146
    :goto_18
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 4149
    :cond_1b
    const v0, 0x7f080169

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 4150
    if-eqz v0, :cond_31

    .line 4151
    invoke-virtual {v2}, Lcom/bilibili/tv/api/video/BiliVideoDetail;->isLikeVideo()Z

    move-result v1

    if-eqz v1, :cond_83

    const-string v1, "\u5df2\u70b9\u8d5e"

    :goto_2e
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4153
    :cond_31
    const v0, 0x7f08016b

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 4154
    if-eqz v0, :cond_48

    .line 4156
    invoke-virtual {v2}, Lcom/bilibili/tv/api/video/BiliVideoDetail;->isCoinVideo()Z

    move-result v1

    if-eqz v1, :cond_86

    const v1, 0x7f0700f9

    .line 4155
    :goto_45
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 4158
    :cond_48
    const v0, 0x7f08016c

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 4159
    if-eqz v0, :cond_5e

    .line 4160
    invoke-virtual {v2}, Lcom/bilibili/tv/api/video/BiliVideoDetail;->isCoinVideo()Z

    move-result v1

    if-eqz v1, :cond_8a

    const-string v1, "\u5df2\u6295\u5e01"

    :goto_5b
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4162
    :cond_5e
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->k:Landroid/widget/ImageView;

    .line 4163
    if-eqz v1, :cond_6e

    .line 4165
    invoke-virtual {v2}, Lcom/bilibili/tv/api/video/BiliVideoDetail;->isFavoriteVideo()Z

    move-result v0

    if-eqz v0, :cond_8d

    const v0, 0x7f07006a

    .line 4164
    :goto_6b
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 4167
    :cond_6e
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->l:Landroid/widget/TextView;

    .line 4168
    if-eqz v1, :cond_7e

    .line 4170
    invoke-virtual {v2}, Lcom/bilibili/tv/api/video/BiliVideoDetail;->isFavoriteVideo()Z

    move-result v0

    if-eqz v0, :cond_91

    const v0, 0x7f0c0167

    .line 4169
    :goto_7b
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 4173
    :cond_7e
    return-void

    .line 4147
    :cond_7f
    const v1, 0x7f0700fa

    goto :goto_18

    .line 4151
    :cond_83
    const-string v1, "\u70b9\u8d5e"

    goto :goto_2e

    .line 4156
    :cond_86
    const v1, 0x7f0700f8

    goto :goto_45

    .line 4160
    :cond_8a
    const-string v1, "\u6295\u5e01"

    goto :goto_5b

    .line 4165
    :cond_8d
    const v0, 0x7f070069

    goto :goto_6b

    .line 4170
    :cond_91
    const v0, 0x7f0c0166

    goto :goto_7b
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 4000
    const/4 v0, -0x1

    if-ne p2, v0, :cond_e

    const/16 v0, 0x2752

    if-eq p1, v0, :cond_b

    const/16 v0, 0x2753

    if-ne p1, v0, :cond_e

    .line 4001
    :cond_b
    invoke-direct {p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->n()V

    .line 4003
    :cond_e
    const/16 v0, 0x2754

    if-ne p1, v0, :cond_15

    .line 4004
    invoke-direct {p0, p2, p3}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->onPlayerReturned(ILandroid/content/Intent;)V

    .line 4006
    :cond_15
    invoke-super {p0, p1, p2, p3}, Lcom/bilibili/tv/ui/base/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 4007
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3926
    const-string v0, "v"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3927
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 3928
    const v1, 0x7f080167

    if-ne v0, v1, :cond_39

    .line 3929
    invoke-static {p0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v0

    .line 3930
    const-string v1, "BiliAccount.get(this)"

    invoke-static {v0, v1}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3931
    invoke-virtual {v0}, Lbl/mg;->a()Z

    move-result v0

    if-nez v0, :cond_25

    .line 3932
    const-string v0, "\u8d26\u53f7\u672a\u767b\u5f55\uff0c\u65e0\u6cd5\u70b9\u51fb"

    invoke-static {p0, v0}, Lbl/lr;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 3976
    :cond_24
    :goto_24
    return-void

    .line 3935
    :cond_25
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->u:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->u:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    invoke-virtual {v0}, Lcom/bilibili/tv/api/video/BiliVideoDetail;->isLikeVideo()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 3936
    invoke-direct {p0, v3}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->likeVideo(I)V

    goto :goto_24

    .line 3939
    :cond_35
    invoke-direct {p0, v2}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->likeVideo(I)V

    goto :goto_24

    .line 3941
    :cond_39
    const v1, 0x7f08016a

    if-ne v0, v1, :cond_57

    .line 3942
    invoke-static {p0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v0

    .line 3943
    const-string v1, "BiliAccount.get(this)"

    invoke-static {v0, v1}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3944
    invoke-virtual {v0}, Lbl/mg;->a()Z

    move-result v0

    if-nez v0, :cond_53

    .line 3945
    const-string v0, "\u8d26\u53f7\u672a\u767b\u5f55\uff0c\u65e0\u6cd5\u70b9\u51fb"

    invoke-static {p0, v0}, Lbl/lr;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_24

    .line 3948
    :cond_53
    invoke-direct {p0, v3, v2}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->coinVideo(II)V

    goto :goto_24

    .line 3950
    :cond_57
    const v1, 0x7f08014d

    if-ne v0, v1, :cond_75

    .line 3951
    invoke-static {p0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v0

    .line 3952
    const-string v1, "BiliAccount.get(this)"

    invoke-static {v0, v1}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3953
    invoke-virtual {v0}, Lbl/mg;->a()Z

    move-result v0

    if-nez v0, :cond_71

    .line 3954
    const-string v0, "\u8d26\u53f7\u672a\u767b\u5f55\uff0c\u65e0\u6cd5\u70b9\u51fb"

    invoke-static {p0, v0}, Lbl/lr;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_24

    .line 3957
    :cond_71
    invoke-direct {p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->showFavoriteMenu()V

    goto :goto_24

    .line 3958
    :cond_75
    const v1, 0x7f0801a1

    if-ne v0, v1, :cond_b3

    .line 3959
    invoke-static {p0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v0

    .line 3960
    const-string v1, "BiliAccount.get(this)"

    invoke-static {v0, v1}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3961
    invoke-virtual {v0}, Lbl/mg;->a()Z

    move-result v1

    if-nez v1, :cond_8f

    .line 3962
    const-string v0, "\u8d26\u53f7\u672a\u767b\u5f55\uff0c\u65e0\u6cd5\u70b9\u51fb"

    invoke-static {p0, v0}, Lbl/lr;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_24

    .line 3965
    :cond_8f
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->u:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    .line 3966
    if-eqz v1, :cond_24

    .line 3967
    invoke-static {v0}, Lmybl/CookieUtil;->getFullCookieWithDevice(Lbl/mg;)Ljava/lang/String;

    move-result-object v2

    .line 3968
    invoke-static {v0}, Lmybl/CookieUtil;->getBiliJct(Lbl/mg;)Ljava/lang/String;

    move-result-object v3

    .line 3969
    const-class v0, Lcom/bilibili/tv/api/history/BiliPlayerHistoryService;

    invoke-static {v0}, Lbl/vo;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/history/BiliPlayerHistoryService;

    iget-wide v4, v1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mAvid:J

    .line 3970
    invoke-interface {v0, v4, v5, v3, v2}, Lcom/bilibili/tv/api/history/BiliPlayerHistoryService;->addVideoToviews(JLjava/lang/String;Ljava/lang/String;)Lbl/vp;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$AddToViewResponse;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$AddToViewResponse;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)V

    .line 3971
    invoke-virtual {v0, v1}, Lbl/vp;->a(Lretrofit2/Callback;)V

    goto/16 :goto_24

    .line 3973
    :cond_b3
    const v1, 0x7f0801dc

    if-ne v0, v1, :cond_24

    .line 3974
    invoke-direct {p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->showVideoIntroPanel()V

    goto/16 :goto_24
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 269
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->o:Landroid/support/v7/widget/RecyclerView;

    .line 270
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->z:Z

    .line 274
    const/4 v0, 0x0

    sput-boolean v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->sNoHistoryPlayMode:Z

    .line 275
    invoke-super {p0}, Lcom/bilibili/tv/ui/base/BaseActivity;->onDestroy()V

    .line 276
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 3991
    const-string v0, "event"

    invoke-static {p2, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3992
    const/16 v0, 0x17

    if-eq p1, v0, :cond_d

    const/16 v0, 0x42

    if-ne p1, v0, :cond_18

    :cond_d
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->y:Z

    if-eqz v0, :cond_18

    .line 3993
    sget-object v0, Lcom/bilibili/tv/ui/account/LoginActivity;->Companion:Lcom/bilibili/tv/ui/account/LoginActivity$a;

    const/16 v1, 0x2752

    invoke-virtual {v0, p0, v1}, Lcom/bilibili/tv/ui/account/LoginActivity$a;->a(Landroid/app/Activity;I)V

    .line 3995
    :cond_18
    invoke-super {p0, p1, p2}, Lcom/bilibili/tv/ui/base/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public final onLongClick(Landroid/view/View;)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 877
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->u:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    .line 878
    const-string v0, "v"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 879
    invoke-static {p0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v0

    .line 880
    const-string v1, "BiliAccount.get(this)"

    invoke-static {v0, v1}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 881
    invoke-virtual {v0}, Lbl/mg;->a()Z

    move-result v0

    if-nez v0, :cond_25

    .line 882
    const v0, 0x7f0c0062

    invoke-static {p0, v0}, Lbl/lr;->a(Landroid/content/Context;I)V

    .line 883
    sget-object v0, Lcom/bilibili/tv/ui/account/LoginActivity;->Companion:Lcom/bilibili/tv/ui/account/LoginActivity$a;

    const/16 v1, 0x2753

    invoke-virtual {v0, p0, v1}, Lcom/bilibili/tv/ui/account/LoginActivity$a;->a(Landroid/app/Activity;I)V

    .line 891
    :cond_24
    :goto_24
    return v2

    .line 886
    :cond_25
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 887
    const v1, 0x7f080167

    if-ne v0, v1, :cond_32

    .line 888
    invoke-direct {p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->tripleVideo()V

    goto :goto_24

    .line 889
    :cond_32
    const v1, 0x7f08016a

    if-ne v0, v1, :cond_24

    .line 890
    const/4 v0, 0x2

    invoke-direct {p0, v0, v2}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->coinVideo(II)V

    goto :goto_24
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 3980
    invoke-super {p0}, Lcom/bilibili/tv/ui/base/BaseActivity;->onPause()V

    .line 3981
    return-void
.end method

.method public onPostCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 957
    invoke-super {p0, p1}, Lcom/bilibili/tv/ui/base/BaseActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 958
    invoke-direct {p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->n()V

    .line 959
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 3985
    invoke-super {p0}, Lcom/bilibili/tv/ui/base/BaseActivity;->onStop()V

    .line 3986
    return-void
.end method
