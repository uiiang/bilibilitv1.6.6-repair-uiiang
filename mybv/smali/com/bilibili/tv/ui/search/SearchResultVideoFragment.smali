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
    .line 237
    invoke-direct {p0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->loadData()V

    .line 238
    return-void
.end method

.method private getTypeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 300
    iget v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->tid:I

    packed-switch v0, :pswitch_data_18

    .line 306
    const-string v0, "\u89c6\u9891"

    :goto_7
    return-object v0

    .line 301
    :pswitch_8
    const-string v0, "\u89c6\u9891"

    goto :goto_7

    .line 302
    :pswitch_b
    const-string v0, "\u756a\u5267"

    goto :goto_7

    .line 303
    :pswitch_e
    const-string v0, "\u5f71\u89c6"

    goto :goto_7

    .line 304
    :pswitch_11
    const-string v0, "\u76f4\u64ad"

    goto :goto_7

    .line 305
    :pswitch_14
    const-string v0, "\u7528\u6237"

    goto :goto_7

    .line 300
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

    .line 799
    const-string v0, "SearchResultVideoFrag_SearchBangumi"

    invoke-static {v0, p1}, Lmybl/LogUtil;->json(Ljava/lang/String;Ljava/lang/Object;)V

    .line 800
    const-string v0, "data"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 801
    if-nez v0, :cond_cd

    .line 804
    :goto_f
    const-string v0, "result"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v4

    .line 805
    if-eqz v4, :cond_1d

    invoke-virtual {v4}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 806
    :cond_1d
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->isLoading:Z

    .line 807
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->hasMore:Z

    .line 808
    iget v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->currentPage:I

    if-ne v0, v3, :cond_2a

    .line 809
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->loadingView:Lcom/bilibili/tv/ui/base/LoadingImageView;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/base/LoadingImageView;->c()V

    .line 850
    :cond_2a
    :goto_2a
    return-void

    .line 814
    :cond_2b
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->isLoading:Z

    .line 815
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->loadingView:Lcom/bilibili/tv/ui/base/LoadingImageView;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/base/LoadingImageView;->b()V

    .line 816
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 817
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->headerLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_40

    .line 818
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->headerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 821
    :cond_40
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    .line 822
    :goto_46
    invoke-virtual {v4}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_a8

    .line 823
    invoke-virtual {v4, v0}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    .line 824
    new-instance v6, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$BangumiItem;

    invoke-direct {v6}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$BangumiItem;-><init>()V

    .line 825
    const-string v7, "title"

    invoke-virtual {v2, v7}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 826
    invoke-static {v7}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$BangumiItem;->title:Ljava/lang/String;

    .line 827
    const-string v7, "cover"

    invoke-virtual {v2, v7}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$BangumiItem;->cover:Ljava/lang/String;

    .line 828
    const-string v7, "season_id"

    invoke-virtual {v2, v7}, Lcom/alibaba/fastjson/JSONObject;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$BangumiItem;->param:Ljava/lang/String;

    .line 829
    const-string v7, "areas"

    invoke-virtual {v2, v7}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$BangumiItem;->area:Ljava/lang/String;

    .line 830
    const-string v7, "styles"

    invoke-virtual {v2, v7}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$BangumiItem;->style:Ljava/lang/String;

    .line 831
    const-string v7, "rating"

    invoke-virtual {v2, v7}, Lcom/alibaba/fastjson/JSONObject;->getDoubleValue(Ljava/lang/String;)D

    move-result-wide v8

    iput-wide v8, v6, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$BangumiItem;->rating:D

    .line 832
    const-string v7, "vote"

    invoke-virtual {v2, v7}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v2

    iput v2, v6, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$BangumiItem;->vote:I

    .line 833
    iget v2, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->tid:I

    if-ne v2, v3, :cond_a6

    move v2, v3

    :goto_9e
    iput-boolean v2, v6, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$BangumiItem;->isBangumi:Z

    .line 834
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 822
    add-int/lit8 v0, v0, 0x1

    goto :goto_46

    :cond_a6
    move v2, v1

    .line 833
    goto :goto_9e

    .line 837
    :cond_a8
    iget v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->currentPage:I

    if-ne v0, v3, :cond_c0

    .line 838
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->adapter:Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;

    invoke-virtual {v0, v5}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->setBangumis(Ljava/util/List;)V

    .line 843
    :goto_b1
    invoke-virtual {v4}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    const/16 v2, 0x14

    if-ge v0, v2, :cond_c6

    .line 844
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->hasMore:Z

    .line 849
    :goto_bb
    invoke-direct {p0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->updateHeaderInfo()V

    goto/16 :goto_2a

    .line 840
    :cond_c0
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->adapter:Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;

    invoke-virtual {v0, v5}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->addBangumis(Ljava/util/List;)V

    goto :goto_b1

    .line 846
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

    .line 901
    const-string v0, "SearchResultVideoFrag_SearchLiveRoom"

    invoke-static {v0, p1}, Lmybl/LogUtil;->json(Ljava/lang/String;Ljava/lang/Object;)V

    .line 902
    const-string v0, "data"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 903
    if-nez v0, :cond_c1

    .line 906
    :goto_f
    const-string v0, "result"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v2

    .line 907
    if-eqz v2, :cond_1d

    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 908
    :cond_1d
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->isLoading:Z

    .line 909
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->hasMore:Z

    .line 910
    iget v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->currentPage:I

    if-ne v0, v8, :cond_2a

    .line 911
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->loadingView:Lcom/bilibili/tv/ui/base/LoadingImageView;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/base/LoadingImageView;->c()V

    .line 952
    :cond_2a
    :goto_2a
    return-void

    .line 916
    :cond_2b
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->isLoading:Z

    .line 917
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->loadingView:Lcom/bilibili/tv/ui/base/LoadingImageView;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/base/LoadingImageView;->b()V

    .line 918
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 919
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->headerLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_40

    .line 920
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->headerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 923
    :cond_40
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    .line 924
    :goto_46
    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v4

    if-ge v0, v4, :cond_9c

    .line 925
    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    .line 926
    new-instance v5, Lmybl/BiliLiveContentEx2;

    invoke-direct {v5}, Lmybl/BiliLiveContentEx2;-><init>()V

    .line 927
    const-string v6, "title"

    invoke-virtual {v4, v6}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 928
    invoke-static {v6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lmybl/BiliLiveContentEx2;->mTitle:Ljava/lang/String;

    .line 929
    const-string v6, "uname"

    invoke-virtual {v4, v6}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lmybl/BiliLiveContentEx2;->mUname:Ljava/lang/String;

    .line 930
    const-string v6, "user_cover"

    invoke-virtual {v4, v6}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lmybl/BiliLiveContentEx2;->mCover:Ljava/lang/String;

    .line 931
    iget-object v6, v5, Lmybl/BiliLiveContentEx2;->mCover:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_85

    .line 932
    const-string v6, "cover"

    invoke-virtual {v4, v6}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lmybl/BiliLiveContentEx2;->mCover:Ljava/lang/String;

    .line 934
    :cond_85
    const-string v6, "online"

    invoke-virtual {v4, v6}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v6

    int-to-long v6, v6

    iput-wide v6, v5, Lmybl/BiliLiveContentEx2;->mOnline:J

    .line 935
    const-string v6, "roomid"

    invoke-virtual {v4, v6}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v4

    iput v4, v5, Lmybl/BiliLiveContentEx2;->mRoomId:I

    .line 936
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 924
    add-int/lit8 v0, v0, 0x1

    goto :goto_46

    .line 939
    :cond_9c
    iget v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->currentPage:I

    if-ne v0, v8, :cond_b4

    .line 940
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->adapter:Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->setLiveRooms(Ljava/util/List;)V

    .line 945
    :goto_a5
    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    const/16 v2, 0x14

    if-ge v0, v2, :cond_ba

    .line 946
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->hasMore:Z

    .line 951
    :goto_af
    invoke-direct {p0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->updateHeaderInfo()V

    goto/16 :goto_2a

    .line 942
    :cond_b4
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->adapter:Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->addLiveRooms(Ljava/util/List;)V

    goto :goto_a5

    .line 948
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

    .line 1003
    const-string v0, "SearchResultVideoFrag_SearchUser"

    invoke-static {v0, p1}, Lmybl/LogUtil;->json(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1004
    const-string v0, "data"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 1005
    if-nez v0, :cond_10

    .line 1052
    :cond_f
    :goto_f
    return-void

    .line 1008
    :cond_10
    const-string v2, "result"

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v2

    .line 1009
    if-eqz v2, :cond_1e

    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 1010
    :cond_1e
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->isLoading:Z

    .line 1011
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->hasMore:Z

    .line 1012
    iget v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->currentPage:I

    if-ne v0, v8, :cond_f

    .line 1013
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->loadingView:Lcom/bilibili/tv/ui/base/LoadingImageView;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/base/LoadingImageView;->c()V

    goto :goto_f

    .line 1018
    :cond_2c
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->isLoading:Z

    .line 1019
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->loadingView:Lcom/bilibili/tv/ui/base/LoadingImageView;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/base/LoadingImageView;->b()V

    .line 1020
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 1021
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->headerLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_41

    .line 1022
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->headerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1025
    :cond_41
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    .line 1026
    :goto_47
    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v4

    if-ge v0, v4, :cond_98

    .line 1027
    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    .line 1028
    new-instance v5, Lcom/bilibili/tv/api/search/BiliSearchResultUper;

    invoke-direct {v5}, Lcom/bilibili/tv/api/search/BiliSearchResultUper;-><init>()V

    .line 1029
    const-string v6, "uname"

    invoke-virtual {v4, v6}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1030
    invoke-static {v6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/bilibili/tv/api/search/BiliSearchResultUper;->uname:Ljava/lang/String;

    .line 1031
    const-string v6, "upic"

    invoke-virtual {v4, v6}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/bilibili/tv/api/search/BiliSearchResultUper;->upic:Ljava/lang/String;

    .line 1032
    const-string v6, "usign"

    invoke-virtual {v4, v6}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/bilibili/tv/api/search/BiliSearchResultUper;->usign:Ljava/lang/String;

    .line 1033
    const-string v6, "mid"

    invoke-virtual {v4, v6}, Lcom/alibaba/fastjson/JSONObject;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iput-wide v6, v5, Lcom/bilibili/tv/api/search/BiliSearchResultUper;->mid:J

    .line 1034
    const-string v6, "fans"

    invoke-virtual {v4, v6}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v6

    iput v6, v5, Lcom/bilibili/tv/api/search/BiliSearchResultUper;->fans:I

    .line 1035
    const-string v6, "videos"

    invoke-virtual {v4, v6}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v4

    iput v4, v5, Lcom/bilibili/tv/api/search/BiliSearchResultUper;->videos:I

    .line 1036
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1026
    add-int/lit8 v0, v0, 0x1

    goto :goto_47

    .line 1039
    :cond_98
    iget v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->currentPage:I

    if-ne v0, v8, :cond_b0

    .line 1040
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->adapter:Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->setUsers(Ljava/util/List;)V

    .line 1045
    :goto_a1
    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    const/16 v2, 0x14

    if-ge v0, v2, :cond_b6

    .line 1046
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->hasMore:Z

    .line 1051
    :goto_ab
    invoke-direct {p0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->updateHeaderInfo()V

    goto/16 :goto_f

    .line 1042
    :cond_b0
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->adapter:Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->addUsers(Ljava/util/List;)V

    goto :goto_a1

    .line 1048
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

    .line 678
    const-string v0, "SearchResultVideoFrag_SearchVideo"

    invoke-static {v0, p1}, Lmybl/LogUtil;->json(Ljava/lang/String;Ljava/lang/Object;)V

    .line 679
    const-string v0, "data"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 680
    if-nez v0, :cond_18b

    .line 683
    :goto_f
    const-string v0, "result"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v4

    .line 684
    if-eqz v4, :cond_1d

    invoke-virtual {v4}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 685
    :cond_1d
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->isLoading:Z

    .line 686
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->hasMore:Z

    .line 687
    iget v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->currentPage:I

    if-ne v0, v3, :cond_2a

    .line 688
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->loadingView:Lcom/bilibili/tv/ui/base/LoadingImageView;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/base/LoadingImageView;->c()V

    .line 748
    :cond_2a
    :goto_2a
    return-void

    .line 693
    :cond_2b
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->isLoading:Z

    .line 694
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->loadingView:Lcom/bilibili/tv/ui/base/LoadingImageView;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/base/LoadingImageView;->b()V

    .line 695
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 696
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->headerLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_40

    .line 697
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->headerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 700
    :cond_40
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    .line 701
    :goto_46
    invoke-virtual {v4}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_166

    .line 702
    invoke-virtual {v4, v0}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v6

    .line 703
    const-string v2, "type"

    invoke-virtual {v6, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 704
    const-string v7, "video"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_61

    .line 701
    :goto_5e
    add-int/lit8 v0, v0, 0x1

    goto :goto_46

    .line 707
    :cond_61
    new-instance v7, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoItem;

    invoke-direct {v7}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoItem;-><init>()V

    .line 708
    const-string v2, "title"

    invoke-virtual {v6, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 709
    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v7, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoItem;->title:Ljava/lang/String;

    .line 710
    const-string v2, "author"

    invoke-virtual {v6, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v7, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoItem;->author:Ljava/lang/String;

    .line 711
    const-string v2, "play"

    invoke-virtual {v6, v2}, Lcom/alibaba/fastjson/JSONObject;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v7, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoItem;->play:Ljava/lang/String;

    .line 712
    const-string v2, "video_review"

    invoke-virtual {v6, v2}, Lcom/alibaba/fastjson/JSONObject;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v7, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoItem;->danmaku:Ljava/lang/String;

    .line 713
    const-string v2, "pic"

    invoke-virtual {v6, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v7, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoItem;->cover:Ljava/lang/String;

    .line 714
    const-string v2, "aid"

    invoke-virtual {v6, v2}, Lcom/alibaba/fastjson/JSONObject;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v7, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoItem;->param:Ljava/lang/String;

    .line 715
    const-string v2, "pubdate"

    invoke-virtual {v6, v2}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c2

    .line 716
    const-string v2, "pubdate"

    invoke-virtual {v6, v2}, Lcom/alibaba/fastjson/JSONObject;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 717
    invoke-static {v8, v9}, Lcom/bilibili/tv/util/DateHelper;->formatDate(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v7, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoItem;->pubdate:Ljava/lang/String;

    .line 719
    :cond_c2
    const-string v2, "duration"

    invoke-virtual {v6, v2}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d6

    .line 721
    const-string v2, "duration"

    invoke-virtual {v6, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 722
    invoke-static {v2}, Lcom/bilibili/tv/util/DateHelper;->formatDuration(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v7, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoItem;->duration:Ljava/lang/String;

    .line 724
    :cond_d6
    const-string v2, "is_charge_video"

    invoke-virtual {v6, v2}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v3, :cond_131

    move v2, v3

    :goto_df
    iput-boolean v2, v7, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoItem;->isChargeVideo:Z

    .line 725
    const/4 v2, 0x3

    if-ge v0, v2, :cond_12c

    .line 726
    const-string v2, "is_charge_video"

    invoke-virtual {v6, v2}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_133

    .line 727
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

    .line 732
    :cond_12c
    :goto_12c
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5e

    :cond_131
    move v2, v1

    .line 724
    goto :goto_df

    .line 729
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

    .line 735
    :cond_166
    iget v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->currentPage:I

    if-ne v0, v3, :cond_17e

    .line 736
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->adapter:Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;

    invoke-virtual {v0, v5}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->setVideos(Ljava/util/List;)V

    .line 741
    :goto_16f
    invoke-virtual {v4}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    const/16 v2, 0x2a

    if-ge v0, v2, :cond_184

    .line 742
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->hasMore:Z

    .line 747
    :goto_179
    invoke-direct {p0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->updateHeaderInfo()V

    goto/16 :goto_2a

    .line 738
    :cond_17e
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->adapter:Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;

    invoke-virtual {v0, v5}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->addVideos(Ljava/util/List;)V

    goto :goto_16f

    .line 744
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

    .line 241
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->isLoading:Z

    if-eqz v0, :cond_6

    .line 279
    :cond_5
    :goto_5
    return-void

    .line 245
    :cond_6
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->keyword:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 249
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->isLoading:Z

    .line 251
    iget v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->currentPage:I

    if-ne v0, v1, :cond_2a

    .line 252
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->loadingView:Lcom/bilibili/tv/ui/base/LoadingImageView;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/base/LoadingImageView;->a()V

    .line 253
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 254
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->headerLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2a

    .line 255
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->headerLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 259
    :cond_2a
    iget v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->tid:I

    packed-switch v0, :pswitch_data_48

    .line 276
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->searchVideo()V

    goto :goto_5

    .line 261
    :pswitch_33
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->searchVideo()V

    goto :goto_5

    .line 264
    :pswitch_37
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->searchBangumi()V

    goto :goto_5

    .line 267
    :pswitch_3b
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->searchMediaFt()V

    goto :goto_5

    .line 270
    :pswitch_3f
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->searchLiveRoom()V

    goto :goto_5

    .line 273
    :pswitch_43
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->searchUser()V

    goto :goto_5

    .line 259
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

    .line 282
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->headerTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_2e

    .line 283
    invoke-direct {p0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->getTypeName()Ljava/lang/String;

    move-result-object v0

    .line 284
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

    .line 286
    :cond_2e
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->headerCount:Landroid/widget/TextView;

    if-eqz v0, :cond_37

    .line 287
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->headerCount:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 289
    :cond_37
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->hintSort:Landroid/widget/TextView;

    if-eqz v0, :cond_4a

    .line 290
    iget v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->tid:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_45

    iget v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->tid:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4b

    .line 291
    :cond_45
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->hintSort:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 297
    :cond_4a
    :goto_4a
    return-void

    .line 293
    :cond_4b
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->hintSort:Landroid/widget/TextView;

    const-string v1, "\u70b9\u51fb[\u83dc\u5355]\u952e\u6392\u5e8f"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 294
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->hintSort:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4a
.end method


# virtual methods
.method public a(Landroid/support/v7/widget/RecyclerView;Landroid/os/Bundle;)V
    .locals 3

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
    invoke-virtual {p1, v2, v2, v2, v2}, Landroid/support/v7/widget/RecyclerView;->setPadding(IIII)V

    .line 140
    new-instance v2, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$ItemDecoration;

    invoke-direct {v2, v1, v0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$ItemDecoration;-><init>(II)V

    invoke-virtual {p1, v2}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView$g;)V

    .line 141
    new-instance v0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$ScrollListener;

    invoke-direct {v0, p0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$ScrollListener;-><init>(Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;)V

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView$m;)V

    .line 143
    new-instance v0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;

    invoke-direct {v0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->adapter:Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;

    .line 144
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->adapter:Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 146
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->i()V

    .line 147
    invoke-direct {p0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->b()V

    .line 148
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 214
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->adapter:Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;

    if-eqz v0, :cond_14

    .line 215
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->adapter:Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->a()I

    move-result v0

    if-lez v0, :cond_14

    .line 216
    const/4 v0, 0x1

    .line 219
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

    .line 230
    invoke-super {p0}, Lbl/ady;->d_()V

    .line 231
    iput v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->currentPage:I

    .line 232
    iput-boolean v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->hasMore:Z

    .line 233
    invoke-direct {p0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->b()V

    .line 234
    return-void
.end method

.method public getDateType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 592
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->dateType:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()Ljava/lang/String;
    .locals 1

    .prologue
    .line 614
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->duration:Ljava/lang/String;

    return-object v0
.end method

.method public getLiveOrder()Ljava/lang/String;
    .locals 1

    .prologue
    .line 576
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->liveOrder:Ljava/lang/String;

    return-object v0
.end method

.method public getOrder()Ljava/lang/String;
    .locals 1

    .prologue
    .line 519
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->order:Ljava/lang/String;

    return-object v0
.end method

.method public getPubtimeBegin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 596
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->pubtimeBegin:Ljava/lang/String;

    return-object v0
.end method

.method public getPubtimeEnd()Ljava/lang/String;
    .locals 1

    .prologue
    .line 600
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->pubtimeEnd:Ljava/lang/String;

    return-object v0
.end method

.method public getTid()I
    .locals 1

    .prologue
    .line 618
    iget v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->tid:I

    return v0
.end method

.method public getUserOrder()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 551
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->userOrder:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 552
    const-string v0, ""

    .line 558
    :goto_b
    return-object v0

    .line 553
    :cond_c
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->userOrder:Ljava/lang/String;

    const-string v1, "fans"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->userOrderSort:I

    if-ne v0, v2, :cond_1d

    .line 554
    const-string v0, "fans_asc"

    goto :goto_b

    .line 555
    :cond_1d
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->userOrder:Ljava/lang/String;

    const-string v1, "level"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    iget v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->userOrderSort:I

    if-ne v0, v2, :cond_2e

    .line 556
    const-string v0, "level_asc"

    goto :goto_b

    .line 558
    :cond_2e
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->userOrder:Ljava/lang/String;

    goto :goto_b
.end method

.method public isLoading()Z
    .locals 1

    .prologue
    .line 622
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
    .line 224
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->adapter:Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;

    .line 225
    invoke-super {p0}, Lbl/ady;->onDestroyView()V

    .line 226
    return-void
.end method

.method public searchBangumi()V
    .locals 5

    .prologue
    .line 353
    invoke-static {}, Lmybl/WbiSigner;->getInstance()Lmybl/WbiSigner;

    move-result-object v0

    .line 354
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    .line 355
    const-string v2, "search_type"

    const-string v3, "media_bangumi"

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    const-string v2, "keyword"

    iget-object v3, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->keyword:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    const-string v2, "order"

    iget-object v3, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->order:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    const-string v2, "page"

    iget v3, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->currentPage:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    const-string v2, "page_size"

    const-string v3, "20"

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    const-string v2, "platform"

    const-string v3, "pc"

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    invoke-virtual {v0, v1}, Lmybl/WbiSigner;->encWbiAndGetQuery(Ljava/util/TreeMap;)Ljava/lang/String;

    move-result-object v0

    .line 362
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://api.bilibili.com/x/web-interface/wbi/search/type?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 363
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

    .line 365
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v0

    invoke-static {v0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v0

    invoke-static {v0}, Lmybl/CookieUtil;->getFullCookieWithDevice(Lbl/mg;)Ljava/lang/String;

    move-result-object v2

    .line 367
    :try_start_72
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->keyword:Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-static {v0, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_79} :catch_c9

    move-result-object v0

    .line 368
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

    .line 369
    invoke-static {}, Lbl/vo;->getOkHttpClient()Lokhttp3/OkHttpClient;

    move-result-object v3

    .line 370
    new-instance v4, Lokhttp3/Request$Builder;

    invoke-direct {v4}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v4, v1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    move-result-object v1

    const-string v4, "Cookie"

    .line 371
    invoke-virtual {v1, v4, v2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    const-string v2, "Referer"

    .line 372
    invoke-virtual {v1, v2, v0}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    const-string v1, "User-Agent"

    const-string v2, "Mozilla/5.0 (Linux; Android 9; Redmi 6 Pro) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.147 Mobile Safari/537.36"

    .line 373
    invoke-virtual {v0, v1, v2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 374
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 375
    invoke-virtual {v3, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$SearchBangumiResponse;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$SearchBangumiResponse;-><init>(Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;)V

    invoke-interface {v0, v1}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    .line 376
    return-void

    .line 367
    :catch_c9
    move-exception v0

    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->keyword:Ljava/lang/String;

    goto :goto_7a
.end method

.method public searchLiveRoom()V
    .locals 5

    .prologue
    .line 405
    invoke-static {}, Lmybl/WbiSigner;->getInstance()Lmybl/WbiSigner;

    move-result-object v0

    .line 406
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    .line 407
    const-string v2, "search_type"

    const-string v3, "live_room"

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    const-string v2, "keyword"

    iget-object v3, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->keyword:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    const-string v2, "order"

    iget-object v3, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->liveOrder:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    const-string v2, "page"

    iget v3, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->currentPage:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    const-string v2, "page_size"

    const-string v3, "20"

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    const-string v2, "platform"

    const-string v3, "pc"

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    invoke-virtual {v0, v1}, Lmybl/WbiSigner;->encWbiAndGetQuery(Ljava/util/TreeMap;)Ljava/lang/String;

    move-result-object v0

    .line 414
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://api.bilibili.com/x/web-interface/wbi/search/type?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 415
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

    .line 417
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v0

    invoke-static {v0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v0

    invoke-static {v0}, Lmybl/CookieUtil;->getFullCookieWithDevice(Lbl/mg;)Ljava/lang/String;

    move-result-object v2

    .line 419
    :try_start_72
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->keyword:Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-static {v0, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_79} :catch_c9

    move-result-object v0

    .line 420
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

    .line 421
    invoke-static {}, Lbl/vo;->getOkHttpClient()Lokhttp3/OkHttpClient;

    move-result-object v3

    .line 422
    new-instance v4, Lokhttp3/Request$Builder;

    invoke-direct {v4}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v4, v1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    move-result-object v1

    const-string v4, "Cookie"

    .line 423
    invoke-virtual {v1, v4, v2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    const-string v2, "Referer"

    .line 424
    invoke-virtual {v1, v2, v0}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    const-string v1, "User-Agent"

    const-string v2, "Mozilla/5.0 (Linux; Android 9; Redmi 6 Pro) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.147 Mobile Safari/537.36"

    .line 425
    invoke-virtual {v0, v1, v2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 426
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 427
    invoke-virtual {v3, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$SearchLiveRoomResponse;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$SearchLiveRoomResponse;-><init>(Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;)V

    invoke-interface {v0, v1}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    .line 428
    return-void

    .line 419
    :catch_c9
    move-exception v0

    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->keyword:Ljava/lang/String;

    goto :goto_7a
.end method

.method public searchMediaFt()V
    .locals 5

    .prologue
    .line 379
    invoke-static {}, Lmybl/WbiSigner;->getInstance()Lmybl/WbiSigner;

    move-result-object v0

    .line 380
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    .line 381
    const-string v2, "search_type"

    const-string v3, "media_ft"

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    const-string v2, "keyword"

    iget-object v3, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->keyword:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    const-string v2, "order"

    iget-object v3, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->order:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    const-string v2, "page"

    iget v3, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->currentPage:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    const-string v2, "page_size"

    const-string v3, "20"

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    const-string v2, "platform"

    const-string v3, "pc"

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    invoke-virtual {v0, v1}, Lmybl/WbiSigner;->encWbiAndGetQuery(Ljava/util/TreeMap;)Ljava/lang/String;

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

    move-result-object v1

    .line 389
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

    .line 391
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v0

    invoke-static {v0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v0

    invoke-static {v0}, Lmybl/CookieUtil;->getFullCookieWithDevice(Lbl/mg;)Ljava/lang/String;

    move-result-object v2

    .line 393
    :try_start_72
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->keyword:Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-static {v0, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_79} :catch_c9

    move-result-object v0

    .line 394
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

    .line 395
    invoke-static {}, Lbl/vo;->getOkHttpClient()Lokhttp3/OkHttpClient;

    move-result-object v3

    .line 396
    new-instance v4, Lokhttp3/Request$Builder;

    invoke-direct {v4}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v4, v1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    move-result-object v1

    const-string v4, "Cookie"

    .line 397
    invoke-virtual {v1, v4, v2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    const-string v2, "Referer"

    .line 398
    invoke-virtual {v1, v2, v0}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    const-string v1, "User-Agent"

    const-string v2, "Mozilla/5.0 (Linux; Android 9; Redmi 6 Pro) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.147 Mobile Safari/537.36"

    .line 399
    invoke-virtual {v0, v1, v2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 400
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 401
    invoke-virtual {v3, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$SearchBangumiResponse;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$SearchBangumiResponse;-><init>(Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;)V

    invoke-interface {v0, v1}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    .line 402
    return-void

    .line 393
    :catch_c9
    move-exception v0

    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->keyword:Ljava/lang/String;

    goto :goto_7a
.end method

.method public searchUser()V
    .locals 5

    .prologue
    .line 431
    invoke-static {}, Lmybl/WbiSigner;->getInstance()Lmybl/WbiSigner;

    move-result-object v0

    .line 432
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    .line 433
    const-string v2, "search_type"

    const-string v3, "bili_user"

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    const-string v2, "keyword"

    iget-object v3, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->keyword:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    iget-object v2, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->userOrder:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_31

    .line 436
    const-string v2, "order"

    iget-object v3, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->userOrder:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    const-string v2, "order_sort"

    iget v3, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->userOrderSort:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    :cond_31
    const-string v2, "page"

    iget v3, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->currentPage:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    const-string v2, "page_size"

    const-string v3, "20"

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    const-string v2, "platform"

    const-string v3, "pc"

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    invoke-virtual {v0, v1}, Lmybl/WbiSigner;->encWbiAndGetQuery(Ljava/util/TreeMap;)Ljava/lang/String;

    move-result-object v0

    .line 443
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://api.bilibili.com/x/web-interface/wbi/search/type?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 444
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

    .line 446
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v0

    invoke-static {v0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v0

    invoke-static {v0}, Lmybl/CookieUtil;->getFullCookieWithDevice(Lbl/mg;)Ljava/lang/String;

    move-result-object v2

    .line 448
    :try_start_85
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->keyword:Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-static {v0, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_85 .. :try_end_8c} :catch_dc

    move-result-object v0

    .line 449
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

    .line 450
    invoke-static {}, Lbl/vo;->getOkHttpClient()Lokhttp3/OkHttpClient;

    move-result-object v3

    .line 451
    new-instance v4, Lokhttp3/Request$Builder;

    invoke-direct {v4}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v4, v1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    move-result-object v1

    const-string v4, "Cookie"

    .line 452
    invoke-virtual {v1, v4, v2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    const-string v2, "Referer"

    .line 453
    invoke-virtual {v1, v2, v0}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    const-string v1, "User-Agent"

    const-string v2, "Mozilla/5.0 (Linux; Android 9; Redmi 6 Pro) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.147 Mobile Safari/537.36"

    .line 454
    invoke-virtual {v0, v1, v2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 455
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 456
    invoke-virtual {v3, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$SearchUserResponse;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$SearchUserResponse;-><init>(Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;)V

    invoke-interface {v0, v1}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    .line 457
    return-void

    .line 448
    :catch_dc
    move-exception v0

    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->keyword:Ljava/lang/String;

    goto :goto_8d
.end method

.method public searchVideo()V
    .locals 5

    .prologue
    .line 311
    invoke-static {}, Lmybl/WbiSigner;->getInstance()Lmybl/WbiSigner;

    move-result-object v0

    .line 312
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    .line 313
    const-string v2, "search_type"

    const-string v3, "video"

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    const-string v2, "keyword"

    iget-object v3, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->keyword:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    iget-object v2, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->order:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_26

    .line 316
    const-string v2, "order"

    iget-object v3, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->order:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    :cond_26
    iget-object v2, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->pubtimeBegin:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_35

    .line 319
    const-string v2, "pubtime_begin_s"

    iget-object v3, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->pubtimeBegin:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    :cond_35
    iget-object v2, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->pubtimeEnd:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_44

    .line 322
    const-string v2, "pubtime_end_s"

    iget-object v3, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->pubtimeEnd:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    :cond_44
    iget-object v2, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->duration:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_53

    .line 325
    const-string v2, "duration"

    iget-object v3, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->duration:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    :cond_53
    const-string v2, "page"

    iget v3, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->currentPage:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    const-string v2, "page_size"

    const-string v3, "42"

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    const-string v2, "platform"

    const-string v3, "pc"

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    const-string v2, "web_location"

    const-string v3, "1430654"

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    const-string v2, "highlight"

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    const-string v2, "single_column"

    const-string v3, "0"

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    const-string v2, "ad_resource"

    const-string v3, "5654"

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    const-string v2, "source_tag"

    const-string v3, "3"

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    invoke-virtual {v0, v1}, Lmybl/WbiSigner;->encWbiAndGetQuery(Ljava/util/TreeMap;)Ljava/lang/String;

    move-result-object v0

    .line 336
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://api.bilibili.com/x/web-interface/wbi/search/type?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 337
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

    .line 339
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v0

    invoke-static {v0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v0

    invoke-static {v0}, Lmybl/CookieUtil;->getFullCookieWithDevice(Lbl/mg;)Ljava/lang/String;

    move-result-object v2

    .line 341
    :try_start_ca
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->keyword:Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-static {v0, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_d1
    .catch Ljava/lang/Exception; {:try_start_ca .. :try_end_d1} :catch_121

    move-result-object v0

    .line 342
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

    .line 343
    invoke-static {}, Lbl/vo;->getOkHttpClient()Lokhttp3/OkHttpClient;

    move-result-object v3

    .line 344
    new-instance v4, Lokhttp3/Request$Builder;

    invoke-direct {v4}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v4, v1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    move-result-object v1

    const-string v4, "Cookie"

    .line 345
    invoke-virtual {v1, v4, v2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    const-string v2, "Referer"

    .line 346
    invoke-virtual {v1, v2, v0}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    const-string v1, "User-Agent"

    const-string v2, "Mozilla/5.0 (Linux; Android 9; Redmi 6 Pro) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.147 Mobile Safari/537.36"

    .line 347
    invoke-virtual {v0, v1, v2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 348
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 349
    invoke-virtual {v3, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$SearchVideoResponse;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$SearchVideoResponse;-><init>(Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;)V

    invoke-interface {v0, v1}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    .line 350
    return-void

    .line 341
    :catch_121
    move-exception v0

    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->keyword:Ljava/lang/String;

    goto :goto_d2
.end method

.method public setDuration(Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 604
    iput-object p1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->duration:Ljava/lang/String;

    .line 605
    iput v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->currentPage:I

    .line 606
    iput-boolean v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->hasMore:Z

    .line 607
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->adapter:Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;

    if-eqz v0, :cond_10

    .line 608
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->adapter:Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->clear()V

    .line 610
    :cond_10
    invoke-direct {p0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->b()V

    .line 611
    return-void
.end method

.method public setLiveOrder(Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 563
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->liveOrder:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 573
    :goto_9
    return-void

    .line 566
    :cond_a
    iput-object p1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->liveOrder:Ljava/lang/String;

    .line 567
    iput v1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->currentPage:I

    .line 568
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->hasMore:Z

    .line 569
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->adapter:Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;

    if-eqz v0, :cond_19

    .line 570
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->adapter:Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->clear()V

    .line 572
    :cond_19
    invoke-direct {p0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->b()V

    goto :goto_9
.end method

.method public setOrder(Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 506
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->order:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 516
    :goto_9
    return-void

    .line 509
    :cond_a
    iput-object p1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->order:Ljava/lang/String;

    .line 510
    iput v1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->currentPage:I

    .line 511
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->hasMore:Z

    .line 512
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->adapter:Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;

    if-eqz v0, :cond_19

    .line 513
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->adapter:Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->clear()V

    .line 515
    :cond_19
    invoke-direct {p0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->b()V

    goto :goto_9
.end method

.method public setPubtime(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 580
    iput-object p1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->pubtimeBegin:Ljava/lang/String;

    .line 581
    iput-object p2, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->pubtimeEnd:Ljava/lang/String;

    .line 582
    iput-object p3, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->dateType:Ljava/lang/String;

    .line 583
    iput v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->currentPage:I

    .line 584
    iput-boolean v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->hasMore:Z

    .line 585
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->adapter:Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;

    if-eqz v0, :cond_14

    .line 586
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->adapter:Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->clear()V

    .line 588
    :cond_14
    invoke-direct {p0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->b()V

    .line 589
    return-void
.end method

.method public setUserOrder(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 523
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 524
    const-string v0, ""

    iput-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->userOrder:Ljava/lang/String;

    .line 525
    iput v1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->userOrderSort:I

    .line 542
    :goto_e
    iput v2, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->currentPage:I

    .line 543
    iput-boolean v2, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->hasMore:Z

    .line 544
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->adapter:Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;

    if-eqz v0, :cond_1b

    .line 545
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->adapter:Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->clear()V

    .line 547
    :cond_1b
    invoke-direct {p0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->b()V

    .line 548
    return-void

    .line 526
    :cond_1f
    const-string v0, "fans"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 527
    const-string v0, "fans"

    iput-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->userOrder:Ljava/lang/String;

    .line 528
    iput v1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->userOrderSort:I

    goto :goto_e

    .line 529
    :cond_2e
    const-string v0, "fans_asc"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 530
    const-string v0, "fans"

    iput-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->userOrder:Ljava/lang/String;

    .line 531
    iput v2, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->userOrderSort:I

    goto :goto_e

    .line 532
    :cond_3d
    const-string v0, "level"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 533
    const-string v0, "level"

    iput-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->userOrder:Ljava/lang/String;

    .line 534
    iput v1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->userOrderSort:I

    goto :goto_e

    .line 535
    :cond_4c
    const-string v0, "level_asc"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 536
    const-string v0, "level"

    iput-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->userOrder:Ljava/lang/String;

    .line 537
    iput v2, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->userOrderSort:I

    goto :goto_e

    .line 539
    :cond_5b
    iput-object p1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->userOrder:Ljava/lang/String;

    .line 540
    iput v1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->userOrderSort:I

    goto :goto_e
.end method

.method public updateSearchParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    .prologue
    const/4 v1, 0x1

    .line 460
    const/4 v0, 0x0

    .line 462
    iget-object v2, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->order:Ljava/lang/String;

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 463
    iput-object p1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->order:Ljava/lang/String;

    move v0, v1

    .line 467
    :cond_d
    const-string v3, ""

    .line 468
    const-string v2, ""

    .line 469
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_34

    .line 471
    :try_start_17
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 472
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    .line 473
    mul-int/lit8 v4, v4, 0x18

    mul-int/lit8 v4, v4, 0x3c

    int-to-long v4, v4

    const-wide/16 v8, 0x3c

    mul-long/2addr v4, v8

    sub-long v4, v6, v4

    .line 474
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 475
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
    :try_end_33
    .catch Ljava/lang/NumberFormatException; {:try_start_17 .. :try_end_33} :catch_71

    move-result-object v2

    .line 481
    :cond_34
    :goto_34
    iget-object v4, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->pubtimeBegin:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4c

    iget-object v4, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->pubtimeEnd:Ljava/lang/String;

    .line 482
    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4c

    iget-object v4, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->dateType:Ljava/lang/String;

    .line 483
    invoke-static {p2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_53

    .line 484
    :cond_4c
    iput-object v3, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->pubtimeBegin:Ljava/lang/String;

    .line 485
    iput-object v2, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->pubtimeEnd:Ljava/lang/String;

    .line 486
    iput-object p2, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->dateType:Ljava/lang/String;

    move v0, v1

    .line 490
    :cond_53
    iget-object v2, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->duration:Ljava/lang/String;

    invoke-static {p3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5e

    .line 491
    iput-object p3, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->duration:Ljava/lang/String;

    move v0, v1

    .line 495
    :cond_5e
    if-eqz v0, :cond_70

    .line 496
    iput v1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->currentPage:I

    .line 497
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->hasMore:Z

    .line 498
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->adapter:Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;

    if-eqz v0, :cond_6d

    .line 499
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->adapter:Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->clear()V

    .line 501
    :cond_6d
    invoke-direct {p0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->b()V

    .line 503
    :cond_70
    return-void

    .line 476
    :catch_71
    move-exception v4

    .line 477
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
