.class public final Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;
.super Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;
.source "MainRecommendFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$RecommendsResponse;,
        Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$Companion;,
        Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$LegacyFallbackResponse;,
        Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$LegacyRecommendResponse;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$Companion;

.field public static _this:Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;

.field private static appFallbackToastShown:Z

.field private static appFeedIdx:J

.field public static fresh_idx:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 31
    new-instance v0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$Companion;-><init>(Lbl/bbg;)V

    sput-object v0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->Companion:Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$Companion;

    .line 33
    sput v2, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->fresh_idx:I

    .line 35
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->appFeedIdx:J

    .line 37
    sput-boolean v2, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->appFallbackToastShown:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;-><init>()V

    return-void
.end method

.method static synthetic access$002(J)J
    .locals 0

    .prologue
    .line 29
    sput-wide p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->appFeedIdx:J

    return-wide p0
.end method

.method static synthetic access$100(Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;Lcom/alibaba/fastjson/JSONObject;)Lcom/bilibili/tv/api/main/MainRecommendEx$Content;
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->parseRecommendItem(Lcom/alibaba/fastjson/JSONObject;)Lcom/bilibili/tv/api/main/MainRecommendEx$Content;

    move-result-object v0

    return-object v0
.end method

.method private loadAppFeed(ZZ)V
    .locals 8

    .prologue
    .line 147
    sget-wide v2, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->appFeedIdx:J

    .line 148
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v0

    invoke-static {v0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v0

    invoke-virtual {v0}, Lbl/mg;->e()Ljava/lang/String;

    move-result-object v4

    .line 149
    new-instance v7, Ljava/lang/Thread;

    new-instance v0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$1;

    move-object v1, p0

    move v5, p2

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$1;-><init>(Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;JLjava/lang/String;ZZ)V

    const-string v1, "AppRecommendFetch"

    invoke-direct {v7, v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 207
    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    .line 208
    return-void
.end method

.method private parseRecommendItem(Lcom/alibaba/fastjson/JSONObject;)Lcom/bilibili/tv/api/main/MainRecommendEx$Content;
    .locals 4

    .prologue
    .line 240
    new-instance v0, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;

    invoke-direct {v0}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;-><init>()V

    .line 241
    const-string v1, "small_popular_ugc"

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->setCardType(Ljava/lang/String;)V

    .line 242
    const-string v1, "av"

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->setCardGoto(Ljava/lang/String;)V

    .line 243
    const-string v1, "id"

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->setJumpId(Ljava/lang/Long;)V

    .line 244
    const-string v1, "pic"

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->setCover(Ljava/lang/String;)V

    .line 245
    const-string v1, "title"

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->setTitle(Ljava/lang/String;)V

    .line 246
    const-string v1, "pubdate"

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->setPubdate(J)V

    .line 247
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bilibili_yst://video/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->setUri(Ljava/lang/String;)V

    .line 248
    const-string v1, "duration"

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->setDuration(I)V

    .line 250
    const-string v1, "owner"

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 251
    if-eqz v1, :cond_6d

    .line 252
    const-string v2, "name"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->setOwnerName(Ljava/lang/String;)V

    .line 255
    :cond_6d
    const-string v1, "stat"

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 256
    if-eqz v1, :cond_87

    .line 257
    const-string v2, "view"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->setPlay(I)V

    .line 258
    const-string v2, "danmaku"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->setDanmaku(I)V

    .line 261
    :cond_87
    return-object v0
.end method


# virtual methods
.method protected fetchData(Z)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 87
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->isLoadingMore:Z

    if-eqz v0, :cond_9

    if-eqz p1, :cond_9

    .line 118
    :goto_8
    return-void

    .line 91
    :cond_9
    if-nez p1, :cond_35

    .line 92
    iput-boolean v3, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->hasMoreData:Z

    .line 98
    :goto_d
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lbl/abd;->get_recommend_api_type(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v3, :cond_51

    .line 99
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v0

    invoke-static {v0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v0

    invoke-virtual {v0}, Lbl/mg;->e()Ljava/lang/String;

    move-result-object v0

    .line 100
    if-eqz v0, :cond_38

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_38

    .line 101
    if-nez p1, :cond_31

    .line 102
    const-wide/16 v2, 0x0

    sput-wide v2, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->appFeedIdx:J

    .line 104
    :cond_31
    invoke-direct {p0, p1, v1}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->loadAppFeed(ZZ)V

    goto :goto_8

    .line 94
    :cond_35
    iput-boolean v3, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->isLoadingMore:Z

    goto :goto_d

    .line 107
    :cond_38
    sget-boolean v0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->appFallbackToastShown:Z

    if-nez v0, :cond_51

    invoke-virtual {p0}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_51

    .line 108
    sput-boolean v3, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->appFallbackToastShown:Z

    .line 109
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v2, "App\u4e2a\u6027\u5316\u63a8\u8350\u9700\u767b\u5f55\u540e\u751f\u6548\uff0c\u5df2\u5207\u6362\u5230Web\u63a8\u8350"

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 113
    :cond_51
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v0

    invoke-static {v0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v0

    .line 114
    invoke-static {v0}, Lmybl/CookieUtil;->getFullCookieWithDevice(Lbl/mg;)Ljava/lang/String;

    move-result-object v2

    .line 115
    const-class v0, Lmybl/MyBiliApiService;

    invoke-static {v0}, Lbl/vo;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmybl/MyBiliApiService;

    const/16 v3, 0x14

    .line 116
    if-eqz v2, :cond_6f

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_75

    :cond_6f
    sget v1, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->fresh_idx:I

    add-int/lit8 v4, v1, 0x1

    sput v4, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->fresh_idx:I

    :cond_75
    invoke-interface {v0, v3, v1, v2}, Lmybl/MyBiliApiService;->recommendVideos(IILjava/lang/String;)Lbl/vp;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$RecommendsResponse;

    invoke-direct {v1, p0, p1}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$RecommendsResponse;-><init>(Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;Z)V

    .line 117
    invoke-virtual {v0, v1}, Lbl/vp;->a(Lretrofit2/Callback;)V

    goto :goto_8
.end method

.method protected fetchDataForPrefetch()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x1

    .line 122
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->adapter:Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$VideoListAdapter;

    if-nez v0, :cond_9

    .line 123
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->prefetching:Z

    .line 140
    :goto_8
    return-void

    .line 127
    :cond_9
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lbl/abd;->get_recommend_api_type(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v5, :cond_2b

    .line 128
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v0

    invoke-static {v0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v0

    invoke-virtual {v0}, Lbl/mg;->e()Ljava/lang/String;

    move-result-object v0

    .line 129
    if-eqz v0, :cond_2b

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2b

    .line 130
    invoke-direct {p0, v1, v5}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->loadAppFeed(ZZ)V

    goto :goto_8

    .line 135
    :cond_2b
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v0

    invoke-static {v0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v0

    .line 136
    invoke-static {v0}, Lmybl/CookieUtil;->getFullCookieWithDevice(Lbl/mg;)Ljava/lang/String;

    move-result-object v2

    .line 137
    const-class v0, Lmybl/MyBiliApiService;

    invoke-static {v0}, Lbl/vo;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmybl/MyBiliApiService;

    const/16 v3, 0x14

    .line 138
    if-eqz v2, :cond_49

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4b

    :cond_49
    sget v1, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->fresh_idx:I

    :cond_4b
    invoke-interface {v0, v3, v1, v2}, Lmybl/MyBiliApiService;->recommendVideos(IILjava/lang/String;)Lbl/vp;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$RecommendsResponse;

    invoke-direct {v1, p0, v5, v5}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$RecommendsResponse;-><init>(Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;ZZ)V

    .line 139
    invoke-virtual {v0, v1}, Lbl/vp;->a(Lretrofit2/Callback;)V

    goto :goto_8
.end method

.method protected getClickEventName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    const-string v0, "ott-platform.home.recommend.0.click"

    return-object v0
.end method

.method protected getColumnCount()I
    .locals 1

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lbl/abd;->get_home_column(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    const-string v0, "MainRecommend"

    return-object v0
.end method

.method protected getPageViewEvent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    const-string v0, "tv_home_recommend_pageview"

    return-object v0
.end method

.method public getRecommendVideos()V
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->fetchData(Z)V

    .line 83
    return-void
.end method

.method protected onBigCardClick(Landroid/view/View;Ljava/lang/String;I)V
    .locals 5

    .prologue
    .line 212
    const-string v0, "bilibili_yst://pgc"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 213
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    .line 214
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lbl/adl;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v4

    .line 215
    if-eqz v4, :cond_40

    .line 216
    const/4 v1, 0x0

    .line 217
    if-ltz p3, :cond_41

    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->ogvList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p3, v0, :cond_41

    .line 218
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->ogvList:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;

    .line 219
    if-eqz v0, :cond_41

    .line 220
    invoke-virtual {v0}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->getCover()Ljava/lang/String;

    move-result-object v0

    .line 223
    :goto_33
    sget-object v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->Companion:Lcom/bilibili/tv/ui/video/VideoDetailActivity$a;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v2, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 226
    :cond_40
    return-void

    :cond_41
    move-object v0, v1

    goto :goto_33
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->_this:Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;

    if-ne v0, p0, :cond_7

    .line 71
    const/4 v0, 0x0

    sput-object v0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->_this:Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;

    .line 73
    :cond_7
    invoke-super {p0}, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;->onDestroy()V

    .line 74
    return-void
.end method

.method protected onSmallCardClick(Landroid/view/View;Ljava/lang/String;I)V
    .locals 5

    .prologue
    .line 230
    const-string v0, "bilibili_yst://video"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "bilibili://video"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 231
    :cond_10
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    .line 232
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lbl/adl;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v2

    .line 233
    if-eqz v2, :cond_2f

    .line 234
    sget-object v3, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->Companion:Lcom/bilibili/tv/ui/video/VideoDetailActivity$a;

    invoke-virtual {p0, p3}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->getCoverUrl(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v0, v1, v4}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$a;->a(Landroid/content/Context;JLjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 237
    :cond_2f
    return-void
.end method
