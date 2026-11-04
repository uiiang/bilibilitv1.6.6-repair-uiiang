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

.field private livePendantTexts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

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
    .line 40
    new-instance v0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bilibili/tv/ui/main/content/MainLiveFragment$Companion;-><init>(Lbl/bbg;)V

    sput-object v0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->Companion:Lcom/bilibili/tv/ui/main/content/MainLiveFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;-><init>()V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->liveList:Ljava/util/List;

    .line 45
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->liveRoomIds:Ljava/util/Set;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->livePendantTexts:Ljava/util/List;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->liveBadgeColors:Ljava/util/List;

    .line 54
    const/4 v0, 0x1

    iput v0, p0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->livePage:I

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->requestToken:I

    return-void
.end method

.method static synthetic access$100(Lcom/bilibili/tv/ui/main/content/MainLiveFragment;)I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->requestToken:I

    return v0
.end method

.method static synthetic access$200(Lcom/bilibili/tv/ui/main/content/MainLiveFragment;Lcom/alibaba/fastjson/JSONArray;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)I
    .locals 1

    .prologue
    .line 27
    invoke-direct/range {p0 .. p6}, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->collectRooms(Lcom/alibaba/fastjson/JSONArray;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/bilibili/tv/ui/main/content/MainLiveFragment;)I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->livePage:I

    return v0
.end method

.method static synthetic access$302(Lcom/bilibili/tv/ui/main/content/MainLiveFragment;I)I
    .locals 0

    .prologue
    .line 27
    iput p1, p0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->livePage:I

    return p1
.end method

.method static synthetic access$400(Lcom/bilibili/tv/ui/main/content/MainLiveFragment;)Ljava/util/List;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->liveList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$402(Lcom/bilibili/tv/ui/main/content/MainLiveFragment;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->liveList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$500(Lcom/bilibili/tv/ui/main/content/MainLiveFragment;)Ljava/util/List;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->livePendantTexts:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$502(Lcom/bilibili/tv/ui/main/content/MainLiveFragment;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->livePendantTexts:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$600(Lcom/bilibili/tv/ui/main/content/MainLiveFragment;)Ljava/util/List;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->liveBadgeColors:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$602(Lcom/bilibili/tv/ui/main/content/MainLiveFragment;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->liveBadgeColors:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$700(Lcom/bilibili/tv/ui/main/content/MainLiveFragment;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->liveRoomIds:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$800(Lcom/bilibili/tv/ui/main/content/MainLiveFragment;Landroid/content/Context;)Lcom/bilibili/tv/api/main/MainRecommendEx$Content;
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->createLiveCategoryEntry(Landroid/content/Context;)Lcom/bilibili/tv/api/main/MainRecommendEx$Content;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/bilibili/tv/ui/main/content/MainLiveFragment;Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$SmallCardViewHolder;I)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->bindLiveExtras(Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$SmallCardViewHolder;I)V

    return-void
.end method

.method private bindLiveExtras(Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$SmallCardViewHolder;I)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 481
    add-int/lit8 v3, p2, -0x1

    .line 482
    if-ltz v3, :cond_10

    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->liveList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v3, v0, :cond_11

    .line 509
    :cond_10
    :goto_10
    return-void

    .line 487
    :cond_11
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->ensurePendantBadge(Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$SmallCardViewHolder;)Landroid/widget/TextView;

    move-result-object v4

    .line 488
    if-eqz v4, :cond_3b

    .line 489
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->livePendantTexts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_57

    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->livePendantTexts:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    .line 490
    :goto_28
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->liveBadgeColors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_59

    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->liveBadgeColors:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 491
    :goto_38
    invoke-static {v4, v1, v0, v5}, Lcom/bilibili/tv/ui/video/widget/VideoBadgeStyler;->applyLeft(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 494
    :cond_3b
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$SmallCardViewHolder;->getBottomInfoLayout()Landroid/view/View;

    move-result-object v1

    .line 495
    if-eqz v1, :cond_10

    .line 498
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->liveList:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmybl/BiliLiveContent;

    .line 499
    if-eqz v0, :cond_4d

    iget-object v2, v0, Lmybl/BiliLiveContent;->mArea:Ljava/lang/String;

    .line 500
    :cond_4d
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 501
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_10

    :cond_57
    move-object v1, v2

    .line 489
    goto :goto_28

    :cond_59
    move-object v0, v2

    .line 490
    goto :goto_38

    .line 504
    :cond_5b
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 505
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$SmallCardViewHolder;->getPlayView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 506
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$SmallCardViewHolder;->getDanmakuView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 507
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$SmallCardViewHolder;->getDurationView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 508
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$SmallCardViewHolder;->getDurationView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_10
.end method

.method private collectRooms(Lcom/alibaba/fastjson/JSONArray;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)I
    .locals 7
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
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 228
    if-nez p1, :cond_5

    .line 258
    :goto_4
    return v1

    :cond_5
    move v0, v1

    move v2, v1

    .line 232
    :goto_7
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_64

    .line 233
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 234
    if-eqz v1, :cond_66

    const-string v4, "is_ad"

    invoke-virtual {v1, v4}, Lcom/alibaba/fastjson/JSONObject;->getBooleanValue(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_20

    move v1, v2

    .line 232
    :goto_1c
    add-int/lit8 v0, v0, 0x1

    move v2, v1

    goto :goto_7

    .line 237
    :cond_20
    const-string v4, "roomid"

    invoke-virtual {v1, v4}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v4

    .line 239
    if-lez v4, :cond_66

    iget-object v5, p0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->liveRoomIds:Ljava/util/Set;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_36

    move v1, v2

    .line 240
    goto :goto_1c

    .line 242
    :cond_36
    new-instance v4, Lmybl/BiliLiveContent;

    invoke-direct {v4}, Lmybl/BiliLiveContent;-><init>()V

    .line 243
    invoke-direct {p0, v1, v4}, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->parseLiveItem(Lcom/alibaba/fastjson/JSONObject;Lmybl/BiliLiveContent;)Lcom/bilibili/tv/api/main/MainRecommendEx$Content;

    move-result-object v5

    .line 245
    invoke-direct {p0, v1}, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->parsePendantBadge(Lcom/alibaba/fastjson/JSONObject;)Lcom/bilibili/tv/ui/main/content/MainLiveFragment$LiveBadgeInfo;

    move-result-object v6

    .line 246
    if-eqz v6, :cond_60

    iget-object v1, v6, Lcom/bilibili/tv/ui/main/content/MainLiveFragment$LiveBadgeInfo;->text:Ljava/lang/String;

    :goto_47
    invoke-interface {p5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 247
    if-eqz v6, :cond_62

    iget-object v1, v6, Lcom/bilibili/tv/ui/main/content/MainLiveFragment$LiveBadgeInfo;->bgColor:Ljava/lang/String;

    :goto_4e
    invoke-interface {p6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 250
    if-eqz p2, :cond_56

    .line 251
    invoke-virtual {v5, p2}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->setBadge(Ljava/lang/String;)V

    .line 254
    :cond_56
    invoke-interface {p3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 255
    invoke-interface {p4, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 256
    add-int/lit8 v2, v2, 0x1

    move v1, v2

    goto :goto_1c

    :cond_60
    move-object v1, v3

    .line 246
    goto :goto_47

    :cond_62
    move-object v1, v3

    .line 247
    goto :goto_4e

    :cond_64
    move v1, v2

    .line 258
    goto :goto_4

    :cond_66
    move v1, v2

    goto :goto_1c
.end method

.method private createLiveCategoryEntry(Landroid/content/Context;)Lcom/bilibili/tv/api/main/MainRecommendEx$Content;
    .locals 2

    .prologue
    .line 176
    new-instance v0, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;

    invoke-direct {v0}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;-><init>()V

    .line 177
    const-string v1, "live_category_entry"

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->setCardType(Ljava/lang/String;)V

    .line 178
    const-string v1, "live_category"

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->setCardGoto(Ljava/lang/String;)V

    .line 179
    const v1, 0x7f0c00b4

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->setTitle(Ljava/lang/String;)V

    .line 180
    const-string v1, "bilibili_yst://live_category"

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->setUri(Ljava/lang/String;)V

    .line 181
    return-object v0
.end method

.method private ensurePendantBadge(Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$SmallCardViewHolder;)Landroid/widget/TextView;
    .locals 2

    .prologue
    .line 517
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$SmallCardViewHolder;->getBadgeView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$SmallCardViewHolder;->getCoverView()Lcom/bilibili/tv/widget/ScalableImageView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/video/widget/VideoBadgeStyler;->ensureLeftBadge(Landroid/widget/TextView;Landroid/view/View;)Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method private fillBadgeInfo(Lcom/alibaba/fastjson/JSONObject;)Lcom/bilibili/tv/ui/main/content/MainLiveFragment$LiveBadgeInfo;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 307
    if-nez p1, :cond_4

    .line 317
    :cond_3
    :goto_3
    return-object v0

    .line 310
    :cond_4
    const-string v1, "text"

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 311
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 314
    new-instance v1, Lcom/bilibili/tv/ui/main/content/MainLiveFragment$LiveBadgeInfo;

    invoke-direct {v1, v0}, Lcom/bilibili/tv/ui/main/content/MainLiveFragment$LiveBadgeInfo;-><init>(Lcom/bilibili/tv/ui/main/content/MainLiveFragment$1;)V

    .line 315
    iput-object v2, v1, Lcom/bilibili/tv/ui/main/content/MainLiveFragment$LiveBadgeInfo;->text:Ljava/lang/String;

    .line 316
    const-string v0, "bg_color"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/bilibili/tv/ui/main/content/MainLiveFragment$LiveBadgeInfo;->bgColor:Ljava/lang/String;

    move-object v0, v1

    .line 317
    goto :goto_3
.end method

.method private firstPendantWithText(Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 292
    if-nez p1, :cond_5

    move-object v0, v1

    .line 303
    :goto_4
    return-object v0

    .line 295
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

    .line 296
    instance-of v3, v0, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v3, :cond_d

    .line 297
    check-cast v0, Lcom/alibaba/fastjson/JSONObject;

    .line 298
    const-string v3, "text"

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_d

    goto :goto_4

    :cond_2a
    move-object v0, v1

    .line 303
    goto :goto_4
.end method

.method private parseLiveItem(Lcom/alibaba/fastjson/JSONObject;Lmybl/BiliLiveContent;)Lcom/bilibili/tv/api/main/MainRecommendEx$Content;
    .locals 8

    .prologue
    .line 185
    const-string v0, "roomid"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v0

    .line 187
    new-instance v1, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;

    invoke-direct {v1}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;-><init>()V

    .line 188
    const-string v2, "small_live"

    invoke-virtual {v1, v2}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->setCardType(Ljava/lang/String;)V

    .line 189
    const-string v2, "live"

    invoke-virtual {v1, v2}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->setCardGoto(Ljava/lang/String;)V

    .line 190
    int-to-long v2, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->setJumpId(Ljava/lang/Long;)V

    .line 191
    const-string v2, "cover"

    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->setCover(Ljava/lang/String;)V

    .line 192
    const-string v2, "title"

    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->setTitle(Ljava/lang/String;)V

    .line 193
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

    .line 194
    const-string v2, "uname"

    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->setOwnerName(Ljava/lang/String;)V

    .line 195
    const-string v2, "online"

    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v2

    .line 196
    neg-long v4, v2

    const-wide/16 v6, 0x1

    sub-long/2addr v4, v6

    invoke-virtual {v1, v4, v5}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->setPubdate(J)V

    .line 197
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->setDuration(I)V

    .line 199
    iput v0, p2, Lmybl/BiliLiveContent;->mRoomId:I

    .line 200
    const-string v0, "title"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lmybl/BiliLiveContent;->mTitle:Ljava/lang/String;

    .line 201
    const-string v0, "cover"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lmybl/BiliLiveContent;->mCover:Ljava/lang/String;

    .line 202
    const-string v0, "uname"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lmybl/BiliLiveContent;->mUname:Ljava/lang/String;

    .line 203
    const-string v0, "face"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lmybl/BiliLiveContent;->mFace:Ljava/lang/String;

    .line 204
    iput-wide v2, p2, Lmybl/BiliLiveContent;->mOnline:J

    .line 205
    const-string v0, "uid"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p2, Lmybl/BiliLiveContent;->mUid:J

    .line 206
    const-string v0, "area_v2_name"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lmybl/BiliLiveContent;->mArea:Ljava/lang/String;

    .line 207
    const-string v0, "area_v2_id"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v0

    iput v0, p2, Lmybl/BiliLiveContent;->mAreaId:I

    .line 209
    const-string v0, "verify"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 210
    if-eqz v0, :cond_ab

    .line 211
    const-string v2, "desc"

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lmybl/BiliLiveContent;->mCorner:Ljava/lang/String;

    .line 214
    :cond_ab
    return-object v1
.end method

.method private parsePendantBadge(Lcom/alibaba/fastjson/JSONObject;)Lcom/bilibili/tv/ui/main/content/MainLiveFragment$LiveBadgeInfo;
    .locals 3

    .prologue
    .line 267
    const-string v0, "pendant_Info"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 268
    if-nez v0, :cond_e

    .line 269
    const-string v0, "pendant_info"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 271
    :cond_e
    instance-of v1, v0, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v1, :cond_29

    .line 272
    check-cast v0, Lcom/alibaba/fastjson/JSONObject;

    .line 273
    const-string v1, "2"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->fillBadgeInfo(Lcom/alibaba/fastjson/JSONObject;)Lcom/bilibili/tv/ui/main/content/MainLiveFragment$LiveBadgeInfo;

    move-result-object v1

    .line 274
    if-nez v1, :cond_47

    .line 275
    invoke-direct {p0, v0}, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->firstPendantWithText(Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->fillBadgeInfo(Lcom/alibaba/fastjson/JSONObject;)Lcom/bilibili/tv/ui/main/content/MainLiveFragment$LiveBadgeInfo;

    move-result-object v0

    .line 288
    :goto_28
    return-object v0

    .line 279
    :cond_29
    instance-of v1, v0, Lcom/alibaba/fastjson/JSONArray;

    if-eqz v1, :cond_45

    .line 280
    check-cast v0, Lcom/alibaba/fastjson/JSONArray;

    .line 281
    const/4 v1, 0x0

    :goto_30
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_45

    .line 282
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->fillBadgeInfo(Lcom/alibaba/fastjson/JSONObject;)Lcom/bilibili/tv/ui/main/content/MainLiveFragment$LiveBadgeInfo;

    move-result-object v2

    .line 283
    if-eqz v2, :cond_42

    move-object v0, v2

    .line 284
    goto :goto_28

    .line 281
    :cond_42
    add-int/lit8 v1, v1, 0x1

    goto :goto_30

    .line 288
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
    .line 134
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v0

    invoke-static {v0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v0

    invoke-static {v0}, Lmybl/CookieUtil;->getFullCookieWithDevice(Lbl/mg;)Ljava/lang/String;

    move-result-object v1

    .line 135
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

    .line 136
    const-class v0, Lbl/aeh;

    invoke-static {v0}, Lbl/vo;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbl/aeh;

    const-string v2, "web"

    const-string v3, "444.7"

    .line 137
    invoke-interface {v0, v1, v2, p1, v3}, Lbl/aeh;->getLiveRecommendList(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lbl/vp;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/main/content/MainLiveFragment$LiveResponse;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/bilibili/tv/ui/main/content/MainLiveFragment$LiveResponse;-><init>(Lcom/bilibili/tv/ui/main/content/MainLiveFragment;IZI)V

    .line 138
    invoke-virtual {v0, v1}, Lbl/vp;->a(Lretrofit2/Callback;)V

    .line 139
    return-void
.end method


# virtual methods
.method public a(Landroid/support/v7/widget/RecyclerView;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 417
    invoke-super {p0, p1, p2}, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;->a(Landroid/support/v7/widget/RecyclerView;Landroid/os/Bundle;)V

    .line 418
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->adapter:Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$VideoListAdapter;

    if-eqz v0, :cond_1b

    .line 420
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lbl/abd;->get_home_column(Landroid/content/Context;)I

    move-result v0

    .line 421
    new-instance v1, Lcom/bilibili/tv/ui/main/content/MainLiveFragment$1;

    invoke-direct {v1, p0, p0, p0, v0}, Lcom/bilibili/tv/ui/main/content/MainLiveFragment$1;-><init>(Lcom/bilibili/tv/ui/main/content/MainLiveFragment;Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;Lcom/bilibili/tv/ui/main/content/MainLiveFragment;I)V

    iput-object v1, p0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->adapter:Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$VideoListAdapter;

    .line 470
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->adapter:Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$VideoListAdapter;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 472
    :cond_1b
    return-void
.end method

.method protected fetchData(Z)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 103
    if-eqz p1, :cond_22

    .line 104
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->isLoadingMore:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->hasMoreData:Z

    if-nez v0, :cond_d

    .line 121
    :cond_c
    :goto_c
    return-void

    .line 107
    :cond_d
    iget v0, p0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->livePage:I

    const/16 v1, 0x3c

    if-lt v0, v1, :cond_16

    .line 108
    iput-boolean v3, p0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->hasMoreData:Z

    goto :goto_c

    .line 111
    :cond_16
    iput-boolean v2, p0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->isLoadingMore:Z

    .line 112
    iget v0, p0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->livePage:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->requestToken:I

    invoke-direct {p0, v0, v2, v1}, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->requestLiveList(IZI)V

    goto :goto_c

    .line 116
    :cond_22
    iget v0, p0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->requestToken:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->requestToken:I

    .line 117
    iput v2, p0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->livePage:I

    .line 118
    iput-boolean v2, p0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->hasMoreData:Z

    .line 119
    iput-boolean v3, p0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->isLoadingMore:Z

    .line 120
    iget v0, p0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->requestToken:I

    invoke-direct {p0, v2, v3, v0}, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->requestLiveList(IZI)V

    goto :goto_c
.end method

.method protected fetchDataForPrefetch()V
    .locals 1

    .prologue
    .line 130
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->prefetching:Z

    .line 131
    return-void
.end method

.method protected getClickEventName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    const-string v0, "ott-platform.home.live.0.click"

    return-object v0
.end method

.method protected getColumnCount()I
    .locals 1

    .prologue
    .line 89
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

    .line 167
    add-int/lit8 v0, p1, -0x1

    .line 168
    if-ltz v0, :cond_1c

    iget-object v2, p0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->liveList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1c

    .line 169
    iget-object v2, p0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->liveList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmybl/BiliLiveContent;

    .line 170
    if-eqz v0, :cond_1a

    iget-object v0, v0, Lmybl/BiliLiveContent;->mCover:Ljava/lang/String;

    .line 172
    :goto_19
    return-object v0

    :cond_1a
    move-object v0, v1

    .line 170
    goto :goto_19

    :cond_1c
    move-object v0, v1

    .line 172
    goto :goto_19
.end method

.method public getLiveVideos()V
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->fetchData(Z)V

    .line 99
    return-void
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    const-string v0, "LiveRecommend"

    return-object v0
.end method

.method protected getPageViewEvent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    const-string v0, "tv_home_live_pageview"

    return-object v0
.end method

.method protected hideBottomInfo()Z
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x1

    return v0
.end method

.method protected onSmallCardClick(Landroid/view/View;Ljava/lang/String;I)V
    .locals 4

    .prologue
    .line 143
    const-string v0, "bilibili_yst://live_category"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 144
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lbl/adl;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    .line 145
    if-eqz v0, :cond_15

    .line 146
    invoke-static {v0}, Lcom/bilibili/tv/ui/live/LiveActivity;->a(Landroid/content/Context;)V

    .line 163
    :cond_15
    :goto_15
    return-void

    .line 151
    :cond_16
    add-int/lit8 v1, p3, -0x1

    .line 152
    if-ltz v1, :cond_15

    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->liveList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_15

    .line 153
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->liveList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmybl/BiliLiveContent;

    .line 154
    if-eqz v0, :cond_15

    .line 155
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lbl/adl;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v2

    .line 156
    if-eqz v2, :cond_15

    .line 157
    iget-object v3, p0, Lcom/bilibili/tv/ui/main/content/MainLiveFragment;->liveList:Ljava/util/List;

    sput-object v3, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->lives:Ljava/util/List;

    .line 158
    sput v1, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->live_index:I

    .line 159
    invoke-static {v2, v0}, Lcom/bilibili/tv/ui/live/player/LivePlayerActivity;->a(Landroid/content/Context;Lmybl/BiliLiveContent;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_15
.end method
