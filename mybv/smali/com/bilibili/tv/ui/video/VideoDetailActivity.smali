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

.field private static final CODE_VERSION:Ljava/lang/String; = "v2.5-fixDataIndex"

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

.field private ff:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private hh:Landroid/widget/TextView;

.field private historyContainer:Landroid/widget/LinearLayout;

.field private historyLabel:Landroid/widget/TextView;

.field private historyPlayBtn:Lcom/bilibili/tv/widget/DrawTextView;

.field private historyPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

.field private historyProgress:Landroid/widget/TextView;

.field private historyTitle:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

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

    .line 189
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

    .line 109
    invoke-direct {p0}, Lcom/bilibili/tv/ui/base/BaseActivity;-><init>()V

    .line 122
    sget-object v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$EntryType;->UGC_BY_AVID:Lcom/bilibili/tv/ui/video/VideoDetailActivity$EntryType;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->mEntryType:Lcom/bilibili/tv/ui/video/VideoDetailActivity$EntryType;

    .line 159
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

    .line 203
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonSectionViews:Ljava/util/List;

    .line 204
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->ugcSeasonSections:Ljava/util/List;

    return-void
.end method

.method private final a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 2311
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2315
    :goto_6
    return-void

    .line 2314
    :cond_7
    sget-object v0, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity;->Companion:Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity$a;

    invoke-virtual {v0, p1, p2}, Lcom/bilibili/tv/ui/bangumi/BangumiDetailActivity$a;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_6
.end method

.method private final a(Lcom/bilibili/tv/api/video/BiliVideoDetail;)Z
    .locals 2

    .prologue
    .line 3067
    const-string v0, "BangumiJump"

    const-string v1, "ENABLE_BANGUMI_JUMP is false, skip jump"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3068
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic access$000(Lcom/bilibili/tv/ui/video/VideoDetailActivity;I)Landroid/view/View;
    .locals 1

    .prologue
    .line 109
    invoke-virtual {p0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/support/v7/widget/RecyclerView;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->n:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->scrollToViewIfNeeded(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/api/video/BiliVideoDetail;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->u:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/BiliVideoDetail;)Lcom/bilibili/tv/api/video/BiliVideoDetail;
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->u:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->q(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->p(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1402(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/PgcInfo;)Lcom/bilibili/tv/api/video/PgcInfo;
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->mPgcInfo:Lcom/bilibili/tv/api/video/PgcInfo;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/PgcInfo;)Lcom/bilibili/tv/api/video/BiliVideoDetail;
    .locals 1

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->convertPgcToBiliVideoDetail(Lcom/bilibili/tv/api/video/PgcInfo;)Lcom/bilibili/tv/api/video/BiliVideoDetail;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)J
    .locals 2

    .prologue
    .line 109
    iget-wide v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->s:J

    return-wide v0
.end method

.method static synthetic access$1602(Lcom/bilibili/tv/ui/video/VideoDetailActivity;J)J
    .locals 1

    .prologue
    .line 109
    iput-wide p1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->s:J

    return-wide p1
.end method

.method static synthetic access$1700(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->A:Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/PgcInfo;)V
    .locals 0

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->showPgcInfo(Lcom/bilibili/tv/api/video/PgcInfo;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/widget/CheckBox;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->noHistoryPlayCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$200(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)I
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->tagViewFocusPosition:I

    return v0
.end method

.method static synthetic access$2000(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/BiliVideoDetail;JI)V
    .locals 0

    .prologue
    .line 109
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->playVideo(Lcom/bilibili/tv/api/video/BiliVideoDetail;JI)V

    return-void
.end method

.method static synthetic access$2100(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/BiliVideoDetail;)V
    .locals 0

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->updateHistoryDisplay(Lcom/bilibili/tv/api/video/BiliVideoDetail;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/widget/DrawLinearLayout;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/BiliVideoDetail;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 109
    invoke-direct {p0, p1, p2}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->fallbackLoadHistory(Lcom/bilibili/tv/api/video/BiliVideoDetail;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/BiliVideoDetail;Lcom/bilibili/tv/api/video/PgcInfo;)V
    .locals 0

    .prologue
    .line 109
    invoke-direct {p0, p1, p2}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->updateBiliVideoDetailWithPgcInfo(Lcom/bilibili/tv/api/video/BiliVideoDetail;Lcom/bilibili/tv/api/video/PgcInfo;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->m:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/ui/base/LoadingImageView;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->p:Lcom/bilibili/tv/ui/base/LoadingImageView;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->cc:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->i:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/BiliVideoDetail;)V
    .locals 0

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->updateBasicVideoInfo(Lcom/bilibili/tv/api/video/BiliVideoDetail;)V

    return-void
.end method

.method static synthetic access$300(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Landroid/support/v7/widget/RecyclerView;I)Landroid/view/View;
    .locals 1

    .prologue
    .line 109
    invoke-direct {p0, p1, p2}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->restoreFocusPosition(Landroid/support/v7/widget/RecyclerView;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3000(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/BiliVideoDetail;)V
    .locals 0

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->initDefaultPlayButtons(Lcom/bilibili/tv/api/video/BiliVideoDetail;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/BiliVideoDetail;)V
    .locals 0

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->loadArchiveRelation(Lcom/bilibili/tv/api/video/BiliVideoDetail;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/BiliVideoDetail;)V
    .locals 0

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->loadHistory(Lcom/bilibili/tv/api/video/BiliVideoDetail;)V

    return-void
.end method

.method static synthetic access$3300(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/PgcInfo$Episode;I)Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;
    .locals 1

    .prologue
    .line 109
    invoke-direct {p0, p1, p2}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->convertEpisodeToPage(Lcom/bilibili/tv/api/video/PgcInfo$Episode;I)Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3400(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonSectionNavTagFocusPositions:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/ui/video/widget/VideoListSection;I)V
    .locals 0

    .prologue
    .line 109
    invoke-direct {p0, p1, p2}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->scrollVideoListToPosition(Lcom/bilibili/tv/ui/video/widget/VideoListSection;I)V

    return-void
.end method

.method static synthetic access$3602(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Z)Z
    .locals 0

    .prologue
    .line 109
    iput-boolean p1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->B:Z

    return p1
.end method

.method static synthetic access$3800(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Z
    .locals 1

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->blockEpisodeAutoFocus:Z

    return v0
.end method

.method static synthetic access$3902(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Z)Z
    .locals 0

    .prologue
    .line 109
    iput-boolean p1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->y:Z

    return p1
.end method

.method static synthetic access$400(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/support/v7/widget/RecyclerView;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->o:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/ui/video/VideoDetailActivity$EntryType;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->mEntryType:Lcom/bilibili/tv/ui/video/VideoDetailActivity$EntryType;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/BiliVideoDetail;)Z
    .locals 1

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->isPgcVideo(Lcom/bilibili/tv/api/video/BiliVideoDetail;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4200(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/BiliVideoDetail;)V
    .locals 0

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->loadPgcInfo(Lcom/bilibili/tv/api/video/BiliVideoDetail;)V

    return-void
.end method

.method static synthetic access$4400(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/BiliVideoDetail;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 109
    invoke-direct {p0, p1, p2}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->requestHistoryForUgc(Lcom/bilibili/tv/api/video/BiliVideoDetail;Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$4500(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->staffContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->uperContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->e:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->ff:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)V
    .locals 0

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->refreshVisualOrder()V

    return-void
.end method

.method static synthetic access$500(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)I
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->epLayoutFocusPosition:I

    return v0
.end method

.method static synthetic access$5100(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/ui/video/VideoDetailActivity$g;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->x:Lcom/bilibili/tv/ui/video/VideoDetailActivity$g;

    return-object v0
.end method

.method static synthetic access$5200(Lcom/bilibili/tv/ui/video/VideoDetailActivity;I)Landroid/view/View;
    .locals 1

    .prologue
    .line 109
    invoke-virtual {p0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5300(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->g:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$5400(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonSectionViews:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$5500(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->videoListNavigator:Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;

    return-object v0
.end method

.method static synthetic access$5600(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->ugcSeasonSections:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$5700(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/ui/video/widget/VideoListSection;I)V
    .locals 0

    .prologue
    .line 109
    invoke-direct {p0, p1, p2}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->setupNavigationTagsForSection(Lcom/bilibili/tv/ui/video/widget/VideoListSection;I)V

    return-void
.end method

.method static synthetic access$5800(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->hh:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)I
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->relateVideoFocusPosition:I

    return v0
.end method

.method static synthetic access$602(Lcom/bilibili/tv/ui/video/VideoDetailActivity;I)I
    .locals 0

    .prologue
    .line 109
    iput p1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->relateVideoFocusPosition:I

    return p1
.end method

.method static synthetic access$700(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/support/v7/widget/RecyclerView;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->r:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)I
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->episodesVideoFocusPosition:I

    return v0
.end method

.method static synthetic access$802(Lcom/bilibili/tv/ui/video/VideoDetailActivity;I)I
    .locals 0

    .prologue
    .line 109
    iput p1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->episodesVideoFocusPosition:I

    return p1
.end method

.method static synthetic access$900(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/widget/ScrollView;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->scrollView:Landroid/widget/ScrollView;

    return-object v0
.end method

.method private final b(Lcom/bilibili/tv/api/video/BiliVideoDetail;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 3087
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mRedirectUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_104

    .line 3088
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mRedirectUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 3089
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 3090
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 3092
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

    .line 3093
    const-string v2, "/ss"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_90

    .line 3094
    const-string v2, "/ss"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 3095
    add-int/lit8 v2, v2, 0x3

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 3096
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move v0, v1

    .line 3097
    :goto_53
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_69

    .line 3098
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 3099
    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_69

    .line 3100
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3097
    add-int/lit8 v0, v0, 0x1

    goto :goto_53

    .line 3105
    :cond_69
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_104

    .line 3106
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

    .line 3107
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3137
    :goto_8f
    return-object v0

    .line 3109
    :cond_90
    const-string v2, "/ep"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_104

    .line 3110
    const-string v2, "/ep"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 3111
    add-int/lit8 v2, v2, 0x3

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 3112
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 3113
    :goto_a9
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_bf

    .line 3114
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 3115
    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_bf

    .line 3116
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3113
    add-int/lit8 v1, v1, 0x1

    goto :goto_a9

    .line 3121
    :cond_bf
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_104

    .line 3122
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3123
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

    .line 3124
    invoke-direct {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->fetchSeasonIdFromEpId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3125
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

    .line 3130
    :cond_104
    if-eqz p1, :cond_12d

    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mBangumiInfo:Lcom/bilibili/tv/api/video/BiliVideoDetail$BangumiInfo;

    :goto_108
    if-eqz v0, :cond_12f

    .line 3131
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mBangumiInfo:Lcom/bilibili/tv/api/video/BiliVideoDetail$BangumiInfo;

    iget-object v0, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$BangumiInfo;->mSeasonId:Ljava/lang/String;

    .line 3132
    const-string v1, "video.mBangumiInfo.mSeasonId"

    invoke-static {v0, v1}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3133
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

    .line 3130
    :cond_12d
    const/4 v0, 0x0

    goto :goto_108

    .line 3136
    :cond_12f
    const-string v0, "BangumiJump"

    const-string v1, "no seasonId found, returning empty"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3137
    const-string v0, ""

    goto/16 :goto_8f
.end method

.method private final coinVideo(II)V
    .locals 6

    .prologue
    .line 3483
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->B:Z

    if-eqz v0, :cond_5

    .line 3491
    :goto_4
    return-void

    .line 3486
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->B:Z

    .line 3487
    invoke-static {p0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v1

    .line 3488
    const-string v0, "BiliAccount.get(this)"

    invoke-static {v1, v0}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3489
    const-class v0, Lmybl/MyBiliApiService;

    invoke-static {v0}, Lbl/vo;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmybl/MyBiliApiService;

    invoke-virtual {v1}, Lbl/mg;->e()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->s:J

    move v4, p1

    move v5, p2

    invoke-interface/range {v0 .. v5}, Lmybl/MyBiliApiService;->coinVideo(Ljava/lang/String;JII)Lbl/vp;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$CoinResponse;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$CoinResponse;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)V

    .line 3490
    invoke-virtual {v0, v1}, Lbl/vp;->a(Lretrofit2/Callback;)V

    goto :goto_4
.end method

.method private convertEpisodeToBiliVideoDetail(Lcom/bilibili/tv/api/video/PgcInfo$Episode;)Lcom/bilibili/tv/api/video/BiliVideoDetail;
    .locals 6

    .prologue
    .line 2665
    new-instance v1, Lcom/bilibili/tv/api/video/BiliVideoDetail;

    invoke-direct {v1}, Lcom/bilibili/tv/api/video/BiliVideoDetail;-><init>()V

    .line 2666
    iget-wide v2, p1, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->aid:J

    iput-wide v2, v1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mAvid:J

    .line 2667
    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->bvid:Ljava/lang/String;

    iput-object v0, v1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mBvid:Ljava/lang/String;

    .line 2668
    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->cover:Ljava/lang/String;

    iput-object v0, v1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mCover:Ljava/lang/String;

    .line 2669
    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->showTitle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6d

    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->showTitle:Ljava/lang/String;

    .line 2670
    :goto_1b
    iput-object v0, v1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mTitle:Ljava/lang/String;

    .line 2671
    iget-wide v2, p1, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->duration:J

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v0, v2

    iput v0, v1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mDuration:I

    .line 2672
    iget-wide v2, p1, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->pubTime:J

    iput-wide v2, v1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mCreatedTimestamp:J

    .line 2673
    iput-object p1, v1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->sourceEpisode:Ljava/lang/Object;

    .line 2674
    iget-wide v2, p1, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->cid:J

    iput-wide v2, v1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mCid:J

    .line 2676
    new-instance v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Stat;

    invoke-direct {v0}, Lcom/bilibili/tv/api/video/BiliVideoDetail$Stat;-><init>()V

    .line 2677
    iget-object v2, p1, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->stat:Lcom/bilibili/tv/api/video/PgcInfo$EpisodeStat;

    if-eqz v2, :cond_7b

    .line 2678
    iget-object v2, p1, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->stat:Lcom/bilibili/tv/api/video/PgcInfo$EpisodeStat;

    iget-wide v2, v2, Lcom/bilibili/tv/api/video/PgcInfo$EpisodeStat;->play:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Stat;->mPlays:Ljava/lang/String;

    .line 2679
    iget-object v2, p1, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->stat:Lcom/bilibili/tv/api/video/PgcInfo$EpisodeStat;

    iget-wide v2, v2, Lcom/bilibili/tv/api/video/PgcInfo$EpisodeStat;->danmakus:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Stat;->mDanmakus:Ljava/lang/String;

    .line 2684
    :goto_4c
    iput-object v0, v1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mStat:Lcom/bilibili/tv/api/video/BiliVideoDetail$Stat;

    .line 2686
    new-instance v2, Lcom/bilibili/tv/api/video/BiliUser;

    invoke-direct {v2}, Lcom/bilibili/tv/api/video/BiliUser;-><init>()V

    .line 2687
    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->subtitle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_84

    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->subtitle:Ljava/lang/String;

    :goto_5d
    iput-object v0, v2, Lcom/bilibili/tv/api/video/BiliUser;->name:Ljava/lang/String;

    .line 2688
    iput-object v2, v1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mOwner:Lcom/bilibili/tv/api/video/BiliUser;

    .line 2689
    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->subtitle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_87

    const/4 v0, 0x1

    :goto_6a
    iput-boolean v0, v1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->hideUpIcon:Z

    .line 2691
    return-object v1

    .line 2669
    :cond_6d
    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->longTitle:Ljava/lang/String;

    .line 2670
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_78

    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->longTitle:Ljava/lang/String;

    goto :goto_1b

    :cond_78
    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->title:Ljava/lang/String;

    goto :goto_1b

    .line 2681
    :cond_7b
    const-string v2, "0"

    iput-object v2, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Stat;->mPlays:Ljava/lang/String;

    .line 2682
    const-string v2, "0"

    iput-object v2, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Stat;->mDanmakus:Ljava/lang/String;

    goto :goto_4c

    .line 2687
    :cond_84
    const-string v0, ""

    goto :goto_5d

    .line 2689
    :cond_87
    const/4 v0, 0x0

    goto :goto_6a
.end method

.method private convertEpisodeToPage(Lcom/bilibili/tv/api/video/PgcInfo$Episode;I)Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;
    .locals 6

    .prologue
    .line 2640
    new-instance v1, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;

    invoke-direct {v1}, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;-><init>()V

    .line 2641
    iget-wide v2, p1, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->cid:J

    iput-wide v2, v1, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mCid:J

    .line 2642
    iput p2, v1, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mPage:I

    .line 2643
    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->longTitle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8e

    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->longTitle:Ljava/lang/String;

    :goto_15
    iput-object v0, v1, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mTitle:Ljava/lang/String;

    .line 2644
    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->link:Ljava/lang/String;

    iput-object v0, v1, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mLink:Ljava/lang/String;

    .line 2645
    iget v0, p1, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->id:I

    int-to-long v2, v0

    iput-wide v2, v1, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mEpisodeId:J

    .line 2646
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->mPgcInfo:Lcom/bilibili/tv/api/video/PgcInfo;

    if-eqz v0, :cond_91

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->mPgcInfo:Lcom/bilibili/tv/api/video/PgcInfo;

    iget v0, v0, Lcom/bilibili/tv/api/video/PgcInfo;->seasonId:I

    :goto_28
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mSeasonId:Ljava/lang/String;

    .line 2647
    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->cover:Ljava/lang/String;

    iput-object v0, v1, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mEpCover:Ljava/lang/String;

    .line 2648
    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->bvid:Ljava/lang/String;

    iput-object v0, v1, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mBvid:Ljava/lang/String;

    .line 2650
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->mPgcInfo:Lcom/bilibili/tv/api/video/PgcInfo;

    if-eqz v0, :cond_45

    .line 2651
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->mPgcInfo:Lcom/bilibili/tv/api/video/PgcInfo;

    iget v0, v0, Lcom/bilibili/tv/api/video/PgcInfo;->type:I

    .line 2652
    const/4 v2, 0x2

    if-ne v0, v2, :cond_93

    .line 2653
    const-string v0, "movie"

    iput-object v0, v1, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mFrom:Ljava/lang/String;

    .line 2659
    :cond_45
    :goto_45
    const-string v2, "PgcPlayUrl"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "convertEpisodeToPage: cid="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v4, p1, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->cid:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", epId="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p1, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->id:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", mFrom="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, v1, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mFrom:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", pgcType="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->mPgcInfo:Lcom/bilibili/tv/api/video/PgcInfo;

    if-eqz v0, :cond_98

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->mPgcInfo:Lcom/bilibili/tv/api/video/PgcInfo;

    iget v0, v0, Lcom/bilibili/tv/api/video/PgcInfo;->type:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_82
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2661
    return-object v1

    .line 2643
    :cond_8e
    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->title:Ljava/lang/String;

    goto :goto_15

    .line 2646
    :cond_91
    const/4 v0, 0x0

    goto :goto_28

    .line 2655
    :cond_93
    const-string v0, "bangumi"

    iput-object v0, v1, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mFrom:Ljava/lang/String;

    goto :goto_45

    .line 2659
    :cond_98
    const-string v0, "null"

    goto :goto_82
.end method

.method private convertPgcToBiliVideoDetail(Lcom/bilibili/tv/api/video/PgcInfo;)Lcom/bilibili/tv/api/video/BiliVideoDetail;
    .locals 10

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 1730
    new-instance v4, Lcom/bilibili/tv/api/video/BiliVideoDetail;

    invoke-direct {v4}, Lcom/bilibili/tv/api/video/BiliVideoDetail;-><init>()V

    .line 1732
    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo;->title:Ljava/lang/String;

    iput-object v0, v4, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mTitle:Ljava/lang/String;

    .line 1733
    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo;->cover:Ljava/lang/String;

    iput-object v0, v4, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mCover:Ljava/lang/String;

    .line 1734
    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo;->episodes:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/PgcInfo$Episode;

    .line 1735
    iget-wide v6, v0, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->aid:J

    iput-wide v6, v4, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mAvid:J

    .line 1736
    iget-object v5, v0, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->bvid:Ljava/lang/String;

    iput-object v5, v4, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mBvid:Ljava/lang/String;

    .line 1737
    iget v5, p1, Lcom/bilibili/tv/api/video/PgcInfo;->seasonId:I

    iput v5, v4, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mSeasonOId:I

    .line 1738
    iget-wide v6, v0, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->duration:J

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    long-to-int v5, v6

    iput v5, v4, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mDuration:I

    .line 1739
    iget-wide v6, v0, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->pubTime:J

    iput-wide v6, v4, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mCreatedTimestamp:J

    .line 1741
    new-instance v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$BangumiInfo;

    invoke-direct {v0}, Lcom/bilibili/tv/api/video/BiliVideoDetail$BangumiInfo;-><init>()V

    iput-object v0, v4, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mBangumiInfo:Lcom/bilibili/tv/api/video/BiliVideoDetail$BangumiInfo;

    .line 1742
    iget-object v0, v4, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mBangumiInfo:Lcom/bilibili/tv/api/video/BiliVideoDetail$BangumiInfo;

    iget v5, p1, Lcom/bilibili/tv/api/video/PgcInfo;->seasonId:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$BangumiInfo;->mSeasonId:Ljava/lang/String;

    .line 1743
    iget-object v0, v4, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mBangumiInfo:Lcom/bilibili/tv/api/video/BiliVideoDetail$BangumiInfo;

    iget-object v5, p1, Lcom/bilibili/tv/api/video/PgcInfo;->title:Ljava/lang/String;

    iput-object v5, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$BangumiInfo;->mTitle:Ljava/lang/String;

    .line 1745
    new-instance v0, Lcom/bilibili/tv/api/video/BiliUser;

    invoke-direct {v0}, Lcom/bilibili/tv/api/video/BiliUser;-><init>()V

    iput-object v0, v4, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mOwner:Lcom/bilibili/tv/api/video/BiliUser;

    .line 1746
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v4, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mStaffList:Ljava/util/List;

    .line 1748
    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo;->producer:Lcom/bilibili/tv/api/video/PgcInfo$Producer;

    if-eqz v0, :cond_12f

    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo;->producer:Lcom/bilibili/tv/api/video/PgcInfo$Producer;

    iget-object v0, v0, Lcom/bilibili/tv/api/video/PgcInfo$Producer;->list:Ljava/util/List;

    if-eqz v0, :cond_12f

    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo;->producer:Lcom/bilibili/tv/api/video/PgcInfo$Producer;

    iget-object v0, v0, Lcom/bilibili/tv/api/video/PgcInfo$Producer;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12f

    .line 1749
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

    .line 1750
    new-instance v6, Lcom/bilibili/tv/api/video/BiliVideoDetail$Staff;

    invoke-direct {v6}, Lcom/bilibili/tv/api/video/BiliVideoDetail$Staff;-><init>()V

    .line 1751
    iget-wide v8, v0, Lcom/bilibili/tv/api/video/PgcInfo$ProducerInfo;->mid:J

    iput-wide v8, v6, Lcom/bilibili/tv/api/video/BiliVideoDetail$Staff;->mid:J

    .line 1752
    iget-object v7, v0, Lcom/bilibili/tv/api/video/PgcInfo$ProducerInfo;->name:Ljava/lang/String;

    iput-object v7, v6, Lcom/bilibili/tv/api/video/BiliVideoDetail$Staff;->name:Ljava/lang/String;

    .line 1753
    iget-object v0, v0, Lcom/bilibili/tv/api/video/PgcInfo$ProducerInfo;->face:Ljava/lang/String;

    iput-object v0, v6, Lcom/bilibili/tv/api/video/BiliVideoDetail$Staff;->face:Ljava/lang/String;

    .line 1754
    iget-object v0, v4, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mStaffList:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_71

    .line 1756
    :cond_94
    iget-object v5, v4, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mOwner:Lcom/bilibili/tv/api/video/BiliUser;

    iget-object v0, v4, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mStaffList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Staff;

    iget-wide v6, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Staff;->mid:J

    iput-wide v6, v5, Lcom/bilibili/tv/api/video/BiliUser;->mid:J

    .line 1757
    iget-object v5, v4, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mOwner:Lcom/bilibili/tv/api/video/BiliUser;

    iget-object v0, v4, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mStaffList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Staff;

    iget-object v0, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Staff;->name:Ljava/lang/String;

    iput-object v0, v5, Lcom/bilibili/tv/api/video/BiliUser;->name:Ljava/lang/String;

    .line 1758
    iget-object v5, v4, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mOwner:Lcom/bilibili/tv/api/video/BiliUser;

    iget-object v0, v4, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mStaffList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Staff;

    iget-object v0, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Staff;->face:Ljava/lang/String;

    iput-object v0, v5, Lcom/bilibili/tv/api/video/BiliUser;->face:Ljava/lang/String;

    .line 1759
    const-string v0, "PgcInfo"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Using producer list: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v4, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mStaffList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " producers"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1777
    :goto_e2
    new-instance v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Stat;

    invoke-direct {v0}, Lcom/bilibili/tv/api/video/BiliVideoDetail$Stat;-><init>()V

    iput-object v0, v4, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mStat:Lcom/bilibili/tv/api/video/BiliVideoDetail$Stat;

    .line 1778
    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo;->stat:Lcom/bilibili/tv/api/video/PgcInfo$Stat;

    if-eqz v0, :cond_105

    .line 1779
    iget-object v0, v4, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mStat:Lcom/bilibili/tv/api/video/BiliVideoDetail$Stat;

    iget-object v5, p1, Lcom/bilibili/tv/api/video/PgcInfo;->stat:Lcom/bilibili/tv/api/video/PgcInfo$Stat;

    iget-wide v6, v5, Lcom/bilibili/tv/api/video/PgcInfo$Stat;->views:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Stat;->mPlays:Ljava/lang/String;

    .line 1780
    iget-object v0, v4, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mStat:Lcom/bilibili/tv/api/video/BiliVideoDetail$Stat;

    iget-object v5, p1, Lcom/bilibili/tv/api/video/PgcInfo;->stat:Lcom/bilibili/tv/api/video/PgcInfo$Stat;

    iget-wide v6, v5, Lcom/bilibili/tv/api/video/PgcInfo$Stat;->danmakus:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Stat;->mDanmakus:Ljava/lang/String;

    .line 1783
    :cond_105
    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo;->evaluate:Ljava/lang/String;

    iput-object v0, v4, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mDescription:Ljava/lang/String;

    .line 1785
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v4, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    .line 1786
    :goto_110
    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo;->episodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_19e

    .line 1787
    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo;->episodes:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/PgcInfo$Episode;

    .line 1788
    add-int/lit8 v5, v1, 0x1

    invoke-direct {p0, v0, v5}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->convertEpisodeToPage(Lcom/bilibili/tv/api/video/PgcInfo$Episode;I)Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;

    move-result-object v0

    .line 1789
    iget-object v5, v4, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1786
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_110

    .line 1760
    :cond_12f
    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo;->upInfo:Lcom/bilibili/tv/api/video/PgcInfo$UpInfo;

    if-eqz v0, :cond_185

    .line 1761
    iget-object v0, v4, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mOwner:Lcom/bilibili/tv/api/video/BiliUser;

    iget-object v5, p1, Lcom/bilibili/tv/api/video/PgcInfo;->upInfo:Lcom/bilibili/tv/api/video/PgcInfo$UpInfo;

    iget-wide v6, v5, Lcom/bilibili/tv/api/video/PgcInfo$UpInfo;->mid:J

    iput-wide v6, v0, Lcom/bilibili/tv/api/video/BiliUser;->mid:J

    .line 1762
    iget-object v0, v4, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mOwner:Lcom/bilibili/tv/api/video/BiliUser;

    iget-object v5, p1, Lcom/bilibili/tv/api/video/PgcInfo;->upInfo:Lcom/bilibili/tv/api/video/PgcInfo$UpInfo;

    iget-object v5, v5, Lcom/bilibili/tv/api/video/PgcInfo$UpInfo;->name:Ljava/lang/String;

    iput-object v5, v0, Lcom/bilibili/tv/api/video/BiliUser;->name:Ljava/lang/String;

    .line 1763
    iget-object v0, v4, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mOwner:Lcom/bilibili/tv/api/video/BiliUser;

    iget-object v5, p1, Lcom/bilibili/tv/api/video/PgcInfo;->upInfo:Lcom/bilibili/tv/api/video/PgcInfo$UpInfo;

    iget-object v5, v5, Lcom/bilibili/tv/api/video/PgcInfo$UpInfo;->face:Ljava/lang/String;

    iput-object v5, v0, Lcom/bilibili/tv/api/video/BiliUser;->face:Ljava/lang/String;

    .line 1764
    new-instance v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Staff;

    invoke-direct {v0}, Lcom/bilibili/tv/api/video/BiliVideoDetail$Staff;-><init>()V

    .line 1765
    iget-object v5, p1, Lcom/bilibili/tv/api/video/PgcInfo;->upInfo:Lcom/bilibili/tv/api/video/PgcInfo$UpInfo;

    iget-wide v6, v5, Lcom/bilibili/tv/api/video/PgcInfo$UpInfo;->mid:J

    iput-wide v6, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Staff;->mid:J

    .line 1766
    iget-object v5, p1, Lcom/bilibili/tv/api/video/PgcInfo;->upInfo:Lcom/bilibili/tv/api/video/PgcInfo$UpInfo;

    iget-object v5, v5, Lcom/bilibili/tv/api/video/PgcInfo$UpInfo;->name:Ljava/lang/String;

    iput-object v5, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Staff;->name:Ljava/lang/String;

    .line 1767
    iget-object v5, p1, Lcom/bilibili/tv/api/video/PgcInfo;->upInfo:Lcom/bilibili/tv/api/video/PgcInfo$UpInfo;

    iget-object v5, v5, Lcom/bilibili/tv/api/video/PgcInfo$UpInfo;->face:Ljava/lang/String;

    iput-object v5, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Staff;->face:Ljava/lang/String;

    .line 1768
    iget-object v5, v4, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mStaffList:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1769
    const-string v0, "PgcInfo"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Using up_info: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/bilibili/tv/api/video/PgcInfo;->upInfo:Lcom/bilibili/tv/api/video/PgcInfo$UpInfo;

    iget-object v6, v6, Lcom/bilibili/tv/api/video/PgcInfo$UpInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e2

    .line 1771
    :cond_185
    iget-object v0, v4, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mOwner:Lcom/bilibili/tv/api/video/BiliUser;

    iput-wide v2, v0, Lcom/bilibili/tv/api/video/BiliUser;->mid:J

    .line 1772
    iget-object v0, v4, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mOwner:Lcom/bilibili/tv/api/video/BiliUser;

    const-string v5, ""

    iput-object v5, v0, Lcom/bilibili/tv/api/video/BiliUser;->name:Ljava/lang/String;

    .line 1773
    iget-object v0, v4, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mOwner:Lcom/bilibili/tv/api/video/BiliUser;

    const-string v5, ""

    iput-object v5, v0, Lcom/bilibili/tv/api/video/BiliUser;->face:Ljava/lang/String;

    .line 1774
    const-string v0, "PgcInfo"

    const-string v5, "No producer or up_info, hiding staff area"

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e2

    .line 1792
    :cond_19e
    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo;->userStatus:Lcom/bilibili/tv/api/video/PgcInfo$UserStatus;

    if-eqz v0, :cond_22a

    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo;->userStatus:Lcom/bilibili/tv/api/video/PgcInfo$UserStatus;

    iget-object v0, v0, Lcom/bilibili/tv/api/video/PgcInfo$UserStatus;->progress:Lcom/bilibili/tv/api/video/PgcInfo$Progress;

    if-eqz v0, :cond_22a

    .line 1793
    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo;->userStatus:Lcom/bilibili/tv/api/video/PgcInfo$UserStatus;

    iget-object v0, v0, Lcom/bilibili/tv/api/video/PgcInfo$UserStatus;->progress:Lcom/bilibili/tv/api/video/PgcInfo$Progress;

    .line 1794
    iget-wide v6, v0, Lcom/bilibili/tv/api/video/PgcInfo$Progress;->lastEpId:J

    .line 1795
    iget v5, v0, Lcom/bilibili/tv/api/video/PgcInfo$Progress;->lastTime:I

    .line 1797
    const-string v0, "PgcInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Found user progress: last_ep_id="

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, ", last_time="

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, "s"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1800
    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo;->episodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1de
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/PgcInfo$Episode;

    .line 1801
    iget v8, v0, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->id:I

    int-to-long v8, v8

    cmp-long v8, v8, v6

    if-nez v8, :cond_1de

    .line 1802
    iget-wide v0, v0, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->cid:J

    .line 1807
    :goto_1f3
    cmp-long v2, v0, v2

    if-lez v2, :cond_22a

    .line 1808
    new-instance v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$History;

    invoke-direct {v2}, Lcom/bilibili/tv/api/video/BiliVideoDetail$History;-><init>()V

    .line 1809
    iput-wide v0, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$History;->mCid:J

    .line 1810
    iput v5, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$History;->mProgress:I

    .line 1811
    iput-object v2, v4, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mHistory:Lcom/bilibili/tv/api/video/BiliVideoDetail$History;

    .line 1812
    const-string v2, "PgcInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Set history: cid="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", progress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "s (\u5141\u8bb8progress=0)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1816
    :cond_22a
    return-object v4

    :cond_22b
    move-wide v0, v2

    goto :goto_1f3
.end method

.method private createPgcEpisodesSectionView(Lcom/bilibili/tv/api/video/PgcInfo;)V
    .locals 13

    .prologue
    const/16 v12, 0xc8

    const/16 v11, 0x8

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 2719
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonsContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_11

    if-eqz p1, :cond_11

    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo;->episodes:Ljava/util/List;

    if-nez v0, :cond_12

    .line 2825
    :cond_11
    :goto_11
    return-void

    .line 2723
    :cond_12
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1f

    .line 2724
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2727
    :cond_1f
    new-instance v3, Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    invoke-direct {v3, p0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;-><init>(Landroid/content/Context;)V

    .line 2729
    invoke-virtual {v3, v12}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setSectionId(I)V

    .line 2731
    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo;->episodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    .line 2732
    const-string v0, "\u9009\u96c6"

    invoke-virtual {v3, v0, v6}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setTitle(Ljava/lang/String;I)V

    .line 2734
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    .line 2735
    :goto_38
    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo;->episodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_84

    .line 2736
    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo;->episodes:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/PgcInfo$Episode;

    .line 2737
    invoke-direct {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->convertEpisodeToBiliVideoDetail(Lcom/bilibili/tv/api/video/PgcInfo$Episode;)Lcom/bilibili/tv/api/video/BiliVideoDetail;

    move-result-object v8

    .line 2739
    iget-object v0, v0, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->statForUnity:Lcom/alibaba/fastjson/JSONObject;

    .line 2740
    if-eqz v0, :cond_6e

    const-string v9, "vt"

    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6e

    .line 2741
    const-string v9, "vt"

    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 2742
    if-eqz v0, :cond_6e

    .line 2743
    const-string v9, "pure_text"

    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2744
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_75

    .line 2745
    iput-object v9, v8, Lcom/bilibili/tv/api/video/BiliVideoDetail;->vtText:Ljava/lang/String;

    .line 2755
    :cond_6e
    :goto_6e
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2735
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_38

    .line 2747
    :cond_75
    const-string v9, "text"

    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2748
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_6e

    .line 2749
    iput-object v0, v8, Lcom/bilibili/tv/api/video/BiliVideoDetail;->vtText:Ljava/lang/String;

    goto :goto_6e

    .line 2758
    :cond_84
    new-instance v0, Lcom/bilibili/tv/ui/video/widget/PageVideoDetailBinder;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/bilibili/tv/ui/video/widget/PageVideoDetailBinder;-><init>(Z)V

    .line 2759
    invoke-virtual {v3, v7, v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setData(Ljava/util/List;Lcom/bilibili/tv/ui/video/widget/VideoCardBinder;)V

    .line 2761
    iget-wide v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->s:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_98

    .line 2762
    iget-wide v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->s:J

    invoke-virtual {v3, v0, v1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setCurrentVideoId(J)V

    .line 2766
    :cond_98
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->u:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    if-eqz v0, :cond_130

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->u:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    iget-object v0, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mHistory:Lcom/bilibili/tv/api/video/BiliVideoDetail$History;

    if-eqz v0, :cond_130

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->u:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    iget-object v0, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mHistory:Lcom/bilibili/tv/api/video/BiliVideoDetail$History;

    iget-wide v0, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$History;->mCid:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_130

    .line 2767
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->u:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    iget-object v0, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mHistory:Lcom/bilibili/tv/api/video/BiliVideoDetail$History;

    iget-wide v0, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$History;->mCid:J

    .line 2769
    :goto_b2
    cmp-long v4, v0, v4

    if-lez v4, :cond_d7

    .line 2770
    invoke-virtual {v3, v0, v1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setCurrentCid(J)V

    .line 2771
    const-string v4, "VideoDetailActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "createPgcEpisodesSectionView | \u8bbe\u7f6ecurrentCid="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (\u6765\u81ea\u5386\u53f2\u8bb0\u5f55)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2773
    :cond_d7
    invoke-virtual {v3, v2}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setInterceptCurrentVideoClick(Z)V

    .line 2774
    const-string v0, "VideoDetailActivity"

    const-string v1, "createPgcEpisodesSectionView | \u7981\u7528\'\u5f53\u524d\u89c6\u9891\u70b9\u51fb\u62e6\u622a\'(\u5206P\u5217\u8868\u9700\u8981\u65e0\u6761\u4ef6\u64ad\u653e)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2776
    new-instance v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$24;

    invoke-direct {v0, p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$24;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)V

    invoke-virtual {v3, v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setOnVideoClickListener(Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnVideoClickListener;)V

    .line 2801
    invoke-virtual {v3}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    .line 2802
    if-eqz v0, :cond_f5

    .line 2803
    const v1, 0x7f08016a

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setNextFocusUpId(I)V

    .line 2806
    :cond_f5
    new-instance v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonSectionView;

    invoke-virtual {v3}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->getTitleView()Landroid/widget/TextView;

    move-result-object v4

    invoke-direct {v1, v4, v0, v12}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonSectionView;-><init>(Landroid/widget/TextView;Landroid/support/v7/widget/RecyclerView;I)V

    .line 2807
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonSectionViews:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2808
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->ugcSeasonSections:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2809
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->videoListNavigator:Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;

    if-eqz v0, :cond_111

    .line 2810
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->videoListNavigator:Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->registerSection(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)V

    .line 2813
    :cond_111
    invoke-virtual {v3}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->scrollToCurrentVideo()V

    .line 2815
    invoke-direct {p0, v3, v6}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->setupNavigationTagsForSection(Lcom/bilibili/tv/ui/video/widget/VideoListSection;I)V

    .line 2817
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 2819
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->hh:Landroid/widget/TextView;

    if-eqz v0, :cond_125

    .line 2820
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->hh:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2822
    :cond_125
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->o:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_11

    .line 2823
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->o:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v11}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    goto/16 :goto_11

    :cond_130
    move-wide v0, v4

    goto :goto_b2
.end method

.method private createPgcSectionView(Lcom/bilibili/tv/api/video/PgcInfo$Section;I)V
    .locals 6

    .prologue
    .line 3009
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonsContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_10

    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo$Section;->episodes:Ljava/util/List;

    if-eqz v0, :cond_10

    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo$Section;->episodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 3063
    :cond_10
    :goto_10
    return-void

    .line 3013
    :cond_11
    new-instance v2, Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    invoke-direct {v2, p0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;-><init>(Landroid/content/Context;)V

    .line 3015
    invoke-virtual {v2, p2}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setSectionId(I)V

    .line 3017
    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo$Section;->episodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 3018
    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo$Section;->title:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setTitle(Ljava/lang/String;I)V

    .line 3020
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 3021
    const/4 v0, 0x0

    move v1, v0

    :goto_2b
    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo$Section;->episodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_46

    .line 3022
    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo$Section;->episodes:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/PgcInfo$Episode;

    .line 3023
    invoke-direct {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->convertEpisodeToBiliVideoDetail(Lcom/bilibili/tv/api/video/PgcInfo$Episode;)Lcom/bilibili/tv/api/video/BiliVideoDetail;

    move-result-object v0

    .line 3024
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3021
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2b

    .line 3027
    :cond_46
    new-instance v0, Lcom/bilibili/tv/ui/video/widget/BiliVideoDetailBinder;

    invoke-direct {v0}, Lcom/bilibili/tv/ui/video/widget/BiliVideoDetailBinder;-><init>()V

    .line 3028
    invoke-virtual {v2, v4, v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setData(Ljava/util/List;Lcom/bilibili/tv/ui/video/widget/VideoCardBinder;)V

    .line 3030
    iget-wide v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->s:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-lez v0, :cond_7b

    .line 3031
    iget-wide v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->s:J

    invoke-virtual {v2, v0, v1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setCurrentVideoId(J)V

    .line 3032
    const-string v0, "VideoDetailActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createPgcSectionView | \u8bbe\u7f6ecurrentVideoId="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v4, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->s:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " (\u6765\u81eaavid)"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3035
    :cond_7b
    new-instance v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$28;

    invoke-direct {v0, p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$28;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)V

    invoke-virtual {v2, v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setOnVideoClickListener(Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnVideoClickListener;)V

    .line 3045
    invoke-virtual {v2}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    .line 3046
    if-eqz v0, :cond_8f

    .line 3047
    const v1, 0x7f08016a

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setNextFocusUpId(I)V

    .line 3050
    :cond_8f
    new-instance v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonSectionView;

    invoke-virtual {v2}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->getTitleView()Landroid/widget/TextView;

    move-result-object v4

    invoke-direct {v1, v4, v0, p2}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonSectionView;-><init>(Landroid/widget/TextView;Landroid/support/v7/widget/RecyclerView;I)V

    .line 3051
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonSectionViews:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3053
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->ugcSeasonSections:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3054
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->videoListNavigator:Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;

    if-eqz v0, :cond_ab

    .line 3055
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->videoListNavigator:Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->registerSection(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)V

    .line 3058
    :cond_ab
    invoke-virtual {v2}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->scrollToCurrentVideo()V

    .line 3060
    invoke-direct {p0, v2, v3}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->setupNavigationTagsForSection(Lcom/bilibili/tv/ui/video/widget/VideoListSection;I)V

    .line 3062
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_10
.end method

.method private createSeasonsSectionView(Ljava/util/List;I)V
    .locals 6
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
    .line 2949
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonsContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_c

    if-eqz p1, :cond_c

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 3006
    :cond_c
    :goto_c
    return-void

    .line 2953
    :cond_d
    new-instance v1, Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;-><init>(Landroid/content/Context;)V

    .line 2955
    invoke-virtual {v1, p2}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setSectionId(I)V

    .line 2957
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 2958
    const-string v0, "\u591a\u5b63\u5217\u8868"

    invoke-virtual {v1, v0, v2}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setTitle(Ljava/lang/String;I)V

    .line 2960
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2961
    const/4 v0, 0x0

    :goto_24
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_34

    .line 2962
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2961
    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    .line 2965
    :cond_34
    new-instance v0, Lcom/bilibili/tv/ui/video/widget/PgcSeasonBinder;

    invoke-direct {v0}, Lcom/bilibili/tv/ui/video/widget/PgcSeasonBinder;-><init>()V

    .line 2966
    invoke-virtual {v1, v3, v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setData(Ljava/util/List;Lcom/bilibili/tv/ui/video/widget/VideoCardBinder;)V

    .line 2968
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->mSeasonId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6b

    .line 2970
    :try_start_44
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->mSeasonId:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2971
    invoke-virtual {v1, v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setCurrentSeasonId(I)V

    .line 2972
    const-string v3, "VideoDetailActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createSeasonsSectionView | \u8bbe\u7f6ecurrentSeasonId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " (\u6765\u81eamSeasonId)"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6b
    .catch Ljava/lang/NumberFormatException; {:try_start_44 .. :try_end_6b} :catch_a8

    .line 2978
    :cond_6b
    :goto_6b
    new-instance v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$27;

    invoke-direct {v0, p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$27;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)V

    invoke-virtual {v1, v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setOnVideoClickListener(Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnVideoClickListener;)V

    .line 2988
    invoke-virtual {v1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    .line 2989
    if-eqz v0, :cond_7f

    .line 2990
    const v3, 0x7f08016a

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->setNextFocusUpId(I)V

    .line 2993
    :cond_7f
    new-instance v3, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonSectionView;

    invoke-virtual {v1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->getTitleView()Landroid/widget/TextView;

    move-result-object v4

    invoke-direct {v3, v4, v0, p2}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonSectionView;-><init>(Landroid/widget/TextView;Landroid/support/v7/widget/RecyclerView;I)V

    .line 2994
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonSectionViews:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2996
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->ugcSeasonSections:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2997
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->videoListNavigator:Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;

    if-eqz v0, :cond_9b

    .line 2998
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->videoListNavigator:Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->registerSection(Lcom/bilibili/tv/ui/video/widget/VideoListSection;)V

    .line 3001
    :cond_9b
    invoke-virtual {v1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->scrollToCurrentVideo()V

    .line 3003
    invoke-direct {p0, v1, v2}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->setupNavigationTagsForSection(Lcom/bilibili/tv/ui/video/widget/VideoListSection;I)V

    .line 3005
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_c

    .line 2973
    :catch_a8
    move-exception v0

    .line 2974
    const-string v0, "VideoDetailActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createSeasonsSectionView | mSeasonId\u89e3\u6790\u5931\u8d25: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->mSeasonId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6b
.end method

.method private extractSeasonId(Lcom/bilibili/tv/api/video/BiliVideoDetail;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 2352
    if-nez p1, :cond_6

    .line 2353
    const-string v0, ""

    .line 2396
    :goto_5
    return-object v0

    .line 2355
    :cond_6
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mRedirectUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a0

    .line 2356
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mRedirectUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 2357
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 2358
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 2360
    :cond_26
    const-string v2, "/ss"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_61

    .line 2361
    const-string v2, "/ss"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 2362
    add-int/lit8 v2, v2, 0x3

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 2363
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move v0, v1

    .line 2364
    :goto_40
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_56

    .line 2365
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 2366
    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_56

    .line 2367
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2364
    add-int/lit8 v0, v0, 0x1

    goto :goto_40

    .line 2372
    :cond_56
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_a0

    .line 2373
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 2375
    :cond_61
    const-string v2, "/ep"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a0

    .line 2376
    const-string v2, "/ep"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 2377
    add-int/lit8 v2, v2, 0x3

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 2378
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 2379
    :goto_7a
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_90

    .line 2380
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 2381
    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_90

    .line 2382
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2379
    add-int/lit8 v1, v1, 0x1

    goto :goto_7a

    .line 2387
    :cond_90
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_a0

    .line 2388
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2389
    invoke-direct {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->fetchSeasonIdFromEpId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_5

    .line 2393
    :cond_a0
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mBangumiInfo:Lcom/bilibili/tv/api/video/BiliVideoDetail$BangumiInfo;

    if-eqz v0, :cond_aa

    .line 2394
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mBangumiInfo:Lcom/bilibili/tv/api/video/BiliVideoDetail$BangumiInfo;

    iget-object v0, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$BangumiInfo;->mSeasonId:Ljava/lang/String;

    goto/16 :goto_5

    .line 2396
    :cond_aa
    const-string v0, ""

    goto/16 :goto_5
.end method

.method private final fallbackLoadHistory(Lcom/bilibili/tv/api/video/BiliVideoDetail;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 2073
    const-string v0, "HistoryApi"

    const-string v1, "========== Fallback History API Request =========="

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2074
    const-string v0, "HistoryApi"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "avid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->s:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2076
    new-instance v0, Lcom/bilibili/tv/api/video/VideoApiService$VideoParamsMapV2$Builder;

    iget-wide v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->s:J

    invoke-direct {v0, v2, v3}, Lcom/bilibili/tv/api/video/VideoApiService$VideoParamsMapV2$Builder;-><init>(J)V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/api/video/VideoApiService$VideoParamsMapV2$Builder;->setAutoPlay(Ljava/lang/String;)Lcom/bilibili/tv/api/video/VideoApiService$VideoParamsMapV2$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/api/video/VideoApiService$VideoParamsMapV2$Builder;->build()Lcom/bilibili/tv/api/video/VideoApiService$VideoParamsMapV2;

    move-result-object v1

    .line 2077
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2078
    const-string v2, "https://app.bilibili.com/x/v2/view?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2079
    const-string v2, "plat=0&aid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->s:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2080
    const-string v2, "&autoplay=0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2081
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5b

    .line 2082
    const-string v2, "&access_key="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2084
    :cond_5b
    const-string v2, "HistoryApi"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Request URL: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2086
    const-class v0, Lcom/bilibili/tv/api/video/VideoApiService;

    invoke-static {v0}, Lbl/vo;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/VideoApiService;

    invoke-interface {v0, v1, p2}, Lcom/bilibili/tv/api/video/VideoApiService;->getVideoDetails(Lcom/bilibili/tv/api/video/VideoApiService$VideoParamsMapV2;Ljava/lang/String;)Lbl/vp;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$22;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$22;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)V

    .line 2089
    invoke-virtual {v0, v1}, Lbl/vp;->a(Lbl/vu;)Lbl/vp;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$21;

    invoke-direct {v1, p0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$21;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/BiliVideoDetail;)V

    .line 2106
    invoke-virtual {v0, v1}, Lbl/vp;->a(Lretrofit2/Callback;)V

    .line 2139
    return-void
.end method

.method private fetchSeasonIdFromEpId(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 3142
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

    .line 3143
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

    .line 3144
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    .line 3145
    new-instance v2, Lcom/bilibili/tv/ui/video/VideoDetailActivity$29;

    invoke-direct {v2, p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$29;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 3161
    const-wide/16 v2, 0x5

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v3, v1}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 3162
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

    .line 3163
    if-eqz v0, :cond_be

    const-string v1, "result"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_be

    .line 3164
    const-string v1, "result"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 3165
    const-string v1, "season_id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_be

    .line 3166
    const-string v1, "season_id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 3167
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

    .line 3175
    :goto_9a
    return-object v0

    .line 3162
    :cond_9b
    const-string v1, "null"
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9d} :catch_9e

    goto :goto_55

    .line 3171
    :catch_9e
    move-exception v0

    .line 3172
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

    .line 3173
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3175
    :cond_be
    const-string v0, ""

    goto :goto_9a
.end method

.method private findSectionByRecyclerView(Landroid/support/v7/widget/RecyclerView;)Lcom/bilibili/tv/ui/video/widget/VideoListSection;
    .locals 3

    .prologue
    .line 1270
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonSectionViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonSectionView;

    .line 1271
    iget-object v2, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonSectionView;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    if-ne v2, p1, :cond_6

    .line 1272
    iget v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonSectionView;->sectionId:I

    invoke-direct {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->findVideoListSection(I)Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    move-result-object v0

    .line 1275
    :goto_1c
    return-object v0

    :cond_1d
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method private findSectionContainer(Landroid/view/View;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 630
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 631
    :goto_5
    if-eqz v1, :cond_2e

    .line 632
    instance-of v0, v1, Landroid/view/View;

    if-eqz v0, :cond_29

    move-object v0, v1

    .line 633
    check-cast v0, Landroid/view/View;

    .line 634
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v3

    const v4, 0x7f0801a5

    if-ne v3, v4, :cond_23

    .line 635
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 636
    instance-of v2, v1, Landroid/view/View;

    if-eqz v2, :cond_22

    move-object v0, v1

    .line 637
    check-cast v0, Landroid/view/View;

    .line 647
    :cond_22
    :goto_22
    return-object v0

    .line 641
    :cond_23
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonsContainer:Landroid/widget/LinearLayout;

    if-ne v0, v3, :cond_29

    move-object v0, v2

    .line 642
    goto :goto_22

    .line 645
    :cond_29
    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_5

    :cond_2e
    move-object v0, v2

    .line 647
    goto :goto_22
.end method

.method private final findTitleByCid(JLcom/bilibili/tv/api/video/BiliVideoDetail;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 2159
    if-nez p3, :cond_5

    move-object v0, v1

    .line 2180
    :goto_4
    return-object v0

    .line 2162
    :cond_5
    iget-object v0, p3, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    if-eqz v0, :cond_3d

    .line 2163
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

    .line 2164
    iget-wide v4, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mCid:J

    cmp-long v3, v4, p1

    if-nez v3, :cond_f

    .line 2165
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

    .line 2169
    :cond_3d
    iget-object v0, p3, Lcom/bilibili/tv/api/video/BiliVideoDetail;->episodes:Lcom/alibaba/fastjson/JSONArray;

    if-eqz v0, :cond_7a

    .line 2170
    const/4 v0, 0x0

    :goto_42
    iget-object v2, p3, Lcom/bilibili/tv/api/video/BiliVideoDetail;->episodes:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_7a

    .line 2171
    iget-object v2, p3, Lcom/bilibili/tv/api/video/BiliVideoDetail;->episodes:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    .line 2172
    const-string v3, "page"

    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_77

    .line 2173
    const-string v3, "page"

    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v3

    .line 2174
    const-string v4, "cid"

    invoke-virtual {v3, v4}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_77

    const-string v4, "cid"

    invoke-virtual {v3, v4}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v4

    cmp-long v3, v4, p1

    if-nez v3, :cond_77

    .line 2175
    const-string v0, "title"

    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 2170
    :cond_77
    add-int/lit8 v0, v0, 0x1

    goto :goto_42

    :cond_7a
    move-object v0, v1

    .line 2180
    goto :goto_4
.end method

.method private findVideoListSection(I)Lcom/bilibili/tv/ui/video/widget/VideoListSection;
    .locals 3

    .prologue
    .line 555
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

    .line 556
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->getSectionId()I

    move-result v2

    if-ne v2, p1, :cond_6

    .line 563
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

    .line 2142
    if-gtz p1, :cond_8

    .line 2143
    const-string v0, "00:00"

    .line 2154
    :goto_7
    return-object v0

    .line 2144
    :cond_8
    const/16 v0, 0x3c

    if-ge p1, v0, :cond_1b

    .line 2145
    const-string v0, "00:%02d"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    .line 2146
    :cond_1b
    const/16 v0, 0xe10

    if-ge p1, v0, :cond_38

    .line 2147
    div-int/lit8 v0, p1, 0x3c

    .line 2148
    rem-int/lit8 v1, p1, 0x3c

    .line 2149
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

    .line 2151
    :cond_38
    div-int/lit16 v0, p1, 0xe10

    .line 2152
    rem-int/lit16 v1, p1, 0xe10

    div-int/lit8 v1, v1, 0x3c

    .line 2153
    rem-int/lit8 v2, p1, 0x3c

    .line 2154
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

    .line 1313
    if-nez p1, :cond_10

    move v0, v1

    .line 1341
    :goto_4
    return v0

    .line 1333
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1334
    instance-of v2, v0, Landroid/view/View;

    if-eqz v2, :cond_40

    .line 1335
    check-cast v0, Landroid/view/View;

    move-object p1, v0

    .line 1318
    :cond_10
    if-eqz p1, :cond_40

    .line 1319
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 1320
    const v2, 0x7f080149

    if-ne v0, v2, :cond_1d

    .line 1321
    const/4 v0, 0x1

    goto :goto_4

    .line 1322
    :cond_1d
    const v2, 0x7f080171

    if-ne v0, v2, :cond_24

    .line 1323
    const/4 v0, 0x2

    goto :goto_4

    .line 1324
    :cond_24
    const v2, 0x7f080155

    if-ne v0, v2, :cond_2b

    .line 1325
    const/4 v0, 0x3

    goto :goto_4

    .line 1326
    :cond_2b
    const v2, 0x7f08008d

    if-ne v0, v2, :cond_32

    .line 1327
    const/4 v0, 0x4

    goto :goto_4

    .line 1328
    :cond_32
    const v2, 0x7f0801a5

    if-ne v0, v2, :cond_39

    .line 1329
    const/4 v0, 0x5

    goto :goto_4

    .line 1330
    :cond_39
    const v2, 0x7f0801d6

    if-ne v0, v2, :cond_5

    .line 1331
    const/4 v0, 0x6

    goto :goto_4

    :cond_40
    move v0, v1

    .line 1341
    goto :goto_4
.end method

.method private getCurrentNavTagSectionIndex(Landroid/view/View;)I
    .locals 3

    .prologue
    .line 1292
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1293
    instance-of v1, v0, Landroid/support/v7/widget/RecyclerView;

    if-eqz v1, :cond_2f

    .line 1294
    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    .line 1295
    const/4 v1, 0x0

    move v2, v1

    :goto_c
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonSectionViews:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_2f

    .line 1296
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonSectionViews:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonSectionView;

    iget v1, v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonSectionView;->sectionId:I

    invoke-direct {p0, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->findVideoListSection(I)Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    move-result-object v1

    .line 1297
    if-eqz v1, :cond_2b

    invoke-virtual {v1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->getNavTagRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    if-ne v1, v0, :cond_2b

    .line 1302
    :goto_2a
    return v2

    .line 1295
    :cond_2b
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_c

    .line 1302
    :cond_2f
    const/4 v2, -0x1

    goto :goto_2a
.end method

.method private getCurrentSeasonSectionIndex(Landroid/view/View;)I
    .locals 3

    .prologue
    .line 1279
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1280
    instance-of v1, v0, Landroid/support/v7/widget/RecyclerView;

    if-eqz v1, :cond_25

    .line 1281
    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    .line 1282
    const/4 v1, 0x0

    move v2, v1

    :goto_c
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonSectionViews:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_25

    .line 1283
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonSectionViews:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonSectionView;

    iget-object v1, v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonSectionView;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    if-ne v1, v0, :cond_21

    .line 1288
    :goto_20
    return v2

    .line 1282
    :cond_21
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_c

    .line 1288
    :cond_25
    const/4 v2, -0x1

    goto :goto_20
.end method

.method private getDataSizeForSection(I)I
    .locals 3

    .prologue
    .line 567
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

    .line 568
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->getSectionId()I

    move-result v2

    if-ne v2, p1, :cond_6

    .line 569
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->getDataSize()I

    move-result v0

    .line 572
    :goto_1c
    return v0

    :cond_1d
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method private getKeyName(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 986
    sparse-switch p1, :sswitch_data_2a

    .line 993
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KEY_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_16
    return-object v0

    .line 987
    :sswitch_17
    const-string v0, "DPAD_UP"

    goto :goto_16

    .line 988
    :sswitch_1a
    const-string v0, "DPAD_DOWN"

    goto :goto_16

    .line 989
    :sswitch_1d
    const-string v0, "DPAD_LEFT"

    goto :goto_16

    .line 990
    :sswitch_20
    const-string v0, "DPAD_RIGHT"

    goto :goto_16

    .line 991
    :sswitch_23
    const-string v0, "DPAD_CENTER"

    goto :goto_16

    .line 992
    :sswitch_26
    const-string v0, "ENTER"

    goto :goto_16

    .line 986
    nop

    :sswitch_data_2a
    .sparse-switch
        0x13 -> :sswitch_17
        0x14 -> :sswitch_1a
        0x15 -> :sswitch_1d
        0x16 -> :sswitch_20
        0x17 -> :sswitch_23
        0x42 -> :sswitch_26
    .end sparse-switch
.end method

.method private getSeasonSectionFocusPosition(I)I
    .locals 3

    .prologue
    .line 543
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

    .line 544
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->getSectionId()I

    move-result v2

    if-ne v2, p1, :cond_6

    .line 545
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->getFocusPosition()I

    move-result v0

    .line 551
    :goto_1c
    return v0

    .line 548
    :cond_1d
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonSectionFocusPositions:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 549
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonSectionFocusPositions:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1c

    .line 551
    :cond_3a
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method private getSeasonSectionIdsString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1260
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "["

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1261
    const/4 v0, 0x0

    move v1, v0

    :goto_9
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonSectionViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_29

    .line 1262
    if-lez v1, :cond_18

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1263
    :cond_18
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonSectionViews:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonSectionView;

    iget v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonSectionView;->sectionId:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1261
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_9

    .line 1265
    :cond_29
    const-string v0, "]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1266
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getVisibleIndex(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)I
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 1454
    if-eqz p1, :cond_5

    if-nez p2, :cond_7

    :cond_5
    move v0, v1

    .line 1458
    :cond_6
    :goto_6
    return v0

    .line 1455
    :cond_7
    const/4 v0, 0x0

    :goto_8
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_17

    .line 1456
    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eq v2, p2, :cond_6

    .line 1455
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_17
    move v0, v1

    .line 1458
    goto :goto_6
.end method

.method private handleListFocusNavigation(Landroid/view/View;I)Z
    .locals 9

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 998
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->getCurrentListType(Landroid/view/View;)I

    move-result v0

    .line 999
    if-gez v0, :cond_c

    .line 1216
    :cond_b
    :goto_b
    return v1

    .line 1003
    :cond_c
    const/4 v2, 0x0

    .line 1006
    const/16 v4, 0x14

    if-ne p2, v4, :cond_219

    .line 1007
    if-ne v0, v3, :cond_da

    .line 1009
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonsContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_a5

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_a5

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonSectionViews:Ljava/util/List;

    .line 1010
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a5

    .line 1012
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonSectionViews:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonSectionView;

    .line 1013
    iget-object v2, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonSectionView;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 1014
    iget v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonSectionView;->sectionId:I

    invoke-direct {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->getSeasonSectionFocusPosition(I)I

    move-result v0

    .line 1188
    :goto_37
    if-eqz v2, :cond_b

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_b

    .line 1189
    const-string v4, "VideoDetailActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleListFocusNavigation | \u627e\u5230\u76ee\u6807RecyclerView | savedPosition="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " | childCount="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1191
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1189
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1193
    invoke-direct {p0, v2}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->findSectionByRecyclerView(Landroid/support/v7/widget/RecyclerView;)Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    move-result-object v4

    .line 1194
    if-eqz v4, :cond_3a5

    .line 1195
    const-string v1, "VideoDetailActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleListFocusNavigation | \u76ee\u6807\u662fVideoListSection\uff0c\u4f7f\u7528\u5c01\u88c5\u7684\u7126\u70b9\u6062\u590d\u903b\u8f91 | setFocusPosition="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1197
    invoke-virtual {v4, v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setFocusPosition(I)V

    .line 1198
    invoke-virtual {v4}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->requestFocusOnSavedPosition()Z

    move-result v0

    .line 1199
    const-string v1, "VideoDetailActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleListFocusNavigation | requestFocusOnSavedPosition\u8fd4\u56de="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v3

    .line 1200
    goto/16 :goto_b

    .line 1015
    :cond_a5
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->episodes_video:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_b6

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->episodes_video:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_b6

    .line 1016
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->episodes_video:Landroid/support/v7/widget/RecyclerView;

    .line 1017
    iget v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->episodesVideoFocusPosition:I

    goto :goto_37

    .line 1018
    :cond_b6
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->r:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_c8

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->r:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_c8

    .line 1019
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->r:Landroid/support/v7/widget/RecyclerView;

    .line 1020
    iget v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->relateVideoFocusPosition:I

    goto/16 :goto_37

    .line 1021
    :cond_c8
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->n:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_3c1

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->n:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3c1

    .line 1022
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->n:Landroid/support/v7/widget/RecyclerView;

    .line 1023
    iget v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->tagViewFocusPosition:I

    goto/16 :goto_37

    .line 1025
    :cond_da
    const/4 v4, 0x5

    if-ne v0, v4, :cond_18f

    .line 1027
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->getCurrentSeasonSectionIndex(Landroid/view/View;)I

    move-result v4

    .line 1028
    if-ltz v4, :cond_143

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonSectionViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_143

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonSectionViews:Ljava/util/List;

    .line 1029
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonSectionView;

    .line 1032
    :goto_f3
    if-eqz v0, :cond_14b

    .line 1033
    iget v5, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonSectionView;->sectionId:I

    invoke-direct {p0, v5}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->findVideoListSection(I)Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    move-result-object v5

    .line 1034
    if-eqz v5, :cond_14b

    .line 1035
    invoke-virtual {v5}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->getNavTagAdapter()Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;

    move-result-object v6

    .line 1036
    invoke-virtual {v5}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->getNavTagRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v7

    .line 1037
    if-eqz v6, :cond_14b

    invoke-virtual {v6}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_14b

    if-eqz v7, :cond_14b

    .line 1038
    invoke-virtual {v7}, Landroid/support/v7/widget/RecyclerView;->getVisibility()I

    move-result v8

    if-nez v8, :cond_14b

    .line 1039
    const-string v1, "VideoDetailActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleListFocusNavigation | \u79fb\u52a8\u7126\u70b9\u5230\u5bfc\u822a\u6807\u7b7e | sectionId="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonSectionView;->sectionId:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1040
    invoke-virtual {v5}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->getNavTagSelectedPosition()I

    move-result v0

    .line 1041
    if-ltz v0, :cond_145

    .line 1042
    invoke-virtual {v6, v0}, Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;->scrollToPositionWithOffset(I)V

    .line 1043
    new-instance v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$11;

    invoke-direct {v1, p0, v6, v0, v7}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$11;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/ui/video/widget/NavigationTagAdapter;ILandroid/support/v7/widget/RecyclerView;)V

    invoke-virtual {v7, v1}, Landroid/support/v7/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    move v1, v3

    .line 1054
    goto/16 :goto_b

    .line 1029
    :cond_143
    const/4 v0, 0x0

    goto :goto_f3

    .line 1056
    :cond_145
    invoke-virtual {v7}, Landroid/support/v7/widget/RecyclerView;->requestFocus()Z

    move v1, v3

    .line 1057
    goto/16 :goto_b

    .line 1062
    :cond_14b
    if-ltz v4, :cond_16b

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonSectionViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v4, v0, :cond_16b

    .line 1064
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonSectionViews:Ljava/util/List;

    add-int/lit8 v2, v4, 0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonSectionView;

    .line 1065
    iget-object v2, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonSectionView;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 1066
    iget v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonSectionView;->sectionId:I

    invoke-direct {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->getSeasonSectionFocusPosition(I)I

    move-result v0

    goto/16 :goto_37

    .line 1069
    :cond_16b
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->r:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_17d

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->r:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_17d

    .line 1070
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->r:Landroid/support/v7/widget/RecyclerView;

    .line 1071
    iget v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->relateVideoFocusPosition:I

    goto/16 :goto_37

    .line 1072
    :cond_17d
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->n:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_3c1

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->n:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3c1

    .line 1073
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->n:Landroid/support/v7/widget/RecyclerView;

    .line 1074
    iget v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->tagViewFocusPosition:I

    goto/16 :goto_37

    .line 1077
    :cond_18f
    if-ne v0, v5, :cond_1b5

    .line 1078
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->r:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_1a3

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->r:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1a3

    .line 1079
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->r:Landroid/support/v7/widget/RecyclerView;

    .line 1080
    iget v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->relateVideoFocusPosition:I

    goto/16 :goto_37

    .line 1081
    :cond_1a3
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->n:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_3c1

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->n:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3c1

    .line 1082
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->n:Landroid/support/v7/widget/RecyclerView;

    .line 1083
    iget v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->tagViewFocusPosition:I

    goto/16 :goto_37

    .line 1085
    :cond_1b5
    if-ne v0, v6, :cond_1c9

    .line 1086
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->n:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_3c1

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->n:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3c1

    .line 1087
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->n:Landroid/support/v7/widget/RecyclerView;

    .line 1088
    iget v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->tagViewFocusPosition:I

    goto/16 :goto_37

    .line 1090
    :cond_1c9
    if-ne v0, v7, :cond_1ce

    move v1, v3

    .line 1091
    goto/16 :goto_b

    .line 1092
    :cond_1ce
    const/4 v4, 0x6

    if-ne v0, v4, :cond_3c1

    .line 1093
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->getCurrentNavTagSectionIndex(Landroid/view/View;)I

    move-result v0

    .line 1094
    if-ltz v0, :cond_1f5

    iget-object v4, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonSectionViews:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v0, v4, :cond_1f5

    .line 1095
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonSectionViews:Ljava/util/List;

    add-int/lit8 v0, v0, 0x1

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonSectionView;

    .line 1096
    iget-object v2, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonSectionView;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 1097
    iget v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonSectionView;->sectionId:I

    invoke-direct {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->getSeasonSectionFocusPosition(I)I

    move-result v0

    goto/16 :goto_37

    .line 1099
    :cond_1f5
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->r:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_207

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->r:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_207

    .line 1100
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->r:Landroid/support/v7/widget/RecyclerView;

    .line 1101
    iget v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->relateVideoFocusPosition:I

    goto/16 :goto_37

    .line 1102
    :cond_207
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->n:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_3c1

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->n:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3c1

    .line 1103
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->n:Landroid/support/v7/widget/RecyclerView;

    .line 1104
    iget v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->tagViewFocusPosition:I

    goto/16 :goto_37

    .line 1108
    :cond_219
    const/16 v4, 0x13

    if-ne p2, v4, :cond_3c1

    .line 1110
    if-ne v0, v3, :cond_247

    .line 1111
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    if-eqz v0, :cond_233

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    invoke-virtual {v0}, Lcom/bilibili/tv/widget/DrawLinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_233

    .line 1112
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    invoke-virtual {v0}, Lcom/bilibili/tv/widget/DrawLinearLayout;->requestFocus()Z

    move v1, v3

    .line 1113
    goto/16 :goto_b

    .line 1114
    :cond_233
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->rePlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    if-eqz v0, :cond_3c1

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->rePlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    invoke-virtual {v0}, Lcom/bilibili/tv/widget/DrawLinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3c1

    .line 1115
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->rePlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    invoke-virtual {v0}, Lcom/bilibili/tv/widget/DrawLinearLayout;->requestFocus()Z

    move v1, v3

    .line 1116
    goto/16 :goto_b

    .line 1118
    :cond_247
    const/4 v4, 0x5

    if-ne v0, v4, :cond_29e

    .line 1120
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->getCurrentSeasonSectionIndex(Landroid/view/View;)I

    move-result v0

    .line 1121
    if-lez v0, :cond_264

    .line 1123
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonSectionViews:Ljava/util/List;

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonSectionView;

    .line 1124
    iget-object v2, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonSectionView;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 1125
    iget v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonSectionView;->sectionId:I

    invoke-direct {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->getSeasonSectionFocusPosition(I)I

    move-result v0

    goto/16 :goto_37

    .line 1128
    :cond_264
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->o:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_276

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->o:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_276

    .line 1129
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->o:Landroid/support/v7/widget/RecyclerView;

    .line 1130
    iget v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->epLayoutFocusPosition:I

    goto/16 :goto_37

    .line 1131
    :cond_276
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    if-eqz v0, :cond_28a

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    invoke-virtual {v0}, Lcom/bilibili/tv/widget/DrawLinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_28a

    .line 1132
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    invoke-virtual {v0}, Lcom/bilibili/tv/widget/DrawLinearLayout;->requestFocus()Z

    move v1, v3

    .line 1133
    goto/16 :goto_b

    .line 1134
    :cond_28a
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->rePlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    if-eqz v0, :cond_3c1

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->rePlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    invoke-virtual {v0}, Lcom/bilibili/tv/widget/DrawLinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3c1

    .line 1135
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->rePlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    invoke-virtual {v0}, Lcom/bilibili/tv/widget/DrawLinearLayout;->requestFocus()Z

    move v1, v3

    .line 1136
    goto/16 :goto_b

    .line 1139
    :cond_29e
    if-ne v0, v5, :cond_2c8

    .line 1140
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    if-eqz v0, :cond_2b4

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    invoke-virtual {v0}, Lcom/bilibili/tv/widget/DrawLinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2b4

    .line 1141
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    invoke-virtual {v0}, Lcom/bilibili/tv/widget/DrawLinearLayout;->requestFocus()Z

    move v1, v3

    .line 1142
    goto/16 :goto_b

    .line 1143
    :cond_2b4
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->rePlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    if-eqz v0, :cond_3c1

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->rePlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    invoke-virtual {v0}, Lcom/bilibili/tv/widget/DrawLinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3c1

    .line 1144
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->rePlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    invoke-virtual {v0}, Lcom/bilibili/tv/widget/DrawLinearLayout;->requestFocus()Z

    move v1, v3

    .line 1145
    goto/16 :goto_b

    .line 1147
    :cond_2c8
    if-ne v0, v6, :cond_31c

    .line 1149
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonsContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2f8

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2f8

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonSectionViews:Ljava/util/List;

    .line 1150
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2f8

    .line 1152
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonSectionViews:Ljava/util/List;

    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonSectionViews:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonSectionView;

    .line 1153
    iget-object v2, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonSectionView;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 1154
    iget v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonSectionView;->sectionId:I

    invoke-direct {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->getSeasonSectionFocusPosition(I)I

    move-result v0

    goto/16 :goto_37

    .line 1155
    :cond_2f8
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->episodes_video:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_30a

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->episodes_video:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_30a

    .line 1156
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->episodes_video:Landroid/support/v7/widget/RecyclerView;

    .line 1157
    iget v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->episodesVideoFocusPosition:I

    goto/16 :goto_37

    .line 1158
    :cond_30a
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->o:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_3c1

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->o:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3c1

    .line 1159
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->o:Landroid/support/v7/widget/RecyclerView;

    .line 1160
    iget v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->epLayoutFocusPosition:I

    goto/16 :goto_37

    .line 1162
    :cond_31c
    if-ne v0, v7, :cond_382

    .line 1163
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->r:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_330

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->r:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_330

    .line 1164
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->r:Landroid/support/v7/widget/RecyclerView;

    .line 1165
    iget v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->relateVideoFocusPosition:I

    goto/16 :goto_37

    .line 1166
    :cond_330
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonsContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_35e

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_35e

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonSectionViews:Ljava/util/List;

    .line 1167
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_35e

    .line 1168
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonSectionViews:Ljava/util/List;

    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonSectionViews:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonSectionView;

    .line 1169
    iget-object v2, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonSectionView;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 1170
    iget v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonSectionView;->sectionId:I

    invoke-direct {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->getSeasonSectionFocusPosition(I)I

    move-result v0

    goto/16 :goto_37

    .line 1171
    :cond_35e
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->episodes_video:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_370

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->episodes_video:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_370

    .line 1172
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->episodes_video:Landroid/support/v7/widget/RecyclerView;

    .line 1173
    iget v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->episodesVideoFocusPosition:I

    goto/16 :goto_37

    .line 1174
    :cond_370
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->o:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_3c1

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->o:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3c1

    .line 1175
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->o:Landroid/support/v7/widget/RecyclerView;

    .line 1176
    iget v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->epLayoutFocusPosition:I

    goto/16 :goto_37

    .line 1178
    :cond_382
    const/4 v4, 0x6

    if-ne v0, v4, :cond_3c1

    .line 1179
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->getCurrentNavTagSectionIndex(Landroid/view/View;)I

    move-result v0

    .line 1180
    if-ltz v0, :cond_3c1

    iget-object v4, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonSectionViews:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_3c1

    .line 1181
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonSectionViews:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonSectionView;

    .line 1182
    iget-object v2, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonSectionView;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 1183
    iget v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonSectionView;->sectionId:I

    invoke-direct {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->getSeasonSectionFocusPosition(I)I

    move-result v0

    goto/16 :goto_37

    .line 1203
    :cond_3a5
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v4

    .line 1204
    if-lez v4, :cond_b

    .line 1205
    add-int/lit8 v4, v4, -0x1

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1206
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1207
    invoke-virtual {v2, v0}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1208
    if-eqz v0, :cond_b

    .line 1210
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    move v1, v3

    .line 1211
    goto/16 :goto_b

    :cond_3c1
    move v0, v1

    goto/16 :goto_37
.end method

.method private final initDefaultPlayButtons(Lcom/bilibili/tv/api/video/BiliVideoDetail;)V
    .locals 5

    .prologue
    const v4, 0x7f080196

    const v3, 0x7f080167

    const/16 v2, 0x8

    .line 1822
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtn:Lcom/bilibili/tv/widget/DrawTextView;

    if-nez v0, :cond_11

    .line 1906
    :cond_10
    :goto_10
    return-void

    .line 1826
    :cond_11
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtn:Lcom/bilibili/tv/widget/DrawTextView;

    const-string v1, "\u5f00\u59cb\u64ad\u653e"

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1827
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_21

    .line 1828
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1830
    :cond_21
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1831
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyProgress:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1832
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1834
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->noHistoryPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    if-eqz v0, :cond_48

    .line 1835
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->noHistoryPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setVisibility(I)V

    .line 1837
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    if-eqz v0, :cond_43

    .line 1838
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    invoke-virtual {v0, v4}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setNextFocusRightId(I)V

    .line 1840
    :cond_43
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->noHistoryPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setNextFocusRightId(I)V

    .line 1842
    :cond_48
    invoke-virtual {p0, v3}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawLinearLayout;

    .line 1843
    if-eqz v0, :cond_53

    .line 1844
    invoke-virtual {v0, v4}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setNextFocusLeftId(I)V

    .line 1846
    :cond_53
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->rePlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    if-eqz v0, :cond_5c

    .line 1847
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->rePlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setVisibility(I)V

    .line 1852
    :cond_5c
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    if-eqz v0, :cond_6a

    .line 1853
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    new-instance v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$15;

    invoke-direct {v1, p0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$15;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/BiliVideoDetail;)V

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1869
    :cond_6a
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->rePlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    if-eqz v0, :cond_78

    .line 1870
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->rePlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    new-instance v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$16;

    invoke-direct {v1, p0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$16;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/BiliVideoDetail;)V

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1883
    :cond_78
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->noHistoryPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    if-eqz v0, :cond_86

    .line 1884
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->noHistoryPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    new-instance v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$17;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$17;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)V

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1895
    :cond_86
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->noHistoryPlayBtn:Lcom/bilibili/tv/widget/DrawTextView;

    if-eqz v0, :cond_10

    .line 1896
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->noHistoryPlayBtn:Lcom/bilibili/tv/widget/DrawTextView;

    new-instance v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$18;

    invoke-direct {v1, p0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$18;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/BiliVideoDetail;)V

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_10
.end method

.method private isPgcVideo(Lcom/bilibili/tv/api/video/BiliVideoDetail;)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2339
    if-nez p1, :cond_5

    .line 2348
    :cond_4
    :goto_4
    return v0

    .line 2342
    :cond_5
    iget-object v2, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mRedirectUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_f

    move v0, v1

    .line 2343
    goto :goto_4

    .line 2345
    :cond_f
    iget-object v2, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mBangumiInfo:Lcom/bilibili/tv/api/video/BiliVideoDetail$BangumiInfo;

    if-eqz v2, :cond_4

    move v0, v1

    .line 2346
    goto :goto_4
.end method

.method private final k()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const v5, 0x7f0700e7

    .line 270
    new-instance v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$d;

    invoke-direct {v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$d;-><init>()V

    .line 271
    const v0, 0x7f080041

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->b:Landroid/widget/ImageView;

    .line 272
    const v0, 0x7f080156

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->cc:Landroid/widget/TextView;

    .line 273
    const v0, 0x7f08015e

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->uperContainer:Landroid/widget/LinearLayout;

    .line 274
    const v0, 0x7f0801b0

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->staffContainer:Landroid/widget/LinearLayout;

    .line 275
    const v0, 0x7f080153

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->e:Landroid/widget/TextView;

    .line 276
    const v0, 0x7f080147

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->ff:Landroid/widget/TextView;

    .line 277
    const v0, 0x7f080159

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->g:Landroid/widget/TextView;

    .line 278
    const v0, 0x7f08014b

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->hh:Landroid/widget/TextView;

    .line 279
    const v0, 0x7f080154

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->i:Landroid/widget/TextView;

    .line 280
    const v0, 0x7f080170

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->episodes_title:Landroid/widget/TextView;

    .line 281
    const v0, 0x7f080064

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->m:Landroid/view/View;

    .line 282
    const v0, 0x7f080199

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->pgcInfoContainer:Landroid/widget/LinearLayout;

    .line 283
    const v0, 0x7f08019a

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->pgcRating:Landroid/widget/TextView;

    .line 284
    const v0, 0x7f08019b

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->pgcType:Landroid/widget/TextView;

    .line 285
    const v0, 0x7f08019c

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->pgcArea:Landroid/widget/TextView;

    .line 286
    const v0, 0x7f08019d

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->pgcNewEp:Landroid/widget/TextView;

    .line 287
    const v0, 0x7f0801d5

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->titleSection:Landroid/widget/LinearLayout;

    .line 288
    const v0, 0x7f08014d

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawLinearLayout;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->j:Lcom/bilibili/tv/widget/DrawLinearLayout;

    .line 289
    const v0, 0x7f08014e

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->k:Landroid/widget/ImageView;

    .line 290
    const v0, 0x7f08014f

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->l:Landroid/widget/TextView;

    .line 291
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->j:Lcom/bilibili/tv/widget/DrawLinearLayout;

    .line 292
    if-eqz v0, :cond_f3

    .line 293
    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 294
    invoke-virtual {v0, v5}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setUpDrawable(I)V

    .line 295
    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 296
    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 299
    :cond_f3
    const v0, 0x7f080167

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawLinearLayout;

    .line 300
    if-eqz v0, :cond_10a

    .line 301
    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 302
    invoke-virtual {v0, v5}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setUpDrawable(I)V

    .line 303
    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 304
    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 306
    :cond_10a
    const v0, 0x7f08016a

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawLinearLayout;

    .line 307
    if-eqz v0, :cond_121

    .line 308
    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 309
    invoke-virtual {v0, v5}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setUpDrawable(I)V

    .line 310
    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 311
    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 314
    :cond_121
    const v0, 0x7f0801a1

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawLinearLayout;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->watchLaterBtn:Lcom/bilibili/tv/widget/DrawLinearLayout;

    .line 315
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->watchLaterBtn:Lcom/bilibili/tv/widget/DrawLinearLayout;

    if-eqz v0, :cond_13f

    .line 316
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->watchLaterBtn:Lcom/bilibili/tv/widget/DrawLinearLayout;

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 317
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->watchLaterBtn:Lcom/bilibili/tv/widget/DrawLinearLayout;

    invoke-virtual {v0, v5}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setUpDrawable(I)V

    .line 318
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->watchLaterBtn:Lcom/bilibili/tv/widget/DrawLinearLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 321
    :cond_13f
    const v0, 0x7f080152

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawTextView;

    .line 322
    if-eqz v0, :cond_153

    .line 323
    invoke-virtual {v0, v5}, Lcom/bilibili/tv/widget/DrawTextView;->setUpDrawable(I)V

    .line 324
    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 325
    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 327
    :cond_153
    const v0, 0x7f080151

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->q:Landroid/widget/FrameLayout;

    .line 328
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->q:Landroid/widget/FrameLayout;

    .line 329
    if-eqz v0, :cond_171

    .line 330
    sget-object v1, Lcom/bilibili/tv/ui/base/LoadingImageView;->Companion:Lcom/bilibili/tv/ui/base/LoadingImageView$a;

    invoke-virtual {v1, v0}, Lcom/bilibili/tv/ui/base/LoadingImageView$a;->a(Landroid/widget/FrameLayout;)Lcom/bilibili/tv/ui/base/LoadingImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->p:Lcom/bilibili/tv/ui/base/LoadingImageView;

    .line 331
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->p:Lcom/bilibili/tv/ui/base/LoadingImageView;

    .line 332
    if-eqz v0, :cond_171

    .line 333
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/base/LoadingImageView;->a()V

    .line 336
    :cond_171
    const v0, 0x7f08008d

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->n:Landroid/support/v7/widget/RecyclerView;

    .line 337
    new-instance v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$1;

    invoke-direct {v0, p0, p0, v6, v6}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$1;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Landroid/content/Context;IZ)V

    .line 366
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->n:Landroid/support/v7/widget/RecyclerView;

    .line 367
    if-eqz v1, :cond_190

    .line 368
    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$h;)V

    .line 370
    new-instance v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$2;

    invoke-direct {v0, p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$2;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)V

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 382
    :cond_190
    new-instance v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$g;

    invoke-direct {v0, p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$g;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)V

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->x:Lcom/bilibili/tv/ui/video/VideoDetailActivity$g;

    .line 383
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->n:Landroid/support/v7/widget/RecyclerView;

    .line 384
    if-eqz v0, :cond_1a0

    .line 385
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->x:Lcom/bilibili/tv/ui/video/VideoDetailActivity$g;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 387
    :cond_1a0
    const v0, 0x7f080149

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->o:Landroid/support/v7/widget/RecyclerView;

    .line 388
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06010a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 389
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->t:Ljava/util/List;

    .line 390
    new-instance v1, Lbl/add;

    new-instance v2, Lcom/bilibili/tv/ui/video/VideoDetailActivity$b;

    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->t:Ljava/util/List;

    invoke-direct {v2, p0, v3}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$b;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Ljava/util/List;)V

    invoke-direct {v1, v2}, Lbl/add;-><init>(Landroid/support/v7/widget/RecyclerView$a;)V

    iput-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->w:Lbl/add;

    .line 391
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->o:Landroid/support/v7/widget/RecyclerView;

    if-eqz v1, :cond_202

    .line 392
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->o:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Lcom/bilibili/tv/widget/FixGridLayoutManager;

    const/4 v3, 0x6

    const/4 v4, 0x1

    invoke-direct {v2, p0, v3, v4, v6}, Lcom/bilibili/tv/widget/FixGridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$h;)V

    .line 393
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->o:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Lcom/bilibili/tv/ui/video/VideoDetailActivity$j;

    invoke-direct {v2, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$j;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView$g;)V

    .line 394
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->o:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->w:Lbl/add;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 396
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->o:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$3;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$3;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 408
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->blockEpisodeAutoFocus:Z

    if-eqz v0, :cond_202

    .line 409
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->o:Landroid/support/v7/widget/RecyclerView;

    const/high16 v1, 0x60000

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setDescendantFocusability(I)V

    .line 412
    :cond_202
    const v0, 0x7f080155

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->r:Landroid/support/v7/widget/RecyclerView;

    .line 413
    new-instance v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$e;

    invoke-direct {v0, p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$e;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)V

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->v:Lcom/bilibili/tv/ui/video/VideoDetailActivity$e;

    .line 414
    new-instance v0, Lcom/bilibili/tv/ui/video/widget/BiliVideoDetailBinder;

    invoke-direct {v0}, Lcom/bilibili/tv/ui/video/widget/BiliVideoDetailBinder;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->relateBinder:Lcom/bilibili/tv/ui/video/widget/BiliVideoDetailBinder;

    .line 415
    new-instance v0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;

    invoke-direct {v0}, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->relateCardAdapter:Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;

    .line 416
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->r:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_24b

    .line 417
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->r:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$4;

    invoke-direct {v1, p0, p0, v6, v6}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$4;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$h;)V

    .line 429
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->r:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->relateCardAdapter:Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 430
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->relateCardAdapter:Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;

    new-instance v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$5;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$5;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)V

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->setOnItemClickListener(Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter$OnItemClickListener;)V

    .line 440
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->r:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$6;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$6;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 469
    :cond_24b
    const v0, 0x7f080171

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->episodes_video:Landroid/support/v7/widget/RecyclerView;

    .line 470
    new-instance v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$EpisodesVideoAdapter;

    invoke-direct {v0, p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$EpisodesVideoAdapter;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)V

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->episodes_video_adapter:Lcom/bilibili/tv/ui/video/VideoDetailActivity$EpisodesVideoAdapter;

    .line 471
    new-instance v0, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;

    invoke-direct {v0}, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->episodesCardAdapter:Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;

    .line 472
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->episodes_video:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_28d

    .line 473
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->episodes_video:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/bilibili/tv/widget/FixLinearLayoutManager;

    invoke-direct {v1, p0, v6, v6}, Lcom/bilibili/tv/widget/FixLinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$h;)V

    .line 474
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->episodes_video:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->episodesCardAdapter:Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 475
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->episodesCardAdapter:Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;

    new-instance v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$7;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$7;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)V

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;->setOnItemClickListener(Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter$OnItemClickListener;)V

    .line 481
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->episodes_video:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$8;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$8;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 495
    :cond_28d
    const v0, 0x7f0801a3

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonsContainer:Landroid/widget/LinearLayout;

    .line 496
    new-instance v0, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;

    invoke-direct {v0}, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->videoListNavigator:Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;

    .line 497
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->videoListNavigator:Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->setUpTarget(Landroid/view/View;)V

    .line 498
    const v0, 0x7f08018e

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyContainer:Landroid/widget/LinearLayout;

    .line 499
    const v0, 0x7f080192

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawLinearLayout;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    .line 500
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    if-eqz v0, :cond_2cf

    .line 501
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    new-instance v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$d;

    invoke-direct {v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$d;-><init>()V

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 502
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    invoke-virtual {v0, v5}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setUpDrawable(I)V

    .line 504
    :cond_2cf
    const v0, 0x7f080195

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawLinearLayout;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->rePlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    .line 505
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->rePlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    if-eqz v0, :cond_2ed

    .line 506
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->rePlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    new-instance v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$d;

    invoke-direct {v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$d;-><init>()V

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 507
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->rePlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    invoke-virtual {v0, v5}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setUpDrawable(I)V

    .line 509
    :cond_2ed
    const v0, 0x7f080191

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawTextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtn:Lcom/bilibili/tv/widget/DrawTextView;

    .line 510
    const v0, 0x7f080194

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawTextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->rePlayBtn:Lcom/bilibili/tv/widget/DrawTextView;

    .line 511
    const v0, 0x7f080196

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawLinearLayout;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->noHistoryPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    .line 512
    const v0, 0x7f080198

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->noHistoryPlayCheckBox:Landroid/widget/CheckBox;

    .line 513
    const v0, 0x7f080197

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawTextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->noHistoryPlayBtn:Lcom/bilibili/tv/widget/DrawTextView;

    .line 514
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->noHistoryPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    if-eqz v0, :cond_337

    .line 515
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->noHistoryPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    new-instance v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$d;

    invoke-direct {v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$d;-><init>()V

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 516
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->noHistoryPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    invoke-virtual {v0, v5}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setUpDrawable(I)V

    .line 518
    :cond_337
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->noHistoryPlayBtn:Lcom/bilibili/tv/widget/DrawTextView;

    if-eqz v0, :cond_342

    .line 519
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->noHistoryPlayBtn:Lcom/bilibili/tv/widget/DrawTextView;

    const-string v1, "\u65e0\u75d5"

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawTextView;->setText(Ljava/lang/CharSequence;)V

    .line 521
    :cond_342
    const v0, 0x7f08018f

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyTitle:Landroid/widget/TextView;

    .line 522
    const v0, 0x7f080190

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyProgress:Landroid/widget/TextView;

    .line 523
    const v0, 0x7f0801b8

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyLabel:Landroid/widget/TextView;

    .line 524
    const v0, 0x7f0800f6

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->scrollView:Landroid/widget/ScrollView;

    .line 525
    invoke-direct {p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->setupGlobalFocusChangeListener()V

    .line 526
    return-void
.end method

.method private final likeVideo(I)V
    .locals 4

    .prologue
    .line 3436
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->B:Z

    if-eqz v0, :cond_5

    .line 3443
    :goto_4
    return-void

    .line 3439
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->B:Z

    .line 3440
    invoke-static {p0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v1

    .line 3441
    const-string v0, "BiliAccount.get(this)"

    invoke-static {v1, v0}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3442
    const-class v0, Lmybl/MyBiliApiService;

    invoke-static {v0}, Lbl/vo;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmybl/MyBiliApiService;

    invoke-virtual {v1}, Lbl/mg;->e()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->s:J

    invoke-interface {v0, v1, v2, v3, p1}, Lmybl/MyBiliApiService;->likeVideo(Ljava/lang/String;JI)Lbl/vp;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$LikeResponse;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$LikeResponse;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)V

    invoke-virtual {v0, v1}, Lbl/vp;->a(Lretrofit2/Callback;)V

    goto :goto_4
.end method

.method private final loadArchiveRelation(Lcom/bilibili/tv/api/video/BiliVideoDetail;)V
    .locals 4

    .prologue
    .line 1909
    if-eqz p1, :cond_6

    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mBvid:Ljava/lang/String;

    if-nez v0, :cond_7

    .line 1955
    :cond_6
    :goto_6
    return-void

    .line 1912
    :cond_7
    invoke-static {p0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v0

    .line 1913
    const-string v1, "BiliAccount.get(this)"

    invoke-static {v0, v1}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1914
    invoke-virtual {v0}, Lbl/mg;->a()Z

    move-result v1

    .line 1915
    if-eqz v1, :cond_6

    .line 1918
    invoke-virtual {v0}, Lbl/mg;->getSESSDATA()Ljava/lang/String;

    move-result-object v0

    .line 1919
    iget-object v1, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mBvid:Ljava/lang/String;

    .line 1921
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SESSDATA="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1923
    const-class v0, Lmybl/MyBiliApiService;

    invoke-static {v0}, Lbl/vo;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmybl/MyBiliApiService;

    invoke-interface {v0, v1, v2}, Lmybl/MyBiliApiService;->getArchiveRelation(Ljava/lang/String;Ljava/lang/String;)Lbl/vp;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$19;

    invoke-direct {v1, p0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$19;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/BiliVideoDetail;)V

    invoke-virtual {v0, v1}, Lbl/vp;->a(Lretrofit2/Callback;)V

    goto :goto_6
.end method

.method private final loadHistory(Lcom/bilibili/tv/api/video/BiliVideoDetail;)V
    .locals 11

    .prologue
    const-wide/16 v8, 0x0

    const/4 v1, 0x0

    .line 1958
    invoke-static {p0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v10

    .line 1959
    const-string v0, "BiliAccount.get(this)"

    invoke-static {v10, v0}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1961
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mHistory:Lcom/bilibili/tv/api/video/BiliVideoDetail$History;

    if-eqz v0, :cond_2c

    .line 1962
    const-string v0, "HistoryLoad"

    const-string v1, "History already set from PGC progress, updating display directly"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1963
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->updateHistoryDisplay(Lcom/bilibili/tv/api/video/BiliVideoDetail;)V

    .line 1964
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    .line 1965
    invoke-virtual {v0}, Lcom/bilibili/tv/widget/DrawLinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2b

    .line 1966
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    invoke-virtual {v0}, Lcom/bilibili/tv/widget/DrawLinearLayout;->requestFocus()Z

    .line 2070
    :cond_2b
    :goto_2b
    return-void

    .line 1973
    :cond_2c
    iget-object v3, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mBvid:Ljava/lang/String;

    .line 1974
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    if-eqz v0, :cond_e1

    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e1

    .line 1975
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;

    iget-wide v4, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mCid:J

    .line 1976
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;

    iget-wide v6, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mEpisodeId:J

    .line 1977
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;

    iget-object v0, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mBvid:Ljava/lang/String;

    if-eqz v0, :cond_74

    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;

    iget-object v0, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mBvid:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_74

    .line 1978
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;

    iget-object v3, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mBvid:Ljava/lang/String;

    .line 1982
    :cond_74
    :goto_74
    const-string v0, "HistoryLoad"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadHistory: mEntryType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->mEntryType:Lcom/bilibili/tv/ui/video/VideoDetailActivity$EntryType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isPgc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->isPgcVideo(Lcom/bilibili/tv/api/video/BiliVideoDetail;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", cid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", episodeId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", bvid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1984
    cmp-long v0, v4, v8

    if-nez v0, :cond_c7

    .line 1985
    invoke-virtual {v10}, Lbl/mg;->e()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->fallbackLoadHistory(Lcom/bilibili/tv/api/video/BiliVideoDetail;Ljava/lang/String;)V

    goto/16 :goto_2b

    .line 1991
    :cond_c7
    iget-wide v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->s:J

    .line 1993
    invoke-virtual {v10}, Lbl/mg;->e()Ljava/lang/String;

    .line 1994
    invoke-virtual {v10}, Lbl/mg;->getSESSDATA()Ljava/lang/String;

    move-result-object v8

    .line 1997
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$20;

    move-object v2, p0

    move-object v9, p1

    invoke-direct/range {v1 .. v10}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$20;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Ljava/lang/String;JJLjava/lang/String;Lcom/bilibili/tv/api/video/BiliVideoDetail;Lbl/mg;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2069
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto/16 :goto_2b

    :cond_e1
    move-wide v6, v8

    move-wide v4, v8

    goto :goto_74
.end method

.method private loadPgcBySeasonId()V
    .locals 3

    .prologue
    .line 1612
    const-string v0, "VideoDetailActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadPgcBySeasonId() EntryType=PGC_BY_SEASON_ID, mSeasonId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->mSeasonId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1613
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->mSeasonId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 1614
    const-string v0, "VideoDetailActivity"

    const-string v1, "loadPgcBySeasonId() mSeasonId is empty, return"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1661
    :goto_29
    return-void

    .line 1617
    :cond_2a
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->p:Lcom/bilibili/tv/ui/base/LoadingImageView;

    .line 1618
    if-eqz v0, :cond_31

    .line 1619
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/base/LoadingImageView;->a()V

    .line 1622
    :cond_31
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->mSeasonId:Ljava/lang/String;

    new-instance v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$13;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$13;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)V

    invoke-direct {p0, v0, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->loadPgcSeasonInfo(Ljava/lang/String;Lcom/bilibili/tv/ui/video/VideoDetailActivity$PgcLoadCallback;)V

    goto :goto_29
.end method

.method private loadPgcInfo(Lcom/bilibili/tv/api/video/BiliVideoDetail;)V
    .locals 4

    .prologue
    .line 2400
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->extractSeasonId(Lcom/bilibili/tv/api/video/BiliVideoDetail;)Ljava/lang/String;

    move-result-object v0

    .line 2401
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 2402
    const-string v0, "PgcInfo"

    const-string v1, "seasonId is empty, skip loading PGC info"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2480
    :goto_11
    return-void

    .line 2405
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

    .line 2407
    new-instance v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$23;

    invoke-direct {v1, p0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$23;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/BiliVideoDetail;)V

    invoke-direct {p0, v0, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->loadPgcSeasonInfo(Ljava/lang/String;Lcom/bilibili/tv/ui/video/VideoDetailActivity$PgcLoadCallback;)V

    goto :goto_11
.end method

.method private loadPgcSeasonInfo(Ljava/lang/String;Lcom/bilibili/tv/ui/video/VideoDetailActivity$PgcLoadCallback;)V
    .locals 3

    .prologue
    .line 1669
    invoke-static {p0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v0

    invoke-virtual {v0}, Lbl/mg;->e()Ljava/lang/String;

    move-result-object v0

    .line 1671
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/bilibili/tv/ui/video/VideoDetailActivity$14;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$14;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Ljava/lang/String;Ljava/lang/String;Lcom/bilibili/tv/ui/video/VideoDetailActivity$PgcLoadCallback;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1726
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 1727
    return-void
.end method

.method private final loadUgcByAvid()V
    .locals 4

    .prologue
    .line 1500
    iget-wide v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->s:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_c

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->A:Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;

    if-nez v0, :cond_d

    .line 1510
    :cond_c
    :goto_c
    return-void

    .line 1503
    :cond_d
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->p:Lcom/bilibili/tv/ui/base/LoadingImageView;

    .line 1504
    if-eqz v0, :cond_14

    .line 1505
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/base/LoadingImageView;->a()V

    .line 1507
    :cond_14
    const-string v0, "VideoDetailApi"

    const-string v1, "========== UGC_BY_AVID Request =========="

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1508
    const-string v0, "VideoDetailApi"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://api.bilibili.com/x/web-interface/view?aid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->s:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1509
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

    .line 763
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 764
    const-string v1, "intent"

    invoke-static {v0, v1}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 765
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 766
    if-nez v0, :cond_19

    .line 768
    invoke-static {p0, v4}, Lbl/lr;->a(Landroid/content/Context;I)V

    .line 769
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->finish()V

    .line 788
    :goto_18
    return-void

    .line 772
    :cond_19
    const-string v1, "bundle_season_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->mSeasonId:Ljava/lang/String;

    .line 773
    const-string v1, "bundle_ac_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->s:J

    .line 775
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->mSeasonId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_39

    .line 776
    sget-object v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$EntryType;->PGC_BY_SEASON_ID:Lcom/bilibili/tv/ui/video/VideoDetailActivity$EntryType;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->mEntryType:Lcom/bilibili/tv/ui/video/VideoDetailActivity$EntryType;

    .line 777
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->mIsPgcMode:Z

    goto :goto_18

    .line 779
    :cond_39
    iget-wide v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->s:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_49

    .line 780
    sget-object v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$EntryType;->UGC_BY_AVID:Lcom/bilibili/tv/ui/video/VideoDetailActivity$EntryType;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->mEntryType:Lcom/bilibili/tv/ui/video/VideoDetailActivity$EntryType;

    .line 781
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->mIsPgcMode:Z

    goto :goto_18

    .line 785
    :cond_49
    invoke-static {p0, v4}, Lbl/lr;->a(Landroid/content/Context;I)V

    .line 786
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->finish()V

    goto :goto_18
.end method

.method private final n()V
    .locals 4

    .prologue
    .line 1487
    const-string v0, "VideoDetailActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "n() called, mEntryType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->mEntryType:Lcom/bilibili/tv/ui/video/VideoDetailActivity$EntryType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mSeasonId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->mSeasonId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", avid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->s:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1488
    sget-object v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$31;->$SwitchMap$com$bilibili$tv$ui$video$VideoDetailActivity$EntryType:[I

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->mEntryType:Lcom/bilibili/tv/ui/video/VideoDetailActivity$EntryType;

    invoke-virtual {v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$EntryType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_48

    .line 1494
    invoke-direct {p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->loadUgcByAvid()V

    .line 1497
    :goto_42
    return-void

    .line 1490
    :pswitch_43
    invoke-direct {p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->loadPgcBySeasonId()V

    goto :goto_42

    .line 1488
    nop

    :pswitch_data_48
    .packed-switch 0x1
        :pswitch_43
    .end packed-switch
.end method

.method private final p(Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 3347
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->B:Z

    if-eqz v0, :cond_5

    .line 3356
    :goto_4
    return-void

    .line 3350
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->B:Z

    .line 3351
    const-class v0, Lcom/bilibili/tv/api/favorite/BiliFavoriteVideoApiService;

    .line 3352
    invoke-static {v0}, Lbl/vo;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bilibili/tv/api/favorite/BiliFavoriteVideoApiService;

    .line 3353
    invoke-static {p0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v0

    .line 3354
    const-string v2, "BiliAccount.get(this)"

    invoke-static {v0, v2}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3355
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
    .locals 8

    .prologue
    .line 2285
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 2286
    const-string v0, "UI_TRANSITION"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[1_PLAY_CLICK] playVideo() called, cid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", progress="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", time="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2287
    if-nez p1, :cond_33

    .line 2308
    :cond_32
    :goto_32
    return-void

    .line 2290
    :cond_33
    const/4 v2, 0x0

    .line 2291
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_57

    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    if-eqz v0, :cond_57

    .line 2292
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_44
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_57

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;

    .line 2293
    iget-wide v4, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mCid:J

    cmp-long v3, v4, p2

    if-nez v3, :cond_44

    move-object v2, v0

    .line 2299
    :cond_57
    if-nez v2, :cond_6f

    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    if-eqz v0, :cond_6f

    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6f

    .line 2300
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;

    move-object v2, v0

    .line 2302
    :cond_6f
    if-eqz v2, :cond_32

    .line 2303
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mCover:Ljava/lang/String;

    invoke-static {p0, v0}, Lbl/abd;->prefetchCoverToMemoryCache(Landroid/content/Context;Ljava/lang/String;)V

    .line 2304
    const-string v0, "UI_TRANSITION"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[2_BEFORE_XG_A] calling xg.a(), elapsed="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v6

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "ms"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2305
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const/16 v4, 0x2754

    move-object v0, p0

    move-object v1, p1

    move v5, p4

    invoke-static/range {v0 .. v5}, Lbl/xg;->a(Landroid/app/Activity;Lcom/bilibili/tv/api/video/BiliVideoDetail;Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;Landroid/os/Bundle;II)V

    .line 2306
    const-string v0, "UI_TRANSITION"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[3_AFTER_XG_A] xg.a() returned, elapsed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v6

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_32
.end method

.method private final q(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 3392
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->B:Z

    if-eqz v0, :cond_5

    .line 3400
    :goto_4
    return-void

    .line 3395
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->B:Z

    .line 3396
    invoke-static {p0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v1

    .line 3397
    const-string v0, "BiliAccount.get(this)"

    invoke-static {v1, v0}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3398
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

    .line 3399
    invoke-virtual {v0, v1}, Lbl/vp;->a(Lretrofit2/Callback;)V

    goto :goto_4
.end method

.method private refreshVisualOrder()V
    .locals 7

    .prologue
    .line 1220
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonsContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->videoListNavigator:Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;

    if-nez v0, :cond_9

    .line 1257
    :cond_8
    :goto_8
    return-void

    .line 1224
    :cond_9
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    .line 1225
    const-string v0, "VideoDetailActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "refreshVisualOrder | \u5f00\u59cb\u66f4\u65b0\u89c6\u89c9\u987a\u5e8f | childCount="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " | seasonSectionViews\u539f\u59cb\u6570\u91cf="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonSectionViews:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1227
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1228
    const/4 v0, 0x0

    move v1, v0

    :goto_3e
    if-ge v1, v2, :cond_9a

    .line 1229
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1230
    instance-of v4, v0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    if-eqz v4, :cond_96

    .line 1231
    check-cast v0, Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    .line 1233
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->getSectionId()I

    move-result v4

    .line 1235
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->videoListNavigator:Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;

    invoke-virtual {v0, v4, v1}, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->updateVisualOrder(II)V

    .line 1237
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonSectionViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_74

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonSectionView;

    .line 1238
    iget v6, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonSectionView;->sectionId:I

    if-ne v6, v4, :cond_5b

    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5b

    .line 1239
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1244
    :cond_74
    const-string v0, "VideoDetailActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "refreshVisualOrder | sectionId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " | visualIndex="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1228
    :cond_96
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3e

    .line 1248
    :cond_9a
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonSectionViews:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_d5

    .line 1249
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonSectionViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1250
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonSectionViews:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1251
    const-string v0, "VideoDetailActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refreshVisualOrder | \u5df2\u91cd\u6392seasonSectionViews | \u65b0\u987a\u5e8f: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->getSeasonSectionIdsString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1256
    :goto_cc
    const-string v0, "VideoDetailActivity"

    const-string v1, "refreshVisualOrder | \u66f4\u65b0\u5b8c\u6210"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 1253
    :cond_d5
    const-string v0, "VideoDetailActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refreshVisualOrder | \u6570\u91cf\u4e0d\u5339\u914d | visualSorted="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | original="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonSectionViews:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_cc
.end method

.method private requestHistoryForUgc(Lcom/bilibili/tv/api/video/BiliVideoDetail;Ljava/lang/Runnable;)V
    .locals 11

    .prologue
    const-wide/16 v8, 0x0

    const/4 v2, 0x0

    .line 1513
    const-string v0, "HistoryLoad"

    const-string v1, "requestHistoryForUgc: starting parallel history request"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1515
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mHistory:Lcom/bilibili/tv/api/video/BiliVideoDetail$History;

    if-eqz v0, :cond_1b

    .line 1516
    const-string v0, "HistoryLoad"

    const-string v1, "History already set, callback directly"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1517
    if-eqz p2, :cond_1a

    .line 1518
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 1609
    :cond_1a
    :goto_1a
    return-void

    .line 1523
    :cond_1b
    invoke-static {p0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v1

    .line 1524
    const-string v0, "BiliAccount.get(this)"

    invoke-static {v1, v0}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1528
    iget-object v3, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mBvid:Ljava/lang/String;

    .line 1529
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    if-eqz v0, :cond_c0

    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c0

    .line 1530
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;

    iget-wide v4, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mCid:J

    .line 1531
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;

    iget-wide v6, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mEpisodeId:J

    .line 1532
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;

    iget-object v0, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mBvid:Ljava/lang/String;

    if-eqz v0, :cond_6c

    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;

    iget-object v0, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mBvid:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6c

    .line 1533
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;

    iget-object v3, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mBvid:Ljava/lang/String;

    .line 1537
    :cond_6c
    :goto_6c
    const-string v0, "HistoryLoad"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "requestHistoryForUgc: cid="

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v10, ", episodeId="

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v10, ", bvid="

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1539
    cmp-long v0, v4, v8

    if-nez v0, :cond_aa

    .line 1540
    const-string v0, "HistoryLoad"

    const-string v1, "requestHistoryForUgc: cid is 0, callback directly"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1541
    if-eqz p2, :cond_1a

    .line 1542
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_1a

    .line 1549
    :cond_aa
    invoke-virtual {v1}, Lbl/mg;->getSESSDATA()Ljava/lang/String;

    move-result-object v8

    .line 1552
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$12;

    move-object v2, p0

    move-object v9, p1

    move-object v10, p2

    invoke-direct/range {v1 .. v10}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$12;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Ljava/lang/String;JJLjava/lang/String;Lcom/bilibili/tv/api/video/BiliVideoDetail;Ljava/lang/Runnable;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1608
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto/16 :goto_1a

    :cond_c0
    move-wide v6, v8

    move-wide v4, v8

    goto :goto_6c
.end method

.method private restoreFocusPosition(Landroid/support/v7/widget/RecyclerView;I)Landroid/view/View;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1463
    if-nez p1, :cond_4

    .line 1483
    :cond_3
    :goto_3
    return-object v0

    .line 1467
    :cond_4
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v1

    .line 1469
    if-eqz v1, :cond_3

    .line 1474
    add-int/lit8 v0, v1, -0x1

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1477
    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1478
    if-nez v0, :cond_3

    .line 1483
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

    .line 1346
    if-nez p1, :cond_7

    .line 1451
    :cond_6
    :goto_6
    return-void

    .line 1350
    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f080126

    if-eq v0, v1, :cond_27

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_42

    .line 1351
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f08008d

    if-ne v0, v1, :cond_42

    .line 1352
    :cond_27
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->n:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_6

    move v0, v3

    .line 1353
    :goto_2c
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->n:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_6

    .line 1354
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->n:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-ne v1, p1, :cond_3f

    .line 1355
    iput v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->tagViewFocusPosition:I

    goto :goto_6

    .line 1353
    :cond_3f
    add-int/lit8 v0, v0, 0x1

    goto :goto_2c

    .line 1362
    :cond_42
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_71

    .line 1363
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getId()I

    move-result v0

    const v1, 0x7f080155

    if-ne v0, v1, :cond_71

    .line 1364
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    .line 1365
    :goto_5f
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v1

    if-ge v3, v1, :cond_6

    .line 1366
    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-ne v1, p1, :cond_6e

    .line 1367
    iput v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->relateVideoFocusPosition:I

    goto :goto_6

    .line 1365
    :cond_6e
    add-int/lit8 v3, v3, 0x1

    goto :goto_5f

    .line 1373
    :cond_71
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_9e

    .line 1374
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getId()I

    move-result v0

    if-ne v0, v2, :cond_9e

    .line 1375
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    .line 1376
    :goto_8b
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v1

    if-ge v3, v1, :cond_6

    .line 1377
    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-ne v1, p1, :cond_9b

    .line 1378
    iput v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->epLayoutFocusPosition:I

    goto/16 :goto_6

    .line 1376
    :cond_9b
    add-int/lit8 v3, v3, 0x1

    goto :goto_8b

    .line 1382
    :cond_9e
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    if-ne v0, v2, :cond_bf

    .line 1384
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->o:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_6

    .line 1385
    :goto_a8
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->o:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v0

    if-ge v3, v0, :cond_6

    .line 1386
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->o:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-ne v0, p1, :cond_bc

    .line 1387
    iput v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->epLayoutFocusPosition:I

    goto/16 :goto_6

    .line 1385
    :cond_bc
    add-int/lit8 v3, v3, 0x1

    goto :goto_a8

    .line 1394
    :cond_bf
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_ef

    .line 1395
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getId()I

    move-result v0

    const v1, 0x7f080171

    if-ne v0, v1, :cond_ef

    .line 1396
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    .line 1397
    :goto_dc
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v1

    if-ge v3, v1, :cond_6

    .line 1398
    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-ne v1, p1, :cond_ec

    .line 1399
    iput v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->episodesVideoFocusPosition:I

    goto/16 :goto_6

    .line 1397
    :cond_ec
    add-int/lit8 v3, v3, 0x1

    goto :goto_dc

    .line 1405
    :cond_ef
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_6

    .line 1406
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    .line 1407
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getId()I

    move-result v1

    .line 1408
    const v2, 0x7f0801a5

    if-ne v1, v2, :cond_6

    .line 1409
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

    .line 1410
    iget-object v4, v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonSectionView;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    if-ne v4, v0, :cond_10c

    .line 1411
    const/4 v4, 0x0

    .line 1412
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

    .line 1413
    invoke-virtual {v2}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->getSectionId()I

    move-result v6

    iget v7, v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonSectionView;->sectionId:I

    if-ne v6, v7, :cond_123

    move-object v4, v2

    .line 1419
    :cond_138
    const/4 v2, -0x1

    .line 1420
    if-eqz v4, :cond_13f

    .line 1421
    invoke-virtual {v4, p1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->getDataPositionForView(Landroid/view/View;)I

    move-result v2

    .line 1424
    :cond_13f
    if-gez v2, :cond_1b3

    .line 1425
    :goto_141
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v5

    if-ge v3, v5, :cond_1b3

    .line 1426
    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-ne v5, p1, :cond_1b0

    .line 1428
    const-string v2, "VideoDetailActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "saveCurrentFocusPosition | getDataPositionForView\u5931\u8d25\uff0c\u4f7f\u7528\u53ef\u89c1\u7d22\u5f15fallback="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1434
    :goto_165
    const-string v2, "VideoDetailActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "saveCurrentFocusPosition | \u5408\u96c6\u5217\u8868\u4fdd\u5b58 | sectionId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonSectionView;->sectionId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " | dataPosition="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " | visibleIndex(\u539f)="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1437
    invoke-direct {p0, v0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->getVisibleIndex(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)I

    move-result v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1434
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1439
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonSectionFocusPositions:Ljava/util/Map;

    iget v1, v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonSectionView;->sectionId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1440
    if-eqz v4, :cond_6

    .line 1441
    invoke-virtual {v4, v3}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setFocusPosition(I)V

    .line 1443
    invoke-direct {p0, v4, v3}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->updateNavTagSelectionForSection(Lcom/bilibili/tv/ui/video/widget/VideoListSection;I)V

    goto/16 :goto_6

    .line 1425
    :cond_1b0
    add-int/lit8 v3, v3, 0x1

    goto :goto_141

    :cond_1b3
    move v3, v2

    goto :goto_165
.end method

.method private scrollToViewIfNeeded(Landroid/view/View;)V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 576
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->scrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_9

    if-nez p1, :cond_a

    .line 627
    :cond_9
    :goto_9
    return-void

    .line 579
    :cond_a
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 580
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

    .line 588
    :goto_32
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->staffContainer:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_c4

    move v3, v1

    .line 589
    :goto_37
    iget-object v4, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->staffContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_c4

    .line 590
    iget-object v4, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->staffContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-ne v4, p1, :cond_54

    move v3, v2

    .line 596
    :goto_48
    if-nez v0, :cond_4c

    if-eqz v3, :cond_57

    .line 597
    :cond_4c
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->scrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v1, v1}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    goto :goto_9

    :cond_52
    move v0, v1

    .line 580
    goto :goto_32

    .line 589
    :cond_54
    add-int/lit8 v3, v3, 0x1

    goto :goto_37

    .line 600
    :cond_57
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 601
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->scrollView:Landroid/widget/ScrollView;

    invoke-virtual {v3, v0}, Landroid/widget/ScrollView;->getHitRect(Landroid/graphics/Rect;)V

    .line 602
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 603
    invoke-virtual {p1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 604
    new-array v3, v5, [I

    .line 605
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->scrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->getLocationOnScreen([I)V

    .line 606
    new-array v0, v5, [I

    .line 607
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 608
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 609
    const/high16 v4, 0x42480000    # 50.0f

    mul-float/2addr v0, v4

    float-to-int v4, v0

    .line 611
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->findSectionContainer(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 612
    if-eqz v0, :cond_8a

    move-object p1, v0

    .line 614
    :cond_8a
    new-array v0, v5, [I

    .line 615
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 616
    aget v0, v0, v2

    aget v2, v3, v2

    sub-int/2addr v0, v2

    .line 617
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v2, v0

    .line 619
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->scrollView:Landroid/widget/ScrollView;

    invoke-virtual {v3}, Landroid/widget/ScrollView;->getHeight()I

    move-result v3

    .line 620
    if-ge v0, v4, :cond_b0

    .line 621
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->scrollView:Landroid/widget/ScrollView;

    invoke-virtual {v2}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v2

    .line 622
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->scrollView:Landroid/widget/ScrollView;

    add-int/2addr v0, v2

    sub-int/2addr v0, v4

    invoke-virtual {v3, v1, v0}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    goto/16 :goto_9

    .line 623
    :cond_b0
    sub-int v0, v3, v4

    if-le v2, v0, :cond_9

    .line 624
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->scrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v0

    .line 625
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

.method private scrollVideoListToPosition(Lcom/bilibili/tv/ui/video/widget/VideoListSection;I)V
    .locals 3

    .prologue
    .line 2930
    if-nez p1, :cond_3

    .line 2936
    :goto_2
    return-void

    .line 2934
    :cond_3
    const-string v0, "VideoDetailActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scrollVideoListToPosition | sectionId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->getSectionId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | position="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2935
    invoke-virtual {p1, p2}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->scrollToDataPosition(I)V

    goto :goto_2
.end method

.method private setupGlobalFocusChangeListener()V
    .locals 2

    .prologue
    .line 529
    const v0, 0x1020002

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 530
    if-eqz v0, :cond_15

    .line 531
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$9;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$9;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalFocusChangeListener(Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;)V

    .line 540
    :cond_15
    return-void
.end method

.method private setupNavigationTagsForSection(Lcom/bilibili/tv/ui/video/widget/VideoListSection;I)V
    .locals 4

    .prologue
    .line 2863
    if-nez p1, :cond_3

    .line 2927
    :cond_2
    :goto_2
    return-void

    .line 2867
    :cond_3
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->getSectionId()I

    move-result v0

    .line 2868
    const-string v1, "VideoDetailActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setupNavigationTagsForSection | sectionId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " | totalCount="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2870
    invoke-virtual {p1, p2}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setupNavigationTags(I)V

    .line 2872
    new-instance v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$25;

    invoke-direct {v0, p0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$25;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/ui/video/widget/VideoListSection;)V

    invoke-virtual {p1, v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setOnNavTagFocusListener(Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnNavTagFocusListener;)V

    .line 2902
    new-instance v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$26;

    invoke-direct {v0, p0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$26;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/ui/video/widget/VideoListSection;)V

    invoke-virtual {p1, v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setOnNavTagClickListener(Lcom/bilibili/tv/ui/video/widget/VideoListSection$OnNavTagClickListener;)V

    .line 2922
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->getFocusPosition()I

    move-result v0

    .line 2923
    if-ltz v0, :cond_2

    .line 2924
    invoke-virtual {p1, v0}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->updateNavTagSelection(I)V

    .line 2925
    const-string v1, "VideoDetailActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setupNavigationTagsForSection | \u521d\u59cb\u5316\u5bfc\u822a\u6807\u7b7e\u9009\u4e2d\u72b6\u6001 | currentVideoPosition="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private showFavoriteMenu()V
    .locals 4

    .prologue
    .line 3330
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->u:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    if-nez v0, :cond_5

    .line 3344
    :goto_4
    return-void

    .line 3333
    :cond_5
    new-instance v0, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;

    iget-wide v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->s:J

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->u:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    invoke-direct {v0, p0, v2, v3, v1}, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;-><init>(Landroid/app/Activity;JLcom/bilibili/tv/api/video/BiliVideoDetail;)V

    .line 3334
    new-instance v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$30;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$30;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)V

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;->setOnFavoriteStatusChangedListener(Lcom/bilibili/tv/ui/video/FavoriteMenuDialog$OnFavoriteStatusChangedListener;)V

    .line 3343
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;->show()V

    goto :goto_4
.end method

.method private showPgcEpisodes(Lcom/bilibili/tv/api/video/PgcInfo;)V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 2695
    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo;->episodes:Ljava/util/List;

    if-eqz v0, :cond_e

    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo;->episodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 2696
    :cond_e
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->hh:Landroid/widget/TextView;

    if-eqz v0, :cond_17

    .line 2697
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->hh:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2699
    :cond_17
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->o:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_20

    .line 2700
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->o:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 2716
    :cond_20
    :goto_20
    return-void

    .line 2705
    :cond_21
    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo;->episodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_3d

    .line 2706
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->hh:Landroid/widget/TextView;

    if-eqz v0, :cond_33

    .line 2707
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->hh:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2709
    :cond_33
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->o:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_20

    .line 2710
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->o:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    goto :goto_20

    .line 2715
    :cond_3d
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->createPgcEpisodesSectionView(Lcom/bilibili/tv/api/video/PgcInfo;)V

    goto :goto_20
.end method

.method private showPgcInfo(Lcom/bilibili/tv/api/video/PgcInfo;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2608
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->pgcInfoContainer:Landroid/widget/LinearLayout;

    if-nez v0, :cond_6

    .line 2637
    :goto_5
    return-void

    .line 2611
    :cond_6
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->pgcInfoContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2613
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->pgcRating:Landroid/widget/TextView;

    if-eqz v0, :cond_56

    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo;->rating:Lcom/bilibili/tv/api/video/PgcInfo$Rating;

    if-eqz v0, :cond_56

    .line 2614
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->pgcRating:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/bilibili/tv/api/video/PgcInfo;->getRatingString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2615
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->pgcRating:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2620
    :cond_21
    :goto_21
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->pgcType:Landroid/widget/TextView;

    if-eqz v0, :cond_2e

    .line 2621
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->pgcType:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/bilibili/tv/api/video/PgcInfo;->getTypeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2624
    :cond_2e
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->pgcArea:Landroid/widget/TextView;

    if-eqz v0, :cond_3b

    .line 2625
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->pgcArea:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/bilibili/tv/api/video/PgcInfo;->getAreaString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2628
    :cond_3b
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->pgcNewEp:Landroid/widget/TextView;

    if-eqz v0, :cond_62

    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo;->newEp:Lcom/bilibili/tv/api/video/PgcInfo$NewEp;

    if-eqz v0, :cond_62

    .line 2629
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->pgcNewEp:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/bilibili/tv/api/video/PgcInfo;->newEp:Lcom/bilibili/tv/api/video/PgcInfo$NewEp;

    iget-object v1, v1, Lcom/bilibili/tv/api/video/PgcInfo$NewEp;->indexShow:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2634
    :cond_4c
    :goto_4c
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->showPgcSections(Lcom/bilibili/tv/api/video/PgcInfo;)V

    .line 2635
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->showPgcEpisodes(Lcom/bilibili/tv/api/video/PgcInfo;)V

    .line 2636
    invoke-direct {p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->refreshVisualOrder()V

    goto :goto_5

    .line 2616
    :cond_56
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->pgcRating:Landroid/widget/TextView;

    if-eqz v0, :cond_21

    .line 2617
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->pgcRating:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_21

    .line 2630
    :cond_62
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->pgcNewEp:Landroid/widget/TextView;

    if-eqz v0, :cond_4c

    .line 2631
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->pgcNewEp:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4c
.end method

.method private showPgcSections(Lcom/bilibili/tv/api/video/PgcInfo;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2828
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonsContainer:Landroid/widget/LinearLayout;

    if-nez v0, :cond_7

    .line 2860
    :cond_6
    return-void

    .line 2832
    :cond_7
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2833
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 2834
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonSectionViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2835
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->videoListNavigator:Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;

    if-eqz v0, :cond_1f

    .line 2836
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->videoListNavigator:Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/video/widget/VideoListNavigator;->clearSections()V

    .line 2839
    :cond_1f
    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo;->seasons:Ljava/util/List;

    if-eqz v0, :cond_61

    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo;->seasons:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_61

    move v0, v1

    .line 2840
    :goto_2c
    iget-object v3, p1, Lcom/bilibili/tv/api/video/PgcInfo;->sections:Ljava/util/List;

    if-eqz v3, :cond_63

    iget-object v3, p1, Lcom/bilibili/tv/api/video/PgcInfo;->sections:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_63

    move v3, v1

    .line 2842
    :goto_39
    if-nez v0, :cond_3d

    if-eqz v3, :cond_6

    .line 2848
    :cond_3d
    if-eqz v0, :cond_65

    .line 2849
    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo;->seasons:Ljava/util/List;

    invoke-direct {p0, v0, v2}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->createSeasonsSectionView(Ljava/util/List;I)V

    move v0, v1

    .line 2853
    :goto_45
    if-eqz v3, :cond_6

    move v1, v0

    .line 2854
    :goto_48
    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo;->sections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_6

    .line 2855
    iget-object v0, p1, Lcom/bilibili/tv/api/video/PgcInfo;->sections:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/PgcInfo$Section;

    .line 2856
    invoke-direct {p0, v0, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->createPgcSectionView(Lcom/bilibili/tv/api/video/PgcInfo$Section;I)V

    .line 2857
    add-int/lit8 v0, v1, 0x1

    .line 2854
    add-int/lit8 v2, v2, 0x1

    move v1, v0

    goto :goto_48

    :cond_61
    move v0, v2

    .line 2839
    goto :goto_2c

    :cond_63
    move v3, v2

    .line 2840
    goto :goto_39

    :cond_65
    move v0, v2

    goto :goto_45
.end method

.method private final tripleVideo()V
    .locals 4

    .prologue
    .line 3532
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->B:Z

    if-eqz v0, :cond_5

    .line 3539
    :goto_4
    return-void

    .line 3535
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->B:Z

    .line 3536
    invoke-static {p0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v1

    .line 3537
    const-string v0, "BiliAccount.get(this)"

    invoke-static {v1, v0}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3538
    const-class v0, Lmybl/MyBiliApiService;

    invoke-static {v0}, Lbl/vo;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmybl/MyBiliApiService;

    invoke-virtual {v1}, Lbl/mg;->e()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->s:J

    invoke-interface {v0, v1, v2, v3}, Lmybl/MyBiliApiService;->tripleVideo(Ljava/lang/String;J)Lbl/vp;

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

    .line 2566
    const-string v0, "PgcInfo"

    const-string v1, "=== updateBasicVideoInfo ==="

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2568
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->e:Landroid/widget/TextView;

    .line 2569
    if-eqz v0, :cond_35

    .line 2570
    invoke-virtual {p1}, Lcom/bilibili/tv/api/video/BiliVideoDetail;->getPlays()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lbl/adh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2571
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

    .line 2574
    :cond_35
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->ff:Landroid/widget/TextView;

    .line 2575
    if-eqz v0, :cond_60

    .line 2576
    invoke-virtual {p1}, Lcom/bilibili/tv/api/video/BiliVideoDetail;->getDanmakus()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lbl/adh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2577
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

    .line 2580
    :cond_60
    const v0, 0x7f08016d

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2581
    if-eqz v0, :cond_bb

    iget v1, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mDuration:I

    if-lez v1, :cond_bb

    .line 2582
    iget v1, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mDuration:I

    const/16 v2, 0xe10

    if-lt v1, v2, :cond_cd

    .line 2583
    const-string v1, "%d:%02d:%02d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mDuration:I

    div-int/lit16 v3, v3, 0xe10

    .line 2584
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    iget v3, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mDuration:I

    rem-int/lit16 v3, v3, 0xe10

    div-int/lit8 v3, v3, 0x3c

    .line 2585
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget v3, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mDuration:I

    rem-int/lit8 v3, v3, 0x3c

    .line 2586
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    .line 2583
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2592
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

    .line 2595
    :cond_bb
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->g:Landroid/widget/TextView;

    .line 2596
    if-eqz v0, :cond_cc

    .line 2597
    iget-wide v2, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mCreatedTimestamp:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_ed

    .line 2598
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2605
    :cond_cc
    :goto_cc
    return-void

    .line 2588
    :cond_cd
    const-string v1, "%02d:%02d"

    new-array v2, v5, [Ljava/lang/Object;

    iget v3, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mDuration:I

    div-int/lit8 v3, v3, 0x3c

    .line 2589
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    iget v3, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mDuration:I

    rem-int/lit8 v3, v3, 0x3c

    .line 2590
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    .line 2588
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_a1

    .line 2600
    :cond_ed
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2601
    iget-wide v2, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mCreatedTimestamp:J

    invoke-static {v2, v3}, Lcom/bilibili/tv/util/DateHelper;->formatDate(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2602
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

    .line 2483
    const-string v0, "PgcInfo"

    const-string v1, "=== updateBiliVideoDetailWithPgcInfo ==="

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2484
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

    .line 2485
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

    .line 2486
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

    .line 2488
    if-eqz p1, :cond_94

    if-eqz p2, :cond_94

    iget-object v0, p2, Lcom/bilibili/tv/api/video/PgcInfo;->episodes:Ljava/util/List;

    if-nez v0, :cond_a6

    .line 2489
    :cond_94
    const-string v0, "PgcInfo"

    const-string v1, "Early return: null check failed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2563
    :cond_9b
    :goto_9b
    return-void

    .line 2484
    :cond_9c
    const-string v0, "null"

    goto/16 :goto_1b

    .line 2485
    :cond_a0
    const-string v0, "null"

    goto :goto_4a

    .line 2486
    :cond_a3
    const-string v0, "null"

    goto :goto_81

    .line 2493
    :cond_a6
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mBangumiInfo:Lcom/bilibili/tv/api/video/BiliVideoDetail$BangumiInfo;

    if-nez v0, :cond_b1

    .line 2494
    new-instance v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$BangumiInfo;

    invoke-direct {v0}, Lcom/bilibili/tv/api/video/BiliVideoDetail$BangumiInfo;-><init>()V

    iput-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mBangumiInfo:Lcom/bilibili/tv/api/video/BiliVideoDetail$BangumiInfo;

    .line 2496
    :cond_b1
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mBangumiInfo:Lcom/bilibili/tv/api/video/BiliVideoDetail$BangumiInfo;

    iget v1, p2, Lcom/bilibili/tv/api/video/PgcInfo;->seasonId:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$BangumiInfo;->mSeasonId:Ljava/lang/String;

    .line 2497
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mBangumiInfo:Lcom/bilibili/tv/api/video/BiliVideoDetail$BangumiInfo;

    iget-object v1, p2, Lcom/bilibili/tv/api/video/PgcInfo;->title:Ljava/lang/String;

    iput-object v1, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$BangumiInfo;->mTitle:Ljava/lang/String;

    .line 2498
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

    .line 2501
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    if-eqz v0, :cond_2aa

    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2aa

    .line 2502
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;

    iget-wide v0, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mCid:J

    move-wide v2, v0

    .line 2504
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

    .line 2507
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

    .line 2508
    iget-wide v8, v0, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->cid:J

    cmp-long v7, v8, v2

    if-nez v7, :cond_112

    .line 2509
    const/4 v1, 0x1

    .line 2510
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

    .line 2515
    :goto_14c
    if-nez v0, :cond_172

    cmp-long v0, v2, v4

    if-lez v0, :cond_172

    .line 2516
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

    .line 2520
    :cond_172
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    if-nez v0, :cond_17d

    .line 2521
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    .line 2523
    :cond_17d
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    move v1, v6

    .line 2524
    :goto_183
    iget-object v0, p2, Lcom/bilibili/tv/api/video/PgcInfo;->episodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1a2

    .line 2525
    iget-object v0, p2, Lcom/bilibili/tv/api/video/PgcInfo;->episodes:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/PgcInfo$Episode;

    .line 2526
    add-int/lit8 v2, v1, 0x1

    invoke-direct {p0, v0, v2}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->convertEpisodeToPage(Lcom/bilibili/tv/api/video/PgcInfo$Episode;I)Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;

    move-result-object v0

    .line 2527
    iget-object v2, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2524
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_183

    .line 2529
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

    .line 2531
    iget-object v0, p2, Lcom/bilibili/tv/api/video/PgcInfo;->stat:Lcom/bilibili/tv/api/video/PgcInfo$Stat;

    if-eqz v0, :cond_217

    .line 2532
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mStat:Lcom/bilibili/tv/api/video/BiliVideoDetail$Stat;

    if-nez v0, :cond_1d5

    .line 2533
    new-instance v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Stat;

    invoke-direct {v0}, Lcom/bilibili/tv/api/video/BiliVideoDetail$Stat;-><init>()V

    iput-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mStat:Lcom/bilibili/tv/api/video/BiliVideoDetail$Stat;

    .line 2535
    :cond_1d5
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mStat:Lcom/bilibili/tv/api/video/BiliVideoDetail$Stat;

    iget-object v1, p2, Lcom/bilibili/tv/api/video/PgcInfo;->stat:Lcom/bilibili/tv/api/video/PgcInfo$Stat;

    iget-wide v2, v1, Lcom/bilibili/tv/api/video/PgcInfo$Stat;->views:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Stat;->mPlays:Ljava/lang/String;

    .line 2536
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mStat:Lcom/bilibili/tv/api/video/BiliVideoDetail$Stat;

    iget-object v1, p2, Lcom/bilibili/tv/api/video/PgcInfo;->stat:Lcom/bilibili/tv/api/video/PgcInfo$Stat;

    iget-wide v2, v1, Lcom/bilibili/tv/api/video/PgcInfo$Stat;->danmakus:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Stat;->mDanmakus:Ljava/lang/String;

    .line 2537
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

    .line 2540
    :cond_217
    iget-object v0, p2, Lcom/bilibili/tv/api/video/PgcInfo;->userStatus:Lcom/bilibili/tv/api/video/PgcInfo$UserStatus;

    if-eqz v0, :cond_9b

    iget-object v0, p2, Lcom/bilibili/tv/api/video/PgcInfo;->userStatus:Lcom/bilibili/tv/api/video/PgcInfo$UserStatus;

    iget-object v0, v0, Lcom/bilibili/tv/api/video/PgcInfo$UserStatus;->progress:Lcom/bilibili/tv/api/video/PgcInfo$Progress;

    if-eqz v0, :cond_9b

    .line 2541
    iget-object v0, p2, Lcom/bilibili/tv/api/video/PgcInfo;->userStatus:Lcom/bilibili/tv/api/video/PgcInfo$UserStatus;

    iget-object v0, v0, Lcom/bilibili/tv/api/video/PgcInfo$UserStatus;->progress:Lcom/bilibili/tv/api/video/PgcInfo$Progress;

    .line 2542
    iget-wide v2, v0, Lcom/bilibili/tv/api/video/PgcInfo$Progress;->lastEpId:J

    .line 2543
    iget v6, v0, Lcom/bilibili/tv/api/video/PgcInfo$Progress;->lastTime:I

    .line 2545
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

    .line 2548
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

    .line 2549
    iget v7, v0, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->id:I

    int-to-long v8, v7

    cmp-long v7, v8, v2

    if-nez v7, :cond_257

    .line 2550
    iget-wide v0, v0, Lcom/bilibili/tv/api/video/PgcInfo$Episode;->cid:J

    .line 2555
    :goto_26c
    cmp-long v2, v0, v4

    if-lez v2, :cond_9b

    .line 2556
    new-instance v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$History;

    invoke-direct {v2}, Lcom/bilibili/tv/api/video/BiliVideoDetail$History;-><init>()V

    .line 2557
    iput-wide v0, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$History;->mCid:J

    .line 2558
    iput v6, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$History;->mProgress:I

    .line 2559
    iput-object v2, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mHistory:Lcom/bilibili/tv/api/video/BiliVideoDetail$History;

    .line 2560
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

    .line 2186
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyProgress:Landroid/widget/TextView;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtn:Lcom/bilibili/tv/widget/DrawTextView;

    if-nez v0, :cond_18

    .line 2282
    :cond_17
    :goto_17
    return-void

    .line 2191
    :cond_18
    if-eqz p1, :cond_17

    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mHistory:Lcom/bilibili/tv/api/video/BiliVideoDetail$History;

    if-eqz v0, :cond_17

    .line 2197
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->episodes:Lcom/alibaba/fastjson/JSONArray;

    if-eqz v0, :cond_116

    .line 2198
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->episodes:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    add-int/2addr v0, v1

    .line 2200
    :goto_29
    iget-object v3, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    if-eqz v3, :cond_34

    .line 2201
    iget-object v3, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v0, v3

    .line 2203
    :cond_34
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mHistory:Lcom/bilibili/tv/api/video/BiliVideoDetail$History;

    iget-wide v4, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$History;->mCid:J

    .line 2204
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mHistory:Lcom/bilibili/tv/api/video/BiliVideoDetail$History;

    iget v6, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$History;->mProgress:I

    .line 2205
    invoke-direct {p0, v4, v5, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->findTitleByCid(JLcom/bilibili/tv/api/video/BiliVideoDetail;)Ljava/lang/String;

    move-result-object v7

    .line 2210
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtn:Lcom/bilibili/tv/widget/DrawTextView;

    const-string v3, "\u7ee7\u7eed\u64ad\u653e"

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/widget/DrawTextView;->setText(Ljava/lang/CharSequence;)V

    .line 2211
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->rePlayBtn:Lcom/bilibili/tv/widget/DrawTextView;

    const-string v3, "\u91cd\u64ad"

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/widget/DrawTextView;->setText(Ljava/lang/CharSequence;)V

    .line 2213
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_57

    .line 2214
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2217
    :cond_57
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->noHistoryPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    if-eqz v0, :cond_60

    .line 2218
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->noHistoryPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    invoke-virtual {v0, v10}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setVisibility(I)V

    .line 2221
    :cond_60
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->rePlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    if-eqz v0, :cond_69

    .line 2222
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->rePlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setVisibility(I)V

    .line 2226
    :cond_69
    const-wide/16 v8, 0x0

    cmp-long v0, v4, v8

    if-lez v0, :cond_ae

    move v0, v2

    .line 2227
    :goto_70
    const/4 v3, -0x1

    if-ne v6, v3, :cond_b0

    move v5, v2

    .line 2228
    :goto_74
    if-lez v6, :cond_b2

    move v4, v2

    .line 2229
    :goto_77
    if-eqz v7, :cond_b4

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_b4

    move v3, v2

    .line 2233
    :goto_80
    if-nez v0, :cond_b6

    .line 2235
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_8b

    .line 2236
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2238
    :cond_8b
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2239
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyProgress:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2275
    :goto_95
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    if-eqz v0, :cond_9e

    .line 2276
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    invoke-virtual {v0, v11}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setNextFocusRightId(I)V

    .line 2278
    :cond_9e
    const v0, 0x7f080167

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawLinearLayout;

    .line 2279
    if-eqz v0, :cond_17

    .line 2280
    invoke-virtual {v0, v11}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setNextFocusLeftId(I)V

    goto/16 :goto_17

    :cond_ae
    move v0, v1

    .line 2226
    goto :goto_70

    :cond_b0
    move v5, v1

    .line 2227
    goto :goto_74

    :cond_b2
    move v4, v1

    .line 2228
    goto :goto_77

    :cond_b4
    move v3, v1

    .line 2229
    goto :goto_80

    .line 2241
    :cond_b6
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    if-eqz v0, :cond_f0

    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v2, :cond_f0

    move v0, v2

    .line 2242
    :goto_c3
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyLabel:Landroid/widget/TextView;

    if-eqz v2, :cond_d3

    .line 2243
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyLabel:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2244
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyLabel:Landroid/widget/TextView;

    const-string v8, "\u4e0a\u6b21\u64ad\u653e\u5230"

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2247
    :cond_d3
    if-eqz v3, :cond_f2

    if-eqz v0, :cond_f2

    .line 2249
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2250
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2255
    :goto_e1
    if-eqz v5, :cond_f8

    .line 2257
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyProgress:Landroid/widget/TextView;

    const-string v2, "\u5df2\u770b\u5b8c"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2258
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyProgress:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_95

    :cond_f0
    move v0, v1

    .line 2241
    goto :goto_c3

    .line 2253
    :cond_f2
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_e1

    .line 2259
    :cond_f8
    if-eqz v4, :cond_109

    .line 2261
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyProgress:Landroid/widget/TextView;

    invoke-direct {p0, v6}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->formatProgressTime(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2262
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyProgress:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_95

    .line 2265
    :cond_109
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyProgress:Landroid/widget/TextView;

    const-string v2, "00:00"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2266
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyProgress:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_95

    :cond_116
    move v0, v1

    goto/16 :goto_29
.end method

.method private updateNavTagSelectionForSection(Lcom/bilibili/tv/ui/video/widget/VideoListSection;I)V
    .locals 3

    .prologue
    .line 2939
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->hasNavigationTags()Z

    move-result v0

    if-nez v0, :cond_9

    .line 2946
    :cond_8
    :goto_8
    return-void

    .line 2943
    :cond_9
    invoke-virtual {p1, p2}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->updateNavTagSelection(I)V

    .line 2944
    const-string v0, "VideoDetailActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateNavTagSelectionForSection | sectionId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->getSectionId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | videoPosition="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 229
    const-string v0, "ott-platform.detail.0.0.pv"

    return-object v0
.end method

.method public final a(Landroid/app/Activity;Lcom/bilibili/tv/api/video/BiliVideoDetail;)V
    .locals 4

    .prologue
    .line 2318
    const-string v0, "video"

    invoke-static {p2, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2319
    const-string v0, "BangumiJump"

    const-string v1, "a() called, checking jump condition..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2320
    invoke-direct {p0, p2}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->a(Lcom/bilibili/tv/api/video/BiliVideoDetail;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 2321
    const-string v0, "BangumiJump"

    const-string v1, "a() returned false, not jumping"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2336
    :goto_19
    return-void

    .line 2324
    :cond_1a
    if-nez p1, :cond_24

    .line 2325
    const-string v0, "BangumiJump"

    const-string v1, "activity is null, not jumping"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19

    .line 2328
    :cond_24
    invoke-direct {p0, p2}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->b(Lcom/bilibili/tv/api/video/BiliVideoDetail;)Ljava/lang/String;

    move-result-object v0

    .line 2329
    const-string v1, "BangumiJump"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "seasonId extracted: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2330
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 2331
    const-string v0, "BangumiJump"

    const-string v1, "seasonId is empty, not jumping"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19

    .line 2334
    :cond_4e
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 2335
    invoke-direct {p0, p1, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_19
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 249
    invoke-direct {p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->m()V

    .line 250
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->mIsPgcMode:Z

    if-nez v0, :cond_19

    iget-wide v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->s:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_19

    .line 251
    const v0, 0x7f0c0170

    invoke-static {p0, v0}, Lbl/lr;->a(Landroid/content/Context;I)V

    .line 252
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->finish()V

    .line 258
    :goto_18
    return-void

    .line 255
    :cond_19
    invoke-direct {p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->k()V

    .line 256
    new-instance v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;

    invoke-direct {v0, p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)V

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->A:Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;

    .line 257
    const-string v0, "tv_video_view_open"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lbl/ok;->a(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_18
.end method

.method public final a(Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;)V
    .locals 2

    .prologue
    .line 3605
    sget-object v0, Lbl/aft;->a:Lbl/aft;

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->u:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    invoke-virtual {v0, p0, v1, p1}, Lbl/aft;->a(Landroid/app/Activity;Lcom/bilibili/tv/api/video/BiliVideoDetail;Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;)V

    .line 3606
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 792
    if-eqz p1, :cond_b

    .line 793
    invoke-static {}, Lbl/nv;->a()Lbl/nv;

    move-result-object v0

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, p1, v1}, Lbl/nv;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 795
    :cond_b
    return-void
.end method

.method public a_()Z
    .locals 1

    .prologue
    .line 234
    invoke-static {p0}, Lbl/wg;->a(Lbl/wf;)Z

    move-result v0

    return v0
.end method

.method public b()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 239
    const/4 v0, 0x0

    return-object v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 12

    .prologue
    const/high16 v11, 0x40000

    const/16 v10, 0x14

    const/16 v9, 0x13

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 807
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->w:Lbl/add;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->relateCardAdapter:Lcom/bilibili/tv/ui/video/widget/VideoCardAdapter;

    if-nez v0, :cond_15

    .line 808
    :cond_10
    invoke-super {p0, p1}, Lcom/bilibili/tv/ui/base/BaseActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 982
    :goto_14
    return v0

    .line 810
    :cond_15
    if-eqz p1, :cond_cb

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v5, v0

    .line 811
    :goto_20
    if-eqz p1, :cond_cf

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v4, v0

    .line 813
    :goto_2b
    if-eqz v5, :cond_d3

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_d3

    const-string v0, "DOWN"

    move-object v3, v0

    .line 814
    :goto_36
    if-eqz v4, :cond_e5

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_3c
    invoke-direct {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->getKeyName(I)Ljava/lang/String;

    move-result-object v6

    .line 816
    if-eqz v5, :cond_46d

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_46d

    .line 817
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v5

    .line 818
    const-string v0, "VideoDetailActivity"

    const-string v7, "========== dispatchKeyEvent =========="

    invoke-static {v0, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    const-string v0, "VideoDetailActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "dispatchKeyEvent | \u6309\u952e="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") | \u52a8\u4f5c="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    const-string v3, "VideoDetailActivity"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dispatchKeyEvent | \u5f53\u524d\u7126\u70b9="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz v5, :cond_e8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 821
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, "@id="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_b1
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 820
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    if-nez v5, :cond_eb

    .line 824
    const-string v0, "VideoDetailActivity"

    const-string v1, "dispatchKeyEvent | currentFocus\u4e3anull\uff0c\u8c03\u7528super"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    invoke-super {p0, p1}, Lcom/bilibili/tv/ui/base/BaseActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto/16 :goto_14

    .line 810
    :cond_cb
    const/4 v0, 0x0

    move-object v5, v0

    goto/16 :goto_20

    .line 811
    :cond_cf
    const/4 v0, 0x0

    move-object v4, v0

    goto/16 :goto_2b

    .line 813
    :cond_d3
    if-eqz v5, :cond_e0

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v2, :cond_e0

    const-string v0, "UP"

    move-object v3, v0

    goto/16 :goto_36

    :cond_e0
    const-string v0, "UNKNOWN"

    move-object v3, v0

    goto/16 :goto_36

    :cond_e5
    move v0, v1

    .line 814
    goto/16 :goto_3c

    .line 821
    :cond_e8
    const-string v0, "null"

    goto :goto_b1

    .line 828
    :cond_eb
    invoke-direct {p0, v5}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->saveCurrentFocusPosition(Landroid/view/View;)V

    .line 829
    const-string v0, "VideoDetailActivity"

    const-string v3, "dispatchKeyEvent | \u5df2\u4fdd\u5b58\u5f53\u524d\u7126\u70b9\u4f4d\u7f6e"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    if-eqz v4, :cond_184

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v9, :cond_184

    .line 833
    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v0

    const v3, 0x7f080167

    if-eq v0, v3, :cond_121

    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v0

    const v3, 0x7f08016a

    if-eq v0, v3, :cond_121

    .line 834
    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v0

    const v3, 0x7f08014d

    if-eq v0, v3, :cond_121

    .line 835
    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v0

    const v3, 0x7f0801a1

    if-ne v0, v3, :cond_163

    .line 837
    :cond_121
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->staffContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_13b

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->staffContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_13b

    .line 838
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->staffContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 839
    if-eqz v0, :cond_13b

    .line 841
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    move v0, v2

    .line 842
    goto/16 :goto_14

    .line 845
    :cond_13b
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    if-eqz v0, :cond_14f

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    invoke-virtual {v0}, Lcom/bilibili/tv/widget/DrawLinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_14f

    .line 847
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    invoke-virtual {v0}, Lcom/bilibili/tv/widget/DrawLinearLayout;->requestFocus()Z

    move v0, v2

    .line 848
    goto/16 :goto_14

    .line 849
    :cond_14f
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->rePlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    if-eqz v0, :cond_163

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->rePlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    invoke-virtual {v0}, Lcom/bilibili/tv/widget/DrawLinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_163

    .line 851
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->rePlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    invoke-virtual {v0}, Lcom/bilibili/tv/widget/DrawLinearLayout;->requestFocus()Z

    move v0, v2

    .line 852
    goto/16 :goto_14

    .line 855
    :cond_163
    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f080192

    if-eq v0, v1, :cond_17e

    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f080195

    if-eq v0, v1, :cond_17e

    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f080196

    if-ne v0, v1, :cond_433

    .line 857
    :cond_17e
    invoke-super {p0, p1}, Lcom/bilibili/tv/ui/base/BaseActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto/16 :goto_14

    .line 859
    :cond_184
    if-eqz v4, :cond_433

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v10, :cond_433

    .line 861
    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v0

    const v3, 0x7f080167

    if-eq v0, v3, :cond_1cb

    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v0

    const v3, 0x7f08016a

    if-eq v0, v3, :cond_1cb

    .line 862
    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v0

    const v3, 0x7f08014d

    if-eq v0, v3, :cond_1cb

    .line 863
    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v0

    const v3, 0x7f0801a1

    if-eq v0, v3, :cond_1cb

    .line 864
    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v0

    const v3, 0x7f080192

    if-eq v0, v3, :cond_1cb

    .line 865
    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v0

    const v3, 0x7f080195

    if-eq v0, v3, :cond_1cb

    .line 866
    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v0

    const v3, 0x7f080196

    if-ne v0, v3, :cond_433

    .line 867
    :cond_1cb
    const-string v0, "VideoDetailActivity"

    const-string v3, "dispatchKeyEvent | \u5f53\u524d\u5728\u64cd\u4f5c\u6309\u94ae\u533a\u57df\uff0c\u5411\u4e0b\u8df3\u8f6c\u5230\u5217\u8868"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->o:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_24a

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->o:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_24a

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->o:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_24a

    .line 869
    iget v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->epLayoutFocusPosition:I

    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->o:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 870
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 871
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->o:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 872
    const-string v4, "VideoDetailActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dispatchKeyEvent | \u8df3\u8f6c\u5230\u5206P\u5217\u8868 | savedPosition="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " | childCount="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->o:Landroid/support/v7/widget/RecyclerView;

    .line 873
    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " | epView="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v3, :cond_247

    const-string v0, "OK"

    :goto_229
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 872
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    if-eqz v3, :cond_426

    .line 876
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->blockEpisodeAutoFocus:Z

    .line 877
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->o:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_241

    .line 878
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->o:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v11}, Landroid/support/v7/widget/RecyclerView;->setDescendantFocusability(I)V

    .line 880
    :cond_241
    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    move v0, v2

    .line 881
    goto/16 :goto_14

    .line 873
    :cond_247
    const-string v0, "null"

    goto :goto_229

    .line 883
    :cond_24a
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonsContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_341

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_341

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonSectionViews:Ljava/util/List;

    .line 884
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_341

    .line 885
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->seasonSectionViews:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonSectionView;

    .line 886
    const-string v1, "VideoDetailActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dispatchKeyEvent | \u8df3\u8f6c\u5230\u5408\u96c6\u5217\u8868 | firstSectionId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonSectionView;->sectionId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    iget-object v1, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonSectionView;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v1, :cond_426

    iget-object v1, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonSectionView;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_426

    .line 888
    iget v1, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonSectionView;->sectionId:I

    invoke-direct {p0, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->getSeasonSectionFocusPosition(I)I

    move-result v1

    .line 889
    iget v3, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonSectionView;->sectionId:I

    invoke-direct {p0, v3}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->getDataSizeForSection(I)I

    move-result v3

    .line 890
    const-string v4, "VideoDetailActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dispatchKeyEvent | \u5408\u96c6\u5217\u8868 | savedFocusPosition="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " | dataSize="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " | visibleChildCount="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonSectionView;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 892
    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 890
    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    const-string v3, "VideoDetailActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dispatchKeyEvent | >>> \u8ba9recyclerView\u83b7\u5f97\u7126\u70b9\uff0c\u7531OnFocusChangeListener\u6062\u590d\u5230position="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    iget v3, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonSectionView;->sectionId:I

    invoke-direct {p0, v3}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->findVideoListSection(I)Lcom/bilibili/tv/ui/video/widget/VideoListSection;

    move-result-object v3

    .line 897
    if-eqz v3, :cond_334

    .line 898
    invoke-virtual {v3, v1}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->setFocusPosition(I)V

    .line 900
    const-string v4, "VideoDetailActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dispatchKeyEvent | \u8bbe\u7f6efocusPosition="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\uff0c\u76f4\u63a5\u8c03\u7528requestFocusOnSavedPosition"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    invoke-virtual {v3}, Lcom/bilibili/tv/ui/video/widget/VideoListSection;->requestFocusOnSavedPosition()Z

    move-result v3

    .line 903
    const-string v4, "VideoDetailActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dispatchKeyEvent | requestFocusOnSavedPosition\u8fd4\u56de="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonSectionView;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 906
    new-instance v3, Lcom/bilibili/tv/ui/video/VideoDetailActivity$10;

    invoke-direct {v3, p0, v1, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$10;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;ILandroid/support/v7/widget/RecyclerView;)V

    invoke-virtual {p0, v3}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_331
    move v0, v2

    .line 935
    goto/16 :goto_14

    .line 932
    :cond_334
    const-string v1, "VideoDetailActivity"

    const-string v3, "dispatchKeyEvent | \u672a\u627e\u5230VideoListSection\u5b9e\u4f8b\uff0cfallback\u5230recyclerView.requestFocus"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    iget-object v0, v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$SeasonSectionView;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->requestFocus()Z

    goto :goto_331

    .line 937
    :cond_341
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->episodes_video:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_3b9

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->episodes_video:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3b9

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->episodes_video:Landroid/support/v7/widget/RecyclerView;

    .line 938
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_3b9

    .line 939
    iget v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->episodesVideoFocusPosition:I

    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->episodes_video:Landroid/support/v7/widget/RecyclerView;

    .line 940
    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .line 939
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 941
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 942
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->episodes_video:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 943
    const-string v4, "VideoDetailActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dispatchKeyEvent | \u8df3\u8f6c\u5230episodes_video | savedPosition="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " | childCount="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->episodes_video:Landroid/support/v7/widget/RecyclerView;

    .line 944
    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " | epVideoView="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v3, :cond_3b6

    const-string v0, "OK"

    :goto_398
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 943
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    if-eqz v3, :cond_426

    .line 947
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->blockEpisodeAutoFocus:Z

    .line 948
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->episodes_video:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_3b0

    .line 949
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->episodes_video:Landroid/support/v7/widget/RecyclerView;

    .line 950
    invoke-virtual {v0, v11}, Landroid/support/v7/widget/RecyclerView;->setDescendantFocusability(I)V

    .line 952
    :cond_3b0
    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    move v0, v2

    .line 953
    goto/16 :goto_14

    .line 944
    :cond_3b6
    const-string v0, "null"

    goto :goto_398

    .line 955
    :cond_3b9
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->r:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_426

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->r:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_426

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->r:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_426

    .line 956
    iget v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->relateVideoFocusPosition:I

    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->r:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 957
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 958
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->r:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 959
    const-string v3, "VideoDetailActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dispatchKeyEvent | \u8df3\u8f6c\u5230\u76f8\u5173\u89c6\u9891 | savedPosition="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " | childCount="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->r:Landroid/support/v7/widget/RecyclerView;

    .line 960
    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " | relateView="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v1, :cond_423

    const-string v0, "OK"

    :goto_410
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 959
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    if-eqz v1, :cond_426

    .line 963
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    move v0, v2

    .line 964
    goto/16 :goto_14

    .line 960
    :cond_423
    const-string v0, "null"

    goto :goto_410

    .line 967
    :cond_426
    const-string v0, "VideoDetailActivity"

    const-string v1, "dispatchKeyEvent | \u672a\u627e\u5230\u53ef\u8df3\u8f6c\u7684\u5217\u8868\uff0c\u8c03\u7528super"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    invoke-super {p0, p1}, Lcom/bilibili/tv/ui/base/BaseActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto/16 :goto_14

    .line 972
    :cond_433
    if-eqz v4, :cond_46d

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v9, :cond_441

    .line 973
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v10, :cond_46d

    .line 974
    :cond_441
    const-string v0, "VideoDetailActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dispatchKeyEvent | \u8c03\u7528handleListFocusNavigation | direction="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 975
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v5, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->handleListFocusNavigation(Landroid/view/View;I)Z

    move-result v0

    .line 976
    if-eqz v0, :cond_46d

    .line 977
    const-string v0, "VideoDetailActivity"

    const-string v1, "dispatchKeyEvent | handleListFocusNavigation\u8fd4\u56detrue\uff0c\u6d88\u8d39\u4e8b\u4ef6"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 978
    goto/16 :goto_14

    .line 982
    :cond_46d
    invoke-super {p0, p1}, Lcom/bilibili/tv/ui/base/BaseActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto/16 :goto_14
.end method

.method public g()I
    .locals 1

    .prologue
    .line 244
    const v0, 0x7f0a002b

    return v0
.end method

.method public final l()Lcom/bilibili/tv/widget/DrawTextView;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 674
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0a004b

    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->o:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 676
    const v1, 0x7f08014c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawTextView;

    .line 677
    if-nez v0, :cond_21

    .line 678
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.bilibili.tv.widget.DrawTextView"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 680
    :cond_21
    invoke-virtual {v0}, Lcom/bilibili/tv/widget/DrawTextView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 681
    if-eqz v1, :cond_2c

    .line 682
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 684
    :cond_2c
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawTextView;->setFocusable(Z)V

    .line 685
    invoke-virtual {v0, v3}, Lcom/bilibili/tv/widget/DrawTextView;->setFocusableInTouchMode(Z)V

    .line 686
    invoke-virtual {v0}, Lcom/bilibili/tv/widget/DrawTextView;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawTextView;->setNextFocusRightId(I)V

    .line 687
    const v1, 0x7f0c015d

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawTextView;->setText(I)V

    .line 688
    invoke-virtual {v0}, Lcom/bilibili/tv/widget/DrawTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/4 v2, -0x1

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 689
    invoke-virtual {v0}, Lcom/bilibili/tv/widget/DrawTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0600a0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 690
    new-instance v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$k;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$k;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)V

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 691
    return-object v0
.end method

.method public final o()V
    .locals 3

    .prologue
    .line 3287
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->u:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    .line 3289
    if-eqz v2, :cond_7e

    .line 3291
    const v0, 0x7f080168

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 3292
    if-eqz v0, :cond_1b

    .line 3294
    invoke-virtual {v2}, Lcom/bilibili/tv/api/video/BiliVideoDetail;->isLikeVideo()Z

    move-result v1

    if-eqz v1, :cond_7f

    const v1, 0x7f0700fb

    .line 3293
    :goto_18
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 3297
    :cond_1b
    const v0, 0x7f080169

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 3298
    if-eqz v0, :cond_31

    .line 3299
    invoke-virtual {v2}, Lcom/bilibili/tv/api/video/BiliVideoDetail;->isLikeVideo()Z

    move-result v1

    if-eqz v1, :cond_83

    const-string v1, "\u5df2\u70b9\u8d5e"

    :goto_2e
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3302
    :cond_31
    const v0, 0x7f08016b

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 3303
    if-eqz v0, :cond_48

    .line 3305
    invoke-virtual {v2}, Lcom/bilibili/tv/api/video/BiliVideoDetail;->isCoinVideo()Z

    move-result v1

    if-eqz v1, :cond_86

    const v1, 0x7f0700f9

    .line 3304
    :goto_45
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 3308
    :cond_48
    const v0, 0x7f08016c

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 3309
    if-eqz v0, :cond_5e

    .line 3310
    invoke-virtual {v2}, Lcom/bilibili/tv/api/video/BiliVideoDetail;->isCoinVideo()Z

    move-result v1

    if-eqz v1, :cond_8a

    const-string v1, "\u5df2\u6295\u5e01"

    :goto_5b
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3313
    :cond_5e
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->k:Landroid/widget/ImageView;

    .line 3314
    if-eqz v1, :cond_6e

    .line 3316
    invoke-virtual {v2}, Lcom/bilibili/tv/api/video/BiliVideoDetail;->isFavoriteVideo()Z

    move-result v0

    if-eqz v0, :cond_8d

    const v0, 0x7f07006a

    .line 3315
    :goto_6b
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 3319
    :cond_6e
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->l:Landroid/widget/TextView;

    .line 3320
    if-eqz v1, :cond_7e

    .line 3322
    invoke-virtual {v2}, Lcom/bilibili/tv/api/video/BiliVideoDetail;->isFavoriteVideo()Z

    move-result v0

    if-eqz v0, :cond_91

    const v0, 0x7f0c0167

    .line 3321
    :goto_7b
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 3327
    :cond_7e
    return-void

    .line 3294
    :cond_7f
    const v1, 0x7f0700fa

    goto :goto_18

    .line 3299
    :cond_83
    const-string v1, "\u70b9\u8d5e"

    goto :goto_2e

    .line 3305
    :cond_86
    const v1, 0x7f0700f8

    goto :goto_45

    .line 3310
    :cond_8a
    const-string v1, "\u6295\u5e01"

    goto :goto_5b

    .line 3316
    :cond_8d
    const v0, 0x7f070069

    goto :goto_6b

    .line 3322
    :cond_91
    const v0, 0x7f0c0166

    goto :goto_7b
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v1, -0x1

    .line 3266
    if-ne p2, v1, :cond_10

    const/16 v0, 0x2752

    if-eq p1, v0, :cond_d

    const/16 v0, 0x2753

    if-ne p1, v0, :cond_10

    .line 3267
    :cond_d
    invoke-direct {p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->n()V

    .line 3269
    :cond_10
    if-ne p2, v1, :cond_4f

    const/16 v0, 0x2754

    if-ne p1, v0, :cond_4f

    if-eqz p3, :cond_4f

    .line 3270
    const-string v0, "last_cid"

    invoke-virtual {p3, v0, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 3271
    const-string v2, "last_progress"

    const/4 v3, 0x0

    invoke-virtual {p3, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 3272
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->u:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    if-eqz v3, :cond_4f

    cmp-long v3, v0, v4

    if-lez v3, :cond_4f

    .line 3273
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->u:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    iget-object v3, v3, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mHistory:Lcom/bilibili/tv/api/video/BiliVideoDetail$History;

    if-nez v3, :cond_3c

    .line 3274
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->u:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    new-instance v4, Lcom/bilibili/tv/api/video/BiliVideoDetail$History;

    invoke-direct {v4}, Lcom/bilibili/tv/api/video/BiliVideoDetail$History;-><init>()V

    iput-object v4, v3, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mHistory:Lcom/bilibili/tv/api/video/BiliVideoDetail$History;

    .line 3276
    :cond_3c
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->u:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    iget-object v3, v3, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mHistory:Lcom/bilibili/tv/api/video/BiliVideoDetail$History;

    iput-wide v0, v3, Lcom/bilibili/tv/api/video/BiliVideoDetail$History;->mCid:J

    .line 3277
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->u:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    iget-object v0, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mHistory:Lcom/bilibili/tv/api/video/BiliVideoDetail$History;

    div-int/lit16 v1, v2, 0x3e8

    iput v1, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$History;->mProgress:I

    .line 3278
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->u:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    invoke-direct {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->updateHistoryDisplay(Lcom/bilibili/tv/api/video/BiliVideoDetail;)V

    .line 3281
    :cond_4f
    invoke-super {p0, p1, p2, p3}, Lcom/bilibili/tv/ui/base/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 3282
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 11

    .prologue
    const/4 v2, 0x1

    const/4 v10, 0x0

    .line 3181
    const-string v0, "v"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3182
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 3183
    const v1, 0x7f080167

    if-ne v0, v1, :cond_39

    .line 3184
    invoke-static {p0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v0

    .line 3185
    const-string v1, "BiliAccount.get(this)"

    invoke-static {v0, v1}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3186
    invoke-virtual {v0}, Lbl/mg;->a()Z

    move-result v0

    if-nez v0, :cond_25

    .line 3187
    const-string v0, "\u8d26\u53f7\u672a\u767b\u5f55\uff0c\u65e0\u6cd5\u70b9\u51fb"

    invoke-static {p0, v0}, Lbl/lr;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 3240
    :cond_24
    :goto_24
    return-void

    .line 3190
    :cond_25
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->u:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->u:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    invoke-virtual {v0}, Lcom/bilibili/tv/api/video/BiliVideoDetail;->isLikeVideo()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 3191
    invoke-direct {p0, v2}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->likeVideo(I)V

    goto :goto_24

    .line 3194
    :cond_35
    invoke-direct {p0, v10}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->likeVideo(I)V

    goto :goto_24

    .line 3196
    :cond_39
    const v1, 0x7f08016a

    if-ne v0, v1, :cond_57

    .line 3197
    invoke-static {p0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v0

    .line 3198
    const-string v1, "BiliAccount.get(this)"

    invoke-static {v0, v1}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3199
    invoke-virtual {v0}, Lbl/mg;->a()Z

    move-result v0

    if-nez v0, :cond_53

    .line 3200
    const-string v0, "\u8d26\u53f7\u672a\u767b\u5f55\uff0c\u65e0\u6cd5\u70b9\u51fb"

    invoke-static {p0, v0}, Lbl/lr;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_24

    .line 3203
    :cond_53
    invoke-direct {p0, v2, v10}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->coinVideo(II)V

    goto :goto_24

    .line 3205
    :cond_57
    const v1, 0x7f08014d

    if-ne v0, v1, :cond_75

    .line 3206
    invoke-static {p0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v0

    .line 3207
    const-string v1, "BiliAccount.get(this)"

    invoke-static {v0, v1}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3208
    invoke-virtual {v0}, Lbl/mg;->a()Z

    move-result v0

    if-nez v0, :cond_71

    .line 3209
    const-string v0, "\u8d26\u53f7\u672a\u767b\u5f55\uff0c\u65e0\u6cd5\u70b9\u51fb"

    invoke-static {p0, v0}, Lbl/lr;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_24

    .line 3212
    :cond_71
    invoke-direct {p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->showFavoriteMenu()V

    goto :goto_24

    .line 3213
    :cond_75
    const v1, 0x7f0801a1

    if-ne v0, v1, :cond_af

    .line 3214
    invoke-static {p0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v1

    .line 3215
    const-string v0, "BiliAccount.get(this)"

    invoke-static {v1, v0}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3216
    invoke-virtual {v1}, Lbl/mg;->a()Z

    move-result v0

    if-nez v0, :cond_8f

    .line 3217
    const-string v0, "\u8d26\u53f7\u672a\u767b\u5f55\uff0c\u65e0\u6cd5\u70b9\u51fb"

    invoke-static {p0, v0}, Lbl/lr;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_24

    .line 3220
    :cond_8f
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->u:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    .line 3221
    if-eqz v2, :cond_24

    .line 3222
    const-class v0, Lcom/bilibili/tv/api/history/BiliPlayerHistoryService;

    invoke-static {v0}, Lbl/vo;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/history/BiliPlayerHistoryService;

    .line 3223
    invoke-virtual {v1}, Lbl/mg;->e()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mAvid:J

    invoke-interface {v0, v1, v2, v3}, Lcom/bilibili/tv/api/history/BiliPlayerHistoryService;->addVideoToviews(Ljava/lang/String;J)Lbl/vp;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$AddToViewResponse;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$AddToViewResponse;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)V

    .line 3224
    invoke-virtual {v0, v1}, Lbl/vp;->a(Lretrofit2/Callback;)V

    goto/16 :goto_24

    .line 3226
    :cond_af
    const v1, 0x7f080152

    if-ne v0, v1, :cond_24

    .line 3228
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->u:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    .line 3229
    if-eqz v1, :cond_24

    .line 3230
    iget-wide v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->s:J

    .line 3231
    iget-object v4, v1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mDescription:Ljava/lang/String;

    .line 3232
    const-string v0, "it.mDescription"

    invoke-static {v4, v0}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3233
    iget-object v5, v1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mCover:Ljava/lang/String;

    .line 3234
    const-string v0, "it.mCover"

    invoke-static {v5, v0}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3235
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

    .line 3237
    const-string v0, "tv_video_view_click_infomore"

    new-array v1, v10, [Ljava/lang/String;

    invoke-static {v0, v1}, Lbl/ok;->a(Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_24
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 264
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->o:Landroid/support/v7/widget/RecyclerView;

    .line 265
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->z:Z

    .line 266
    invoke-super {p0}, Lcom/bilibili/tv/ui/base/BaseActivity;->onDestroy()V

    .line 267
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 3257
    const-string v0, "event"

    invoke-static {p2, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3258
    const/16 v0, 0x17

    if-eq p1, v0, :cond_d

    const/16 v0, 0x42

    if-ne p1, v0, :cond_18

    :cond_d
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->y:Z

    if-eqz v0, :cond_18

    .line 3259
    sget-object v0, Lcom/bilibili/tv/ui/account/LoginActivity;->Companion:Lcom/bilibili/tv/ui/account/LoginActivity$a;

    const/16 v1, 0x2752

    invoke-virtual {v0, p0, v1}, Lcom/bilibili/tv/ui/account/LoginActivity$a;->a(Landroid/app/Activity;I)V

    .line 3261
    :cond_18
    invoke-super {p0, p1, p2}, Lcom/bilibili/tv/ui/base/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public final onLongClick(Landroid/view/View;)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 716
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->u:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    .line 717
    const-string v0, "v"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 718
    invoke-static {p0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v0

    .line 719
    const-string v1, "BiliAccount.get(this)"

    invoke-static {v0, v1}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 720
    invoke-virtual {v0}, Lbl/mg;->a()Z

    move-result v0

    if-nez v0, :cond_25

    .line 721
    const v0, 0x7f0c0062

    invoke-static {p0, v0}, Lbl/lr;->a(Landroid/content/Context;I)V

    .line 722
    sget-object v0, Lcom/bilibili/tv/ui/account/LoginActivity;->Companion:Lcom/bilibili/tv/ui/account/LoginActivity$a;

    const/16 v1, 0x2753

    invoke-virtual {v0, p0, v1}, Lcom/bilibili/tv/ui/account/LoginActivity$a;->a(Landroid/app/Activity;I)V

    .line 730
    :cond_24
    :goto_24
    return v2

    .line 725
    :cond_25
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 726
    const v1, 0x7f080167

    if-ne v0, v1, :cond_32

    .line 727
    invoke-direct {p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->tripleVideo()V

    goto :goto_24

    .line 728
    :cond_32
    const v1, 0x7f08016a

    if-ne v0, v1, :cond_24

    .line 729
    const/4 v0, 0x2

    invoke-direct {p0, v0, v2}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->coinVideo(II)V

    goto :goto_24
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 3244
    const-string v0, "UI_TRANSITION"

    const-string v1, "[VIDEO_DETAIL_PAUSE] VideoDetailActivity onPause called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3245
    invoke-super {p0}, Lcom/bilibili/tv/ui/base/BaseActivity;->onPause()V

    .line 3246
    return-void
.end method

.method public onPostCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 799
    invoke-super {p0, p1}, Lcom/bilibili/tv/ui/base/BaseActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 800
    invoke-direct {p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->n()V

    .line 801
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 3250
    const-string v0, "UI_TRANSITION"

    const-string v1, "[VIDEO_DETAIL_STOP] VideoDetailActivity onStop called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3251
    invoke-super {p0}, Lcom/bilibili/tv/ui/base/BaseActivity;->onStop()V

    .line 3252
    return-void
.end method
