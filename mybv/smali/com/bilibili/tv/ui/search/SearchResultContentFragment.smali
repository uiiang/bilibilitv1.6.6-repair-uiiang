.class public final Lcom/bilibili/tv/ui/search/SearchResultContentFragment;
.super Lbl/ady;
.source "SearchResultContentFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bilibili/tv/ui/search/SearchResultContentFragment$LiveViewHolder;,
        Lcom/bilibili/tv/ui/search/SearchResultContentFragment$LiveAdapter;,
        Lcom/bilibili/tv/ui/search/SearchResultContentFragment$UserViewHolder;,
        Lcom/bilibili/tv/ui/search/SearchResultContentFragment$UserAdapter;,
        Lcom/bilibili/tv/ui/search/SearchResultContentFragment$BangumiViewHolder;,
        Lcom/bilibili/tv/ui/search/SearchResultContentFragment$BangumiAdapter;,
        Lcom/bilibili/tv/ui/search/SearchResultContentFragment$VideoViewHolder;,
        Lcom/bilibili/tv/ui/search/SearchResultContentFragment$VideoAdapter;,
        Lcom/bilibili/tv/ui/search/SearchResultContentFragment$ScrollListener;,
        Lcom/bilibili/tv/ui/search/SearchResultContentFragment$ItemDecoration;,
        Lcom/bilibili/tv/ui/search/SearchResultContentFragment$BorderListener;
    }
.end annotation


# static fields
.field public static final ARG_KEYWORD:Ljava/lang/String; = "keyword"

.field public static final ARG_SEARCH_TYPE:Ljava/lang/String; = "search_type"

.field private static final COLUMN_COUNT:I = 0x2

.field private static final PAGE_SIZE:I = 0x14

.field private static final TAG:Ljava/lang/String; = "SearchResultContent"


# instance fields
.field private bangumiAdapter:Lcom/bilibili/tv/ui/search/SearchResultContentFragment$BangumiAdapter;

.field private currentPage:I

.field private hasMore:Z

.field private headerCount:Landroid/widget/TextView;

.field private headerLayout:Landroid/widget/LinearLayout;

.field private headerTitle:Landroid/widget/TextView;

.field private isLoading:Z

.field private keyword:Ljava/lang/String;

.field private liveAdapter:Lcom/bilibili/tv/ui/search/SearchResultContentFragment$LiveAdapter;

.field private order:Ljava/lang/String;

.field private searchType:I

.field private userAdapter:Lcom/bilibili/tv/ui/search/SearchResultContentFragment$UserAdapter;

.field private videoAdapter:Lcom/bilibili/tv/ui/search/SearchResultContentFragment$VideoAdapter;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 59
    invoke-direct {p0}, Lbl/ady;-><init>()V

    .line 71
    iput-boolean v0, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment;->isLoading:Z

    .line 72
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment;->hasMore:Z

    .line 73
    iput v1, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment;->currentPage:I

    .line 75
    iput v0, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment;->searchType:I

    .line 76
    const-string v0, "totalrank"

    iput-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment;->order:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/bilibili/tv/ui/search/SearchResultContentFragment;)Z
    .locals 1

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment;->isLoading:Z

    return v0
.end method

.method static synthetic access$002(Lcom/bilibili/tv/ui/search/SearchResultContentFragment;Z)Z
    .locals 0

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment;->isLoading:Z

    return p1
.end method

.method static synthetic access$100(Lcom/bilibili/tv/ui/search/SearchResultContentFragment;)Z
    .locals 1

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment;->hasMore:Z

    return v0
.end method

.method static synthetic access$208(Lcom/bilibili/tv/ui/search/SearchResultContentFragment;)I
    .locals 2

    .prologue
    .line 59
    iget v0, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment;->currentPage:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment;->currentPage:I

    return v0
.end method

.method static synthetic access$300(Lcom/bilibili/tv/ui/search/SearchResultContentFragment;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/bilibili/tv/ui/search/SearchResultContentFragment;->loadData()V

    return-void
.end method

.method static synthetic access$400(Lcom/bilibili/tv/ui/search/SearchResultContentFragment;Lcom/alibaba/fastjson/JSONObject;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/search/SearchResultContentFragment;->handleVideoResponse(Lcom/alibaba/fastjson/JSONObject;)V

    return-void
.end method

.method static synthetic access$500(Lcom/bilibili/tv/ui/search/SearchResultContentFragment;Lcom/alibaba/fastjson/JSONObject;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/search/SearchResultContentFragment;->handleBangumiResponse(Lcom/alibaba/fastjson/JSONObject;)V

    return-void
.end method

.method static synthetic access$600(Lcom/bilibili/tv/ui/search/SearchResultContentFragment;Lcom/alibaba/fastjson/JSONObject;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/search/SearchResultContentFragment;->handleLiveResponse(Lcom/alibaba/fastjson/JSONObject;)V

    return-void
.end method

.method static synthetic access$700(Lcom/bilibili/tv/ui/search/SearchResultContentFragment;Lcom/alibaba/fastjson/JSONObject;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/search/SearchResultContentFragment;->handleUserResponse(Lcom/alibaba/fastjson/JSONObject;)V

    return-void
.end method

.method private handleBangumiResponse(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 447
    const-string v0, "SearchResultContent_SearchBangumi"

    invoke-static {v0, p1}, Lmybl/LogUtil;->json(Ljava/lang/String;Ljava/lang/Object;)V

    .line 449
    const-string v0, "data"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 450
    if-nez v0, :cond_ab

    .line 454
    :goto_f
    const-string v0, "result"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v3

    .line 455
    if-eqz v3, :cond_1d

    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 456
    :cond_1d
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment;->hasMore:Z

    .line 457
    iget v0, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment;->currentPage:I

    if-ne v0, v2, :cond_26

    .line 458
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchResultContentFragment;->l()V

    .line 488
    :cond_26
    :goto_26
    return-void

    .line 463
    :cond_27
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchResultContentFragment;->j()V

    .line 464
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchResultContentFragment;->h()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 466
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    .line 467
    :goto_37
    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v5

    if-ge v0, v5, :cond_7c

    .line 468
    invoke-virtual {v3, v0}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v5

    .line 469
    new-instance v6, Lcom/bilibili/tv/api/search/BiliSearchResultNew$Bangumi;

    invoke-direct {v6}, Lcom/bilibili/tv/api/search/BiliSearchResultNew$Bangumi;-><init>()V

    .line 470
    const-string v7, "title"

    invoke-virtual {v5, v7}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/bilibili/tv/api/search/BiliSearchResultNew$Bangumi;->title:Ljava/lang/String;

    .line 471
    const-string v7, "cover"

    invoke-virtual {v5, v7}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/bilibili/tv/api/search/BiliSearchResultNew$Bangumi;->cover:Ljava/lang/String;

    .line 472
    const-string v7, "season_id"

    invoke-virtual {v5, v7}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/bilibili/tv/api/search/BiliSearchResultNew$Bangumi;->param:Ljava/lang/String;

    .line 473
    const-string v7, "index_show"

    invoke-virtual {v5, v7}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/bilibili/tv/api/search/BiliSearchResultNew$Bangumi;->indexShow:Ljava/lang/String;

    .line 474
    const-string v7, "season_type_name"

    invoke-virtual {v5, v7}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/bilibili/tv/api/search/BiliSearchResultNew$Bangumi;->seasonTypeName:Ljava/lang/String;

    .line 475
    const-string v7, "areas"

    invoke-virtual {v5, v7}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v6, Lcom/bilibili/tv/api/search/BiliSearchResultNew$Bangumi;->areas:Ljava/lang/String;

    .line 476
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 467
    add-int/lit8 v0, v0, 0x1

    goto :goto_37

    .line 479
    :cond_7c
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment;->bangumiAdapter:Lcom/bilibili/tv/ui/search/SearchResultContentFragment$BangumiAdapter;

    if-nez v0, :cond_a5

    .line 480
    new-instance v0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$BangumiAdapter;

    invoke-direct {v0, v4}, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$BangumiAdapter;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment;->bangumiAdapter:Lcom/bilibili/tv/ui/search/SearchResultContentFragment$BangumiAdapter;

    .line 481
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchResultContentFragment;->h()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    iget-object v4, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment;->bangumiAdapter:Lcom/bilibili/tv/ui/search/SearchResultContentFragment$BangumiAdapter;

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 486
    :goto_90
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment;->bangumiAdapter:Lcom/bilibili/tv/ui/search/SearchResultContentFragment$BangumiAdapter;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$BangumiAdapter;->a()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/bilibili/tv/ui/search/SearchResultContentFragment;->updateHeaderCount(I)V

    .line 487
    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    const/16 v3, 0x14

    if-lt v0, v3, :cond_a2

    move v1, v2

    :cond_a2
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment;->hasMore:Z

    goto :goto_26

    .line 483
    :cond_a5
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment;->bangumiAdapter:Lcom/bilibili/tv/ui/search/SearchResultContentFragment$BangumiAdapter;

    invoke-virtual {v0, v4}, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$BangumiAdapter;->addBangumis(Ljava/util/List;)V

    goto :goto_90

    :cond_ab
    move-object p1, v0

    goto/16 :goto_f
.end method

.method private handleLiveResponse(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 635
    const-string v0, "SearchResultContent_SearchLive"

    invoke-static {v0, p1}, Lmybl/LogUtil;->json(Ljava/lang/String;Ljava/lang/Object;)V

    .line 637
    const-string v0, "data"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 638
    if-nez v0, :cond_71

    .line 642
    :goto_f
    const-string v0, "result"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    .line 643
    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_27

    .line 644
    :cond_1d
    iput-boolean v2, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment;->hasMore:Z

    .line 645
    iget v0, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment;->currentPage:I

    if-ne v0, v1, :cond_26

    .line 646
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchResultContentFragment;->l()V

    .line 665
    :cond_26
    :goto_26
    return-void

    .line 651
    :cond_27
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchResultContentFragment;->j()V

    .line 652
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchResultContentFragment;->h()Landroid/support/v7/widget/RecyclerView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 654
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->toJSONString()Ljava/lang/String;

    move-result-object v4

    const-class v5, Lmybl/BiliLiveContentEx2;

    invoke-static {v4, v5}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 656
    iget-object v4, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment;->liveAdapter:Lcom/bilibili/tv/ui/search/SearchResultContentFragment$LiveAdapter;

    if-nez v4, :cond_69

    .line 657
    new-instance v4, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$LiveAdapter;

    invoke-direct {v4, v3}, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$LiveAdapter;-><init>(Ljava/util/List;)V

    iput-object v4, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment;->liveAdapter:Lcom/bilibili/tv/ui/search/SearchResultContentFragment$LiveAdapter;

    .line 658
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchResultContentFragment;->h()Landroid/support/v7/widget/RecyclerView;

    move-result-object v3

    iget-object v4, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment;->liveAdapter:Lcom/bilibili/tv/ui/search/SearchResultContentFragment$LiveAdapter;

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 663
    :goto_54
    iget-object v3, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment;->liveAdapter:Lcom/bilibili/tv/ui/search/SearchResultContentFragment$LiveAdapter;

    invoke-virtual {v3}, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$LiveAdapter;->a()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/bilibili/tv/ui/search/SearchResultContentFragment;->updateHeaderCount(I)V

    .line 664
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    const/16 v3, 0x14

    if-lt v0, v3, :cond_6f

    move v0, v1

    :goto_66
    iput-boolean v0, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment;->hasMore:Z

    goto :goto_26

    .line 660
    :cond_69
    iget-object v4, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment;->liveAdapter:Lcom/bilibili/tv/ui/search/SearchResultContentFragment$LiveAdapter;

    invoke-virtual {v4, v3}, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$LiveAdapter;->addLives(Ljava/util/List;)V

    goto :goto_54

    :cond_6f
    move v0, v2

    .line 664
    goto :goto_66

    :cond_71
    move-object p1, v0

    goto :goto_f
.end method

.method private handleUserResponse(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 10

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 739
    const-string v0, "SearchResultContent_SearchUser"

    invoke-static {v0, p1}, Lmybl/LogUtil;->json(Ljava/lang/String;Ljava/lang/Object;)V

    .line 741
    const-string v0, "data"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 742
    if-nez v0, :cond_a7

    .line 746
    :goto_f
    const-string v0, "result"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v3

    .line 747
    if-eqz v3, :cond_1d

    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 748
    :cond_1d
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment;->hasMore:Z

    .line 749
    iget v0, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment;->currentPage:I

    if-ne v0, v2, :cond_26

    .line 750
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchResultContentFragment;->l()V

    .line 779
    :cond_26
    :goto_26
    return-void

    .line 755
    :cond_27
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchResultContentFragment;->j()V

    .line 756
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchResultContentFragment;->h()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 758
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    .line 759
    :goto_37
    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v5

    if-ge v0, v5, :cond_78

    .line 760
    invoke-virtual {v3, v0}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v5

    .line 761
    new-instance v6, Lcom/bilibili/tv/api/search/BiliSearchResultUper;

    invoke-direct {v6}, Lcom/bilibili/tv/api/search/BiliSearchResultUper;-><init>()V

    .line 762
    const-string v7, "mid"

    invoke-virtual {v5, v7}, Lcom/alibaba/fastjson/JSONObject;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iput-wide v8, v6, Lcom/bilibili/tv/api/search/BiliSearchResultUper;->mid:J

    .line 763
    const-string v7, "uname"

    invoke-virtual {v5, v7}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/bilibili/tv/api/search/BiliSearchResultUper;->uname:Ljava/lang/String;

    .line 764
    const-string v7, "usign"

    invoke-virtual {v5, v7}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/bilibili/tv/api/search/BiliSearchResultUper;->usign:Ljava/lang/String;

    .line 765
    const-string v7, "upic"

    invoke-virtual {v5, v7}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/bilibili/tv/api/search/BiliSearchResultUper;->upic:Ljava/lang/String;

    .line 766
    const-string v7, "videos"

    invoke-virtual {v5, v7}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v5

    iput v5, v6, Lcom/bilibili/tv/api/search/BiliSearchResultUper;->videos:I

    .line 767
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 759
    add-int/lit8 v0, v0, 0x1

    goto :goto_37

    .line 770
    :cond_78
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment;->userAdapter:Lcom/bilibili/tv/ui/search/SearchResultContentFragment$UserAdapter;

    if-nez v0, :cond_a1

    .line 771
    new-instance v0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$UserAdapter;

    invoke-direct {v0, v4}, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$UserAdapter;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment;->userAdapter:Lcom/bilibili/tv/ui/search/SearchResultContentFragment$UserAdapter;

    .line 772
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchResultContentFragment;->h()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    iget-object v4, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment;->userAdapter:Lcom/bilibili/tv/ui/search/SearchResultContentFragment$UserAdapter;

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 777
    :goto_8c
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment;->userAdapter:Lcom/bilibili/tv/ui/search/SearchResultContentFragment$UserAdapter;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$UserAdapter;->a()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/bilibili/tv/ui/search/SearchResultContentFragment;->updateHeaderCount(I)V

    .line 778
    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    const/16 v3, 0x14

    if-lt v0, v3, :cond_9e

    move v1, v2

    :cond_9e
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment;->hasMore:Z

    goto :goto_26

    .line 774
    :cond_a1
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment;->userAdapter:Lcom/bilibili/tv/ui/search/SearchResultContentFragment$UserAdapter;

    invoke-virtual {v0, v4}, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$UserAdapter;->addUsers(Ljava/util/List;)V

    goto :goto_8c

    :cond_a7
    move-object p1, v0

    goto/16 :goto_f
.end method

.method private handleVideoResponse(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 10

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 323
    const-string v0, "SearchResultContent_SearchVideo"

    invoke-static {v0, p1}, Lmybl/LogUtil;->json(Ljava/lang/String;Ljava/lang/Object;)V

    .line 325
    const-string v0, "data"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 326
    if-nez v0, :cond_e0

    .line 330
    :goto_f
    const-string v0, "result"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v3

    .line 331
    if-eqz v3, :cond_1d

    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 332
    :cond_1d
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment;->hasMore:Z

    .line 333
    iget v0, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment;->currentPage:I

    if-ne v0, v2, :cond_26

    .line 334
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchResultContentFragment;->l()V

    .line 370
    :cond_26
    :goto_26
    return-void

    .line 339
    :cond_27
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchResultContentFragment;->j()V

    .line 340
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchResultContentFragment;->h()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 342
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    .line 343
    :goto_37
    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v5

    if-ge v0, v5, :cond_b0

    .line 344
    invoke-virtual {v3, v0}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v5

    .line 345
    new-instance v6, Lcom/bilibili/tv/api/search/BiliSearchResultNew$Video;

    invoke-direct {v6}, Lcom/bilibili/tv/api/search/BiliSearchResultNew$Video;-><init>()V

    .line 346
    const-string v7, "title"

    invoke-virtual {v5, v7}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 347
    invoke-static {v7}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/bilibili/tv/api/search/BiliSearchResultNew$Video;->title:Ljava/lang/String;

    .line 348
    const-string v7, "author"

    invoke-virtual {v5, v7}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/bilibili/tv/api/search/BiliSearchResultNew$Video;->author:Ljava/lang/String;

    .line 349
    const-string v7, "play"

    invoke-virtual {v5, v7}, Lcom/alibaba/fastjson/JSONObject;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/bilibili/tv/api/search/BiliSearchResultNew$Video;->play:Ljava/lang/String;

    .line 350
    const-string v7, "video_review"

    invoke-virtual {v5, v7}, Lcom/alibaba/fastjson/JSONObject;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/bilibili/tv/api/search/BiliSearchResultNew$Video;->danmaku:Ljava/lang/String;

    .line 351
    const-string v7, "pic"

    invoke-virtual {v5, v7}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/bilibili/tv/api/search/BiliSearchResultNew$Video;->cover:Ljava/lang/String;

    .line 352
    const-string v7, "aid"

    invoke-virtual {v5, v7}, Lcom/alibaba/fastjson/JSONObject;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/bilibili/tv/api/search/BiliSearchResultNew$Video;->param:Ljava/lang/String;

    .line 353
    const-string v7, "duration"

    invoke-virtual {v5, v7}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/bilibili/tv/api/search/BiliSearchResultNew$Video;->duration:Ljava/lang/String;

    .line 354
    const-string v7, "pubdate"

    invoke-virtual {v5, v7}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_aa

    .line 355
    const-string v7, "pubdate"

    invoke-virtual {v5, v7}, Lcom/alibaba/fastjson/JSONObject;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 356
    invoke-static {v8, v9}, Lcom/bilibili/tv/util/DateHelper;->formatDate(J)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v6, Lcom/bilibili/tv/api/search/BiliSearchResultNew$Video;->pubdateFormatted:Ljava/lang/String;

    .line 358
    :cond_aa
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 343
    add-int/lit8 v0, v0, 0x1

    goto :goto_37

    .line 361
    :cond_b0
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment;->videoAdapter:Lcom/bilibili/tv/ui/search/SearchResultContentFragment$VideoAdapter;

    if-nez v0, :cond_da

    .line 362
    new-instance v0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$VideoAdapter;

    invoke-direct {v0, v4}, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$VideoAdapter;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment;->videoAdapter:Lcom/bilibili/tv/ui/search/SearchResultContentFragment$VideoAdapter;

    .line 363
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchResultContentFragment;->h()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    iget-object v4, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment;->videoAdapter:Lcom/bilibili/tv/ui/search/SearchResultContentFragment$VideoAdapter;

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 368
    :goto_c4
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment;->videoAdapter:Lcom/bilibili/tv/ui/search/SearchResultContentFragment$VideoAdapter;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$VideoAdapter;->a()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/bilibili/tv/ui/search/SearchResultContentFragment;->updateHeaderCount(I)V

    .line 369
    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    const/16 v3, 0x14

    if-lt v0, v3, :cond_d6

    move v1, v2

    :cond_d6
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment;->hasMore:Z

    goto/16 :goto_26

    .line 365
    :cond_da
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment;->videoAdapter:Lcom/bilibili/tv/ui/search/SearchResultContentFragment$VideoAdapter;

    invoke-virtual {v0, v4}, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$VideoAdapter;->addVideos(Ljava/util/List;)V

    goto :goto_c4

    :cond_e0
    move-object p1, v0

    goto/16 :goto_f
.end method

.method private loadData()V
    .locals 1

    .prologue
    .line 229
    iget v0, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment;->searchType:I

    packed-switch v0, :pswitch_data_1a

    .line 246
    :goto_5
    return-void

    .line 231
    :pswitch_6
    invoke-direct {p0}, Lcom/bilibili/tv/ui/search/SearchResultContentFragment;->searchVideo()V

    goto :goto_5

    .line 234
    :pswitch_a
    invoke-direct {p0}, Lcom/bilibili/tv/ui/search/SearchResultContentFragment;->searchBangumi()V

    goto :goto_5

    .line 237
    :pswitch_e
    invoke-direct {p0}, Lcom/bilibili/tv/ui/search/SearchResultContentFragment;->searchMovie()V

    goto :goto_5

    .line 240
    :pswitch_12
    invoke-direct {p0}, Lcom/bilibili/tv/ui/search/SearchResultContentFragment;->searchLive()V

    goto :goto_5

    .line 243
    :pswitch_16
    invoke-direct {p0}, Lcom/bilibili/tv/ui/search/SearchResultContentFragment;->searchUser()V

    goto :goto_5

    .line 229
    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_6
        :pswitch_a
        :pswitch_e
        :pswitch_12
        :pswitch_16
    .end packed-switch
.end method

.method public static newInstance(Ljava/lang/String;I)Lcom/bilibili/tv/ui/search/SearchResultContentFragment;
    .locals 3

    .prologue
    .line 83
    new-instance v0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment;

    invoke-direct {v0}, Lcom/bilibili/tv/ui/search/SearchResultContentFragment;-><init>()V

    .line 84
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 85
    const-string v2, "keyword"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const-string v2, "search_type"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 87
    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/search/SearchResultContentFragment;->setArguments(Landroid/os/Bundle;)V

    .line 88
    return-object v0
.end method

.method private searchBangumi()V
    .locals 5

    .prologue
    .line 373
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment;->isLoading:Z

    .line 374
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchResultContentFragment;->i()V

    .line 375
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchResultContentFragment;->h()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 377
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v0

    invoke-static {v0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v0

    invoke-virtual {v0}, Lbl/mg;->e()Ljava/lang/String;

    move-result-object v0

    .line 378
    invoke-static {}, Lmybl/WbiSigner;->getInstance()Lmybl/WbiSigner;

    move-result-object v1

    .line 379
    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    .line 380
    const-string v3, "search_type"

    const-string v4, "media_bangumi"

    invoke-virtual {v2, v3, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    const-string v3, "keyword"

    iget-object v4, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment;->keyword:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    const-string v3, "order"

    iget-object v4, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment;->order:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    const-string v3, "page"

    iget v4, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment;->currentPage:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    const-string v3, "pagesize"

    const/16 v4, 0x14

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    const-string v3, "access_key"

    invoke-virtual {v2, v3, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    invoke-virtual {v1, v2}, Lmybl/WbiSigner;->encWbiAndGetQuery(Ljava/util/TreeMap;)Ljava/lang/String;

    move-result-object v0

    .line 388
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://api.bilibili.com/x/web-interface/wbi/search/type?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 390
    const-string v1, "SearchResultContent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SearchBangumi URL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    invoke-static {}, Lbl/vo;->getOkHttpClient()Lokhttp3/OkHttpClient;

    move-result-object v1

    .line 393
    new-instance v2, Lokhttp3/Request$Builder;

    invoke-direct {v2}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v2, v0}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 395
    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$2;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$2;-><init>(Lcom/bilibili/tv/ui/search/SearchResultContentFragment;)V

    invoke-interface {v0, v1}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    .line 444
    return-void
.end method

.method private searchLive()V
    .locals 4

    .prologue
    .line 564
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment;->isLoading:Z

    .line 565
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchResultContentFragment;->i()V

    .line 566
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchResultContentFragment;->h()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 568
    invoke-static {}, Lmybl/WbiSigner;->getInstance()Lmybl/WbiSigner;

    move-result-object v0

    .line 569
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    .line 570
    const-string v2, "search_type"

    const-string v3, "live_room"

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 571
    const-string v2, "keyword"

    iget-object v3, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment;->keyword:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 572
    const-string v2, "order"

    const-string v3, "online"

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 573
    const-string v2, "page"

    iget v3, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment;->currentPage:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 574
    const-string v2, "pagesize"

    const/16 v3, 0x14

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 576
    invoke-virtual {v0, v1}, Lmybl/WbiSigner;->encWbiAndGetQuery(Ljava/util/TreeMap;)Ljava/lang/String;

    move-result-object v0

    .line 577
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://api.bilibili.com/x/web-interface/wbi/search/type?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 579
    const-string v1, "SearchResultContent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SearchLive URL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    invoke-static {}, Lbl/vo;->getOkHttpClient()Lokhttp3/OkHttpClient;

    move-result-object v1

    .line 582
    new-instance v2, Lokhttp3/Request$Builder;

    invoke-direct {v2}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v2, v0}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 584
    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$4;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$4;-><init>(Lcom/bilibili/tv/ui/search/SearchResultContentFragment;)V

    invoke-interface {v0, v1}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    .line 632
    return-void
.end method

.method private searchMovie()V
    .locals 5

    .prologue
    .line 491
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment;->isLoading:Z

    .line 492
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchResultContentFragment;->i()V

    .line 493
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchResultContentFragment;->h()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 495
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v0

    invoke-static {v0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v0

    invoke-virtual {v0}, Lbl/mg;->e()Ljava/lang/String;

    move-result-object v0

    .line 496
    invoke-static {}, Lmybl/WbiSigner;->getInstance()Lmybl/WbiSigner;

    move-result-object v1

    .line 497
    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    .line 498
    const-string v3, "search_type"

    const-string v4, "media_ft"

    invoke-virtual {v2, v3, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 499
    const-string v3, "keyword"

    iget-object v4, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment;->keyword:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 500
    const-string v3, "order"

    iget-object v4, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment;->order:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    const-string v3, "page"

    iget v4, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment;->currentPage:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    const-string v3, "pagesize"

    const/16 v4, 0x14

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    const-string v3, "access_key"

    invoke-virtual {v2, v3, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 505
    invoke-virtual {v1, v2}, Lmybl/WbiSigner;->encWbiAndGetQuery(Ljava/util/TreeMap;)Ljava/lang/String;

    move-result-object v0

    .line 506
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://api.bilibili.com/x/web-interface/wbi/search/type?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 508
    const-string v1, "SearchResultContent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SearchMovie URL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    invoke-static {}, Lbl/vo;->getOkHttpClient()Lokhttp3/OkHttpClient;

    move-result-object v1

    .line 511
    new-instance v2, Lokhttp3/Request$Builder;

    invoke-direct {v2}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v2, v0}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 513
    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$3;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$3;-><init>(Lcom/bilibili/tv/ui/search/SearchResultContentFragment;)V

    invoke-interface {v0, v1}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    .line 561
    return-void
.end method

.method private searchUser()V
    .locals 4

    .prologue
    .line 668
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment;->isLoading:Z

    .line 669
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchResultContentFragment;->i()V

    .line 670
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchResultContentFragment;->h()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 672
    invoke-static {}, Lmybl/WbiSigner;->getInstance()Lmybl/WbiSigner;

    move-result-object v0

    .line 673
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    .line 674
    const-string v2, "search_type"

    const-string v3, "bili_user"

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 675
    const-string v2, "keyword"

    iget-object v3, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment;->keyword:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 676
    const-string v2, "order"

    const-string v3, "fans"

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 677
    const-string v2, "page"

    iget v3, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment;->currentPage:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 678
    const-string v2, "pagesize"

    const/16 v3, 0x14

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 680
    invoke-virtual {v0, v1}, Lmybl/WbiSigner;->encWbiAndGetQuery(Ljava/util/TreeMap;)Ljava/lang/String;

    move-result-object v0

    .line 681
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://api.bilibili.com/x/web-interface/wbi/search/type?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 683
    const-string v1, "SearchResultContent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SearchUser URL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    invoke-static {}, Lbl/vo;->getOkHttpClient()Lokhttp3/OkHttpClient;

    move-result-object v1

    .line 686
    new-instance v2, Lokhttp3/Request$Builder;

    invoke-direct {v2}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v2, v0}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 688
    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$5;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$5;-><init>(Lcom/bilibili/tv/ui/search/SearchResultContentFragment;)V

    invoke-interface {v0, v1}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    .line 736
    return-void
.end method

.method private searchVideo()V
    .locals 5

    .prologue
    .line 249
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment;->isLoading:Z

    .line 250
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchResultContentFragment;->i()V

    .line 251
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchResultContentFragment;->h()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 253
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v0

    invoke-static {v0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v0

    invoke-virtual {v0}, Lbl/mg;->e()Ljava/lang/String;

    move-result-object v0

    .line 254
    invoke-static {}, Lmybl/WbiSigner;->getInstance()Lmybl/WbiSigner;

    move-result-object v1

    .line 255
    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    .line 256
    const-string v3, "search_type"

    const-string v4, "video"

    invoke-virtual {v2, v3, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    const-string v3, "keyword"

    iget-object v4, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment;->keyword:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    const-string v3, "order"

    iget-object v4, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment;->order:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    const-string v3, "page"

    iget v4, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment;->currentPage:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    const-string v3, "pagesize"

    const/16 v4, 0x14

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    const-string v3, "access_key"

    invoke-virtual {v2, v3, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    invoke-virtual {v1, v2}, Lmybl/WbiSigner;->encWbiAndGetQuery(Ljava/util/TreeMap;)Ljava/lang/String;

    move-result-object v0

    .line 264
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://api.bilibili.com/x/web-interface/wbi/search/type?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 266
    const-string v1, "SearchResultContent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SearchVideo URL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    invoke-static {}, Lbl/vo;->getOkHttpClient()Lokhttp3/OkHttpClient;

    move-result-object v1

    .line 269
    new-instance v2, Lokhttp3/Request$Builder;

    invoke-direct {v2}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v2, v0}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 271
    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$1;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$1;-><init>(Lcom/bilibili/tv/ui/search/SearchResultContentFragment;)V

    invoke-interface {v0, v1}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    .line 320
    return-void
.end method

.method private updateHeaderCount(I)V
    .locals 3

    .prologue
    .line 210
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment;->headerCount:Landroid/widget/TextView;

    if-eqz v0, :cond_22

    .line 211
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment;->headerCount:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u6761\u7ed3\u679c"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment;->headerCount:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 214
    :cond_22
    return-void
.end method

.method private updateHeaderTitle()V
    .locals 3

    .prologue
    .line 204
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment;->headerTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment;->keyword:Ljava/lang/String;

    if-eqz v0, :cond_28

    .line 205
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment;->headerTitle:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u641c\u7d22 \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment;->keyword:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    :cond_28
    return-void
.end method


# virtual methods
.method public a(Landroid/support/v7/widget/RecyclerView;Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 111
    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    invoke-super {p0, p1, p2}, Lbl/ady;->a(Landroid/support/v7/widget/RecyclerView;Landroid/os/Bundle;)V

    .line 114
    new-instance v1, Lcom/bilibili/tv/widget/side/SideRightGridLayoutManger;

    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchResultContentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v2, 0x2

    invoke-direct {v1, v0, v2}, Lcom/bilibili/tv/widget/side/SideRightGridLayoutManger;-><init>(Landroid/content/Context;I)V

    .line 116
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchResultContentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 117
    instance-of v2, v0, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;

    if-eqz v2, :cond_24

    .line 118
    new-instance v2, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$BorderListener;

    check-cast v0, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;

    invoke-direct {v2, p0, v0}, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$BorderListener;-><init>(Lcom/bilibili/tv/ui/search/SearchResultContentFragment;Lcom/bilibili/tv/ui/search/SearchResultSideActivity;)V

    invoke-virtual {v1, v2}, Lcom/bilibili/tv/widget/side/SideRightGridLayoutManger;->a(Lcom/bilibili/tv/widget/border/BorderGridLayoutManager$a;)V

    .line 121
    :cond_24
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 122
    invoke-virtual {p1, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$h;)V

    .line 124
    const v0, 0x7f0601bb

    invoke-static {v0}, Lbl/adl;->b(I)I

    move-result v0

    .line 125
    const v2, 0x7f06006e

    invoke-static {v2}, Lbl/adl;->b(I)I

    move-result v2

    .line 126
    const v3, 0x7f06014d

    invoke-static {v3}, Lbl/adl;->b(I)I

    move-result v3

    .line 127
    invoke-virtual {p1, v3, v3, v3, v3}, Landroid/support/v7/widget/RecyclerView;->setPadding(IIII)V

    .line 128
    new-instance v3, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$ItemDecoration;

    invoke-direct {v3, v2, v0}, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$ItemDecoration;-><init>(II)V

    invoke-virtual {p1, v3}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView$g;)V

    .line 129
    new-instance v0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$ScrollListener;

    invoke-direct {v0, p0, v1}, Lcom/bilibili/tv/ui/search/SearchResultContentFragment$ScrollListener;-><init>(Lcom/bilibili/tv/ui/search/SearchResultContentFragment;Lcom/bilibili/tv/widget/side/SideRightGridLayoutManger;)V

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView$m;)V

    .line 131
    invoke-direct {p0}, Lcom/bilibili/tv/ui/search/SearchResultContentFragment;->loadData()V

    .line 132
    return-void
.end method

.method public c()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 221
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchResultContentFragment;->h()Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    .line 222
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchResultContentFragment;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_1e

    if-eqz v1, :cond_1e

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$a;

    move-result-object v2

    if-eqz v2, :cond_1e

    .line 223
    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$a;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$a;->a()I

    move-result v1

    if-lez v1, :cond_1e

    const/4 v0, 0x1

    .line 225
    :cond_1e
    return v0
.end method

.method public isLoading()Z
    .locals 1

    .prologue
    .line 217
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment;->isLoading:Z

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 93
    invoke-super {p0, p1}, Lbl/ady;->onCreate(Landroid/os/Bundle;)V

    .line 94
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchResultContentFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 95
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchResultContentFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "keyword"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment;->keyword:Ljava/lang/String;

    .line 96
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchResultContentFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "search_type"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment;->searchType:I

    .line 98
    :cond_22
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 102
    const v0, 0x7f0a0098

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 103
    const v0, 0x7f080199

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment;->headerLayout:Landroid/widget/LinearLayout;

    .line 104
    const v0, 0x7f08019a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment;->headerTitle:Landroid/widget/TextView;

    .line 105
    const v0, 0x7f08019b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultContentFragment;->headerCount:Landroid/widget/TextView;

    .line 106
    return-object v1
.end method
