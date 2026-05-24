.class public final Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;
.super Lbl/ady;
.source "SearchResultVideoFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$LiveRoomViewHolder;,
        Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$UserViewHolder;,
        Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$BangumiViewHolder;,
        Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoViewHolder;,
        Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;,
        Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$BangumiItem;,
        Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoItem;,
        Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$SearchUserResponse;,
        Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$SearchLiveRoomResponse;,
        Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$SearchBangumiResponse;,
        Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$SearchVideoResponse;,
        Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$ScrollListener;,
        Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$ItemDecoration;,
        Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$BorderListener;
    }
.end annotation


# static fields
.field public static final ARG_KEYWORD:Ljava/lang/String; = "arg_keyword"

.field public static final ARG_TID:Ljava/lang/String; = "arg_tid"

.field private static final COLUMN_COUNT:I = 0x2

.field private static final PAGE_SIZE:I = 0x2a

.field private static final TAG:Ljava/lang/String; = "SearchResultVideoFrag"


# instance fields
.field private adapter:Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;

.field private currentPage:I

.field private dateType:Ljava/lang/String;

.field private duration:Ljava/lang/String;

.field private hasMore:Z

.field private headerCount:Landroid/widget/TextView;

.field private headerLayout:Landroid/widget/LinearLayout;

.field private headerTitle:Landroid/widget/TextView;

.field private hintSort:Landroid/widget/TextView;

.field private isLoading:Z

.field private keyword:Ljava/lang/String;

.field private layoutManager:Lcom/bilibili/tv/widget/side/SideRightGridLayoutManger;

.field public liveOrder:Ljava/lang/String;

.field private loadingView:Lcom/bilibili/tv/ui/base/LoadingImageView;

.field private order:Ljava/lang/String;

.field private pubtimeBegin:Ljava/lang/String;

.field private pubtimeEnd:Ljava/lang/String;

.field private recyclerView:Landroid/support/v7/widget/RecyclerView;

.field private tid:I

.field private userOrder:Ljava/lang/String;

.field private userOrderSort:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 58
    invoke-direct {p0}, Lbl/ady;-><init>()V

    .line 66
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->isLoading:Z

    .line 67
    iput-boolean v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->hasMore:Z

    .line 70
    iput v1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->tid:I

    .line 71
    iput v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->currentPage:I

    .line 72
    const-string v0, ""

    iput-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->order:Ljava/lang/String;

    .line 73
    const-string v0, ""

    iput-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->userOrder:Ljava/lang/String;

    .line 74
    iput v1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->userOrderSort:I

    .line 75
    const-string v0, "online"

    iput-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->liveOrder:Ljava/lang/String;

    .line 76
    const-string v0, ""

    iput-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->pubtimeBegin:Ljava/lang/String;

    .line 77
    const-string v0, ""

    iput-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->pubtimeEnd:Ljava/lang/String;

    .line 78
    const-string v0, ""

    iput-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->duration:Ljava/lang/String;

    .line 79
    const-string v0, ""

    iput-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->dateType:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;)Z
    .locals 1

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->isLoading:Z

    return v0
.end method

.method static synthetic access$002(Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;Z)Z
    .locals 0

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->isLoading:Z

    return p1
.end method

.method static synthetic access$100(Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;)Z
    .locals 1

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->hasMore:Z

    return v0
.end method

.method static synthetic access$200(Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;)Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->adapter:Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;)Lcom/bilibili/tv/widget/side/SideRightGridLayoutManger;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->layoutManager:Lcom/bilibili/tv/widget/side/SideRightGridLayoutManger;

    return-object v0
.end method

.method static synthetic access$400(Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->b()V

    return-void
.end method

.method static synthetic access$500(Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;)Lcom/bilibili/tv/ui/base/LoadingImageView;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->loadingView:Lcom/bilibili/tv/ui/base/LoadingImageView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;Lcom/alibaba/fastjson/JSONObject;)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->handleVideoResponse(Lcom/alibaba/fastjson/JSONObject;)V

    return-void
.end method

.method static synthetic access$700(Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;Lcom/alibaba/fastjson/JSONObject;)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->handleBangumiResponse(Lcom/alibaba/fastjson/JSONObject;)V

    return-void
.end method

.method static synthetic access$800(Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;Lcom/alibaba/fastjson/JSONObject;)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->handleLiveRoomResponse(Lcom/alibaba/fastjson/JSONObject;)V

    return-void
.end method

.method static synthetic access$900(Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;Lcom/alibaba/fastjson/JSONObject;)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->handleUserResponse(Lcom/alibaba/fastjson/JSONObject;)V

    return-void
.end method

.method private final b()V
    .locals 0

    .prologue
    .line 238
    invoke-direct {p0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->loadData()V

    .line 239
    return-void
.end method

.method private getTypeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 301
    iget v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->tid:I

    packed-switch v0, :pswitch_data_18

    .line 307
    const-string v0, "\u89c6\u9891"

    :goto_7
    return-object v0

    .line 302
    :pswitch_8
    const-string v0, "\u89c6\u9891"

    goto :goto_7

    .line 303
    :pswitch_b
    const-string v0, "\u756a\u5267"

    goto :goto_7

    .line 304
    :pswitch_e
    const-string v0, "\u5f71\u89c6"

    goto :goto_7

    .line 305
    :pswitch_11
    const-string v0, "\u76f4\u64ad"

    goto :goto_7

    .line 306
    :pswitch_14
    const-string v0, "\u7528\u6237"

    goto :goto_7

    .line 301
    nop

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_8
        :pswitch_b
        :pswitch_e
        :pswitch_11
        :pswitch_14
    .end packed-switch
.end method

.method private handleBangumiResponse(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 10

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 800
    const-string v0, "SearchResultVideoFrag_SearchBangumi"

    invoke-static {v0, p1}, Lmybl/LogUtil;->json(Ljava/lang/String;Ljava/lang/Object;)V

    .line 801
    const-string v0, "data"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 802
    if-nez v0, :cond_cd

    .line 805
    :goto_f
    const-string v0, "result"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v4

    .line 806
    if-eqz v4, :cond_1d

    invoke-virtual {v4}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 807
    :cond_1d
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->isLoading:Z

    .line 808
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->hasMore:Z

    .line 809
    iget v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->currentPage:I

    if-ne v0, v3, :cond_2a

    .line 810
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->loadingView:Lcom/bilibili/tv/ui/base/LoadingImageView;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/base/LoadingImageView;->c()V

    .line 851
    :cond_2a
    :goto_2a
    return-void

    .line 815
    :cond_2b
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->isLoading:Z

    .line 816
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->loadingView:Lcom/bilibili/tv/ui/base/LoadingImageView;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/base/LoadingImageView;->b()V

    .line 817
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 818
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->headerLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_40

    .line 819
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->headerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 822
    :cond_40
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    .line 823
    :goto_46
    invoke-virtual {v4}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_a8

    .line 824
    invoke-virtual {v4, v0}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    .line 825
    new-instance v6, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$BangumiItem;

    invoke-direct {v6}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$BangumiItem;-><init>()V

    .line 826
    const-string v7, "title"

    invoke-virtual {v2, v7}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 827
    invoke-static {v7}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$BangumiItem;->title:Ljava/lang/String;

    .line 828
    const-string v7, "cover"

    invoke-virtual {v2, v7}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$BangumiItem;->cover:Ljava/lang/String;

    .line 829
    const-string v7, "season_id"

    invoke-virtual {v2, v7}, Lcom/alibaba/fastjson/JSONObject;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$BangumiItem;->param:Ljava/lang/String;

    .line 830
    const-string v7, "areas"

    invoke-virtual {v2, v7}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$BangumiItem;->area:Ljava/lang/String;

    .line 831
    const-string v7, "styles"

    invoke-virtual {v2, v7}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$BangumiItem;->style:Ljava/lang/String;

    .line 832
    const-string v7, "rating"

    invoke-virtual {v2, v7}, Lcom/alibaba/fastjson/JSONObject;->getDoubleValue(Ljava/lang/String;)D

    move-result-wide v8

    iput-wide v8, v6, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$BangumiItem;->rating:D

    .line 833
    const-string v7, "vote"

    invoke-virtual {v2, v7}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v2

    iput v2, v6, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$BangumiItem;->vote:I

    .line 834
    iget v2, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->tid:I

    if-ne v2, v3, :cond_a6

    move v2, v3

    :goto_9e
    iput-boolean v2, v6, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$BangumiItem;->isBangumi:Z

    .line 835
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 823
    add-int/lit8 v0, v0, 0x1

    goto :goto_46

    :cond_a6
    move v2, v1

    .line 834
    goto :goto_9e

    .line 838
    :cond_a8
    iget v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->currentPage:I

    if-ne v0, v3, :cond_c0

    .line 839
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->adapter:Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;

    invoke-virtual {v0, v5}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->setBangumis(Ljava/util/List;)V

    .line 844
    :goto_b1
    invoke-virtual {v4}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    const/16 v2, 0x14

    if-ge v0, v2, :cond_c6

    .line 845
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->hasMore:Z

    .line 850
    :goto_bb
    invoke-direct {p0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->updateHeaderInfo()V

    goto/16 :goto_2a

    .line 841
    :cond_c0
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->adapter:Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;

    invoke-virtual {v0, v5}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->addBangumis(Ljava/util/List;)V

    goto :goto_b1

    .line 847
    :cond_c6
    iget v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->currentPage:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->currentPage:I

    goto :goto_bb

    :cond_cd
    move-object p1, v0

    goto/16 :goto_f
.end method

.method private handleLiveRoomResponse(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 902
    const-string v0, "SearchResultVideoFrag_SearchLiveRoom"

    invoke-static {v0, p1}, Lmybl/LogUtil;->json(Ljava/lang/String;Ljava/lang/Object;)V

    .line 903
    const-string v0, "data"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 904
    if-nez v0, :cond_c1

    .line 907
    :goto_f
    const-string v0, "result"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v2

    .line 908
    if-eqz v2, :cond_1d

    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 909
    :cond_1d
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->isLoading:Z

    .line 910
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->hasMore:Z

    .line 911
    iget v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->currentPage:I

    if-ne v0, v8, :cond_2a

    .line 912
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->loadingView:Lcom/bilibili/tv/ui/base/LoadingImageView;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/base/LoadingImageView;->c()V

    .line 953
    :cond_2a
    :goto_2a
    return-void

    .line 917
    :cond_2b
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->isLoading:Z

    .line 918
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->loadingView:Lcom/bilibili/tv/ui/base/LoadingImageView;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/base/LoadingImageView;->b()V

    .line 919
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 920
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->headerLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_40

    .line 921
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->headerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 924
    :cond_40
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    .line 925
    :goto_46
    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v4

    if-ge v0, v4, :cond_9c

    .line 926
    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    .line 927
    new-instance v5, Lmybl/BiliLiveContentEx2;

    invoke-direct {v5}, Lmybl/BiliLiveContentEx2;-><init>()V

    .line 928
    const-string v6, "title"

    invoke-virtual {v4, v6}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 929
    invoke-static {v6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lmybl/BiliLiveContentEx2;->mTitle:Ljava/lang/String;

    .line 930
    const-string v6, "uname"

    invoke-virtual {v4, v6}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lmybl/BiliLiveContentEx2;->mUname:Ljava/lang/String;

    .line 931
    const-string v6, "user_cover"

    invoke-virtual {v4, v6}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lmybl/BiliLiveContentEx2;->mCover:Ljava/lang/String;

    .line 932
    iget-object v6, v5, Lmybl/BiliLiveContentEx2;->mCover:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_85

    .line 933
    const-string v6, "cover"

    invoke-virtual {v4, v6}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lmybl/BiliLiveContentEx2;->mCover:Ljava/lang/String;

    .line 935
    :cond_85
    const-string v6, "online"

    invoke-virtual {v4, v6}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v6

    int-to-long v6, v6

    iput-wide v6, v5, Lmybl/BiliLiveContentEx2;->mOnline:J

    .line 936
    const-string v6, "roomid"

    invoke-virtual {v4, v6}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v4

    iput v4, v5, Lmybl/BiliLiveContentEx2;->mRoomId:I

    .line 937
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 925
    add-int/lit8 v0, v0, 0x1

    goto :goto_46

    .line 940
    :cond_9c
    iget v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->currentPage:I

    if-ne v0, v8, :cond_b4

    .line 941
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->adapter:Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->setLiveRooms(Ljava/util/List;)V

    .line 946
    :goto_a5
    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    const/16 v2, 0x14

    if-ge v0, v2, :cond_ba

    .line 947
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->hasMore:Z

    .line 952
    :goto_af
    invoke-direct {p0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->updateHeaderInfo()V

    goto/16 :goto_2a

    .line 943
    :cond_b4
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->adapter:Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->addLiveRooms(Ljava/util/List;)V

    goto :goto_a5

    .line 949
    :cond_ba
    iget v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->currentPage:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->currentPage:I

    goto :goto_af

    :cond_c1
    move-object p1, v0

    goto/16 :goto_f
.end method

.method private handleUserResponse(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 1004
    const-string v0, "SearchResultVideoFrag_SearchUser"

    invoke-static {v0, p1}, Lmybl/LogUtil;->json(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1005
    const-string v0, "data"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 1006
    if-nez v0, :cond_10

    .line 1053
    :cond_f
    :goto_f
    return-void

    .line 1009
    :cond_10
    const-string v2, "result"

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v2

    .line 1010
    if-eqz v2, :cond_1e

    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 1011
    :cond_1e
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->isLoading:Z

    .line 1012
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->hasMore:Z

    .line 1013
    iget v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->currentPage:I

    if-ne v0, v8, :cond_f

    .line 1014
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->loadingView:Lcom/bilibili/tv/ui/base/LoadingImageView;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/base/LoadingImageView;->c()V

    goto :goto_f

    .line 1019
    :cond_2c
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->isLoading:Z

    .line 1020
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->loadingView:Lcom/bilibili/tv/ui/base/LoadingImageView;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/base/LoadingImageView;->b()V

    .line 1021
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 1022
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->headerLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_41

    .line 1023
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->headerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1026
    :cond_41
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    .line 1027
    :goto_47
    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v4

    if-ge v0, v4, :cond_98

    .line 1028
    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    .line 1029
    new-instance v5, Lcom/bilibili/tv/api/search/BiliSearchResultUper;

    invoke-direct {v5}, Lcom/bilibili/tv/api/search/BiliSearchResultUper;-><init>()V

    .line 1030
    const-string v6, "uname"

    invoke-virtual {v4, v6}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1031
    invoke-static {v6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/bilibili/tv/api/search/BiliSearchResultUper;->uname:Ljava/lang/String;

    .line 1032
    const-string v6, "upic"

    invoke-virtual {v4, v6}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/bilibili/tv/api/search/BiliSearchResultUper;->upic:Ljava/lang/String;

    .line 1033
    const-string v6, "usign"

    invoke-virtual {v4, v6}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/bilibili/tv/api/search/BiliSearchResultUper;->usign:Ljava/lang/String;

    .line 1034
    const-string v6, "mid"

    invoke-virtual {v4, v6}, Lcom/alibaba/fastjson/JSONObject;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iput-wide v6, v5, Lcom/bilibili/tv/api/search/BiliSearchResultUper;->mid:J

    .line 1035
    const-string v6, "fans"

    invoke-virtual {v4, v6}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v6

    iput v6, v5, Lcom/bilibili/tv/api/search/BiliSearchResultUper;->fans:I

    .line 1036
    const-string v6, "videos"

    invoke-virtual {v4, v6}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v4

    iput v4, v5, Lcom/bilibili/tv/api/search/BiliSearchResultUper;->videos:I

    .line 1037
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1027
    add-int/lit8 v0, v0, 0x1

    goto :goto_47

    .line 1040
    :cond_98
    iget v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->currentPage:I

    if-ne v0, v8, :cond_b0

    .line 1041
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->adapter:Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->setUsers(Ljava/util/List;)V

    .line 1046
    :goto_a1
    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    const/16 v2, 0x14

    if-ge v0, v2, :cond_b6

    .line 1047
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->hasMore:Z

    .line 1052
    :goto_ab
    invoke-direct {p0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->updateHeaderInfo()V

    goto/16 :goto_f

    .line 1043
    :cond_b0
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->adapter:Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->addUsers(Ljava/util/List;)V

    goto :goto_a1

    .line 1049
    :cond_b6
    iget v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->currentPage:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->currentPage:I

    goto :goto_ab
.end method

.method private handleVideoResponse(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 10

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 679
    const-string v0, "SearchResultVideoFrag_SearchVideo"

    invoke-static {v0, p1}, Lmybl/LogUtil;->json(Ljava/lang/String;Ljava/lang/Object;)V

    .line 680
    const-string v0, "data"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 681
    if-nez v0, :cond_18b

    .line 684
    :goto_f
    const-string v0, "result"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v4

    .line 685
    if-eqz v4, :cond_1d

    invoke-virtual {v4}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 686
    :cond_1d
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->isLoading:Z

    .line 687
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->hasMore:Z

    .line 688
    iget v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->currentPage:I

    if-ne v0, v3, :cond_2a

    .line 689
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->loadingView:Lcom/bilibili/tv/ui/base/LoadingImageView;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/base/LoadingImageView;->c()V

    .line 749
    :cond_2a
    :goto_2a
    return-void

    .line 694
    :cond_2b
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->isLoading:Z

    .line 695
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->loadingView:Lcom/bilibili/tv/ui/base/LoadingImageView;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/base/LoadingImageView;->b()V

    .line 696
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 697
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->headerLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_40

    .line 698
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->headerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 701
    :cond_40
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    .line 702
    :goto_46
    invoke-virtual {v4}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_166

    .line 703
    invoke-virtual {v4, v0}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v6

    .line 704
    const-string v2, "type"

    invoke-virtual {v6, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 705
    const-string v7, "video"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_61

    .line 702
    :goto_5e
    add-int/lit8 v0, v0, 0x1

    goto :goto_46

    .line 708
    :cond_61
    new-instance v7, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoItem;

    invoke-direct {v7}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoItem;-><init>()V

    .line 709
    const-string v2, "title"

    invoke-virtual {v6, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 710
    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v7, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoItem;->title:Ljava/lang/String;

    .line 711
    const-string v2, "author"

    invoke-virtual {v6, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v7, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoItem;->author:Ljava/lang/String;

    .line 712
    const-string v2, "play"

    invoke-virtual {v6, v2}, Lcom/alibaba/fastjson/JSONObject;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v7, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoItem;->play:Ljava/lang/String;

    .line 713
    const-string v2, "video_review"

    invoke-virtual {v6, v2}, Lcom/alibaba/fastjson/JSONObject;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v7, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoItem;->danmaku:Ljava/lang/String;

    .line 714
    const-string v2, "pic"

    invoke-virtual {v6, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v7, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoItem;->cover:Ljava/lang/String;

    .line 715
    const-string v2, "aid"

    invoke-virtual {v6, v2}, Lcom/alibaba/fastjson/JSONObject;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v7, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoItem;->param:Ljava/lang/String;

    .line 716
    const-string v2, "pubdate"

    invoke-virtual {v6, v2}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c2

    .line 717
    const-string v2, "pubdate"

    invoke-virtual {v6, v2}, Lcom/alibaba/fastjson/JSONObject;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 718
    invoke-static {v8, v9}, Lcom/bilibili/tv/util/DateHelper;->formatDate(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v7, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoItem;->pubdate:Ljava/lang/String;

    .line 720
    :cond_c2
    const-string v2, "duration"

    invoke-virtual {v6, v2}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d6

    .line 722
    const-string v2, "duration"

    invoke-virtual {v6, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 723
    invoke-static {v2}, Lcom/bilibili/tv/util/DateHelper;->formatDuration(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v7, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoItem;->duration:Ljava/lang/String;

    .line 725
    :cond_d6
    const-string v2, "is_charge_video"

    invoke-virtual {v6, v2}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v3, :cond_131

    move v2, v3

    :goto_df
    iput-boolean v2, v7, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoItem;->isChargeVideo:Z

    .line 726
    const/4 v2, 0x3

    if-ge v0, v2, :cond_12c

    .line 727
    const-string v2, "is_charge_video"

    invoke-virtual {v6, v2}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_133

    .line 728
    const-string v2, "SearchResultVideoFrag"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "parseVideo["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] title="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v7, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoItem;->title:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " is_charge_video="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "is_charge_video"

    invoke-virtual {v6, v9}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " isChargeVideo="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v8, v7, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoItem;->isChargeVideo:Z

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    :cond_12c
    :goto_12c
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5e

    :cond_131
    move v2, v1

    .line 725
    goto :goto_df

    .line 730
    :cond_133
    const-string v2, "SearchResultVideoFrag"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "parseVideo["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] title="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v7, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoItem;->title:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " NO is_charge_video field! keys="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Lcom/alibaba/fastjson/JSONObject;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12c

    .line 736
    :cond_166
    iget v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->currentPage:I

    if-ne v0, v3, :cond_17e

    .line 737
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->adapter:Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;

    invoke-virtual {v0, v5}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->setVideos(Ljava/util/List;)V

    .line 742
    :goto_16f
    invoke-virtual {v4}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    const/16 v2, 0x2a

    if-ge v0, v2, :cond_184

    .line 743
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->hasMore:Z

    .line 748
    :goto_179
    invoke-direct {p0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->updateHeaderInfo()V

    goto/16 :goto_2a

    .line 739
    :cond_17e
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->adapter:Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;

    invoke-virtual {v0, v5}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->addVideos(Ljava/util/List;)V

    goto :goto_16f

    .line 745
    :cond_184
    iget v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->currentPage:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->currentPage:I

    goto :goto_179

    :cond_18b
    move-object p1, v0

    goto/16 :goto_f
.end method

.method private loadData()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 242
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->isLoading:Z

    if-eqz v0, :cond_6

    .line 280
    :cond_5
    :goto_5
    return-void

    .line 246
    :cond_6
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->keyword:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 250
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->isLoading:Z

    .line 252
    iget v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->currentPage:I

    if-ne v0, v1, :cond_2a

    .line 253
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->loadingView:Lcom/bilibili/tv/ui/base/LoadingImageView;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/base/LoadingImageView;->a()V

    .line 254
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 255
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->headerLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2a

    .line 256
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->headerLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 260
    :cond_2a
    iget v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->tid:I

    packed-switch v0, :pswitch_data_48

    .line 277
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->searchVideo()V

    goto :goto_5

    .line 262
    :pswitch_33
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->searchVideo()V

    goto :goto_5

    .line 265
    :pswitch_37
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->searchBangumi()V

    goto :goto_5

    .line 268
    :pswitch_3b
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->searchMediaFt()V

    goto :goto_5

    .line 271
    :pswitch_3f
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->searchLiveRoom()V

    goto :goto_5

    .line 274
    :pswitch_43
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->searchUser()V

    goto :goto_5

    .line 260
    nop

    :pswitch_data_48
    .packed-switch 0x0
        :pswitch_33
        :pswitch_37
        :pswitch_3b
        :pswitch_3f
        :pswitch_43
    .end packed-switch
.end method

.method public static newInstance(Ljava/lang/String;I)Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;
    .locals 3

    .prologue
    .line 90
    new-instance v0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;

    invoke-direct {v0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;-><init>()V

    .line 91
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 92
    const-string v2, "arg_keyword"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-string v2, "arg_tid"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 94
    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->setArguments(Landroid/os/Bundle;)V

    .line 95
    return-object v0
.end method

.method private updateHeaderInfo()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    .line 283
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->headerTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_2e

    .line 284
    invoke-direct {p0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->getTypeName()Ljava/lang/String;

    move-result-object v0

    .line 285
    iget-object v1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->headerTitle:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u641c\u7d22\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->keyword:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 287
    :cond_2e
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->headerCount:Landroid/widget/TextView;

    if-eqz v0, :cond_37

    .line 288
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->headerCount:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 290
    :cond_37
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->hintSort:Landroid/widget/TextView;

    if-eqz v0, :cond_4a

    .line 291
    iget v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->tid:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_45

    iget v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->tid:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4b

    .line 292
    :cond_45
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->hintSort:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 298
    :cond_4a
    :goto_4a
    return-void

    .line 294
    :cond_4b
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->hintSort:Landroid/widget/TextView;

    const-string v1, "\u70b9\u51fb[\u83dc\u5355]\u952e\u6392\u5e8f"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 295
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->hintSort:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4a
.end method


# virtual methods
.method public a(Landroid/support/v7/widget/RecyclerView;Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 122
    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    invoke-super {p0, p1, p2}, Lbl/ady;->a(Landroid/support/v7/widget/RecyclerView;Landroid/os/Bundle;)V

    .line 125
    new-instance v0, Lcom/bilibili/tv/widget/side/SideRightGridLayoutManger;

    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/bilibili/tv/widget/side/SideRightGridLayoutManger;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->layoutManager:Lcom/bilibili/tv/widget/side/SideRightGridLayoutManger;

    .line 127
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 128
    if-nez v0, :cond_22

    .line 129
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.bilibili.tv.ui.search.SearchResultSideActivity"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 131
    :cond_22
    iget-object v1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->layoutManager:Lcom/bilibili/tv/widget/side/SideRightGridLayoutManger;

    new-instance v2, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$BorderListener;

    check-cast v0, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;

    invoke-direct {v2, p0, v0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$BorderListener;-><init>(Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;Lcom/bilibili/tv/ui/search/SearchResultSideActivity;)V

    invoke-virtual {v1, v2}, Lcom/bilibili/tv/widget/side/SideRightGridLayoutManger;->a(Lcom/bilibili/tv/widget/border/BorderGridLayoutManager$a;)V

    .line 133
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 134
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->layoutManager:Lcom/bilibili/tv/widget/side/SideRightGridLayoutManger;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$h;)V

    .line 136
    const v0, 0x7f0601bb

    invoke-static {v0}, Lbl/adl;->b(I)I

    move-result v0

    .line 137
    const v1, 0x7f06006e

    invoke-static {v1}, Lbl/adl;->b(I)I

    move-result v1

    .line 138
    const v2, 0x7f06014d

    invoke-static {v2}, Lbl/adl;->b(I)I

    move-result v2

    .line 139
    const v3, 0x7f060154

    invoke-static {v3}, Lbl/adl;->b(I)I

    move-result v3

    .line 140
    invoke-virtual {p1, v2, v2, v2, v3}, Landroid/support/v7/widget/RecyclerView;->setPadding(IIII)V

    .line 141
    new-instance v2, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$ItemDecoration;

    invoke-direct {v2, v1, v0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$ItemDecoration;-><init>(II)V

    invoke-virtual {p1, v2}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView$g;)V

    .line 142
    new-instance v0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$ScrollListener;

    invoke-direct {v0, p0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$ScrollListener;-><init>(Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;)V

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView$m;)V

    .line 144
    new-instance v0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;

    invoke-direct {v0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->adapter:Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;

    .line 145
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->adapter:Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 147
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->i()V

    .line 148
    invoke-direct {p0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->b()V

    .line 149
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 215
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->adapter:Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;

    if-eqz v0, :cond_14

    .line 216
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->adapter:Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->a()I

    move-result v0

    if-lez v0, :cond_14

    .line 217
    const/4 v0, 0x1

    .line 220
    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public d_()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 231
    invoke-super {p0}, Lbl/ady;->d_()V

    .line 232
    iput v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->currentPage:I

    .line 233
    iput-boolean v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->hasMore:Z

    .line 234
    invoke-direct {p0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->b()V

    .line 235
    return-void
.end method

.method public getDateType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 593
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->dateType:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()Ljava/lang/String;
    .locals 1

    .prologue
    .line 615
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->duration:Ljava/lang/String;

    return-object v0
.end method

.method public getLiveOrder()Ljava/lang/String;
    .locals 1

    .prologue
    .line 577
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->liveOrder:Ljava/lang/String;

    return-object v0
.end method

.method public getOrder()Ljava/lang/String;
    .locals 1

    .prologue
    .line 520
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->order:Ljava/lang/String;

    return-object v0
.end method

.method public getPubtimeBegin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 597
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->pubtimeBegin:Ljava/lang/String;

    return-object v0
.end method

.method public getPubtimeEnd()Ljava/lang/String;
    .locals 1

    .prologue
    .line 601
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->pubtimeEnd:Ljava/lang/String;

    return-object v0
.end method

.method public getTid()I
    .locals 1

    .prologue
    .line 619
    iget v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->tid:I

    return v0
.end method

.method public getUserOrder()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 552
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->userOrder:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 553
    const-string v0, ""

    .line 559
    :goto_b
    return-object v0

    .line 554
    :cond_c
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->userOrder:Ljava/lang/String;

    const-string v1, "fans"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->userOrderSort:I

    if-ne v0, v2, :cond_1d

    .line 555
    const-string v0, "fans_asc"

    goto :goto_b

    .line 556
    :cond_1d
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->userOrder:Ljava/lang/String;

    const-string v1, "level"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    iget v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->userOrderSort:I

    if-ne v0, v2, :cond_2e

    .line 557
    const-string v0, "level_asc"

    goto :goto_b

    .line 559
    :cond_2e
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->userOrder:Ljava/lang/String;

    goto :goto_b
.end method

.method public isLoading()Z
    .locals 1

    .prologue
    .line 623
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->isLoading:Z

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 100
    invoke-super {p0, p1}, Lbl/ady;->onCreate(Landroid/os/Bundle;)V

    .line 101
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 102
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "arg_keyword"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->keyword:Ljava/lang/String;

    .line 103
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "arg_tid"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->tid:I

    .line 105
    :cond_24
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 109
    const v0, 0x7f0a0098

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 110
    const v0, 0x7f08019e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->headerLayout:Landroid/widget/LinearLayout;

    .line 111
    const v0, 0x7f08019f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->headerTitle:Landroid/widget/TextView;

    .line 112
    const v0, 0x7f0801a0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->headerCount:Landroid/widget/TextView;

    .line 113
    const v0, 0x7f080097

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->hintSort:Landroid/widget/TextView;

    .line 114
    const v0, 0x7f0800eb

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 115
    const v0, 0x7f0800b7

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/base/LoadingImageView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->loadingView:Lcom/bilibili/tv/ui/base/LoadingImageView;

    .line 116
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p0, v0, p3}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->a(Landroid/support/v7/widget/RecyclerView;Landroid/os/Bundle;)V

    .line 117
    return-object v1
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 225
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->adapter:Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;

    .line 226
    invoke-super {p0}, Lbl/ady;->onDestroyView()V

    .line 227
    return-void
.end method

.method public searchBangumi()V
    .locals 5

    .prologue
    .line 354
    invoke-static {}, Lmybl/WbiSigner;->getInstance()Lmybl/WbiSigner;

    move-result-object v0

    .line 355
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    .line 356
    const-string v2, "search_type"

    const-string v3, "media_bangumi"

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    const-string v2, "keyword"

    iget-object v3, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->keyword:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    const-string v2, "order"

    iget-object v3, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->order:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    const-string v2, "page"

    iget v3, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->currentPage:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    const-string v2, "page_size"

    const-string v3, "20"

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    const-string v2, "platform"

    const-string v3, "pc"

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    invoke-virtual {v0, v1}, Lmybl/WbiSigner;->encWbiAndGetQuery(Ljava/util/TreeMap;)Ljava/lang/String;

    move-result-object v0

    .line 363
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://api.bilibili.com/x/web-interface/wbi/search/type?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 364
    const-string v0, "SearchResultVideoFrag"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "=== SearchBangumi URL ===\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lmybl/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v0

    invoke-static {v0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v0

    invoke-static {v0}, Lmybl/CookieUtil;->getFullCookieWithDevice(Lbl/mg;)Ljava/lang/String;

    move-result-object v2

    .line 368
    :try_start_72
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->keyword:Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-static {v0, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_79} :catch_c9

    move-result-object v0

    .line 369
    :goto_7a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "https://search.bilibili.com/bangumi?keyword="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "&from_source=webtop_search&spm_id_from=333.1007&search_source=3"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 370
    invoke-static {}, Lbl/vo;->getOkHttpClient()Lokhttp3/OkHttpClient;

    move-result-object v3

    .line 371
    new-instance v4, Lokhttp3/Request$Builder;

    invoke-direct {v4}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v4, v1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    move-result-object v1

    const-string v4, "Cookie"

    .line 372
    invoke-virtual {v1, v4, v2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    const-string v2, "Referer"

    .line 373
    invoke-virtual {v1, v2, v0}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    const-string v1, "User-Agent"

    const-string v2, "Mozilla/5.0 (Linux; Android 9; Redmi 6 Pro) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.147 Mobile Safari/537.36"

    .line 374
    invoke-virtual {v0, v1, v2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 375
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 376
    invoke-virtual {v3, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$SearchBangumiResponse;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$SearchBangumiResponse;-><init>(Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;)V

    invoke-interface {v0, v1}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    .line 377
    return-void

    .line 368
    :catch_c9
    move-exception v0

    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->keyword:Ljava/lang/String;

    goto :goto_7a
.end method

.method public searchLiveRoom()V
    .locals 5

    .prologue
    .line 406
    invoke-static {}, Lmybl/WbiSigner;->getInstance()Lmybl/WbiSigner;

    move-result-object v0

    .line 407
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    .line 408
    const-string v2, "search_type"

    const-string v3, "live_room"

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    const-string v2, "keyword"

    iget-object v3, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->keyword:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    const-string v2, "order"

    iget-object v3, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->liveOrder:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    const-string v2, "page"

    iget v3, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->currentPage:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    const-string v2, "page_size"

    const-string v3, "20"

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    const-string v2, "platform"

    const-string v3, "pc"

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    invoke-virtual {v0, v1}, Lmybl/WbiSigner;->encWbiAndGetQuery(Ljava/util/TreeMap;)Ljava/lang/String;

    move-result-object v0

    .line 415
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://api.bilibili.com/x/web-interface/wbi/search/type?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 416
    const-string v0, "SearchResultVideoFrag"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "=== SearchLiveRoom URL ===\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lmybl/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v0

    invoke-static {v0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v0

    invoke-static {v0}, Lmybl/CookieUtil;->getFullCookieWithDevice(Lbl/mg;)Ljava/lang/String;

    move-result-object v2

    .line 420
    :try_start_72
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->keyword:Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-static {v0, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_79} :catch_c9

    move-result-object v0

    .line 421
    :goto_7a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "https://search.bilibili.com/live?keyword="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "&from_source=webtop_search&spm_id_from=333.1007&search_source=3"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 422
    invoke-static {}, Lbl/vo;->getOkHttpClient()Lokhttp3/OkHttpClient;

    move-result-object v3

    .line 423
    new-instance v4, Lokhttp3/Request$Builder;

    invoke-direct {v4}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v4, v1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    move-result-object v1

    const-string v4, "Cookie"

    .line 424
    invoke-virtual {v1, v4, v2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    const-string v2, "Referer"

    .line 425
    invoke-virtual {v1, v2, v0}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    const-string v1, "User-Agent"

    const-string v2, "Mozilla/5.0 (Linux; Android 9; Redmi 6 Pro) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.147 Mobile Safari/537.36"

    .line 426
    invoke-virtual {v0, v1, v2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 427
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 428
    invoke-virtual {v3, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$SearchLiveRoomResponse;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$SearchLiveRoomResponse;-><init>(Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;)V

    invoke-interface {v0, v1}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    .line 429
    return-void

    .line 420
    :catch_c9
    move-exception v0

    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->keyword:Ljava/lang/String;

    goto :goto_7a
.end method

.method public searchMediaFt()V
    .locals 5

    .prologue
    .line 380
    invoke-static {}, Lmybl/WbiSigner;->getInstance()Lmybl/WbiSigner;

    move-result-object v0

    .line 381
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    .line 382
    const-string v2, "search_type"

    const-string v3, "media_ft"

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    const-string v2, "keyword"

    iget-object v3, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->keyword:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    const-string v2, "order"

    iget-object v3, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->order:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    const-string v2, "page"

    iget v3, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->currentPage:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    const-string v2, "page_size"

    const-string v3, "20"

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    const-string v2, "platform"

    const-string v3, "pc"

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    invoke-virtual {v0, v1}, Lmybl/WbiSigner;->encWbiAndGetQuery(Ljava/util/TreeMap;)Ljava/lang/String;

    move-result-object v0

    .line 389
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://api.bilibili.com/x/web-interface/wbi/search/type?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 390
    const-string v0, "SearchResultVideoFrag"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "=== SearchMediaFt URL ===\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lmybl/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v0

    invoke-static {v0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v0

    invoke-static {v0}, Lmybl/CookieUtil;->getFullCookieWithDevice(Lbl/mg;)Ljava/lang/String;

    move-result-object v2

    .line 394
    :try_start_72
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->keyword:Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-static {v0, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_79} :catch_c9

    move-result-object v0

    .line 395
    :goto_7a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "https://search.bilibili.com/movie?keyword="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "&from_source=webtop_search&spm_id_from=333.1007&search_source=3"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 396
    invoke-static {}, Lbl/vo;->getOkHttpClient()Lokhttp3/OkHttpClient;

    move-result-object v3

    .line 397
    new-instance v4, Lokhttp3/Request$Builder;

    invoke-direct {v4}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v4, v1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    move-result-object v1

    const-string v4, "Cookie"

    .line 398
    invoke-virtual {v1, v4, v2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    const-string v2, "Referer"

    .line 399
    invoke-virtual {v1, v2, v0}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    const-string v1, "User-Agent"

    const-string v2, "Mozilla/5.0 (Linux; Android 9; Redmi 6 Pro) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.147 Mobile Safari/537.36"

    .line 400
    invoke-virtual {v0, v1, v2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 401
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 402
    invoke-virtual {v3, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$SearchBangumiResponse;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$SearchBangumiResponse;-><init>(Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;)V

    invoke-interface {v0, v1}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    .line 403
    return-void

    .line 394
    :catch_c9
    move-exception v0

    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->keyword:Ljava/lang/String;

    goto :goto_7a
.end method

.method public searchUser()V
    .locals 5

    .prologue
    .line 432
    invoke-static {}, Lmybl/WbiSigner;->getInstance()Lmybl/WbiSigner;

    move-result-object v0

    .line 433
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    .line 434
    const-string v2, "search_type"

    const-string v3, "bili_user"

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    const-string v2, "keyword"

    iget-object v3, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->keyword:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    iget-object v2, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->userOrder:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_31

    .line 437
    const-string v2, "order"

    iget-object v3, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->userOrder:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    const-string v2, "order_sort"

    iget v3, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->userOrderSort:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    :cond_31
    const-string v2, "page"

    iget v3, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->currentPage:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    const-string v2, "page_size"

    const-string v3, "20"

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    const-string v2, "platform"

    const-string v3, "pc"

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    invoke-virtual {v0, v1}, Lmybl/WbiSigner;->encWbiAndGetQuery(Ljava/util/TreeMap;)Ljava/lang/String;

    move-result-object v0

    .line 444
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://api.bilibili.com/x/web-interface/wbi/search/type?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 445
    const-string v0, "SearchResultVideoFrag"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "=== SearchUser URL ===\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lmybl/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v0

    invoke-static {v0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v0

    invoke-static {v0}, Lmybl/CookieUtil;->getFullCookieWithDevice(Lbl/mg;)Ljava/lang/String;

    move-result-object v2

    .line 449
    :try_start_85
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->keyword:Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-static {v0, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_85 .. :try_end_8c} :catch_dc

    move-result-object v0

    .line 450
    :goto_8d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "https://search.bilibili.com/upuser?keyword="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "&from_source=webtop_search&spm_id_from=333.1007&search_source=3"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 451
    invoke-static {}, Lbl/vo;->getOkHttpClient()Lokhttp3/OkHttpClient;

    move-result-object v3

    .line 452
    new-instance v4, Lokhttp3/Request$Builder;

    invoke-direct {v4}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v4, v1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    move-result-object v1

    const-string v4, "Cookie"

    .line 453
    invoke-virtual {v1, v4, v2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    const-string v2, "Referer"

    .line 454
    invoke-virtual {v1, v2, v0}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    const-string v1, "User-Agent"

    const-string v2, "Mozilla/5.0 (Linux; Android 9; Redmi 6 Pro) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.147 Mobile Safari/537.36"

    .line 455
    invoke-virtual {v0, v1, v2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 456
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 457
    invoke-virtual {v3, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$SearchUserResponse;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$SearchUserResponse;-><init>(Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;)V

    invoke-interface {v0, v1}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    .line 458
    return-void

    .line 449
    :catch_dc
    move-exception v0

    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->keyword:Ljava/lang/String;

    goto :goto_8d
.end method

.method public searchVideo()V
    .locals 5

    .prologue
    .line 312
    invoke-static {}, Lmybl/WbiSigner;->getInstance()Lmybl/WbiSigner;

    move-result-object v0

    .line 313
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    .line 314
    const-string v2, "search_type"

    const-string v3, "video"

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    const-string v2, "keyword"

    iget-object v3, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->keyword:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    iget-object v2, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->order:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_26

    .line 317
    const-string v2, "order"

    iget-object v3, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->order:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    :cond_26
    iget-object v2, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->pubtimeBegin:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_35

    .line 320
    const-string v2, "pubtime_begin_s"

    iget-object v3, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->pubtimeBegin:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    :cond_35
    iget-object v2, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->pubtimeEnd:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_44

    .line 323
    const-string v2, "pubtime_end_s"

    iget-object v3, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->pubtimeEnd:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    :cond_44
    iget-object v2, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->duration:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_53

    .line 326
    const-string v2, "duration"

    iget-object v3, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->duration:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    :cond_53
    const-string v2, "page"

    iget v3, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->currentPage:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    const-string v2, "page_size"

    const-string v3, "42"

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    const-string v2, "platform"

    const-string v3, "pc"

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    const-string v2, "web_location"

    const-string v3, "1430654"

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    const-string v2, "highlight"

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    const-string v2, "single_column"

    const-string v3, "0"

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    const-string v2, "ad_resource"

    const-string v3, "5654"

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    const-string v2, "source_tag"

    const-string v3, "3"

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    invoke-virtual {v0, v1}, Lmybl/WbiSigner;->encWbiAndGetQuery(Ljava/util/TreeMap;)Ljava/lang/String;

    move-result-object v0

    .line 337
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://api.bilibili.com/x/web-interface/wbi/search/type?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 338
    const-string v0, "SearchResultVideoFrag"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "=== SearchVideo URL ===\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lmybl/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v0

    invoke-static {v0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v0

    invoke-static {v0}, Lmybl/CookieUtil;->getFullCookieWithDevice(Lbl/mg;)Ljava/lang/String;

    move-result-object v2

    .line 342
    :try_start_ca
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->keyword:Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-static {v0, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_d1
    .catch Ljava/lang/Exception; {:try_start_ca .. :try_end_d1} :catch_121

    move-result-object v0

    .line 343
    :goto_d2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "https://search.bilibili.com/video?keyword="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "&from_source=webtop_search&spm_id_from=333.1007&search_source=3"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 344
    invoke-static {}, Lbl/vo;->getOkHttpClient()Lokhttp3/OkHttpClient;

    move-result-object v3

    .line 345
    new-instance v4, Lokhttp3/Request$Builder;

    invoke-direct {v4}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v4, v1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    move-result-object v1

    const-string v4, "Cookie"

    .line 346
    invoke-virtual {v1, v4, v2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    const-string v2, "Referer"

    .line 347
    invoke-virtual {v1, v2, v0}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    const-string v1, "User-Agent"

    const-string v2, "Mozilla/5.0 (Linux; Android 9; Redmi 6 Pro) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.147 Mobile Safari/537.36"

    .line 348
    invoke-virtual {v0, v1, v2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 349
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 350
    invoke-virtual {v3, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$SearchVideoResponse;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$SearchVideoResponse;-><init>(Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;)V

    invoke-interface {v0, v1}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    .line 351
    return-void

    .line 342
    :catch_121
    move-exception v0

    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->keyword:Ljava/lang/String;

    goto :goto_d2
.end method

.method public setDuration(Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 605
    iput-object p1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->duration:Ljava/lang/String;

    .line 606
    iput v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->currentPage:I

    .line 607
    iput-boolean v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->hasMore:Z

    .line 608
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->adapter:Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;

    if-eqz v0, :cond_10

    .line 609
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->adapter:Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->clear()V

    .line 611
    :cond_10
    invoke-direct {p0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->b()V

    .line 612
    return-void
.end method

.method public setLiveOrder(Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 564
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->liveOrder:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 574
    :goto_9
    return-void

    .line 567
    :cond_a
    iput-object p1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->liveOrder:Ljava/lang/String;

    .line 568
    iput v1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->currentPage:I

    .line 569
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->hasMore:Z

    .line 570
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->adapter:Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;

    if-eqz v0, :cond_19

    .line 571
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->adapter:Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->clear()V

    .line 573
    :cond_19
    invoke-direct {p0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->b()V

    goto :goto_9
.end method

.method public setOrder(Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 507
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->order:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 517
    :goto_9
    return-void

    .line 510
    :cond_a
    iput-object p1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->order:Ljava/lang/String;

    .line 511
    iput v1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->currentPage:I

    .line 512
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->hasMore:Z

    .line 513
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->adapter:Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;

    if-eqz v0, :cond_19

    .line 514
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->adapter:Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->clear()V

    .line 516
    :cond_19
    invoke-direct {p0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->b()V

    goto :goto_9
.end method

.method public setPubtime(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 581
    iput-object p1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->pubtimeBegin:Ljava/lang/String;

    .line 582
    iput-object p2, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->pubtimeEnd:Ljava/lang/String;

    .line 583
    iput-object p3, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->dateType:Ljava/lang/String;

    .line 584
    iput v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->currentPage:I

    .line 585
    iput-boolean v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->hasMore:Z

    .line 586
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->adapter:Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;

    if-eqz v0, :cond_14

    .line 587
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->adapter:Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->clear()V

    .line 589
    :cond_14
    invoke-direct {p0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->b()V

    .line 590
    return-void
.end method

.method public setUserOrder(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 524
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 525
    const-string v0, ""

    iput-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->userOrder:Ljava/lang/String;

    .line 526
    iput v1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->userOrderSort:I

    .line 543
    :goto_e
    iput v2, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->currentPage:I

    .line 544
    iput-boolean v2, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->hasMore:Z

    .line 545
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->adapter:Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;

    if-eqz v0, :cond_1b

    .line 546
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->adapter:Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->clear()V

    .line 548
    :cond_1b
    invoke-direct {p0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->b()V

    .line 549
    return-void

    .line 527
    :cond_1f
    const-string v0, "fans"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 528
    const-string v0, "fans"

    iput-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->userOrder:Ljava/lang/String;

    .line 529
    iput v1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->userOrderSort:I

    goto :goto_e

    .line 530
    :cond_2e
    const-string v0, "fans_asc"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 531
    const-string v0, "fans"

    iput-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->userOrder:Ljava/lang/String;

    .line 532
    iput v2, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->userOrderSort:I

    goto :goto_e

    .line 533
    :cond_3d
    const-string v0, "level"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 534
    const-string v0, "level"

    iput-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->userOrder:Ljava/lang/String;

    .line 535
    iput v1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->userOrderSort:I

    goto :goto_e

    .line 536
    :cond_4c
    const-string v0, "level_asc"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 537
    const-string v0, "level"

    iput-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->userOrder:Ljava/lang/String;

    .line 538
    iput v2, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->userOrderSort:I

    goto :goto_e

    .line 540
    :cond_5b
    iput-object p1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->userOrder:Ljava/lang/String;

    .line 541
    iput v1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->userOrderSort:I

    goto :goto_e
.end method

.method public updateSearchParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    .prologue
    const/4 v1, 0x1

    .line 461
    const/4 v0, 0x0

    .line 463
    iget-object v2, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->order:Ljava/lang/String;

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 464
    iput-object p1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->order:Ljava/lang/String;

    move v0, v1

    .line 468
    :cond_d
    const-string v3, ""

    .line 469
    const-string v2, ""

    .line 470
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_34

    .line 472
    :try_start_17
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 473
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    .line 474
    mul-int/lit8 v4, v4, 0x18

    mul-int/lit8 v4, v4, 0x3c

    int-to-long v4, v4

    const-wide/16 v8, 0x3c

    mul-long/2addr v4, v8

    sub-long v4, v6, v4

    .line 475
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 476
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
    :try_end_33
    .catch Ljava/lang/NumberFormatException; {:try_start_17 .. :try_end_33} :catch_71

    move-result-object v2

    .line 482
    :cond_34
    :goto_34
    iget-object v4, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->pubtimeBegin:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4c

    iget-object v4, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->pubtimeEnd:Ljava/lang/String;

    .line 483
    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4c

    iget-object v4, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->dateType:Ljava/lang/String;

    .line 484
    invoke-static {p2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_53

    .line 485
    :cond_4c
    iput-object v3, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->pubtimeBegin:Ljava/lang/String;

    .line 486
    iput-object v2, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->pubtimeEnd:Ljava/lang/String;

    .line 487
    iput-object p2, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->dateType:Ljava/lang/String;

    move v0, v1

    .line 491
    :cond_53
    iget-object v2, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->duration:Ljava/lang/String;

    invoke-static {p3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5e

    .line 492
    iput-object p3, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->duration:Ljava/lang/String;

    move v0, v1

    .line 496
    :cond_5e
    if-eqz v0, :cond_70

    .line 497
    iput v1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->currentPage:I

    .line 498
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->hasMore:Z

    .line 499
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->adapter:Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;

    if-eqz v0, :cond_6d

    .line 500
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->adapter:Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->clear()V

    .line 502
    :cond_6d
    invoke-direct {p0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->b()V

    .line 504
    :cond_70
    return-void

    .line 477
    :catch_71
    move-exception v4

    .line 478
    const-string v4, "SearchResultVideoFrag"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid dateType: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_34
.end method
