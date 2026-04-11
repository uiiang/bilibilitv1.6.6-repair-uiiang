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
        Lcom/bilibili/tv/ui/video/VideoDetailActivity$a;,
        Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;,
        Lcom/bilibili/tv/ui/video/VideoDetailActivity$h;,
        Lcom/bilibili/tv/ui/video/VideoDetailActivity$c;,
        Lcom/bilibili/tv/ui/video/VideoDetailActivity$f;,
        Lcom/bilibili/tv/ui/video/VideoDetailActivity$g;,
        Lcom/bilibili/tv/ui/video/VideoDetailActivity$EpisodesVideoAdapter;,
        Lcom/bilibili/tv/ui/video/VideoDetailActivity$e;,
        Lcom/bilibili/tv/ui/video/VideoDetailActivity$b;,
        Lcom/bilibili/tv/ui/video/VideoDetailActivity$d;,
        Lcom/bilibili/tv/ui/video/VideoDetailActivity$AddToViewResponse;,
        Lcom/bilibili/tv/ui/video/VideoDetailActivity$TripleResponse;,
        Lcom/bilibili/tv/ui/video/VideoDetailActivity$CoinResponse;,
        Lcom/bilibili/tv/ui/video/VideoDetailActivity$LikeResponse;,
        Lcom/bilibili/tv/ui/video/VideoDetailActivity$m;,
        Lcom/bilibili/tv/ui/video/VideoDetailActivity$l;,
        Lcom/bilibili/tv/ui/video/VideoDetailActivity$PgcLoadCallback;,
        Lcom/bilibili/tv/ui/video/VideoDetailActivity$BiliFavoriteBoxResponse;,
        Lcom/bilibili/tv/ui/video/VideoDetailActivity$k;,
        Lcom/bilibili/tv/ui/video/VideoDetailActivity$j;,
        Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonSectionView;,
        Lcom/bilibili/tv/ui/video/VideoDetailActivity$EntryType;
    }
.end annotation


# static fields
.field private static final C:Ljava/lang/String; = "VideoDetailActivity"

.field public static final Companion:Lcom/bilibili/tv/ui/video/VideoDetailActivity$a;

.field private static final D:Ljava/lang/String; = "bundle_ac_id"

.field private static final E:I = 0x6

.field private static final ENABLE_BANGUMI_JUMP:Z = false

.field private static final F:I = 0xc

.field private static final G:I = 0x2752

.field private static final H:I = 0x2753

.field private static final LIST_TYPE_EPISODES_VIDEO:I = 0x2

.field private static final LIST_TYPE_EP_LAYOUT:I = 0x1

.field private static final LIST_TYPE_NAV_TAG:I = 0x6

.field private static final LIST_TYPE_RELATE_VIDEO:I = 0x3

.field private static final LIST_TYPE_SEASON_SECTION:I = 0x5

.field private static final LIST_TYPE_TAG:I = 0x4

.field private static final REQUEST_CODE_PLAY_VIDEO:I = 0x2754

.field private static final SEASON_ID_KEY:Ljava/lang/String; = "bundle_season_id"

.field public static sNoHistoryPlayMode:Z


# instance fields
.field private A:Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;

.field private B:Z

.field private b:Landroid/widget/ImageView;

.field private blockEpisodeAutoFocus:Z

.field private cc:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private epLayoutFocusPosition:I

.field private episodesCardAdapter:Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;

.field private episodesVideoFocusPosition:I

.field public episodes_title:Landroid/widget/TextView;

.field public episodes_video:Landroid/support/v7/widget/RecyclerView;

.field public episodes_video_adapter:Lcom/bilibili/tv/ui/video/VideoDetailActivity$EpisodesVideoAdapter;

.field private expandBtn:Lcom/bilibili/tv/widget/DrawLinearLayout;

.field private ff:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private gradientMaskView:Landroid/view/View;

.field private hh:Landroid/widget/TextView;

.field private historyContainer:Landroid/widget/LinearLayout;

.field private historyLabel:Landroid/widget/TextView;

.field private historyPlayBtn:Lcom/bilibili/tv/widget/DrawTextView;

.field private historyPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

.field private historyProgress:Landroid/widget/TextView;

.field private historyTitle:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private infoBtn:Lcom/bilibili/tv/widget/DrawLinearLayout;

.field private j:Lcom/bilibili/tv/widget/DrawLinearLayout;

.field private k:Landroid/widget/ImageView;

.field private l:Landroid/widget/TextView;

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

.field private v:Lcom/bilibili/tv/ui/video/VideoDetailActivity$e;

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
    .line 156
    const/4 v0, 0x0

    sput-boolean v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->sNoHistoryPlayMode:Z

    .line 191
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

    .line 108
    invoke-direct {p0}, Lcom/bilibili/tv/ui/base/BaseActivity;-><init>()V

    .line 120
    sget-object v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$EntryType;->UGC_BY_AVID:Lcom/bilibili/tv/ui/video/VideoDetailActivity$EntryType;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->mEntryType:Lcom/bilibili/tv/ui/video/VideoDetailActivity$EntryType;

    .line 161
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->mIsPgcMode:Z

    .line 181
    iput v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->epLayoutFocusPosition:I

    .line 182
    iput v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->episodesVideoFocusPosition:I

    .line 183
    iput v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->relateVideoFocusPosition:I

    .line 184
    iput v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->tagViewFocusPosition:I

    .line 186
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonSectionFocusPositions:Ljava/util/Map;

    .line 188
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonSectionNavTagFocusPositions:Ljava/util/Map;

    .line 190
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->blockEpisodeAutoFocus:Z

    .line 205
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonSectionViews:Ljava/util/List;

    .line 206
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->ugcSeasonSections:Ljava/util/List;

    return-void
.end method

.method private final a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 2078
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2082
    :goto_6
    return-void

    .line 2081
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
    .line 2894
    const-string v0, "BangumiJump"

    const-string v1, "ENABLE_BANGUMI_JUMP is false, skip jump"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2895
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic access$000(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)V
    .locals 0

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->showInteractionButtons()V

    return-void
.end method

.method static synthetic access$100(Lcom/bilibili/tv/ui/video/VideoDetailActivity;I)Landroid/view/View;
    .locals 1

    .prologue
    .line 108
    invoke-virtual {p0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/widget/ScrollView;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->scrollView:Landroid/widget/ScrollView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 108
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->scrollToViewIfNeeded(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->staffContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)V
    .locals 0

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->resetStaffNameVisibility()V

    return-void
.end method

.method static synthetic access$1400(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/api/video/BiliVideoDetail;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->u:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/BiliVideoDetail;)Lcom/bilibili/tv/api/video/BiliVideoDetail;
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->u:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 108
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->q(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 108
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->p(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1702(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/PgcInfo;)Lcom/bilibili/tv/api/video/PgcInfo;
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->mPgcInfo:Lcom/bilibili/tv/api/video/PgcInfo;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/PgcInfo;)Lcom/bilibili/tv/api/video/BiliVideoDetail;
    .locals 1

    .prologue
    .line 108
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->convertPgcToBiliVideoDetail(Lcom/bilibili/tv/api/video/PgcInfo;)Lcom/bilibili/tv/api/video/BiliVideoDetail;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)J
    .locals 2

    .prologue
    .line 108
    iget-wide v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->s:J

    return-wide v0
.end method

.method static synthetic access$1902(Lcom/bilibili/tv/ui/video/VideoDetailActivity;J)J
    .locals 1

    .prologue
    .line 108
    iput-wide p1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->s:J

    return-wide p1
.end method

.method static synthetic access$200(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/support/v7/widget/RecyclerView;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->n:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->A:Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/PgcInfo;)V
    .locals 0

    .prologue
    .line 108
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->showPgcInfo(Lcom/bilibili/tv/api/video/PgcInfo;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/widget/CheckBox;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->noHistoryPlayCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/BiliVideoDetail;JI)V
    .locals 0

    .prologue
    .line 108
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->playVideo(Lcom/bilibili/tv/api/video/BiliVideoDetail;JI)V

    return-void
.end method

.method static synthetic access$2400(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/BiliVideoDetail;)V
    .locals 0

    .prologue
    .line 108
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->updateHistoryDisplay(Lcom/bilibili/tv/api/video/BiliVideoDetail;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/widget/DrawLinearLayout;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/BiliVideoDetail;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 108
    invoke-direct {p0, p1, p2}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->fallbackLoadHistory(Lcom/bilibili/tv/api/video/BiliVideoDetail;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/BiliVideoDetail;Lcom/bilibili/tv/api/video/PgcInfo;)V
    .locals 0

    .prologue
    .line 108
    invoke-direct {p0, p1, p2}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->updateBiliVideoDetailWithPgcInfo(Lcom/bilibili/tv/api/video/BiliVideoDetail;Lcom/bilibili/tv/api/video/PgcInfo;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->m:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/ui/base/LoadingImageView;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->p:Lcom/bilibili/tv/ui/base/LoadingImageView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)I
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->tagViewFocusPosition:I

    return v0
.end method

.method static synthetic access$3000(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->gradientMaskView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->cc:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->i:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/BiliVideoDetail;)V
    .locals 0

    .prologue
    .line 108
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->updateBasicVideoInfo(Lcom/bilibili/tv/api/video/BiliVideoDetail;)V

    return-void
.end method

.method static synthetic access$3400(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/BiliVideoDetail;)V
    .locals 0

    .prologue
    .line 108
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->initDefaultPlayButtons(Lcom/bilibili/tv/api/video/BiliVideoDetail;)V

    return-void
.end method

.method static synthetic access$3500(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/BiliVideoDetail;)V
    .locals 0

    .prologue
    .line 108
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->loadArchiveRelation(Lcom/bilibili/tv/api/video/BiliVideoDetail;)V

    return-void
.end method

.method static synthetic access$3600(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/BiliVideoDetail;)V
    .locals 0

    .prologue
    .line 108
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->loadHistory(Lcom/bilibili/tv/api/video/BiliVideoDetail;)V

    return-void
.end method

.method static synthetic access$3700(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/PgcInfo$Episode;I)Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;
    .locals 1

    .prologue
    .line 108
    invoke-direct {p0, p1, p2}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->convertEpisodeToPage(Lcom/bilibili/tv/api/video/PgcInfo$Episode;I)Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3800(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonSectionFocusPositions:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/widget/DrawLinearLayout;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->rePlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    return-object v0
.end method

.method static synthetic access$400(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Landroid/support/v7/widget/RecyclerView;I)Landroid/view/View;
    .locals 1

    .prologue
    .line 108
    invoke-direct {p0, p1, p2}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->restoreFocusPosition(Landroid/support/v7/widget/RecyclerView;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4000(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonSectionNavTagFocusPositions:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonSectionViews:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/bilibili/tv/ui/video/VideoDetailActivity;I)Lcom/bilibili/tv/ui/video/widget/VideoListSection;
    .locals 1

    .prologue
    .line 108
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->findVideoListSection(I)Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4300(Lcom/bilibili/tv/ui/video/VideoDetailActivity;I)I
    .locals 1

    .prologue
    .line 108
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->getSeasonSectionFocusPosition(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$4402(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Z)Z
    .locals 0

    .prologue
    .line 108
    iput-boolean p1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->B:Z

    return p1
.end method

.method static synthetic access$4500(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Z
    .locals 1

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->isAnyInteractionButtonFocused()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4600(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)V
    .locals 0

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->hideInteractionButtons()V

    return-void
.end method

.method static synthetic access$4800(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Z
    .locals 1

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->blockEpisodeAutoFocus:Z

    return v0
.end method

.method static synthetic access$4902(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Z)Z
    .locals 0

    .prologue
    .line 108
    iput-boolean p1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->y:Z

    return p1
.end method

.method static synthetic access$500(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/support/v7/widget/RecyclerView;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->o:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/ui/video/VideoDetailActivity$EntryType;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->mEntryType:Lcom/bilibili/tv/ui/video/VideoDetailActivity$EntryType;

    return-object v0
.end method

.method static synthetic access$5100(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/BiliVideoDetail;)Z
    .locals 1

    .prologue
    .line 108
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->isPgcVideo(Lcom/bilibili/tv/api/video/BiliVideoDetail;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5200(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/BiliVideoDetail;)V
    .locals 0

    .prologue
    .line 108
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->loadPgcInfo(Lcom/bilibili/tv/api/video/BiliVideoDetail;)V

    return-void
.end method

.method static synthetic access$5400(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/BiliVideoDetail;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 108
    invoke-direct {p0, p1, p2}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->requestHistoryForUgc(Lcom/bilibili/tv/api/video/BiliVideoDetail;Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$5500(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->uperContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$5600(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->e:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$5700(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->ff:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$5800(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)V
    .locals 0

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->refreshVisualOrder()V

    return-void
.end method

.method static synthetic access$600(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)I
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->epLayoutFocusPosition:I

    return v0
.end method

.method static synthetic access$6000(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/ui/video/VideoDetailActivity$g;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->x:Lcom/bilibili/tv/ui/video/VideoDetailActivity$g;

    return-object v0
.end method

.method static synthetic access$6100(Lcom/bilibili/tv/ui/video/VideoDetailActivity;I)Landroid/view/View;
    .locals 1

    .prologue
    .line 108
    invoke-virtual {p0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6200(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->g:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$6300(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->videoListNavigator:Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;

    return-object v0
.end method

.method static synthetic access$6400(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->ugcSeasonSections:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$6500(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/ui/video/widget/VideoListSection;I)V
    .locals 0

    .prologue
    .line 108
    invoke-direct {p0, p1, p2}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->setupNavigationTagsForSection(Lcom/bilibili/tv/ui/video/widget/VideoListSection;I)V

    return-void
.end method

.method static synthetic access$6600(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->hh:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)I
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->relateVideoFocusPosition:I

    return v0
.end method

.method static synthetic access$702(Lcom/bilibili/tv/ui/video/VideoDetailActivity;I)I
    .locals 0

    .prologue
    .line 108
    iput p1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->relateVideoFocusPosition:I

    return p1
.end method

.method static synthetic access$800(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/support/v7/widget/RecyclerView;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->r:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)I
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->episodesVideoFocusPosition:I

    return v0
.end method

.method static synthetic access$902(Lcom/bilibili/tv/ui/video/VideoDetailActivity;I)I
    .locals 0

    .prologue
    .line 108
    iput p1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->episodesVideoFocusPosition:I

    return p1
.end method

.method private final b(Lcom/bilibili/tv/api/video/BiliVideoDetail;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 2914
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mRedirectUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_104

    .line 2915
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mRedirectUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 2916
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 2917
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 2919
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

    .line 2920
    const-string v2, "/ss"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_90

    .line 2921
    const-string v2, "/ss"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 2922
    add-int/lit8 v2, v2, 0x3

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 2923
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move v0, v1

    .line 2924
    :goto_53
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_69

    .line 2925
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 2926
    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_69

    .line 2927
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2924
    add-int/lit8 v0, v0, 0x1

    goto :goto_53

    .line 2932
    :cond_69
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_104

    .line 2933
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

    .line 2934
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2964
    :goto_8f
    return-object v0

    .line 2936
    :cond_90
    const-string v2, "/ep"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_104

    .line 2937
    const-string v2, "/ep"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 2938
    add-int/lit8 v2, v2, 0x3

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 2939
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 2940
    :goto_a9
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_bf

    .line 2941
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 2942
    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_bf

    .line 2943
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2940
    add-int/lit8 v1, v1, 0x1

    goto :goto_a9

    .line 2948
    :cond_bf
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_104

    .line 2949
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2950
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

    .line 2951
    invoke-direct {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->fetchSeasonIdFromEpId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2952
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

    .line 2957
    :cond_104
    if-eqz p1, :cond_12d

    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mBangumiInfo:Lcom/bilibili/tv/api/video/BiliVideoDetail$BangumiInfo;

    :goto_108
    if-eqz v0, :cond_12f

    .line 2958
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mBangumiInfo:Lcom/bilibili/tv/api/video/BiliVideoDetail$BangumiInfo;

    iget-object v0, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$BangumiInfo;->mSeasonId:Ljava/lang/String;

    .line 2959
    const-string v1, "video.mBangumiInfo.mSeasonId"

    invoke-static {v0, v1}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2960
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

    .line 2957
    :cond_12d
    const/4 v0, 0x0

    goto :goto_108

    .line 2963
    :cond_12f
    const-string v0, "BangumiJump"

    const-string v1, "no seasonId found, returning empty"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2964
    const-string v0, ""

    goto/16 :goto_8f
.end method

.method private final coinVideo(II)V
    .locals 8

    .prologue
    .line 3315
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->B:Z

    if-eqz v0, :cond_5

    .line 3325
    :goto_4
    return-void

    .line 3318
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->B:Z

    .line 3319
    invoke-static {p0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v0

    .line 3320
    const-string v1, "BiliAccount.get(this)"

    invoke-static {v0, v1}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3321
    invoke-static {v0}, Lmybl/CookieUtil;->getFullCookieWithDevice(Lbl/mg;)Ljava/lang/String;

    move-result-object v7

    .line 3322
    invoke-static {v0}, Lmybl/CookieUtil;->getBiliJct(Lbl/mg;)Ljava/lang/String;

    move-result-object v6

    .line 3323
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

    .line 3324
    invoke-virtual {v0, v1}, Lbl/vp;->a(Lretrofit2/Callback;)V

    goto :goto_4
.end method

.method private convertEpisodeToBiliVideoDetail(Lcom/bilibili/tv/api/video/PgcInfo$Episode;)Lcom/bilibili/tv/api/video/BiliVideoDetail;
    .locals 6

    .prologue
    .line 2494
    new-instance v2, Lcom/bilibili/tv/api/video/BiliVideoDetail;

    invoke-direct {v2}, Lcom/bilibili/tv/api/video/BiliVideoDetail;-><init>()V

    .line 2495
    iget-wide v0, p1, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->aid:J

    iput-wide v0, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mAvid:J

    .line 2496
    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->bvid:Ljava/lang/String;

    iput-object v0, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mBvid:Ljava/lang/String;

    .line 2497
    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->cover:Ljava/lang/String;

    iput-object v0, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mCover:Ljava/lang/String;

    .line 2498
    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->showTitle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a9

    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->showTitle:Ljava/lang/String;

    .line 2499
    :goto_1b
    iput-object v0, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mTitle:Ljava/lang/String;

    .line 2500
    iget-wide v0, p1, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->duration:J

    const-wide/16 v4, 0x3e8

    div-long/2addr v0, v4

    long-to-int v0, v0

    iput v0, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mDuration:I

    .line 2501
    iget-wide v0, p1, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->pubTime:J

    iput-wide v0, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mCreatedTimestamp:J

    .line 2502
    iput-object p1, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail;->sourceEpisode:Ljava/lang/Object;

    .line 2503
    iget-wide v0, p1, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->cid:J

    iput-wide v0, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mCid:J

    .line 2505
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

    .line 2506
    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->badgeInfo:Lcom/bilibili/tv/api/video/PgcInfo$BadgeInfo;

    iget-object v0, v0, Lcom/bilibili/tv/api/video/PgcInfo$BadgeInfo;->text:Ljava/lang/String;

    iput-object v0, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail;->badgeText:Ljava/lang/String;

    .line 2507
    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->badgeInfo:Lcom/bilibili/tv/api/video/PgcInfo$BadgeInfo;

    iget-object v0, v0, Lcom/bilibili/tv/api/video/PgcInfo$BadgeInfo;->bgColor:Ljava/lang/String;

    iput-object v0, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail;->badgeBgColor:Ljava/lang/String;

    .line 2510
    :cond_4f
    new-instance v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Stat;

    invoke-direct {v0}, Lcom/bilibili/tv/api/video/BiliVideoDetail$Stat;-><init>()V

    .line 2511
    iget-object v1, p1, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->stat:Lcom/bilibili/tv/api/video/PgcInfo$EpisodeStat;

    if-eqz v1, :cond_b9

    .line 2512
    iget-object v1, p1, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->stat:Lcom/bilibili/tv/api/video/PgcInfo$EpisodeStat;

    iget-wide v4, v1, Lcom/bilibili/tv/api/video/PgcInfo$EpisodeStat;->play:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Stat;->mPlays:Ljava/lang/String;

    .line 2513
    iget-object v1, p1, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->stat:Lcom/bilibili/tv/api/video/PgcInfo$EpisodeStat;

    iget-wide v4, v1, Lcom/bilibili/tv/api/video/PgcInfo$EpisodeStat;->danmakus:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Stat;->mDanmakus:Ljava/lang/String;

    .line 2518
    :goto_6c
    iput-object v0, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mStat:Lcom/bilibili/tv/api/video/BiliVideoDetail$Stat;

    .line 2520
    new-instance v3, Lcom/bilibili/tv/api/video/BiliUser;

    invoke-direct {v3}, Lcom/bilibili/tv/api/video/BiliUser;-><init>()V

    .line 2521
    const-string v1, ""

    .line 2522
    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->statForUnity:Lcom/alibaba/fastjson/JSONObject;

    if-eqz v0, :cond_ce

    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->statForUnity:Lcom/alibaba/fastjson/JSONObject;

    const-string v4, "vt"

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ce

    .line 2523
    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->statForUnity:Lcom/alibaba/fastjson/JSONObject;

    const-string v4, "vt"

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    .line 2524
    if-eqz v4, :cond_ce

    .line 2525
    const-string v0, "pure_text"

    invoke-virtual {v4, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2526
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_c2

    .line 2536
    :cond_99
    :goto_99
    iput-object v0, v3, Lcom/bilibili/tv/api/video/BiliUser;->name:Ljava/lang/String;

    .line 2537
    iput-object v3, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mOwner:Lcom/bilibili/tv/api/video/BiliUser;

    .line 2538
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d0

    const/4 v1, 0x1

    :goto_a4
    iput-boolean v1, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail;->hideUpIcon:Z

    .line 2539
    iput-object v0, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail;->vtText:Ljava/lang/String;

    .line 2541
    return-object v2

    .line 2498
    :cond_a9
    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->longTitle:Ljava/lang/String;

    .line 2499
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b5

    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->longTitle:Ljava/lang/String;

    goto/16 :goto_1b

    :cond_b5
    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->title:Ljava/lang/String;

    goto/16 :goto_1b

    .line 2515
    :cond_b9
    const-string v1, "0"

    iput-object v1, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Stat;->mPlays:Ljava/lang/String;

    .line 2516
    const-string v1, "0"

    iput-object v1, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Stat;->mDanmakus:Ljava/lang/String;

    goto :goto_6c

    .line 2529
    :cond_c2
    const-string v0, "text"

    invoke-virtual {v4, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2530
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_99

    :cond_ce
    move-object v0, v1

    goto :goto_99

    .line 2538
    :cond_d0
    const/4 v1, 0x0

    goto :goto_a4
.end method

.method private convertEpisodeToPage(Lcom/bilibili/tv/api/video/PgcInfo$Episode;I)Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;
    .locals 6

    .prologue
    .line 2442
    new-instance v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;

    invoke-direct {v2}, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;-><init>()V

    .line 2443
    iget-wide v0, p1, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->cid:J

    iput-wide v0, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mCid:J

    .line 2444
    iput p2, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mPage:I

    .line 2445
    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->longTitle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_aa

    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->longTitle:Ljava/lang/String;

    :goto_15
    iput-object v0, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mTitle:Ljava/lang/String;

    .line 2446
    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->link:Ljava/lang/String;

    iput-object v0, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mLink:Ljava/lang/String;

    .line 2447
    iget v0, p1, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->id:I

    int-to-long v0, v0

    iput-wide v0, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mEpisodeId:J

    .line 2448
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->mPgcInfo:Lcom/bilibili/tv/api/video/PgcInfo;

    if-eqz v0, :cond_ae

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->mPgcInfo:Lcom/bilibili/tv/api/video/PgcInfo;

    iget v0, v0, Lcom/bilibili/tv/api/video/PgcInfo;->seasonId:I

    :goto_28
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mSeasonId:Ljava/lang/String;

    .line 2449
    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->cover:Ljava/lang/String;

    iput-object v0, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mEpCover:Ljava/lang/String;

    .line 2450
    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->bvid:Ljava/lang/String;

    iput-object v0, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mBvid:Ljava/lang/String;

    .line 2451
    iget-wide v0, p1, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->duration:J

    const-wide/16 v4, 0x3e8

    div-long/2addr v0, v4

    long-to-int v0, v0

    iput v0, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->duration:I

    .line 2452
    iget-wide v0, p1, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->pubTime:J

    iput-wide v0, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->pubTime:J

    .line 2454
    const-string v1, ""

    .line 2455
    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->statForUnity:Lcom/alibaba/fastjson/JSONObject;

    if-eqz v0, :cond_bd

    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->statForUnity:Lcom/alibaba/fastjson/JSONObject;

    const-string v3, "vt"

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bd

    .line 2456
    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->statForUnity:Lcom/alibaba/fastjson/JSONObject;

    const-string v3, "vt"

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v3

    .line 2457
    if-eqz v3, :cond_bd

    .line 2458
    const-string v0, "pure_text"

    invoke-virtual {v3, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2459
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_b1

    .line 2469
    :cond_68
    :goto_68
    iput-object v0, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->subtitle:Ljava/lang/String;

    .line 2471
    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->stat:Lcom/bilibili/tv/api/video/PgcInfo$EpisodeStat;

    if-eqz v0, :cond_7a

    .line 2472
    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->stat:Lcom/bilibili/tv/api/video/PgcInfo$EpisodeStat;

    iget-wide v0, v0, Lcom/bilibili/tv/api/video/PgcInfo$EpisodeStat;->play:J

    iput-wide v0, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->plays:J

    .line 2473
    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->stat:Lcom/bilibili/tv/api/video/PgcInfo$EpisodeStat;

    iget-wide v0, v0, Lcom/bilibili/tv/api/video/PgcInfo$EpisodeStat;->danmakus:J

    iput-wide v0, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->danmakus:J

    .line 2476
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

    .line 2477
    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->badgeInfo:Lcom/bilibili/tv/api/video/PgcInfo$BadgeInfo;

    iget-object v0, v0, Lcom/bilibili/tv/api/video/PgcInfo$BadgeInfo;->text:Ljava/lang/String;

    iput-object v0, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->badgeText:Ljava/lang/String;

    .line 2478
    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->badgeInfo:Lcom/bilibili/tv/api/video/PgcInfo$BadgeInfo;

    iget-object v0, v0, Lcom/bilibili/tv/api/video/PgcInfo$BadgeInfo;->bgColor:Ljava/lang/String;

    iput-object v0, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->badgeBgColor:Ljava/lang/String;

    .line 2481
    :cond_9a
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->mPgcInfo:Lcom/bilibili/tv/api/video/PgcInfo;

    if-eqz v0, :cond_a9

    .line 2482
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->mPgcInfo:Lcom/bilibili/tv/api/video/PgcInfo;

    iget v0, v0, Lcom/bilibili/tv/api/video/PgcInfo;->type:I

    .line 2483
    const/4 v1, 0x2

    if-ne v0, v1, :cond_bf

    .line 2484
    const-string v0, "movie"

    iput-object v0, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mFrom:Ljava/lang/String;

    .line 2490
    :cond_a9
    :goto_a9
    return-object v2

    .line 2445
    :cond_aa
    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->title:Ljava/lang/String;

    goto/16 :goto_15

    .line 2448
    :cond_ae
    const/4 v0, 0x0

    goto/16 :goto_28

    .line 2462
    :cond_b1
    const-string v0, "text"

    invoke-virtual {v3, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2463
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_68

    :cond_bd
    move-object v0, v1

    goto :goto_68

    .line 2486
    :cond_bf
    const-string v0, "bangumi"

    iput-object v0, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mFrom:Ljava/lang/String;

    goto :goto_a9
.end method

.method private convertPgcToBiliVideoDetail(Lcom/bilibili/tv/api/video/PgcInfo;)Lcom/bilibili/tv/api/video/BiliVideoDetail;
    .locals 10

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 1549
    new-instance v4, Lcom/bilibili/tv/api/video/BiliVideoDetail;

    invoke-direct {v4}, Lcom/bilibili/tv/api/video/BiliVideoDetail;-><init>()V

    .line 1551
    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo;->title:Ljava/lang/String;

    iput-object v0, v4, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mTitle:Ljava/lang/String;

    .line 1552
    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo;->cover:Ljava/lang/String;

    iput-object v0, v4, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mCover:Ljava/lang/String;

    .line 1553
    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo;->episodes:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/PgcInfo$Episode;

    .line 1554
    iget-wide v6, v0, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->aid:J

    iput-wide v6, v4, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mAvid:J

    .line 1555
    iget-object v5, v0, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->bvid:Ljava/lang/String;

    iput-object v5, v4, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mBvid:Ljava/lang/String;

    .line 1556
    iget v5, p1, Lcom/bilibili/tv/api/video/PgcInfo;->seasonId:I

    iput v5, v4, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mSeasonOId:I

    .line 1557
    iget-wide v6, v0, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->duration:J

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    long-to-int v5, v6

    iput v5, v4, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mDuration:I

    .line 1558
    iget-wide v6, v0, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->pubTime:J

    iput-wide v6, v4, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mCreatedTimestamp:J

    .line 1560
    new-instance v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$BangumiInfo;

    invoke-direct {v0}, Lcom/bilibili/tv/api/video/BiliVideoDetail$BangumiInfo;-><init>()V

    iput-object v0, v4, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mBangumiInfo:Lcom/bilibili/tv/api/video/BiliVideoDetail$BangumiInfo;

    .line 1561
    iget-object v0, v4, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mBangumiInfo:Lcom/bilibili/tv/api/video/BiliVideoDetail$BangumiInfo;

    iget v5, p1, Lcom/bilibili/tv/api/video/PgcInfo;->seasonId:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$BangumiInfo;->mSeasonId:Ljava/lang/String;

    .line 1562
    iget-object v0, v4, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mBangumiInfo:Lcom/bilibili/tv/api/video/BiliVideoDetail$BangumiInfo;

    iget-object v5, p1, Lcom/bilibili/tv/api/video/PgcInfo;->title:Ljava/lang/String;

    iput-object v5, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$BangumiInfo;->mTitle:Ljava/lang/String;

    .line 1564
    new-instance v0, Lcom/bilibili/tv/api/video/BiliUser;

    invoke-direct {v0}, Lcom/bilibili/tv/api/video/BiliUser;-><init>()V

    iput-object v0, v4, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mOwner:Lcom/bilibili/tv/api/video/BiliUser;

    .line 1565
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v4, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mStaffList:Ljava/util/List;

    .line 1567
    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo;->producer:Lcom/bilibili/tv/api/video/PgcInfo$Producer;

    if-eqz v0, :cond_10b

    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo;->producer:Lcom/bilibili/tv/api/video/PgcInfo$Producer;

    iget-object v0, v0, Lcom/bilibili/tv/api/video/PgcInfo$Producer;->list:Ljava/util/List;

    if-eqz v0, :cond_10b

    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo;->producer:Lcom/bilibili/tv/api/video/PgcInfo$Producer;

    iget-object v0, v0, Lcom/bilibili/tv/api/video/PgcInfo$Producer;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10b

    .line 1568
    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo;->producer:Lcom/bilibili/tv/api/video/PgcInfo$Producer;

    iget-object v0, v0, Lcom/bilibili/tv/api/video/PgcInfo$Producer;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_71
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_94

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/PgcInfo$ProducerInfo;

    .line 1569
    new-instance v6, Lcom/bilibili/tv/api/video/BiliVideoDetail$Staff;

    invoke-direct {v6}, Lcom/bilibili/tv/api/video/BiliVideoDetail$Staff;-><init>()V

    .line 1570
    iget-wide v8, v0, Lcom/bilibili/tv/api/video/PgcInfo$ProducerInfo;->mid:J

    iput-wide v8, v6, Lcom/bilibili/tv/api/video/BiliVideoDetail$Staff;->mid:J

    .line 1571
    iget-object v7, v0, Lcom/bilibili/tv/api/video/PgcInfo$ProducerInfo;->name:Ljava/lang/String;

    iput-object v7, v6, Lcom/bilibili/tv/api/video/BiliVideoDetail$Staff;->name:Ljava/lang/String;

    .line 1572
    iget-object v0, v0, Lcom/bilibili/tv/api/video/PgcInfo$ProducerInfo;->face:Ljava/lang/String;

    iput-object v0, v6, Lcom/bilibili/tv/api/video/BiliVideoDetail$Staff;->face:Ljava/lang/String;

    .line 1573
    iget-object v0, v4, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mStaffList:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_71

    .line 1575
    :cond_94
    iget-object v5, v4, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mOwner:Lcom/bilibili/tv/api/video/BiliUser;

    iget-object v0, v4, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mStaffList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Staff;

    iget-wide v6, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Staff;->mid:J

    iput-wide v6, v5, Lcom/bilibili/tv/api/video/BiliUser;->mid:J

    .line 1576
    iget-object v5, v4, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mOwner:Lcom/bilibili/tv/api/video/BiliUser;

    iget-object v0, v4, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mStaffList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Staff;

    iget-object v0, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Staff;->name:Ljava/lang/String;

    iput-object v0, v5, Lcom/bilibili/tv/api/video/BiliUser;->name:Ljava/lang/String;

    .line 1577
    iget-object v5, v4, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mOwner:Lcom/bilibili/tv/api/video/BiliUser;

    iget-object v0, v4, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mStaffList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Staff;

    iget-object v0, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Staff;->face:Ljava/lang/String;

    iput-object v0, v5, Lcom/bilibili/tv/api/video/BiliUser;->face:Ljava/lang/String;

    .line 1593
    :goto_be
    new-instance v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Stat;

    invoke-direct {v0}, Lcom/bilibili/tv/api/video/BiliVideoDetail$Stat;-><init>()V

    iput-object v0, v4, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mStat:Lcom/bilibili/tv/api/video/BiliVideoDetail$Stat;

    .line 1594
    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo;->stat:Lcom/bilibili/tv/api/video/PgcInfo$Stat;

    if-eqz v0, :cond_e1

    .line 1595
    iget-object v0, v4, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mStat:Lcom/bilibili/tv/api/video/BiliVideoDetail$Stat;

    iget-object v5, p1, Lcom/bilibili/tv/api/video/PgcInfo;->stat:Lcom/bilibili/tv/api/video/PgcInfo$Stat;

    iget-wide v6, v5, Lcom/bilibili/tv/api/video/PgcInfo$Stat;->views:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Stat;->mPlays:Ljava/lang/String;

    .line 1596
    iget-object v0, v4, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mStat:Lcom/bilibili/tv/api/video/BiliVideoDetail$Stat;

    iget-object v5, p1, Lcom/bilibili/tv/api/video/PgcInfo;->stat:Lcom/bilibili/tv/api/video/PgcInfo$Stat;

    iget-wide v6, v5, Lcom/bilibili/tv/api/video/PgcInfo$Stat;->danmakus:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Stat;->mDanmakus:Ljava/lang/String;

    .line 1599
    :cond_e1
    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo;->evaluate:Ljava/lang/String;

    iput-object v0, v4, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mDescription:Ljava/lang/String;

    .line 1601
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v4, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    .line 1602
    :goto_ec
    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo;->episodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_157

    .line 1603
    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo;->episodes:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/PgcInfo$Episode;

    .line 1604
    add-int/lit8 v5, v1, 0x1

    invoke-direct {p0, v0, v5}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->convertEpisodeToPage(Lcom/bilibili/tv/api/video/PgcInfo$Episode;I)Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;

    move-result-object v0

    .line 1605
    iget-object v5, v4, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1602
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_ec

    .line 1578
    :cond_10b
    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo;->upInfo:Lcom/bilibili/tv/api/video/PgcInfo$UpInfo;

    if-eqz v0, :cond_145

    .line 1579
    iget-object v0, v4, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mOwner:Lcom/bilibili/tv/api/video/BiliUser;

    iget-object v5, p1, Lcom/bilibili/tv/api/video/PgcInfo;->upInfo:Lcom/bilibili/tv/api/video/PgcInfo$UpInfo;

    iget-wide v6, v5, Lcom/bilibili/tv/api/video/PgcInfo$UpInfo;->mid:J

    iput-wide v6, v0, Lcom/bilibili/tv/api/video/BiliUser;->mid:J

    .line 1580
    iget-object v0, v4, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mOwner:Lcom/bilibili/tv/api/video/BiliUser;

    iget-object v5, p1, Lcom/bilibili/tv/api/video/PgcInfo;->upInfo:Lcom/bilibili/tv/api/video/PgcInfo$UpInfo;

    iget-object v5, v5, Lcom/bilibili/tv/api/video/PgcInfo$UpInfo;->name:Ljava/lang/String;

    iput-object v5, v0, Lcom/bilibili/tv/api/video/BiliUser;->name:Ljava/lang/String;

    .line 1581
    iget-object v0, v4, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mOwner:Lcom/bilibili/tv/api/video/BiliUser;

    iget-object v5, p1, Lcom/bilibili/tv/api/video/PgcInfo;->upInfo:Lcom/bilibili/tv/api/video/PgcInfo$UpInfo;

    iget-object v5, v5, Lcom/bilibili/tv/api/video/PgcInfo$UpInfo;->face:Ljava/lang/String;

    iput-object v5, v0, Lcom/bilibili/tv/api/video/BiliUser;->face:Ljava/lang/String;

    .line 1582
    new-instance v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Staff;

    invoke-direct {v0}, Lcom/bilibili/tv/api/video/BiliVideoDetail$Staff;-><init>()V

    .line 1583
    iget-object v5, p1, Lcom/bilibili/tv/api/video/PgcInfo;->upInfo:Lcom/bilibili/tv/api/video/PgcInfo$UpInfo;

    iget-wide v6, v5, Lcom/bilibili/tv/api/video/PgcInfo$UpInfo;->mid:J

    iput-wide v6, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Staff;->mid:J

    .line 1584
    iget-object v5, p1, Lcom/bilibili/tv/api/video/PgcInfo;->upInfo:Lcom/bilibili/tv/api/video/PgcInfo$UpInfo;

    iget-object v5, v5, Lcom/bilibili/tv/api/video/PgcInfo$UpInfo;->name:Ljava/lang/String;

    iput-object v5, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Staff;->name:Ljava/lang/String;

    .line 1585
    iget-object v5, p1, Lcom/bilibili/tv/api/video/PgcInfo;->upInfo:Lcom/bilibili/tv/api/video/PgcInfo$UpInfo;

    iget-object v5, v5, Lcom/bilibili/tv/api/video/PgcInfo$UpInfo;->face:Ljava/lang/String;

    iput-object v5, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Staff;->face:Ljava/lang/String;

    .line 1586
    iget-object v5, v4, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mStaffList:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_be

    .line 1588
    :cond_145
    iget-object v0, v4, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mOwner:Lcom/bilibili/tv/api/video/BiliUser;

    iput-wide v2, v0, Lcom/bilibili/tv/api/video/BiliUser;->mid:J

    .line 1589
    iget-object v0, v4, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mOwner:Lcom/bilibili/tv/api/video/BiliUser;

    const-string v5, ""

    iput-object v5, v0, Lcom/bilibili/tv/api/video/BiliUser;->name:Ljava/lang/String;

    .line 1590
    iget-object v0, v4, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mOwner:Lcom/bilibili/tv/api/video/BiliUser;

    const-string v5, ""

    iput-object v5, v0, Lcom/bilibili/tv/api/video/BiliUser;->face:Ljava/lang/String;

    goto/16 :goto_be

    .line 1608
    :cond_157
    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo;->userStatus:Lcom/bilibili/tv/api/video/PgcInfo$UserStatus;

    if-eqz v0, :cond_193

    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo;->userStatus:Lcom/bilibili/tv/api/video/PgcInfo$UserStatus;

    iget-object v0, v0, Lcom/bilibili/tv/api/video/PgcInfo$UserStatus;->progress:Lcom/bilibili/tv/api/video/PgcInfo$Progress;

    if-eqz v0, :cond_193

    .line 1609
    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo;->userStatus:Lcom/bilibili/tv/api/video/PgcInfo$UserStatus;

    iget-object v0, v0, Lcom/bilibili/tv/api/video/PgcInfo$UserStatus;->progress:Lcom/bilibili/tv/api/video/PgcInfo$Progress;

    .line 1610
    iget-wide v6, v0, Lcom/bilibili/tv/api/video/PgcInfo$Progress;->lastEpId:J

    .line 1611
    iget v5, v0, Lcom/bilibili/tv/api/video/PgcInfo$Progress;->lastTime:I

    .line 1614
    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo;->episodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_16f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_194

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/PgcInfo$Episode;

    .line 1615
    iget v8, v0, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->id:I

    int-to-long v8, v8

    cmp-long v8, v8, v6

    if-nez v8, :cond_16f

    .line 1616
    iget-wide v0, v0, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->cid:J

    .line 1621
    :goto_184
    cmp-long v2, v0, v2

    if-lez v2, :cond_193

    .line 1622
    new-instance v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$History;

    invoke-direct {v2}, Lcom/bilibili/tv/api/video/BiliVideoDetail$History;-><init>()V

    .line 1623
    iput-wide v0, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$History;->mCid:J

    .line 1624
    iput v5, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$History;->mProgress:I

    .line 1625
    iput-object v2, v4, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mHistory:Lcom/bilibili/tv/api/video/BiliVideoDetail$History;

    .line 1629
    :cond_193
    return-object v4

    :cond_194
    move-wide v0, v2

    goto :goto_184
.end method

.method private createPgcEpisodesSectionView(Lcom/bilibili/tv/api/video/PgcInfo;)V
    .locals 10

    .prologue
    const/16 v9, 0xc8

    const/16 v8, 0x8

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 2569
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonsContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_11

    if-eqz p1, :cond_11

    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo;->episodes:Ljava/util/List;

    if-nez v0, :cond_12

    .line 2651
    :cond_11
    :goto_11
    return-void

    .line 2573
    :cond_12
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1f

    .line 2574
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2577
    :cond_1f
    new-instance v3, Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    invoke-direct {v3, p0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;-><init>(Landroid/content/Context;)V

    .line 2579
    invoke-virtual {v3, v9}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setSectionId(I)V

    .line 2581
    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo;->episodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    .line 2582
    const-string v0, "\u9009\u96c6"

    invoke-virtual {v3, v0, v6}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setTitle(Ljava/lang/String;I)V

    .line 2584
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    .line 2585
    :goto_38
    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo;->episodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_53

    .line 2586
    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo;->episodes:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/PgcInfo$Episode;

    .line 2587
    invoke-direct {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->convertEpisodeToBiliVideoDetail(Lcom/bilibili/tv/api/video/PgcInfo$Episode;)Lcom/bilibili/tv/api/video/BiliVideoDetail;

    move-result-object v0

    .line 2589
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2585
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_38

    .line 2592
    :cond_53
    new-instance v0, Lcom/bilibili/tv/ui/video/widget/UnifiedVideoCardBinder;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/bilibili/tv/ui/video/widget/UnifiedVideoCardBinder;-><init>(I)V

    .line 2593
    invoke-virtual {v3, v7, v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setData(Ljava/util/List;Lcom/bilibili/tv/ui/video/widget/VideoCardBinder;)V

    .line 2595
    iget-wide v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->s:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_67

    .line 2596
    iget-wide v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->s:J

    invoke-virtual {v3, v0, v1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setCurrentVideoId(J)V

    .line 2600
    :cond_67
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->u:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    if-eqz v0, :cond_da

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->u:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    iget-object v0, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mHistory:Lcom/bilibili/tv/api/video/BiliVideoDetail$History;

    if-eqz v0, :cond_da

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->u:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    iget-object v0, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mHistory:Lcom/bilibili/tv/api/video/BiliVideoDetail$History;

    iget-wide v0, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$History;->mCid:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_da

    .line 2601
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->u:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    iget-object v0, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mHistory:Lcom/bilibili/tv/api/video/BiliVideoDetail$History;

    iget-wide v0, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$History;->mCid:J

    .line 2603
    :goto_81
    cmp-long v4, v0, v4

    if-lez v4, :cond_88

    .line 2604
    invoke-virtual {v3, v0, v1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setCurrentCid(J)V

    .line 2606
    :cond_88
    invoke-virtual {v3, v2}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setInterceptCurrentVideoClick(Z)V

    .line 2608
    new-instance v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$23;

    invoke-direct {v0, p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$23;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)V

    invoke-virtual {v3, v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setOnVideoClickListener(Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnVideoClickListener;)V

    .line 2627
    invoke-virtual {v3}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    .line 2628
    if-eqz v0, :cond_9f

    .line 2629
    const v1, 0x7f08016a

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setNextFocusUpId(I)V

    .line 2632
    :cond_9f
    new-instance v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonSectionView;

    invoke-virtual {v3}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->getTitleView()Landroid/widget/TextView;

    move-result-object v4

    invoke-direct {v1, v4, v0, v9}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonSectionView;-><init>(Landroid/widget/TextView;Landroid/support/v7/widget/RecyclerView;I)V

    .line 2633
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonSectionViews:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2634
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->ugcSeasonSections:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2635
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->videoListNavigator:Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;

    if-eqz v0, :cond_bb

    .line 2636
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->videoListNavigator:Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->registerSection(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)V

    .line 2639
    :cond_bb
    invoke-virtual {v3}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->scrollToCurrentVideo()V

    .line 2641
    invoke-direct {p0, v3, v6}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->setupNavigationTagsForSection(Lcom/bilibili/tv/ui/video/widget/VideoListSection;I)V

    .line 2643
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 2645
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->hh:Landroid/widget/TextView;

    if-eqz v0, :cond_cf

    .line 2646
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->hh:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2648
    :cond_cf
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->o:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_11

    .line 2649
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->o:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v8}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    goto/16 :goto_11

    :cond_da
    move-wide v0, v4

    goto :goto_81
.end method

.method private createPgcSectionView(Lcom/bilibili/tv/api/video/PgcInfo$Section;I)V
    .locals 6

    .prologue
    .line 2837
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonsContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_10

    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo$Section;->episodes:Ljava/util/List;

    if-eqz v0, :cond_10

    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo$Section;->episodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 2890
    :cond_10
    :goto_10
    return-void

    .line 2841
    :cond_11
    new-instance v2, Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    invoke-direct {v2, p0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;-><init>(Landroid/content/Context;)V

    .line 2843
    invoke-virtual {v2, p2}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setSectionId(I)V

    .line 2845
    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo$Section;->episodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 2846
    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo$Section;->title:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setTitle(Ljava/lang/String;I)V

    .line 2848
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2849
    const/4 v0, 0x0

    move v1, v0

    :goto_2b
    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo$Section;->episodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_46

    .line 2850
    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo$Section;->episodes:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/PgcInfo$Episode;

    .line 2851
    invoke-direct {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->convertEpisodeToBiliVideoDetail(Lcom/bilibili/tv/api/video/PgcInfo$Episode;)Lcom/bilibili/tv/api/video/BiliVideoDetail;

    move-result-object v0

    .line 2852
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2849
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2b

    .line 2855
    :cond_46
    new-instance v0, Lcom/bilibili/tv/ui/video/widget/UnifiedVideoCardBinder;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/bilibili/tv/ui/video/widget/UnifiedVideoCardBinder;-><init>(I)V

    .line 2856
    invoke-virtual {v2, v4, v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setData(Ljava/util/List;Lcom/bilibili/tv/ui/video/widget/VideoCardBinder;)V

    .line 2858
    iget-wide v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->s:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-lez v0, :cond_5c

    .line 2859
    iget-wide v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->s:J

    invoke-virtual {v2, v0, v1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setCurrentVideoId(J)V

    .line 2862
    :cond_5c
    new-instance v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$28;

    invoke-direct {v0, p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$28;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)V

    invoke-virtual {v2, v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setOnVideoClickListener(Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnVideoClickListener;)V

    .line 2872
    invoke-virtual {v2}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    .line 2873
    if-eqz v0, :cond_70

    .line 2874
    const v1, 0x7f08016a

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setNextFocusUpId(I)V

    .line 2877
    :cond_70
    new-instance v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonSectionView;

    invoke-virtual {v2}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->getTitleView()Landroid/widget/TextView;

    move-result-object v4

    invoke-direct {v1, v4, v0, p2}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonSectionView;-><init>(Landroid/widget/TextView;Landroid/support/v7/widget/RecyclerView;I)V

    .line 2878
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonSectionViews:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2880
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->ugcSeasonSections:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2881
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->videoListNavigator:Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;

    if-eqz v0, :cond_8c

    .line 2882
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->videoListNavigator:Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->registerSection(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)V

    .line 2885
    :cond_8c
    invoke-virtual {v2}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->scrollToCurrentVideo()V

    .line 2887
    invoke-direct {p0, v2, v3}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->setupNavigationTagsForSection(Lcom/bilibili/tv/ui/video/widget/VideoListSection;I)V

    .line 2889
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_10
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
    .line 2779
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonsContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_c

    if-eqz p1, :cond_c

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2834
    :cond_c
    :goto_c
    return-void

    .line 2783
    :cond_d
    new-instance v1, Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;-><init>(Landroid/content/Context;)V

    .line 2785
    invoke-virtual {v1, p2}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setSectionId(I)V

    .line 2787
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 2788
    const-string v0, "\u591a\u5b63\u5217\u8868"

    invoke-virtual {v1, v0, v2}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setTitle(Ljava/lang/String;I)V

    .line 2790
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2791
    const/4 v0, 0x0

    :goto_24
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_34

    .line 2792
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2791
    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    .line 2795
    :cond_34
    new-instance v0, Lcom/bilibili/tv/ui/video/widget/PgcSeasonBinder;

    invoke-direct {v0}, Lcom/bilibili/tv/ui/video/widget/PgcSeasonBinder;-><init>()V

    .line 2796
    invoke-virtual {v1, v3, v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setData(Ljava/util/List;Lcom/bilibili/tv/ui/video/widget/VideoCardBinder;)V

    .line 2798
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->mSeasonId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4d

    .line 2800
    :try_start_44
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->mSeasonId:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2801
    invoke-virtual {v1, v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setCurrentSeasonId(I)V
    :try_end_4d
    .catch Ljava/lang/NumberFormatException; {:try_start_44 .. :try_end_4d} :catch_89

    .line 2806
    :cond_4d
    :goto_4d
    new-instance v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$27;

    invoke-direct {v0, p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$27;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)V

    invoke-virtual {v1, v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setOnVideoClickListener(Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnVideoClickListener;)V

    .line 2816
    invoke-virtual {v1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    .line 2817
    if-eqz v0, :cond_61

    .line 2818
    const v3, 0x7f08016a

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->setNextFocusUpId(I)V

    .line 2821
    :cond_61
    new-instance v3, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonSectionView;

    invoke-virtual {v1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->getTitleView()Landroid/widget/TextView;

    move-result-object v4

    invoke-direct {v3, v4, v0, p2}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonSectionView;-><init>(Landroid/widget/TextView;Landroid/support/v7/widget/RecyclerView;I)V

    .line 2822
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonSectionViews:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2824
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->ugcSeasonSections:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2825
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->videoListNavigator:Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;

    if-eqz v0, :cond_7d

    .line 2826
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->videoListNavigator:Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->registerSection(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)V

    .line 2829
    :cond_7d
    invoke-virtual {v1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->scrollToCurrentVideo()V

    .line 2831
    invoke-direct {p0, v1, v2}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->setupNavigationTagsForSection(Lcom/bilibili/tv/ui/video/widget/VideoListSection;I)V

    .line 2833
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_c

    .line 2802
    :catch_89
    move-exception v0

    goto :goto_4d
.end method

.method private extractSeasonId(Lcom/bilibili/tv/api/video/BiliVideoDetail;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 2114
    if-nez p1, :cond_6

    .line 2115
    const-string v0, ""

    .line 2158
    :goto_5
    return-object v0

    .line 2117
    :cond_6
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mRedirectUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a0

    .line 2118
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mRedirectUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 2119
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 2120
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 2122
    :cond_26
    const-string v2, "/ss"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_61

    .line 2123
    const-string v2, "/ss"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 2124
    add-int/lit8 v2, v2, 0x3

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 2125
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move v0, v1

    .line 2126
    :goto_40
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_56

    .line 2127
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 2128
    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_56

    .line 2129
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2126
    add-int/lit8 v0, v0, 0x1

    goto :goto_40

    .line 2134
    :cond_56
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_a0

    .line 2135
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 2137
    :cond_61
    const-string v2, "/ep"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a0

    .line 2138
    const-string v2, "/ep"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 2139
    add-int/lit8 v2, v2, 0x3

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 2140
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 2141
    :goto_7a
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_90

    .line 2142
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 2143
    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_90

    .line 2144
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2141
    add-int/lit8 v1, v1, 0x1

    goto :goto_7a

    .line 2149
    :cond_90
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_a0

    .line 2150
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2151
    invoke-direct {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->fetchSeasonIdFromEpId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_5

    .line 2155
    :cond_a0
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mBangumiInfo:Lcom/bilibili/tv/api/video/BiliVideoDetail$BangumiInfo;

    if-eqz v0, :cond_aa

    .line 2156
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mBangumiInfo:Lcom/bilibili/tv/api/video/BiliVideoDetail$BangumiInfo;

    iget-object v0, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$BangumiInfo;->mSeasonId:Ljava/lang/String;

    goto/16 :goto_5

    .line 2158
    :cond_aa
    const-string v0, ""

    goto/16 :goto_5
.end method

.method private final fallbackLoadHistory(Lcom/bilibili/tv/api/video/BiliVideoDetail;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 1877
    new-instance v0, Lcom/bilibili/tv/api/video/VideoApiService$VideoParamsMapV2$Builder;

    iget-wide v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->s:J

    invoke-direct {v0, v2, v3}, Lcom/bilibili/tv/api/video/VideoApiService$VideoParamsMapV2$Builder;-><init>(J)V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/api/video/VideoApiService$VideoParamsMapV2$Builder;->setAutoPlay(Ljava/lang/String;)Lcom/bilibili/tv/api/video/VideoApiService$VideoParamsMapV2$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/api/video/VideoApiService$VideoParamsMapV2$Builder;->build()Lcom/bilibili/tv/api/video/VideoApiService$VideoParamsMapV2;

    move-result-object v1

    .line 1878
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1879
    const-string v2, "https://app.bilibili.com/x/v2/view?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1880
    const-string v2, "plat=0&aid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->s:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1881
    const-string v2, "&autoplay=0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1882
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3a

    .line 1883
    const-string v2, "&access_key="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1886
    :cond_3a
    const-class v0, Lcom/bilibili/tv/api/video/VideoApiService;

    invoke-static {v0}, Lbl/vo;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/VideoApiService;

    invoke-interface {v0, v1, p2}, Lcom/bilibili/tv/api/video/VideoApiService;->getVideoDetails(Lcom/bilibili/tv/api/video/VideoApiService$VideoParamsMapV2;Ljava/lang/String;)Lbl/vp;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$21;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$21;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)V

    .line 1889
    invoke-virtual {v0, v1}, Lbl/vp;->a(Lbl/vu;)Lbl/vp;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$20;

    invoke-direct {v1, p0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$20;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/BiliVideoDetail;)V

    .line 1904
    invoke-virtual {v0, v1}, Lbl/vp;->a(Lretrofit2/Callback;)V

    .line 1933
    return-void
.end method

.method private fetchSeasonIdFromEpId(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 2969
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://api.bilibili.com/pgc/view/web/season?ep_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2970
    const-string v1, "BangumiJump"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fetching seasonId from: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2971
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    .line 2972
    new-instance v2, Lcom/bilibili/tv/ui/video/VideoDetailActivity$29;

    invoke-direct {v2, p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$29;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 2988
    const-wide/16 v2, 0x5

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v3, v1}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 2989
    const-string v2, "BangumiJump"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "API response: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v0, :cond_9b

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_55
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2990
    if-eqz v0, :cond_be

    const-string v1, "result"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_be

    .line 2991
    const-string v1, "result"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 2992
    const-string v1, "season_id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_be

    .line 2993
    const-string v1, "season_id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 2994
    const-string v1, "BangumiJump"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "got season_id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3002
    :goto_9a
    return-object v0

    .line 2989
    :cond_9b
    const-string v1, "null"
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9d} :catch_9e

    goto :goto_55

    .line 2998
    :catch_9e
    move-exception v0

    .line 2999
    const-string v1, "BangumiJump"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fetchSeasonIdFromEpId error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3000
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3002
    :cond_be
    const-string v0, ""

    goto :goto_9a
.end method

.method private findSectionContainer(Landroid/view/View;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 694
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 695
    :goto_5
    if-eqz v1, :cond_2e

    .line 696
    instance-of v0, v1, Landroid/view/View;

    if-eqz v0, :cond_29

    move-object v0, v1

    .line 697
    check-cast v0, Landroid/view/View;

    .line 698
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v3

    const v4, 0x7f0801a5

    if-ne v3, v4, :cond_23

    .line 699
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 700
    instance-of v2, v1, Landroid/view/View;

    if-eqz v2, :cond_22

    move-object v0, v1

    .line 701
    check-cast v0, Landroid/view/View;

    .line 711
    :cond_22
    :goto_22
    return-object v0

    .line 705
    :cond_23
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonsContainer:Landroid/widget/LinearLayout;

    if-ne v0, v3, :cond_29

    move-object v0, v2

    .line 706
    goto :goto_22

    .line 709
    :cond_29
    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_5

    :cond_2e
    move-object v0, v2

    .line 711
    goto :goto_22
.end method

.method private final findTitleByCid(JLcom/bilibili/tv/api/video/BiliVideoDetail;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 1953
    if-nez p3, :cond_5

    move-object v0, v1

    .line 1974
    :goto_4
    return-object v0

    .line 1956
    :cond_5
    iget-object v0, p3, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    if-eqz v0, :cond_3d

    .line 1957
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

    .line 1958
    iget-wide v4, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mCid:J

    cmp-long v3, v4, p1

    if-nez v3, :cond_f

    .line 1959
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

    .line 1963
    :cond_3d
    iget-object v0, p3, Lcom/bilibili/tv/api/video/BiliVideoDetail;->episodes:Lcom/alibaba/fastjson/JSONArray;

    if-eqz v0, :cond_7a

    .line 1964
    const/4 v0, 0x0

    :goto_42
    iget-object v2, p3, Lcom/bilibili/tv/api/video/BiliVideoDetail;->episodes:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_7a

    .line 1965
    iget-object v2, p3, Lcom/bilibili/tv/api/video/BiliVideoDetail;->episodes:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    .line 1966
    const-string v3, "page"

    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_77

    .line 1967
    const-string v3, "page"

    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v3

    .line 1968
    const-string v4, "cid"

    invoke-virtual {v3, v4}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_77

    const-string v4, "cid"

    invoke-virtual {v3, v4}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v4

    cmp-long v3, v4, p1

    if-nez v3, :cond_77

    .line 1969
    const-string v0, "title"

    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 1964
    :cond_77
    add-int/lit8 v0, v0, 0x1

    goto :goto_42

    :cond_7a
    move-object v0, v1

    .line 1974
    goto :goto_4
.end method

.method private findVideoListSection(I)Lcom/bilibili/tv/ui/video/widget/VideoListSection;
    .locals 3

    .prologue
    .line 622
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

    .line 623
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->getSectionId()I

    move-result v2

    if-ne v2, p1, :cond_6

    .line 627
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

    .line 1936
    if-gtz p1, :cond_8

    .line 1937
    const-string v0, "00:00"

    .line 1948
    :goto_7
    return-object v0

    .line 1938
    :cond_8
    const/16 v0, 0x3c

    if-ge p1, v0, :cond_1b

    .line 1939
    const-string v0, "00:%02d"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    .line 1940
    :cond_1b
    const/16 v0, 0xe10

    if-ge p1, v0, :cond_38

    .line 1941
    div-int/lit8 v0, p1, 0x3c

    .line 1942
    rem-int/lit8 v1, p1, 0x3c

    .line 1943
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

    .line 1945
    :cond_38
    div-int/lit16 v0, p1, 0xe10

    .line 1946
    rem-int/lit16 v1, p1, 0xe10

    div-int/lit8 v1, v1, 0x3c

    .line 1947
    rem-int/lit8 v2, p1, 0x3c

    .line 1948
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

.method private getCurrentListType(Landroid/view/View;)I
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 1147
    if-nez p1, :cond_10

    move v0, v1

    .line 1175
    :goto_4
    return v0

    .line 1167
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1168
    instance-of v2, v0, Landroid/view/View;

    if-eqz v2, :cond_40

    .line 1169
    check-cast v0, Landroid/view/View;

    move-object p1, v0

    .line 1152
    :cond_10
    if-eqz p1, :cond_40

    .line 1153
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 1154
    const v2, 0x7f080149

    if-ne v0, v2, :cond_1d

    .line 1155
    const/4 v0, 0x1

    goto :goto_4

    .line 1156
    :cond_1d
    const v2, 0x7f080171

    if-ne v0, v2, :cond_24

    .line 1157
    const/4 v0, 0x2

    goto :goto_4

    .line 1158
    :cond_24
    const v2, 0x7f080155

    if-ne v0, v2, :cond_2b

    .line 1159
    const/4 v0, 0x3

    goto :goto_4

    .line 1160
    :cond_2b
    const v2, 0x7f08008d

    if-ne v0, v2, :cond_32

    .line 1161
    const/4 v0, 0x4

    goto :goto_4

    .line 1162
    :cond_32
    const v2, 0x7f0801a5

    if-ne v0, v2, :cond_39

    .line 1163
    const/4 v0, 0x5

    goto :goto_4

    .line 1164
    :cond_39
    const v2, 0x7f0801d6

    if-ne v0, v2, :cond_5

    .line 1165
    const/4 v0, 0x6

    goto :goto_4

    :cond_40
    move v0, v1

    .line 1175
    goto :goto_4
.end method

.method private getDataSizeForSection(I)I
    .locals 3

    .prologue
    .line 631
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

    .line 632
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->getSectionId()I

    move-result v2

    if-ne v2, p1, :cond_6

    .line 633
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->getDataSize()I

    move-result v0

    .line 636
    :goto_1c
    return v0

    :cond_1d
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method private getSeasonSectionFocusPosition(I)I
    .locals 3

    .prologue
    .line 610
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

    .line 611
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->getSectionId()I

    move-result v2

    if-ne v2, p1, :cond_6

    .line 612
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->getFocusPosition()I

    move-result v0

    .line 618
    :goto_1c
    return v0

    .line 615
    :cond_1d
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonSectionFocusPositions:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 616
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonSectionFocusPositions:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1c

    .line 618
    :cond_3a
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method private getVisibleIndex(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)I
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 1282
    if-eqz p1, :cond_5

    if-nez p2, :cond_7

    :cond_5
    move v0, v1

    .line 1286
    :cond_6
    :goto_6
    return v0

    .line 1283
    :cond_7
    const/4 v0, 0x0

    :goto_8
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_17

    .line 1284
    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eq v2, p2, :cond_6

    .line 1283
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_17
    move v0, v1

    .line 1286
    goto :goto_6
.end method

.method private handleListFocusNavigation(Landroid/view/View;I)Z
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 986
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->getCurrentListType(Landroid/view/View;)I

    move-result v0

    .line 987
    if-gez v0, :cond_d

    move v0, v1

    .line 1102
    :goto_c
    return v0

    .line 991
    :cond_d
    const/4 v3, 0x0

    .line 994
    const/16 v4, 0x14

    if-ne p2, v4, :cond_cb

    .line 995
    if-ne v0, v2, :cond_8e

    .line 997
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonsContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_5b

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5b

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonSectionViews:Ljava/util/List;

    .line 998
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5b

    .line 1000
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonSectionViews:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonSectionView;

    .line 1001
    iget-object v3, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonSectionView;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 1002
    iget v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonSectionView;->sectionId:I

    invoke-direct {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->getSeasonSectionFocusPosition(I)I

    move-result v0

    .line 1089
    :goto_38
    if-eqz v3, :cond_205

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_205

    .line 1090
    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v4

    .line 1091
    if-lez v4, :cond_205

    .line 1092
    add-int/lit8 v4, v4, -0x1

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1093
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1094
    invoke-virtual {v3, v0}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1095
    if-eqz v0, :cond_205

    .line 1096
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    move v0, v2

    .line 1097
    goto :goto_c

    .line 1003
    :cond_5b
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->episodes_video:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_6c

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->episodes_video:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_6c

    .line 1004
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->episodes_video:Landroid/support/v7/widget/RecyclerView;

    .line 1005
    iget v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->episodesVideoFocusPosition:I

    goto :goto_38

    .line 1006
    :cond_6c
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->r:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_7d

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->r:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_7d

    .line 1007
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->r:Landroid/support/v7/widget/RecyclerView;

    .line 1008
    iget v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->relateVideoFocusPosition:I

    goto :goto_38

    .line 1009
    :cond_7d
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->n:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_208

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->n:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_208

    .line 1010
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->n:Landroid/support/v7/widget/RecyclerView;

    .line 1011
    iget v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->tagViewFocusPosition:I

    goto :goto_38

    .line 1013
    :cond_8e
    if-ne v0, v5, :cond_b2

    .line 1014
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->r:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_a1

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->r:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_a1

    .line 1015
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->r:Landroid/support/v7/widget/RecyclerView;

    .line 1016
    iget v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->relateVideoFocusPosition:I

    goto :goto_38

    .line 1017
    :cond_a1
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->n:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_208

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->n:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_208

    .line 1018
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->n:Landroid/support/v7/widget/RecyclerView;

    .line 1019
    iget v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->tagViewFocusPosition:I

    goto :goto_38

    .line 1021
    :cond_b2
    if-ne v0, v6, :cond_c6

    .line 1022
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->n:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_208

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->n:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_208

    .line 1023
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->n:Landroid/support/v7/widget/RecyclerView;

    .line 1024
    iget v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->tagViewFocusPosition:I

    goto/16 :goto_38

    .line 1026
    :cond_c6
    if-ne v0, v7, :cond_208

    move v0, v2

    .line 1027
    goto/16 :goto_c

    .line 1030
    :cond_cb
    const/16 v4, 0x13

    if-ne p2, v4, :cond_208

    .line 1032
    if-ne v0, v2, :cond_f9

    .line 1033
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    if-eqz v0, :cond_e5

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    invoke-virtual {v0}, Lcom/bilibili/tv/widget/DrawLinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_e5

    .line 1034
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    invoke-virtual {v0}, Lcom/bilibili/tv/widget/DrawLinearLayout;->requestFocus()Z

    move v0, v2

    .line 1035
    goto/16 :goto_c

    .line 1036
    :cond_e5
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->rePlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    if-eqz v0, :cond_208

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->rePlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    invoke-virtual {v0}, Lcom/bilibili/tv/widget/DrawLinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_208

    .line 1037
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->rePlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    invoke-virtual {v0}, Lcom/bilibili/tv/widget/DrawLinearLayout;->requestFocus()Z

    move v0, v2

    .line 1038
    goto/16 :goto_c

    .line 1040
    :cond_f9
    if-ne v0, v5, :cond_123

    .line 1041
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    if-eqz v0, :cond_10f

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    invoke-virtual {v0}, Lcom/bilibili/tv/widget/DrawLinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_10f

    .line 1042
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    invoke-virtual {v0}, Lcom/bilibili/tv/widget/DrawLinearLayout;->requestFocus()Z

    move v0, v2

    .line 1043
    goto/16 :goto_c

    .line 1044
    :cond_10f
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->rePlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    if-eqz v0, :cond_208

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->rePlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    invoke-virtual {v0}, Lcom/bilibili/tv/widget/DrawLinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_208

    .line 1045
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->rePlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    invoke-virtual {v0}, Lcom/bilibili/tv/widget/DrawLinearLayout;->requestFocus()Z

    move v0, v2

    .line 1046
    goto/16 :goto_c

    .line 1048
    :cond_123
    if-ne v0, v6, :cond_19f

    .line 1050
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonsContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_153

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_153

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonSectionViews:Ljava/util/List;

    .line 1051
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_153

    .line 1053
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonSectionViews:Ljava/util/List;

    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonSectionViews:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonSectionView;

    .line 1054
    iget-object v3, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonSectionView;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 1055
    iget v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonSectionView;->sectionId:I

    invoke-direct {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->getSeasonSectionFocusPosition(I)I

    move-result v0

    goto/16 :goto_38

    .line 1056
    :cond_153
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->episodes_video:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_165

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->episodes_video:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_165

    .line 1057
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->episodes_video:Landroid/support/v7/widget/RecyclerView;

    .line 1058
    iget v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->episodesVideoFocusPosition:I

    goto/16 :goto_38

    .line 1059
    :cond_165
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->o:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_177

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->o:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_177

    .line 1060
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->o:Landroid/support/v7/widget/RecyclerView;

    .line 1061
    iget v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->epLayoutFocusPosition:I

    goto/16 :goto_38

    .line 1062
    :cond_177
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    if-eqz v0, :cond_18b

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    invoke-virtual {v0}, Lcom/bilibili/tv/widget/DrawLinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_18b

    .line 1063
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    invoke-virtual {v0}, Lcom/bilibili/tv/widget/DrawLinearLayout;->requestFocus()Z

    move v0, v2

    .line 1064
    goto/16 :goto_c

    .line 1065
    :cond_18b
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->rePlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    if-eqz v0, :cond_208

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->rePlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    invoke-virtual {v0}, Lcom/bilibili/tv/widget/DrawLinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_208

    .line 1066
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->rePlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    invoke-virtual {v0}, Lcom/bilibili/tv/widget/DrawLinearLayout;->requestFocus()Z

    move v0, v2

    .line 1067
    goto/16 :goto_c

    .line 1069
    :cond_19f
    if-ne v0, v7, :cond_208

    .line 1070
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->r:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_1b3

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->r:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1b3

    .line 1071
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->r:Landroid/support/v7/widget/RecyclerView;

    .line 1072
    iget v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->relateVideoFocusPosition:I

    goto/16 :goto_38

    .line 1073
    :cond_1b3
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonsContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1e1

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1e1

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonSectionViews:Ljava/util/List;

    .line 1074
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1e1

    .line 1075
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonSectionViews:Ljava/util/List;

    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonSectionViews:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonSectionView;

    .line 1076
    iget-object v3, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonSectionView;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 1077
    iget v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonSectionView;->sectionId:I

    invoke-direct {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->getSeasonSectionFocusPosition(I)I

    move-result v0

    goto/16 :goto_38

    .line 1078
    :cond_1e1
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->episodes_video:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_1f3

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->episodes_video:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1f3

    .line 1079
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->episodes_video:Landroid/support/v7/widget/RecyclerView;

    .line 1080
    iget v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->episodesVideoFocusPosition:I

    goto/16 :goto_38

    .line 1081
    :cond_1f3
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->o:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_208

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->o:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_208

    .line 1082
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->o:Landroid/support/v7/widget/RecyclerView;

    .line 1083
    iget v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->epLayoutFocusPosition:I

    goto/16 :goto_38

    :cond_205
    move v0, v1

    .line 1102
    goto/16 :goto_c

    :cond_208
    move v0, v1

    goto/16 :goto_38
.end method

.method private hideInteractionButtons()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    .line 3465
    const v0, 0x7f080167

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 3466
    const v1, 0x7f08016a

    invoke-virtual {p0, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 3467
    const v2, 0x7f08014d

    invoke-virtual {p0, v2}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 3468
    const v3, 0x7f0801a1

    invoke-virtual {p0, v3}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 3469
    const v4, 0x7f0801dc

    invoke-virtual {p0, v4}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 3470
    if-eqz v0, :cond_2a

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 3471
    :cond_2a
    if-eqz v1, :cond_2f

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 3472
    :cond_2f
    if-eqz v2, :cond_34

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 3473
    :cond_34
    if-eqz v3, :cond_39

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 3474
    :cond_39
    if-eqz v4, :cond_3e

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 3475
    :cond_3e
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->expandBtn:Lcom/bilibili/tv/widget/DrawLinearLayout;

    if-eqz v0, :cond_48

    .line 3476
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->expandBtn:Lcom/bilibili/tv/widget/DrawLinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setVisibility(I)V

    .line 3478
    :cond_48
    return-void
.end method

.method private final initDefaultPlayButtons(Lcom/bilibili/tv/api/video/BiliVideoDetail;)V
    .locals 4

    .prologue
    const v3, 0x7f080196

    const/16 v2, 0x8

    .line 1633
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtn:Lcom/bilibili/tv/widget/DrawTextView;

    if-nez v0, :cond_e

    .line 1711
    :cond_d
    :goto_d
    return-void

    .line 1636
    :cond_e
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtn:Lcom/bilibili/tv/widget/DrawTextView;

    const-string v1, "\u5f00\u59cb\u64ad\u653e"

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1637
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_1e

    .line 1638
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1640
    :cond_1e
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1641
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyProgress:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1642
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1643
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->noHistoryPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    if-eqz v0, :cond_48

    .line 1644
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->noHistoryPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setVisibility(I)V

    .line 1645
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    if-eqz v0, :cond_40

    .line 1646
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setNextFocusRightId(I)V

    .line 1648
    :cond_40
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->noHistoryPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    const v1, 0x7f0801df

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setNextFocusRightId(I)V

    .line 1650
    :cond_48
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->expandBtn:Lcom/bilibili/tv/widget/DrawLinearLayout;

    if-eqz v0, :cond_51

    .line 1651
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->expandBtn:Lcom/bilibili/tv/widget/DrawLinearLayout;

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setNextFocusLeftId(I)V

    .line 1653
    :cond_51
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->rePlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    if-eqz v0, :cond_5a

    .line 1654
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->rePlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setVisibility(I)V

    .line 1657
    :cond_5a
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    if-eqz v0, :cond_68

    .line 1658
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    new-instance v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$14;

    invoke-direct {v1, p0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$14;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/BiliVideoDetail;)V

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1674
    :cond_68
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->rePlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    if-eqz v0, :cond_76

    .line 1675
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->rePlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    new-instance v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$15;

    invoke-direct {v1, p0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$15;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/BiliVideoDetail;)V

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1688
    :cond_76
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->noHistoryPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    if-eqz v0, :cond_84

    .line 1689
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->noHistoryPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    new-instance v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$16;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$16;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)V

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1700
    :cond_84
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->noHistoryPlayBtn:Lcom/bilibili/tv/widget/DrawTextView;

    if-eqz v0, :cond_d

    .line 1701
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->noHistoryPlayBtn:Lcom/bilibili/tv/widget/DrawTextView;

    new-instance v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$17;

    invoke-direct {v1, p0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$17;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/BiliVideoDetail;)V

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_d
.end method

.method private isAnyInteractionButtonFocused()Z
    .locals 5

    .prologue
    .line 3481
    const v0, 0x7f080167

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 3482
    const v1, 0x7f08016a

    invoke-virtual {p0, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 3483
    const v2, 0x7f08014d

    invoke-virtual {p0, v2}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 3484
    const v3, 0x7f0801a1

    invoke-virtual {p0, v3}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 3485
    const v4, 0x7f0801dc

    invoke-virtual {p0, v4}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 3486
    if-eqz v0, :cond_2b

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_4b

    :cond_2b
    if-eqz v1, :cond_33

    .line 3487
    invoke-virtual {v1}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_4b

    :cond_33
    if-eqz v2, :cond_3b

    .line 3488
    invoke-virtual {v2}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_4b

    :cond_3b
    if-eqz v3, :cond_43

    .line 3489
    invoke-virtual {v3}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_4b

    :cond_43
    if-eqz v4, :cond_4d

    .line 3490
    invoke-virtual {v4}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_4d

    :cond_4b
    const/4 v0, 0x1

    .line 3486
    :goto_4c
    return v0

    .line 3490
    :cond_4d
    const/4 v0, 0x0

    goto :goto_4c
.end method

.method private isPgcVideo(Lcom/bilibili/tv/api/video/BiliVideoDetail;)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2101
    if-nez p1, :cond_5

    .line 2110
    :cond_4
    :goto_4
    return v0

    .line 2104
    :cond_5
    iget-object v2, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mRedirectUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_f

    move v0, v1

    .line 2105
    goto :goto_4

    .line 2107
    :cond_f
    iget-object v2, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mBangumiInfo:Lcom/bilibili/tv/api/video/BiliVideoDetail$BangumiInfo;

    if-eqz v2, :cond_4

    move v0, v1

    .line 2108
    goto :goto_4
.end method

.method private final k()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const v5, 0x7f0700e7

    .line 272
    new-instance v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$d;

    invoke-direct {v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$d;-><init>()V

    .line 273
    const v0, 0x7f080041

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->b:Landroid/widget/ImageView;

    .line 274
    const v0, 0x7f0801db

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->gradientMaskView:Landroid/view/View;

    .line 275
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->preloadCoverUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3e

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->b:Landroid/widget/ImageView;

    if-eqz v0, :cond_3e

    .line 276
    invoke-static {}, Lbl/nv;->a()Lbl/nv;

    move-result-object v0

    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->preloadCoverUrl:Ljava/lang/String;

    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v2, v3}, Lbl/nv;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 277
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->gradientMaskView:Landroid/view/View;

    if-eqz v0, :cond_3e

    .line 278
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->gradientMaskView:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 281
    :cond_3e
    const v0, 0x7f080156

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->cc:Landroid/widget/TextView;

    .line 282
    const v0, 0x7f08015e

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->uperContainer:Landroid/widget/LinearLayout;

    .line 283
    const v0, 0x7f0801b0

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->staffContainer:Landroid/widget/LinearLayout;

    .line 284
    const v0, 0x7f080153

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->e:Landroid/widget/TextView;

    .line 285
    const v0, 0x7f080147

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->ff:Landroid/widget/TextView;

    .line 286
    const v0, 0x7f080159

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->g:Landroid/widget/TextView;

    .line 287
    const v0, 0x7f08014b

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->hh:Landroid/widget/TextView;

    .line 288
    const v0, 0x7f080154

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->i:Landroid/widget/TextView;

    .line 289
    const v0, 0x7f080170

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->episodes_title:Landroid/widget/TextView;

    .line 290
    const v0, 0x7f080064

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->m:Landroid/view/View;

    .line 291
    const v0, 0x7f080199

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->pgcInfoContainer:Landroid/widget/LinearLayout;

    .line 292
    const v0, 0x7f08019a

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->pgcRating:Landroid/widget/TextView;

    .line 293
    const v0, 0x7f08019b

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->pgcType:Landroid/widget/TextView;

    .line 294
    const v0, 0x7f08019c

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->pgcArea:Landroid/widget/TextView;

    .line 295
    const v0, 0x7f08019d

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->pgcNewEp:Landroid/widget/TextView;

    .line 296
    const v0, 0x7f0801d5

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->titleSection:Landroid/widget/LinearLayout;

    .line 297
    const v0, 0x7f08014d

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawLinearLayout;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->j:Lcom/bilibili/tv/widget/DrawLinearLayout;

    .line 298
    const v0, 0x7f08014e

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->k:Landroid/widget/ImageView;

    .line 299
    const v0, 0x7f08014f

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->l:Landroid/widget/TextView;

    .line 300
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->j:Lcom/bilibili/tv/widget/DrawLinearLayout;

    .line 301
    if-eqz v0, :cond_11d

    .line 302
    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 303
    invoke-virtual {v0, v5}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setUpDrawable(I)V

    .line 304
    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 305
    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 308
    :cond_11d
    const v0, 0x7f0801df

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawLinearLayout;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->expandBtn:Lcom/bilibili/tv/widget/DrawLinearLayout;

    .line 309
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->expandBtn:Lcom/bilibili/tv/widget/DrawLinearLayout;

    if-eqz v0, :cond_13b

    .line 310
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->expandBtn:Lcom/bilibili/tv/widget/DrawLinearLayout;

    invoke-virtual {v0, v5}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setUpDrawable(I)V

    .line 311
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->expandBtn:Lcom/bilibili/tv/widget/DrawLinearLayout;

    new-instance v2, Lcom/bilibili/tv/ui/video/VideoDetailActivity$1;

    invoke-direct {v2, p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$1;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)V

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 330
    :cond_13b
    const v0, 0x7f080167

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawLinearLayout;

    .line 331
    if-eqz v0, :cond_152

    .line 332
    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 333
    invoke-virtual {v0, v5}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setUpDrawable(I)V

    .line 334
    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 335
    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 337
    :cond_152
    const v0, 0x7f08016a

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawLinearLayout;

    .line 338
    if-eqz v0, :cond_169

    .line 339
    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 340
    invoke-virtual {v0, v5}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setUpDrawable(I)V

    .line 341
    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 342
    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 345
    :cond_169
    const v0, 0x7f0801a1

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawLinearLayout;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->watchLaterBtn:Lcom/bilibili/tv/widget/DrawLinearLayout;

    .line 346
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->watchLaterBtn:Lcom/bilibili/tv/widget/DrawLinearLayout;

    if-eqz v0, :cond_187

    .line 347
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->watchLaterBtn:Lcom/bilibili/tv/widget/DrawLinearLayout;

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 348
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->watchLaterBtn:Lcom/bilibili/tv/widget/DrawLinearLayout;

    invoke-virtual {v0, v5}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setUpDrawable(I)V

    .line 349
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->watchLaterBtn:Lcom/bilibili/tv/widget/DrawLinearLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 352
    :cond_187
    const v0, 0x7f0801dc

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawLinearLayout;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->infoBtn:Lcom/bilibili/tv/widget/DrawLinearLayout;

    .line 353
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->infoBtn:Lcom/bilibili/tv/widget/DrawLinearLayout;

    if-eqz v0, :cond_1a5

    .line 354
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->infoBtn:Lcom/bilibili/tv/widget/DrawLinearLayout;

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 355
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->infoBtn:Lcom/bilibili/tv/widget/DrawLinearLayout;

    invoke-virtual {v0, v5}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setUpDrawable(I)V

    .line 356
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->infoBtn:Lcom/bilibili/tv/widget/DrawLinearLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 359
    :cond_1a5
    const v0, 0x7f080152

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawTextView;

    .line 360
    if-eqz v0, :cond_1b9

    .line 361
    invoke-virtual {v0, v5}, Lcom/bilibili/tv/widget/DrawTextView;->setUpDrawable(I)V

    .line 362
    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 363
    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 365
    :cond_1b9
    const v0, 0x7f080151

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->q:Landroid/widget/FrameLayout;

    .line 366
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->q:Landroid/widget/FrameLayout;

    .line 367
    if-eqz v0, :cond_1d7

    .line 368
    sget-object v1, Lcom/bilibili/tv/ui/base/LoadingImageView;->Companion:Lcom/bilibili/tv/ui/base/LoadingImageView$a;

    invoke-virtual {v1, v0}, Lcom/bilibili/tv/ui/base/LoadingImageView$a;->a(Landroid/widget/FrameLayout;)Lcom/bilibili/tv/ui/base/LoadingImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->p:Lcom/bilibili/tv/ui/base/LoadingImageView;

    .line 369
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->p:Lcom/bilibili/tv/ui/base/LoadingImageView;

    .line 370
    if-eqz v0, :cond_1d7

    .line 371
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/base/LoadingImageView;->a()V

    .line 374
    :cond_1d7
    const v0, 0x7f08008d

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->n:Landroid/support/v7/widget/RecyclerView;

    .line 375
    new-instance v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$2;

    invoke-direct {v0, p0, p0, v6, v6}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$2;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Landroid/content/Context;IZ)V

    .line 404
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->n:Landroid/support/v7/widget/RecyclerView;

    .line 405
    if-eqz v1, :cond_1f6

    .line 406
    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$h;)V

    .line 408
    new-instance v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$3;

    invoke-direct {v0, p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$3;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)V

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 420
    :cond_1f6
    new-instance v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$g;

    invoke-direct {v0, p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$g;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)V

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->x:Lcom/bilibili/tv/ui/video/VideoDetailActivity$g;

    .line 421
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->n:Landroid/support/v7/widget/RecyclerView;

    .line 422
    if-eqz v0, :cond_206

    .line 423
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->x:Lcom/bilibili/tv/ui/video/VideoDetailActivity$g;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 425
    :cond_206
    const v0, 0x7f080149

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->o:Landroid/support/v7/widget/RecyclerView;

    .line 426
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06010a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 427
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->t:Ljava/util/List;

    .line 428
    new-instance v1, Lbl/add;

    new-instance v2, Lcom/bilibili/tv/ui/video/VideoDetailActivity$b;

    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->t:Ljava/util/List;

    invoke-direct {v2, p0, v3}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$b;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Ljava/util/List;)V

    invoke-direct {v1, v2}, Lbl/add;-><init>(Landroid/support/v7/widget/RecyclerView$a;)V

    iput-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->w:Lbl/add;

    .line 429
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->o:Landroid/support/v7/widget/RecyclerView;

    if-eqz v1, :cond_268

    .line 430
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->o:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Lcom/bilibili/tv/widget/FixGridLayoutManager;

    const/4 v3, 0x6

    const/4 v4, 0x1

    invoke-direct {v2, p0, v3, v4, v6}, Lcom/bilibili/tv/widget/FixGridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$h;)V

    .line 431
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->o:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Lcom/bilibili/tv/ui/video/VideoDetailActivity$j;

    invoke-direct {v2, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$j;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView$g;)V

    .line 432
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->o:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->w:Lbl/add;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 434
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->o:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$4;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$4;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 446
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->blockEpisodeAutoFocus:Z

    if-eqz v0, :cond_268

    .line 447
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->o:Landroid/support/v7/widget/RecyclerView;

    const/high16 v1, 0x60000

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setDescendantFocusability(I)V

    .line 450
    :cond_268
    const v0, 0x7f080155

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->r:Landroid/support/v7/widget/RecyclerView;

    .line 451
    new-instance v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$e;

    invoke-direct {v0, p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$e;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)V

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->v:Lcom/bilibili/tv/ui/video/VideoDetailActivity$e;

    .line 452
    new-instance v0, Lcom/bilibili/tv/ui/video/widget/BiliVideoDetailBinder;

    invoke-direct {v0}, Lcom/bilibili/tv/ui/video/widget/BiliVideoDetailBinder;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->relateBinder:Lcom/bilibili/tv/ui/video/widget/BiliVideoDetailBinder;

    .line 453
    new-instance v0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;

    invoke-direct {v0, p0}, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->relateCardAdapter:Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;

    .line 454
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->r:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_2b1

    .line 455
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->r:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$5;

    invoke-direct {v1, p0, p0, v6, v6}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$5;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$h;)V

    .line 467
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->r:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->relateCardAdapter:Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 468
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->relateCardAdapter:Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;

    new-instance v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$6;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$6;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)V

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->setOnItemClickListener(Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter$OnItemClickListener;)V

    .line 478
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->r:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$7;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$7;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 507
    :cond_2b1
    const v0, 0x7f080171

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->episodes_video:Landroid/support/v7/widget/RecyclerView;

    .line 508
    new-instance v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$EpisodesVideoAdapter;

    invoke-direct {v0, p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$EpisodesVideoAdapter;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)V

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->episodes_video_adapter:Lcom/bilibili/tv/ui/video/VideoDetailActivity$EpisodesVideoAdapter;

    .line 509
    new-instance v0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;

    invoke-direct {v0, p0}, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->episodesCardAdapter:Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;

    .line 510
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->episodes_video:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_2f3

    .line 511
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->episodes_video:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/bilibili/tv/widget/FixLinearLayoutManager;

    invoke-direct {v1, p0, v6, v6}, Lcom/bilibili/tv/widget/FixLinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$h;)V

    .line 512
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->episodes_video:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->episodesCardAdapter:Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 513
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->episodesCardAdapter:Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;

    new-instance v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$8;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$8;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)V

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->setOnItemClickListener(Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter$OnItemClickListener;)V

    .line 519
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->episodes_video:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$9;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$9;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 533
    :cond_2f3
    const v0, 0x7f0801a3

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonsContainer:Landroid/widget/LinearLayout;

    .line 534
    new-instance v0, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;

    invoke-direct {v0}, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->videoListNavigator:Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;

    .line 535
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->videoListNavigator:Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->setUpTarget(Landroid/view/View;)V

    .line 536
    const v0, 0x7f08018e

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyContainer:Landroid/widget/LinearLayout;

    .line 537
    const v0, 0x7f080192

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawLinearLayout;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    .line 538
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    if-eqz v0, :cond_335

    .line 539
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    new-instance v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$d;

    invoke-direct {v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$d;-><init>()V

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 540
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    invoke-virtual {v0, v5}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setUpDrawable(I)V

    .line 542
    :cond_335
    const v0, 0x7f080195

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawLinearLayout;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->rePlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    .line 543
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->rePlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    if-eqz v0, :cond_353

    .line 544
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->rePlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    new-instance v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$d;

    invoke-direct {v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$d;-><init>()V

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 545
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->rePlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    invoke-virtual {v0, v5}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setUpDrawable(I)V

    .line 547
    :cond_353
    const v0, 0x7f080191

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawTextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtn:Lcom/bilibili/tv/widget/DrawTextView;

    .line 548
    const v0, 0x7f080194

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawTextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->rePlayBtn:Lcom/bilibili/tv/widget/DrawTextView;

    .line 549
    const v0, 0x7f080196

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawLinearLayout;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->noHistoryPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    .line 550
    const v0, 0x7f080198

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->noHistoryPlayCheckBox:Landroid/widget/CheckBox;

    .line 551
    const v0, 0x7f080197

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawTextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->noHistoryPlayBtn:Lcom/bilibili/tv/widget/DrawTextView;

    .line 552
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->noHistoryPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    if-eqz v0, :cond_39d

    .line 553
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->noHistoryPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    new-instance v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$d;

    invoke-direct {v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$d;-><init>()V

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 554
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->noHistoryPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    invoke-virtual {v0, v5}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setUpDrawable(I)V

    .line 556
    :cond_39d
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->noHistoryPlayBtn:Lcom/bilibili/tv/widget/DrawTextView;

    if-eqz v0, :cond_3a8

    .line 557
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->noHistoryPlayBtn:Lcom/bilibili/tv/widget/DrawTextView;

    const-string v1, "\u65e0\u75d5"

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawTextView;->setText(Ljava/lang/CharSequence;)V

    .line 559
    :cond_3a8
    const v0, 0x7f08018f

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyTitle:Landroid/widget/TextView;

    .line 560
    const v0, 0x7f080190

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyProgress:Landroid/widget/TextView;

    .line 561
    const v0, 0x7f0801b8

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyLabel:Landroid/widget/TextView;

    .line 562
    const v0, 0x7f0800f6

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->scrollView:Landroid/widget/ScrollView;

    .line 563
    invoke-direct {p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->setupGlobalFocusChangeListener()V

    .line 564
    return-void
.end method

.method private final likeVideo(I)V
    .locals 7

    .prologue
    .line 3265
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->B:Z

    if-eqz v0, :cond_5

    .line 3275
    :goto_4
    return-void

    .line 3268
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->B:Z

    .line 3269
    invoke-static {p0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v0

    .line 3270
    const-string v1, "BiliAccount.get(this)"

    invoke-static {v0, v1}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3271
    invoke-static {v0}, Lmybl/CookieUtil;->getFullCookieWithDevice(Lbl/mg;)Ljava/lang/String;

    move-result-object v6

    .line 3272
    invoke-static {v0}, Lmybl/CookieUtil;->getBiliJct(Lbl/mg;)Ljava/lang/String;

    move-result-object v5

    .line 3273
    add-int/lit8 v4, p1, 0x1

    .line 3274
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
    .line 1714
    if-eqz p1, :cond_6

    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mBvid:Ljava/lang/String;

    if-nez v0, :cond_7

    .line 1763
    :cond_6
    :goto_6
    return-void

    .line 1717
    :cond_7
    invoke-static {p0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v0

    .line 1718
    const-string v1, "BiliAccount.get(this)"

    invoke-static {v0, v1}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1719
    invoke-virtual {v0}, Lbl/mg;->a()Z

    move-result v1

    .line 1720
    if-eqz v1, :cond_6

    .line 1723
    invoke-virtual {v0}, Lbl/mg;->getSESSDATA()Ljava/lang/String;

    move-result-object v0

    .line 1724
    iget-object v1, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mBvid:Ljava/lang/String;

    .line 1726
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SESSDATA="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1728
    const-class v0, Lmybl/MyBiliApiService;

    invoke-static {v0}, Lbl/vo;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmybl/MyBiliApiService;

    invoke-interface {v0, v1, v2}, Lmybl/MyBiliApiService;->getArchiveRelation(Ljava/lang/String;Ljava/lang/String;)Lbl/vp;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$18;

    invoke-direct {v1, p0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$18;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/BiliVideoDetail;)V

    invoke-virtual {v0, v1}, Lbl/vp;->a(Lretrofit2/Callback;)V

    goto :goto_6
.end method

.method private final loadHistory(Lcom/bilibili/tv/api/video/BiliVideoDetail;)V
    .locals 11

    .prologue
    const-wide/16 v8, 0x0

    const/4 v1, 0x0

    .line 1766
    invoke-static {p0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v10

    .line 1767
    const-string v0, "BiliAccount.get(this)"

    invoke-static {v10, v0}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1769
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mHistory:Lcom/bilibili/tv/api/video/BiliVideoDetail$History;

    if-eqz v0, :cond_25

    .line 1770
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->updateHistoryDisplay(Lcom/bilibili/tv/api/video/BiliVideoDetail;)V

    .line 1771
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    .line 1772
    invoke-virtual {v0}, Lcom/bilibili/tv/widget/DrawLinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_24

    .line 1773
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    invoke-virtual {v0}, Lcom/bilibili/tv/widget/DrawLinearLayout;->requestFocus()Z

    .line 1874
    :cond_24
    :goto_24
    return-void

    .line 1780
    :cond_25
    iget-object v3, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mBvid:Ljava/lang/String;

    .line 1781
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    if-eqz v0, :cond_92

    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_92

    .line 1782
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;

    iget-wide v4, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mCid:J

    .line 1783
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;

    iget-wide v6, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mEpisodeId:J

    .line 1784
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

    .line 1785
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;

    iget-object v3, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mBvid:Ljava/lang/String;

    .line 1789
    :cond_6d
    :goto_6d
    cmp-long v0, v4, v8

    if-nez v0, :cond_79

    .line 1790
    invoke-virtual {v10}, Lbl/mg;->e()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->fallbackLoadHistory(Lcom/bilibili/tv/api/video/BiliVideoDetail;Ljava/lang/String;)V

    goto :goto_24

    .line 1796
    :cond_79
    iget-wide v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->s:J

    .line 1798
    invoke-virtual {v10}, Lbl/mg;->e()Ljava/lang/String;

    .line 1799
    invoke-virtual {v10}, Lbl/mg;->getSESSDATA()Ljava/lang/String;

    move-result-object v8

    .line 1802
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$19;

    move-object v2, p0

    move-object v9, p1

    invoke-direct/range {v1 .. v10}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$19;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Ljava/lang/String;JJLjava/lang/String;Lcom/bilibili/tv/api/video/BiliVideoDetail;Lbl/mg;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1873
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
    .line 1430
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->mSeasonId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1485
    :goto_8
    return-void

    .line 1433
    :cond_9
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->p:Lcom/bilibili/tv/ui/base/LoadingImageView;

    .line 1434
    if-eqz v0, :cond_10

    .line 1435
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/base/LoadingImageView;->a()V

    .line 1438
    :cond_10
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->mSeasonId:Ljava/lang/String;

    new-instance v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$12;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$12;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)V

    invoke-direct {p0, v0, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->loadPgcSeasonInfo(Ljava/lang/String;Lcom/bilibili/tv/ui/video/VideoDetailActivity$PgcLoadCallback;)V

    goto :goto_8
.end method

.method private loadPgcInfo(Lcom/bilibili/tv/api/video/BiliVideoDetail;)V
    .locals 4

    .prologue
    .line 2162
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->extractSeasonId(Lcom/bilibili/tv/api/video/BiliVideoDetail;)Ljava/lang/String;

    move-result-object v0

    .line 2163
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 2164
    const-string v0, "PgcInfo"

    const-string v1, "seasonId is empty, skip loading PGC info"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2249
    :goto_11
    return-void

    .line 2167
    :cond_12
    const-string v1, "PgcInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loading PGC info for seasonId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2169
    new-instance v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$22;

    invoke-direct {v1, p0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$22;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/BiliVideoDetail;)V

    invoke-direct {p0, v0, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->loadPgcSeasonInfo(Ljava/lang/String;Lcom/bilibili/tv/ui/video/VideoDetailActivity$PgcLoadCallback;)V

    goto :goto_11
.end method

.method private loadPgcSeasonInfo(Ljava/lang/String;Lcom/bilibili/tv/ui/video/VideoDetailActivity$PgcLoadCallback;)V
    .locals 3

    .prologue
    .line 1493
    invoke-static {p0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v0

    invoke-virtual {v0}, Lbl/mg;->e()Ljava/lang/String;

    move-result-object v0

    .line 1495
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/bilibili/tv/ui/video/VideoDetailActivity$13;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$13;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Ljava/lang/String;Ljava/lang/String;Lcom/bilibili/tv/ui/video/VideoDetailActivity$PgcLoadCallback;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1545
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 1546
    return-void
.end method

.method private final loadUgcByAvid()V
    .locals 4

    .prologue
    .line 1327
    iget-wide v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->s:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_c

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->A:Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;

    if-nez v0, :cond_d

    .line 1335
    :cond_c
    :goto_c
    return-void

    .line 1330
    :cond_d
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->p:Lcom/bilibili/tv/ui/base/LoadingImageView;

    .line 1331
    if-eqz v0, :cond_14

    .line 1332
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/base/LoadingImageView;->a()V

    .line 1334
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
    .locals 5

    .prologue
    const v4, 0x7f0c0170

    .line 826
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 827
    const-string v1, "intent"

    invoke-static {v0, v1}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 828
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 829
    if-nez v0, :cond_19

    .line 830
    invoke-static {p0, v4}, Lbl/lr;->a(Landroid/content/Context;I)V

    .line 831
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->finish()V

    .line 847
    :goto_18
    return-void

    .line 834
    :cond_19
    const-string v1, "bundle_season_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->mSeasonId:Ljava/lang/String;

    .line 835
    const-string v1, "bundle_ac_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->s:J

    .line 836
    const-string v1, "preload_cover"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->preloadCoverUrl:Ljava/lang/String;

    .line 837
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->mSeasonId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_41

    .line 838
    sget-object v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$EntryType;->PGC_BY_SEASON_ID:Lcom/bilibili/tv/ui/video/VideoDetailActivity$EntryType;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->mEntryType:Lcom/bilibili/tv/ui/video/VideoDetailActivity$EntryType;

    .line 839
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->mIsPgcMode:Z

    goto :goto_18

    .line 840
    :cond_41
    iget-wide v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->s:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_51

    .line 841
    sget-object v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$EntryType;->UGC_BY_AVID:Lcom/bilibili/tv/ui/video/VideoDetailActivity$EntryType;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->mEntryType:Lcom/bilibili/tv/ui/video/VideoDetailActivity$EntryType;

    .line 842
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->mIsPgcMode:Z

    goto :goto_18

    .line 844
    :cond_51
    invoke-static {p0, v4}, Lbl/lr;->a(Landroid/content/Context;I)V

    .line 845
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->finish()V

    goto :goto_18
.end method

.method private final n()V
    .locals 2

    .prologue
    .line 1315
    sget-object v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$31;->$SwitchMap$com$bilibili$tv$ui$video$VideoDetailActivity$EntryType:[I

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->mEntryType:Lcom/bilibili/tv/ui/video/VideoDetailActivity$EntryType;

    invoke-virtual {v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$EntryType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_16

    .line 1321
    invoke-direct {p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->loadUgcByAvid()V

    .line 1324
    :goto_10
    return-void

    .line 1317
    :pswitch_11
    invoke-direct {p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->loadPgcBySeasonId()V

    goto :goto_10

    .line 1315
    nop

    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_11
    .end packed-switch
.end method

.method private final p(Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 3176
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->B:Z

    if-eqz v0, :cond_5

    .line 3185
    :goto_4
    return-void

    .line 3179
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->B:Z

    .line 3180
    const-class v0, Lcom/bilibili/tv/api/favorite/BiliFavoriteVideoApiService;

    .line 3181
    invoke-static {v0}, Lbl/vo;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bilibili/tv/api/favorite/BiliFavoriteVideoApiService;

    .line 3182
    invoke-static {p0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v0

    .line 3183
    const-string v2, "BiliAccount.get(this)"

    invoke-static {v0, v2}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3184
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
    .line 2056
    if-nez p1, :cond_3

    .line 2075
    :cond_2
    :goto_2
    return-void

    .line 2059
    :cond_3
    const/4 v2, 0x0

    .line 2060
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_27

    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    if-eqz v0, :cond_27

    .line 2061
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;

    .line 2062
    iget-wide v4, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mCid:J

    cmp-long v3, v4, p2

    if-nez v3, :cond_14

    move-object v2, v0

    .line 2068
    :cond_27
    if-nez v2, :cond_3f

    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    if-eqz v0, :cond_3f

    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3f

    .line 2069
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;

    move-object v2, v0

    .line 2071
    :cond_3f
    if-eqz v2, :cond_2

    .line 2072
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mCover:Ljava/lang/String;

    invoke-static {p0, v0}, Lbl/abd;->prefetchCoverToMemoryCache(Landroid/content/Context;Ljava/lang/String;)V

    .line 2073
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const/16 v4, 0x2754

    move-object v0, p0

    move-object v1, p1

    move v5, p4

    invoke-static/range {v0 .. v5}, Lbl/xg;->a(Landroid/app/Activity;Lcom/bilibili/tv/api/video/BiliVideoDetail;Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;Landroid/os/Bundle;II)V

    goto :goto_2
.end method

.method private final q(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 3221
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->B:Z

    if-eqz v0, :cond_5

    .line 3229
    :goto_4
    return-void

    .line 3224
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->B:Z

    .line 3225
    invoke-static {p0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v1

    .line 3226
    const-string v0, "BiliAccount.get(this)"

    invoke-static {v1, v0}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3227
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

    .line 3228
    invoke-virtual {v0, v1}, Lbl/vp;->a(Lretrofit2/Callback;)V

    goto :goto_4
.end method

.method private refreshVisualOrder()V
    .locals 7

    .prologue
    .line 1106
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonsContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->videoListNavigator:Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;

    if-nez v0, :cond_9

    .line 1135
    :cond_8
    :goto_8
    return-void

    .line 1110
    :cond_9
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    .line 1112
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1113
    const/4 v0, 0x0

    move v1, v0

    :goto_16
    if-ge v1, v2, :cond_50

    .line 1114
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1115
    instance-of v4, v0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    if-eqz v4, :cond_4c

    .line 1116
    check-cast v0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    .line 1118
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->getSectionId()I

    move-result v4

    .line 1120
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->videoListNavigator:Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;

    invoke-virtual {v0, v4, v1}, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->updateVisualOrder(II)V

    .line 1122
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

    .line 1123
    iget v6, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonSectionView;->sectionId:I

    if-ne v6, v4, :cond_33

    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_33

    .line 1124
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1113
    :cond_4c
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_16

    .line 1131
    :cond_50
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonSectionViews:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_8

    .line 1132
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonSectionViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1133
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonSectionViews:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_8
.end method

.method private requestHistoryForUgc(Lcom/bilibili/tv/api/video/BiliVideoDetail;Ljava/lang/Runnable;)V
    .locals 11

    .prologue
    const-wide/16 v8, 0x0

    const/4 v2, 0x0

    .line 1338
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mHistory:Lcom/bilibili/tv/api/video/BiliVideoDetail$History;

    if-eqz v0, :cond_d

    .line 1339
    if-eqz p2, :cond_c

    .line 1340
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 1427
    :cond_c
    :goto_c
    return-void

    .line 1345
    :cond_d
    invoke-static {p0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v1

    .line 1346
    const-string v0, "BiliAccount.get(this)"

    invoke-static {v1, v0}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1350
    iget-object v3, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mBvid:Ljava/lang/String;

    .line 1351
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    if-eqz v0, :cond_7d

    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7d

    .line 1352
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;

    iget-wide v4, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mCid:J

    .line 1353
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;

    iget-wide v6, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mEpisodeId:J

    .line 1354
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;

    iget-object v0, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mBvid:Ljava/lang/String;

    if-eqz v0, :cond_5e

    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;

    iget-object v0, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mBvid:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5e

    .line 1355
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;

    iget-object v3, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mBvid:Ljava/lang/String;

    .line 1359
    :cond_5e
    :goto_5e
    cmp-long v0, v4, v8

    if-nez v0, :cond_68

    .line 1360
    if-eqz p2, :cond_c

    .line 1361
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    goto :goto_c

    .line 1368
    :cond_68
    invoke-virtual {v1}, Lbl/mg;->getSESSDATA()Ljava/lang/String;

    move-result-object v8

    .line 1371
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$11;

    move-object v2, p0

    move-object v9, p1

    move-object v10, p2

    invoke-direct/range {v1 .. v10}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$11;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Ljava/lang/String;JJLjava/lang/String;Lcom/bilibili/tv/api/video/BiliVideoDetail;Ljava/lang/Runnable;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1426
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_c

    :cond_7d
    move-wide v6, v8

    move-wide v4, v8

    goto :goto_5e
.end method

.method private resetStaffNameVisibility()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x1

    .line 596
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->staffContainer:Landroid/widget/LinearLayout;

    if-nez v0, :cond_7

    .line 607
    :cond_6
    return-void

    .line 599
    :cond_7
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->staffContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    move v3, v2

    .line 600
    :goto_e
    if-ge v3, v4, :cond_6

    .line 601
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->staffContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawLinearLayout;

    .line 602
    invoke-virtual {v0}, Lcom/bilibili/tv/widget/DrawLinearLayout;->getChildCount()I

    move-result v1

    if-le v1, v5, :cond_32

    invoke-virtual {v0, v5}, Lcom/bilibili/tv/widget/DrawLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/TextView;

    if-eqz v1, :cond_32

    .line 603
    invoke-virtual {v0, v5}, Lcom/bilibili/tv/widget/DrawLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 604
    if-nez v3, :cond_36

    move v1, v2

    :goto_2f
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 600
    :cond_32
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_e

    .line 604
    :cond_36
    const/16 v1, 0x8

    goto :goto_2f
.end method

.method private restoreFocusPosition(Landroid/support/v7/widget/RecyclerView;I)Landroid/view/View;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1291
    if-nez p1, :cond_4

    .line 1311
    :cond_3
    :goto_3
    return-object v0

    .line 1295
    :cond_4
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v1

    .line 1297
    if-eqz v1, :cond_3

    .line 1302
    add-int/lit8 v0, v1, -0x1

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1305
    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1306
    if-nez v0, :cond_3

    .line 1311
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

    .line 1180
    if-nez p1, :cond_7

    .line 1279
    :cond_6
    :goto_6
    return-void

    .line 1184
    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f080126

    if-eq v0, v1, :cond_27

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_42

    .line 1185
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f08008d

    if-ne v0, v1, :cond_42

    .line 1186
    :cond_27
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->n:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_6

    move v0, v3

    .line 1187
    :goto_2c
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->n:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_6

    .line 1188
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->n:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-ne v1, p1, :cond_3f

    .line 1189
    iput v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->tagViewFocusPosition:I

    goto :goto_6

    .line 1187
    :cond_3f
    add-int/lit8 v0, v0, 0x1

    goto :goto_2c

    .line 1196
    :cond_42
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_71

    .line 1197
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getId()I

    move-result v0

    const v1, 0x7f080155

    if-ne v0, v1, :cond_71

    .line 1198
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    .line 1199
    :goto_5f
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v1

    if-ge v3, v1, :cond_6

    .line 1200
    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-ne v1, p1, :cond_6e

    .line 1201
    iput v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->relateVideoFocusPosition:I

    goto :goto_6

    .line 1199
    :cond_6e
    add-int/lit8 v3, v3, 0x1

    goto :goto_5f

    .line 1207
    :cond_71
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_9e

    .line 1208
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getId()I

    move-result v0

    if-ne v0, v2, :cond_9e

    .line 1209
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    .line 1210
    :goto_8b
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v1

    if-ge v3, v1, :cond_6

    .line 1211
    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-ne v1, p1, :cond_9b

    .line 1212
    iput v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->epLayoutFocusPosition:I

    goto/16 :goto_6

    .line 1210
    :cond_9b
    add-int/lit8 v3, v3, 0x1

    goto :goto_8b

    .line 1216
    :cond_9e
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    if-ne v0, v2, :cond_bf

    .line 1218
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->o:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_6

    .line 1219
    :goto_a8
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->o:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v0

    if-ge v3, v0, :cond_6

    .line 1220
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->o:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-ne v0, p1, :cond_bc

    .line 1221
    iput v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->epLayoutFocusPosition:I

    goto/16 :goto_6

    .line 1219
    :cond_bc
    add-int/lit8 v3, v3, 0x1

    goto :goto_a8

    .line 1228
    :cond_bf
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_ef

    .line 1229
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getId()I

    move-result v0

    const v1, 0x7f080171

    if-ne v0, v1, :cond_ef

    .line 1230
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    .line 1231
    :goto_dc
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v1

    if-ge v3, v1, :cond_6

    .line 1232
    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-ne v1, p1, :cond_ec

    .line 1233
    iput v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->episodesVideoFocusPosition:I

    goto/16 :goto_6

    .line 1231
    :cond_ec
    add-int/lit8 v3, v3, 0x1

    goto :goto_dc

    .line 1239
    :cond_ef
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_6

    .line 1240
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    .line 1241
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getId()I

    move-result v1

    .line 1242
    const v2, 0x7f0801a5

    if-ne v1, v2, :cond_6

    .line 1243
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

    .line 1244
    iget-object v4, v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonSectionView;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    if-ne v4, v0, :cond_10c

    .line 1245
    const/4 v4, 0x0

    .line 1246
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

    .line 1247
    invoke-virtual {v2}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->getSectionId()I

    move-result v6

    iget v7, v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonSectionView;->sectionId:I

    if-ne v6, v7, :cond_123

    move-object v4, v2

    .line 1253
    :cond_138
    const/4 v2, -0x1

    .line 1254
    if-eqz v4, :cond_13f

    .line 1255
    invoke-virtual {v4, p1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->getDataPositionForView(Landroid/view/View;)I

    move-result v2

    .line 1258
    :cond_13f
    if-gez v2, :cond_169

    .line 1259
    :goto_141
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v5

    if-ge v3, v5, :cond_169

    .line 1260
    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-ne v5, p1, :cond_166

    .line 1267
    :goto_14d
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonSectionFocusPositions:Ljava/util/Map;

    iget v1, v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonSectionView;->sectionId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1268
    if-eqz v4, :cond_6

    .line 1269
    invoke-virtual {v4, v3}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setFocusPosition(I)V

    .line 1271
    invoke-direct {p0, v4, v3}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->updateNavTagSelectionForSection(Lcom/bilibili/tv/ui/video/widget/VideoListSection;I)V

    goto/16 :goto_6

    .line 1259
    :cond_166
    add-int/lit8 v3, v3, 0x1

    goto :goto_141

    :cond_169
    move v3, v2

    goto :goto_14d
.end method

.method private scrollToViewIfNeeded(Landroid/view/View;)V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 640
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->scrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_9

    if-nez p1, :cond_a

    .line 691
    :cond_9
    :goto_9
    return-void

    .line 643
    :cond_a
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 644
    const v3, 0x7f080192

    if-eq v0, v3, :cond_31

    const v3, 0x7f080195

    if-eq v0, v3, :cond_31

    const v3, 0x7f080196

    if-eq v0, v3, :cond_31

    const v3, 0x7f080167

    if-eq v0, v3, :cond_31

    const v3, 0x7f08016a

    if-eq v0, v3, :cond_31

    const v3, 0x7f08014d

    if-eq v0, v3, :cond_31

    const v3, 0x7f0801a1

    if-ne v0, v3, :cond_52

    :cond_31
    move v0, v2

    .line 652
    :goto_32
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->staffContainer:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_c4

    move v3, v1

    .line 653
    :goto_37
    iget-object v4, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->staffContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_c4

    .line 654
    iget-object v4, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->staffContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-ne v4, p1, :cond_54

    move v3, v2

    .line 660
    :goto_48
    if-nez v0, :cond_4c

    if-eqz v3, :cond_57

    .line 661
    :cond_4c
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->scrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v1, v1}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    goto :goto_9

    :cond_52
    move v0, v1

    .line 644
    goto :goto_32

    .line 653
    :cond_54
    add-int/lit8 v3, v3, 0x1

    goto :goto_37

    .line 664
    :cond_57
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 665
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->scrollView:Landroid/widget/ScrollView;

    invoke-virtual {v3, v0}, Landroid/widget/ScrollView;->getHitRect(Landroid/graphics/Rect;)V

    .line 666
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 667
    invoke-virtual {p1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 668
    new-array v3, v5, [I

    .line 669
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->scrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->getLocationOnScreen([I)V

    .line 670
    new-array v0, v5, [I

    .line 671
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 672
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 673
    const/high16 v4, 0x42480000    # 50.0f

    mul-float/2addr v0, v4

    float-to-int v4, v0

    .line 675
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->findSectionContainer(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 676
    if-eqz v0, :cond_8a

    move-object p1, v0

    .line 678
    :cond_8a
    new-array v0, v5, [I

    .line 679
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 680
    aget v0, v0, v2

    aget v2, v3, v2

    sub-int/2addr v0, v2

    .line 681
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v2, v0

    .line 683
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->scrollView:Landroid/widget/ScrollView;

    invoke-virtual {v3}, Landroid/widget/ScrollView;->getHeight()I

    move-result v3

    .line 684
    if-ge v0, v4, :cond_b0

    .line 685
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->scrollView:Landroid/widget/ScrollView;

    invoke-virtual {v2}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v2

    .line 686
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->scrollView:Landroid/widget/ScrollView;

    add-int/2addr v0, v2

    sub-int/2addr v0, v4

    invoke-virtual {v3, v1, v0}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    goto/16 :goto_9

    .line 687
    :cond_b0
    sub-int v0, v3, v4

    if-le v2, v0, :cond_9

    .line 688
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->scrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v0

    .line 689
    iget-object v5, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->scrollView:Landroid/widget/ScrollView;

    add-int/2addr v0, v2

    sub-int/2addr v0, v3

    add-int/2addr v0, v4

    invoke-virtual {v5, v1, v0}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    goto/16 :goto_9

    :cond_c4
    move v3, v1

    goto :goto_48
.end method

.method private setupGlobalFocusChangeListener()V
    .locals 2

    .prologue
    .line 567
    const v0, 0x1020002

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 568
    if-eqz v0, :cond_15

    .line 569
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$10;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$10;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalFocusChangeListener(Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;)V

    .line 593
    :cond_15
    return-void
.end method

.method private setupNavigationTagsForSection(Lcom/bilibili/tv/ui/video/widget/VideoListSection;I)V
    .locals 1

    .prologue
    .line 2689
    if-nez p1, :cond_3

    .line 2768
    :cond_2
    :goto_2
    return-void

    .line 2693
    :cond_3
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->getSectionId()I

    .line 2695
    invoke-virtual {p1, p2}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setupNavigationTags(I)V

    .line 2698
    new-instance v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$24;

    invoke-direct {v0, p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$24;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)V

    invoke-virtual {p1, v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setOnFocusExitListener(Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnFocusExitListener;)V

    .line 2746
    new-instance v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$25;

    invoke-direct {v0, p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$25;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)V

    invoke-virtual {p1, v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setOnNavTagFocusListener(Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnNavTagFocusListener;)V

    .line 2757
    new-instance v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$26;

    invoke-direct {v0, p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$26;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)V

    invoke-virtual {p1, v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setOnNavTagClickListener(Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnNavTagClickListener;)V

    .line 2764
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->getFocusPosition()I

    move-result v0

    .line 2765
    if-ltz v0, :cond_2

    .line 2766
    invoke-virtual {p1, v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->updateNavTagSelection(I)V

    goto :goto_2
.end method

.method private showFavoriteMenu()V
    .locals 4

    .prologue
    .line 3159
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->u:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    if-nez v0, :cond_5

    .line 3173
    :goto_4
    return-void

    .line 3162
    :cond_5
    new-instance v0, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;

    iget-wide v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->s:J

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->u:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    invoke-direct {v0, p0, v2, v3, v1}, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;-><init>(Landroid/app/Activity;JLcom/bilibili/tv/api/video/BiliVideoDetail;)V

    .line 3163
    new-instance v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$30;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$30;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)V

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;->setOnFavoriteStatusChangedListener(Lcom/bilibili/tv/ui/video/FavoriteMenuDialog$OnFavoriteStatusChangedListener;)V

    .line 3172
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;->show()V

    goto :goto_4
.end method

.method private showInteractionButtons()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 3449
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->expandBtn:Lcom/bilibili/tv/widget/DrawLinearLayout;

    if-eqz v0, :cond_c

    .line 3450
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->expandBtn:Lcom/bilibili/tv/widget/DrawLinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setVisibility(I)V

    .line 3452
    :cond_c
    const v0, 0x7f080167

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 3453
    const v1, 0x7f08016a

    invoke-virtual {p0, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 3454
    const v2, 0x7f08014d

    invoke-virtual {p0, v2}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 3455
    const v3, 0x7f0801a1

    invoke-virtual {p0, v3}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 3456
    const v4, 0x7f0801dc

    invoke-virtual {p0, v4}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 3457
    if-eqz v0, :cond_34

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 3458
    :cond_34
    if-eqz v1, :cond_39

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 3459
    :cond_39
    if-eqz v2, :cond_3e

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 3460
    :cond_3e
    if-eqz v3, :cond_43

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 3461
    :cond_43
    if-eqz v4, :cond_48

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 3462
    :cond_48
    return-void
.end method

.method private showPgcEpisodes(Lcom/bilibili/tv/api/video/PgcInfo;)V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 2545
    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo;->episodes:Ljava/util/List;

    if-eqz v0, :cond_e

    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo;->episodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 2546
    :cond_e
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->hh:Landroid/widget/TextView;

    if-eqz v0, :cond_17

    .line 2547
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->hh:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2549
    :cond_17
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->o:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_20

    .line 2550
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->o:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 2566
    :cond_20
    :goto_20
    return-void

    .line 2555
    :cond_21
    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo;->episodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_3d

    .line 2556
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->hh:Landroid/widget/TextView;

    if-eqz v0, :cond_33

    .line 2557
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->hh:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2559
    :cond_33
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->o:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_20

    .line 2560
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->o:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    goto :goto_20

    .line 2565
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

    .line 2377
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->pgcInfoContainer:Landroid/widget/LinearLayout;

    if-nez v0, :cond_d

    .line 2439
    :goto_c
    return-void

    .line 2380
    :cond_d
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->pgcInfoContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2382
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->pgcRating:Landroid/widget/TextView;

    if-eqz v0, :cond_f1

    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo;->rating:Lcom/bilibili/tv/api/video/PgcInfo$Rating;

    if-eqz v0, :cond_f1

    .line 2383
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->pgcRating:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/bilibili/tv/api/video/PgcInfo;->getRatingString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2384
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->pgcRating:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2389
    :cond_28
    :goto_28
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->pgcType:Landroid/widget/TextView;

    if-eqz v0, :cond_35

    .line 2390
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->pgcType:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/bilibili/tv/api/video/PgcInfo;->getTypeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2393
    :cond_35
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->pgcArea:Landroid/widget/TextView;

    if-eqz v0, :cond_42

    .line 2394
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->pgcArea:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/bilibili/tv/api/video/PgcInfo;->getAreaString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2397
    :cond_42
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->pgcNewEp:Landroid/widget/TextView;

    if-eqz v0, :cond_fe

    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo;->newEp:Lcom/bilibili/tv/api/video/PgcInfo$NewEp;

    if-eqz v0, :cond_fe

    .line 2398
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->pgcNewEp:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/bilibili/tv/api/video/PgcInfo;->newEp:Lcom/bilibili/tv/api/video/PgcInfo$NewEp;

    iget-object v1, v1, Lcom/bilibili/tv/api/video/PgcInfo$NewEp;->indexShow:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2403
    :cond_53
    :goto_53
    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo;->badgeInfo:Lcom/bilibili/tv/api/video/PgcInfo$BadgeInfo;

    if-eqz v0, :cond_e6

    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo;->badgeInfo:Lcom/bilibili/tv/api/video/PgcInfo$BadgeInfo;

    iget-object v0, v0, Lcom/bilibili/tv/api/video/PgcInfo$BadgeInfo;->text:Ljava/lang/String;

    if-eqz v0, :cond_e6

    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo;->badgeInfo:Lcom/bilibili/tv/api/video/PgcInfo$BadgeInfo;

    iget-object v0, v0, Lcom/bilibili/tv/api/video/PgcInfo$BadgeInfo;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e6

    .line 2404
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 2405
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 2409
    const v2, 0x7f06014d

    invoke-static {v2}, Lbl/adl;->b(I)I

    move-result v2

    invoke-virtual {v1, v2, v5, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 2410
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2411
    const/high16 v1, 0x41600000    # 14.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 2412
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0500a1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2413
    iget-object v1, p1, Lcom/bilibili/tv/api/video/PgcInfo;->badgeInfo:Lcom/bilibili/tv/api/video/PgcInfo$BadgeInfo;

    iget-object v1, v1, Lcom/bilibili/tv/api/video/PgcInfo$BadgeInfo;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2414
    invoke-static {v3}, Lbl/adl;->b(I)I

    move-result v1

    invoke-static {v4}, Lbl/adl;->b(I)I

    move-result v2

    invoke-static {v3}, Lbl/adl;->b(I)I

    move-result v3

    invoke-static {v4}, Lbl/adl;->b(I)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 2415
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 2416
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 2417
    const/high16 v1, 0x40800000    # 4.0f

    invoke-virtual {p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    .line 2419
    :try_start_c0
    iget-object v2, p1, Lcom/bilibili/tv/api/video/PgcInfo;->badgeInfo:Lcom/bilibili/tv/api/video/PgcInfo$BadgeInfo;

    iget-object v2, v2, Lcom/bilibili/tv/api/video/PgcInfo$BadgeInfo;->bgColor:Ljava/lang/String;

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    .line 2420
    const v3, 0xffffff

    and-int/2addr v2, v3

    const/high16 v3, -0x67000000

    or-int/2addr v2, v3

    .line 2421
    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 2422
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 2423
    invoke-virtual {v3, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 2424
    invoke-virtual {v3, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 2425
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V
    :try_end_e1
    .catch Ljava/lang/Exception; {:try_start_c0 .. :try_end_e1} :catch_10b

    .line 2433
    :goto_e1
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->pgcInfoContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2436
    :cond_e6
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->showPgcSections(Lcom/bilibili/tv/api/video/PgcInfo;)V

    .line 2437
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->showPgcEpisodes(Lcom/bilibili/tv/api/video/PgcInfo;)V

    .line 2438
    invoke-direct {p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->refreshVisualOrder()V

    goto/16 :goto_c

    .line 2385
    :cond_f1
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->pgcRating:Landroid/widget/TextView;

    if-eqz v0, :cond_28

    .line 2386
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->pgcRating:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_28

    .line 2399
    :cond_fe
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->pgcNewEp:Landroid/widget/TextView;

    if-eqz v0, :cond_53

    .line 2400
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->pgcNewEp:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_53

    .line 2426
    :catch_10b
    move-exception v2

    .line 2427
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 2428
    invoke-virtual {v2, v5}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 2429
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 2430
    const v1, -0x66048d67    # -2.5999077E-23f

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 2431
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_e1
.end method

.method private showPgcSections(Lcom/bilibili/tv/api/video/PgcInfo;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2654
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonsContainer:Landroid/widget/LinearLayout;

    if-nez v0, :cond_7

    .line 2686
    :cond_6
    return-void

    .line 2658
    :cond_7
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2659
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 2660
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonSectionViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2661
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->videoListNavigator:Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;

    if-eqz v0, :cond_1f

    .line 2662
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->videoListNavigator:Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->clearSections()V

    .line 2665
    :cond_1f
    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo;->seasons:Ljava/util/List;

    if-eqz v0, :cond_61

    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo;->seasons:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_61

    move v0, v1

    .line 2666
    :goto_2c
    iget-object v3, p1, Lcom/bilibili/tv/api/video/PgcInfo;->sections:Ljava/util/List;

    if-eqz v3, :cond_63

    iget-object v3, p1, Lcom/bilibili/tv/api/video/PgcInfo;->sections:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_63

    move v3, v1

    .line 2668
    :goto_39
    if-nez v0, :cond_3d

    if-eqz v3, :cond_6

    .line 2674
    :cond_3d
    if-eqz v0, :cond_65

    .line 2675
    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo;->seasons:Ljava/util/List;

    invoke-direct {p0, v0, v2}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->createSeasonsSectionView(Ljava/util/List;I)V

    move v0, v1

    .line 2679
    :goto_45
    if-eqz v3, :cond_6

    move v1, v0

    .line 2680
    :goto_48
    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo;->sections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_6

    .line 2681
    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo;->sections:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/PgcInfo$Section;

    .line 2682
    invoke-direct {p0, v0, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->createPgcSectionView(Lcom/bilibili/tv/api/video/PgcInfo$Section;I)V

    .line 2683
    add-int/lit8 v0, v1, 0x1

    .line 2680
    add-int/lit8 v2, v2, 0x1

    move v1, v0

    goto :goto_48

    :cond_61
    move v0, v2

    .line 2665
    goto :goto_2c

    :cond_63
    move v3, v2

    .line 2666
    goto :goto_39

    :cond_65
    move v0, v2

    goto :goto_45
.end method

.method private final tripleVideo()V
    .locals 6

    .prologue
    .line 3368
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->B:Z

    if-eqz v0, :cond_5

    .line 3377
    :goto_4
    return-void

    .line 3371
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->B:Z

    .line 3372
    invoke-static {p0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v0

    .line 3373
    const-string v1, "BiliAccount.get(this)"

    invoke-static {v0, v1}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3374
    invoke-static {v0}, Lmybl/CookieUtil;->getFullCookieWithDevice(Lbl/mg;)Ljava/lang/String;

    move-result-object v1

    .line 3375
    invoke-static {v0}, Lmybl/CookieUtil;->getBiliJct(Lbl/mg;)Ljava/lang/String;

    move-result-object v2

    .line 3376
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

.method private updateBasicVideoInfo(Lcom/bilibili/tv/api/video/BiliVideoDetail;)V
    .locals 7

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 2335
    const-string v0, "PgcInfo"

    const-string v1, "=== updateBasicVideoInfo ==="

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2337
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->e:Landroid/widget/TextView;

    .line 2338
    if-eqz v0, :cond_35

    .line 2339
    invoke-virtual {p1}, Lcom/bilibili/tv/api/video/BiliVideoDetail;->getPlays()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lbl/adh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2340
    const-string v0, "PgcInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Updated play count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/bilibili/tv/api/video/BiliVideoDetail;->getPlays()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2343
    :cond_35
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->ff:Landroid/widget/TextView;

    .line 2344
    if-eqz v0, :cond_60

    .line 2345
    invoke-virtual {p1}, Lcom/bilibili/tv/api/video/BiliVideoDetail;->getDanmakus()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lbl/adh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2346
    const-string v0, "PgcInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Updated danmaku count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/bilibili/tv/api/video/BiliVideoDetail;->getDanmakus()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2349
    :cond_60
    const v0, 0x7f08016d

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2350
    if-eqz v0, :cond_bb

    iget v1, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mDuration:I

    if-lez v1, :cond_bb

    .line 2351
    iget v1, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mDuration:I

    const/16 v2, 0xe10

    if-lt v1, v2, :cond_cd

    .line 2352
    const-string v1, "%d:%02d:%02d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mDuration:I

    div-int/lit16 v3, v3, 0xe10

    .line 2353
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    iget v3, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mDuration:I

    rem-int/lit16 v3, v3, 0xe10

    div-int/lit8 v3, v3, 0x3c

    .line 2354
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget v3, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mDuration:I

    rem-int/lit8 v3, v3, 0x3c

    .line 2355
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    .line 2352
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2361
    :goto_a1
    const-string v0, "PgcInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Updated duration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mDuration:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2364
    :cond_bb
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->g:Landroid/widget/TextView;

    .line 2365
    if-eqz v0, :cond_cc

    .line 2366
    iget-wide v2, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mCreatedTimestamp:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_ed

    .line 2367
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2374
    :cond_cc
    :goto_cc
    return-void

    .line 2357
    :cond_cd
    const-string v1, "%02d:%02d"

    new-array v2, v5, [Ljava/lang/Object;

    iget v3, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mDuration:I

    div-int/lit8 v3, v3, 0x3c

    .line 2358
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    iget v3, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mDuration:I

    rem-int/lit8 v3, v3, 0x3c

    .line 2359
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    .line 2357
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_a1

    .line 2369
    :cond_ed
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2370
    iget-wide v2, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mCreatedTimestamp:J

    invoke-static {v2, v3}, Lcom/bilibili/tv/util/DateHelper;->formatDate(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2371
    const-string v0, "PgcInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Updated pub date: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mCreatedTimestamp:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_cc
.end method

.method private updateBiliVideoDetailWithPgcInfo(Lcom/bilibili/tv/api/video/BiliVideoDetail;Lcom/bilibili/tv/api/video/PgcInfo;)V
    .locals 12

    .prologue
    const/4 v6, 0x0

    const-wide/16 v4, 0x0

    .line 2252
    const-string v0, "PgcInfo"

    const-string v1, "=== updateBiliVideoDetailWithPgcInfo ==="

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2253
    const-string v1, "PgcInfo"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "biliVideoDetail="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_9c

    const-string v0, "not null"

    :goto_1b
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2254
    const-string v1, "PgcInfo"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pgcInfo="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p2, :cond_a0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "not null, title="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p2, Lcom/bilibili/tv/api/video/PgcInfo;->title:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_4a
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2255
    const-string v1, "PgcInfo"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pgcInfo.episodes="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p2, :cond_a3

    iget-object v0, p2, Lcom/bilibili/tv/api/video/PgcInfo;->episodes:Ljava/util/List;

    if-eqz v0, :cond_a3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "size="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p2, Lcom/bilibili/tv/api/video/PgcInfo;->episodes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_81
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2257
    if-eqz p1, :cond_94

    if-eqz p2, :cond_94

    iget-object v0, p2, Lcom/bilibili/tv/api/video/PgcInfo;->episodes:Ljava/util/List;

    if-nez v0, :cond_a6

    .line 2258
    :cond_94
    const-string v0, "PgcInfo"

    const-string v1, "Early return: null check failed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2332
    :cond_9b
    :goto_9b
    return-void

    .line 2253
    :cond_9c
    const-string v0, "null"

    goto/16 :goto_1b

    .line 2254
    :cond_a0
    const-string v0, "null"

    goto :goto_4a

    .line 2255
    :cond_a3
    const-string v0, "null"

    goto :goto_81

    .line 2262
    :cond_a6
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mBangumiInfo:Lcom/bilibili/tv/api/video/BiliVideoDetail$BangumiInfo;

    if-nez v0, :cond_b1

    .line 2263
    new-instance v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$BangumiInfo;

    invoke-direct {v0}, Lcom/bilibili/tv/api/video/BiliVideoDetail$BangumiInfo;-><init>()V

    iput-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mBangumiInfo:Lcom/bilibili/tv/api/video/BiliVideoDetail$BangumiInfo;

    .line 2265
    :cond_b1
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mBangumiInfo:Lcom/bilibili/tv/api/video/BiliVideoDetail$BangumiInfo;

    iget v1, p2, Lcom/bilibili/tv/api/video/PgcInfo;->seasonId:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$BangumiInfo;->mSeasonId:Ljava/lang/String;

    .line 2266
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mBangumiInfo:Lcom/bilibili/tv/api/video/BiliVideoDetail$BangumiInfo;

    iget-object v1, p2, Lcom/bilibili/tv/api/video/PgcInfo;->title:Ljava/lang/String;

    iput-object v1, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$BangumiInfo;->mTitle:Ljava/lang/String;

    .line 2267
    const-string v0, "PgcInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set mBangumiInfo.mSeasonId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mBangumiInfo:Lcom/bilibili/tv/api/video/BiliVideoDetail$BangumiInfo;

    iget-object v2, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$BangumiInfo;->mSeasonId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2270
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    if-eqz v0, :cond_2aa

    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2aa

    .line 2271
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;

    iget-wide v0, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mCid:J

    move-wide v2, v0

    .line 2273
    :goto_f4
    const-string v0, "PgcInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "originalCid="

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2276
    iget-object v0, p2, Lcom/bilibili/tv/api/video/PgcInfo;->episodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_112
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/PgcInfo$Episode;

    .line 2277
    iget-wide v8, v0, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->cid:J

    cmp-long v7, v8, v2

    if-nez v7, :cond_112

    .line 2278
    const/4 v1, 0x1

    .line 2279
    const-string v7, "PgcInfo"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Found matching episode: ep_id="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v0, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->id:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", cid="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v10, v0, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->cid:J

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 2284
    :goto_14c
    if-nez v0, :cond_172

    cmp-long v0, v2, v4

    if-lez v0, :cond_172

    .line 2285
    const-string v0, "PgcInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Original cid "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not found in PGC episodes, keeping original mPageList"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9b

    .line 2289
    :cond_172
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    if-nez v0, :cond_17d

    .line 2290
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    .line 2292
    :cond_17d
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    move v1, v6

    .line 2293
    :goto_183
    iget-object v0, p2, Lcom/bilibili/tv/api/video/PgcInfo;->episodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1a2

    .line 2294
    iget-object v0, p2, Lcom/bilibili/tv/api/video/PgcInfo;->episodes:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/PgcInfo$Episode;

    .line 2295
    add-int/lit8 v2, v1, 0x1

    invoke-direct {p0, v0, v2}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->convertEpisodeToPage(Lcom/bilibili/tv/api/video/PgcInfo$Episode;I)Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;

    move-result-object v0

    .line 2296
    iget-object v2, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2293
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_183

    .line 2298
    :cond_1a2
    const-string v0, "PgcInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Updated mPageList with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " episodes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2300
    iget-object v0, p2, Lcom/bilibili/tv/api/video/PgcInfo;->stat:Lcom/bilibili/tv/api/video/PgcInfo$Stat;

    if-eqz v0, :cond_217

    .line 2301
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mStat:Lcom/bilibili/tv/api/video/BiliVideoDetail$Stat;

    if-nez v0, :cond_1d5

    .line 2302
    new-instance v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Stat;

    invoke-direct {v0}, Lcom/bilibili/tv/api/video/BiliVideoDetail$Stat;-><init>()V

    iput-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mStat:Lcom/bilibili/tv/api/video/BiliVideoDetail$Stat;

    .line 2304
    :cond_1d5
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mStat:Lcom/bilibili/tv/api/video/BiliVideoDetail$Stat;

    iget-object v1, p2, Lcom/bilibili/tv/api/video/PgcInfo;->stat:Lcom/bilibili/tv/api/video/PgcInfo$Stat;

    iget-wide v2, v1, Lcom/bilibili/tv/api/video/PgcInfo$Stat;->views:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Stat;->mPlays:Ljava/lang/String;

    .line 2305
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mStat:Lcom/bilibili/tv/api/video/BiliVideoDetail$Stat;

    iget-object v1, p2, Lcom/bilibili/tv/api/video/PgcInfo;->stat:Lcom/bilibili/tv/api/video/PgcInfo$Stat;

    iget-wide v2, v1, Lcom/bilibili/tv/api/video/PgcInfo$Stat;->danmakus:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Stat;->mDanmakus:Ljava/lang/String;

    .line 2306
    const-string v0, "PgcInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Updated mStat: plays="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/bilibili/tv/api/video/PgcInfo;->stat:Lcom/bilibili/tv/api/video/PgcInfo$Stat;

    iget-wide v2, v2, Lcom/bilibili/tv/api/video/PgcInfo$Stat;->views:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", danmakus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/bilibili/tv/api/video/PgcInfo;->stat:Lcom/bilibili/tv/api/video/PgcInfo$Stat;

    iget-wide v2, v2, Lcom/bilibili/tv/api/video/PgcInfo$Stat;->danmakus:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2309
    :cond_217
    iget-object v0, p2, Lcom/bilibili/tv/api/video/PgcInfo;->userStatus:Lcom/bilibili/tv/api/video/PgcInfo$UserStatus;

    if-eqz v0, :cond_9b

    iget-object v0, p2, Lcom/bilibili/tv/api/video/PgcInfo;->userStatus:Lcom/bilibili/tv/api/video/PgcInfo$UserStatus;

    iget-object v0, v0, Lcom/bilibili/tv/api/video/PgcInfo$UserStatus;->progress:Lcom/bilibili/tv/api/video/PgcInfo$Progress;

    if-eqz v0, :cond_9b

    .line 2310
    iget-object v0, p2, Lcom/bilibili/tv/api/video/PgcInfo;->userStatus:Lcom/bilibili/tv/api/video/PgcInfo$UserStatus;

    iget-object v0, v0, Lcom/bilibili/tv/api/video/PgcInfo$UserStatus;->progress:Lcom/bilibili/tv/api/video/PgcInfo$Progress;

    .line 2311
    iget-wide v2, v0, Lcom/bilibili/tv/api/video/PgcInfo$Progress;->lastEpId:J

    .line 2312
    iget v6, v0, Lcom/bilibili/tv/api/video/PgcInfo$Progress;->lastTime:I

    .line 2314
    const-string v0, "PgcInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Found user progress: last_ep_id="

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, ", last_time="

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, "s"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2317
    iget-object v0, p2, Lcom/bilibili/tv/api/video/PgcInfo;->episodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_257
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/PgcInfo$Episode;

    .line 2318
    iget v7, v0, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->id:I

    int-to-long v8, v7

    cmp-long v7, v8, v2

    if-nez v7, :cond_257

    .line 2319
    iget-wide v0, v0, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->cid:J

    .line 2324
    :goto_26c
    cmp-long v2, v0, v4

    if-lez v2, :cond_9b

    .line 2325
    new-instance v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$History;

    invoke-direct {v2}, Lcom/bilibili/tv/api/video/BiliVideoDetail$History;-><init>()V

    .line 2326
    iput-wide v0, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$History;->mCid:J

    .line 2327
    iput v6, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$History;->mProgress:I

    .line 2328
    iput-object v2, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mHistory:Lcom/bilibili/tv/api/video/BiliVideoDetail$History;

    .line 2329
    const-string v2, "PgcInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Set history: cid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", progress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "s (\u5141\u8bb8progress=0)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9b

    :cond_2a5
    move-wide v0, v4

    goto :goto_26c

    :cond_2a7
    move v0, v6

    goto/16 :goto_14c

    :cond_2aa
    move-wide v2, v4

    goto/16 :goto_f4
.end method

.method private final updateHistoryDisplay(Lcom/bilibili/tv/api/video/BiliVideoDetail;)V
    .locals 12

    .prologue
    const v11, 0x7f080195

    const/16 v10, 0x8

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1978
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyProgress:Landroid/widget/TextView;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtn:Lcom/bilibili/tv/widget/DrawTextView;

    if-nez v0, :cond_18

    .line 2053
    :cond_17
    :goto_17
    return-void

    .line 1981
    :cond_18
    if-eqz p1, :cond_17

    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mHistory:Lcom/bilibili/tv/api/video/BiliVideoDetail$History;

    if-eqz v0, :cond_17

    .line 1986
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->episodes:Lcom/alibaba/fastjson/JSONArray;

    if-eqz v0, :cond_11e

    .line 1987
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->episodes:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    add-int/2addr v0, v1

    .line 1989
    :goto_29
    iget-object v3, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    if-eqz v3, :cond_34

    .line 1990
    iget-object v3, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v0, v3

    .line 1992
    :cond_34
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mHistory:Lcom/bilibili/tv/api/video/BiliVideoDetail$History;

    iget-wide v4, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$History;->mCid:J

    .line 1993
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mHistory:Lcom/bilibili/tv/api/video/BiliVideoDetail$History;

    iget v6, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$History;->mProgress:I

    .line 1994
    invoke-direct {p0, v4, v5, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->findTitleByCid(JLcom/bilibili/tv/api/video/BiliVideoDetail;)Ljava/lang/String;

    move-result-object v7

    .line 1996
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtn:Lcom/bilibili/tv/widget/DrawTextView;

    const-string v3, "\u7ee7\u7eed\u64ad\u653e"

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/widget/DrawTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1997
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->rePlayBtn:Lcom/bilibili/tv/widget/DrawTextView;

    const-string v3, "\u91cd\u64ad"

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/widget/DrawTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1999
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_57

    .line 2000
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2002
    :cond_57
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->noHistoryPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    if-eqz v0, :cond_60

    .line 2003
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->noHistoryPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    invoke-virtual {v0, v10}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setVisibility(I)V

    .line 2005
    :cond_60
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->rePlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    if-eqz v0, :cond_69

    .line 2006
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->rePlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setVisibility(I)V

    .line 2009
    :cond_69
    const-wide/16 v8, 0x0

    cmp-long v0, v4, v8

    if-lez v0, :cond_b5

    move v0, v2

    .line 2010
    :goto_70
    const/4 v3, -0x1

    if-ne v6, v3, :cond_b7

    move v5, v2

    .line 2011
    :goto_74
    if-lez v6, :cond_b9

    move v4, v2

    .line 2012
    :goto_77
    if-eqz v7, :cond_bb

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_bb

    move v3, v2

    .line 2014
    :goto_80
    if-nez v0, :cond_bd

    .line 2015
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_8b

    .line 2016
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2018
    :cond_8b
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2019
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyProgress:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2044
    :goto_95
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    if-eqz v0, :cond_9e

    .line 2045
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    invoke-virtual {v0, v11}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setNextFocusRightId(I)V

    .line 2047
    :cond_9e
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->rePlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    if-eqz v0, :cond_aa

    .line 2048
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->rePlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    const v1, 0x7f0801df

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setNextFocusRightId(I)V

    .line 2050
    :cond_aa
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->expandBtn:Lcom/bilibili/tv/widget/DrawLinearLayout;

    if-eqz v0, :cond_17

    .line 2051
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->expandBtn:Lcom/bilibili/tv/widget/DrawLinearLayout;

    invoke-virtual {v0, v11}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setNextFocusLeftId(I)V

    goto/16 :goto_17

    :cond_b5
    move v0, v1

    .line 2009
    goto :goto_70

    :cond_b7
    move v5, v1

    .line 2010
    goto :goto_74

    :cond_b9
    move v4, v1

    .line 2011
    goto :goto_77

    :cond_bb
    move v3, v1

    .line 2012
    goto :goto_80

    .line 2021
    :cond_bd
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    if-eqz v0, :cond_f7

    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v2, :cond_f7

    move v0, v2

    .line 2022
    :goto_ca
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyLabel:Landroid/widget/TextView;

    if-eqz v2, :cond_da

    .line 2023
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyLabel:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2024
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyLabel:Landroid/widget/TextView;

    const-string v8, "\u4e0a\u6b21\u64ad\u653e\u5230"

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2026
    :cond_da
    if-eqz v3, :cond_f9

    if-eqz v0, :cond_f9

    .line 2027
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2028
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2032
    :goto_e8
    if-eqz v5, :cond_ff

    .line 2033
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyProgress:Landroid/widget/TextView;

    const-string v2, "\u5df2\u770b\u5b8c"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2034
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyProgress:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_95

    :cond_f7
    move v0, v1

    .line 2021
    goto :goto_ca

    .line 2030
    :cond_f9
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_e8

    .line 2035
    :cond_ff
    if-eqz v4, :cond_110

    .line 2036
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyProgress:Landroid/widget/TextView;

    invoke-direct {p0, v6}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->formatProgressTime(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2037
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyProgress:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_95

    .line 2039
    :cond_110
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyProgress:Landroid/widget/TextView;

    const-string v2, "00:00"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2040
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyProgress:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_95

    :cond_11e
    move v0, v1

    goto/16 :goto_29
.end method

.method private updateNavTagSelectionForSection(Lcom/bilibili/tv/ui/video/widget/VideoListSection;I)V
    .locals 1

    .prologue
    .line 2771
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->hasNavigationTags()Z

    move-result v0

    if-nez v0, :cond_9

    .line 2776
    :cond_8
    :goto_8
    return-void

    .line 2775
    :cond_9
    invoke-virtual {p1, p2}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->updateNavTagSelection(I)V

    goto :goto_8
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 231
    const-string v0, "ott-platform.detail.0.0.pv"

    return-object v0
.end method

.method public final a(Landroid/app/Activity;Lcom/bilibili/tv/api/video/BiliVideoDetail;)V
    .locals 2

    .prologue
    .line 2085
    const-string v0, "video"

    invoke-static {p2, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2086
    invoke-direct {p0, p2}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->a(Lcom/bilibili/tv/api/video/BiliVideoDetail;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 2098
    :cond_b
    :goto_b
    return-void

    .line 2089
    :cond_c
    if-eqz p1, :cond_b

    .line 2092
    invoke-direct {p0, p2}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->b(Lcom/bilibili/tv/api/video/BiliVideoDetail;)Ljava/lang/String;

    move-result-object v0

    .line 2093
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 2096
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 2097
    invoke-direct {p0, p1, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_b
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 251
    invoke-direct {p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->m()V

    .line 252
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->mIsPgcMode:Z

    if-nez v0, :cond_19

    iget-wide v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->s:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_19

    .line 253
    const v0, 0x7f0c0170

    invoke-static {p0, v0}, Lbl/lr;->a(Landroid/content/Context;I)V

    .line 254
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->finish()V

    .line 260
    :goto_18
    return-void

    .line 257
    :cond_19
    invoke-direct {p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->k()V

    .line 258
    new-instance v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;

    invoke-direct {v0, p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)V

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->A:Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;

    .line 259
    const-string v0, "tv_video_view_open"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lbl/ok;->a(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_18
.end method

.method public final a(Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;)V
    .locals 2

    .prologue
    .line 3445
    sget-object v0, Lbl/aft;->a:Lbl/aft;

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->u:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    invoke-virtual {v0, p0, v1, p1}, Lbl/aft;->a(Landroid/app/Activity;Lcom/bilibili/tv/api/video/BiliVideoDetail;Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;)V

    .line 3446
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 851
    if-eqz p1, :cond_b

    .line 852
    invoke-static {}, Lbl/nv;->a()Lbl/nv;

    move-result-object v0

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, p1, v1}, Lbl/nv;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 854
    :cond_b
    return-void
.end method

.method public a_()Z
    .locals 1

    .prologue
    .line 236
    invoke-static {p0}, Lbl/wg;->a(Lbl/wf;)Z

    move-result v0

    return v0
.end method

.method public b()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 241
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

    .line 866
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->w:Lbl/add;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->relateCardAdapter:Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;

    if-nez v0, :cond_15

    .line 867
    :cond_10
    invoke-super {p0, p1}, Lcom/bilibili/tv/ui/base/BaseActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 982
    :goto_14
    return v0

    .line 869
    :cond_15
    if-eqz p1, :cond_3d

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v2, v0

    .line 870
    :goto_20
    if-eqz p1, :cond_40

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 872
    :goto_2a
    if-eqz v2, :cond_242

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_242

    .line 873
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v2

    .line 875
    if-nez v2, :cond_42

    .line 876
    invoke-super {p0, p1}, Lcom/bilibili/tv/ui/base/BaseActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_14

    .line 869
    :cond_3d
    const/4 v0, 0x0

    move-object v2, v0

    goto :goto_20

    .line 870
    :cond_40
    const/4 v0, 0x0

    goto :goto_2a

    .line 879
    :cond_42
    invoke-direct {p0, v2}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->saveCurrentFocusPosition(Landroid/view/View;)V

    .line 881
    if-eqz v0, :cond_d3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v6, :cond_d3

    .line 882
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    const v4, 0x7f080167

    if-eq v3, v4, :cond_71

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    const v4, 0x7f08016a

    if-eq v3, v4, :cond_71

    .line 883
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    const v4, 0x7f08014d

    if-eq v3, v4, :cond_71

    .line 884
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    const v4, 0x7f0801a1

    if-ne v3, v4, :cond_b2

    .line 885
    :cond_71
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->staffContainer:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_8a

    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->staffContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-lez v3, :cond_8a

    .line 886
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->staffContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 887
    if-eqz v3, :cond_8a

    .line 888
    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    move v0, v1

    .line 889
    goto :goto_14

    .line 892
    :cond_8a
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    if-eqz v3, :cond_9e

    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    invoke-virtual {v3}, Lcom/bilibili/tv/widget/DrawLinearLayout;->getVisibility()I

    move-result v3

    if-nez v3, :cond_9e

    .line 893
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    invoke-virtual {v0}, Lcom/bilibili/tv/widget/DrawLinearLayout;->requestFocus()Z

    move v0, v1

    .line 894
    goto/16 :goto_14

    .line 895
    :cond_9e
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->rePlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    if-eqz v3, :cond_b2

    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->rePlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    invoke-virtual {v3}, Lcom/bilibili/tv/widget/DrawLinearLayout;->getVisibility()I

    move-result v3

    if-nez v3, :cond_b2

    .line 896
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->rePlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    invoke-virtual {v0}, Lcom/bilibili/tv/widget/DrawLinearLayout;->requestFocus()Z

    move v0, v1

    .line 897
    goto/16 :goto_14

    .line 900
    :cond_b2
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    const v4, 0x7f080192

    if-eq v3, v4, :cond_cd

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    const v4, 0x7f080195

    if-eq v3, v4, :cond_cd

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    const v4, 0x7f080196

    if-ne v3, v4, :cond_217

    .line 901
    :cond_cd
    invoke-super {p0, p1}, Lcom/bilibili/tv/ui/base/BaseActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto/16 :goto_14

    .line 903
    :cond_d3
    if-eqz v0, :cond_217

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v7, :cond_217

    .line 904
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    const v4, 0x7f080167

    if-eq v3, v4, :cond_11a

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    const v4, 0x7f08016a

    if-eq v3, v4, :cond_11a

    .line 905
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    const v4, 0x7f08014d

    if-eq v3, v4, :cond_11a

    .line 906
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    const v4, 0x7f0801a1

    if-eq v3, v4, :cond_11a

    .line 907
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    const v4, 0x7f080192

    if-eq v3, v4, :cond_11a

    .line 908
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    const v4, 0x7f080195

    if-eq v3, v4, :cond_11a

    .line 909
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    const v4, 0x7f080196

    if-ne v3, v4, :cond_217

    .line 910
    :cond_11a
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->o:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_159

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->o:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_159

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->o:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_159

    .line 911
    iget v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->epLayoutFocusPosition:I

    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->o:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 912
    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 913
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->o:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 914
    if-eqz v0, :cond_211

    .line 915
    iput-boolean v5, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->blockEpisodeAutoFocus:Z

    .line 916
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->o:Landroid/support/v7/widget/RecyclerView;

    if-eqz v2, :cond_153

    .line 917
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->o:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v8}, Landroid/support/v7/widget/RecyclerView;->setDescendantFocusability(I)V

    .line 919
    :cond_153
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    move v0, v1

    .line 920
    goto/16 :goto_14

    .line 922
    :cond_159
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonsContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_19e

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_19e

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonSectionViews:Ljava/util/List;

    .line 923
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_19e

    .line 924
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonSectionViews:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonSectionView;

    .line 925
    iget-object v2, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonSectionView;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v2, :cond_211

    iget-object v2, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonSectionView;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_211

    .line 926
    iget v2, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonSectionView;->sectionId:I

    invoke-direct {p0, v2}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->getSeasonSectionFocusPosition(I)I

    move-result v2

    .line 928
    iget v3, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonSectionView;->sectionId:I

    invoke-direct {p0, v3}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->findVideoListSection(I)Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    move-result-object v3

    .line 929
    if-eqz v3, :cond_198

    .line 930
    invoke-virtual {v3, v2}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setFocusPosition(I)V

    .line 931
    invoke-virtual {v3}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->requestFocusOnSavedPosition()Z

    :goto_195
    move v0, v1

    .line 935
    goto/16 :goto_14

    .line 933
    :cond_198
    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonSectionView;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->requestFocus()Z

    goto :goto_195

    .line 937
    :cond_19e
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->episodes_video:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_1dd

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->episodes_video:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1dd

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->episodes_video:Landroid/support/v7/widget/RecyclerView;

    .line 938
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1dd

    .line 939
    iget v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->episodesVideoFocusPosition:I

    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->episodes_video:Landroid/support/v7/widget/RecyclerView;

    .line 940
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 939
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 941
    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 942
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->episodes_video:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 943
    if-eqz v0, :cond_211

    .line 944
    iput-boolean v5, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->blockEpisodeAutoFocus:Z

    .line 945
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->episodes_video:Landroid/support/v7/widget/RecyclerView;

    if-eqz v2, :cond_1d7

    .line 946
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->episodes_video:Landroid/support/v7/widget/RecyclerView;

    .line 947
    invoke-virtual {v2, v8}, Landroid/support/v7/widget/RecyclerView;->setDescendantFocusability(I)V

    .line 949
    :cond_1d7
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    move v0, v1

    .line 950
    goto/16 :goto_14

    .line 952
    :cond_1dd
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->r:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_211

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->r:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_211

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->r:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_211

    .line 953
    iget v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->relateVideoFocusPosition:I

    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->r:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 954
    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 955
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->r:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 956
    if-eqz v0, :cond_211

    .line 957
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    move v0, v1

    .line 958
    goto/16 :goto_14

    .line 961
    :cond_211
    invoke-super {p0, p1}, Lcom/bilibili/tv/ui/base/BaseActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto/16 :goto_14

    .line 965
    :cond_217
    if-eqz v0, :cond_242

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v3, v6, :cond_225

    .line 966
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v7, :cond_242

    .line 969
    :cond_225
    invoke-direct {p0, v2}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->getCurrentListType(Landroid/view/View;)I

    move-result v3

    .line 970
    const/4 v4, 0x5

    if-eq v3, v4, :cond_22f

    const/4 v4, 0x6

    if-ne v3, v4, :cond_235

    .line 973
    :cond_22f
    invoke-super {p0, p1}, Lcom/bilibili/tv/ui/base/BaseActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto/16 :goto_14

    .line 976
    :cond_235
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v2, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->handleListFocusNavigation(Landroid/view/View;I)Z

    move-result v0

    .line 977
    if-eqz v0, :cond_242

    move v0, v1

    .line 978
    goto/16 :goto_14

    .line 982
    :cond_242
    invoke-super {p0, p1}, Lcom/bilibili/tv/ui/base/BaseActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto/16 :goto_14
.end method

.method public g()I
    .locals 1

    .prologue
    .line 246
    const v0, 0x7f0a002b

    return v0
.end method

.method public final l()Lcom/bilibili/tv/widget/DrawTextView;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 738
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0a004b

    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->o:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 740
    const v1, 0x7f08014c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawTextView;

    .line 741
    if-nez v0, :cond_21

    .line 742
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.bilibili.tv.widget.DrawTextView"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 744
    :cond_21
    invoke-virtual {v0}, Lcom/bilibili/tv/widget/DrawTextView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 745
    if-eqz v1, :cond_2c

    .line 746
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 748
    :cond_2c
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawTextView;->setFocusable(Z)V

    .line 749
    invoke-virtual {v0, v3}, Lcom/bilibili/tv/widget/DrawTextView;->setFocusableInTouchMode(Z)V

    .line 750
    invoke-virtual {v0}, Lcom/bilibili/tv/widget/DrawTextView;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawTextView;->setNextFocusRightId(I)V

    .line 751
    const v1, 0x7f0c015d

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawTextView;->setText(I)V

    .line 752
    invoke-virtual {v0}, Lcom/bilibili/tv/widget/DrawTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/4 v2, -0x1

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 753
    invoke-virtual {v0}, Lcom/bilibili/tv/widget/DrawTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0600a0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 754
    new-instance v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$k;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$k;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)V

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 755
    return-object v0
.end method

.method public final o()V
    .locals 3

    .prologue
    .line 3125
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->u:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    .line 3126
    if-eqz v2, :cond_7e

    .line 3127
    const v0, 0x7f080168

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 3128
    if-eqz v0, :cond_1b

    .line 3130
    invoke-virtual {v2}, Lcom/bilibili/tv/api/video/BiliVideoDetail;->isLikeVideo()Z

    move-result v1

    if-eqz v1, :cond_7f

    const v1, 0x7f0700fb

    .line 3129
    :goto_18
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 3132
    :cond_1b
    const v0, 0x7f080169

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 3133
    if-eqz v0, :cond_31

    .line 3134
    invoke-virtual {v2}, Lcom/bilibili/tv/api/video/BiliVideoDetail;->isLikeVideo()Z

    move-result v1

    if-eqz v1, :cond_83

    const-string v1, "\u5df2\u70b9\u8d5e"

    :goto_2e
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3136
    :cond_31
    const v0, 0x7f08016b

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 3137
    if-eqz v0, :cond_48

    .line 3139
    invoke-virtual {v2}, Lcom/bilibili/tv/api/video/BiliVideoDetail;->isCoinVideo()Z

    move-result v1

    if-eqz v1, :cond_86

    const v1, 0x7f0700f9

    .line 3138
    :goto_45
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 3141
    :cond_48
    const v0, 0x7f08016c

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 3142
    if-eqz v0, :cond_5e

    .line 3143
    invoke-virtual {v2}, Lcom/bilibili/tv/api/video/BiliVideoDetail;->isCoinVideo()Z

    move-result v1

    if-eqz v1, :cond_8a

    const-string v1, "\u5df2\u6295\u5e01"

    :goto_5b
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3145
    :cond_5e
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->k:Landroid/widget/ImageView;

    .line 3146
    if-eqz v1, :cond_6e

    .line 3148
    invoke-virtual {v2}, Lcom/bilibili/tv/api/video/BiliVideoDetail;->isFavoriteVideo()Z

    move-result v0

    if-eqz v0, :cond_8d

    const v0, 0x7f07006a

    .line 3147
    :goto_6b
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 3150
    :cond_6e
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->l:Landroid/widget/TextView;

    .line 3151
    if-eqz v1, :cond_7e

    .line 3153
    invoke-virtual {v2}, Lcom/bilibili/tv/api/video/BiliVideoDetail;->isFavoriteVideo()Z

    move-result v0

    if-eqz v0, :cond_91

    const v0, 0x7f0c0167

    .line 3152
    :goto_7b
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 3156
    :cond_7e
    return-void

    .line 3130
    :cond_7f
    const v1, 0x7f0700fa

    goto :goto_18

    .line 3134
    :cond_83
    const-string v1, "\u70b9\u8d5e"

    goto :goto_2e

    .line 3139
    :cond_86
    const v1, 0x7f0700f8

    goto :goto_45

    .line 3143
    :cond_8a
    const-string v1, "\u6295\u5e01"

    goto :goto_5b

    .line 3148
    :cond_8d
    const v0, 0x7f070069

    goto :goto_6b

    .line 3153
    :cond_91
    const v0, 0x7f0c0166

    goto :goto_7b
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v1, -0x1

    .line 3105
    if-ne p2, v1, :cond_10

    const/16 v0, 0x2752

    if-eq p1, v0, :cond_d

    const/16 v0, 0x2753

    if-ne p1, v0, :cond_10

    .line 3106
    :cond_d
    invoke-direct {p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->n()V

    .line 3108
    :cond_10
    if-ne p2, v1, :cond_4f

    const/16 v0, 0x2754

    if-ne p1, v0, :cond_4f

    if-eqz p3, :cond_4f

    .line 3109
    const-string v0, "last_cid"

    invoke-virtual {p3, v0, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 3110
    const-string v2, "last_progress"

    const/4 v3, 0x0

    invoke-virtual {p3, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 3111
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->u:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    if-eqz v3, :cond_4f

    cmp-long v3, v0, v4

    if-lez v3, :cond_4f

    .line 3112
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->u:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    iget-object v3, v3, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mHistory:Lcom/bilibili/tv/api/video/BiliVideoDetail$History;

    if-nez v3, :cond_3c

    .line 3113
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->u:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    new-instance v4, Lcom/bilibili/tv/api/video/BiliVideoDetail$History;

    invoke-direct {v4}, Lcom/bilibili/tv/api/video/BiliVideoDetail$History;-><init>()V

    iput-object v4, v3, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mHistory:Lcom/bilibili/tv/api/video/BiliVideoDetail$History;

    .line 3115
    :cond_3c
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->u:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    iget-object v3, v3, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mHistory:Lcom/bilibili/tv/api/video/BiliVideoDetail$History;

    iput-wide v0, v3, Lcom/bilibili/tv/api/video/BiliVideoDetail$History;->mCid:J

    .line 3116
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->u:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    iget-object v0, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mHistory:Lcom/bilibili/tv/api/video/BiliVideoDetail$History;

    div-int/lit16 v1, v2, 0x3e8

    iput v1, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$History;->mProgress:I

    .line 3117
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->u:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    invoke-direct {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->updateHistoryDisplay(Lcom/bilibili/tv/api/video/BiliVideoDetail;)V

    .line 3120
    :cond_4f
    invoke-super {p0, p1, p2, p3}, Lcom/bilibili/tv/ui/base/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 3121
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 11

    .prologue
    const/4 v2, 0x1

    const/4 v10, 0x0

    .line 3008
    const-string v0, "v"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3009
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 3010
    const v1, 0x7f080167

    if-ne v0, v1, :cond_39

    .line 3011
    invoke-static {p0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v0

    .line 3012
    const-string v1, "BiliAccount.get(this)"

    invoke-static {v0, v1}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3013
    invoke-virtual {v0}, Lbl/mg;->a()Z

    move-result v0

    if-nez v0, :cond_25

    .line 3014
    const-string v0, "\u8d26\u53f7\u672a\u767b\u5f55\uff0c\u65e0\u6cd5\u70b9\u51fb"

    invoke-static {p0, v0}, Lbl/lr;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 3081
    :cond_24
    :goto_24
    return-void

    .line 3017
    :cond_25
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->u:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->u:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    invoke-virtual {v0}, Lcom/bilibili/tv/api/video/BiliVideoDetail;->isLikeVideo()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 3018
    invoke-direct {p0, v2}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->likeVideo(I)V

    goto :goto_24

    .line 3021
    :cond_35
    invoke-direct {p0, v10}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->likeVideo(I)V

    goto :goto_24

    .line 3023
    :cond_39
    const v1, 0x7f08016a

    if-ne v0, v1, :cond_57

    .line 3024
    invoke-static {p0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v0

    .line 3025
    const-string v1, "BiliAccount.get(this)"

    invoke-static {v0, v1}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3026
    invoke-virtual {v0}, Lbl/mg;->a()Z

    move-result v0

    if-nez v0, :cond_53

    .line 3027
    const-string v0, "\u8d26\u53f7\u672a\u767b\u5f55\uff0c\u65e0\u6cd5\u70b9\u51fb"

    invoke-static {p0, v0}, Lbl/lr;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_24

    .line 3030
    :cond_53
    invoke-direct {p0, v2, v10}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->coinVideo(II)V

    goto :goto_24

    .line 3032
    :cond_57
    const v1, 0x7f08014d

    if-ne v0, v1, :cond_75

    .line 3033
    invoke-static {p0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v0

    .line 3034
    const-string v1, "BiliAccount.get(this)"

    invoke-static {v0, v1}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3035
    invoke-virtual {v0}, Lbl/mg;->a()Z

    move-result v0

    if-nez v0, :cond_71

    .line 3036
    const-string v0, "\u8d26\u53f7\u672a\u767b\u5f55\uff0c\u65e0\u6cd5\u70b9\u51fb"

    invoke-static {p0, v0}, Lbl/lr;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_24

    .line 3039
    :cond_71
    invoke-direct {p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->showFavoriteMenu()V

    goto :goto_24

    .line 3040
    :cond_75
    const v1, 0x7f0801a1

    if-ne v0, v1, :cond_b3

    .line 3041
    invoke-static {p0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v0

    .line 3042
    const-string v1, "BiliAccount.get(this)"

    invoke-static {v0, v1}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3043
    invoke-virtual {v0}, Lbl/mg;->a()Z

    move-result v1

    if-nez v1, :cond_8f

    .line 3044
    const-string v0, "\u8d26\u53f7\u672a\u767b\u5f55\uff0c\u65e0\u6cd5\u70b9\u51fb"

    invoke-static {p0, v0}, Lbl/lr;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_24

    .line 3047
    :cond_8f
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->u:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    .line 3048
    if-eqz v1, :cond_24

    .line 3049
    invoke-static {v0}, Lmybl/CookieUtil;->getFullCookieWithDevice(Lbl/mg;)Ljava/lang/String;

    move-result-object v2

    .line 3050
    invoke-static {v0}, Lmybl/CookieUtil;->getBiliJct(Lbl/mg;)Ljava/lang/String;

    move-result-object v3

    .line 3051
    const-class v0, Lcom/bilibili/tv/api/history/BiliPlayerHistoryService;

    invoke-static {v0}, Lbl/vo;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/history/BiliPlayerHistoryService;

    iget-wide v4, v1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mAvid:J

    .line 3052
    invoke-interface {v0, v4, v5, v3, v2}, Lcom/bilibili/tv/api/history/BiliPlayerHistoryService;->addVideoToviews(JLjava/lang/String;Ljava/lang/String;)Lbl/vp;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$AddToViewResponse;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$AddToViewResponse;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)V

    .line 3053
    invoke-virtual {v0, v1}, Lbl/vp;->a(Lretrofit2/Callback;)V

    goto/16 :goto_24

    .line 3055
    :cond_b3
    const v1, 0x7f0801dc

    if-ne v0, v1, :cond_f4

    .line 3056
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->u:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    .line 3057
    if-eqz v1, :cond_24

    .line 3058
    iget-wide v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->s:J

    .line 3059
    iget-object v4, v1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mDescription:Ljava/lang/String;

    .line 3060
    const-string v0, "it.mDescription"

    invoke-static {v4, v0}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3061
    iget-object v5, v1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mCover:Ljava/lang/String;

    .line 3062
    const-string v0, "it.mCover"

    invoke-static {v5, v0}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3063
    sget-object v0, Lcom/bilibili/tv/ui/video/VideoDetailInfoActivity;->Companion:Lcom/bilibili/tv/ui/video/VideoDetailInfoActivity$a;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "http://www.bilibili.com/video/av"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, v1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mAvid:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    invoke-virtual/range {v0 .. v6}, Lcom/bilibili/tv/ui/video/VideoDetailInfoActivity$a;->a(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->startActivity(Landroid/content/Intent;)V

    .line 3065
    const-string v0, "tv_video_view_click_infomore"

    new-array v1, v10, [Ljava/lang/String;

    invoke-static {v0, v1}, Lbl/ok;->a(Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_24

    .line 3067
    :cond_f4
    const v1, 0x7f080152

    if-ne v0, v1, :cond_24

    .line 3069
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->u:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    .line 3070
    if-eqz v1, :cond_24

    .line 3071
    iget-wide v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->s:J

    .line 3072
    iget-object v4, v1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mDescription:Ljava/lang/String;

    .line 3073
    const-string v0, "it.mDescription"

    invoke-static {v4, v0}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3074
    iget-object v5, v1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mCover:Ljava/lang/String;

    .line 3075
    const-string v0, "it.mCover"

    invoke-static {v5, v0}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3076
    sget-object v0, Lcom/bilibili/tv/ui/video/VideoDetailInfoActivity;->Companion:Lcom/bilibili/tv/ui/video/VideoDetailInfoActivity$a;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "http://www.bilibili.com/video/av"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, v1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mAvid:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    invoke-virtual/range {v0 .. v6}, Lcom/bilibili/tv/ui/video/VideoDetailInfoActivity$a;->a(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->startActivity(Landroid/content/Intent;)V

    .line 3078
    const-string v0, "tv_video_view_click_infomore"

    new-array v1, v10, [Ljava/lang/String;

    invoke-static {v0, v1}, Lbl/ok;->a(Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_24
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 266
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->o:Landroid/support/v7/widget/RecyclerView;

    .line 267
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->z:Z

    .line 268
    invoke-super {p0}, Lcom/bilibili/tv/ui/base/BaseActivity;->onDestroy()V

    .line 269
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 3096
    const-string v0, "event"

    invoke-static {p2, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3097
    const/16 v0, 0x17

    if-eq p1, v0, :cond_d

    const/16 v0, 0x42

    if-ne p1, v0, :cond_18

    :cond_d
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->y:Z

    if-eqz v0, :cond_18

    .line 3098
    sget-object v0, Lcom/bilibili/tv/ui/account/LoginActivity;->Companion:Lcom/bilibili/tv/ui/account/LoginActivity$a;

    const/16 v1, 0x2752

    invoke-virtual {v0, p0, v1}, Lcom/bilibili/tv/ui/account/LoginActivity$a;->a(Landroid/app/Activity;I)V

    .line 3100
    :cond_18
    invoke-super {p0, p1, p2}, Lcom/bilibili/tv/ui/base/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public final onLongClick(Landroid/view/View;)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 780
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->u:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    .line 781
    const-string v0, "v"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 782
    invoke-static {p0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v0

    .line 783
    const-string v1, "BiliAccount.get(this)"

    invoke-static {v0, v1}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 784
    invoke-virtual {v0}, Lbl/mg;->a()Z

    move-result v0

    if-nez v0, :cond_25

    .line 785
    const v0, 0x7f0c0062

    invoke-static {p0, v0}, Lbl/lr;->a(Landroid/content/Context;I)V

    .line 786
    sget-object v0, Lcom/bilibili/tv/ui/account/LoginActivity;->Companion:Lcom/bilibili/tv/ui/account/LoginActivity$a;

    const/16 v1, 0x2753

    invoke-virtual {v0, p0, v1}, Lcom/bilibili/tv/ui/account/LoginActivity$a;->a(Landroid/app/Activity;I)V

    .line 794
    :cond_24
    :goto_24
    return v2

    .line 789
    :cond_25
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 790
    const v1, 0x7f080167

    if-ne v0, v1, :cond_32

    .line 791
    invoke-direct {p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->tripleVideo()V

    goto :goto_24

    .line 792
    :cond_32
    const v1, 0x7f08016a

    if-ne v0, v1, :cond_24

    .line 793
    const/4 v0, 0x2

    invoke-direct {p0, v0, v2}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->coinVideo(II)V

    goto :goto_24
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 3085
    invoke-super {p0}, Lcom/bilibili/tv/ui/base/BaseActivity;->onPause()V

    .line 3086
    return-void
.end method

.method public onPostCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 858
    invoke-super {p0, p1}, Lcom/bilibili/tv/ui/base/BaseActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 859
    invoke-direct {p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->n()V

    .line 860
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 3090
    invoke-super {p0}, Lcom/bilibili/tv/ui/base/BaseActivity;->onStop()V

    .line 3091
    return-void
.end method
