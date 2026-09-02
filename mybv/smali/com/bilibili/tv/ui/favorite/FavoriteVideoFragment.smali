.class public final Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;
.super Lbl/ady;
.source "FavoriteVideoFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;,
        Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$e;,
        Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$f;,
        Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$g;,
        Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$a;,
        Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$d;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$a;

.field private static final i:Ljava/lang/String; = "FavoriteVideoFragment"

.field private static final j:I = 0x2


# instance fields
.field private c:Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;

.field private collectionMediasCache:Lcom/alibaba/fastjson/JSONArray;

.field private collectionTitle:Ljava/lang/String;

.field private collectionUseResourceList:Z

.field private e:Z

.field private f:I

.field private folderId:J

.field private folderType:I

.field private g:Z

.field private h:Z

.field private headerCount:Landroid/widget/TextView;

.field private headerLayout:Landroid/widget/LinearLayout;

.field private headerTitle:Landroid/widget/TextView;

.field private hintSort:Landroid/widget/TextView;

.field private mid:J

.field private sortOrder:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 54
    new-instance v0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$a;-><init>(Lbl/bbg;)V

    sput-object v0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->Companion:Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 53
    invoke-direct {p0}, Lbl/ady;-><init>()V

    .line 59
    iput v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->f:I

    .line 60
    iput-boolean v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->g:Z

    .line 70
    const-string v0, "mtime"

    iput-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->sortOrder:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;)Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->e:Z

    return v0
.end method

.method static synthetic access$002(Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;Z)Z
    .locals 0

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->e:Z

    return p1
.end method

.method static synthetic access$100(Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;)Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->h:Z

    return v0
.end method

.method static synthetic access$102(Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;Z)Z
    .locals 0

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->h:Z

    return p1
.end method

.method static synthetic access$200(Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;)Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->g:Z

    return v0
.end method

.method static synthetic access$202(Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;Z)Z
    .locals 0

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->g:Z

    return p1
.end method

.method static synthetic access$300(Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;)Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->c:Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;

    return-object v0
.end method

.method static synthetic access$400(Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;)I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->f:I

    return v0
.end method

.method static synthetic access$408(Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;)I
    .locals 2

    .prologue
    .line 53
    iget v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->f:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->f:I

    return v0
.end method

.method static synthetic access$500(Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->loadCollectionVideosFromResource()V

    return-void
.end method

.method static synthetic access$602(Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->collectionTitle:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$702(Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;Lcom/alibaba/fastjson/JSONArray;)Lcom/alibaba/fastjson/JSONArray;
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->collectionMediasCache:Lcom/alibaba/fastjson/JSONArray;

    return-object p1
.end method

.method static synthetic access$800(Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->applyCollectionMediasPage()V

    return-void
.end method

.method private applyCollectionMediasPage()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 521
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->c:Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;

    if-nez v0, :cond_7

    .line 550
    :cond_6
    :goto_6
    return-void

    .line 524
    :cond_7
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->j()V

    .line 525
    iput-boolean v6, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->h:Z

    .line 526
    const/16 v2, 0x1e

    .line 527
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->collectionMediasCache:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v3

    .line 528
    iget v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->f:I

    add-int/lit8 v0, v0, -0x1

    mul-int v1, v0, v2

    .line 529
    new-instance v4, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v4}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    move v0, v1

    .line 530
    :goto_20
    if-ge v0, v3, :cond_32

    add-int v5, v1, v2

    if-ge v0, v5, :cond_32

    .line 531
    iget-object v5, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->collectionMediasCache:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v5, v0}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/alibaba/fastjson/JSONArray;->add(Ljava/lang/Object;)Z

    .line 530
    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    .line 533
    :cond_32
    invoke-virtual {v4}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 534
    iput-boolean v6, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->g:Z

    .line 535
    iget v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->f:I

    if-ne v0, v7, :cond_6

    .line 536
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->l()V

    .line 537
    const v0, 0x7f0c00d8

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->a(I)V

    goto :goto_6

    .line 541
    :cond_48
    iget v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->f:I

    if-ne v0, v7, :cond_5f

    .line 542
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->c:Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;

    iget-object v5, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->collectionTitle:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->a(Lcom/alibaba/fastjson/JSONArray;Ljava/lang/String;)V

    .line 543
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->collectionTitle:Ljava/lang/String;

    invoke-virtual {p0, v0, v3}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->updateHeaderInfo(Ljava/lang/String;I)V

    .line 547
    :goto_58
    add-int v0, v1, v2

    if-lt v0, v3, :cond_6

    .line 548
    iput-boolean v6, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->g:Z

    goto :goto_6

    .line 545
    :cond_5f
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->c:Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;

    invoke-virtual {v0, v4}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->c(Lcom/alibaba/fastjson/JSONArray;)V

    goto :goto_58
.end method

.method private loadCollectionVideos()V
    .locals 5

    .prologue
    .line 384
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->collectionUseResourceList:Z

    if-eqz v0, :cond_8

    .line 385
    invoke-direct {p0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->loadCollectionVideosFromResource()V

    .line 447
    :cond_7
    :goto_7
    return-void

    .line 388
    :cond_8
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->collectionMediasCache:Lcom/alibaba/fastjson/JSONArray;

    if-eqz v0, :cond_10

    .line 389
    invoke-direct {p0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->applyCollectionMediasPage()V

    goto :goto_7

    .line 392
    :cond_10
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 393
    if-eqz v0, :cond_7

    .line 396
    const-string v0, "FavoriteVideoFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadCollectionVideos fav/season/list: season_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->folderId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", page="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    const-class v0, Lmybl/MyBiliApiService;

    invoke-static {v0}, Lbl/vo;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmybl/MyBiliApiService;

    iget-wide v2, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->folderId:J

    const/4 v1, 0x1

    const/16 v4, 0x1e

    .line 398
    invoke-interface {v0, v2, v3, v1, v4}, Lmybl/MyBiliApiService;->getFavoriteUserSeason(JII)Lbl/vp;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$2;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$2;-><init>(Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;)V

    .line 399
    invoke-virtual {v0, v1}, Lbl/vp;->a(Lretrofit2/Callback;)V

    goto :goto_7
.end method

.method private loadCollectionVideosFromResource()V
    .locals 14

    .prologue
    const/4 v1, 0x1

    const/4 v8, 0x0

    .line 452
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 453
    if-nez v0, :cond_9

    .line 517
    :goto_8
    return-void

    .line 456
    :cond_9
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->collectionUseResourceList:Z

    .line 457
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->h:Z

    .line 458
    invoke-static {v0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v0

    .line 459
    if-eqz v0, :cond_82

    invoke-static {v0}, Lmybl/CookieUtil;->getFullCookieWithDevice(Lbl/mg;)Ljava/lang/String;

    move-result-object v13

    .line 460
    :goto_17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://space.bilibili.com/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->mid:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/favlist?fid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->folderId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 461
    const-string v0, "FavoriteVideoFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadCollectionVideosFromResource: media_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->folderId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", page="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    const-class v0, Lmybl/MyBiliApiService;

    invoke-static {v0}, Lbl/vo;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmybl/MyBiliApiService;

    iget-wide v2, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->folderId:J

    iget v4, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->f:I

    const/16 v5, 0x1e

    const-string v6, ""

    const-string v7, "mtime"

    const-string v10, "web"

    const-string v11, "333.1387"

    move v9, v8

    .line 463
    invoke-interface/range {v1 .. v13}, Lmybl/MyBiliApiService;->getFavoriteResourceList(JIILjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lbl/vp;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$3;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$3;-><init>(Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;)V

    .line 464
    invoke-virtual {v0, v1}, Lbl/vp;->a(Lretrofit2/Callback;)V

    goto :goto_8

    .line 459
    :cond_82
    const-string v13, ""

    goto :goto_17
.end method

.method private loadCourseVideos()V
    .locals 4

    .prologue
    .line 553
    const-class v0, Lmybl/MyBiliApiService;

    invoke-static {v0}, Lbl/vo;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmybl/MyBiliApiService;

    iget-wide v2, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->folderId:J

    .line 554
    invoke-interface {v0, v2, v3}, Lmybl/MyBiliApiService;->getPugvSeason(J)Lbl/vp;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$4;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$4;-><init>(Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;)V

    .line 555
    invoke-virtual {v0, v1}, Lbl/vp;->a(Lretrofit2/Callback;)V

    .line 601
    return-void
.end method

.method private loadVideoFavoriteVideos()V
    .locals 14

    .prologue
    const/4 v8, 0x0

    .line 310
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 311
    if-eqz v0, :cond_aa

    .line 312
    const-class v1, Lmybl/MyBiliApiService;

    invoke-static {v1}, Lbl/vo;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmybl/MyBiliApiService;

    .line 313
    invoke-static {v0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v0

    .line 314
    if-eqz v1, :cond_aa

    if-eqz v0, :cond_aa

    .line 315
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https://space.bilibili.com/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lbl/mg;->d()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/favlist?fid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->folderId:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&ftype=create"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 317
    invoke-static {v0}, Lmybl/CookieUtil;->getFullCookieWithDevice(Lbl/mg;)Ljava/lang/String;

    move-result-object v13

    .line 318
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://api.bilibili.com/x/v3/fav/resource/list?media_id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->folderId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&pn="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->f:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&ps=40&keyword=&order="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->sortOrder:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&type=0&platform=web"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 320
    const-string v2, "FavoriteVideoFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "=== FavoriteVideo URL ===\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    iget-wide v2, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->folderId:J

    iget v4, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->f:I

    const/16 v5, 0x28

    const-string v6, ""

    iget-object v7, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->sortOrder:Ljava/lang/String;

    const-string v10, "web"

    const-string v11, "333.1387"

    move v9, v8

    invoke-interface/range {v1 .. v13}, Lmybl/MyBiliApiService;->getFavoriteResourceList(JIILjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lbl/vp;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$1;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$1;-><init>(Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;)V

    .line 322
    invoke-virtual {v0, v1}, Lbl/vp;->a(Lretrofit2/Callback;)V

    .line 376
    :cond_aa
    return-void
.end method

.method public static newInstance(JI)Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;
    .locals 2

    .prologue
    .line 93
    new-instance v0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;

    invoke-direct {v0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;-><init>()V

    .line 94
    iput-wide p0, v0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->folderId:J

    .line 95
    iput p2, v0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->folderType:I

    .line 96
    return-object v0
.end method

.method public static newInstance(JIJ)Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;
    .locals 1

    .prologue
    .line 100
    new-instance v0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;

    invoke-direct {v0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;-><init>()V

    .line 101
    iput-wide p0, v0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->folderId:J

    .line 102
    iput p2, v0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->folderType:I

    .line 103
    iput-wide p3, v0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->mid:J

    .line 104
    return-object v0
.end method


# virtual methods
.method public a(Landroid/support/v7/widget/RecyclerView;Landroid/os/Bundle;)V
    .locals 5

    .prologue
    .line 163
    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 164
    invoke-super {p0, p1, p2}, Lbl/ady;->a(Landroid/support/v7/widget/RecyclerView;Landroid/os/Bundle;)V

    .line 165
    new-instance v1, Lcom/bilibili/tv/widget/side/SideRightGridLayoutManger;

    invoke-virtual {p0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v2, 0x2

    invoke-direct {v1, v0, v2}, Lcom/bilibili/tv/widget/side/SideRightGridLayoutManger;-><init>(Landroid/content/Context;I)V

    .line 166
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 167
    if-nez v0, :cond_20

    .line 168
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.bilibili.tv.ui.favorite.FavoriteSideActivity"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 171
    :cond_20
    new-instance v2, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$e;

    check-cast v0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;

    invoke-direct {v2, p0, v0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$e;-><init>(Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;)V

    invoke-virtual {v1, v2}, Lcom/bilibili/tv/widget/side/SideRightGridLayoutManger;->a(Lcom/bilibili/tv/widget/border/BorderGridLayoutManager$a;)V

    .line 172
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 173
    invoke-virtual {p1, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$h;)V

    .line 174
    const v0, 0x7f0601bb

    invoke-static {v0}, Lbl/adl;->b(I)I

    move-result v0

    .line 175
    const v2, 0x7f06006e

    invoke-static {v2}, Lbl/adl;->b(I)I

    move-result v2

    .line 176
    const v3, 0x7f06014d

    invoke-static {v3}, Lbl/adl;->b(I)I

    move-result v3

    .line 177
    const v4, 0x7f060154

    invoke-static {v4}, Lbl/adl;->b(I)I

    move-result v4

    .line 178
    invoke-virtual {p1, v3, v3, v3, v4}, Landroid/support/v7/widget/RecyclerView;->setPadding(IIII)V

    .line 179
    new-instance v3, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$f;

    invoke-direct {v3, v2, v0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$f;-><init>(II)V

    invoke-virtual {p1, v3}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView$g;)V

    .line 180
    new-instance v0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$g;

    invoke-direct {v0, p0, v1}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$g;-><init>(Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;Lcom/bilibili/tv/widget/side/SideRightGridLayoutManger;)V

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView$m;)V

    .line 181
    new-instance v0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;

    invoke-direct {v0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->c:Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;

    .line 182
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->c:Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 183
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->i()V

    .line 184
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->b()V

    .line 185
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 292
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->h:Z

    if-eqz v0, :cond_5

    .line 307
    :goto_4
    return-void

    .line 295
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->h:Z

    .line 296
    iget v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->folderType:I

    packed-switch v0, :pswitch_data_1a

    goto :goto_4

    .line 298
    :pswitch_e
    invoke-direct {p0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->loadVideoFavoriteVideos()V

    goto :goto_4

    .line 301
    :pswitch_12
    invoke-direct {p0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->loadCollectionVideos()V

    goto :goto_4

    .line 304
    :pswitch_16
    invoke-direct {p0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->loadCourseVideos()V

    goto :goto_4

    .line 296
    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_e
        :pswitch_12
        :pswitch_16
    .end packed-switch
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 262
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->c:Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;

    if-eqz v0, :cond_19

    .line 263
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->c:Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;

    .line 264
    if-nez v0, :cond_11

    .line 265
    invoke-static {}, Lbl/bbi;->a()V

    .line 267
    :cond_11
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->a()I

    move-result v0

    if-lez v0, :cond_19

    .line 268
    const/4 v0, 0x1

    .line 271
    :goto_18
    return v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method public clearData()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 155
    iput v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->f:I

    .line 156
    iput-boolean v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->g:Z

    .line 157
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->collectionMediasCache:Lcom/alibaba/fastjson/JSONArray;

    .line 158
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->collectionUseResourceList:Z

    .line 159
    return-void
.end method

.method public d_()V
    .locals 1

    .prologue
    .line 284
    invoke-super {p0}, Lbl/ady;->d_()V

    .line 285
    const/4 v0, 0x1

    iput v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->f:I

    .line 286
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->b()V

    .line 287
    return-void
.end method

.method public getFolderId()J
    .locals 2

    .prologue
    .line 151
    iget-wide v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->folderId:J

    return-wide v0
.end method

.method public getSortOrder()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->sortOrder:Ljava/lang/String;

    return-object v0
.end method

.method public isLoading()Z
    .locals 1

    .prologue
    .line 604
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->h:Z

    return v0
.end method

.method public isVideoFavoriteMode()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 147
    iget v1, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->folderType:I

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 109
    const v0, 0x7f0a008e

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 110
    const v0, 0x7f08019e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->headerLayout:Landroid/widget/LinearLayout;

    .line 111
    const v0, 0x7f08019f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->headerTitle:Landroid/widget/TextView;

    .line 112
    const v0, 0x7f0801a0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->headerCount:Landroid/widget/TextView;

    .line 113
    const v0, 0x7f080097

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->hintSort:Landroid/widget/TextView;

    .line 114
    const v0, 0x7f0800eb

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    .line 115
    invoke-virtual {p0, v0, p3}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->a(Landroid/support/v7/widget/RecyclerView;Landroid/os/Bundle;)V

    .line 116
    return-object v1
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 276
    const/4 v0, 0x0

    check-cast v0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;

    iput-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->c:Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;

    .line 278
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->h:Z

    .line 279
    invoke-super {p0}, Lbl/ady;->onDestroyView()V

    .line 280
    return-void
.end method

.method public setSortOrder(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->sortOrder:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 140
    :cond_8
    :goto_8
    return-void

    .line 135
    :cond_9
    iput-object p1, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->sortOrder:Ljava/lang/String;

    .line 136
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->c:Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;

    if-eqz v0, :cond_8

    .line 137
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->d_()V

    goto :goto_8
.end method

.method public updateHeaderInfo(Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 120
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->headerTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_b

    if-eqz p1, :cond_b

    .line 121
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->headerTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    :cond_b
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->headerCount:Landroid/widget/TextView;

    if-eqz v0, :cond_29

    if-lez p2, :cond_29

    .line 124
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->headerCount:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u4e2a\u89c6\u9891"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    :cond_29
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->hintSort:Landroid/widget/TextView;

    if-eqz v0, :cond_39

    .line 127
    iget-object v1, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->hintSort:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->isVideoFavoriteMode()Z

    move-result v0

    if-eqz v0, :cond_3a

    const/4 v0, 0x0

    :goto_36
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 129
    :cond_39
    return-void

    .line 127
    :cond_3a
    const/16 v0, 0x8

    goto :goto_36
.end method
