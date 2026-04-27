.class public final Lcom/bilibili/tv/ui/main/content/MainHotFragment;
.super Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;
.source "MainHotFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bilibili/tv/ui/main/content/MainHotFragment$HotResponse;,
        Lcom/bilibili/tv/ui/main/content/MainHotFragment$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/bilibili/tv/ui/main/content/MainHotFragment$Companion;

.field public static _this:Lcom/bilibili/tv/ui/main/content/MainHotFragment;


# instance fields
.field private popularPage:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 24
    new-instance v0, Lcom/bilibili/tv/ui/main/content/MainHotFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bilibili/tv/ui/main/content/MainHotFragment$Companion;-><init>(Lbl/bbg;)V

    sput-object v0, Lcom/bilibili/tv/ui/main/content/MainHotFragment;->Companion:Lcom/bilibili/tv/ui/main/content/MainHotFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;-><init>()V

    .line 26
    const/4 v0, 0x1

    iput v0, p0, Lcom/bilibili/tv/ui/main/content/MainHotFragment;->popularPage:I

    return-void
.end method

.method static synthetic access$000(Lcom/bilibili/tv/ui/main/content/MainHotFragment;Lcom/alibaba/fastjson/JSONObject;)Lcom/bilibili/tv/api/main/MainRecommendEx$Content;
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/main/content/MainHotFragment;->parseHotItem(Lcom/alibaba/fastjson/JSONObject;)Lcom/bilibili/tv/api/main/MainRecommendEx$Content;

    move-result-object v0

    return-object v0
.end method

.method private parseHotItem(Lcom/alibaba/fastjson/JSONObject;)Lcom/bilibili/tv/api/main/MainRecommendEx$Content;
    .locals 4

    .prologue
    .line 96
    new-instance v0, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;

    invoke-direct {v0}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;-><init>()V

    .line 97
    const-string v1, "small_popular_ugc"

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->setCardType(Ljava/lang/String;)V

    .line 98
    const-string v1, "av"

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->setCardGoto(Ljava/lang/String;)V

    .line 99
    const-string v1, "aid"

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->setJumpId(Ljava/lang/Long;)V

    .line 100
    const-string v1, "pic"

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->setCover(Ljava/lang/String;)V

    .line 101
    const-string v1, "title"

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->setTitle(Ljava/lang/String;)V

    .line 102
    const-string v1, "pubdate"

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->setPubdate(J)V

    .line 103
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bilibili_yst://video/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "aid"

    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->setUri(Ljava/lang/String;)V

    .line 104
    const-string v1, "duration"

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->setDuration(I)V

    .line 106
    const-string v1, "owner"

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 107
    if-eqz v1, :cond_6d

    .line 108
    const-string v2, "name"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->setOwnerName(Ljava/lang/String;)V

    .line 111
    :cond_6d
    const-string v1, "stat"

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 112
    if-eqz v1, :cond_87

    .line 113
    const-string v2, "view"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->setPlay(I)V

    .line 114
    const-string v2, "danmaku"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->setDanmaku(I)V

    .line 117
    :cond_87
    return-object v0
.end method


# virtual methods
.method protected fetchData(Z)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 67
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/main/content/MainHotFragment;->isLoadingMore:Z

    if-eqz v0, :cond_8

    if-eqz p1, :cond_8

    .line 82
    :goto_7
    return-void

    .line 71
    :cond_8
    if-nez p1, :cond_27

    .line 72
    iput v1, p0, Lcom/bilibili/tv/ui/main/content/MainHotFragment;->popularPage:I

    .line 73
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/main/content/MainHotFragment;->hasMoreData:Z

    .line 79
    :goto_e
    const-class v0, Lmybl/MyBiliApiService;

    invoke-static {v0}, Lbl/vo;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmybl/MyBiliApiService;

    iget v1, p0, Lcom/bilibili/tv/ui/main/content/MainHotFragment;->popularPage:I

    const/16 v2, 0x14

    .line 80
    invoke-interface {v0, v1, v2}, Lmybl/MyBiliApiService;->getPopular(II)Lbl/vp;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/main/content/MainHotFragment$HotResponse;

    invoke-direct {v1, p0, p1}, Lcom/bilibili/tv/ui/main/content/MainHotFragment$HotResponse;-><init>(Lcom/bilibili/tv/ui/main/content/MainHotFragment;Z)V

    .line 81
    invoke-virtual {v0, v1}, Lbl/vp;->a(Lretrofit2/Callback;)V

    goto :goto_7

    .line 75
    :cond_27
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/main/content/MainHotFragment;->isLoadingMore:Z

    .line 76
    iget v0, p0, Lcom/bilibili/tv/ui/main/content/MainHotFragment;->popularPage:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/bilibili/tv/ui/main/content/MainHotFragment;->popularPage:I

    goto :goto_e
.end method

.method protected getClickEventName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    const-string v0, "ott-platform.home.hot.0.click"

    return-object v0
.end method

.method protected getColumnCount()I
    .locals 1

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/main/content/MainHotFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lbl/abd;->get_home_column(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public getHotVideos()V
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/main/content/MainHotFragment;->fetchData(Z)V

    .line 63
    return-void
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    const-string v0, "HotRecommend"

    return-object v0
.end method

.method protected getPageViewEvent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    const-string v0, "tv_home_hot_pageview"

    return-object v0
.end method

.method protected onSmallCardClick(Landroid/view/View;Ljava/lang/String;I)V
    .locals 5

    .prologue
    .line 86
    const-string v0, "bilibili_yst://video"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "bilibili://video"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 87
    :cond_10
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    .line 88
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lbl/adl;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v2

    .line 89
    if-eqz v2, :cond_2f

    .line 90
    sget-object v3, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->Companion:Lcom/bilibili/tv/ui/video/VideoDetailActivity$a;

    invoke-virtual {p0, p3}, Lcom/bilibili/tv/ui/main/content/MainHotFragment;->getCoverUrl(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v0, v1, v4}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$a;->a(Landroid/content/Context;JLjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 93
    :cond_2f
    return-void
.end method
