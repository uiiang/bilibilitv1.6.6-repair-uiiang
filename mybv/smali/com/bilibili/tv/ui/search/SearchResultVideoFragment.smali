.class public final Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;
.super Lbl/ady;
.source "SearchResultVideoFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;,
        Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$BorderListener;,
        Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$ItemDecoration;,
        Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$ScrollListener;,
        Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$SearchVideoResponse;,
        Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$SearchBangumiResponse;,
        Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$SearchLiveRoomResponse;,
        Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$SearchUserResponse;,
        Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoItem;,
        Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$BangumiItem;,
        Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$LiveRoomViewHolder;,
        Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$UserViewHolder;,
        Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$BangumiViewHolder;,
        Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoViewHolder;
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

    .line 56
    invoke-direct {p0}, Lbl/ady;-><init>()V

    .line 64
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->isLoading:Z

    .line 65
    iput-boolean v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->hasMore:Z

    .line 68
    iput v1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->tid:I

    .line 69
    iput v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->currentPage:I

    .line 70
    const-string v0, ""

    iput-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->order:Ljava/lang/String;

    .line 71
    const-string v0, ""

    iput-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->userOrder:Ljava/lang/String;

    .line 72
    iput v1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->userOrderSort:I

    .line 73
    const-string v0, "online"

    iput-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->liveOrder:Ljava/lang/String;

    .line 74
    const-string v0, ""

    iput-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->pubtimeBegin:Ljava/lang/String;

    .line 75
    const-string v0, ""

    iput-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->pubtimeEnd:Ljava/lang/String;

    .line 76
    const-string v0, ""

    iput-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->duration:Ljava/lang/String;

    .line 77
    const-string v0, ""

    iput-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->dateType:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;)Z
    .locals 1

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->isLoading:Z

    return v0
.end method

.method static synthetic access$002(Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;Z)Z
    .locals 0

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->isLoading:Z

    return p1
.end method

.method static synthetic access$100(Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;)Z
    .locals 1

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->hasMore:Z

    return v0
.end method

.method static synthetic access$200(Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;)Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->adapter:Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;)Lcom/bilibili/tv/widget/side/SideRightGridLayoutManger;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->layoutManager:Lcom/bilibili/tv/widget/side/SideRightGridLayoutManger;

    return-object v0
.end method

.method static synthetic access$400(Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->b()V

    return-void
.end method

.method static synthetic access$500(Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;)Lcom/bilibili/tv/ui/base/LoadingImageView;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->loadingView:Lcom/bilibili/tv/ui/base/LoadingImageView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;Lcom/alibaba/fastjson/JSONObject;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->handleVideoResponse(Lcom/alibaba/fastjson/JSONObject;)V

    return-void
.end method

.method static synthetic access$700(Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;Lcom/alibaba/fastjson/JSONObject;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->handleBangumiResponse(Lcom/alibaba/fastjson/JSONObject;)V

    return-void
.end method

.method static synthetic access$800(Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;Lcom/alibaba/fastjson/JSONObject;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->handleLiveRoomResponse(Lcom/alibaba/fastjson/JSONObject;)V

    return-void
.end method

.method static synthetic access$900(Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;Lcom/alibaba/fastjson/JSONObject;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->handleUserResponse(Lcom/alibaba/fastjson/JSONObject;)V

    return-void
.end method

.method private final b()V
    .locals 0

    .prologue
    .line 236
    invoke-direct {p0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->loadData()V

    .line 237
    return-void
.end method

.method private getTypeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 299
    iget v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->tid:I

    packed-switch v0, :pswitch_data_18

    .line 305
    const-string v0, "\u89c6\u9891"

    :goto_7
    return-object v0

    .line 300
    :pswitch_8
    const-string v0, "\u89c6\u9891"

    goto :goto_7

    .line 301
    :pswitch_b
    const-string v0, "\u756a\u5267"

    goto :goto_7

    .line 302
    :pswitch_e
    const-string v0, "\u5f71\u89c6"

    goto :goto_7

    .line 303
    :pswitch_11
    const-string v0, "\u76f4\u64ad"

    goto :goto_7

    .line 304
    :pswitch_14
    const-string v0, "\u7528\u6237"

    goto :goto_7

    .line 299
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

    .line 798
    const-string v0, "SearchResultVideoFrag_SearchBangumi"

    invoke-static {v0, p1}, Lmybl/LogUtil;->json(Ljava/lang/String;Ljava/lang/Object;)V

    .line 799
    const-string v0, "data"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 800
    if-nez v0, :cond_cd

    .line 803
    :goto_f
    const-string v0, "result"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v4

    .line 804
    if-eqz v4, :cond_1d

    invoke-virtual {v4}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 805
    :cond_1d
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->isLoading:Z

    .line 806
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->hasMore:Z

    .line 807
    iget v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->currentPage:I

    if-ne v0, v3, :cond_2a

    .line 808
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->loadingView:Lcom/bilibili/tv/ui/base/LoadingImageView;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/base/LoadingImageView;->c()V

    .line 849
    :cond_2a
    :goto_2a
    return-void

    .line 813
    :cond_2b
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->isLoading:Z

    .line 814
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->loadingView:Lcom/bilibili/tv/ui/base/LoadingImageView;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/base/LoadingImageView;->b()V

    .line 815
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 816
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->headerLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_40

    .line 817
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->headerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 820
    :cond_40
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    .line 821
    :goto_46
    invoke-virtual {v4}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_a8

    .line 822
    invoke-virtual {v4, v0}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    .line 823
    new-instance v6, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$BangumiItem;

    invoke-direct {v6}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$BangumiItem;-><init>()V

    .line 824
    const-string v7, "title"

    invoke-virtual {v2, v7}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 825
    invoke-static {v7}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$BangumiItem;->title:Ljava/lang/String;

    .line 826
    const-string v7, "cover"

    invoke-virtual {v2, v7}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$BangumiItem;->cover:Ljava/lang/String;

    .line 827
    const-string v7, "season_id"

    invoke-virtual {v2, v7}, Lcom/alibaba/fastjson/JSONObject;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$BangumiItem;->param:Ljava/lang/String;

    .line 828
    const-string v7, "areas"

    invoke-virtual {v2, v7}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$BangumiItem;->area:Ljava/lang/String;

    .line 829
    const-string v7, "styles"

    invoke-virtual {v2, v7}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$BangumiItem;->style:Ljava/lang/String;

    .line 830
    const-string v7, "rating"

    invoke-virtual {v2, v7}, Lcom/alibaba/fastjson/JSONObject;->getDoubleValue(Ljava/lang/String;)D

    move-result-wide v8

    iput-wide v8, v6, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$BangumiItem;->rating:D

    .line 831
    const-string v7, "vote"

    invoke-virtual {v2, v7}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v2

    iput v2, v6, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$BangumiItem;->vote:I

    .line 832
    iget v2, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->tid:I

    if-ne v2, v3, :cond_a6

    move v2, v3

    :goto_9e
    iput-boolean v2, v6, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$BangumiItem;->isBangumi:Z

    .line 833
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 821
    add-int/lit8 v0, v0, 0x1

    goto :goto_46

    :cond_a6
    move v2, v1

    .line 832
    goto :goto_9e

    .line 836
    :cond_a8
    iget v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->currentPage:I

    if-ne v0, v3, :cond_c0

    .line 837
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->adapter:Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;

    invoke-virtual {v0, v5}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->setBangumis(Ljava/util/List;)V

    .line 842
    :goto_b1
    invoke-virtual {v4}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    const/16 v2, 0x14

    if-ge v0, v2, :cond_c6

    .line 843
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->hasMore:Z

    .line 848
    :goto_bb
    invoke-direct {p0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->updateHeaderInfo()V

    goto/16 :goto_2a

    .line 839
    :cond_c0
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->adapter:Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;

    invoke-virtual {v0, v5}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->addBangumis(Ljava/util/List;)V

    goto :goto_b1

    .line 845
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

    .line 900
    const-string v0, "SearchResultVideoFrag_SearchLiveRoom"

    invoke-static {v0, p1}, Lmybl/LogUtil;->json(Ljava/lang/String;Ljava/lang/Object;)V

    .line 901
    const-string v0, "data"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 902
    if-nez v0, :cond_c1

    .line 905
    :goto_f
    const-string v0, "result"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v2

    .line 906
    if-eqz v2, :cond_1d

    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 907
    :cond_1d
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->isLoading:Z

    .line 908
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->hasMore:Z

    .line 909
    iget v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->currentPage:I

    if-ne v0, v8, :cond_2a

    .line 910
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->loadingView:Lcom/bilibili/tv/ui/base/LoadingImageView;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/base/LoadingImageView;->c()V

    .line 951
    :cond_2a
    :goto_2a
    return-void

    .line 915
    :cond_2b
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->isLoading:Z

    .line 916
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->loadingView:Lcom/bilibili/tv/ui/base/LoadingImageView;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/base/LoadingImageView;->b()V

    .line 917
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 918
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->headerLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_40

    .line 919
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->headerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 922
    :cond_40
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    .line 923
    :goto_46
    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v4

    if-ge v0, v4, :cond_9c

    .line 924
    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    .line 925
    new-instance v5, Lmybl/BiliLiveContentEx2;

    invoke-direct {v5}, Lmybl/BiliLiveContentEx2;-><init>()V

    .line 926
    const-string v6, "title"

    invoke-virtual {v4, v6}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 927
    invoke-static {v6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lmybl/BiliLiveContentEx2;->mTitle:Ljava/lang/String;

    .line 928
    const-string v6, "uname"

    invoke-virtual {v4, v6}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lmybl/BiliLiveContentEx2;->mUname:Ljava/lang/String;

    .line 929
    const-string v6, "user_cover"

    invoke-virtual {v4, v6}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lmybl/BiliLiveContentEx2;->mCover:Ljava/lang/String;

    .line 930
    iget-object v6, v5, Lmybl/BiliLiveContentEx2;->mCover:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_85

    .line 931
    const-string v6, "cover"

    invoke-virtual {v4, v6}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lmybl/BiliLiveContentEx2;->mCover:Ljava/lang/String;

    .line 933
    :cond_85
    const-string v6, "online"

    invoke-virtual {v4, v6}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v6

    int-to-long v6, v6

    iput-wide v6, v5, Lmybl/BiliLiveContentEx2;->mOnline:J

    .line 934
    const-string v6, "roomid"

    invoke-virtual {v4, v6}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v4

    iput v4, v5, Lmybl/BiliLiveContentEx2;->mRoomId:I

    .line 935
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 923
    add-int/lit8 v0, v0, 0x1

    goto :goto_46

    .line 938
    :cond_9c
    iget v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->currentPage:I

    if-ne v0, v8, :cond_b4

    .line 939
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->adapter:Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->setLiveRooms(Ljava/util/List;)V

    .line 944
    :goto_a5
    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    const/16 v2, 0x14

    if-ge v0, v2, :cond_ba

    .line 945
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->hasMore:Z

    .line 950
    :goto_af
    invoke-direct {p0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->updateHeaderInfo()V

    goto/16 :goto_2a

    .line 941
    :cond_b4
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->adapter:Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->addLiveRooms(Ljava/util/List;)V

    goto :goto_a5

    .line 947
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

    .line 1002
    const-string v0, "SearchResultVideoFrag_SearchUser"

    invoke-static {v0, p1}, Lmybl/LogUtil;->json(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1003
    const-string v0, "data"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 1004
    if-nez v0, :cond_10

    .line 1051
    :cond_f
    :goto_f
    return-void

    .line 1007
    :cond_10
    const-string v2, "result"

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v2

    .line 1008
    if-eqz v2, :cond_1e

    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 1009
    :cond_1e
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->isLoading:Z

    .line 1010
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->hasMore:Z

    .line 1011
    iget v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->currentPage:I

    if-ne v0, v8, :cond_f

    .line 1012
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->loadingView:Lcom/bilibili/tv/ui/base/LoadingImageView;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/base/LoadingImageView;->c()V

    goto :goto_f

    .line 1017
    :cond_2c
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->isLoading:Z

    .line 1018
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->loadingView:Lcom/bilibili/tv/ui/base/LoadingImageView;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/base/LoadingImageView;->b()V

    .line 1019
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 1020
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->headerLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_41

    .line 1021
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->headerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1024
    :cond_41
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    .line 1025
    :goto_47
    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v4

    if-ge v0, v4, :cond_98

    .line 1026
    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    .line 1027
    new-instance v5, Lcom/bilibili/tv/api/search/BiliSearchResultUper;

    invoke-direct {v5}, Lcom/bilibili/tv/api/search/BiliSearchResultUper;-><init>()V

    .line 1028
    const-string v6, "uname"

    invoke-virtual {v4, v6}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1029
    invoke-static {v6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/bilibili/tv/api/search/BiliSearchResultUper;->uname:Ljava/lang/String;

    .line 1030
    const-string v6, "upic"

    invoke-virtual {v4, v6}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/bilibili/tv/api/search/BiliSearchResultUper;->upic:Ljava/lang/String;

    .line 1031
    const-string v6, "usign"

    invoke-virtual {v4, v6}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/bilibili/tv/api/search/BiliSearchResultUper;->usign:Ljava/lang/String;

    .line 1032
    const-string v6, "mid"

    invoke-virtual {v4, v6}, Lcom/alibaba/fastjson/JSONObject;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iput-wide v6, v5, Lcom/bilibili/tv/api/search/BiliSearchResultUper;->mid:J

    .line 1033
    const-string v6, "fans"

    invoke-virtual {v4, v6}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v6

    iput v6, v5, Lcom/bilibili/tv/api/search/BiliSearchResultUper;->fans:I

    .line 1034
    const-string v6, "videos"

    invoke-virtual {v4, v6}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v4

    iput v4, v5, Lcom/bilibili/tv/api/search/BiliSearchResultUper;->videos:I

    .line 1035
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1025
    add-int/lit8 v0, v0, 0x1

    goto :goto_47

    .line 1038
    :cond_98
    iget v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->currentPage:I

    if-ne v0, v8, :cond_b0

    .line 1039
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->adapter:Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->setUsers(Ljava/util/List;)V

    .line 1044
    :goto_a1
    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    const/16 v2, 0x14

    if-ge v0, v2, :cond_b6

    .line 1045
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->hasMore:Z

    .line 1050
    :goto_ab
    invoke-direct {p0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->updateHeaderInfo()V

    goto/16 :goto_f

    .line 1041
    :cond_b0
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->adapter:Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->addUsers(Ljava/util/List;)V

    goto :goto_a1

    .line 1047
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

    .line 677
    const-string v0, "SearchResultVideoFrag_SearchVideo"

    invoke-static {v0, p1}, Lmybl/LogUtil;->json(Ljava/lang/String;Ljava/lang/Object;)V

    .line 678
    const-string v0, "data"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 679
    if-nez v0, :cond_18b

    .line 682
    :goto_f
    const-string v0, "result"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v4

    .line 683
    if-eqz v4, :cond_1d

    invoke-virtual {v4}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 684
    :cond_1d
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->isLoading:Z

    .line 685
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->hasMore:Z

    .line 686
    iget v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->currentPage:I

    if-ne v0, v3, :cond_2a

    .line 687
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->loadingView:Lcom/bilibili/tv/ui/base/LoadingImageView;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/base/LoadingImageView;->c()V

    .line 747
    :cond_2a
    :goto_2a
    return-void

    .line 692
    :cond_2b
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->isLoading:Z

    .line 693
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->loadingView:Lcom/bilibili/tv/ui/base/LoadingImageView;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/base/LoadingImageView;->b()V

    .line 694
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 695
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->headerLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_40

    .line 696
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->headerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 699
    :cond_40
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    .line 700
    :goto_46
    invoke-virtual {v4}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_166

    .line 701
    invoke-virtual {v4, v0}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v6

    .line 702
    const-string v2, "type"

    invoke-virtual {v6, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 703
    const-string v7, "video"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_61

    .line 700
    :goto_5e
    add-int/lit8 v0, v0, 0x1

    goto :goto_46

    .line 706
    :cond_61
    new-instance v7, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoItem;

    invoke-direct {v7}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoItem;-><init>()V

    .line 707
    const-string v2, "title"

    invoke-virtual {v6, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 708
    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v7, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoItem;->title:Ljava/lang/String;

    .line 709
    const-string v2, "author"

    invoke-virtual {v6, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v7, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoItem;->author:Ljava/lang/String;

    .line 710
    const-string v2, "play"

    invoke-virtual {v6, v2}, Lcom/alibaba/fastjson/JSONObject;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v7, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoItem;->play:Ljava/lang/String;

    .line 711
    const-string v2, "video_review"

    invoke-virtual {v6, v2}, Lcom/alibaba/fastjson/JSONObject;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v7, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoItem;->danmaku:Ljava/lang/String;

    .line 712
    const-string v2, "pic"

    invoke-virtual {v6, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v7, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoItem;->cover:Ljava/lang/String;

    .line 713
    const-string v2, "aid"

    invoke-virtual {v6, v2}, Lcom/alibaba/fastjson/JSONObject;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v7, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoItem;->param:Ljava/lang/String;

    .line 714
    const-string v2, "pubdate"

    invoke-virtual {v6, v2}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c2

    .line 715
    const-string v2, "pubdate"

    invoke-virtual {v6, v2}, Lcom/alibaba/fastjson/JSONObject;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 716
    invoke-static {v8, v9}, Lcom/bilibili/tv/util/DateHelper;->formatDate(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v7, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoItem;->pubdate:Ljava/lang/String;

    .line 718
    :cond_c2
    const-string v2, "duration"

    invoke-virtual {v6, v2}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d6

    .line 720
    const-string v2, "duration"

    invoke-virtual {v6, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 721
    invoke-static {v2}, Lcom/bilibili/tv/util/DateHelper;->formatDuration(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v7, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoItem;->duration:Ljava/lang/String;

    .line 723
    :cond_d6
    const-string v2, "is_charge_video"

    invoke-virtual {v6, v2}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v3, :cond_131

    move v2, v3

    :goto_df
    iput-boolean v2, v7, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoItem;->isChargeVideo:Z

    .line 724
    const/4 v2, 0x3

    if-ge v0, v2, :cond_12c

    .line 725
    const-string v2, "is_charge_video"

    invoke-virtual {v6, v2}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_133

    .line 726
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

    .line 731
    :cond_12c
    :goto_12c
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5e

    :cond_131
    move v2, v1

    .line 723
    goto :goto_df

    .line 728
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

    .line 734
    :cond_166
    iget v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->currentPage:I

    if-ne v0, v3, :cond_17e

    .line 735
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->adapter:Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;

    invoke-virtual {v0, v5}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->setVideos(Ljava/util/List;)V

    .line 740
    :goto_16f
    invoke-virtual {v4}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    const/16 v2, 0x2a

    if-ge v0, v2, :cond_184

    .line 741
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->hasMore:Z

    .line 746
    :goto_179
    invoke-direct {p0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->updateHeaderInfo()V

    goto/16 :goto_2a

    .line 737
    :cond_17e
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->adapter:Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;

    invoke-virtual {v0, v5}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->addVideos(Ljava/util/List;)V

    goto :goto_16f

    .line 743
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

    .line 240
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->isLoading:Z

    if-eqz v0, :cond_6

    .line 278
    :cond_5
    :goto_5
    return-void

    .line 244
    :cond_6
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->keyword:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 248
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->isLoading:Z

    .line 250
    iget v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->currentPage:I

    if-ne v0, v1, :cond_2a

    .line 251
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->loadingView:Lcom/bilibili/tv/ui/base/LoadingImageView;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/base/LoadingImageView;->a()V

    .line 252
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 253
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->headerLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2a

    .line 254
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->headerLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 258
    :cond_2a
    iget v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->tid:I

    packed-switch v0, :pswitch_data_48

    .line 275
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->searchVideo()V

    goto :goto_5

    .line 260
    :pswitch_33
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->searchVideo()V

    goto :goto_5

    .line 263
    :pswitch_37
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->searchBangumi()V

    goto :goto_5

    .line 266
    :pswitch_3b
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->searchMediaFt()V

    goto :goto_5

    .line 269
    :pswitch_3f
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->searchLiveRoom()V

    goto :goto_5

    .line 272
    :pswitch_43
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->searchUser()V

    goto :goto_5

    .line 258
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
    .line 88
    new-instance v0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;

    invoke-direct {v0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;-><init>()V

    .line 89
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 90
    const-string v2, "arg_keyword"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const-string v2, "arg_tid"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 92
    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->setArguments(Landroid/os/Bundle;)V

    .line 93
    return-object v0
.end method

.method private updateHeaderInfo()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    .line 281
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->headerTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_2e

    .line 282
    invoke-direct {p0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->getTypeName()Ljava/lang/String;

    move-result-object v0

    .line 283
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

    .line 285
    :cond_2e
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->headerCount:Landroid/widget/TextView;

    if-eqz v0, :cond_37

    .line 286
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->headerCount:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 288
    :cond_37
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->hintSort:Landroid/widget/TextView;

    if-eqz v0, :cond_4a

    .line 289
    iget v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->tid:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_45

    iget v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->tid:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4b

    .line 290
    :cond_45
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->hintSort:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 296
    :cond_4a
    :goto_4a
    return-void

    .line 292
    :cond_4b
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->hintSort:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "\u6392\u5e8f"

    invoke-static {v1, v2}, Lbl/abd;->get_more_action_hint(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 293
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->hintSort:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4a
.end method


# virtual methods
.method public a(Landroid/support/v7/widget/RecyclerView;Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 120
    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    invoke-super {p0, p1, p2}, Lbl/ady;->a(Landroid/support/v7/widget/RecyclerView;Landroid/os/Bundle;)V

    .line 123
    new-instance v0, Lcom/bilibili/tv/widget/side/SideRightGridLayoutManger;

    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/bilibili/tv/widget/side/SideRightGridLayoutManger;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->layoutManager:Lcom/bilibili/tv/widget/side/SideRightGridLayoutManger;

    .line 125
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 126
    if-nez v0, :cond_22

    .line 127
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.bilibili.tv.ui.search.SearchResultSideActivity"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :cond_22
    iget-object v1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->layoutManager:Lcom/bilibili/tv/widget/side/SideRightGridLayoutManger;

    new-instance v2, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$BorderListener;

    check-cast v0, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;

    invoke-direct {v2, p0, v0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$BorderListener;-><init>(Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;Lcom/bilibili/tv/ui/search/SearchResultSideActivity;)V

    invoke-virtual {v1, v2}, Lcom/bilibili/tv/widget/side/SideRightGridLayoutManger;->a(Lcom/bilibili/tv/widget/border/BorderGridLayoutManager$a;)V

    .line 131
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 132
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->layoutManager:Lcom/bilibili/tv/widget/side/SideRightGridLayoutManger;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$h;)V

    .line 134
    const v0, 0x7f0601bb

    invoke-static {v0}, Lbl/adl;->b(I)I

    move-result v0

    .line 135
    const v1, 0x7f06006e

    invoke-static {v1}, Lbl/adl;->b(I)I

    move-result v1

    .line 136
    const v2, 0x7f06014d

    invoke-static {v2}, Lbl/adl;->b(I)I

    move-result v2

    .line 137
    const v3, 0x7f060154

    invoke-static {v3}, Lbl/adl;->b(I)I

    move-result v3

    .line 138
    invoke-virtual {p1, v2, v2, v2, v3}, Landroid/support/v7/widget/RecyclerView;->setPadding(IIII)V

    .line 139
    new-instance v2, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$ItemDecoration;

    invoke-direct {v2, v1, v0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$ItemDecoration;-><init>(II)V

    invoke-virtual {p1, v2}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView$g;)V

    .line 140
    new-instance v0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$ScrollListener;

    invoke-direct {v0, p0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$ScrollListener;-><init>(Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;)V

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView$m;)V

    .line 142
    new-instance v0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;

    invoke-direct {v0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->adapter:Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;

    .line 143
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->adapter:Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 145
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->i()V

    .line 146
    invoke-direct {p0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->b()V

    .line 147
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 213
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->adapter:Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;

    if-eqz v0, :cond_14

    .line 214
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->adapter:Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->a()I

    move-result v0

    if-lez v0, :cond_14

    .line 215
    const/4 v0, 0x1

    .line 218
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

    .line 229
    invoke-super {p0}, Lbl/ady;->d_()V

    .line 230
    iput v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->currentPage:I

    .line 231
    iput-boolean v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->hasMore:Z

    .line 232
    invoke-direct {p0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->b()V

    .line 233
    return-void
.end method

.method public getDateType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 591
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->dateType:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()Ljava/lang/String;
    .locals 1

    .prologue
    .line 613
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->duration:Ljava/lang/String;

    return-object v0
.end method

.method public getLiveOrder()Ljava/lang/String;
    .locals 1

    .prologue
    .line 575
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->liveOrder:Ljava/lang/String;

    return-object v0
.end method

.method public getOrder()Ljava/lang/String;
    .locals 1

    .prologue
    .line 518
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->order:Ljava/lang/String;

    return-object v0
.end method

.method public getPubtimeBegin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 595
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->pubtimeBegin:Ljava/lang/String;

    return-object v0
.end method

.method public getPubtimeEnd()Ljava/lang/String;
    .locals 1

    .prologue
    .line 599
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->pubtimeEnd:Ljava/lang/String;

    return-object v0
.end method

.method public getTid()I
    .locals 1

    .prologue
    .line 617
    iget v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->tid:I

    return v0
.end method

.method public getUserOrder()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 550
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->userOrder:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 551
    const-string v0, ""

    .line 557
    :goto_b
    return-object v0

    .line 552
    :cond_c
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->userOrder:Ljava/lang/String;

    const-string v1, "fans"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->userOrderSort:I

    if-ne v0, v2, :cond_1d

    .line 553
    const-string v0, "fans_asc"

    goto :goto_b

    .line 554
    :cond_1d
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->userOrder:Ljava/lang/String;

    const-string v1, "level"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    iget v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->userOrderSort:I

    if-ne v0, v2, :cond_2e

    .line 555
    const-string v0, "level_asc"

    goto :goto_b

    .line 557
    :cond_2e
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->userOrder:Ljava/lang/String;

    goto :goto_b
.end method

.method public isLoading()Z
    .locals 1

    .prologue
    .line 621
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->isLoading:Z

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 98
    invoke-super {p0, p1}, Lbl/ady;->onCreate(Landroid/os/Bundle;)V

    .line 99
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 100
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "arg_keyword"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->keyword:Ljava/lang/String;

    .line 101
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "arg_tid"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->tid:I

    .line 103
    :cond_24
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 107
    const v0, 0x7f0a0098

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 108
    const v0, 0x7f08019e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->headerLayout:Landroid/widget/LinearLayout;

    .line 109
    const v0, 0x7f08019f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->headerTitle:Landroid/widget/TextView;

    .line 110
    const v0, 0x7f0801a0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->headerCount:Landroid/widget/TextView;

    .line 111
    const v0, 0x7f080097

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->hintSort:Landroid/widget/TextView;

    .line 112
    const v0, 0x7f0800eb

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 113
    const v0, 0x7f0800b7

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/base/LoadingImageView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->loadingView:Lcom/bilibili/tv/ui/base/LoadingImageView;

    .line 114
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p0, v0, p3}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->a(Landroid/support/v7/widget/RecyclerView;Landroid/os/Bundle;)V

    .line 115
    return-object v1
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 223
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->adapter:Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;

    .line 224
    invoke-super {p0}, Lbl/ady;->onDestroyView()V

    .line 225
    return-void
.end method

.method public searchBangumi()V
    .locals 5

    .prologue
    .line 352
    invoke-static {}, Lmybl/WbiSigner;->getInstance()Lmybl/WbiSigner;

    move-result-object v0

    .line 353
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    .line 354
    const-string v2, "search_type"

    const-string v3, "media_bangumi"

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    const-string v2, "keyword"

    iget-object v3, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->keyword:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    const-string v2, "order"

    iget-object v3, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->order:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    const-string v2, "page"

    iget v3, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->currentPage:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    const-string v2, "page_size"

    const-string v3, "20"

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    const-string v2, "platform"

    const-string v3, "pc"

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    invoke-virtual {v0, v1}, Lmybl/WbiSigner;->encWbiAndGetQuery(Ljava/util/TreeMap;)Ljava/lang/String;

    move-result-object v0

    .line 361
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://api.bilibili.com/x/web-interface/wbi/search/type?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 362
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

    .line 364
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v0

    invoke-static {v0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v0

    invoke-static {v0}, Lmybl/CookieUtil;->getFullCookieWithDevice(Lbl/mg;)Ljava/lang/String;

    move-result-object v2

    .line 366
    :try_start_72
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->keyword:Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-static {v0, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_79} :catch_c9

    move-result-object v0

    .line 367
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

    .line 368
    invoke-static {}, Lbl/vo;->getOkHttpClient()Lokhttp3/OkHttpClient;

    move-result-object v3

    .line 369
    new-instance v4, Lokhttp3/Request$Builder;

    invoke-direct {v4}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v4, v1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    move-result-object v1

    const-string v4, "Cookie"

    .line 370
    invoke-virtual {v1, v4, v2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    const-string v2, "Referer"

    .line 371
    invoke-virtual {v1, v2, v0}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    const-string v1, "User-Agent"

    const-string v2, "Mozilla/5.0 (Linux; Android 9; Redmi 6 Pro) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.147 Mobile Safari/537.36"

    .line 372
    invoke-virtual {v0, v1, v2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 373
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 374
    invoke-virtual {v3, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$SearchBangumiResponse;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$SearchBangumiResponse;-><init>(Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;)V

    invoke-interface {v0, v1}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    .line 375
    return-void

    .line 366
    :catch_c9
    move-exception v0

    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->keyword:Ljava/lang/String;

    goto :goto_7a
.end method

.method public searchLiveRoom()V
    .locals 5

    .prologue
    .line 404
    invoke-static {}, Lmybl/WbiSigner;->getInstance()Lmybl/WbiSigner;

    move-result-object v0

    .line 405
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    .line 406
    const-string v2, "search_type"

    const-string v3, "live_room"

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    const-string v2, "keyword"

    iget-object v3, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->keyword:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    const-string v2, "order"

    iget-object v3, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->liveOrder:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    const-string v2, "page"

    iget v3, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->currentPage:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    const-string v2, "page_size"

    const-string v3, "20"

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    const-string v2, "platform"

    const-string v3, "pc"

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    invoke-virtual {v0, v1}, Lmybl/WbiSigner;->encWbiAndGetQuery(Ljava/util/TreeMap;)Ljava/lang/String;

    move-result-object v0

    .line 413
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://api.bilibili.com/x/web-interface/wbi/search/type?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 414
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

    .line 416
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v0

    invoke-static {v0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v0

    invoke-static {v0}, Lmybl/CookieUtil;->getFullCookieWithDevice(Lbl/mg;)Ljava/lang/String;

    move-result-object v2

    .line 418
    :try_start_72
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->keyword:Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-static {v0, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_79} :catch_c9

    move-result-object v0

    .line 419
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

    .line 420
    invoke-static {}, Lbl/vo;->getOkHttpClient()Lokhttp3/OkHttpClient;

    move-result-object v3

    .line 421
    new-instance v4, Lokhttp3/Request$Builder;

    invoke-direct {v4}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v4, v1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    move-result-object v1

    const-string v4, "Cookie"

    .line 422
    invoke-virtual {v1, v4, v2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    const-string v2, "Referer"

    .line 423
    invoke-virtual {v1, v2, v0}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    const-string v1, "User-Agent"

    const-string v2, "Mozilla/5.0 (Linux; Android 9; Redmi 6 Pro) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.147 Mobile Safari/537.36"

    .line 424
    invoke-virtual {v0, v1, v2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 425
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 426
    invoke-virtual {v3, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$SearchLiveRoomResponse;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$SearchLiveRoomResponse;-><init>(Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;)V

    invoke-interface {v0, v1}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    .line 427
    return-void

    .line 418
    :catch_c9
    move-exception v0

    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->keyword:Ljava/lang/String;

    goto :goto_7a
.end method

.method public searchMediaFt()V
    .locals 5

    .prologue
    .line 378
    invoke-static {}, Lmybl/WbiSigner;->getInstance()Lmybl/WbiSigner;

    move-result-object v0

    .line 379
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    .line 380
    const-string v2, "search_type"

    const-string v3, "media_ft"

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    const-string v2, "keyword"

    iget-object v3, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->keyword:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    const-string v2, "order"

    iget-object v3, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->order:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    const-string v2, "page"

    iget v3, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->currentPage:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    const-string v2, "page_size"

    const-string v3, "20"

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    const-string v2, "platform"

    const-string v3, "pc"

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    invoke-virtual {v0, v1}, Lmybl/WbiSigner;->encWbiAndGetQuery(Ljava/util/TreeMap;)Ljava/lang/String;

    move-result-object v0

    .line 387
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://api.bilibili.com/x/web-interface/wbi/search/type?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 388
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

    .line 390
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v0

    invoke-static {v0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v0

    invoke-static {v0}, Lmybl/CookieUtil;->getFullCookieWithDevice(Lbl/mg;)Ljava/lang/String;

    move-result-object v2

    .line 392
    :try_start_72
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->keyword:Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-static {v0, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_79} :catch_c9

    move-result-object v0

    .line 393
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

    .line 394
    invoke-static {}, Lbl/vo;->getOkHttpClient()Lokhttp3/OkHttpClient;

    move-result-object v3

    .line 395
    new-instance v4, Lokhttp3/Request$Builder;

    invoke-direct {v4}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v4, v1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    move-result-object v1

    const-string v4, "Cookie"

    .line 396
    invoke-virtual {v1, v4, v2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    const-string v2, "Referer"

    .line 397
    invoke-virtual {v1, v2, v0}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    const-string v1, "User-Agent"

    const-string v2, "Mozilla/5.0 (Linux; Android 9; Redmi 6 Pro) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.147 Mobile Safari/537.36"

    .line 398
    invoke-virtual {v0, v1, v2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 399
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 400
    invoke-virtual {v3, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$SearchBangumiResponse;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$SearchBangumiResponse;-><init>(Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;)V

    invoke-interface {v0, v1}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    .line 401
    return-void

    .line 392
    :catch_c9
    move-exception v0

    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->keyword:Ljava/lang/String;

    goto :goto_7a
.end method

.method public searchUser()V
    .locals 5

    .prologue
    .line 430
    invoke-static {}, Lmybl/WbiSigner;->getInstance()Lmybl/WbiSigner;

    move-result-object v0

    .line 431
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    .line 432
    const-string v2, "search_type"

    const-string v3, "bili_user"

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    const-string v2, "keyword"

    iget-object v3, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->keyword:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    iget-object v2, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->userOrder:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_31

    .line 435
    const-string v2, "order"

    iget-object v3, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->userOrder:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    const-string v2, "order_sort"

    iget v3, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->userOrderSort:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    :cond_31
    const-string v2, "page"

    iget v3, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->currentPage:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    const-string v2, "page_size"

    const-string v3, "20"

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    const-string v2, "platform"

    const-string v3, "pc"

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    invoke-virtual {v0, v1}, Lmybl/WbiSigner;->encWbiAndGetQuery(Ljava/util/TreeMap;)Ljava/lang/String;

    move-result-object v0

    .line 442
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://api.bilibili.com/x/web-interface/wbi/search/type?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 443
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

    .line 445
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v0

    invoke-static {v0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v0

    invoke-static {v0}, Lmybl/CookieUtil;->getFullCookieWithDevice(Lbl/mg;)Ljava/lang/String;

    move-result-object v2

    .line 447
    :try_start_85
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->keyword:Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-static {v0, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_85 .. :try_end_8c} :catch_dc

    move-result-object v0

    .line 448
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

    .line 449
    invoke-static {}, Lbl/vo;->getOkHttpClient()Lokhttp3/OkHttpClient;

    move-result-object v3

    .line 450
    new-instance v4, Lokhttp3/Request$Builder;

    invoke-direct {v4}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v4, v1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    move-result-object v1

    const-string v4, "Cookie"

    .line 451
    invoke-virtual {v1, v4, v2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    const-string v2, "Referer"

    .line 452
    invoke-virtual {v1, v2, v0}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    const-string v1, "User-Agent"

    const-string v2, "Mozilla/5.0 (Linux; Android 9; Redmi 6 Pro) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.147 Mobile Safari/537.36"

    .line 453
    invoke-virtual {v0, v1, v2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 454
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 455
    invoke-virtual {v3, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$SearchUserResponse;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$SearchUserResponse;-><init>(Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;)V

    invoke-interface {v0, v1}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    .line 456
    return-void

    .line 447
    :catch_dc
    move-exception v0

    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->keyword:Ljava/lang/String;

    goto :goto_8d
.end method

.method public searchVideo()V
    .locals 5

    .prologue
    .line 310
    invoke-static {}, Lmybl/WbiSigner;->getInstance()Lmybl/WbiSigner;

    move-result-object v0

    .line 311
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    .line 312
    const-string v2, "search_type"

    const-string v3, "video"

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    const-string v2, "keyword"

    iget-object v3, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->keyword:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    iget-object v2, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->order:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_26

    .line 315
    const-string v2, "order"

    iget-object v3, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->order:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    :cond_26
    iget-object v2, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->pubtimeBegin:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_35

    .line 318
    const-string v2, "pubtime_begin_s"

    iget-object v3, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->pubtimeBegin:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    :cond_35
    iget-object v2, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->pubtimeEnd:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_44

    .line 321
    const-string v2, "pubtime_end_s"

    iget-object v3, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->pubtimeEnd:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    :cond_44
    iget-object v2, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->duration:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_53

    .line 324
    const-string v2, "duration"

    iget-object v3, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->duration:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    :cond_53
    const-string v2, "page"

    iget v3, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->currentPage:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    const-string v2, "page_size"

    const-string v3, "42"

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    const-string v2, "platform"

    const-string v3, "pc"

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    const-string v2, "web_location"

    const-string v3, "1430654"

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    const-string v2, "highlight"

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    const-string v2, "single_column"

    const-string v3, "0"

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    const-string v2, "ad_resource"

    const-string v3, "5654"

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    const-string v2, "source_tag"

    const-string v3, "3"

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    invoke-virtual {v0, v1}, Lmybl/WbiSigner;->encWbiAndGetQuery(Ljava/util/TreeMap;)Ljava/lang/String;

    move-result-object v0

    .line 335
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://api.bilibili.com/x/web-interface/wbi/search/type?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 336
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

    .line 338
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v0

    invoke-static {v0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v0

    invoke-static {v0}, Lmybl/CookieUtil;->getFullCookieWithDevice(Lbl/mg;)Ljava/lang/String;

    move-result-object v2

    .line 340
    :try_start_ca
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->keyword:Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-static {v0, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_d1
    .catch Ljava/lang/Exception; {:try_start_ca .. :try_end_d1} :catch_121

    move-result-object v0

    .line 341
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

    .line 342
    invoke-static {}, Lbl/vo;->getOkHttpClient()Lokhttp3/OkHttpClient;

    move-result-object v3

    .line 343
    new-instance v4, Lokhttp3/Request$Builder;

    invoke-direct {v4}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v4, v1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    move-result-object v1

    const-string v4, "Cookie"

    .line 344
    invoke-virtual {v1, v4, v2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    const-string v2, "Referer"

    .line 345
    invoke-virtual {v1, v2, v0}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    const-string v1, "User-Agent"

    const-string v2, "Mozilla/5.0 (Linux; Android 9; Redmi 6 Pro) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.147 Mobile Safari/537.36"

    .line 346
    invoke-virtual {v0, v1, v2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 347
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 348
    invoke-virtual {v3, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$SearchVideoResponse;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$SearchVideoResponse;-><init>(Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;)V

    invoke-interface {v0, v1}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    .line 349
    return-void

    .line 340
    :catch_121
    move-exception v0

    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->keyword:Ljava/lang/String;

    goto :goto_d2
.end method

.method public setDuration(Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 603
    iput-object p1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->duration:Ljava/lang/String;

    .line 604
    iput v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->currentPage:I

    .line 605
    iput-boolean v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->hasMore:Z

    .line 606
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->adapter:Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;

    if-eqz v0, :cond_10

    .line 607
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->adapter:Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->clear()V

    .line 609
    :cond_10
    invoke-direct {p0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->b()V

    .line 610
    return-void
.end method

.method public setLiveOrder(Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 562
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->liveOrder:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 572
    :goto_9
    return-void

    .line 565
    :cond_a
    iput-object p1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->liveOrder:Ljava/lang/String;

    .line 566
    iput v1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->currentPage:I

    .line 567
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->hasMore:Z

    .line 568
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->adapter:Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;

    if-eqz v0, :cond_19

    .line 569
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->adapter:Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->clear()V

    .line 571
    :cond_19
    invoke-direct {p0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->b()V

    goto :goto_9
.end method

.method public setOrder(Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 505
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->order:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 515
    :goto_9
    return-void

    .line 508
    :cond_a
    iput-object p1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->order:Ljava/lang/String;

    .line 509
    iput v1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->currentPage:I

    .line 510
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->hasMore:Z

    .line 511
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->adapter:Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;

    if-eqz v0, :cond_19

    .line 512
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->adapter:Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->clear()V

    .line 514
    :cond_19
    invoke-direct {p0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->b()V

    goto :goto_9
.end method

.method public setPubtime(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 579
    iput-object p1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->pubtimeBegin:Ljava/lang/String;

    .line 580
    iput-object p2, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->pubtimeEnd:Ljava/lang/String;

    .line 581
    iput-object p3, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->dateType:Ljava/lang/String;

    .line 582
    iput v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->currentPage:I

    .line 583
    iput-boolean v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->hasMore:Z

    .line 584
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->adapter:Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;

    if-eqz v0, :cond_14

    .line 585
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->adapter:Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->clear()V

    .line 587
    :cond_14
    invoke-direct {p0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->b()V

    .line 588
    return-void
.end method

.method public setUserOrder(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 522
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 523
    const-string v0, ""

    iput-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->userOrder:Ljava/lang/String;

    .line 524
    iput v1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->userOrderSort:I

    .line 541
    :goto_e
    iput v2, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->currentPage:I

    .line 542
    iput-boolean v2, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->hasMore:Z

    .line 543
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->adapter:Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;

    if-eqz v0, :cond_1b

    .line 544
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->adapter:Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->clear()V

    .line 546
    :cond_1b
    invoke-direct {p0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->b()V

    .line 547
    return-void

    .line 525
    :cond_1f
    const-string v0, "fans"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 526
    const-string v0, "fans"

    iput-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->userOrder:Ljava/lang/String;

    .line 527
    iput v1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->userOrderSort:I

    goto :goto_e

    .line 528
    :cond_2e
    const-string v0, "fans_asc"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 529
    const-string v0, "fans"

    iput-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->userOrder:Ljava/lang/String;

    .line 530
    iput v2, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->userOrderSort:I

    goto :goto_e

    .line 531
    :cond_3d
    const-string v0, "level"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 532
    const-string v0, "level"

    iput-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->userOrder:Ljava/lang/String;

    .line 533
    iput v1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->userOrderSort:I

    goto :goto_e

    .line 534
    :cond_4c
    const-string v0, "level_asc"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 535
    const-string v0, "level"

    iput-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->userOrder:Ljava/lang/String;

    .line 536
    iput v2, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->userOrderSort:I

    goto :goto_e

    .line 538
    :cond_5b
    iput-object p1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->userOrder:Ljava/lang/String;

    .line 539
    iput v1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->userOrderSort:I

    goto :goto_e
.end method

.method public updateSearchParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    .prologue
    const/4 v1, 0x1

    .line 459
    const/4 v0, 0x0

    .line 461
    iget-object v2, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->order:Ljava/lang/String;

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 462
    iput-object p1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->order:Ljava/lang/String;

    move v0, v1

    .line 466
    :cond_d
    const-string v3, ""

    .line 467
    const-string v2, ""

    .line 468
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_34

    .line 470
    :try_start_17
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 471
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    .line 472
    mul-int/lit8 v4, v4, 0x18

    mul-int/lit8 v4, v4, 0x3c

    int-to-long v4, v4

    const-wide/16 v8, 0x3c

    mul-long/2addr v4, v8

    sub-long v4, v6, v4

    .line 473
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 474
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
    :try_end_33
    .catch Ljava/lang/NumberFormatException; {:try_start_17 .. :try_end_33} :catch_71

    move-result-object v2

    .line 480
    :cond_34
    :goto_34
    iget-object v4, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->pubtimeBegin:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4c

    iget-object v4, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->pubtimeEnd:Ljava/lang/String;

    .line 481
    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4c

    iget-object v4, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->dateType:Ljava/lang/String;

    .line 482
    invoke-static {p2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_53

    .line 483
    :cond_4c
    iput-object v3, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->pubtimeBegin:Ljava/lang/String;

    .line 484
    iput-object v2, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->pubtimeEnd:Ljava/lang/String;

    .line 485
    iput-object p2, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->dateType:Ljava/lang/String;

    move v0, v1

    .line 489
    :cond_53
    iget-object v2, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->duration:Ljava/lang/String;

    invoke-static {p3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5e

    .line 490
    iput-object p3, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->duration:Ljava/lang/String;

    move v0, v1

    .line 494
    :cond_5e
    if-eqz v0, :cond_70

    .line 495
    iput v1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->currentPage:I

    .line 496
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->hasMore:Z

    .line 497
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->adapter:Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;

    if-eqz v0, :cond_6d

    .line 498
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->adapter:Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->clear()V

    .line 500
    :cond_6d
    invoke-direct {p0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->b()V

    .line 502
    :cond_70
    return-void

    .line 475
    :catch_71
    move-exception v4

    .line 476
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
