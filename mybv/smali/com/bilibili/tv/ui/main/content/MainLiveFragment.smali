.class public final Lcom/bilibili/tv/ui/main/content/MainLiveFragment;
.super Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;
.source "MainLiveFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bilibili/tv/ui/main/content/MainLiveFragment$LiveResponse;,
        Lcom/bilibili/tv/ui/main/content/MainLiveFragment$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/bilibili/tv/ui/main/content/MainLiveFragment$Companion;

.field public static _this:Lcom/bilibili/tv/ui/main/content/MainLiveFragment;


# instance fields
.field private liveList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lmybl/BiliLiveContent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 22
    new-instance v0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bilibili/tv/ui/main/content/MainLiveFragment$Companion;-><init>(Lbl/bbg;)V

    sput-object v0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->Companion:Lcom/bilibili/tv/ui/main/content/MainLiveFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->liveList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/bilibili/tv/ui/main/content/MainLiveFragment;Lcom/alibaba/fastjson/JSONObject;Lmybl/BiliLiveContent;Ljava/lang/String;)Lcom/bilibili/tv/api/main/MainRecommendEx$Content;
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0, p1, p2, p3}, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->parseLiveItem(Lcom/alibaba/fastjson/JSONObject;Lmybl/BiliLiveContent;Ljava/lang/String;)Lcom/bilibili/tv/api/main/MainRecommendEx$Content;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$102(Lcom/bilibili/tv/ui/main/content/MainLiveFragment;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 20
    iput-object p1, p0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->liveList:Ljava/util/List;

    return-object p1
.end method

.method private parseLiveItem(Lcom/alibaba/fastjson/JSONObject;Lmybl/BiliLiveContent;Ljava/lang/String;)Lcom/bilibili/tv/api/main/MainRecommendEx$Content;
    .locals 8

    .prologue
    .line 108
    new-instance v0, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;

    invoke-direct {v0}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;-><init>()V

    .line 109
    const-string v1, "small_live"

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->setCardType(Ljava/lang/String;)V

    .line 110
    const-string v1, "live"

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->setCardGoto(Ljava/lang/String;)V

    .line 111
    const-string v1, "roomid"

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->setJumpId(Ljava/lang/Long;)V

    .line 112
    const-string v1, "cover"

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->setCover(Ljava/lang/String;)V

    .line 113
    const-string v1, "title"

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->setTitle(Ljava/lang/String;)V

    .line 114
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bilibili_yst://live/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "roomid"

    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->setUri(Ljava/lang/String;)V

    .line 115
    const-string v1, "uname"

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->setOwnerName(Ljava/lang/String;)V

    .line 116
    const-string v1, "online"

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v2

    .line 117
    neg-long v4, v2

    const-wide/16 v6, 0x1

    sub-long/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->setPubdate(J)V

    .line 118
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->setDuration(I)V

    .line 124
    const-string v1, "\u6211\u7684\u5173\u6ce8"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6f

    .line 125
    invoke-virtual {v0, p3}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->setBadge(Ljava/lang/String;)V

    .line 128
    :cond_6f
    const-string v1, "roomid"

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v1

    iput v1, p2, Lmybl/BiliLiveContent;->mRoomId:I

    .line 129
    const-string v1, "title"

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lmybl/BiliLiveContent;->mTitle:Ljava/lang/String;

    .line 130
    const-string v1, "cover"

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lmybl/BiliLiveContent;->mCover:Ljava/lang/String;

    .line 131
    const-string v1, "uname"

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lmybl/BiliLiveContent;->mUname:Ljava/lang/String;

    .line 132
    const-string v1, "face"

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lmybl/BiliLiveContent;->mFace:Ljava/lang/String;

    .line 133
    iput-wide v2, p2, Lmybl/BiliLiveContent;->mOnline:J

    .line 134
    const-string v1, "uid"

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p2, Lmybl/BiliLiveContent;->mUid:J

    .line 135
    const-string v1, "area_v2_name"

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lmybl/BiliLiveContent;->mArea:Ljava/lang/String;

    .line 136
    const-string v1, "area_v2_id"

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v1

    iput v1, p2, Lmybl/BiliLiveContent;->mAreaId:I

    .line 138
    const-string v1, "verify"

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 139
    if-eqz v1, :cond_c1

    .line 140
    const-string v2, "desc"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lmybl/BiliLiveContent;->mCorner:Ljava/lang/String;

    .line 143
    :cond_c1
    return-object v0
.end method


# virtual methods
.method protected fetchData(Z)V
    .locals 2

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->isLoadingMore:Z

    if-eqz v0, :cond_5

    .line 81
    :goto_4
    return-void

    .line 74
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->isLoadingMore:Z

    .line 76
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v0

    invoke-static {v0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v0

    .line 77
    invoke-static {v0}, Lmybl/CookieUtil;->getFullCookieWithDevice(Lbl/mg;)Ljava/lang/String;

    move-result-object v1

    .line 78
    const-class v0, Lmybl/MyBiliApiService;

    invoke-static {v0}, Lbl/vo;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmybl/MyBiliApiService;

    .line 79
    invoke-interface {v0, v1}, Lmybl/MyBiliApiService;->getLiveList(Ljava/lang/String;)Lbl/vp;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/main/content/MainLiveFragment$LiveResponse;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/main/content/MainLiveFragment$LiveResponse;-><init>(Lcom/bilibili/tv/ui/main/content/MainLiveFragment;)V

    .line 80
    invoke-virtual {v0, v1}, Lbl/vp;->a(Lretrofit2/Callback;)V

    goto :goto_4
.end method

.method protected getClickEventName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    const-string v0, "ott-platform.home.live.0.click"

    return-object v0
.end method

.method protected getColumnCount()I
    .locals 1

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lbl/abd;->get_home_column(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method protected getCoverUrl(I)Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 100
    if-ltz p1, :cond_1a

    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->liveList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1a

    .line 101
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->liveList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmybl/BiliLiveContent;

    .line 102
    if-eqz v0, :cond_18

    iget-object v0, v0, Lmybl/BiliLiveContent;->mCover:Ljava/lang/String;

    .line 104
    :goto_17
    return-object v0

    :cond_18
    move-object v0, v1

    .line 102
    goto :goto_17

    :cond_1a
    move-object v0, v1

    .line 104
    goto :goto_17
.end method

.method public getLiveVideos()V
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->fetchData(Z)V

    .line 66
    return-void
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    const-string v0, "LiveRecommend"

    return-object v0
.end method

.method protected getPageViewEvent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    const-string v0, "tv_home_live_pageview"

    return-object v0
.end method

.method protected hideBottomInfo()Z
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x1

    return v0
.end method

.method protected onSmallCardClick(Landroid/view/View;Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 85
    if-ltz p3, :cond_2b

    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->liveList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p3, v0, :cond_2b

    .line 86
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->liveList:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmybl/BiliLiveContent;

    .line 87
    if-eqz v0, :cond_2b

    .line 88
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lbl/adl;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v1

    .line 89
    if-eqz v1, :cond_2b

    .line 90
    iget-object v2, p0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->liveList:Ljava/util/List;

    sput-object v2, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->lives:Ljava/util/List;

    .line 91
    sput p3, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->live_index:I

    .line 92
    invoke-static {v1, v0}, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->a(Landroid/content/Context;Lmybl/BiliLiveContent;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 96
    :cond_2b
    return-void
.end method
