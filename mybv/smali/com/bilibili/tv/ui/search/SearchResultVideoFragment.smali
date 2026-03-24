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

.field private recyclerView:Landroid/support/v7/widget/RecyclerView;

.field private tid:I

.field private userOrder:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 56
    invoke-direct {p0}, Lbl/ady;-><init>()V

    .line 64
    iput-boolean v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->isLoading:Z

    .line 65
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->hasMore:Z

    .line 68
    iput v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->tid:I

    .line 69
    iput v1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->currentPage:I

    .line 70
    const-string v0, "totalrank"

    iput-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->order:Ljava/lang/String;

    .line 71
    const-string v0, "totalrank"

    iput-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->userOrder:Ljava/lang/String;

    .line 72
    const-string v0, "online"

    iput-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->liveOrder:Ljava/lang/String;

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
    .line 230
    invoke-direct {p0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->loadData()V

    .line 231
    return-void
.end method

.method private getTypeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 289
    iget v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->tid:I

    packed-switch v0, :pswitch_data_18

    .line 295
    const-string v0, "\u89c6\u9891"

    :goto_7
    return-object v0

    .line 290
    :pswitch_8
    const-string v0, "\u89c6\u9891"

    goto :goto_7

    .line 291
    :pswitch_b
    const-string v0, "\u756a\u5267"

    goto :goto_7

    .line 292
    :pswitch_e
    const-string v0, "\u5f71\u89c6"

    goto :goto_7

    .line 293
    :pswitch_11
    const-string v0, "\u76f4\u64ad"

    goto :goto_7

    .line 294
    :pswitch_14
    const-string v0, "\u7528\u6237"

    goto :goto_7

    .line 289
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

    .line 589
    const-string v0, "SearchResultVideoFrag_SearchBangumi"

    invoke-static {v0, p1}, Lmybl/LogUtil;->json(Ljava/lang/String;Ljava/lang/Object;)V

    .line 590
    const-string v0, "data"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 591
    if-nez v0, :cond_cd

    .line 594
    :goto_f
    const-string v0, "result"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v4

    .line 595
    if-eqz v4, :cond_1d

    invoke-virtual {v4}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 596
    :cond_1d
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->isLoading:Z

    .line 597
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->hasMore:Z

    .line 598
    iget v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->currentPage:I

    if-ne v0, v3, :cond_2a

    .line 599
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->loadingView:Lcom/bilibili/tv/ui/base/LoadingImageView;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/base/LoadingImageView;->c()V

    .line 640
    :cond_2a
    :goto_2a
    return-void

    .line 604
    :cond_2b
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->isLoading:Z

    .line 605
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->loadingView:Lcom/bilibili/tv/ui/base/LoadingImageView;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/base/LoadingImageView;->b()V

    .line 606
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 607
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->headerLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_40

    .line 608
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->headerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 611
    :cond_40
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    .line 612
    :goto_46
    invoke-virtual {v4}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_a8

    .line 613
    invoke-virtual {v4, v0}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    .line 614
    new-instance v6, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$BangumiItem;

    invoke-direct {v6}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$BangumiItem;-><init>()V

    .line 615
    const-string v7, "title"

    invoke-virtual {v2, v7}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 616
    invoke-static {v7}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$BangumiItem;->title:Ljava/lang/String;

    .line 617
    const-string v7, "cover"

    invoke-virtual {v2, v7}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$BangumiItem;->cover:Ljava/lang/String;

    .line 618
    const-string v7, "season_id"

    invoke-virtual {v2, v7}, Lcom/alibaba/fastjson/JSONObject;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$BangumiItem;->param:Ljava/lang/String;

    .line 619
    const-string v7, "areas"

    invoke-virtual {v2, v7}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$BangumiItem;->area:Ljava/lang/String;

    .line 620
    const-string v7, "styles"

    invoke-virtual {v2, v7}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$BangumiItem;->style:Ljava/lang/String;

    .line 621
    const-string v7, "rating"

    invoke-virtual {v2, v7}, Lcom/alibaba/fastjson/JSONObject;->getDoubleValue(Ljava/lang/String;)D

    move-result-wide v8

    iput-wide v8, v6, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$BangumiItem;->rating:D

    .line 622
    const-string v7, "vote"

    invoke-virtual {v2, v7}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v2

    iput v2, v6, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$BangumiItem;->vote:I

    .line 623
    iget v2, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->tid:I

    if-ne v2, v3, :cond_a6

    move v2, v3

    :goto_9e
    iput-boolean v2, v6, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$BangumiItem;->isBangumi:Z

    .line 624
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 612
    add-int/lit8 v0, v0, 0x1

    goto :goto_46

    :cond_a6
    move v2, v1

    .line 623
    goto :goto_9e

    .line 627
    :cond_a8
    iget v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->currentPage:I

    if-ne v0, v3, :cond_c0

    .line 628
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->adapter:Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;

    invoke-virtual {v0, v5}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->setBangumis(Ljava/util/List;)V

    .line 633
    :goto_b1
    invoke-virtual {v4}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    const/16 v2, 0x14

    if-ge v0, v2, :cond_c6

    .line 634
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->hasMore:Z

    .line 639
    :goto_bb
    invoke-direct {p0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->updateHeaderInfo()V

    goto/16 :goto_2a

    .line 630
    :cond_c0
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->adapter:Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;

    invoke-virtual {v0, v5}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->addBangumis(Ljava/util/List;)V

    goto :goto_b1

    .line 636
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

    .line 690
    const-string v0, "SearchResultVideoFrag_SearchLiveRoom"

    invoke-static {v0, p1}, Lmybl/LogUtil;->json(Ljava/lang/String;Ljava/lang/Object;)V

    .line 691
    const-string v0, "data"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 692
    if-nez v0, :cond_c1

    .line 695
    :goto_f
    const-string v0, "result"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v2

    .line 696
    if-eqz v2, :cond_1d

    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 697
    :cond_1d
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->isLoading:Z

    .line 698
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->hasMore:Z

    .line 699
    iget v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->currentPage:I

    if-ne v0, v8, :cond_2a

    .line 700
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->loadingView:Lcom/bilibili/tv/ui/base/LoadingImageView;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/base/LoadingImageView;->c()V

    .line 741
    :cond_2a
    :goto_2a
    return-void

    .line 705
    :cond_2b
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->isLoading:Z

    .line 706
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->loadingView:Lcom/bilibili/tv/ui/base/LoadingImageView;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/base/LoadingImageView;->b()V

    .line 707
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 708
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->headerLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_40

    .line 709
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->headerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 712
    :cond_40
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    .line 713
    :goto_46
    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v4

    if-ge v0, v4, :cond_9c

    .line 714
    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    .line 715
    new-instance v5, Lmybl/BiliLiveContentEx2;

    invoke-direct {v5}, Lmybl/BiliLiveContentEx2;-><init>()V

    .line 716
    const-string v6, "title"

    invoke-virtual {v4, v6}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 717
    invoke-static {v6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lmybl/BiliLiveContentEx2;->mTitle:Ljava/lang/String;

    .line 718
    const-string v6, "uname"

    invoke-virtual {v4, v6}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lmybl/BiliLiveContentEx2;->mUname:Ljava/lang/String;

    .line 719
    const-string v6, "user_cover"

    invoke-virtual {v4, v6}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lmybl/BiliLiveContentEx2;->mCover:Ljava/lang/String;

    .line 720
    iget-object v6, v5, Lmybl/BiliLiveContentEx2;->mCover:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_85

    .line 721
    const-string v6, "cover"

    invoke-virtual {v4, v6}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lmybl/BiliLiveContentEx2;->mCover:Ljava/lang/String;

    .line 723
    :cond_85
    const-string v6, "online"

    invoke-virtual {v4, v6}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v6

    int-to-long v6, v6

    iput-wide v6, v5, Lmybl/BiliLiveContentEx2;->mOnline:J

    .line 724
    const-string v6, "roomid"

    invoke-virtual {v4, v6}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v4

    iput v4, v5, Lmybl/BiliLiveContentEx2;->mRoomId:I

    .line 725
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 713
    add-int/lit8 v0, v0, 0x1

    goto :goto_46

    .line 728
    :cond_9c
    iget v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->currentPage:I

    if-ne v0, v8, :cond_b4

    .line 729
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->adapter:Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->setLiveRooms(Ljava/util/List;)V

    .line 734
    :goto_a5
    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    const/16 v2, 0x14

    if-ge v0, v2, :cond_ba

    .line 735
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->hasMore:Z

    .line 740
    :goto_af
    invoke-direct {p0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->updateHeaderInfo()V

    goto/16 :goto_2a

    .line 731
    :cond_b4
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->adapter:Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->addLiveRooms(Ljava/util/List;)V

    goto :goto_a5

    .line 737
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

    .line 791
    const-string v0, "SearchResultVideoFrag_SearchUser"

    invoke-static {v0, p1}, Lmybl/LogUtil;->json(Ljava/lang/String;Ljava/lang/Object;)V

    .line 792
    const-string v0, "data"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 793
    if-nez v0, :cond_10

    .line 840
    :cond_f
    :goto_f
    return-void

    .line 796
    :cond_10
    const-string v2, "result"

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v2

    .line 797
    if-eqz v2, :cond_1e

    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 798
    :cond_1e
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->isLoading:Z

    .line 799
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->hasMore:Z

    .line 800
    iget v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->currentPage:I

    if-ne v0, v8, :cond_f

    .line 801
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->loadingView:Lcom/bilibili/tv/ui/base/LoadingImageView;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/base/LoadingImageView;->c()V

    goto :goto_f

    .line 806
    :cond_2c
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->isLoading:Z

    .line 807
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->loadingView:Lcom/bilibili/tv/ui/base/LoadingImageView;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/base/LoadingImageView;->b()V

    .line 808
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 809
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->headerLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_41

    .line 810
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->headerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 813
    :cond_41
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    .line 814
    :goto_47
    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v4

    if-ge v0, v4, :cond_98

    .line 815
    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    .line 816
    new-instance v5, Lcom/bilibili/tv/api/search/BiliSearchResultUper;

    invoke-direct {v5}, Lcom/bilibili/tv/api/search/BiliSearchResultUper;-><init>()V

    .line 817
    const-string v6, "uname"

    invoke-virtual {v4, v6}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 818
    invoke-static {v6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/bilibili/tv/api/search/BiliSearchResultUper;->uname:Ljava/lang/String;

    .line 819
    const-string v6, "upic"

    invoke-virtual {v4, v6}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/bilibili/tv/api/search/BiliSearchResultUper;->upic:Ljava/lang/String;

    .line 820
    const-string v6, "usign"

    invoke-virtual {v4, v6}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/bilibili/tv/api/search/BiliSearchResultUper;->usign:Ljava/lang/String;

    .line 821
    const-string v6, "mid"

    invoke-virtual {v4, v6}, Lcom/alibaba/fastjson/JSONObject;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iput-wide v6, v5, Lcom/bilibili/tv/api/search/BiliSearchResultUper;->mid:J

    .line 822
    const-string v6, "fans"

    invoke-virtual {v4, v6}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v6

    iput v6, v5, Lcom/bilibili/tv/api/search/BiliSearchResultUper;->fans:I

    .line 823
    const-string v6, "videos"

    invoke-virtual {v4, v6}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v4

    iput v4, v5, Lcom/bilibili/tv/api/search/BiliSearchResultUper;->videos:I

    .line 824
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 814
    add-int/lit8 v0, v0, 0x1

    goto :goto_47

    .line 827
    :cond_98
    iget v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->currentPage:I

    if-ne v0, v8, :cond_b0

    .line 828
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->adapter:Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->setUsers(Ljava/util/List;)V

    .line 833
    :goto_a1
    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    const/16 v2, 0x14

    if-ge v0, v2, :cond_b6

    .line 834
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->hasMore:Z

    .line 839
    :goto_ab
    invoke-direct {p0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->updateHeaderInfo()V

    goto/16 :goto_f

    .line 830
    :cond_b0
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->adapter:Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->addUsers(Ljava/util/List;)V

    goto :goto_a1

    .line 836
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

    .line 483
    const-string v0, "SearchResultVideoFrag_SearchVideo"

    invoke-static {v0, p1}, Lmybl/LogUtil;->json(Ljava/lang/String;Ljava/lang/Object;)V

    .line 484
    const-string v0, "data"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 485
    if-nez v0, :cond_ec

    .line 488
    :goto_f
    const-string v0, "result"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v2

    .line 489
    if-eqz v2, :cond_1d

    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 490
    :cond_1d
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->isLoading:Z

    .line 491
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->hasMore:Z

    .line 492
    iget v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->currentPage:I

    if-ne v0, v8, :cond_2a

    .line 493
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->loadingView:Lcom/bilibili/tv/ui/base/LoadingImageView;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/base/LoadingImageView;->c()V

    .line 539
    :cond_2a
    :goto_2a
    return-void

    .line 498
    :cond_2b
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->isLoading:Z

    .line 499
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->loadingView:Lcom/bilibili/tv/ui/base/LoadingImageView;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/base/LoadingImageView;->b()V

    .line 500
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 501
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->headerLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_40

    .line 502
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->headerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 505
    :cond_40
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    .line 506
    :goto_46
    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v4

    if-ge v0, v4, :cond_c7

    .line 507
    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    .line 508
    new-instance v5, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoItem;

    invoke-direct {v5}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoItem;-><init>()V

    .line 509
    const-string v6, "title"

    invoke-virtual {v4, v6}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 510
    invoke-static {v6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoItem;->title:Ljava/lang/String;

    .line 511
    const-string v6, "author"

    invoke-virtual {v4, v6}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoItem;->author:Ljava/lang/String;

    .line 512
    const-string v6, "play"

    invoke-virtual {v4, v6}, Lcom/alibaba/fastjson/JSONObject;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoItem;->play:Ljava/lang/String;

    .line 513
    const-string v6, "video_review"

    invoke-virtual {v4, v6}, Lcom/alibaba/fastjson/JSONObject;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoItem;->danmaku:Ljava/lang/String;

    .line 514
    const-string v6, "pic"

    invoke-virtual {v4, v6}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoItem;->cover:Ljava/lang/String;

    .line 515
    const-string v6, "aid"

    invoke-virtual {v4, v6}, Lcom/alibaba/fastjson/JSONObject;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoItem;->param:Ljava/lang/String;

    .line 516
    const-string v6, "pubdate"

    invoke-virtual {v4, v6}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b1

    .line 517
    const-string v6, "pubdate"

    invoke-virtual {v4, v6}, Lcom/alibaba/fastjson/JSONObject;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 518
    invoke-static {v6, v7}, Lcom/bilibili/tv/util/DateHelper;->formatDate(J)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoItem;->pubdate:Ljava/lang/String;

    .line 520
    :cond_b1
    const-string v6, "duration"

    invoke-virtual {v4, v6}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c1

    .line 521
    const-string v6, "duration"

    invoke-virtual {v4, v6}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v5, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoItem;->duration:Ljava/lang/String;

    .line 523
    :cond_c1
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 506
    add-int/lit8 v0, v0, 0x1

    goto :goto_46

    .line 526
    :cond_c7
    iget v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->currentPage:I

    if-ne v0, v8, :cond_df

    .line 527
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->adapter:Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->setVideos(Ljava/util/List;)V

    .line 532
    :goto_d0
    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    const/16 v2, 0x14

    if-ge v0, v2, :cond_e5

    .line 533
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->hasMore:Z

    .line 538
    :goto_da
    invoke-direct {p0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->updateHeaderInfo()V

    goto/16 :goto_2a

    .line 529
    :cond_df
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->adapter:Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->addVideos(Ljava/util/List;)V

    goto :goto_d0

    .line 535
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

    .line 234
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->isLoading:Z

    if-eqz v0, :cond_6

    .line 272
    :cond_5
    :goto_5
    return-void

    .line 238
    :cond_6
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->keyword:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 242
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->isLoading:Z

    .line 244
    iget v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->currentPage:I

    if-ne v0, v1, :cond_2a

    .line 245
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->loadingView:Lcom/bilibili/tv/ui/base/LoadingImageView;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/base/LoadingImageView;->a()V

    .line 246
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 247
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->headerLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2a

    .line 248
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->headerLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 252
    :cond_2a
    iget v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->tid:I

    packed-switch v0, :pswitch_data_48

    .line 269
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->searchVideo()V

    goto :goto_5

    .line 254
    :pswitch_33
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->searchVideo()V

    goto :goto_5

    .line 257
    :pswitch_37
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->searchBangumi()V

    goto :goto_5

    .line 260
    :pswitch_3b
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->searchMediaFt()V

    goto :goto_5

    .line 263
    :pswitch_3f
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->searchLiveRoom()V

    goto :goto_5

    .line 266
    :pswitch_43
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->searchUser()V

    goto :goto_5

    .line 252
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
    .line 83
    new-instance v0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;

    invoke-direct {v0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;-><init>()V

    .line 84
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 85
    const-string v2, "arg_keyword"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const-string v2, "arg_tid"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 87
    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->setArguments(Landroid/os/Bundle;)V

    .line 88
    return-object v0
.end method

.method private updateHeaderInfo()V
    .locals 4

    .prologue
    .line 275
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->headerTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_2c

    .line 276
    invoke-direct {p0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->getTypeName()Ljava/lang/String;

    move-result-object v0

    .line 277
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

    .line 279
    :cond_2c
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->headerCount:Landroid/widget/TextView;

    if-eqz v0, :cond_37

    .line 280
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->headerCount:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 282
    :cond_37
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->hintSort:Landroid/widget/TextView;

    if-eqz v0, :cond_48

    .line 283
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->hintSort:Landroid/widget/TextView;

    const-string v1, "\u957f\u6309[OK]\u952e\u6392\u5e8f"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 284
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->hintSort:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 286
    :cond_48
    return-void
.end method


# virtual methods
.method public a(Landroid/support/v7/widget/RecyclerView;Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 115
    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    invoke-super {p0, p1, p2}, Lbl/ady;->a(Landroid/support/v7/widget/RecyclerView;Landroid/os/Bundle;)V

    .line 118
    new-instance v0, Lcom/bilibili/tv/widget/side/SideRightGridLayoutManger;

    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/bilibili/tv/widget/side/SideRightGridLayoutManger;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->layoutManager:Lcom/bilibili/tv/widget/side/SideRightGridLayoutManger;

    .line 120
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 121
    if-nez v0, :cond_22

    .line 122
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.bilibili.tv.ui.search.SearchResultSideActivity"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_22
    iget-object v1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->layoutManager:Lcom/bilibili/tv/widget/side/SideRightGridLayoutManger;

    new-instance v2, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$BorderListener;

    check-cast v0, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;

    invoke-direct {v2, p0, v0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$BorderListener;-><init>(Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;Lcom/bilibili/tv/ui/search/SearchResultSideActivity;)V

    invoke-virtual {v1, v2}, Lcom/bilibili/tv/widget/side/SideRightGridLayoutManger;->a(Lcom/bilibili/tv/widget/border/BorderGridLayoutManager$a;)V

    .line 126
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 127
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->layoutManager:Lcom/bilibili/tv/widget/side/SideRightGridLayoutManger;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$h;)V

    .line 129
    const v0, 0x7f0601bb

    invoke-static {v0}, Lbl/adl;->b(I)I

    move-result v0

    .line 130
    const v1, 0x7f06006e

    invoke-static {v1}, Lbl/adl;->b(I)I

    move-result v1

    .line 131
    const v2, 0x7f06014d

    invoke-static {v2}, Lbl/adl;->b(I)I

    move-result v2

    .line 132
    invoke-virtual {p1, v2, v2, v2, v2}, Landroid/support/v7/widget/RecyclerView;->setPadding(IIII)V

    .line 133
    new-instance v2, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$ItemDecoration;

    invoke-direct {v2, v1, v0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$ItemDecoration;-><init>(II)V

    invoke-virtual {p1, v2}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView$g;)V

    .line 134
    new-instance v0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$ScrollListener;

    invoke-direct {v0, p0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$ScrollListener;-><init>(Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;)V

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView$m;)V

    .line 136
    new-instance v0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;

    invoke-direct {v0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->adapter:Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;

    .line 137
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->adapter:Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 139
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->i()V

    .line 140
    invoke-direct {p0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->b()V

    .line 141
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 207
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->adapter:Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;

    if-eqz v0, :cond_14

    .line 208
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->adapter:Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->a()I

    move-result v0

    if-lez v0, :cond_14

    .line 209
    const/4 v0, 0x1

    .line 212
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

    .line 223
    invoke-super {p0}, Lbl/ady;->d_()V

    .line 224
    iput v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->currentPage:I

    .line 225
    iput-boolean v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->hasMore:Z

    .line 226
    invoke-direct {p0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->b()V

    .line 227
    return-void
.end method

.method public getTid()I
    .locals 1

    .prologue
    .line 424
    iget v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->tid:I

    return v0
.end method

.method public isLoading()Z
    .locals 1

    .prologue
    .line 428
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->isLoading:Z

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 93
    invoke-super {p0, p1}, Lbl/ady;->onCreate(Landroid/os/Bundle;)V

    .line 94
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 95
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "arg_keyword"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->keyword:Ljava/lang/String;

    .line 96
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "arg_tid"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->tid:I

    .line 98
    :cond_24
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

    iput-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->headerLayout:Landroid/widget/LinearLayout;

    .line 104
    const v0, 0x7f08019a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->headerTitle:Landroid/widget/TextView;

    .line 105
    const v0, 0x7f08019b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->headerCount:Landroid/widget/TextView;

    .line 106
    const v0, 0x7f080097

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->hintSort:Landroid/widget/TextView;

    .line 107
    const v0, 0x7f0800eb

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 108
    const v0, 0x7f0800b7

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/base/LoadingImageView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->loadingView:Lcom/bilibili/tv/ui/base/LoadingImageView;

    .line 109
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p0, v0, p3}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->a(Landroid/support/v7/widget/RecyclerView;Landroid/os/Bundle;)V

    .line 110
    return-object v1
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 217
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->adapter:Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;

    .line 218
    invoke-super {p0}, Lbl/ady;->onDestroyView()V

    .line 219
    return-void
.end method

.method public searchBangumi()V
    .locals 4

    .prologue
    .line 317
    invoke-static {}, Lmybl/WbiSigner;->getInstance()Lmybl/WbiSigner;

    move-result-object v0

    .line 318
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    .line 319
    const-string v2, "search_type"

    const-string v3, "media_bangumi"

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    const-string v2, "keyword"

    iget-object v3, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->keyword:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    const-string v2, "order"

    iget-object v3, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->order:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    const-string v2, "page"

    iget v3, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->currentPage:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    const-string v2, "pagesize"

    const-string v3, "20"

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    invoke-virtual {v0, v1}, Lmybl/WbiSigner;->encWbiAndGetQuery(Ljava/util/TreeMap;)Ljava/lang/String;

    move-result-object v0

    .line 325
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://api.bilibili.com/x/web-interface/wbi/search/type?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 326
    const-string v1, "SearchResultVideoFrag"

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

    .line 328
    invoke-static {}, Lbl/vo;->getOkHttpClient()Lokhttp3/OkHttpClient;

    move-result-object v1

    .line 329
    new-instance v2, Lokhttp3/Request$Builder;

    invoke-direct {v2}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v2, v0}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 330
    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$SearchBangumiResponse;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$SearchBangumiResponse;-><init>(Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;)V

    invoke-interface {v0, v1}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    .line 331
    return-void
.end method

.method public searchLiveRoom()V
    .locals 4

    .prologue
    .line 351
    invoke-static {}, Lmybl/WbiSigner;->getInstance()Lmybl/WbiSigner;

    move-result-object v0

    .line 352
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    .line 353
    const-string v2, "search_type"

    const-string v3, "live_room"

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    const-string v2, "keyword"

    iget-object v3, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->keyword:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    const-string v2, "order"

    iget-object v3, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->liveOrder:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    const-string v2, "page"

    iget v3, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->currentPage:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    const-string v2, "pagesize"

    const-string v3, "20"

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    invoke-virtual {v0, v1}, Lmybl/WbiSigner;->encWbiAndGetQuery(Ljava/util/TreeMap;)Ljava/lang/String;

    move-result-object v0

    .line 359
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://api.bilibili.com/x/web-interface/wbi/search/type?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 360
    const-string v1, "SearchResultVideoFrag"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SearchLiveRoom URL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    invoke-static {}, Lbl/vo;->getOkHttpClient()Lokhttp3/OkHttpClient;

    move-result-object v1

    .line 363
    new-instance v2, Lokhttp3/Request$Builder;

    invoke-direct {v2}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v2, v0}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 364
    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$SearchLiveRoomResponse;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$SearchLiveRoomResponse;-><init>(Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;)V

    invoke-interface {v0, v1}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    .line 365
    return-void
.end method

.method public searchMediaFt()V
    .locals 4

    .prologue
    .line 334
    invoke-static {}, Lmybl/WbiSigner;->getInstance()Lmybl/WbiSigner;

    move-result-object v0

    .line 335
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    .line 336
    const-string v2, "search_type"

    const-string v3, "media_ft"

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    const-string v2, "keyword"

    iget-object v3, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->keyword:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    const-string v2, "order"

    iget-object v3, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->order:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    const-string v2, "page"

    iget v3, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->currentPage:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    const-string v2, "pagesize"

    const-string v3, "20"

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    invoke-virtual {v0, v1}, Lmybl/WbiSigner;->encWbiAndGetQuery(Ljava/util/TreeMap;)Ljava/lang/String;

    move-result-object v0

    .line 342
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://api.bilibili.com/x/web-interface/wbi/search/type?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 343
    const-string v1, "SearchResultVideoFrag"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SearchMediaFt URL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    invoke-static {}, Lbl/vo;->getOkHttpClient()Lokhttp3/OkHttpClient;

    move-result-object v1

    .line 346
    new-instance v2, Lokhttp3/Request$Builder;

    invoke-direct {v2}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v2, v0}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 347
    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$SearchBangumiResponse;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$SearchBangumiResponse;-><init>(Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;)V

    invoke-interface {v0, v1}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    .line 348
    return-void
.end method

.method public searchUser()V
    .locals 4

    .prologue
    .line 368
    invoke-static {}, Lmybl/WbiSigner;->getInstance()Lmybl/WbiSigner;

    move-result-object v0

    .line 369
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    .line 370
    const-string v2, "search_type"

    const-string v3, "bili_user"

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    const-string v2, "keyword"

    iget-object v3, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->keyword:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    const-string v2, "order"

    iget-object v3, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->userOrder:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    const-string v2, "page"

    iget v3, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->currentPage:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    const-string v2, "pagesize"

    const-string v3, "20"

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    invoke-virtual {v0, v1}, Lmybl/WbiSigner;->encWbiAndGetQuery(Ljava/util/TreeMap;)Ljava/lang/String;

    move-result-object v0

    .line 376
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://api.bilibili.com/x/web-interface/wbi/search/type?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 377
    const-string v1, "SearchResultVideoFrag"

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

    .line 379
    invoke-static {}, Lbl/vo;->getOkHttpClient()Lokhttp3/OkHttpClient;

    move-result-object v1

    .line 380
    new-instance v2, Lokhttp3/Request$Builder;

    invoke-direct {v2}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v2, v0}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 381
    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$SearchUserResponse;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$SearchUserResponse;-><init>(Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;)V

    invoke-interface {v0, v1}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    .line 382
    return-void
.end method

.method public searchVideo()V
    .locals 4

    .prologue
    .line 300
    invoke-static {}, Lmybl/WbiSigner;->getInstance()Lmybl/WbiSigner;

    move-result-object v0

    .line 301
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    .line 302
    const-string v2, "search_type"

    const-string v3, "video"

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    const-string v2, "keyword"

    iget-object v3, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->keyword:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    const-string v2, "order"

    iget-object v3, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->order:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    const-string v2, "page"

    iget v3, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->currentPage:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    const-string v2, "pagesize"

    const-string v3, "20"

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    invoke-virtual {v0, v1}, Lmybl/WbiSigner;->encWbiAndGetQuery(Ljava/util/TreeMap;)Ljava/lang/String;

    move-result-object v0

    .line 308
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://api.bilibili.com/x/web-interface/wbi/search/type?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 309
    const-string v1, "SearchResultVideoFrag"

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

    .line 311
    invoke-static {}, Lbl/vo;->getOkHttpClient()Lokhttp3/OkHttpClient;

    move-result-object v1

    .line 312
    new-instance v2, Lokhttp3/Request$Builder;

    invoke-direct {v2}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v2, v0}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 313
    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$SearchVideoResponse;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$SearchVideoResponse;-><init>(Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;)V

    invoke-interface {v0, v1}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    .line 314
    return-void
.end method

.method public setLiveOrder(Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 411
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->liveOrder:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 421
    :goto_9
    return-void

    .line 414
    :cond_a
    iput-object p1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->liveOrder:Ljava/lang/String;

    .line 415
    iput v1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->currentPage:I

    .line 416
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->hasMore:Z

    .line 417
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->adapter:Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;

    if-eqz v0, :cond_19

    .line 418
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->adapter:Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->clear()V

    .line 420
    :cond_19
    invoke-direct {p0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->b()V

    goto :goto_9
.end method

.method public setOrder(Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 385
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->order:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 395
    :goto_9
    return-void

    .line 388
    :cond_a
    iput-object p1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->order:Ljava/lang/String;

    .line 389
    iput v1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->currentPage:I

    .line 390
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->hasMore:Z

    .line 391
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->adapter:Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;

    if-eqz v0, :cond_19

    .line 392
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->adapter:Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->clear()V

    .line 394
    :cond_19
    invoke-direct {p0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->b()V

    goto :goto_9
.end method

.method public setUserOrder(Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 398
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->userOrder:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 408
    :goto_9
    return-void

    .line 401
    :cond_a
    iput-object p1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->userOrder:Ljava/lang/String;

    .line 402
    iput v1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->currentPage:I

    .line 403
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->hasMore:Z

    .line 404
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->adapter:Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;

    if-eqz v0, :cond_19

    .line 405
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->adapter:Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment$VideoAdapter;->clear()V

    .line 407
    :cond_19
    invoke-direct {p0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->b()V

    goto :goto_9
.end method
