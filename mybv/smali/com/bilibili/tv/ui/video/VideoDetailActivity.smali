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
        Lcom/bilibili/tv/ui/video/VideoDetailActivity$BiliFavoriteBoxResponse;,
        Lcom/bilibili/tv/ui/video/VideoDetailActivity$k;,
        Lcom/bilibili/tv/ui/video/VideoDetailActivity$j;
    }
.end annotation


# static fields
.field private static final C:Ljava/lang/String; = "VideoDetailActivity"

.field public static final Companion:Lcom/bilibili/tv/ui/video/VideoDetailActivity$a;

.field private static final D:Ljava/lang/String; = "bundle_ac_id"

.field private static final E:I = 0x6

.field private static final F:I = 0xc

.field private static final G:I = 0x2752

.field private static final H:I = 0x2753

.field private static final LIST_TYPE_EPISODES_VIDEO:I = 0x2

.field private static final LIST_TYPE_EP_LAYOUT:I = 0x1

.field private static final LIST_TYPE_RELATE_VIDEO:I = 0x3

.field private static final LIST_TYPE_TAG:I = 0x4

.field private static final REQUEST_CODE_PLAY_VIDEO:I = 0x2754

.field public static sNoHistoryPlayMode:Z


# instance fields
.field private A:Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;

.field private B:Z

.field private a:Landroid/widget/ImageView;

.field private b:Landroid/widget/ImageView;

.field private blockEpisodeAutoFocus:Z

.field private cc:Landroid/widget/TextView;

.field private d:Lcom/bilibili/tv/widget/DrawTextView;

.field private e:Landroid/widget/TextView;

.field private epLayoutFocusPosition:I

.field private episodesVideoFocusPosition:I

.field public episodes_title:Landroid/widget/TextView;

.field public episodes_video:Landroid/support/v7/widget/RecyclerView;

.field public episodes_video_adapter:Lcom/bilibili/tv/ui/video/VideoDetailActivity$EpisodesVideoAdapter;

.field private ff:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private hh:Landroid/widget/TextView;

.field private historyContainer:Landroid/widget/LinearLayout;

.field private historyPlayBtn:Lcom/bilibili/tv/widget/DrawTextView;

.field private historyPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

.field private historyProgress:Landroid/widget/TextView;

.field private historyTitle:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Lcom/bilibili/tv/widget/DrawLinearLayout;

.field private k:Landroid/widget/ImageView;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/view/View;

.field private n:Landroid/support/v7/widget/RecyclerView;

.field private noHistoryPlayBtn:Lcom/bilibili/tv/widget/DrawTextView;

.field private noHistoryPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

.field private noHistoryPlayCheckBox:Landroid/widget/CheckBox;

.field private o:Landroid/support/v7/widget/RecyclerView;

.field private p:Lcom/bilibili/tv/ui/base/LoadingImageView;

.field private q:Landroid/widget/FrameLayout;

.field private r:Landroid/support/v7/widget/RecyclerView;

.field private rePlayBtn:Lcom/bilibili/tv/widget/DrawTextView;

.field private rePlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

.field private relateVideoFocusPosition:I

.field private s:J

.field private scrollView:Landroid/widget/ScrollView;

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

.field private u:Lcom/bilibili/tv/api/video/BiliVideoDetail;

.field private v:Lcom/bilibili/tv/ui/video/VideoDetailActivity$e;

.field private w:Lbl/add;

.field private watchLaterBtn:Lcom/bilibili/tv/widget/DrawLinearLayout;

.field private x:Lcom/bilibili/tv/ui/video/VideoDetailActivity$g;

.field private y:Z

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 128
    const/4 v0, 0x0

    sput-boolean v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->sNoHistoryPlayMode:Z

    .line 146
    new-instance v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$a;-><init>(Lbl/bbg;)V

    sput-object v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->Companion:Lcom/bilibili/tv/ui/video/VideoDetailActivity$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 92
    invoke-direct {p0}, Lcom/bilibili/tv/ui/base/BaseActivity;-><init>()V

    .line 140
    iput v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->epLayoutFocusPosition:I

    .line 141
    iput v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->episodesVideoFocusPosition:I

    .line 142
    iput v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->relateVideoFocusPosition:I

    .line 143
    iput v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->tagViewFocusPosition:I

    .line 145
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->blockEpisodeAutoFocus:Z

    return-void
.end method

.method private final a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1131
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1135
    :goto_6
    return-void

    .line 1134
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
    const/4 v0, 0x1

    .line 1147
    iget-object v1, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mFirstFrame:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 1148
    if-eqz p1, :cond_16

    iget-object v1, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mBangumiInfo:Lcom/bilibili/tv/api/video/BiliVideoDetail$BangumiInfo;

    :goto_d
    if-eqz v1, :cond_18

    iget-object v1, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mBangumiInfo:Lcom/bilibili/tv/api/video/BiliVideoDetail$BangumiInfo;

    iget v1, v1, Lcom/bilibili/tv/api/video/BiliVideoDetail$BangumiInfo;->isJump:I

    if-ne v1, v0, :cond_18

    .line 1153
    :goto_15
    return v0

    .line 1148
    :cond_16
    const/4 v1, 0x0

    goto :goto_d

    .line 1153
    :cond_18
    const/4 v0, 0x0

    goto :goto_15
.end method

.method static synthetic access$000(Lcom/bilibili/tv/ui/video/VideoDetailActivity;I)Landroid/view/View;
    .locals 1

    .prologue
    .line 92
    invoke-virtual {p0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/support/v7/widget/RecyclerView;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->n:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->scrollToViewIfNeeded(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/api/video/BiliVideoDetail;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->u:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/BiliVideoDetail;)Lcom/bilibili/tv/api/video/BiliVideoDetail;
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->u:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->q(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->p(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/widget/CheckBox;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->noHistoryPlayCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/BiliVideoDetail;JI)V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->playVideo(Lcom/bilibili/tv/api/video/BiliVideoDetail;JI)V

    return-void
.end method

.method static synthetic access$1602(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Z)Z
    .locals 0

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->B:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Z
    .locals 1

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->blockEpisodeAutoFocus:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/widget/DrawLinearLayout;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Z)Z
    .locals 0

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->y:Z

    return p1
.end method

.method static synthetic access$200(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->tagViewFocusPosition:I

    return v0
.end method

.method static synthetic access$2000(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/ui/base/LoadingImageView;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->p:Lcom/bilibili/tv/ui/base/LoadingImageView;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->n2()V

    return-void
.end method

.method static synthetic access$2200(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)J
    .locals 2

    .prologue
    .line 92
    iget-wide v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->s:J

    return-wide v0
.end method

.method static synthetic access$2300(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->m:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->cc:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/widget/DrawTextView;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d:Lcom/bilibili/tv/widget/DrawTextView;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->e:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->ff:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/BiliVideoDetail;)V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->updateHistoryDisplay(Lcom/bilibili/tv/api/video/BiliVideoDetail;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/bilibili/tv/ui/video/VideoDetailActivity;I)Landroid/view/View;
    .locals 1

    .prologue
    .line 92
    invoke-virtual {p0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Landroid/support/v7/widget/RecyclerView;I)Landroid/view/View;
    .locals 1

    .prologue
    .line 92
    invoke-direct {p0, p1, p2}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->restoreFocusPosition(Landroid/support/v7/widget/RecyclerView;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3000(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->g:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/ui/video/VideoDetailActivity$g;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->x:Lcom/bilibili/tv/ui/video/VideoDetailActivity$g;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->i:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lcom/bilibili/tv/ui/video/VideoDetailActivity$e;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->v:Lcom/bilibili/tv/ui/video/VideoDetailActivity$e;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->hh:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->t:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Lbl/add;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->w:Lbl/add;

    return-object v0
.end method

.method static synthetic access$400(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/support/v7/widget/RecyclerView;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->o:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->epLayoutFocusPosition:I

    return v0
.end method

.method static synthetic access$600(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->relateVideoFocusPosition:I

    return v0
.end method

.method static synthetic access$602(Lcom/bilibili/tv/ui/video/VideoDetailActivity;I)I
    .locals 0

    .prologue
    .line 92
    iput p1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->relateVideoFocusPosition:I

    return p1
.end method

.method static synthetic access$700(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/support/v7/widget/RecyclerView;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->r:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->episodesVideoFocusPosition:I

    return v0
.end method

.method static synthetic access$802(Lcom/bilibili/tv/ui/video/VideoDetailActivity;I)I
    .locals 0

    .prologue
    .line 92
    iput p1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->episodesVideoFocusPosition:I

    return p1
.end method

.method static synthetic access$900(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/widget/ScrollView;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->scrollView:Landroid/widget/ScrollView;

    return-object v0
.end method

.method private final b(Lcom/bilibili/tv/api/video/BiliVideoDetail;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1157
    if-eqz p1, :cond_10

    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mBangumiInfo:Lcom/bilibili/tv/api/video/BiliVideoDetail$BangumiInfo;

    :goto_4
    if-eqz v0, :cond_12

    .line 1158
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mBangumiInfo:Lcom/bilibili/tv/api/video/BiliVideoDetail$BangumiInfo;

    iget-object v0, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$BangumiInfo;->mSeasonId:Ljava/lang/String;

    .line 1159
    const-string v1, "video.mBangumiInfo.mSeasonId"

    invoke-static {v0, v1}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1162
    :goto_f
    return-object v0

    .line 1157
    :cond_10
    const/4 v0, 0x0

    goto :goto_4

    .line 1162
    :cond_12
    const-string v0, ""

    goto :goto_f
.end method

.method private final coinVideo(II)V
    .locals 6

    .prologue
    .line 1452
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->B:Z

    if-eqz v0, :cond_5

    .line 1460
    :goto_4
    return-void

    .line 1455
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->B:Z

    .line 1456
    invoke-static {p0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v1

    .line 1457
    const-string v0, "BiliAccount.get(this)"

    invoke-static {v1, v0}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1458
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

    .line 1459
    invoke-virtual {v0, v1}, Lbl/vp;->a(Lretrofit2/Callback;)V

    goto :goto_4
.end method

.method private final findTitleByCid(JLcom/bilibili/tv/api/video/BiliVideoDetail;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 960
    if-nez p3, :cond_5

    move-object v0, v1

    .line 981
    :goto_4
    return-object v0

    .line 963
    :cond_5
    iget-object v0, p3, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    if-eqz v0, :cond_3d

    .line 964
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

    .line 965
    iget-wide v4, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mCid:J

    cmp-long v3, v4, p1

    if-nez v3, :cond_f

    .line 966
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

    .line 970
    :cond_3d
    iget-object v0, p3, Lcom/bilibili/tv/api/video/BiliVideoDetail;->episodes:Lcom/alibaba/fastjson/JSONArray;

    if-eqz v0, :cond_7a

    .line 971
    const/4 v0, 0x0

    :goto_42
    iget-object v2, p3, Lcom/bilibili/tv/api/video/BiliVideoDetail;->episodes:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_7a

    .line 972
    iget-object v2, p3, Lcom/bilibili/tv/api/video/BiliVideoDetail;->episodes:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    .line 973
    const-string v3, "page"

    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_77

    .line 974
    const-string v3, "page"

    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v3

    .line 975
    const-string v4, "cid"

    invoke-virtual {v3, v4}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_77

    const-string v4, "cid"

    invoke-virtual {v3, v4}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v4

    cmp-long v3, v4, p1

    if-nez v3, :cond_77

    .line 976
    const-string v0, "title"

    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 971
    :cond_77
    add-int/lit8 v0, v0, 0x1

    goto :goto_42

    :cond_7a
    move-object v0, v1

    .line 981
    goto :goto_4
.end method

.method private final formatProgressTime(I)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 943
    if-gtz p1, :cond_8

    .line 944
    const-string v0, "00:00"

    .line 955
    :goto_7
    return-object v0

    .line 945
    :cond_8
    const/16 v0, 0x3c

    if-ge p1, v0, :cond_1b

    .line 946
    const-string v0, "00:%02d"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    .line 947
    :cond_1b
    const/16 v0, 0xe10

    if-ge p1, v0, :cond_38

    .line 948
    div-int/lit8 v0, p1, 0x3c

    .line 949
    rem-int/lit8 v1, p1, 0x3c

    .line 950
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

    .line 952
    :cond_38
    div-int/lit16 v0, p1, 0xe10

    .line 953
    rem-int/lit16 v1, p1, 0xe10

    div-int/lit8 v1, v1, 0x3c

    .line 954
    rem-int/lit8 v2, p1, 0x3c

    .line 955
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

    .line 801
    if-nez p1, :cond_10

    move v0, v1

    .line 825
    :goto_4
    return v0

    .line 817
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 818
    instance-of v2, v0, Landroid/view/View;

    if-eqz v2, :cond_32

    .line 819
    check-cast v0, Landroid/view/View;

    move-object p1, v0

    .line 806
    :cond_10
    if-eqz p1, :cond_32

    .line 807
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 808
    const v2, 0x7f080149

    if-ne v0, v2, :cond_1d

    .line 809
    const/4 v0, 0x1

    goto :goto_4

    .line 810
    :cond_1d
    const v2, 0x7f080171

    if-ne v0, v2, :cond_24

    .line 811
    const/4 v0, 0x2

    goto :goto_4

    .line 812
    :cond_24
    const v2, 0x7f080155

    if-ne v0, v2, :cond_2b

    .line 813
    const/4 v0, 0x3

    goto :goto_4

    .line 814
    :cond_2b
    const v2, 0x7f08008d

    if-ne v0, v2, :cond_5

    .line 815
    const/4 v0, 0x4

    goto :goto_4

    :cond_32
    move v0, v1

    .line 825
    goto :goto_4
.end method

.method private handleListFocusNavigation(Landroid/view/View;I)Z
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 712
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->getCurrentListType(Landroid/view/View;)I

    move-result v2

    .line 713
    if-gez v2, :cond_b

    .line 792
    :cond_a
    :goto_a
    return v0

    .line 717
    :cond_b
    const/4 v3, 0x0

    .line 720
    const/16 v4, 0x14

    if-ne p2, v4, :cond_9e

    .line 721
    if-ne v2, v1, :cond_67

    .line 722
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->episodes_video:Landroid/support/v7/widget/RecyclerView;

    if-eqz v2, :cond_45

    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->episodes_video:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_45

    .line 723
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->episodes_video:Landroid/support/v7/widget/RecyclerView;

    .line 724
    iget v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->episodesVideoFocusPosition:I

    .line 778
    :goto_22
    if-eqz v3, :cond_a

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_a

    .line 779
    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v4

    .line 780
    if-lez v4, :cond_a

    .line 781
    add-int/lit8 v4, v4, -0x1

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 782
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 783
    invoke-virtual {v3, v2}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 784
    if-eqz v2, :cond_a

    .line 786
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    move v0, v1

    .line 787
    goto :goto_a

    .line 725
    :cond_45
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->r:Landroid/support/v7/widget/RecyclerView;

    if-eqz v2, :cond_56

    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->r:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_56

    .line 726
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->r:Landroid/support/v7/widget/RecyclerView;

    .line 727
    iget v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->relateVideoFocusPosition:I

    goto :goto_22

    .line 728
    :cond_56
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->n:Landroid/support/v7/widget/RecyclerView;

    if-eqz v2, :cond_12d

    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->n:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_12d

    .line 729
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->n:Landroid/support/v7/widget/RecyclerView;

    .line 730
    iget v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->tagViewFocusPosition:I

    goto :goto_22

    .line 732
    :cond_67
    if-ne v2, v5, :cond_8b

    .line 733
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->r:Landroid/support/v7/widget/RecyclerView;

    if-eqz v2, :cond_7a

    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->r:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_7a

    .line 734
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->r:Landroid/support/v7/widget/RecyclerView;

    .line 735
    iget v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->relateVideoFocusPosition:I

    goto :goto_22

    .line 736
    :cond_7a
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->n:Landroid/support/v7/widget/RecyclerView;

    if-eqz v2, :cond_12d

    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->n:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_12d

    .line 737
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->n:Landroid/support/v7/widget/RecyclerView;

    .line 738
    iget v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->tagViewFocusPosition:I

    goto :goto_22

    .line 740
    :cond_8b
    if-ne v2, v6, :cond_12d

    .line 741
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->n:Landroid/support/v7/widget/RecyclerView;

    if-eqz v2, :cond_12d

    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->n:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_12d

    .line 742
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->n:Landroid/support/v7/widget/RecyclerView;

    .line 743
    iget v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->tagViewFocusPosition:I

    goto :goto_22

    .line 746
    :cond_9e
    const/16 v4, 0x13

    if-ne p2, v4, :cond_12d

    .line 748
    if-eq v2, v1, :cond_a6

    if-ne v2, v5, :cond_ce

    .line 749
    :cond_a6
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    if-eqz v2, :cond_ba

    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    invoke-virtual {v2}, Lcom/bilibili/tv/widget/DrawLinearLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_ba

    .line 750
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    invoke-virtual {v0}, Lcom/bilibili/tv/widget/DrawLinearLayout;->requestFocus()Z

    move v0, v1

    .line 751
    goto/16 :goto_a

    .line 752
    :cond_ba
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->rePlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    if-eqz v2, :cond_12d

    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->rePlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    invoke-virtual {v2}, Lcom/bilibili/tv/widget/DrawLinearLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_12d

    .line 753
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->rePlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    invoke-virtual {v0}, Lcom/bilibili/tv/widget/DrawLinearLayout;->requestFocus()Z

    move v0, v1

    .line 754
    goto/16 :goto_a

    .line 756
    :cond_ce
    if-ne v2, v6, :cond_f4

    .line 757
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->episodes_video:Landroid/support/v7/widget/RecyclerView;

    if-eqz v2, :cond_e2

    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->episodes_video:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_e2

    .line 758
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->episodes_video:Landroid/support/v7/widget/RecyclerView;

    .line 759
    iget v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->episodesVideoFocusPosition:I

    goto/16 :goto_22

    .line 760
    :cond_e2
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->o:Landroid/support/v7/widget/RecyclerView;

    if-eqz v2, :cond_12d

    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->o:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_12d

    .line 761
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->o:Landroid/support/v7/widget/RecyclerView;

    .line 762
    iget v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->epLayoutFocusPosition:I

    goto/16 :goto_22

    .line 764
    :cond_f4
    const/4 v4, 0x4

    if-ne v2, v4, :cond_12d

    .line 765
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->r:Landroid/support/v7/widget/RecyclerView;

    if-eqz v2, :cond_109

    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->r:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_109

    .line 766
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->r:Landroid/support/v7/widget/RecyclerView;

    .line 767
    iget v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->relateVideoFocusPosition:I

    goto/16 :goto_22

    .line 768
    :cond_109
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->episodes_video:Landroid/support/v7/widget/RecyclerView;

    if-eqz v2, :cond_11b

    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->episodes_video:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_11b

    .line 769
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->episodes_video:Landroid/support/v7/widget/RecyclerView;

    .line 770
    iget v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->episodesVideoFocusPosition:I

    goto/16 :goto_22

    .line 771
    :cond_11b
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->o:Landroid/support/v7/widget/RecyclerView;

    if-eqz v2, :cond_12d

    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->o:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_12d

    .line 772
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->o:Landroid/support/v7/widget/RecyclerView;

    .line 773
    iget v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->epLayoutFocusPosition:I

    goto/16 :goto_22

    :cond_12d
    move v2, v0

    goto/16 :goto_22
.end method

.method private final k()V
    .locals 7

    .prologue
    const v2, 0x7f08014f

    const v6, 0x7f0700e7

    const/4 v5, 0x0

    .line 200
    new-instance v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$d;

    invoke-direct {v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$d;-><init>()V

    .line 201
    const v0, 0x7f080146

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->a:Landroid/widget/ImageView;

    .line 202
    const v0, 0x7f080041

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->b:Landroid/widget/ImageView;

    .line 203
    const v0, 0x7f080156

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->cc:Landroid/widget/TextView;

    .line 204
    const v0, 0x7f080158

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawTextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d:Lcom/bilibili/tv/widget/DrawTextView;

    .line 205
    const v0, 0x7f080153

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->e:Landroid/widget/TextView;

    .line 206
    const v0, 0x7f080147

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->ff:Landroid/widget/TextView;

    .line 207
    const v0, 0x7f080159

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->g:Landroid/widget/TextView;

    .line 208
    const v0, 0x7f08014b

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->hh:Landroid/widget/TextView;

    .line 209
    const v0, 0x7f080154

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->i:Landroid/widget/TextView;

    .line 210
    const v0, 0x7f080170

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->episodes_title:Landroid/widget/TextView;

    .line 211
    const v0, 0x7f080064

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->m:Landroid/view/View;

    .line 212
    const v0, 0x7f08014d

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawLinearLayout;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->j:Lcom/bilibili/tv/widget/DrawLinearLayout;

    .line 213
    const v0, 0x7f08014e

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->k:Landroid/widget/ImageView;

    .line 214
    invoke-virtual {p0, v2}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->l:Landroid/widget/TextView;

    .line 215
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->j:Lcom/bilibili/tv/widget/DrawLinearLayout;

    .line 216
    if-eqz v0, :cond_b8

    .line 217
    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 218
    invoke-virtual {v0, v6}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setUpDrawable(I)V

    .line 219
    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 220
    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 221
    invoke-virtual {v0, v2}, Lcom/bilibili/tv/widget/DrawLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 224
    :cond_b8
    const v0, 0x7f080167

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawLinearLayout;

    .line 225
    if-eqz v0, :cond_d9

    .line 226
    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 227
    invoke-virtual {v0, v6}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setUpDrawable(I)V

    .line 228
    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 229
    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 230
    const v2, 0x7f080169

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/widget/DrawLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 232
    :cond_d9
    const v0, 0x7f08016a

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawLinearLayout;

    .line 233
    if-eqz v0, :cond_fa

    .line 234
    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 235
    invoke-virtual {v0, v6}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setUpDrawable(I)V

    .line 236
    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 237
    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 238
    const v2, 0x7f08016c

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/widget/DrawLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 242
    :cond_fa
    const v0, 0x7f08019c

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawLinearLayout;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->watchLaterBtn:Lcom/bilibili/tv/widget/DrawLinearLayout;

    .line 243
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->watchLaterBtn:Lcom/bilibili/tv/widget/DrawLinearLayout;

    if-eqz v0, :cond_118

    .line 244
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->watchLaterBtn:Lcom/bilibili/tv/widget/DrawLinearLayout;

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 245
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->watchLaterBtn:Lcom/bilibili/tv/widget/DrawLinearLayout;

    invoke-virtual {v0, v6}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setUpDrawable(I)V

    .line 246
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->watchLaterBtn:Lcom/bilibili/tv/widget/DrawLinearLayout;

    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 249
    :cond_118
    const v0, 0x7f080152

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawTextView;

    .line 250
    if-eqz v0, :cond_12c

    .line 251
    invoke-virtual {v0, v6}, Lcom/bilibili/tv/widget/DrawTextView;->setUpDrawable(I)V

    .line 252
    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 253
    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 255
    :cond_12c
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d:Lcom/bilibili/tv/widget/DrawTextView;

    .line 256
    if-eqz v0, :cond_139

    .line 257
    invoke-virtual {v0, v6}, Lcom/bilibili/tv/widget/DrawTextView;->setUpDrawable(I)V

    .line 258
    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 259
    invoke-virtual {v0, p0}, Lcom/bilibili/tv/widget/DrawTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 261
    :cond_139
    const v0, 0x7f080151

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->q:Landroid/widget/FrameLayout;

    .line 262
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->q:Landroid/widget/FrameLayout;

    .line 263
    if-eqz v0, :cond_157

    .line 264
    sget-object v1, Lcom/bilibili/tv/ui/base/LoadingImageView;->Companion:Lcom/bilibili/tv/ui/base/LoadingImageView$a;

    invoke-virtual {v1, v0}, Lcom/bilibili/tv/ui/base/LoadingImageView$a;->a(Landroid/widget/FrameLayout;)Lcom/bilibili/tv/ui/base/LoadingImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->p:Lcom/bilibili/tv/ui/base/LoadingImageView;

    .line 265
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->p:Lcom/bilibili/tv/ui/base/LoadingImageView;

    .line 266
    if-eqz v0, :cond_157

    .line 267
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/base/LoadingImageView;->a()V

    .line 270
    :cond_157
    const v0, 0x7f08008d

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->n:Landroid/support/v7/widget/RecyclerView;

    .line 271
    new-instance v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$1;

    invoke-direct {v0, p0, p0, v5, v5}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$1;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Landroid/content/Context;IZ)V

    .line 300
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->n:Landroid/support/v7/widget/RecyclerView;

    .line 301
    if-eqz v1, :cond_176

    .line 302
    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$h;)V

    .line 304
    new-instance v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$2;

    invoke-direct {v0, p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$2;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)V

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 316
    :cond_176
    new-instance v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$g;

    invoke-direct {v0, p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$g;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)V

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->x:Lcom/bilibili/tv/ui/video/VideoDetailActivity$g;

    .line 317
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->n:Landroid/support/v7/widget/RecyclerView;

    .line 318
    if-eqz v0, :cond_186

    .line 319
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->x:Lcom/bilibili/tv/ui/video/VideoDetailActivity$g;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 321
    :cond_186
    const v0, 0x7f080149

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->o:Landroid/support/v7/widget/RecyclerView;

    .line 322
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06010a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 323
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->t:Ljava/util/List;

    .line 324
    new-instance v1, Lbl/add;

    new-instance v2, Lcom/bilibili/tv/ui/video/VideoDetailActivity$b;

    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->t:Ljava/util/List;

    invoke-direct {v2, p0, v3}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$b;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Ljava/util/List;)V

    invoke-direct {v1, v2}, Lbl/add;-><init>(Landroid/support/v7/widget/RecyclerView$a;)V

    iput-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->w:Lbl/add;

    .line 325
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->o:Landroid/support/v7/widget/RecyclerView;

    if-eqz v1, :cond_1e8

    .line 326
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->o:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Lcom/bilibili/tv/widget/FixGridLayoutManager;

    const/4 v3, 0x6

    const/4 v4, 0x1

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/bilibili/tv/widget/FixGridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$h;)V

    .line 327
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->o:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Lcom/bilibili/tv/ui/video/VideoDetailActivity$j;

    invoke-direct {v2, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$j;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView$g;)V

    .line 328
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->o:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->w:Lbl/add;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 330
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->o:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$3;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$3;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 342
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->blockEpisodeAutoFocus:Z

    if-eqz v0, :cond_1e8

    .line 343
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->o:Landroid/support/v7/widget/RecyclerView;

    const/high16 v1, 0x60000

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setDescendantFocusability(I)V

    .line 346
    :cond_1e8
    const v0, 0x7f080155

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->r:Landroid/support/v7/widget/RecyclerView;

    .line 347
    new-instance v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$e;

    invoke-direct {v0, p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$e;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)V

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->v:Lcom/bilibili/tv/ui/video/VideoDetailActivity$e;

    .line 348
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->r:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_219

    .line 349
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->r:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$4;

    invoke-direct {v1, p0, p0, v5, v5}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$4;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$h;)V

    .line 361
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->r:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->v:Lcom/bilibili/tv/ui/video/VideoDetailActivity$e;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 363
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->r:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$5;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$5;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 386
    :cond_219
    const v0, 0x7f080171

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->episodes_video:Landroid/support/v7/widget/RecyclerView;

    .line 387
    new-instance v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$EpisodesVideoAdapter;

    invoke-direct {v0, p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$EpisodesVideoAdapter;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)V

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->episodes_video_adapter:Lcom/bilibili/tv/ui/video/VideoDetailActivity$EpisodesVideoAdapter;

    .line 388
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->episodes_video:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_24a

    .line 389
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->episodes_video:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/bilibili/tv/widget/FixLinearLayoutManager;

    invoke-direct {v1, p0, v5, v5}, Lcom/bilibili/tv/widget/FixLinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$h;)V

    .line 390
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->episodes_video:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->episodes_video_adapter:Lcom/bilibili/tv/ui/video/VideoDetailActivity$EpisodesVideoAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 392
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->episodes_video:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$6;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$6;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 405
    :cond_24a
    const v0, 0x7f08018e

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyContainer:Landroid/widget/LinearLayout;

    .line 406
    const v0, 0x7f080192

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawLinearLayout;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    .line 407
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    if-eqz v0, :cond_273

    .line 408
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    new-instance v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$d;

    invoke-direct {v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$d;-><init>()V

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 409
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    invoke-virtual {v0, v6}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setUpDrawable(I)V

    .line 411
    :cond_273
    const v0, 0x7f080195

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawLinearLayout;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->rePlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    .line 412
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->rePlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    if-eqz v0, :cond_291

    .line 413
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->rePlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    new-instance v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$d;

    invoke-direct {v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$d;-><init>()V

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 414
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->rePlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    invoke-virtual {v0, v6}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setUpDrawable(I)V

    .line 416
    :cond_291
    const v0, 0x7f080191

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawTextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtn:Lcom/bilibili/tv/widget/DrawTextView;

    .line 417
    const v0, 0x7f080194

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawTextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->rePlayBtn:Lcom/bilibili/tv/widget/DrawTextView;

    .line 418
    const v0, 0x7f080196

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawLinearLayout;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->noHistoryPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    .line 419
    const v0, 0x7f080198

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->noHistoryPlayCheckBox:Landroid/widget/CheckBox;

    .line 420
    const v0, 0x7f080197

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/DrawTextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->noHistoryPlayBtn:Lcom/bilibili/tv/widget/DrawTextView;

    .line 421
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->noHistoryPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    if-eqz v0, :cond_2db

    .line 422
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->noHistoryPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    new-instance v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$d;

    invoke-direct {v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$d;-><init>()V

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 423
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->noHistoryPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    invoke-virtual {v0, v6}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setUpDrawable(I)V

    .line 425
    :cond_2db
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->noHistoryPlayBtn:Lcom/bilibili/tv/widget/DrawTextView;

    if-eqz v0, :cond_2e6

    .line 426
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->noHistoryPlayBtn:Lcom/bilibili/tv/widget/DrawTextView;

    const-string v1, "\u65e0\u75d5\u6a21\u5f0f"

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawTextView;->setText(Ljava/lang/CharSequence;)V

    .line 428
    :cond_2e6
    const v0, 0x7f08018f

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyTitle:Landroid/widget/TextView;

    .line 429
    const v0, 0x7f080190

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyProgress:Landroid/widget/TextView;

    .line 430
    const v0, 0x7f0800f6

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->scrollView:Landroid/widget/ScrollView;

    .line 431
    invoke-direct {p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->setupGlobalFocusChangeListener()V

    .line 432
    return-void
.end method

.method private final likeVideo(I)V
    .locals 4

    .prologue
    .line 1405
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->B:Z

    if-eqz v0, :cond_5

    .line 1412
    :goto_4
    return-void

    .line 1408
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->B:Z

    .line 1409
    invoke-static {p0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v1

    .line 1410
    const-string v0, "BiliAccount.get(this)"

    invoke-static {v1, v0}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1411
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

.method private final m()V
    .locals 2

    .prologue
    .line 586
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 587
    const-string v1, "intent"

    invoke-static {v0, v1}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 588
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 589
    if-nez v0, :cond_19

    .line 590
    const v0, 0x7f0c0170

    invoke-static {p0, v0}, Lbl/lr;->a(Landroid/content/Context;I)V

    .line 591
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->finish()V

    .line 595
    :goto_18
    return-void

    .line 594
    :cond_19
    const-string v1, "bundle_ac_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->s:J

    goto :goto_18
.end method

.method private final n()V
    .locals 4

    .prologue
    .line 916
    iget-wide v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->s:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_c

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->A:Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;

    if-nez v0, :cond_d

    .line 929
    :cond_c
    :goto_c
    return-void

    .line 919
    :cond_d
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->p:Lcom/bilibili/tv/ui/base/LoadingImageView;

    .line 920
    if-eqz v0, :cond_14

    .line 921
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/base/LoadingImageView;->a()V

    .line 923
    :cond_14
    new-instance v0, Lcom/bilibili/tv/api/video/VideoApiService$VideoParamsMapV2$Builder;

    iget-wide v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->s:J

    invoke-direct {v0, v2, v3}, Lcom/bilibili/tv/api/video/VideoApiService$VideoParamsMapV2$Builder;-><init>(J)V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/api/video/VideoApiService$VideoParamsMapV2$Builder;->setAutoPlay(Ljava/lang/String;)Lcom/bilibili/tv/api/video/VideoApiService$VideoParamsMapV2$Builder;

    move-result-object v0

    .line 924
    invoke-virtual {v0}, Lcom/bilibili/tv/api/video/VideoApiService$VideoParamsMapV2$Builder;->build()Lcom/bilibili/tv/api/video/VideoApiService$VideoParamsMapV2;

    move-result-object v1

    .line 925
    invoke-static {p0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v2

    .line 926
    const-string v0, "BiliAccount.get(this)"

    invoke-static {v2, v0}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 927
    const-class v0, Lcom/bilibili/tv/api/video/VideoApiService;

    invoke-static {v0}, Lbl/vo;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/VideoApiService;

    invoke-virtual {v2}, Lbl/mg;->e()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/bilibili/tv/api/video/VideoApiService;->getVideoDetails(Lcom/bilibili/tv/api/video/VideoApiService$VideoParamsMapV2;Ljava/lang/String;)Lbl/vp;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/api/video/VideoApiParser;

    invoke-direct {v1}, Lcom/bilibili/tv/api/video/VideoApiParser;-><init>()V

    invoke-virtual {v0, v1}, Lbl/vp;->a(Lbl/vu;)Lbl/vp;

    move-result-object v0

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->A:Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;

    .line 928
    invoke-virtual {v0, v1}, Lbl/vp;->a(Lretrofit2/Callback;)V

    goto :goto_c
.end method

.method private final n2()V
    .locals 4

    .prologue
    .line 932
    iget-wide v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->s:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_c

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->A:Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;

    if-nez v0, :cond_d

    .line 940
    :cond_c
    :goto_c
    return-void

    .line 935
    :cond_d
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->p:Lcom/bilibili/tv/ui/base/LoadingImageView;

    .line 936
    if-eqz v0, :cond_14

    .line 937
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/base/LoadingImageView;->a()V

    .line 939
    :cond_14
    const-class v0, Lmybl/MyBiliApiService;

    invoke-static {v0}, Lbl/vo;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmybl/MyBiliApiService;

    iget-wide v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->s:J

    invoke-interface {v0, v2, v3}, Lmybl/MyBiliApiService;->getVideoDetail(J)Lbl/vp;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/api/video/VideoApiParser2;

    invoke-direct {v1}, Lcom/bilibili/tv/api/video/VideoApiParser2;-><init>()V

    invoke-virtual {v0, v1}, Lbl/vp;->a(Lbl/vu;)Lbl/vp;

    move-result-object v0

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->A:Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;

    invoke-virtual {v0, v1}, Lbl/vp;->a(Lretrofit2/Callback;)V

    goto :goto_c
.end method

.method private final p(Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 1316
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->B:Z

    if-eqz v0, :cond_5

    .line 1325
    :goto_4
    return-void

    .line 1319
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->B:Z

    .line 1320
    const-class v0, Lcom/bilibili/tv/api/favorite/BiliFavoriteVideoApiService;

    .line 1321
    invoke-static {v0}, Lbl/vo;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bilibili/tv/api/favorite/BiliFavoriteVideoApiService;

    .line 1322
    invoke-static {p0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v0

    .line 1323
    const-string v2, "BiliAccount.get(this)"

    invoke-static {v0, v2}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1324
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
    .line 1110
    if-nez p1, :cond_3

    .line 1128
    :cond_2
    :goto_2
    return-void

    .line 1113
    :cond_3
    const/4 v2, 0x0

    .line 1114
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_27

    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    if-eqz v0, :cond_27

    .line 1115
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

    .line 1116
    iget-wide v4, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;->mCid:J

    cmp-long v3, v4, p2

    if-nez v3, :cond_14

    move-object v2, v0

    .line 1122
    :cond_27
    if-nez v2, :cond_3f

    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    if-eqz v0, :cond_3f

    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3f

    .line 1123
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;

    move-object v2, v0

    .line 1125
    :cond_3f
    if-eqz v2, :cond_2

    .line 1126
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
    .line 1361
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->B:Z

    if-eqz v0, :cond_5

    .line 1369
    :goto_4
    return-void

    .line 1364
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->B:Z

    .line 1365
    invoke-static {p0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v1

    .line 1366
    const-string v0, "BiliAccount.get(this)"

    invoke-static {v1, v0}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1367
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

    .line 1368
    invoke-virtual {v0, v1}, Lbl/vp;->a(Lretrofit2/Callback;)V

    goto :goto_4
.end method

.method private restoreFocusPosition(Landroid/support/v7/widget/RecyclerView;I)Landroid/view/View;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 892
    if-nez p1, :cond_4

    .line 912
    :cond_3
    :goto_3
    return-object v0

    .line 896
    :cond_4
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v1

    .line 898
    if-eqz v1, :cond_3

    .line 903
    add-int/lit8 v0, v1, -0x1

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 906
    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 907
    if-nez v0, :cond_3

    .line 912
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_3
.end method

.method private saveCurrentFocusPosition(Landroid/view/View;)V
    .locals 4

    .prologue
    const v3, 0x7f080149

    const/4 v1, 0x0

    .line 830
    if-nez p1, :cond_7

    .line 888
    :cond_6
    :goto_6
    return-void

    .line 834
    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v2, 0x7f080126

    if-eq v0, v2, :cond_27

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_42

    .line 835
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    const v2, 0x7f08008d

    if-ne v0, v2, :cond_42

    .line 836
    :cond_27
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->n:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_6

    move v0, v1

    .line 837
    :goto_2c
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->n:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_6

    .line 838
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->n:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-ne v1, p1, :cond_3f

    .line 839
    iput v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->tagViewFocusPosition:I

    goto :goto_6

    .line 837
    :cond_3f
    add-int/lit8 v0, v0, 0x1

    goto :goto_2c

    .line 846
    :cond_42
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_71

    .line 847
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getId()I

    move-result v0

    const v2, 0x7f080155

    if-ne v0, v2, :cond_71

    .line 848
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    .line 849
    :goto_5f
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 850
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-ne v2, p1, :cond_6e

    .line 851
    iput v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->relateVideoFocusPosition:I

    goto :goto_6

    .line 849
    :cond_6e
    add-int/lit8 v1, v1, 0x1

    goto :goto_5f

    .line 857
    :cond_71
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_9e

    .line 858
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getId()I

    move-result v0

    if-ne v0, v3, :cond_9e

    .line 859
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    .line 860
    :goto_8b
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 861
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-ne v2, p1, :cond_9b

    .line 862
    iput v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->epLayoutFocusPosition:I

    goto/16 :goto_6

    .line 860
    :cond_9b
    add-int/lit8 v1, v1, 0x1

    goto :goto_8b

    .line 866
    :cond_9e
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    if-ne v0, v3, :cond_bf

    .line 868
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->o:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_6

    .line 869
    :goto_a8
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->o:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_6

    .line 870
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->o:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-ne v0, p1, :cond_bc

    .line 871
    iput v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->epLayoutFocusPosition:I

    goto/16 :goto_6

    .line 869
    :cond_bc
    add-int/lit8 v1, v1, 0x1

    goto :goto_a8

    .line 878
    :cond_bf
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_6

    .line 879
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getId()I

    move-result v0

    const v2, 0x7f080171

    if-ne v0, v2, :cond_6

    .line 880
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    .line 881
    :goto_dc
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 882
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-ne v2, p1, :cond_ec

    .line 883
    iput v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->episodesVideoFocusPosition:I

    goto/16 :goto_6

    .line 881
    :cond_ec
    add-int/lit8 v1, v1, 0x1

    goto :goto_dc
.end method

.method private scrollToViewIfNeeded(Landroid/view/View;)V
    .locals 6

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 449
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->scrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_9

    if-nez p1, :cond_a

    .line 473
    :cond_9
    :goto_9
    return-void

    .line 452
    :cond_a
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 453
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->scrollView:Landroid/widget/ScrollView;

    invoke-virtual {v1, v0}, Landroid/widget/ScrollView;->getHitRect(Landroid/graphics/Rect;)V

    .line 454
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 455
    invoke-virtual {p1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 456
    new-array v0, v2, [I

    .line 457
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->scrollView:Landroid/widget/ScrollView;

    invoke-virtual {v1, v0}, Landroid/widget/ScrollView;->getLocationOnScreen([I)V

    .line 458
    new-array v1, v2, [I

    .line 459
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 460
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    .line 461
    const/high16 v3, 0x42480000    # 50.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 462
    aget v1, v1, v4

    aget v0, v0, v4

    sub-int v0, v1, v0

    .line 463
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v1, v0

    .line 465
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->scrollView:Landroid/widget/ScrollView;

    invoke-virtual {v3}, Landroid/widget/ScrollView;->getHeight()I

    move-result v3

    .line 466
    if-ge v0, v2, :cond_57

    .line 467
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->scrollView:Landroid/widget/ScrollView;

    invoke-virtual {v1}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v1

    .line 468
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->scrollView:Landroid/widget/ScrollView;

    add-int/2addr v0, v1

    sub-int/2addr v0, v2

    invoke-virtual {v3, v5, v0}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    goto :goto_9

    .line 469
    :cond_57
    sub-int v0, v3, v2

    if-le v1, v0, :cond_9

    .line 470
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->scrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v0

    .line 471
    iget-object v4, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->scrollView:Landroid/widget/ScrollView;

    add-int/2addr v0, v1

    sub-int/2addr v0, v3

    add-int/2addr v0, v2

    invoke-virtual {v4, v5, v0}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    goto :goto_9
.end method

.method private setupGlobalFocusChangeListener()V
    .locals 2

    .prologue
    .line 435
    const v0, 0x1020002

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 436
    if-eqz v0, :cond_15

    .line 437
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$7;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$7;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalFocusChangeListener(Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;)V

    .line 446
    :cond_15
    return-void
.end method

.method private final tripleVideo()V
    .locals 4

    .prologue
    .line 1501
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->B:Z

    if-eqz v0, :cond_5

    .line 1508
    :goto_4
    return-void

    .line 1504
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->B:Z

    .line 1505
    invoke-static {p0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v1

    .line 1506
    const-string v0, "BiliAccount.get(this)"

    invoke-static {v1, v0}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1507
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

.method private final updateHistoryDisplay(Lcom/bilibili/tv/api/video/BiliVideoDetail;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/16 v5, 0x8

    .line 985
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyProgress:Landroid/widget/TextView;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtn:Lcom/bilibili/tv/widget/DrawTextView;

    if-nez v0, :cond_14

    .line 1107
    :cond_13
    :goto_13
    return-void

    .line 988
    :cond_14
    if-nez p1, :cond_25

    .line 989
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 990
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->noHistoryPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    if-eqz v0, :cond_13

    .line 991
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->noHistoryPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setVisibility(I)V

    goto :goto_13

    .line 995
    :cond_25
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 997
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mHistory:Lcom/bilibili/tv/api/video/BiliVideoDetail$History;

    if-nez v0, :cond_92

    .line 998
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtn:Lcom/bilibili/tv/widget/DrawTextView;

    const-string v2, "\u5f00\u59cb\u64ad\u653e"

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/widget/DrawTextView;->setText(Ljava/lang/CharSequence;)V

    .line 999
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1000
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyProgress:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1001
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1002
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->noHistoryPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    if-eqz v0, :cond_59

    .line 1003
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->noHistoryPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setVisibility(I)V

    .line 1004
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    if-eqz v0, :cond_59

    .line 1005
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    const v1, 0x7f080196

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setNextFocusRightId(I)V

    .line 1044
    :cond_59
    :goto_59
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    if-eqz v0, :cond_67

    .line 1045
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    new-instance v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$8;

    invoke-direct {v1, p0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$8;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/BiliVideoDetail;)V

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1061
    :cond_67
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->rePlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    if-eqz v0, :cond_75

    .line 1062
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->rePlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    new-instance v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$9;

    invoke-direct {v1, p0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$9;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/BiliVideoDetail;)V

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1080
    :cond_75
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->noHistoryPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    if-eqz v0, :cond_83

    .line 1082
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->noHistoryPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    new-instance v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$10;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$10;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)V

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1094
    :cond_83
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->noHistoryPlayBtn:Lcom/bilibili/tv/widget/DrawTextView;

    if-eqz v0, :cond_13

    .line 1096
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->noHistoryPlayBtn:Lcom/bilibili/tv/widget/DrawTextView;

    new-instance v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$11;

    invoke-direct {v1, p0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$11;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Lcom/bilibili/tv/api/video/BiliVideoDetail;)V

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_13

    .line 1010
    :cond_92
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->episodes:Lcom/alibaba/fastjson/JSONArray;

    if-eqz v0, :cond_117

    .line 1011
    iget-object v0, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->episodes:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    add-int/2addr v0, v1

    .line 1013
    :goto_9d
    iget-object v2, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    if-eqz v2, :cond_a8

    .line 1014
    iget-object v2, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mPageList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v0, v2

    .line 1016
    :cond_a8
    iget-object v2, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mHistory:Lcom/bilibili/tv/api/video/BiliVideoDetail$History;

    iget-wide v2, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$History;->mCid:J

    .line 1017
    iget-object v4, p1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mHistory:Lcom/bilibili/tv/api/video/BiliVideoDetail$History;

    iget v4, v4, Lcom/bilibili/tv/api/video/BiliVideoDetail$History;->mProgress:I

    .line 1018
    invoke-direct {p0, v2, v3, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->findTitleByCid(JLcom/bilibili/tv/api/video/BiliVideoDetail;)Ljava/lang/String;

    move-result-object v2

    .line 1019
    if-eqz v2, :cond_bc

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_f0

    .line 1020
    :cond_bc
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1021
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyProgress:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1022
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1034
    :goto_cb
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtn:Lcom/bilibili/tv/widget/DrawTextView;

    const-string v1, "\u7ee7\u7eed\u64ad\u653e"

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1035
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->rePlayBtn:Lcom/bilibili/tv/widget/DrawTextView;

    const-string v1, "\u91cd\u65b0\u64ad\u653e"

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1036
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->noHistoryPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    if-eqz v0, :cond_e2

    .line 1037
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->noHistoryPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    invoke-virtual {v0, v5}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setVisibility(I)V

    .line 1039
    :cond_e2
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    if-eqz v0, :cond_59

    .line 1040
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    const v1, 0x7f080195

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setNextFocusRightId(I)V

    goto/16 :goto_59

    .line 1024
    :cond_f0
    const/4 v3, 0x1

    if-gt v0, v3, :cond_111

    .line 1025
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1029
    :goto_f8
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1030
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyProgress:Landroid/widget/TextView;

    invoke-direct {p0, v4}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->formatProgressTime(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1031
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyProgress:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1032
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_cb

    .line 1027
    :cond_111
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_f8

    :cond_117
    move v0, v1

    goto :goto_9d
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    const-string v0, "ott-platform.detail.0.0.pv"

    return-object v0
.end method

.method public final a(Landroid/app/Activity;Lcom/bilibili/tv/api/video/BiliVideoDetail;)V
    .locals 1

    .prologue
    .line 1138
    const-string v0, "video"

    invoke-static {p2, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1139
    invoke-direct {p0, p2}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->a(Lcom/bilibili/tv/api/video/BiliVideoDetail;)Z

    move-result v0

    if-eqz v0, :cond_d

    if-nez p1, :cond_e

    .line 1144
    :cond_d
    :goto_d
    return-void

    .line 1142
    :cond_e
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 1143
    invoke-direct {p0, p2}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->b(Lcom/bilibili/tv/api/video/BiliVideoDetail;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_d
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 179
    invoke-direct {p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->m()V

    .line 180
    iget-wide v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->s:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_15

    .line 181
    const v0, 0x7f0c0170

    invoke-static {p0, v0}, Lbl/lr;->a(Landroid/content/Context;I)V

    .line 182
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->finish()V

    .line 188
    :goto_14
    return-void

    .line 185
    :cond_15
    invoke-direct {p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->k()V

    .line 186
    new-instance v0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;

    invoke-direct {v0, p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)V

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->A:Lcom/bilibili/tv/ui/video/VideoDetailActivity$i;

    .line 187
    const-string v0, "tv_video_view_open"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lbl/ok;->a(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_14
.end method

.method public final a(Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;)V
    .locals 2

    .prologue
    .line 1574
    sget-object v0, Lbl/aft;->a:Lbl/aft;

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->u:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    invoke-virtual {v0, p0, v1, p1}, Lbl/aft;->a(Landroid/app/Activity;Lcom/bilibili/tv/api/video/BiliVideoDetail;Lcom/bilibili/tv/api/video/BiliVideoDetail$Page;)V

    .line 1575
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 599
    if-eqz p1, :cond_1f

    .line 600
    invoke-static {}, Lbl/nv;->a()Lbl/nv;

    move-result-object v0

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p1, v1}, Lbl/nv;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 601
    sget-object v0, Lbl/adl;->a:Lbl/adl;

    .line 602
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1, p1}, Lbl/ach;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 603
    const-string v2, "ThumbImageUrlHelper.forB\u2026Cover(application, cover)"

    invoke-static {v1, v2}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 604
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v2}, Lbl/adl;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 606
    :cond_1f
    return-void
.end method

.method public a_()Z
    .locals 1

    .prologue
    .line 164
    invoke-static {p0}, Lbl/wg;->a(Lbl/wf;)Z

    move-result v0

    return v0
.end method

.method public b()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 169
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

    const/4 v0, 0x1

    .line 618
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->w:Lbl/add;

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->v:Lcom/bilibili/tv/ui/video/VideoDetailActivity$e;

    if-nez v1, :cond_15

    .line 619
    :cond_10
    invoke-super {p0, p1}, Lcom/bilibili/tv/ui/base/BaseActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 708
    :cond_14
    :goto_14
    return v0

    .line 621
    :cond_15
    if-eqz p1, :cond_3d

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object v2, v1

    .line 622
    :goto_20
    if-eqz p1, :cond_40

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 623
    :goto_2a
    if-eqz v2, :cond_1d2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_1d2

    .line 624
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v2

    .line 625
    if-nez v2, :cond_42

    .line 626
    invoke-super {p0, p1}, Lcom/bilibili/tv/ui/base/BaseActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_14

    .line 621
    :cond_3d
    const/4 v1, 0x0

    move-object v2, v1

    goto :goto_20

    .line 622
    :cond_40
    const/4 v1, 0x0

    goto :goto_2a

    .line 628
    :cond_42
    invoke-direct {p0, v2}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->saveCurrentFocusPosition(Landroid/view/View;)V

    .line 629
    if-eqz v1, :cond_e2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v6, :cond_e2

    .line 630
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    const v4, 0x7f080167

    if-eq v3, v4, :cond_68

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    const v4, 0x7f08016a

    if-eq v3, v4, :cond_68

    .line 631
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    const v4, 0x7f08014d

    if-ne v3, v4, :cond_c1

    .line 632
    :cond_68
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    if-eqz v3, :cond_ae

    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    invoke-virtual {v3}, Lcom/bilibili/tv/widget/DrawLinearLayout;->getVisibility()I

    move-result v3

    if-nez v3, :cond_ae

    .line 633
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->n:Landroid/support/v7/widget/RecyclerView;

    if-eqz v1, :cond_a7

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->n:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_a7

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->n:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_a7

    .line 634
    iget v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->tagViewFocusPosition:I

    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->n:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 635
    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 636
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->n:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 637
    if-eqz v1, :cond_a7

    .line 639
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    goto/16 :goto_14

    .line 643
    :cond_a7
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->historyPlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    invoke-virtual {v1}, Lcom/bilibili/tv/widget/DrawLinearLayout;->requestFocus()Z

    goto/16 :goto_14

    .line 645
    :cond_ae
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->rePlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    if-eqz v3, :cond_c1

    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->rePlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    invoke-virtual {v3}, Lcom/bilibili/tv/widget/DrawLinearLayout;->getVisibility()I

    move-result v3

    if-nez v3, :cond_c1

    .line 646
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->rePlayBtnLayout:Lcom/bilibili/tv/widget/DrawLinearLayout;

    invoke-virtual {v1}, Lcom/bilibili/tv/widget/DrawLinearLayout;->requestFocus()Z

    goto/16 :goto_14

    .line 650
    :cond_c1
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    const v4, 0x7f080192

    if-eq v3, v4, :cond_dc

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    const v4, 0x7f080195

    if-eq v3, v4, :cond_dc

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    const v4, 0x7f080196

    if-ne v3, v4, :cond_1ba

    .line 651
    :cond_dc
    invoke-super {p0, p1}, Lcom/bilibili/tv/ui/base/BaseActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto/16 :goto_14

    .line 653
    :cond_e2
    if-eqz v1, :cond_1ba

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v7, :cond_1ba

    .line 654
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    const v4, 0x7f080192

    if-eq v3, v4, :cond_105

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    const v4, 0x7f080195

    if-eq v3, v4, :cond_105

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    const v4, 0x7f080196

    if-ne v3, v4, :cond_1ba

    .line 655
    :cond_105
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->o:Landroid/support/v7/widget/RecyclerView;

    if-eqz v1, :cond_143

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->o:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_143

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->o:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_143

    .line 656
    iget v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->epLayoutFocusPosition:I

    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->o:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 657
    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 658
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->o:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 659
    if-eqz v1, :cond_1b4

    .line 661
    iput-boolean v5, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->blockEpisodeAutoFocus:Z

    .line 662
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->o:Landroid/support/v7/widget/RecyclerView;

    if-eqz v2, :cond_13e

    .line 663
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->o:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v8}, Landroid/support/v7/widget/RecyclerView;->setDescendantFocusability(I)V

    .line 666
    :cond_13e
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    goto/16 :goto_14

    .line 669
    :cond_143
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->episodes_video:Landroid/support/v7/widget/RecyclerView;

    if-eqz v1, :cond_181

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->episodes_video:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_181

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->episodes_video:Landroid/support/v7/widget/RecyclerView;

    .line 670
    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_181

    .line 671
    iget v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->episodesVideoFocusPosition:I

    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->episodes_video:Landroid/support/v7/widget/RecyclerView;

    .line 672
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 671
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 673
    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 674
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->episodes_video:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 675
    if-eqz v1, :cond_1b4

    .line 677
    iput-boolean v5, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->blockEpisodeAutoFocus:Z

    .line 678
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->episodes_video:Landroid/support/v7/widget/RecyclerView;

    if-eqz v2, :cond_17c

    .line 679
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->episodes_video:Landroid/support/v7/widget/RecyclerView;

    .line 680
    invoke-virtual {v2, v8}, Landroid/support/v7/widget/RecyclerView;->setDescendantFocusability(I)V

    .line 683
    :cond_17c
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    goto/16 :goto_14

    .line 686
    :cond_181
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->r:Landroid/support/v7/widget/RecyclerView;

    if-eqz v1, :cond_1b4

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->r:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1b4

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->r:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_1b4

    .line 688
    iget v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->relateVideoFocusPosition:I

    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->r:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 689
    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 690
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->r:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 691
    if-eqz v1, :cond_1b4

    .line 692
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    goto/16 :goto_14

    .line 696
    :cond_1b4
    invoke-super {p0, p1}, Lcom/bilibili/tv/ui/base/BaseActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto/16 :goto_14

    .line 700
    :cond_1ba
    if-eqz v1, :cond_1d2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v3, v6, :cond_1c8

    .line 701
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v7, :cond_1d2

    .line 702
    :cond_1c8
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v2, v1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->handleListFocusNavigation(Landroid/view/View;I)Z

    move-result v1

    .line 703
    if-nez v1, :cond_14

    .line 708
    :cond_1d2
    invoke-super {p0, p1}, Lcom/bilibili/tv/ui/base/BaseActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto/16 :goto_14
.end method

.method public g()I
    .locals 1

    .prologue
    .line 174
    const v0, 0x7f0a002b

    return v0
.end method

.method public final l()Lcom/bilibili/tv/widget/DrawTextView;
    .locals 4

    .prologue
    .line 499
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0a004b

    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->o:Landroid/support/v7/widget/RecyclerView;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 501
    if-nez v0, :cond_18

    .line 502
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.bilibili.tv.widget.DrawTextView"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 504
    :cond_18
    check-cast v0, Lcom/bilibili/tv/widget/DrawTextView;

    .line 505
    invoke-virtual {v0}, Lcom/bilibili/tv/widget/DrawTextView;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawTextView;->setNextFocusRightId(I)V

    .line 506
    const v1, 0x7f0c015d

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawTextView;->setText(I)V

    .line 507
    invoke-virtual {v0}, Lcom/bilibili/tv/widget/DrawTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/4 v2, -0x1

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 508
    invoke-virtual {v0}, Lcom/bilibili/tv/widget/DrawTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0600a0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 509
    new-instance v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$k;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$k;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)V

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 510
    return-object v0
.end method

.method public final o()V
    .locals 3

    .prologue
    .line 1282
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->u:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    .line 1283
    if-eqz v2, :cond_7e

    .line 1284
    const v0, 0x7f080168

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1285
    if-eqz v0, :cond_1b

    .line 1287
    invoke-virtual {v2}, Lcom/bilibili/tv/api/video/BiliVideoDetail;->isLikeVideo()Z

    move-result v1

    if-eqz v1, :cond_7f

    const v1, 0x7f0700fb

    .line 1286
    :goto_18
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1289
    :cond_1b
    const v0, 0x7f080169

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1290
    if-eqz v0, :cond_31

    .line 1291
    invoke-virtual {v2}, Lcom/bilibili/tv/api/video/BiliVideoDetail;->isLikeVideo()Z

    move-result v1

    if-eqz v1, :cond_83

    const-string v1, "\u5df2\u70b9\u8d5e"

    :goto_2e
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1293
    :cond_31
    const v0, 0x7f08016b

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1294
    if-eqz v0, :cond_48

    .line 1296
    invoke-virtual {v2}, Lcom/bilibili/tv/api/video/BiliVideoDetail;->isCoinVideo()Z

    move-result v1

    if-eqz v1, :cond_86

    const v1, 0x7f0700f9

    .line 1295
    :goto_45
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1298
    :cond_48
    const v0, 0x7f08016c

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1299
    if-eqz v0, :cond_5e

    .line 1300
    invoke-virtual {v2}, Lcom/bilibili/tv/api/video/BiliVideoDetail;->isCoinVideo()Z

    move-result v1

    if-eqz v1, :cond_8a

    const-string v1, "\u5df2\u6295\u5e01"

    :goto_5b
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1302
    :cond_5e
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->k:Landroid/widget/ImageView;

    .line 1303
    if-eqz v1, :cond_6e

    .line 1305
    invoke-virtual {v2}, Lcom/bilibili/tv/api/video/BiliVideoDetail;->isFavoriteVideo()Z

    move-result v0

    if-eqz v0, :cond_8d

    const v0, 0x7f07006a

    .line 1304
    :goto_6b
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1307
    :cond_6e
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->l:Landroid/widget/TextView;

    .line 1308
    if-eqz v1, :cond_7e

    .line 1310
    invoke-virtual {v2}, Lcom/bilibili/tv/api/video/BiliVideoDetail;->isFavoriteVideo()Z

    move-result v0

    if-eqz v0, :cond_91

    const v0, 0x7f0c0167

    .line 1309
    :goto_7b
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 1313
    :cond_7e
    return-void

    .line 1287
    :cond_7f
    const v1, 0x7f0700fa

    goto :goto_18

    .line 1291
    :cond_83
    const-string v1, "\u70b9\u8d5e"

    goto :goto_2e

    .line 1296
    :cond_86
    const v1, 0x7f0700f8

    goto :goto_45

    .line 1300
    :cond_8a
    const-string v1, "\u6295\u5e01"

    goto :goto_5b

    .line 1305
    :cond_8d
    const v0, 0x7f070069

    goto :goto_6b

    .line 1310
    :cond_91
    const v0, 0x7f0c0166

    goto :goto_7b
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v3, -0x1

    .line 1257
    const-string v0, "VideoDetail"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult: requestCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", resultCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", intent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1258
    if-ne p2, v3, :cond_3c

    const/16 v0, 0x2752

    if-eq p1, v0, :cond_39

    const/16 v0, 0x2753

    if-ne p1, v0, :cond_3c

    .line 1259
    :cond_39
    invoke-direct {p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->n()V

    .line 1261
    :cond_3c
    if-ne p2, v3, :cond_cb

    const/16 v0, 0x2754

    if-ne p1, v0, :cond_cb

    if-eqz p3, :cond_cb

    .line 1262
    const-string v0, "last_cid"

    invoke-virtual {p3, v0, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 1263
    const-string v2, "last_progress"

    const/4 v3, 0x0

    invoke-virtual {p3, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 1264
    const-string v3, "VideoDetail"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received from player: lastCid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", lastProgress="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1265
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->u:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    if-eqz v3, :cond_cf

    cmp-long v3, v0, v6

    if-lez v3, :cond_cf

    .line 1266
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->u:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    iget-object v3, v3, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mHistory:Lcom/bilibili/tv/api/video/BiliVideoDetail$History;

    if-nez v3, :cond_8a

    .line 1267
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->u:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    new-instance v4, Lcom/bilibili/tv/api/video/BiliVideoDetail$History;

    invoke-direct {v4}, Lcom/bilibili/tv/api/video/BiliVideoDetail$History;-><init>()V

    iput-object v4, v3, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mHistory:Lcom/bilibili/tv/api/video/BiliVideoDetail$History;

    .line 1269
    :cond_8a
    iget-object v3, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->u:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    iget-object v3, v3, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mHistory:Lcom/bilibili/tv/api/video/BiliVideoDetail$History;

    iput-wide v0, v3, Lcom/bilibili/tv/api/video/BiliVideoDetail$History;->mCid:J

    .line 1270
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->u:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    iget-object v0, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mHistory:Lcom/bilibili/tv/api/video/BiliVideoDetail$History;

    div-int/lit16 v1, v2, 0x3e8

    iput v1, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$History;->mProgress:I

    .line 1271
    const-string v0, "VideoDetail"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Updated history: mCid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->u:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    iget-object v2, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mHistory:Lcom/bilibili/tv/api/video/BiliVideoDetail$History;

    iget-wide v2, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$History;->mCid:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mProgress="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->u:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    iget-object v2, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mHistory:Lcom/bilibili/tv/api/video/BiliVideoDetail$History;

    iget v2, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail$History;->mProgress:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1272
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->u:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    invoke-direct {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->updateHistoryDisplay(Lcom/bilibili/tv/api/video/BiliVideoDetail;)V

    .line 1277
    :cond_cb
    :goto_cb
    invoke-super {p0, p1, p2, p3}, Lcom/bilibili/tv/ui/base/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 1278
    return-void

    .line 1274
    :cond_cf
    const-string v2, "VideoDetail"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skip update: this.u="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->u:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", lastCid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_cb
.end method

.method public onClick(Landroid/view/View;)V
    .locals 11

    .prologue
    const/4 v5, 0x2

    const v4, 0x7f0c0062

    const/16 v2, 0x2753

    const/4 v3, 0x1

    const/4 v10, 0x0

    .line 1168
    const-string v0, "v"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1169
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 1170
    const v1, 0x7f080167

    if-ne v0, v1, :cond_42

    .line 1171
    invoke-static {p0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v0

    .line 1172
    const-string v1, "BiliAccount.get(this)"

    invoke-static {v0, v1}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1173
    invoke-virtual {v0}, Lbl/mg;->a()Z

    move-result v0

    if-nez v0, :cond_2e

    .line 1174
    invoke-static {p0, v4}, Lbl/lr;->a(Landroid/content/Context;I)V

    .line 1175
    sget-object v0, Lcom/bilibili/tv/ui/account/LoginActivity;->Companion:Lcom/bilibili/tv/ui/account/LoginActivity$a;

    invoke-virtual {v0, p0, v2}, Lcom/bilibili/tv/ui/account/LoginActivity$a;->a(Landroid/app/Activity;I)V

    .line 1243
    :cond_2d
    :goto_2d
    return-void

    .line 1178
    :cond_2e
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->u:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->u:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    invoke-virtual {v0}, Lcom/bilibili/tv/api/video/BiliVideoDetail;->isLikeVideo()Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 1179
    invoke-direct {p0, v3}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->likeVideo(I)V

    goto :goto_2d

    .line 1182
    :cond_3e
    invoke-direct {p0, v10}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->likeVideo(I)V

    goto :goto_2d

    .line 1184
    :cond_42
    const v1, 0x7f08016a

    if-ne v0, v1, :cond_63

    .line 1185
    invoke-static {p0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v0

    .line 1186
    const-string v1, "BiliAccount.get(this)"

    invoke-static {v0, v1}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1187
    invoke-virtual {v0}, Lbl/mg;->a()Z

    move-result v0

    if-nez v0, :cond_5f

    .line 1188
    invoke-static {p0, v4}, Lbl/lr;->a(Landroid/content/Context;I)V

    .line 1189
    sget-object v0, Lcom/bilibili/tv/ui/account/LoginActivity;->Companion:Lcom/bilibili/tv/ui/account/LoginActivity$a;

    invoke-virtual {v0, p0, v2}, Lcom/bilibili/tv/ui/account/LoginActivity$a;->a(Landroid/app/Activity;I)V

    goto :goto_2d

    .line 1192
    :cond_5f
    invoke-direct {p0, v3, v10}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->coinVideo(II)V

    goto :goto_2d

    .line 1194
    :cond_63
    const v1, 0x7f08014d

    if-ne v0, v1, :cond_b5

    .line 1195
    invoke-static {p0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v0

    .line 1196
    const-string v1, "BiliAccount.get(this)"

    invoke-static {v0, v1}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1197
    invoke-virtual {v0}, Lbl/mg;->a()Z

    move-result v0

    if-nez v0, :cond_80

    .line 1198
    invoke-static {p0, v4}, Lbl/lr;->a(Landroid/content/Context;I)V

    .line 1199
    sget-object v0, Lcom/bilibili/tv/ui/account/LoginActivity;->Companion:Lcom/bilibili/tv/ui/account/LoginActivity$a;

    invoke-virtual {v0, p0, v2}, Lcom/bilibili/tv/ui/account/LoginActivity$a;->a(Landroid/app/Activity;I)V

    goto :goto_2d

    .line 1202
    :cond_80
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->u:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    .line 1203
    if-eqz v0, :cond_9f

    invoke-virtual {v0}, Lcom/bilibili/tv/api/video/BiliVideoDetail;->isFavoriteVideo()Z

    move-result v0

    if-eqz v0, :cond_9f

    .line 1204
    const-string v0, "0"

    invoke-direct {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->q(Ljava/lang/String;)V

    .line 1205
    const-string v0, "tv_video_view_click_fav"

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "action"

    aput-object v2, v1, v10

    const-string v2, "\u53d6\u6d88\u6536\u85cf"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lbl/ok;->a(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_2d

    .line 1208
    :cond_9f
    const-string v0, "0"

    invoke-direct {p0, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->p(Ljava/lang/String;)V

    .line 1209
    const-string v0, "tv_video_view_click_fav"

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "action"

    aput-object v2, v1, v10

    const-string v2, "\u6536\u85cf"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lbl/ok;->a(Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_2d

    .line 1210
    :cond_b5
    const v1, 0x7f08019c

    if-ne v0, v1, :cond_f3

    .line 1211
    invoke-static {p0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v1

    .line 1212
    const-string v0, "BiliAccount.get(this)"

    invoke-static {v1, v0}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1213
    invoke-virtual {v1}, Lbl/mg;->a()Z

    move-result v0

    if-nez v0, :cond_d3

    .line 1214
    invoke-static {p0, v4}, Lbl/lr;->a(Landroid/content/Context;I)V

    .line 1215
    sget-object v0, Lcom/bilibili/tv/ui/account/LoginActivity;->Companion:Lcom/bilibili/tv/ui/account/LoginActivity$a;

    invoke-virtual {v0, p0, v2}, Lcom/bilibili/tv/ui/account/LoginActivity$a;->a(Landroid/app/Activity;I)V

    goto/16 :goto_2d

    .line 1218
    :cond_d3
    iget-object v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->u:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    .line 1219
    if-eqz v2, :cond_2d

    .line 1220
    const-class v0, Lcom/bilibili/tv/api/history/BiliPlayerHistoryService;

    invoke-static {v0}, Lbl/vo;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/history/BiliPlayerHistoryService;

    .line 1221
    invoke-virtual {v1}, Lbl/mg;->e()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, v2, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mAvid:J

    invoke-interface {v0, v1, v2, v3}, Lcom/bilibili/tv/api/history/BiliPlayerHistoryService;->addVideoToviews(Ljava/lang/String;J)Lbl/vp;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$AddToViewResponse;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$AddToViewResponse;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)V

    .line 1222
    invoke-virtual {v0, v1}, Lbl/vp;->a(Lretrofit2/Callback;)V

    goto/16 :goto_2d

    .line 1224
    :cond_f3
    const v1, 0x7f080152

    if-eq v0, v1, :cond_113

    .line 1225
    const v1, 0x7f080158

    if-ne v0, v1, :cond_2d

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->u:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    if-eqz v0, :cond_2d

    .line 1226
    invoke-virtual {v0}, Lcom/bilibili/tv/api/video/BiliVideoDetail;->getAuthor()Ljava/lang/String;

    move-result-object v1

    .line 1227
    const-string v2, "it.author"

    invoke-static {v1, v2}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1228
    invoke-virtual {v0}, Lcom/bilibili/tv/api/video/BiliVideoDetail;->getMid()J

    move-result-wide v2

    invoke-static {p0, v2, v3, v1}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->start(Landroid/content/Context;JLjava/lang/String;)V

    goto/16 :goto_2d

    .line 1231
    :cond_113
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->u:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    .line 1232
    if-eqz v1, :cond_2d

    .line 1233
    iget-wide v2, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->s:J

    .line 1234
    iget-object v4, v1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mDescription:Ljava/lang/String;

    .line 1235
    const-string v0, "it.mDescription"

    invoke-static {v4, v0}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1236
    iget-object v5, v1, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mCover:Ljava/lang/String;

    .line 1237
    const-string v0, "it.mCover"

    invoke-static {v5, v0}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1238
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

    .line 1240
    const-string v0, "tv_video_view_click_infomore"

    new-array v1, v10, [Ljava/lang/String;

    invoke-static {v0, v1}, Lbl/ok;->a(Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_2d
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 194
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->o:Landroid/support/v7/widget/RecyclerView;

    .line 195
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->z:Z

    .line 196
    invoke-super {p0}, Lcom/bilibili/tv/ui/base/BaseActivity;->onDestroy()V

    .line 197
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 1248
    const-string v0, "event"

    invoke-static {p2, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1249
    const/16 v0, 0x17

    if-eq p1, v0, :cond_d

    const/16 v0, 0x42

    if-ne p1, v0, :cond_18

    :cond_d
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->y:Z

    if-eqz v0, :cond_18

    .line 1250
    sget-object v0, Lcom/bilibili/tv/ui/account/LoginActivity;->Companion:Lcom/bilibili/tv/ui/account/LoginActivity$a;

    const/16 v1, 0x2752

    invoke-virtual {v0, p0, v1}, Lcom/bilibili/tv/ui/account/LoginActivity$a;->a(Landroid/app/Activity;I)V

    .line 1252
    :cond_18
    invoke-super {p0, p1, p2}, Lcom/bilibili/tv/ui/base/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public final onLongClick(Landroid/view/View;)Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 535
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->u:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    .line 536
    const-string v0, "v"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 537
    invoke-static {p0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v1

    .line 538
    const-string v0, "BiliAccount.get(this)"

    invoke-static {v1, v0}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 539
    invoke-virtual {v1}, Lbl/mg;->a()Z

    move-result v0

    if-nez v0, :cond_25

    .line 540
    const v0, 0x7f0c0062

    invoke-static {p0, v0}, Lbl/lr;->a(Landroid/content/Context;I)V

    .line 541
    sget-object v0, Lcom/bilibili/tv/ui/account/LoginActivity;->Companion:Lcom/bilibili/tv/ui/account/LoginActivity$a;

    const/16 v1, 0x2753

    invoke-virtual {v0, p0, v1}, Lcom/bilibili/tv/ui/account/LoginActivity$a;->a(Landroid/app/Activity;I)V

    .line 554
    :cond_24
    :goto_24
    return v6

    .line 544
    :cond_25
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 545
    const v2, 0x7f080167

    if-ne v0, v2, :cond_32

    .line 546
    invoke-direct {p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->tripleVideo()V

    goto :goto_24

    .line 547
    :cond_32
    const v2, 0x7f08016a

    if-ne v0, v2, :cond_3c

    .line 548
    const/4 v0, 0x2

    invoke-direct {p0, v0, v6}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->coinVideo(II)V

    goto :goto_24

    .line 549
    :cond_3c
    const v2, 0x7f08014d

    if-ne v0, v2, :cond_24

    .line 550
    const-class v0, Lcom/bilibili/tv/api/favorite/BiliFavoriteVideoApiService;

    invoke-static {v0}, Lbl/vo;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/favorite/BiliFavoriteVideoApiService;

    .line 551
    invoke-virtual {v1}, Lbl/mg;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lbl/mg;->d()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v2, v1, v3}, Lcom/bilibili/tv/api/favorite/BiliFavoriteVideoApiService;->getStatedBoxList(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)Lbl/vp;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity$BiliFavoriteBoxResponse;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$BiliFavoriteBoxResponse;-><init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)V

    .line 552
    invoke-virtual {v0, v1}, Lbl/vp;->a(Lretrofit2/Callback;)V

    goto :goto_24
.end method

.method public onPostCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 610
    invoke-super {p0, p1}, Lcom/bilibili/tv/ui/base/BaseActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 611
    invoke-direct {p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->n()V

    .line 612
    return-void
.end method
