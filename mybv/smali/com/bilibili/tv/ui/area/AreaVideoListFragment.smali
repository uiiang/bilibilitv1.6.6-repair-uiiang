.class public Lcom/bilibili/tv/ui/area/AreaVideoListFragment;
.super Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;
.source "AreaVideoListFragment.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AreaVideoListFragment"


# instance fields
.field private categoryTid:I

.field private currentPage:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;-><init>()V

    .line 41
    const/4 v0, 0x1

    iput v0, p0, Lcom/bilibili/tv/ui/area/AreaVideoListFragment;->currentPage:I

    .line 59
    return-void
.end method

.method static synthetic access$000(Lcom/bilibili/tv/ui/area/AreaVideoListFragment;)I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/bilibili/tv/ui/area/AreaVideoListFragment;->categoryTid:I

    return v0
.end method

.method static synthetic access$100(Lcom/bilibili/tv/ui/area/AreaVideoListFragment;)I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/bilibili/tv/ui/area/AreaVideoListFragment;->currentPage:I

    return v0
.end method

.method static synthetic access$1000(Lcom/bilibili/tv/ui/area/AreaVideoListFragment;)Lcom/bilibili/tv/widget/border/BorderGridLayoutManager;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/bilibili/tv/ui/area/AreaVideoListFragment;->layoutManager:Lcom/bilibili/tv/widget/border/BorderGridLayoutManager;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/bilibili/tv/ui/area/AreaVideoListFragment;)Lcom/bilibili/tv/widget/border/BorderGridLayoutManager;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/bilibili/tv/ui/area/AreaVideoListFragment;->layoutManager:Lcom/bilibili/tv/widget/border/BorderGridLayoutManager;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/bilibili/tv/ui/area/AreaVideoListFragment;)Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$VideoListAdapter;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/bilibili/tv/ui/area/AreaVideoListFragment;->adapter:Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$VideoListAdapter;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/bilibili/tv/ui/area/AreaVideoListFragment;)Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$VideoListAdapter;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/bilibili/tv/ui/area/AreaVideoListFragment;->adapter:Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$VideoListAdapter;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/bilibili/tv/ui/area/AreaVideoListFragment;)Lcom/bilibili/tv/widget/border/BorderGridLayoutManager;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/bilibili/tv/ui/area/AreaVideoListFragment;->layoutManager:Lcom/bilibili/tv/widget/border/BorderGridLayoutManager;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/bilibili/tv/ui/area/AreaVideoListFragment;)Lcom/bilibili/tv/widget/border/BorderGridLayoutManager;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/bilibili/tv/ui/area/AreaVideoListFragment;->layoutManager:Lcom/bilibili/tv/widget/border/BorderGridLayoutManager;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/bilibili/tv/ui/area/AreaVideoListFragment;)Lcom/bilibili/tv/widget/border/BorderGridLayoutManager;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/bilibili/tv/ui/area/AreaVideoListFragment;->layoutManager:Lcom/bilibili/tv/widget/border/BorderGridLayoutManager;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/bilibili/tv/ui/area/AreaVideoListFragment;)Lcom/bilibili/tv/widget/border/BorderGridLayoutManager;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/bilibili/tv/ui/area/AreaVideoListFragment;->layoutManager:Lcom/bilibili/tv/widget/border/BorderGridLayoutManager;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/bilibili/tv/ui/area/AreaVideoListFragment;Z)Z
    .locals 0

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/bilibili/tv/ui/area/AreaVideoListFragment;->hasMoreData:Z

    return p1
.end method

.method static synthetic access$1902(Lcom/bilibili/tv/ui/area/AreaVideoListFragment;Z)Z
    .locals 0

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/bilibili/tv/ui/area/AreaVideoListFragment;->isLoadingMore:Z

    return p1
.end method

.method static synthetic access$200(Lcom/bilibili/tv/ui/area/AreaVideoListFragment;Ljava/util/List;)Ljava/util/List;
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/area/AreaVideoListFragment;->convertToContentList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2002(Lcom/bilibili/tv/ui/area/AreaVideoListFragment;Z)Z
    .locals 0

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/bilibili/tv/ui/area/AreaVideoListFragment;->isLoadingMore:Z

    return p1
.end method

.method static synthetic access$2102(Lcom/bilibili/tv/ui/area/AreaVideoListFragment;Z)Z
    .locals 0

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/bilibili/tv/ui/area/AreaVideoListFragment;->hasMoreData:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/bilibili/tv/ui/area/AreaVideoListFragment;Ljava/util/List;)Ljava/util/List;
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/area/AreaVideoListFragment;->convertBiliVideoDetailToContentList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2300(Lcom/bilibili/tv/ui/area/AreaVideoListFragment;)Ljava/util/List;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/bilibili/tv/ui/area/AreaVideoListFragment;->ugcList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/bilibili/tv/ui/area/AreaVideoListFragment;)Ljava/util/List;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/bilibili/tv/ui/area/AreaVideoListFragment;->ogvList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/bilibili/tv/ui/area/AreaVideoListFragment;)Ljava/util/List;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/bilibili/tv/ui/area/AreaVideoListFragment;->ugcList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/bilibili/tv/ui/area/AreaVideoListFragment;)Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$VideoListAdapter;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/bilibili/tv/ui/area/AreaVideoListFragment;->adapter:Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$VideoListAdapter;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/bilibili/tv/ui/area/AreaVideoListFragment;)Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$VideoListAdapter;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/bilibili/tv/ui/area/AreaVideoListFragment;->adapter:Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$VideoListAdapter;

    return-object v0
.end method

.method static synthetic access$2802(Lcom/bilibili/tv/ui/area/AreaVideoListFragment;Z)Z
    .locals 0

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/bilibili/tv/ui/area/AreaVideoListFragment;->hasMoreData:Z

    return p1
.end method

.method static synthetic access$2902(Lcom/bilibili/tv/ui/area/AreaVideoListFragment;Z)Z
    .locals 0

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/bilibili/tv/ui/area/AreaVideoListFragment;->isLoadingMore:Z

    return p1
.end method

.method static synthetic access$300(Lcom/bilibili/tv/ui/area/AreaVideoListFragment;)Ljava/util/List;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/bilibili/tv/ui/area/AreaVideoListFragment;->ugcList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/bilibili/tv/ui/area/AreaVideoListFragment;)Lcom/bilibili/tv/widget/border/BorderGridLayoutManager;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/bilibili/tv/ui/area/AreaVideoListFragment;->layoutManager:Lcom/bilibili/tv/widget/border/BorderGridLayoutManager;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/bilibili/tv/ui/area/AreaVideoListFragment;)Lcom/bilibili/tv/widget/border/BorderGridLayoutManager;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/bilibili/tv/ui/area/AreaVideoListFragment;->layoutManager:Lcom/bilibili/tv/widget/border/BorderGridLayoutManager;

    return-object v0
.end method

.method static synthetic access$3202(Lcom/bilibili/tv/ui/area/AreaVideoListFragment;Z)Z
    .locals 0

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/bilibili/tv/ui/area/AreaVideoListFragment;->hasMoreData:Z

    return p1
.end method

.method static synthetic access$3302(Lcom/bilibili/tv/ui/area/AreaVideoListFragment;Z)Z
    .locals 0

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/bilibili/tv/ui/area/AreaVideoListFragment;->isLoadingMore:Z

    return p1
.end method

.method static synthetic access$3402(Lcom/bilibili/tv/ui/area/AreaVideoListFragment;Z)Z
    .locals 0

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/bilibili/tv/ui/area/AreaVideoListFragment;->hasMoreData:Z

    return p1
.end method

.method static synthetic access$3502(Lcom/bilibili/tv/ui/area/AreaVideoListFragment;Z)Z
    .locals 0

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/bilibili/tv/ui/area/AreaVideoListFragment;->isLoadingMore:Z

    return p1
.end method

.method static synthetic access$3602(Lcom/bilibili/tv/ui/area/AreaVideoListFragment;Z)Z
    .locals 0

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/bilibili/tv/ui/area/AreaVideoListFragment;->hasMoreData:Z

    return p1
.end method

.method static synthetic access$3702(Lcom/bilibili/tv/ui/area/AreaVideoListFragment;Z)Z
    .locals 0

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/bilibili/tv/ui/area/AreaVideoListFragment;->isLoadingMore:Z

    return p1
.end method

.method static synthetic access$400(Lcom/bilibili/tv/ui/area/AreaVideoListFragment;)Ljava/util/List;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/bilibili/tv/ui/area/AreaVideoListFragment;->ogvList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lcom/bilibili/tv/ui/area/AreaVideoListFragment;)Ljava/util/List;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/bilibili/tv/ui/area/AreaVideoListFragment;->ugcList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$600(Lcom/bilibili/tv/ui/area/AreaVideoListFragment;)Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$VideoListAdapter;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/bilibili/tv/ui/area/AreaVideoListFragment;->adapter:Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$VideoListAdapter;

    return-object v0
.end method

.method static synthetic access$700(Lcom/bilibili/tv/ui/area/AreaVideoListFragment;)Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$VideoListAdapter;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/bilibili/tv/ui/area/AreaVideoListFragment;->adapter:Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$VideoListAdapter;

    return-object v0
.end method

.method static synthetic access$802(Lcom/bilibili/tv/ui/area/AreaVideoListFragment;Z)Z
    .locals 0

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/bilibili/tv/ui/area/AreaVideoListFragment;->hasMoreData:Z

    return p1
.end method

.method static synthetic access$902(Lcom/bilibili/tv/ui/area/AreaVideoListFragment;Z)Z
    .locals 0

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/bilibili/tv/ui/area/AreaVideoListFragment;->isLoadingMore:Z

    return p1
.end method

.method private convertBiliVideoDetailToContentList(Ljava/util/List;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/tv/api/video/BiliVideoDetail;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/tv/api/main/MainRecommendEx$Content;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 333
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 335
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;

    .line 336
    new-instance v3, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;

    invoke-direct {v3}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;-><init>()V

    .line 338
    iget-object v4, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mTitle:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->setTitle(Ljava/lang/String;)V

    .line 339
    iget-object v4, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mCover:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->setCover(Ljava/lang/String;)V

    .line 340
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bilibili://video/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mAvid:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->setUri(Ljava/lang/String;)V

    .line 344
    :try_start_3d
    invoke-virtual {v0}, Lcom/bilibili/tv/api/video/BiliVideoDetail;->getPlays()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->setPlay(I)V
    :try_end_48
    .catch Ljava/lang/NumberFormatException; {:try_start_3d .. :try_end_48} :catch_63

    .line 349
    :goto_48
    :try_start_48
    invoke-virtual {v0}, Lcom/bilibili/tv/api/video/BiliVideoDetail;->getDanmakus()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->setDanmaku(I)V
    :try_end_53
    .catch Ljava/lang/NumberFormatException; {:try_start_48 .. :try_end_53} :catch_68

    .line 353
    :goto_53
    invoke-virtual {v0}, Lcom/bilibili/tv/api/video/BiliVideoDetail;->getAuthor()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->setOwnerName(Ljava/lang/String;)V

    .line 354
    iget v0, v0, Lcom/bilibili/tv/api/video/BiliVideoDetail;->mDuration:I

    invoke-virtual {v3, v0}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->setDuration(I)V

    .line 356
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 345
    :catch_63
    move-exception v4

    .line 346
    invoke-virtual {v3, v8}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->setPlay(I)V

    goto :goto_48

    .line 350
    :catch_68
    move-exception v4

    .line 351
    invoke-virtual {v3, v8}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->setDanmaku(I)V

    goto :goto_53

    .line 359
    :cond_6d
    return-object v1
.end method

.method private convertToContentList(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/tv/api/area/BiliVideoV2;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/tv/api/main/MainRecommendEx$Content;",
            ">;"
        }
    .end annotation

    .prologue
    .line 366
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 368
    const-string v0, "AreaVideoListFragment"

    const-string v1, "========== convertToContentList START =========="

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    const-string v0, "AreaVideoListFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Video list size: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    const/4 v0, 0x0

    move v1, v0

    :goto_2a
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_a6

    .line 372
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/area/BiliVideoV2;

    .line 373
    new-instance v3, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;

    invoke-direct {v3}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;-><init>()V

    .line 376
    iget-object v4, v0, Lcom/bilibili/tv/api/area/BiliVideoV2;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->setTitle(Ljava/lang/String;)V

    .line 377
    iget-object v4, v0, Lcom/bilibili/tv/api/area/BiliVideoV2;->cover:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->setCover(Ljava/lang/String;)V

    .line 378
    iget-object v4, v0, Lcom/bilibili/tv/api/area/BiliVideoV2;->uri:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->setUri(Ljava/lang/String;)V

    .line 380
    const-string v4, "AreaVideoListFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Video "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": title="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/bilibili/tv/api/area/BiliVideoV2;->title:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", uri="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/bilibili/tv/api/area/BiliVideoV2;->uri:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", param="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/bilibili/tv/api/area/BiliVideoV2;->param:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    iget v4, v0, Lcom/bilibili/tv/api/area/BiliVideoV2;->play:I

    invoke-virtual {v3, v4}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->setPlay(I)V

    .line 384
    iget v4, v0, Lcom/bilibili/tv/api/area/BiliVideoV2;->danmaku:I

    invoke-virtual {v3, v4}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->setDanmaku(I)V

    .line 387
    iget-object v4, v0, Lcom/bilibili/tv/api/area/BiliVideoV2;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->setOwnerName(Ljava/lang/String;)V

    .line 390
    iget v4, v0, Lcom/bilibili/tv/api/area/BiliVideoV2;->duration:I

    invoke-virtual {v3, v4}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->setDuration(I)V

    .line 391
    iget-wide v4, v0, Lcom/bilibili/tv/api/area/BiliVideoV2;->pubdate:J

    invoke-virtual {v3, v4, v5}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->setPubdate(J)V

    .line 393
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 371
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2a

    .line 396
    :cond_a6
    const-string v0, "AreaVideoListFragment"

    const-string v1, "========== convertToContentList END =========="

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    return-object v2
.end method

.method private fetchPreciousData(Z)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 233
    const-string v0, "AreaVideoListFragment"

    const-string v1, "Loading precious videos (\u5165\u7ad9\u5fc5\u5237)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    const-class v0, Lmybl/MyBiliApiService;

    invoke-static {v0}, Lbl/vo;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmybl/MyBiliApiService;

    .line 236
    if-nez v0, :cond_1e

    .line 237
    const-string v0, "AreaVideoListFragment"

    const-string v1, "MyBiliApiService is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    iput-boolean v2, p0, Lcom/bilibili/tv/ui/area/AreaVideoListFragment;->hasMoreData:Z

    .line 239
    iput-boolean v2, p0, Lcom/bilibili/tv/ui/area/AreaVideoListFragment;->isLoadingMore:Z

    .line 327
    :goto_1d
    return-void

    .line 243
    :cond_1e
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v1

    invoke-static {v1}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v1

    .line 244
    invoke-static {v1}, Lmybl/CookieUtil;->getFullCookieWithDevice(Lbl/mg;)Ljava/lang/String;

    move-result-object v1

    .line 246
    const/16 v2, 0x64

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3, v1}, Lmybl/MyBiliApiService;->getPopularPrecious(IILjava/lang/String;)Lbl/vp;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/area/AreaVideoListFragment$2;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/area/AreaVideoListFragment$2;-><init>(Lcom/bilibili/tv/ui/area/AreaVideoListFragment;)V

    invoke-virtual {v0, v1}, Lbl/vp;->a(Lretrofit2/Callback;)V

    goto :goto_1d
.end method

.method public static newInstance(I)Lcom/bilibili/tv/ui/area/AreaVideoListFragment;
    .locals 1

    .prologue
    .line 49
    new-instance v0, Lcom/bilibili/tv/ui/area/AreaVideoListFragment;

    invoke-direct {v0}, Lcom/bilibili/tv/ui/area/AreaVideoListFragment;-><init>()V

    .line 50
    iput p0, v0, Lcom/bilibili/tv/ui/area/AreaVideoListFragment;->categoryTid:I

    .line 52
    return-object v0
.end method


# virtual methods
.method protected fetchData(Z)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 113
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/area/AreaVideoListFragment;->isLoadingMore:Z

    if-eqz v0, :cond_8

    if-eqz p1, :cond_8

    .line 227
    :goto_7
    return-void

    .line 117
    :cond_8
    if-nez p1, :cond_19

    .line 118
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/area/AreaVideoListFragment;->hasMoreData:Z

    .line 119
    iput v1, p0, Lcom/bilibili/tv/ui/area/AreaVideoListFragment;->currentPage:I

    .line 125
    :goto_e
    iget v0, p0, Lcom/bilibili/tv/ui/area/AreaVideoListFragment;->categoryTid:I

    const v1, 0x10069

    if-ne v0, v1, :cond_1c

    .line 126
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/area/AreaVideoListFragment;->fetchPreciousData(Z)V

    goto :goto_7

    .line 121
    :cond_19
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/area/AreaVideoListFragment;->isLoadingMore:Z

    goto :goto_e

    .line 131
    :cond_1c
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/bilibili/tv/ui/area/AreaVideoListFragment$1;

    invoke-direct {v1, p0, p1}, Lcom/bilibili/tv/ui/area/AreaVideoListFragment$1;-><init>(Lcom/bilibili/tv/ui/area/AreaVideoListFragment;Z)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 226
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_7
.end method

.method protected getClickEventName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    const-string v0, "ott-platform.area.video.0.click"

    return-object v0
.end method

.method protected getColumnCount()I
    .locals 1

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/area/AreaVideoListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lbl/abd;->get_home_column(Landroid/content/Context;)I

    move-result v0

    .line 105
    return v0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    const-string v0, "AreaVideoListFragment"

    return-object v0
.end method

.method protected getPageViewEvent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    const-string v0, "ott-platform.area.video.0.0.pv"

    return-object v0
.end method

.method protected onBigCardClick(Landroid/view/View;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 445
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 66
    invoke-super {p0, p1}, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 68
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 74
    invoke-super {p0}, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;->onResume()V

    .line 81
    return-void
.end method

.method protected onSmallCardClick(Landroid/view/View;Ljava/lang/String;I)V
    .locals 7

    .prologue
    .line 406
    const-string v0, "AreaVideoListFragment"

    const-string v1, "========== onSmallCardClick =========="

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    const-string v0, "AreaVideoListFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "URI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    const-string v0, "AreaVideoListFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    if-eqz p2, :cond_41

    const-string v0, "bilibili://video"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5a

    .line 411
    :cond_41
    const-string v0, "AreaVideoListFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid URI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    :cond_59
    :goto_59
    return-void

    .line 416
    :cond_5a
    :try_start_5a
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    .line 417
    const-string v0, "AreaVideoListFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Parsed avid: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lbl/adl;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v4

    .line 420
    const-string v1, "AreaVideoListFragment"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Activity: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v4, :cond_115

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    :goto_99
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    if-eqz v4, :cond_59

    .line 424
    const/4 v1, 0x0

    .line 425
    if-ltz p3, :cond_118

    iget-object v0, p0, Lcom/bilibili/tv/ui/area/AreaVideoListFragment;->ugcList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p3, v0, :cond_118

    .line 426
    iget-object v0, p0, Lcom/bilibili/tv/ui/area/AreaVideoListFragment;->ugcList:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;

    .line 427
    if-eqz v0, :cond_118

    .line 428
    invoke-virtual {v0}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->getCover()Ljava/lang/String;

    move-result-object v0

    .line 429
    const-string v1, "AreaVideoListFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cover URL: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    :goto_d7
    const-string v1, "AreaVideoListFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Starting VideoDetailActivity with avid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    sget-object v1, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->Companion:Lcom/bilibili/tv/ui/video/VideoDetailActivity$a;

    invoke-virtual {v1, v4, v2, v3, v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$a;->a(Landroid/content/Context;JLjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_f8
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_f8} :catch_fa

    goto/16 :goto_59

    .line 437
    :catch_fa
    move-exception v0

    .line 438
    const-string v1, "AreaVideoListFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error parsing video URI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_59

    .line 420
    :cond_115
    :try_start_115
    const-string v0, "null"
    :try_end_117
    .catch Ljava/lang/Exception; {:try_start_115 .. :try_end_117} :catch_fa

    goto :goto_99

    :cond_118
    move-object v0, v1

    goto :goto_d7
.end method
