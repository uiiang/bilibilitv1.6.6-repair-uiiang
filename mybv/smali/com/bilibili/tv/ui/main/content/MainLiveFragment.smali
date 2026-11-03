.class public final Lcom/bilibili/tv/ui/main/content/MainLiveFragment;
.super Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;
.source "MainLiveFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bilibili/tv/ui/main/content/MainLiveFragment$LiveResponse;,
        Lcom/bilibili/tv/ui/main/content/MainLiveFragment$LiveBadgeInfo;,
        Lcom/bilibili/tv/ui/main/content/MainLiveFragment$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/bilibili/tv/ui/main/content/MainLiveFragment$Companion;

.field private static final LIVE_PAGE_SIZE:I = 0xf

.field private static final MAX_LIVE_PAGE:I = 0x3c

.field private static final MODULE_TITLE_FOLLOW:Ljava/lang/String; = "\u6211\u7684\u5173\u6ce8"

.field private static final URI_LIVE_CATEGORY:Ljava/lang/String; = "bilibili_yst://live_category"

.field public static _this:Lcom/bilibili/tv/ui/main/content/MainLiveFragment;


# instance fields
.field private liveBadgeColors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

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

.field private livePage:I

.field private final liveRoomIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private requestToken:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 42
    new-instance v0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bilibili/tv/ui/main/content/MainLiveFragment$Companion;-><init>(Lbl/bbg;)V

    sput-object v0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->Companion:Lcom/bilibili/tv/ui/main/content/MainLiveFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;-><init>()V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->liveList:Ljava/util/List;

    .line 47
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->liveRoomIds:Ljava/util/Set;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->liveBadgeColors:Ljava/util/List;

    .line 53
    const/4 v0, 0x1

    iput v0, p0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->livePage:I

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->requestToken:I

    return-void
.end method

.method static synthetic access$100(Lcom/bilibili/tv/ui/main/content/MainLiveFragment;)I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->requestToken:I

    return v0
.end method

.method static synthetic access$200(Lcom/bilibili/tv/ui/main/content/MainLiveFragment;Lcom/alibaba/fastjson/JSONArray;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)I
    .locals 1

    .prologue
    .line 29
    invoke-direct/range {p0 .. p5}, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->collectRooms(Lcom/alibaba/fastjson/JSONArray;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/bilibili/tv/ui/main/content/MainLiveFragment;)I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->livePage:I

    return v0
.end method

.method static synthetic access$302(Lcom/bilibili/tv/ui/main/content/MainLiveFragment;I)I
    .locals 0

    .prologue
    .line 29
    iput p1, p0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->livePage:I

    return p1
.end method

.method static synthetic access$400(Lcom/bilibili/tv/ui/main/content/MainLiveFragment;)Ljava/util/List;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->liveList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$402(Lcom/bilibili/tv/ui/main/content/MainLiveFragment;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->liveList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$500(Lcom/bilibili/tv/ui/main/content/MainLiveFragment;)Ljava/util/List;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->liveBadgeColors:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$502(Lcom/bilibili/tv/ui/main/content/MainLiveFragment;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->liveBadgeColors:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$600(Lcom/bilibili/tv/ui/main/content/MainLiveFragment;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->liveRoomIds:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$700(Lcom/bilibili/tv/ui/main/content/MainLiveFragment;Landroid/content/Context;)Lcom/bilibili/tv/api/main/MainRecommendEx$Content;
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->createLiveCategoryEntry(Landroid/content/Context;)Lcom/bilibili/tv/api/main/MainRecommendEx$Content;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/bilibili/tv/ui/main/content/MainLiveFragment;Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$SmallCardViewHolder;I)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->bindLiveExtras(Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$SmallCardViewHolder;I)V

    return-void
.end method

.method private alignBadgeToLeft(Landroid/widget/TextView;)V
    .locals 3

    .prologue
    .line 520
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 521
    instance-of v1, v0, Landroid/widget/FrameLayout$LayoutParams;

    if-nez v1, :cond_9

    .line 530
    :cond_8
    :goto_8
    return-void

    .line 524
    :cond_9
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 525
    const/16 v1, 0x33

    .line 526
    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    if-eq v2, v1, :cond_8

    .line 527
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 528
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_8
.end method

.method private bindLiveExtras(Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$SmallCardViewHolder;I)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 474
    add-int/lit8 v3, p2, -0x1

    .line 475
    if-ltz v3, :cond_10

    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->liveList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v3, v0, :cond_11

    .line 512
    :cond_10
    :goto_10
    return-void

    .line 479
    :cond_11
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$SmallCardViewHolder;->getBadgeView()Landroid/widget/TextView;

    move-result-object v4

    .line 480
    if-eqz v4, :cond_42

    .line 481
    invoke-direct {p0, v4}, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->alignBadgeToLeft(Landroid/widget/TextView;)V

    .line 483
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->ugcList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;

    .line 484
    if-eqz v0, :cond_5e

    invoke-virtual {v0}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->getBadge()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 485
    :goto_29
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->liveBadgeColors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_60

    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->liveBadgeColors:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 486
    :goto_39
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_62

    .line 488
    invoke-static {v4, v1, v0, v6}, Lcom/bilibili/tv/ui/video/widget/VideoBadgeStyler;->applyLeft(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 497
    :cond_42
    :goto_42
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$SmallCardViewHolder;->getBottomInfoLayout()Landroid/view/View;

    move-result-object v1

    .line 498
    if-eqz v1, :cond_10

    .line 501
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->liveList:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmybl/BiliLiveContent;

    .line 502
    if-eqz v0, :cond_54

    iget-object v2, v0, Lmybl/BiliLiveContent;->mArea:Ljava/lang/String;

    .line 503
    :cond_54
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_72

    .line 504
    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_10

    :cond_5e
    move-object v1, v2

    .line 484
    goto :goto_29

    :cond_60
    move-object v0, v2

    .line 485
    goto :goto_39

    .line 489
    :cond_62
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6e

    .line 491
    const-string v0, "#FF664499"

    invoke-static {v4, v1, v0, v6}, Lcom/bilibili/tv/ui/video/widget/VideoBadgeStyler;->applyLeft(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_42

    .line 493
    :cond_6e
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_42

    .line 507
    :cond_72
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 508
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$SmallCardViewHolder;->getPlayView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 509
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$SmallCardViewHolder;->getDanmakuView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 510
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$SmallCardViewHolder;->getDurationView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 511
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$SmallCardViewHolder;->getDurationView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_10
.end method

.method private collectRooms(Lcom/alibaba/fastjson/JSONArray;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/JSONArray;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/tv/api/main/MainRecommendEx$Content;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lmybl/BiliLiveContent;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 225
    if-nez p1, :cond_4

    .line 257
    :goto_3
    return v1

    :cond_4
    move v0, v1

    move v2, v1

    .line 229
    :goto_6
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_62

    .line 230
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 231
    if-eqz v1, :cond_64

    const-string v3, "is_ad"

    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/JSONObject;->getBooleanValue(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1f

    move v1, v2

    .line 229
    :goto_1b
    add-int/lit8 v0, v0, 0x1

    move v2, v1

    goto :goto_6

    .line 234
    :cond_1f
    const-string v3, "roomid"

    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v3

    .line 236
    if-lez v3, :cond_64

    iget-object v4, p0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->liveRoomIds:Ljava/util/Set;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_35

    move v1, v2

    .line 237
    goto :goto_1b

    .line 239
    :cond_35
    new-instance v3, Lmybl/BiliLiveContent;

    invoke-direct {v3}, Lmybl/BiliLiveContent;-><init>()V

    .line 240
    invoke-direct {p0, v1, v3}, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->parseLiveItem(Lcom/alibaba/fastjson/JSONObject;Lmybl/BiliLiveContent;)Lcom/bilibili/tv/api/main/MainRecommendEx$Content;

    move-result-object v4

    .line 242
    invoke-direct {p0, v1}, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->parsePendantBadge(Lcom/alibaba/fastjson/JSONObject;)Lcom/bilibili/tv/ui/main/content/MainLiveFragment$LiveBadgeInfo;

    move-result-object v1

    .line 243
    if-eqz v1, :cond_58

    .line 244
    iget-object v5, v1, Lcom/bilibili/tv/ui/main/content/MainLiveFragment$LiveBadgeInfo;->text:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->setBadge(Ljava/lang/String;)V

    .line 245
    iget-object v1, v1, Lcom/bilibili/tv/ui/main/content/MainLiveFragment$LiveBadgeInfo;->bgColor:Ljava/lang/String;

    invoke-interface {p5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 253
    :goto_4e
    invoke-interface {p3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 254
    invoke-interface {p4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 255
    add-int/lit8 v2, v2, 0x1

    move v1, v2

    goto :goto_1b

    .line 247
    :cond_58
    if-eqz p2, :cond_5d

    .line 248
    invoke-virtual {v4, p2}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->setBadge(Ljava/lang/String;)V

    .line 250
    :cond_5d
    const/4 v1, 0x0

    invoke-interface {p5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4e

    :cond_62
    move v1, v2

    .line 257
    goto :goto_3

    :cond_64
    move v1, v2

    goto :goto_1b
.end method

.method private createLiveCategoryEntry(Landroid/content/Context;)Lcom/bilibili/tv/api/main/MainRecommendEx$Content;
    .locals 2

    .prologue
    .line 175
    new-instance v0, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;

    invoke-direct {v0}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;-><init>()V

    .line 176
    const-string v1, "live_category_entry"

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->setCardType(Ljava/lang/String;)V

    .line 177
    const-string v1, "live_category"

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->setCardGoto(Ljava/lang/String;)V

    .line 178
    const v1, 0x7f0c00b4

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->setTitle(Ljava/lang/String;)V

    .line 179
    const-string v1, "bilibili_yst://live_category"

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->setUri(Ljava/lang/String;)V

    .line 180
    return-object v0
.end method

.method private fillBadgeInfo(Lcom/alibaba/fastjson/JSONObject;)Lcom/bilibili/tv/ui/main/content/MainLiveFragment$LiveBadgeInfo;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 306
    if-nez p1, :cond_4

    .line 316
    :cond_3
    :goto_3
    return-object v0

    .line 309
    :cond_4
    const-string v1, "text"

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 310
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 313
    new-instance v1, Lcom/bilibili/tv/ui/main/content/MainLiveFragment$LiveBadgeInfo;

    invoke-direct {v1, v0}, Lcom/bilibili/tv/ui/main/content/MainLiveFragment$LiveBadgeInfo;-><init>(Lcom/bilibili/tv/ui/main/content/MainLiveFragment$1;)V

    .line 314
    iput-object v2, v1, Lcom/bilibili/tv/ui/main/content/MainLiveFragment$LiveBadgeInfo;->text:Ljava/lang/String;

    .line 315
    const-string v0, "bg_color"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/bilibili/tv/ui/main/content/MainLiveFragment$LiveBadgeInfo;->bgColor:Ljava/lang/String;

    move-object v0, v1

    .line 316
    goto :goto_3
.end method

.method private firstPendantWithText(Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 291
    if-nez p1, :cond_5

    move-object v0, v1

    .line 302
    :goto_4
    return-object v0

    .line 294
    :cond_5
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONObject;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 295
    instance-of v3, v0, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v3, :cond_d

    .line 296
    check-cast v0, Lcom/alibaba/fastjson/JSONObject;

    .line 297
    const-string v3, "text"

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_d

    goto :goto_4

    :cond_2a
    move-object v0, v1

    .line 302
    goto :goto_4
.end method

.method private parseLiveItem(Lcom/alibaba/fastjson/JSONObject;Lmybl/BiliLiveContent;)Lcom/bilibili/tv/api/main/MainRecommendEx$Content;
    .locals 8

    .prologue
    .line 184
    const-string v0, "roomid"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v0

    .line 186
    new-instance v1, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;

    invoke-direct {v1}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;-><init>()V

    .line 187
    const-string v2, "small_live"

    invoke-virtual {v1, v2}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->setCardType(Ljava/lang/String;)V

    .line 188
    const-string v2, "live"

    invoke-virtual {v1, v2}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->setCardGoto(Ljava/lang/String;)V

    .line 189
    int-to-long v2, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->setJumpId(Ljava/lang/Long;)V

    .line 190
    const-string v2, "cover"

    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->setCover(Ljava/lang/String;)V

    .line 191
    const-string v2, "title"

    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->setTitle(Ljava/lang/String;)V

    .line 192
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bilibili_yst://live/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->setUri(Ljava/lang/String;)V

    .line 193
    const-string v2, "uname"

    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->setOwnerName(Ljava/lang/String;)V

    .line 194
    const-string v2, "online"

    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v2

    .line 195
    neg-long v4, v2

    const-wide/16 v6, 0x1

    sub-long/2addr v4, v6

    invoke-virtual {v1, v4, v5}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->setPubdate(J)V

    .line 196
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->setDuration(I)V

    .line 198
    iput v0, p2, Lmybl/BiliLiveContent;->mRoomId:I

    .line 199
    const-string v0, "title"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lmybl/BiliLiveContent;->mTitle:Ljava/lang/String;

    .line 200
    const-string v0, "cover"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lmybl/BiliLiveContent;->mCover:Ljava/lang/String;

    .line 201
    const-string v0, "uname"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lmybl/BiliLiveContent;->mUname:Ljava/lang/String;

    .line 202
    const-string v0, "face"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lmybl/BiliLiveContent;->mFace:Ljava/lang/String;

    .line 203
    iput-wide v2, p2, Lmybl/BiliLiveContent;->mOnline:J

    .line 204
    const-string v0, "uid"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p2, Lmybl/BiliLiveContent;->mUid:J

    .line 205
    const-string v0, "area_v2_name"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lmybl/BiliLiveContent;->mArea:Ljava/lang/String;

    .line 206
    const-string v0, "area_v2_id"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v0

    iput v0, p2, Lmybl/BiliLiveContent;->mAreaId:I

    .line 208
    const-string v0, "verify"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 209
    if-eqz v0, :cond_ab

    .line 210
    const-string v2, "desc"

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lmybl/BiliLiveContent;->mCorner:Ljava/lang/String;

    .line 213
    :cond_ab
    return-object v1
.end method

.method private parsePendantBadge(Lcom/alibaba/fastjson/JSONObject;)Lcom/bilibili/tv/ui/main/content/MainLiveFragment$LiveBadgeInfo;
    .locals 3

    .prologue
    .line 266
    const-string v0, "pendant_Info"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 267
    if-nez v0, :cond_e

    .line 268
    const-string v0, "pendant_info"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 270
    :cond_e
    instance-of v1, v0, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v1, :cond_29

    .line 271
    check-cast v0, Lcom/alibaba/fastjson/JSONObject;

    .line 272
    const-string v1, "2"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->fillBadgeInfo(Lcom/alibaba/fastjson/JSONObject;)Lcom/bilibili/tv/ui/main/content/MainLiveFragment$LiveBadgeInfo;

    move-result-object v1

    .line 273
    if-nez v1, :cond_47

    .line 274
    invoke-direct {p0, v0}, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->firstPendantWithText(Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->fillBadgeInfo(Lcom/alibaba/fastjson/JSONObject;)Lcom/bilibili/tv/ui/main/content/MainLiveFragment$LiveBadgeInfo;

    move-result-object v0

    .line 287
    :goto_28
    return-object v0

    .line 278
    :cond_29
    instance-of v1, v0, Lcom/alibaba/fastjson/JSONArray;

    if-eqz v1, :cond_45

    .line 279
    check-cast v0, Lcom/alibaba/fastjson/JSONArray;

    .line 280
    const/4 v1, 0x0

    :goto_30
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_45

    .line 281
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->fillBadgeInfo(Lcom/alibaba/fastjson/JSONObject;)Lcom/bilibili/tv/ui/main/content/MainLiveFragment$LiveBadgeInfo;

    move-result-object v2

    .line 282
    if-eqz v2, :cond_42

    move-object v0, v2

    .line 283
    goto :goto_28

    .line 280
    :cond_42
    add-int/lit8 v1, v1, 0x1

    goto :goto_30

    .line 287
    :cond_45
    const/4 v0, 0x0

    goto :goto_28

    :cond_47
    move-object v0, v1

    goto :goto_28
.end method

.method private requestLiveList(IZI)V
    .locals 4

    .prologue
    .line 133
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v0

    invoke-static {v0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v0

    invoke-static {v0}, Lmybl/CookieUtil;->getFullCookieWithDevice(Lbl/mg;)Ljava/lang/String;

    move-result-object v1

    .line 134
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "request live list page="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", append="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lmybl/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    const-class v0, Lbl/aeh;

    invoke-static {v0}, Lbl/vo;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbl/aeh;

    const-string v2, "web"

    const-string v3, "444.7"

    .line 136
    invoke-interface {v0, v1, v2, p1, v3}, Lbl/aeh;->getLiveRecommendList(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lbl/vp;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/main/content/MainLiveFragment$LiveResponse;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/bilibili/tv/ui/main/content/MainLiveFragment$LiveResponse;-><init>(Lcom/bilibili/tv/ui/main/content/MainLiveFragment;IZI)V

    .line 137
    invoke-virtual {v0, v1}, Lbl/vp;->a(Lretrofit2/Callback;)V

    .line 138
    return-void
.end method


# virtual methods
.method public a(Landroid/support/v7/widget/RecyclerView;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 410
    invoke-super {p0, p1, p2}, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;->a(Landroid/support/v7/widget/RecyclerView;Landroid/os/Bundle;)V

    .line 411
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->adapter:Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$VideoListAdapter;

    if-eqz v0, :cond_1b

    .line 413
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lbl/abd;->get_home_column(Landroid/content/Context;)I

    move-result v0

    .line 414
    new-instance v1, Lcom/bilibili/tv/ui/main/content/MainLiveFragment$1;

    invoke-direct {v1, p0, p0, p0, v0}, Lcom/bilibili/tv/ui/main/content/MainLiveFragment$1;-><init>(Lcom/bilibili/tv/ui/main/content/MainLiveFragment;Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;Lcom/bilibili/tv/ui/main/content/MainLiveFragment;I)V

    iput-object v1, p0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->adapter:Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$VideoListAdapter;

    .line 463
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->adapter:Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$VideoListAdapter;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 465
    :cond_1b
    return-void
.end method

.method protected fetchData(Z)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 102
    if-eqz p1, :cond_22

    .line 103
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->isLoadingMore:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->hasMoreData:Z

    if-nez v0, :cond_d

    .line 120
    :cond_c
    :goto_c
    return-void

    .line 106
    :cond_d
    iget v0, p0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->livePage:I

    const/16 v1, 0x3c

    if-lt v0, v1, :cond_16

    .line 107
    iput-boolean v3, p0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->hasMoreData:Z

    goto :goto_c

    .line 110
    :cond_16
    iput-boolean v2, p0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->isLoadingMore:Z

    .line 111
    iget v0, p0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->livePage:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->requestToken:I

    invoke-direct {p0, v0, v2, v1}, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->requestLiveList(IZI)V

    goto :goto_c

    .line 115
    :cond_22
    iget v0, p0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->requestToken:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->requestToken:I

    .line 116
    iput v2, p0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->livePage:I

    .line 117
    iput-boolean v2, p0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->hasMoreData:Z

    .line 118
    iput-boolean v3, p0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->isLoadingMore:Z

    .line 119
    iget v0, p0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->requestToken:I

    invoke-direct {p0, v2, v3, v0}, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->requestLiveList(IZI)V

    goto :goto_c
.end method

.method protected fetchDataForPrefetch()V
    .locals 1

    .prologue
    .line 129
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->prefetching:Z

    .line 130
    return-void
.end method

.method protected getClickEventName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    const-string v0, "ott-platform.home.live.0.click"

    return-object v0
.end method

.method protected getColumnCount()I
    .locals 1

    .prologue
    .line 88
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

    .line 166
    add-int/lit8 v0, p1, -0x1

    .line 167
    if-ltz v0, :cond_1c

    iget-object v2, p0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->liveList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1c

    .line 168
    iget-object v2, p0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->liveList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmybl/BiliLiveContent;

    .line 169
    if-eqz v0, :cond_1a

    iget-object v0, v0, Lmybl/BiliLiveContent;->mCover:Ljava/lang/String;

    .line 171
    :goto_19
    return-object v0

    :cond_1a
    move-object v0, v1

    .line 169
    goto :goto_19

    :cond_1c
    move-object v0, v1

    .line 171
    goto :goto_19
.end method

.method public getLiveVideos()V
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->fetchData(Z)V

    .line 98
    return-void
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    const-string v0, "LiveRecommend"

    return-object v0
.end method

.method protected getPageViewEvent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    const-string v0, "tv_home_live_pageview"

    return-object v0
.end method

.method protected hideBottomInfo()Z
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x1

    return v0
.end method

.method protected onSmallCardClick(Landroid/view/View;Ljava/lang/String;I)V
    .locals 4

    .prologue
    .line 142
    const-string v0, "bilibili_yst://live_category"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 143
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lbl/adl;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    .line 144
    if-eqz v0, :cond_15

    .line 145
    invoke-static {v0}, Lcom/bilibili/tv/ui/live/LiveActivity;->a(Landroid/content/Context;)V

    .line 162
    :cond_15
    :goto_15
    return-void

    .line 150
    :cond_16
    add-int/lit8 v1, p3, -0x1

    .line 151
    if-ltz v1, :cond_15

    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->liveList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_15

    .line 152
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->liveList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmybl/BiliLiveContent;

    .line 153
    if-eqz v0, :cond_15

    .line 154
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lbl/adl;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v2

    .line 155
    if-eqz v2, :cond_15

    .line 156
    iget-object v3, p0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->liveList:Ljava/util/List;

    sput-object v3, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->lives:Ljava/util/List;

    .line 157
    sput v1, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->live_index:I

    .line 158
    invoke-static {v2, v0}, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->a(Landroid/content/Context;Lmybl/BiliLiveContent;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_15
.end method
