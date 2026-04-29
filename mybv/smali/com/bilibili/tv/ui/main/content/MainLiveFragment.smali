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

.field private static final URI_LIVE_CATEGORY:Ljava/lang/String; = "bilibili_yst://live_category"

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
    .line 27
    new-instance v0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bilibili/tv/ui/main/content/MainLiveFragment$Companion;-><init>(Lbl/bbg;)V

    sput-object v0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->Companion:Lcom/bilibili/tv/ui/main/content/MainLiveFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;-><init>()V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->liveList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/bilibili/tv/ui/main/content/MainLiveFragment;Landroid/content/Context;)Lcom/bilibili/tv/api/main/MainRecommendEx$Content;
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->createLiveCategoryEntry(Landroid/content/Context;)Lcom/bilibili/tv/api/main/MainRecommendEx$Content;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/bilibili/tv/ui/main/content/MainLiveFragment;Lcom/alibaba/fastjson/JSONObject;Lmybl/BiliLiveContent;Ljava/lang/String;)Lcom/bilibili/tv/api/main/MainRecommendEx$Content;
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3}, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->parseLiveItem(Lcom/alibaba/fastjson/JSONObject;Lmybl/BiliLiveContent;Ljava/lang/String;)Lcom/bilibili/tv/api/main/MainRecommendEx$Content;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$202(Lcom/bilibili/tv/ui/main/content/MainLiveFragment;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->liveList:Ljava/util/List;

    return-object p1
.end method

.method private createLiveCategoryEntry(Landroid/content/Context;)Lcom/bilibili/tv/api/main/MainRecommendEx$Content;
    .locals 2

    .prologue
    .line 123
    new-instance v0, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;

    invoke-direct {v0}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;-><init>()V

    .line 124
    const-string v1, "live_category_entry"

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->setCardType(Ljava/lang/String;)V

    .line 125
    const-string v1, "live_category"

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->setCardGoto(Ljava/lang/String;)V

    .line 126
    const v1, 0x7f0c00b4

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->setTitle(Ljava/lang/String;)V

    .line 127
    const-string v1, "bilibili_yst://live_category"

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->setUri(Ljava/lang/String;)V

    .line 128
    return-object v0
.end method

.method private parseLiveItem(Lcom/alibaba/fastjson/JSONObject;Lmybl/BiliLiveContent;Ljava/lang/String;)Lcom/bilibili/tv/api/main/MainRecommendEx$Content;
    .locals 8

    .prologue
    .line 132
    new-instance v0, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;

    invoke-direct {v0}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;-><init>()V

    .line 133
    const-string v1, "small_live"

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->setCardType(Ljava/lang/String;)V

    .line 134
    const-string v1, "live"

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->setCardGoto(Ljava/lang/String;)V

    .line 135
    const-string v1, "roomid"

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->setJumpId(Ljava/lang/Long;)V

    .line 136
    const-string v1, "cover"

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->setCover(Ljava/lang/String;)V

    .line 137
    const-string v1, "title"

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->setTitle(Ljava/lang/String;)V

    .line 138
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

    .line 139
    const-string v1, "uname"

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->setOwnerName(Ljava/lang/String;)V

    .line 140
    const-string v1, "online"

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v2

    .line 141
    neg-long v4, v2

    const-wide/16 v6, 0x1

    sub-long/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->setPubdate(J)V

    .line 142
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->setDuration(I)V

    .line 148
    const-string v1, "\u6211\u7684\u5173\u6ce8"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6f

    .line 149
    invoke-virtual {v0, p3}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->setBadge(Ljava/lang/String;)V

    .line 152
    :cond_6f
    const-string v1, "roomid"

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v1

    iput v1, p2, Lmybl/BiliLiveContent;->mRoomId:I

    .line 153
    const-string v1, "title"

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lmybl/BiliLiveContent;->mTitle:Ljava/lang/String;

    .line 154
    const-string v1, "cover"

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lmybl/BiliLiveContent;->mCover:Ljava/lang/String;

    .line 155
    const-string v1, "uname"

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lmybl/BiliLiveContent;->mUname:Ljava/lang/String;

    .line 156
    const-string v1, "face"

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lmybl/BiliLiveContent;->mFace:Ljava/lang/String;

    .line 157
    iput-wide v2, p2, Lmybl/BiliLiveContent;->mOnline:J

    .line 158
    const-string v1, "uid"

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p2, Lmybl/BiliLiveContent;->mUid:J

    .line 159
    const-string v1, "area_v2_name"

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lmybl/BiliLiveContent;->mArea:Ljava/lang/String;

    .line 160
    const-string v1, "area_v2_id"

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v1

    iput v1, p2, Lmybl/BiliLiveContent;->mAreaId:I

    .line 162
    const-string v1, "verify"

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 163
    if-eqz v1, :cond_c1

    .line 164
    const-string v2, "desc"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lmybl/BiliLiveContent;->mCorner:Ljava/lang/String;

    .line 167
    :cond_c1
    return-object v0
.end method


# virtual methods
.method public a(Landroid/support/v7/widget/RecyclerView;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 237
    invoke-super {p0, p1, p2}, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;->a(Landroid/support/v7/widget/RecyclerView;Landroid/os/Bundle;)V

    .line 238
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->adapter:Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$VideoListAdapter;

    if-eqz v0, :cond_1b

    .line 240
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lbl/abd;->get_home_column(Landroid/content/Context;)I

    move-result v0

    .line 241
    new-instance v1, Lcom/bilibili/tv/ui/main/content/MainLiveFragment$1;

    invoke-direct {v1, p0, p0, p0, v0}, Lcom/bilibili/tv/ui/main/content/MainLiveFragment$1;-><init>(Lcom/bilibili/tv/ui/main/content/MainLiveFragment;Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;Lcom/bilibili/tv/ui/main/content/MainLiveFragment;I)V

    iput-object v1, p0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->adapter:Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$VideoListAdapter;

    .line 287
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->adapter:Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$VideoListAdapter;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 289
    :cond_1b
    return-void
.end method

.method protected fetchData(Z)V
    .locals 2

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->isLoadingMore:Z

    if-eqz v0, :cond_5

    .line 86
    :goto_4
    return-void

    .line 79
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->isLoadingMore:Z

    .line 81
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v0

    invoke-static {v0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v0

    .line 82
    invoke-static {v0}, Lmybl/CookieUtil;->getFullCookieWithDevice(Lbl/mg;)Ljava/lang/String;

    move-result-object v1

    .line 83
    const-class v0, Lmybl/MyBiliApiService;

    invoke-static {v0}, Lbl/vo;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmybl/MyBiliApiService;

    .line 84
    invoke-interface {v0, v1}, Lmybl/MyBiliApiService;->getLiveList(Ljava/lang/String;)Lbl/vp;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/main/content/MainLiveFragment$LiveResponse;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/main/content/MainLiveFragment$LiveResponse;-><init>(Lcom/bilibili/tv/ui/main/content/MainLiveFragment;)V

    .line 85
    invoke-virtual {v0, v1}, Lbl/vp;->a(Lretrofit2/Callback;)V

    goto :goto_4
.end method

.method protected getClickEventName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    const-string v0, "ott-platform.home.live.0.click"

    return-object v0
.end method

.method protected getColumnCount()I
    .locals 1

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lbl/abd;->get_home_column(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method protected getCoverUrl(I)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 114
    add-int/lit8 v0, p1, -0x1

    .line 115
    if-ltz v0, :cond_1c

    iget-object v2, p0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->liveList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1c

    .line 116
    iget-object v2, p0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->liveList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmybl/BiliLiveContent;

    .line 117
    if-eqz v0, :cond_1a

    iget-object v0, v0, Lmybl/BiliLiveContent;->mCover:Ljava/lang/String;

    .line 119
    :goto_19
    return-object v0

    :cond_1a
    move-object v0, v1

    .line 117
    goto :goto_19

    :cond_1c
    move-object v0, v1

    .line 119
    goto :goto_19
.end method

.method public getLiveVideos()V
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->fetchData(Z)V

    .line 71
    return-void
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    const-string v0, "LiveRecommend"

    return-object v0
.end method

.method protected getPageViewEvent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    const-string v0, "tv_home_live_pageview"

    return-object v0
.end method

.method protected hideBottomInfo()Z
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x1

    return v0
.end method

.method protected onSmallCardClick(Landroid/view/View;Ljava/lang/String;I)V
    .locals 4

    .prologue
    .line 90
    const-string v0, "bilibili_yst://live_category"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 91
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lbl/adl;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    .line 92
    if-eqz v0, :cond_15

    .line 93
    invoke-static {v0}, Lcom/bilibili/tv/ui/live/LiveActivity;->a(Landroid/content/Context;)V

    .line 110
    :cond_15
    :goto_15
    return-void

    .line 98
    :cond_16
    add-int/lit8 v1, p3, -0x1

    .line 99
    if-ltz v1, :cond_15

    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->liveList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_15

    .line 100
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->liveList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmybl/BiliLiveContent;

    .line 101
    if-eqz v0, :cond_15

    .line 102
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lbl/adl;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v2

    .line 103
    if-eqz v2, :cond_15

    .line 104
    iget-object v3, p0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->liveList:Ljava/util/List;

    sput-object v3, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->lives:Ljava/util/List;

    .line 105
    sput v1, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->live_index:I

    .line 106
    invoke-static {v2, v0}, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->a(Landroid/content/Context;Lmybl/BiliLiveContent;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_15
.end method
