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

.field private static final PAGE_SIZE:I = 0x14

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
    .line 235
    invoke-direct {p0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->loadData()V

    .line 236
    return-void
.end method

.method private getTypeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 298
    iget v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->tid:I

    packed-switch v0, :pswitch_data_18

    .line 304
    const-string v0, "\u89c6\u9891"

    :goto_7
    return-object v0

    .line 299
    :pswitch_8
    const-string v0, "\u89c6\u9891"

    goto :goto_7

    .line 300
    :pswitch_b
    const-string v0, "\u756a\u5267"

    goto :goto_7

    .line 301
    :pswitch_e
    const-string v0, "\u5f71\u89c6"

    goto :goto_7

    .line 302
    :pswitch_11
    const-string v0, "\u76f4\u64ad"

    goto :goto_7

    .line 303
    :pswitch_14
    const-string v0, "\u7528\u6237"

    goto :goto_7

    .line 298
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

    .line 733
    const-string v0, "SearchResultVideoFrag_SearchBangumi"

    invoke-static {v0, p1}, Lmybl/LogUtil;->json(Ljava/lang/String;Ljava/lang/Object;)V

    .line 734
    const-string v0, "data"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 735
    if-nez v0, :cond_cd

    .line 738
    :goto_f
    const-string v0, "result"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v4

    .line 739
    if-eqz v4, :cond_1d

    invoke-virtual {v4}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 740
    :cond_1d
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->isLoading:Z

    .line 741
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->hasMore:Z

    .line 742
    iget v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->currentPage:I

    if-ne v0, v3, :cond_2a

    .line 743
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->loadingView:Lcom/bilibili/tv/ui/base/LoadingImageView;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/base/LoadingImageView;->c()V

    .line 784
    :cond_2a
    :goto_2a
    return-void

    .line 748
    :cond_2b
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->isLoading:Z

    .line 749
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->loadingView:Lcom/bilibili/tv/ui/base/LoadingImageView;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/base/LoadingImageView;->b()V

    .line 750
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 751
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->headerLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_40

    .line 752
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->headerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 755
    :cond_40
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    .line 756
    :goto_46
    invoke-virtual {v4}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_a8

    .line 757
    invoke-virtual {v4, v0}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    .line 758
    new-instance v6, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$BangumiItem;

    invoke-direct {v6}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$BangumiItem;-><init>()V

    .line 759
    const-string v7, "title"

    invoke-virtual {v2, v7}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 760
    invoke-static {v7}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$BangumiItem;->title:Ljava/lang/String;

    .line 761
    const-string v7, "cover"

    invoke-virtual {v2, v7}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$BangumiItem;->cover:Ljava/lang/String;

    .line 762
    const-string v7, "season_id"

    invoke-virtual {v2, v7}, Lcom/alibaba/fastjson/JSONObject;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$BangumiItem;->param:Ljava/lang/String;

    .line 763
    const-string v7, "areas"

    invoke-virtual {v2, v7}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$BangumiItem;->area:Ljava/lang/String;

    .line 764
    const-string v7, "styles"

    invoke-virtual {v2, v7}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$BangumiItem;->style:Ljava/lang/String;

    .line 765
    const-string v7, "rating"

    invoke-virtual {v2, v7}, Lcom/alibaba/fastjson/JSONObject;->getDoubleValue(Ljava/lang/String;)D

    move-result-wide v8

    iput-wide v8, v6, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$BangumiItem;->rating:D

    .line 766
    const-string v7, "vote"

    invoke-virtual {v2, v7}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v2

    iput v2, v6, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$BangumiItem;->vote:I

    .line 767
    iget v2, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->tid:I

    if-ne v2, v3, :cond_a6

    move v2, v3

    :goto_9e
    iput-boolean v2, v6, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$BangumiItem;->isBangumi:Z

    .line 768
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 756
    add-int/lit8 v0, v0, 0x1

    goto :goto_46

    :cond_a6
    move v2, v1

    .line 767
    goto :goto_9e

    .line 771
    :cond_a8
    iget v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->currentPage:I

    if-ne v0, v3, :cond_c0

    .line 772
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->adapter:Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;

    invoke-virtual {v0, v5}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->setBangumis(Ljava/util/List;)V

    .line 777
    :goto_b1
    invoke-virtual {v4}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    const/16 v2, 0x14

    if-ge v0, v2, :cond_c6

    .line 778
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->hasMore:Z

    .line 783
    :goto_bb
    invoke-direct {p0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->updateHeaderInfo()V

    goto/16 :goto_2a

    .line 774
    :cond_c0
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->adapter:Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;

    invoke-virtual {v0, v5}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->addBangumis(Ljava/util/List;)V

    goto :goto_b1

    .line 780
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

    .line 835
    const-string v0, "SearchResultVideoFrag_SearchLiveRoom"

    invoke-static {v0, p1}, Lmybl/LogUtil;->json(Ljava/lang/String;Ljava/lang/Object;)V

    .line 836
    const-string v0, "data"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 837
    if-nez v0, :cond_c1

    .line 840
    :goto_f
    const-string v0, "result"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v2

    .line 841
    if-eqz v2, :cond_1d

    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 842
    :cond_1d
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->isLoading:Z

    .line 843
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->hasMore:Z

    .line 844
    iget v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->currentPage:I

    if-ne v0, v8, :cond_2a

    .line 845
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->loadingView:Lcom/bilibili/tv/ui/base/LoadingImageView;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/base/LoadingImageView;->c()V

    .line 886
    :cond_2a
    :goto_2a
    return-void

    .line 850
    :cond_2b
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->isLoading:Z

    .line 851
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->loadingView:Lcom/bilibili/tv/ui/base/LoadingImageView;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/base/LoadingImageView;->b()V

    .line 852
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 853
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->headerLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_40

    .line 854
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->headerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 857
    :cond_40
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    .line 858
    :goto_46
    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v4

    if-ge v0, v4, :cond_9c

    .line 859
    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    .line 860
    new-instance v5, Lmybl/BiliLiveContentEx2;

    invoke-direct {v5}, Lmybl/BiliLiveContentEx2;-><init>()V

    .line 861
    const-string v6, "title"

    invoke-virtual {v4, v6}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 862
    invoke-static {v6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lmybl/BiliLiveContentEx2;->mTitle:Ljava/lang/String;

    .line 863
    const-string v6, "uname"

    invoke-virtual {v4, v6}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lmybl/BiliLiveContentEx2;->mUname:Ljava/lang/String;

    .line 864
    const-string v6, "user_cover"

    invoke-virtual {v4, v6}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lmybl/BiliLiveContentEx2;->mCover:Ljava/lang/String;

    .line 865
    iget-object v6, v5, Lmybl/BiliLiveContentEx2;->mCover:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_85

    .line 866
    const-string v6, "cover"

    invoke-virtual {v4, v6}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lmybl/BiliLiveContentEx2;->mCover:Ljava/lang/String;

    .line 868
    :cond_85
    const-string v6, "online"

    invoke-virtual {v4, v6}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v6

    int-to-long v6, v6

    iput-wide v6, v5, Lmybl/BiliLiveContentEx2;->mOnline:J

    .line 869
    const-string v6, "roomid"

    invoke-virtual {v4, v6}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v4

    iput v4, v5, Lmybl/BiliLiveContentEx2;->mRoomId:I

    .line 870
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 858
    add-int/lit8 v0, v0, 0x1

    goto :goto_46

    .line 873
    :cond_9c
    iget v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->currentPage:I

    if-ne v0, v8, :cond_b4

    .line 874
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->adapter:Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->setLiveRooms(Ljava/util/List;)V

    .line 879
    :goto_a5
    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    const/16 v2, 0x14

    if-ge v0, v2, :cond_ba

    .line 880
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->hasMore:Z

    .line 885
    :goto_af
    invoke-direct {p0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->updateHeaderInfo()V

    goto/16 :goto_2a

    .line 876
    :cond_b4
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->adapter:Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->addLiveRooms(Ljava/util/List;)V

    goto :goto_a5

    .line 882
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

    .line 937
    const-string v0, "SearchResultVideoFrag_SearchUser"

    invoke-static {v0, p1}, Lmybl/LogUtil;->json(Ljava/lang/String;Ljava/lang/Object;)V

    .line 938
    const-string v0, "data"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 939
    if-nez v0, :cond_10

    .line 986
    :cond_f
    :goto_f
    return-void

    .line 942
    :cond_10
    const-string v2, "result"

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v2

    .line 943
    if-eqz v2, :cond_1e

    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 944
    :cond_1e
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->isLoading:Z

    .line 945
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->hasMore:Z

    .line 946
    iget v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->currentPage:I

    if-ne v0, v8, :cond_f

    .line 947
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->loadingView:Lcom/bilibili/tv/ui/base/LoadingImageView;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/base/LoadingImageView;->c()V

    goto :goto_f

    .line 952
    :cond_2c
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->isLoading:Z

    .line 953
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->loadingView:Lcom/bilibili/tv/ui/base/LoadingImageView;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/base/LoadingImageView;->b()V

    .line 954
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 955
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->headerLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_41

    .line 956
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->headerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 959
    :cond_41
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    .line 960
    :goto_47
    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v4

    if-ge v0, v4, :cond_98

    .line 961
    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    .line 962
    new-instance v5, Lcom/bilibili/tv/api/search/BiliSearchResultUper;

    invoke-direct {v5}, Lcom/bilibili/tv/api/search/BiliSearchResultUper;-><init>()V

    .line 963
    const-string v6, "uname"

    invoke-virtual {v4, v6}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 964
    invoke-static {v6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/bilibili/tv/api/search/BiliSearchResultUper;->uname:Ljava/lang/String;

    .line 965
    const-string v6, "upic"

    invoke-virtual {v4, v6}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/bilibili/tv/api/search/BiliSearchResultUper;->upic:Ljava/lang/String;

    .line 966
    const-string v6, "usign"

    invoke-virtual {v4, v6}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/bilibili/tv/api/search/BiliSearchResultUper;->usign:Ljava/lang/String;

    .line 967
    const-string v6, "mid"

    invoke-virtual {v4, v6}, Lcom/alibaba/fastjson/JSONObject;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iput-wide v6, v5, Lcom/bilibili/tv/api/search/BiliSearchResultUper;->mid:J

    .line 968
    const-string v6, "fans"

    invoke-virtual {v4, v6}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v6

    iput v6, v5, Lcom/bilibili/tv/api/search/BiliSearchResultUper;->fans:I

    .line 969
    const-string v6, "videos"

    invoke-virtual {v4, v6}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v4

    iput v4, v5, Lcom/bilibili/tv/api/search/BiliSearchResultUper;->videos:I

    .line 970
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 960
    add-int/lit8 v0, v0, 0x1

    goto :goto_47

    .line 973
    :cond_98
    iget v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->currentPage:I

    if-ne v0, v8, :cond_b0

    .line 974
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->adapter:Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->setUsers(Ljava/util/List;)V

    .line 979
    :goto_a1
    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    const/16 v2, 0x14

    if-ge v0, v2, :cond_b6

    .line 980
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->hasMore:Z

    .line 985
    :goto_ab
    invoke-direct {p0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->updateHeaderInfo()V

    goto/16 :goto_f

    .line 976
    :cond_b0
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->adapter:Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->addUsers(Ljava/util/List;)V

    goto :goto_a1

    .line 982
    :cond_b6
    iget v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->currentPage:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->currentPage:I

    goto :goto_ab
.end method

.method private handleVideoResponse(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 626
    const-string v0, "SearchResultVideoFrag_SearchVideo"

    invoke-static {v0, p1}, Lmybl/LogUtil;->json(Ljava/lang/String;Ljava/lang/Object;)V

    .line 627
    const-string v0, "data"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 628
    if-nez v0, :cond_ec

    .line 631
    :goto_f
    const-string v0, "result"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v2

    .line 632
    if-eqz v2, :cond_1d

    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 633
    :cond_1d
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->isLoading:Z

    .line 634
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->hasMore:Z

    .line 635
    iget v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->currentPage:I

    if-ne v0, v8, :cond_2a

    .line 636
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->loadingView:Lcom/bilibili/tv/ui/base/LoadingImageView;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/base/LoadingImageView;->c()V

    .line 682
    :cond_2a
    :goto_2a
    return-void

    .line 641
    :cond_2b
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->isLoading:Z

    .line 642
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->loadingView:Lcom/bilibili/tv/ui/base/LoadingImageView;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/base/LoadingImageView;->b()V

    .line 643
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 644
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->headerLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_40

    .line 645
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->headerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 648
    :cond_40
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    .line 649
    :goto_46
    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v4

    if-ge v0, v4, :cond_c7

    .line 650
    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    .line 651
    new-instance v5, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoItem;

    invoke-direct {v5}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoItem;-><init>()V

    .line 652
    const-string v6, "title"

    invoke-virtual {v4, v6}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 653
    invoke-static {v6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoItem;->title:Ljava/lang/String;

    .line 654
    const-string v6, "author"

    invoke-virtual {v4, v6}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoItem;->author:Ljava/lang/String;

    .line 655
    const-string v6, "play"

    invoke-virtual {v4, v6}, Lcom/alibaba/fastjson/JSONObject;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoItem;->play:Ljava/lang/String;

    .line 656
    const-string v6, "video_review"

    invoke-virtual {v4, v6}, Lcom/alibaba/fastjson/JSONObject;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoItem;->danmaku:Ljava/lang/String;

    .line 657
    const-string v6, "pic"

    invoke-virtual {v4, v6}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoItem;->cover:Ljava/lang/String;

    .line 658
    const-string v6, "aid"

    invoke-virtual {v4, v6}, Lcom/alibaba/fastjson/JSONObject;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoItem;->param:Ljava/lang/String;

    .line 659
    const-string v6, "pubdate"

    invoke-virtual {v4, v6}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b1

    .line 660
    const-string v6, "pubdate"

    invoke-virtual {v4, v6}, Lcom/alibaba/fastjson/JSONObject;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 661
    invoke-static {v6, v7}, Lcom/bilibili/tv/util/DateHelper;->formatDate(J)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoItem;->pubdate:Ljava/lang/String;

    .line 663
    :cond_b1
    const-string v6, "duration"

    invoke-virtual {v4, v6}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c1

    .line 664
    const-string v6, "duration"

    invoke-virtual {v4, v6}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v5, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoItem;->duration:Ljava/lang/String;

    .line 666
    :cond_c1
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 649
    add-int/lit8 v0, v0, 0x1

    goto :goto_46

    .line 669
    :cond_c7
    iget v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->currentPage:I

    if-ne v0, v8, :cond_df

    .line 670
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->adapter:Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->setVideos(Ljava/util/List;)V

    .line 675
    :goto_d0
    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    const/16 v2, 0x14

    if-ge v0, v2, :cond_e5

    .line 676
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->hasMore:Z

    .line 681
    :goto_da
    invoke-direct {p0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->updateHeaderInfo()V

    goto/16 :goto_2a

    .line 672
    :cond_df
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->adapter:Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->addVideos(Ljava/util/List;)V

    goto :goto_d0

    .line 678
    :cond_e5
    iget v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->currentPage:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->currentPage:I

    goto :goto_da

    :cond_ec
    move-object p1, v0

    goto/16 :goto_f
.end method

.method private loadData()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 239
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->isLoading:Z

    if-eqz v0, :cond_6

    .line 277
    :cond_5
    :goto_5
    return-void

    .line 243
    :cond_6
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->keyword:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 247
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->isLoading:Z

    .line 249
    iget v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->currentPage:I

    if-ne v0, v1, :cond_2a

    .line 250
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->loadingView:Lcom/bilibili/tv/ui/base/LoadingImageView;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/base/LoadingImageView;->a()V

    .line 251
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 252
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->headerLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2a

    .line 253
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->headerLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 257
    :cond_2a
    iget v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->tid:I

    packed-switch v0, :pswitch_data_48

    .line 274
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->searchVideo()V

    goto :goto_5

    .line 259
    :pswitch_33
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->searchVideo()V

    goto :goto_5

    .line 262
    :pswitch_37
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->searchBangumi()V

    goto :goto_5

    .line 265
    :pswitch_3b
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->searchMediaFt()V

    goto :goto_5

    .line 268
    :pswitch_3f
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->searchLiveRoom()V

    goto :goto_5

    .line 271
    :pswitch_43
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->searchUser()V

    goto :goto_5

    .line 257
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

    .line 280
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->headerTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_2e

    .line 281
    invoke-direct {p0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->getTypeName()Ljava/lang/String;

    move-result-object v0

    .line 282
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

    .line 284
    :cond_2e
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->headerCount:Landroid/widget/TextView;

    if-eqz v0, :cond_37

    .line 285
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->headerCount:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 287
    :cond_37
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->hintSort:Landroid/widget/TextView;

    if-eqz v0, :cond_4a

    .line 288
    iget v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->tid:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_45

    iget v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->tid:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4b

    .line 289
    :cond_45
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->hintSort:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 295
    :cond_4a
    :goto_4a
    return-void

    .line 291
    :cond_4b
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->hintSort:Landroid/widget/TextView;

    const-string v1, "\u70b9\u51fb[\u83dc\u5355]\u952e\u6392\u5e8f"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 292
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->hintSort:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4a
.end method


# virtual methods
.method public a(Landroid/support/v7/widget/RecyclerView;Landroid/os/Bundle;)V
    .locals 3

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
    invoke-virtual {p1, v2, v2, v2, v2}, Landroid/support/v7/widget/RecyclerView;->setPadding(IIII)V

    .line 138
    new-instance v2, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$ItemDecoration;

    invoke-direct {v2, v1, v0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$ItemDecoration;-><init>(II)V

    invoke-virtual {p1, v2}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView$g;)V

    .line 139
    new-instance v0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$ScrollListener;

    invoke-direct {v0, p0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$ScrollListener;-><init>(Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;)V

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView$m;)V

    .line 141
    new-instance v0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;

    invoke-direct {v0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->adapter:Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;

    .line 142
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->adapter:Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 144
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->i()V

    .line 145
    invoke-direct {p0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->b()V

    .line 146
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 212
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->adapter:Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;

    if-eqz v0, :cond_14

    .line 213
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->adapter:Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->a()I

    move-result v0

    if-lez v0, :cond_14

    .line 214
    const/4 v0, 0x1

    .line 217
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

    .line 228
    invoke-super {p0}, Lbl/ady;->d_()V

    .line 229
    iput v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->currentPage:I

    .line 230
    iput-boolean v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->hasMore:Z

    .line 231
    invoke-direct {p0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->b()V

    .line 232
    return-void
.end method

.method public getDateType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 540
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->dateType:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()Ljava/lang/String;
    .locals 1

    .prologue
    .line 562
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->duration:Ljava/lang/String;

    return-object v0
.end method

.method public getLiveOrder()Ljava/lang/String;
    .locals 1

    .prologue
    .line 524
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->liveOrder:Ljava/lang/String;

    return-object v0
.end method

.method public getOrder()Ljava/lang/String;
    .locals 1

    .prologue
    .line 467
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->order:Ljava/lang/String;

    return-object v0
.end method

.method public getPubtimeBegin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 544
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->pubtimeBegin:Ljava/lang/String;

    return-object v0
.end method

.method public getPubtimeEnd()Ljava/lang/String;
    .locals 1

    .prologue
    .line 548
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->pubtimeEnd:Ljava/lang/String;

    return-object v0
.end method

.method public getTid()I
    .locals 1

    .prologue
    .line 566
    iget v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->tid:I

    return v0
.end method

.method public getUserOrder()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 499
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->userOrder:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 500
    const-string v0, ""

    .line 506
    :goto_b
    return-object v0

    .line 501
    :cond_c
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->userOrder:Ljava/lang/String;

    const-string v1, "fans"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->userOrderSort:I

    if-ne v0, v2, :cond_1d

    .line 502
    const-string v0, "fans_asc"

    goto :goto_b

    .line 503
    :cond_1d
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->userOrder:Ljava/lang/String;

    const-string v1, "level"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    iget v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->userOrderSort:I

    if-ne v0, v2, :cond_2e

    .line 504
    const-string v0, "level_asc"

    goto :goto_b

    .line 506
    :cond_2e
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->userOrder:Ljava/lang/String;

    goto :goto_b
.end method

.method public isLoading()Z
    .locals 1

    .prologue
    .line 570
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
    const v0, 0x7f080199

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->headerLayout:Landroid/widget/LinearLayout;

    .line 109
    const v0, 0x7f08019a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->headerTitle:Landroid/widget/TextView;

    .line 110
    const v0, 0x7f08019b

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
    .line 222
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->adapter:Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;

    .line 223
    invoke-super {p0}, Lbl/ady;->onDestroyView()V

    .line 224
    return-void
.end method

.method public searchBangumi()V
    .locals 4

    .prologue
    .line 337
    invoke-static {}, Lmybl/WbiSigner;->getInstance()Lmybl/WbiSigner;

    move-result-object v0

    .line 338
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    .line 339
    const-string v2, "search_type"

    const-string v3, "media_bangumi"

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    const-string v2, "keyword"

    iget-object v3, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->keyword:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    const-string v2, "order"

    iget-object v3, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->order:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    const-string v2, "page"

    iget v3, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->currentPage:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    const-string v2, "pagesize"

    const-string v3, "20"

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    invoke-virtual {v0, v1}, Lmybl/WbiSigner;->encWbiAndGetQuery(Ljava/util/TreeMap;)Ljava/lang/String;

    move-result-object v0

    .line 345
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://api.bilibili.com/x/web-interface/wbi/search/type?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 346
    const-string v1, "SearchResultVideoFrag"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "=== SearchBangumi URL ===\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmybl/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    invoke-static {}, Lbl/vo;->getOkHttpClient()Lokhttp3/OkHttpClient;

    move-result-object v1

    .line 349
    new-instance v2, Lokhttp3/Request$Builder;

    invoke-direct {v2}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v2, v0}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 350
    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$SearchBangumiResponse;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$SearchBangumiResponse;-><init>(Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;)V

    invoke-interface {v0, v1}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    .line 351
    return-void
.end method

.method public searchLiveRoom()V
    .locals 4

    .prologue
    .line 371
    invoke-static {}, Lmybl/WbiSigner;->getInstance()Lmybl/WbiSigner;

    move-result-object v0

    .line 372
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    .line 373
    const-string v2, "search_type"

    const-string v3, "live_room"

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    const-string v2, "keyword"

    iget-object v3, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->keyword:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    const-string v2, "order"

    iget-object v3, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->liveOrder:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    const-string v2, "page"

    iget v3, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->currentPage:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    const-string v2, "pagesize"

    const-string v3, "20"

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    invoke-virtual {v0, v1}, Lmybl/WbiSigner;->encWbiAndGetQuery(Ljava/util/TreeMap;)Ljava/lang/String;

    move-result-object v0

    .line 379
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://api.bilibili.com/x/web-interface/wbi/search/type?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 380
    const-string v1, "SearchResultVideoFrag"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "=== SearchLiveRoom URL ===\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmybl/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    invoke-static {}, Lbl/vo;->getOkHttpClient()Lokhttp3/OkHttpClient;

    move-result-object v1

    .line 383
    new-instance v2, Lokhttp3/Request$Builder;

    invoke-direct {v2}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v2, v0}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 384
    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$SearchLiveRoomResponse;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$SearchLiveRoomResponse;-><init>(Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;)V

    invoke-interface {v0, v1}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    .line 385
    return-void
.end method

.method public searchMediaFt()V
    .locals 4

    .prologue
    .line 354
    invoke-static {}, Lmybl/WbiSigner;->getInstance()Lmybl/WbiSigner;

    move-result-object v0

    .line 355
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    .line 356
    const-string v2, "search_type"

    const-string v3, "media_ft"

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
    const-string v2, "pagesize"

    const-string v3, "20"

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

    move-result-object v0

    .line 363
    const-string v1, "SearchResultVideoFrag"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "=== SearchMediaFt URL ===\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmybl/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    invoke-static {}, Lbl/vo;->getOkHttpClient()Lokhttp3/OkHttpClient;

    move-result-object v1

    .line 366
    new-instance v2, Lokhttp3/Request$Builder;

    invoke-direct {v2}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v2, v0}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 367
    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$SearchBangumiResponse;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$SearchBangumiResponse;-><init>(Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;)V

    invoke-interface {v0, v1}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    .line 368
    return-void
.end method

.method public searchUser()V
    .locals 4

    .prologue
    .line 388
    invoke-static {}, Lmybl/WbiSigner;->getInstance()Lmybl/WbiSigner;

    move-result-object v0

    .line 389
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    .line 390
    const-string v2, "search_type"

    const-string v3, "bili_user"

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    const-string v2, "keyword"

    iget-object v3, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->keyword:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    iget-object v2, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->userOrder:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_31

    .line 393
    const-string v2, "order"

    iget-object v3, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->userOrder:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    const-string v2, "order_sort"

    iget v3, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->userOrderSort:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    :cond_31
    const-string v2, "page"

    iget v3, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->currentPage:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    const-string v2, "pagesize"

    const-string v3, "20"

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    invoke-virtual {v0, v1}, Lmybl/WbiSigner;->encWbiAndGetQuery(Ljava/util/TreeMap;)Ljava/lang/String;

    move-result-object v0

    .line 399
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://api.bilibili.com/x/web-interface/wbi/search/type?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 400
    const-string v1, "SearchResultVideoFrag"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "=== SearchUser URL ===\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmybl/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    invoke-static {}, Lbl/vo;->getOkHttpClient()Lokhttp3/OkHttpClient;

    move-result-object v1

    .line 403
    new-instance v2, Lokhttp3/Request$Builder;

    invoke-direct {v2}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v2, v0}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 404
    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$SearchUserResponse;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$SearchUserResponse;-><init>(Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;)V

    invoke-interface {v0, v1}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    .line 405
    return-void
.end method

.method public searchVideo()V
    .locals 4

    .prologue
    .line 309
    invoke-static {}, Lmybl/WbiSigner;->getInstance()Lmybl/WbiSigner;

    move-result-object v0

    .line 310
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    .line 311
    const-string v2, "search_type"

    const-string v3, "video"

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    const-string v2, "keyword"

    iget-object v3, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->keyword:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    iget-object v2, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->order:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_26

    .line 314
    const-string v2, "order"

    iget-object v3, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->order:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    :cond_26
    iget-object v2, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->pubtimeBegin:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_35

    .line 317
    const-string v2, "pubtime_begin_s"

    iget-object v3, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->pubtimeBegin:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    :cond_35
    iget-object v2, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->pubtimeEnd:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_44

    .line 320
    const-string v2, "pubtime_end_s"

    iget-object v3, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->pubtimeEnd:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    :cond_44
    iget-object v2, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->duration:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_53

    .line 323
    const-string v2, "duration"

    iget-object v3, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->duration:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    :cond_53
    const-string v2, "page"

    iget v3, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->currentPage:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    const-string v2, "pagesize"

    const-string v3, "20"

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    invoke-virtual {v0, v1}, Lmybl/WbiSigner;->encWbiAndGetQuery(Ljava/util/TreeMap;)Ljava/lang/String;

    move-result-object v0

    .line 328
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://api.bilibili.com/x/web-interface/wbi/search/type?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 329
    const-string v1, "SearchResultVideoFrag"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "=== SearchVideo URL ===\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmybl/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    invoke-static {}, Lbl/vo;->getOkHttpClient()Lokhttp3/OkHttpClient;

    move-result-object v1

    .line 332
    new-instance v2, Lokhttp3/Request$Builder;

    invoke-direct {v2}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v2, v0}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 333
    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$SearchVideoResponse;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$SearchVideoResponse;-><init>(Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;)V

    invoke-interface {v0, v1}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    .line 334
    return-void
.end method

.method public setDuration(Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 552
    iput-object p1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->duration:Ljava/lang/String;

    .line 553
    iput v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->currentPage:I

    .line 554
    iput-boolean v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->hasMore:Z

    .line 555
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->adapter:Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;

    if-eqz v0, :cond_10

    .line 556
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->adapter:Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->clear()V

    .line 558
    :cond_10
    invoke-direct {p0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->b()V

    .line 559
    return-void
.end method

.method public setLiveOrder(Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 511
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->liveOrder:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 521
    :goto_9
    return-void

    .line 514
    :cond_a
    iput-object p1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->liveOrder:Ljava/lang/String;

    .line 515
    iput v1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->currentPage:I

    .line 516
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->hasMore:Z

    .line 517
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->adapter:Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;

    if-eqz v0, :cond_19

    .line 518
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->adapter:Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->clear()V

    .line 520
    :cond_19
    invoke-direct {p0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->b()V

    goto :goto_9
.end method

.method public setOrder(Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 454
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->order:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 464
    :goto_9
    return-void

    .line 457
    :cond_a
    iput-object p1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->order:Ljava/lang/String;

    .line 458
    iput v1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->currentPage:I

    .line 459
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->hasMore:Z

    .line 460
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->adapter:Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;

    if-eqz v0, :cond_19

    .line 461
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->adapter:Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->clear()V

    .line 463
    :cond_19
    invoke-direct {p0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->b()V

    goto :goto_9
.end method

.method public setPubtime(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 528
    iput-object p1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->pubtimeBegin:Ljava/lang/String;

    .line 529
    iput-object p2, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->pubtimeEnd:Ljava/lang/String;

    .line 530
    iput-object p3, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->dateType:Ljava/lang/String;

    .line 531
    iput v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->currentPage:I

    .line 532
    iput-boolean v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->hasMore:Z

    .line 533
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->adapter:Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;

    if-eqz v0, :cond_14

    .line 534
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->adapter:Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->clear()V

    .line 536
    :cond_14
    invoke-direct {p0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->b()V

    .line 537
    return-void
.end method

.method public setUserOrder(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 471
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 472
    const-string v0, ""

    iput-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->userOrder:Ljava/lang/String;

    .line 473
    iput v1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->userOrderSort:I

    .line 490
    :goto_e
    iput v2, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->currentPage:I

    .line 491
    iput-boolean v2, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->hasMore:Z

    .line 492
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->adapter:Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;

    if-eqz v0, :cond_1b

    .line 493
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->adapter:Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->clear()V

    .line 495
    :cond_1b
    invoke-direct {p0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->b()V

    .line 496
    return-void

    .line 474
    :cond_1f
    const-string v0, "fans"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 475
    const-string v0, "fans"

    iput-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->userOrder:Ljava/lang/String;

    .line 476
    iput v1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->userOrderSort:I

    goto :goto_e

    .line 477
    :cond_2e
    const-string v0, "fans_asc"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 478
    const-string v0, "fans"

    iput-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->userOrder:Ljava/lang/String;

    .line 479
    iput v2, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->userOrderSort:I

    goto :goto_e

    .line 480
    :cond_3d
    const-string v0, "level"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 481
    const-string v0, "level"

    iput-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->userOrder:Ljava/lang/String;

    .line 482
    iput v1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->userOrderSort:I

    goto :goto_e

    .line 483
    :cond_4c
    const-string v0, "level_asc"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 484
    const-string v0, "level"

    iput-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->userOrder:Ljava/lang/String;

    .line 485
    iput v2, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->userOrderSort:I

    goto :goto_e

    .line 487
    :cond_5b
    iput-object p1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->userOrder:Ljava/lang/String;

    .line 488
    iput v1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->userOrderSort:I

    goto :goto_e
.end method

.method public updateSearchParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    .prologue
    const/4 v1, 0x1

    .line 408
    const/4 v0, 0x0

    .line 410
    iget-object v2, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->order:Ljava/lang/String;

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 411
    iput-object p1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->order:Ljava/lang/String;

    move v0, v1

    .line 415
    :cond_d
    const-string v3, ""

    .line 416
    const-string v2, ""

    .line 417
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_34

    .line 419
    :try_start_17
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 420
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    .line 421
    mul-int/lit8 v4, v4, 0x18

    mul-int/lit8 v4, v4, 0x3c

    int-to-long v4, v4

    const-wide/16 v8, 0x3c

    mul-long/2addr v4, v8

    sub-long v4, v6, v4

    .line 422
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 423
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
    :try_end_33
    .catch Ljava/lang/NumberFormatException; {:try_start_17 .. :try_end_33} :catch_71

    move-result-object v2

    .line 429
    :cond_34
    :goto_34
    iget-object v4, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->pubtimeBegin:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4c

    iget-object v4, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->pubtimeEnd:Ljava/lang/String;

    .line 430
    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4c

    iget-object v4, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->dateType:Ljava/lang/String;

    .line 431
    invoke-static {p2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_53

    .line 432
    :cond_4c
    iput-object v3, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->pubtimeBegin:Ljava/lang/String;

    .line 433
    iput-object v2, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->pubtimeEnd:Ljava/lang/String;

    .line 434
    iput-object p2, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->dateType:Ljava/lang/String;

    move v0, v1

    .line 438
    :cond_53
    iget-object v2, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->duration:Ljava/lang/String;

    invoke-static {p3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5e

    .line 439
    iput-object p3, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->duration:Ljava/lang/String;

    move v0, v1

    .line 443
    :cond_5e
    if-eqz v0, :cond_70

    .line 444
    iput v1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->currentPage:I

    .line 445
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->hasMore:Z

    .line 446
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->adapter:Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;

    if-eqz v0, :cond_6d

    .line 447
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->adapter:Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->clear()V

    .line 449
    :cond_6d
    invoke-direct {p0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->b()V

    .line 451
    :cond_70
    return-void

    .line 424
    :catch_71
    move-exception v4

    .line 425
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
