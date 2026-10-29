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
    .line 50
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

    .line 49
    invoke-direct {p0}, Lbl/ady;-><init>()V

    .line 55
    iput v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->f:I

    .line 56
    iput-boolean v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->g:Z

    .line 66
    const-string v0, "mtime"

    iput-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->sortOrder:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;)Z
    .locals 1

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->e:Z

    return v0
.end method

.method static synthetic access$002(Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;Z)Z
    .locals 0

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->e:Z

    return p1
.end method

.method static synthetic access$100(Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;)Z
    .locals 1

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->h:Z

    return v0
.end method

.method static synthetic access$102(Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;Z)Z
    .locals 0

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->h:Z

    return p1
.end method

.method static synthetic access$200(Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;)Z
    .locals 1

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->g:Z

    return v0
.end method

.method static synthetic access$202(Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;Z)Z
    .locals 0

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->g:Z

    return p1
.end method

.method static synthetic access$300(Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;)Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->c:Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;

    return-object v0
.end method

.method static synthetic access$400(Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;)I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->f:I

    return v0
.end method

.method static synthetic access$408(Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;)I
    .locals 2

    .prologue
    .line 49
    iget v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->f:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->f:I

    return v0
.end method

.method static synthetic access$500(Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->loadCollectionVideosFromResource()V

    return-void
.end method

.method static synthetic access$602(Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->collectionTitle:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$702(Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;Lcom/alibaba/fastjson/JSONArray;)Lcom/alibaba/fastjson/JSONArray;
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->collectionMediasCache:Lcom/alibaba/fastjson/JSONArray;

    return-object p1
.end method

.method static synthetic access$800(Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->applyCollectionMediasPage()V

    return-void
.end method

.method private applyCollectionMediasPage()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 520
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->c:Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;

    if-nez v0, :cond_7

    .line 549
    :cond_6
    :goto_6
    return-void

    .line 523
    :cond_7
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->j()V

    .line 524
    iput-boolean v6, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->h:Z

    .line 525
    const/16 v2, 0x1e

    .line 526
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->collectionMediasCache:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v3

    .line 527
    iget v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->f:I

    add-int/lit8 v0, v0, -0x1

    mul-int v1, v0, v2

    .line 528
    new-instance v4, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v4}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    move v0, v1

    .line 529
    :goto_20
    if-ge v0, v3, :cond_32

    add-int v5, v1, v2

    if-ge v0, v5, :cond_32

    .line 530
    iget-object v5, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->collectionMediasCache:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v5, v0}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/alibaba/fastjson/JSONArray;->add(Ljava/lang/Object;)Z

    .line 529
    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    .line 532
    :cond_32
    invoke-virtual {v4}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 533
    iput-boolean v6, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->g:Z

    .line 534
    iget v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->f:I

    if-ne v0, v7, :cond_6

    .line 535
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->l()V

    .line 536
    const v0, 0x7f0c00d8

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->a(I)V

    goto :goto_6

    .line 540
    :cond_48
    iget v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->f:I

    if-ne v0, v7, :cond_5f

    .line 541
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->c:Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;

    iget-object v5, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->collectionTitle:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->a(Lcom/alibaba/fastjson/JSONArray;Ljava/lang/String;)V

    .line 542
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->collectionTitle:Ljava/lang/String;

    invoke-virtual {p0, v0, v3}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->updateHeaderInfo(Ljava/lang/String;I)V

    .line 546
    :goto_58
    add-int v0, v1, v2

    if-lt v0, v3, :cond_6

    .line 547
    iput-boolean v6, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->g:Z

    goto :goto_6

    .line 544
    :cond_5f
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->c:Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;

    invoke-virtual {v0, v4}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->c(Lcom/alibaba/fastjson/JSONArray;)V

    goto :goto_58
.end method

.method private loadCollectionVideos()V
    .locals 5

    .prologue
    .line 383
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->collectionUseResourceList:Z

    if-eqz v0, :cond_8

    .line 384
    invoke-direct {p0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->loadCollectionVideosFromResource()V

    .line 446
    :cond_7
    :goto_7
    return-void

    .line 387
    :cond_8
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->collectionMediasCache:Lcom/alibaba/fastjson/JSONArray;

    if-eqz v0, :cond_10

    .line 388
    invoke-direct {p0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->applyCollectionMediasPage()V

    goto :goto_7

    .line 391
    :cond_10
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 392
    if-eqz v0, :cond_7

    .line 395
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

    .line 396
    const-class v0, Lmybl/MyBiliApiService;

    invoke-static {v0}, Lbl/vo;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmybl/MyBiliApiService;

    iget-wide v2, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->folderId:J

    const/4 v1, 0x1

    const/16 v4, 0x1e

    .line 397
    invoke-interface {v0, v2, v3, v1, v4}, Lmybl/MyBiliApiService;->getFavoriteUserSeason(JII)Lbl/vp;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$2;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$2;-><init>(Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;)V

    .line 398
    invoke-virtual {v0, v1}, Lbl/vp;->a(Lretrofit2/Callback;)V

    goto :goto_7
.end method

.method private loadCollectionVideosFromResource()V
    .locals 14

    .prologue
    const/4 v1, 0x1

    const/4 v8, 0x0

    .line 451
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 452
    if-nez v0, :cond_9

    .line 516
    :goto_8
    return-void

    .line 455
    :cond_9
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->collectionUseResourceList:Z

    .line 456
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->h:Z

    .line 457
    invoke-static {v0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v0

    .line 458
    if-eqz v0, :cond_82

    invoke-static {v0}, Lmybl/CookieUtil;->getFullCookieWithDevice(Lbl/mg;)Ljava/lang/String;

    move-result-object v13

    .line 459
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

    .line 460
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

    .line 461
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

    .line 462
    invoke-interface/range {v1 .. v13}, Lmybl/MyBiliApiService;->getFavoriteResourceList(JIILjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lbl/vp;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$3;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$3;-><init>(Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;)V

    .line 463
    invoke-virtual {v0, v1}, Lbl/vp;->a(Lretrofit2/Callback;)V

    goto :goto_8

    .line 458
    :cond_82
    const-string v13, ""

    goto :goto_17
.end method

.method private loadCourseVideos()V
    .locals 4

    .prologue
    .line 552
    const-class v0, Lmybl/MyBiliApiService;

    invoke-static {v0}, Lbl/vo;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmybl/MyBiliApiService;

    iget-wide v2, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->folderId:J

    .line 553
    invoke-interface {v0, v2, v3}, Lmybl/MyBiliApiService;->getPugvSeason(J)Lbl/vp;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$4;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$4;-><init>(Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;)V

    .line 554
    invoke-virtual {v0, v1}, Lbl/vp;->a(Lretrofit2/Callback;)V

    .line 600
    return-void
.end method

.method private loadVideoFavoriteVideos()V
    .locals 14

    .prologue
    const/4 v8, 0x0

    .line 309
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 310
    if-eqz v0, :cond_aa

    .line 311
    const-class v1, Lmybl/MyBiliApiService;

    invoke-static {v1}, Lbl/vo;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmybl/MyBiliApiService;

    .line 312
    invoke-static {v0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v0

    .line 313
    if-eqz v1, :cond_aa

    if-eqz v0, :cond_aa

    .line 314
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

    .line 316
    invoke-static {v0}, Lmybl/CookieUtil;->getFullCookieWithDevice(Lbl/mg;)Ljava/lang/String;

    move-result-object v13

    .line 317
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

    .line 319
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

    .line 320
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

    .line 321
    invoke-virtual {v0, v1}, Lbl/vp;->a(Lretrofit2/Callback;)V

    .line 375
    :cond_aa
    return-void
.end method

.method public static newInstance(JI)Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;
    .locals 2

    .prologue
    .line 89
    new-instance v0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;

    invoke-direct {v0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;-><init>()V

    .line 90
    iput-wide p0, v0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->folderId:J

    .line 91
    iput p2, v0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->folderType:I

    .line 92
    return-object v0
.end method

.method public static newInstance(JIJ)Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;
    .locals 1

    .prologue
    .line 96
    new-instance v0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;

    invoke-direct {v0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;-><init>()V

    .line 97
    iput-wide p0, v0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->folderId:J

    .line 98
    iput p2, v0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->folderType:I

    .line 99
    iput-wide p3, v0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->mid:J

    .line 100
    return-object v0
.end method


# virtual methods
.method public a(Landroid/support/v7/widget/RecyclerView;Landroid/os/Bundle;)V
    .locals 5

    .prologue
    .line 162
    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    invoke-super {p0, p1, p2}, Lbl/ady;->a(Landroid/support/v7/widget/RecyclerView;Landroid/os/Bundle;)V

    .line 164
    new-instance v1, Lcom/bilibili/tv/widget/side/SideRightGridLayoutManger;

    invoke-virtual {p0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v2, 0x2

    invoke-direct {v1, v0, v2}, Lcom/bilibili/tv/widget/side/SideRightGridLayoutManger;-><init>(Landroid/content/Context;I)V

    .line 165
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 166
    if-nez v0, :cond_20

    .line 167
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.bilibili.tv.ui.favorite.FavoriteSideActivity"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 170
    :cond_20
    new-instance v2, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$e;

    check-cast v0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;

    invoke-direct {v2, p0, v0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$e;-><init>(Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;)V

    invoke-virtual {v1, v2}, Lcom/bilibili/tv/widget/side/SideRightGridLayoutManger;->a(Lcom/bilibili/tv/widget/border/BorderGridLayoutManager$a;)V

    .line 171
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 172
    invoke-virtual {p1, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$h;)V

    .line 173
    const v0, 0x7f0601bb

    invoke-static {v0}, Lbl/adl;->b(I)I

    move-result v0

    .line 174
    const v2, 0x7f06006e

    invoke-static {v2}, Lbl/adl;->b(I)I

    move-result v2

    .line 175
    const v3, 0x7f06014d

    invoke-static {v3}, Lbl/adl;->b(I)I

    move-result v3

    .line 176
    const v4, 0x7f060154

    invoke-static {v4}, Lbl/adl;->b(I)I

    move-result v4

    .line 177
    invoke-virtual {p1, v3, v3, v3, v4}, Landroid/support/v7/widget/RecyclerView;->setPadding(IIII)V

    .line 178
    new-instance v3, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$f;

    invoke-direct {v3, v2, v0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$f;-><init>(II)V

    invoke-virtual {p1, v3}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView$g;)V

    .line 179
    new-instance v0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$g;

    invoke-direct {v0, p0, v1}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$g;-><init>(Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;Lcom/bilibili/tv/widget/side/SideRightGridLayoutManger;)V

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView$m;)V

    .line 180
    new-instance v0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;

    invoke-direct {v0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->c:Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;

    .line 181
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->c:Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 182
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->i()V

    .line 183
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->b()V

    .line 184
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 291
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->h:Z

    if-eqz v0, :cond_5

    .line 306
    :goto_4
    return-void

    .line 294
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->h:Z

    .line 295
    iget v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->folderType:I

    packed-switch v0, :pswitch_data_1a

    goto :goto_4

    .line 297
    :pswitch_e
    invoke-direct {p0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->loadVideoFavoriteVideos()V

    goto :goto_4

    .line 300
    :pswitch_12
    invoke-direct {p0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->loadCollectionVideos()V

    goto :goto_4

    .line 303
    :pswitch_16
    invoke-direct {p0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->loadCourseVideos()V

    goto :goto_4

    .line 295
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
    .line 261
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->c:Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;

    if-eqz v0, :cond_19

    .line 262
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->c:Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;

    .line 263
    if-nez v0, :cond_11

    .line 264
    invoke-static {}, Lbl/bbi;->a()V

    .line 266
    :cond_11
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;->a()I

    move-result v0

    if-lez v0, :cond_19

    .line 267
    const/4 v0, 0x1

    .line 270
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

    .line 154
    iput v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->f:I

    .line 155
    iput-boolean v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->g:Z

    .line 156
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->collectionMediasCache:Lcom/alibaba/fastjson/JSONArray;

    .line 157
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->collectionUseResourceList:Z

    .line 158
    return-void
.end method

.method public d_()V
    .locals 1

    .prologue
    .line 283
    invoke-super {p0}, Lbl/ady;->d_()V

    .line 284
    const/4 v0, 0x1

    iput v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->f:I

    .line 285
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->b()V

    .line 286
    return-void
.end method

.method public getFolderId()J
    .locals 2

    .prologue
    .line 150
    iget-wide v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->folderId:J

    return-wide v0
.end method

.method public getSortOrder()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->sortOrder:Ljava/lang/String;

    return-object v0
.end method

.method public isLoading()Z
    .locals 1

    .prologue
    .line 603
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->h:Z

    return v0
.end method

.method public isVideoFavoriteMode()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 146
    iget v1, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->folderType:I

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .prologue
    .line 105
    const v0, 0x7f0a008e

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 106
    const v0, 0x7f08019e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->headerLayout:Landroid/widget/LinearLayout;

    .line 107
    const v0, 0x7f08019f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->headerTitle:Landroid/widget/TextView;

    .line 108
    const v0, 0x7f0801a0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->headerCount:Landroid/widget/TextView;

    .line 109
    const v0, 0x7f080097

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->hintSort:Landroid/widget/TextView;

    .line 110
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->hintSort:Landroid/widget/TextView;

    if-eqz v0, :cond_47

    .line 111
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->hintSort:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "\u6392\u5e8f"

    invoke-static {v2, v3}, Lbl/abd;->get_more_action_hint(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    :cond_47
    const v0, 0x7f0800eb

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    .line 114
    invoke-virtual {p0, v0, p3}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->a(Landroid/support/v7/widget/RecyclerView;Landroid/os/Bundle;)V

    .line 115
    return-object v1
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 275
    const/4 v0, 0x0

    check-cast v0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;

    iput-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->c:Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;

    .line 277
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->h:Z

    .line 278
    invoke-super {p0}, Lbl/ady;->onDestroyView()V

    .line 279
    return-void
.end method

.method public setSortOrder(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->sortOrder:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 139
    :cond_8
    :goto_8
    return-void

    .line 134
    :cond_9
    iput-object p1, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->sortOrder:Ljava/lang/String;

    .line 135
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->c:Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment$c;

    if-eqz v0, :cond_8

    .line 136
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->d_()V

    goto :goto_8
.end method

.method public updateHeaderInfo(Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 119
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->headerTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_b

    if-eqz p1, :cond_b

    .line 120
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->headerTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    :cond_b
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->headerCount:Landroid/widget/TextView;

    if-eqz v0, :cond_29

    if-lez p2, :cond_29

    .line 123
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

    .line 125
    :cond_29
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->hintSort:Landroid/widget/TextView;

    if-eqz v0, :cond_39

    .line 126
    iget-object v1, p0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->hintSort:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->isVideoFavoriteMode()Z

    move-result v0

    if-eqz v0, :cond_3a

    const/4 v0, 0x0

    :goto_36
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 128
    :cond_39
    return-void

    .line 126
    :cond_3a
    const/16 v0, 0x8

    goto :goto_36
.end method
