.class public Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;
.super Lcom/bilibili/tv/ui/base/BaseSideActivity;
.source "FavoriteSideActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$a;
    }
.end annotation


# instance fields
.field private c:Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$a;

.field private collectionFolders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbl/FavoriteFolder;",
            ">;"
        }
    .end annotation
.end field

.field private collectionLoaded:Z

.field private courseFolders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbl/FavoriteFolder;",
            ">;"
        }
    .end annotation
.end field

.field private courseLoaded:Z

.field private folders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbl/FavoriteFolder;",
            ">;"
        }
    .end annotation
.end field

.field private selectedFolder:Lbl/FavoriteFolder;

.field private videoFolders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbl/FavoriteFolder;",
            ">;"
        }
    .end annotation
.end field

.field private videoLoaded:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-direct {p0}, Lcom/bilibili/tv/ui/base/BaseSideActivity;-><init>()V

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->folders:Ljava/util/List;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->videoFolders:Ljava/util/List;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->collectionFolders:Ljava/util/List;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->courseFolders:Ljava/util/List;

    .line 56
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->videoLoaded:Z

    .line 57
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->collectionLoaded:Z

    .line 58
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->courseLoaded:Z

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 70
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 71
    return-void
.end method

.method static synthetic access$000(Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->videoFolders:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$102(Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;Z)Z
    .locals 0

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->videoLoaded:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;Lbl/FavoriteFolder;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->showVideoList(Lbl/FavoriteFolder;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;)Landroid/support/v7/widget/RecyclerView;
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->j()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->checkAllLoaded()V

    return-void
.end method

.method static synthetic access$300(Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->collectionFolders:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$402(Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;Z)Z
    .locals 0

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->collectionLoaded:Z

    return p1
.end method

.method static synthetic access$500(Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->courseFolders:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$602(Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;Z)Z
    .locals 0

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->courseLoaded:Z

    return p1
.end method

.method private checkAllLoaded()V
    .locals 2

    .prologue
    .line 196
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->videoLoaded:Z

    if-eqz v0, :cond_43

    iget-boolean v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->collectionLoaded:Z

    if-eqz v0, :cond_43

    iget-boolean v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->courseLoaded:Z

    if-eqz v0, :cond_43

    .line 197
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->folders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 198
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->folders:Ljava/util/List;

    iget-object v1, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->videoFolders:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 199
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->folders:Ljava/util/List;

    iget-object v1, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->collectionFolders:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 200
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->folders:Ljava/util/List;

    iget-object v1, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->courseFolders:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 201
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->c:Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$a;

    if-eqz v0, :cond_2f

    .line 202
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->c:Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$a;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$a;->d()V

    .line 204
    :cond_2f
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->folders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_43

    .line 205
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->folders:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbl/FavoriteFolder;

    invoke-direct {p0, v0}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->showVideoList(Lbl/FavoriteFolder;)V

    .line 208
    :cond_43
    return-void
.end method

.method private getSelectedView()Landroid/view/View;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 406
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->j()Landroid/support/v7/widget/RecyclerView;

    move-result-object v3

    .line 407
    if-nez v3, :cond_9

    move-object v0, v1

    .line 416
    :goto_8
    return-object v0

    .line 410
    :cond_9
    const/4 v0, 0x0

    :goto_a
    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1f

    .line 411
    invoke-virtual {v3, v0}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 412
    invoke-virtual {v2}, Landroid/view/View;->isSelected()Z

    move-result v4

    if-eqz v4, :cond_1c

    move-object v0, v2

    .line 413
    goto :goto_8

    .line 410
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_1f
    move-object v0, v1

    .line 416
    goto :goto_8
.end method

.method private isDescendantOf(Landroid/view/View;Landroid/view/View;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 176
    if-eqz p1, :cond_5

    if-nez p2, :cond_7

    :cond_5
    move v0, v1

    .line 186
    :goto_6
    return v0

    .line 179
    :cond_7
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 180
    :goto_b
    instance-of v2, v0, Landroid/view/View;

    if-eqz v2, :cond_18

    .line 181
    if-ne v0, p1, :cond_13

    .line 182
    const/4 v0, 0x1

    goto :goto_6

    .line 184
    :cond_13
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_b

    :cond_18
    move v0, v1

    .line 186
    goto :goto_6
.end method

.method private loadAllFolders()V
    .locals 0

    .prologue
    .line 190
    invoke-direct {p0}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->loadVideoFolders()V

    .line 191
    invoke-direct {p0}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->loadCollectionFolders()V

    .line 192
    invoke-direct {p0}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->loadCourseFolders()V

    .line 193
    return-void
.end method

.method private loadCollectionFolders()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 262
    invoke-static {p0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v0

    .line 263
    if-eqz v0, :cond_47

    .line 265
    :try_start_7
    invoke-virtual {v0}, Lbl/mg;->getSESSDATA()Ljava/lang/String;

    move-result-object v1

    .line 266
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 267
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->collectionLoaded:Z

    .line 268
    invoke-direct {p0}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->checkAllLoaded()V

    .line 307
    :goto_17
    return-void

    .line 271
    :cond_18
    invoke-static {v0}, Lmybl/CookieUtil;->getFullCookieWithDevice(Lbl/mg;)Ljava/lang/String;

    move-result-object v6

    .line 272
    const-class v1, Lmybl/MyBiliApiService;

    invoke-static {v1}, Lbl/vo;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmybl/MyBiliApiService;

    const/4 v2, 0x1

    const/16 v3, 0x32

    .line 273
    invoke-virtual {v0}, Lbl/mg;->d()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-interface/range {v1 .. v6}, Lmybl/MyBiliApiService;->getCollectedFolders(IIJLjava/lang/String;)Lbl/vp;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$2;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$2;-><init>(Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;)V

    .line 274
    invoke-virtual {v0, v1}, Lbl/vp;->a(Lretrofit2/Callback;)V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_3f} :catch_40

    goto :goto_17

    .line 299
    :catch_40
    move-exception v0

    .line 300
    iput-boolean v7, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->collectionLoaded:Z

    .line 301
    invoke-direct {p0}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->checkAllLoaded()V

    goto :goto_17

    .line 304
    :cond_47
    iput-boolean v7, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->collectionLoaded:Z

    .line 305
    invoke-direct {p0}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->checkAllLoaded()V

    goto :goto_17
.end method

.method private loadCourseFolders()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 310
    invoke-static {p0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v0

    .line 311
    if-eqz v0, :cond_47

    .line 313
    :try_start_7
    invoke-virtual {v0}, Lbl/mg;->getSESSDATA()Ljava/lang/String;

    move-result-object v1

    .line 314
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 315
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->courseLoaded:Z

    .line 316
    invoke-direct {p0}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->checkAllLoaded()V

    .line 355
    :goto_17
    return-void

    .line 319
    :cond_18
    invoke-static {v0}, Lmybl/CookieUtil;->getFullCookieWithDevice(Lbl/mg;)Ljava/lang/String;

    move-result-object v6

    .line 320
    const-class v1, Lmybl/MyBiliApiService;

    invoke-static {v1}, Lbl/vo;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmybl/MyBiliApiService;

    const/4 v2, 0x1

    const/16 v3, 0x32

    .line 321
    invoke-virtual {v0}, Lbl/mg;->d()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-interface/range {v1 .. v6}, Lmybl/MyBiliApiService;->getFavoritePugv(IIJLjava/lang/String;)Lbl/vp;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$3;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$3;-><init>(Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;)V

    .line 322
    invoke-virtual {v0, v1}, Lbl/vp;->a(Lretrofit2/Callback;)V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_3f} :catch_40

    goto :goto_17

    .line 347
    :catch_40
    move-exception v0

    .line 348
    iput-boolean v7, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->courseLoaded:Z

    .line 349
    invoke-direct {p0}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->checkAllLoaded()V

    goto :goto_17

    .line 352
    :cond_47
    iput-boolean v7, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->courseLoaded:Z

    .line 353
    invoke-direct {p0}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->checkAllLoaded()V

    goto :goto_17
.end method

.method private loadVideoFolders()V
    .locals 10

    .prologue
    .line 211
    invoke-static {p0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v0

    .line 212
    if-eqz v0, :cond_45

    .line 213
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://space.bilibili.com/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lbl/mg;->d()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/favlist?ftype=create&ctype=21"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 214
    invoke-static {v0}, Lmybl/CookieUtil;->getFullCookieWithDevice(Lbl/mg;)Ljava/lang/String;

    move-result-object v9

    .line 215
    const-class v1, Lmybl/MyBiliApiService;

    invoke-static {v1}, Lbl/vo;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmybl/MyBiliApiService;

    .line 216
    invoke-virtual {v0}, Lbl/mg;->d()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    const/4 v6, 0x2

    const-string v7, "333.1387"

    invoke-interface/range {v1 .. v9}, Lmybl/MyBiliApiService;->getCreatedFolderList(JJILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lbl/vp;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$1;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$1;-><init>(Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;)V

    .line 217
    invoke-virtual {v0, v1}, Lbl/vp;->a(Lretrofit2/Callback;)V

    .line 259
    :goto_44
    return-void

    .line 256
    :cond_45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->videoLoaded:Z

    .line 257
    invoke-direct {p0}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->checkAllLoaded()V

    goto :goto_44
.end method

.method private showSortMenu()V
    .locals 8

    .prologue
    const/4 v4, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 436
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->h()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 437
    instance-of v1, v0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;

    if-nez v1, :cond_d

    .line 458
    :cond_c
    :goto_c
    return-void

    .line 441
    :cond_d
    check-cast v0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;

    .line 442
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->isVideoFavoriteMode()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 446
    new-instance v0, Lbl/SortMenuDialog;

    invoke-direct {v0, p0}, Lbl/SortMenuDialog;-><init>(Landroid/app/Activity;)V

    .line 447
    const/4 v1, 0x0

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "\u6700\u8fd1\u6536\u85cf"

    aput-object v3, v2, v5

    const-string v3, "\u6700\u591a\u64ad\u653e"

    aput-object v3, v2, v6

    const-string v3, "\u6700\u8fd1\u6295\u7a3f"

    aput-object v3, v2, v7

    new-array v3, v4, [Ljava/lang/String;

    const-string v4, "mtime"

    aput-object v4, v3, v5

    const-string v4, "view"

    aput-object v4, v3, v6

    const-string v4, "pubtime"

    aput-object v4, v3, v7

    .line 450
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->getSortOrder()Ljava/lang/String;

    move-result-object v4

    .line 447
    invoke-virtual {v0, v1, v2, v3, v4}, Lbl/SortMenuDialog;->addGroup(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    new-instance v1, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$4;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$4;-><init>(Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;)V

    invoke-virtual {v0, v1}, Lbl/SortMenuDialog;->setOnSortSelectedListener(Lbl/SortMenuDialog$OnSortSelectedListener;)V

    .line 457
    invoke-virtual {v0}, Lbl/SortMenuDialog;->show()V

    goto :goto_c
.end method

.method private showVideoList(Lbl/FavoriteFolder;)V
    .locals 8

    .prologue
    .line 358
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->selectedFolder:Lbl/FavoriteFolder;

    if-ne v0, p1, :cond_5

    .line 384
    :goto_4
    return-void

    .line 362
    :cond_5
    iput-object p1, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->selectedFolder:Lbl/FavoriteFolder;

    .line 365
    instance-of v0, p1, Lbl/CollectionFavoriteFolder;

    if-eqz v0, :cond_35

    move-object v0, p1

    .line 367
    check-cast v0, Lbl/CollectionFavoriteFolder;

    .line 369
    invoke-interface {p1}, Lbl/FavoriteFolder;->getId()J

    move-result-wide v1

    .line 370
    invoke-interface {p1}, Lbl/FavoriteFolder;->getType()I

    move-result v3

    .line 371
    invoke-virtual {v0}, Lbl/CollectionFavoriteFolder;->getFid()J

    move-result-wide v4

    .line 372
    invoke-virtual {v0}, Lbl/CollectionFavoriteFolder;->getMid()J

    move-result-wide v6

    .line 368
    invoke-static/range {v1 .. v7}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->newInstance(JIJJ)Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;

    move-result-object v0

    .line 380
    :goto_22
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 381
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f080091

    .line 382
    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 383
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_4

    .line 376
    :cond_35
    invoke-interface {p1}, Lbl/FavoriteFolder;->getId()J

    move-result-wide v0

    .line 377
    invoke-interface {p1}, Lbl/FavoriteFolder;->getType()I

    move-result v2

    .line 375
    invoke-static {v0, v1, v2}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->newInstance(JI)Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;

    move-result-object v0

    goto :goto_22
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 75
    const v0, 0x7f0800eb

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->b(Landroid/support/v7/widget/RecyclerView;)V

    .line 76
    const v0, 0x7f080065

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "\u6211\u7684\u6536\u85cf"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    invoke-direct {p0}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->loadAllFolders()V

    .line 78
    return-void
.end method

.method public a(Lbl/agd;)V
    .locals 0

    .prologue
    .line 62
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 7

    .prologue
    const/16 v6, 0x14

    const/4 v2, 0x1

    .line 106
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->c:Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$a;

    if-nez v0, :cond_c

    .line 107
    invoke-super {p0, p1}, Lcom/bilibili/tv/ui/base/BaseSideActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 164
    :goto_b
    return v0

    .line 109
    :cond_c
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 110
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    .line 111
    if-nez v0, :cond_3b

    const/16 v1, 0x52

    if-ne v3, v1, :cond_3b

    .line 112
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    .line 113
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->h()Landroid/support/v4/app/Fragment;

    move-result-object v4

    .line 114
    if-eqz v1, :cond_3b

    if-eqz v4, :cond_3b

    invoke-virtual {v4}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_3b

    .line 115
    invoke-virtual {v4}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v4

    invoke-direct {p0, v4, v1}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->isDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 116
    invoke-direct {p0}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->showSortMenu()V

    move v0, v2

    .line 117
    goto :goto_b

    .line 121
    :cond_3b
    if-nez v0, :cond_82

    .line 122
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    .line 123
    if-nez v1, :cond_48

    .line 124
    invoke-super {p0, p1}, Lcom/bilibili/tv/ui/base/BaseSideActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_b

    .line 126
    :cond_48
    if-eq v3, v6, :cond_4e

    const/16 v0, 0x13

    if-ne v3, v0, :cond_7f

    .line 128
    :cond_4e
    if-ne v3, v6, :cond_7b

    const/16 v0, 0x82

    :goto_52
    :try_start_52
    invoke-virtual {v1, v0}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v4

    .line 129
    const/4 v0, 0x0

    .line 130
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->h()Landroid/support/v4/app/Fragment;

    move-result-object v5

    .line 131
    if-eqz v5, :cond_67

    invoke-virtual {v5}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_67

    .line 132
    invoke-virtual {v5}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 134
    :cond_67
    if-eqz v4, :cond_7f

    invoke-virtual {p0}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->j()Landroid/support/v7/widget/RecyclerView;

    move-result-object v5

    invoke-direct {p0, v5, v4}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->isDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_7f

    .line 135
    invoke-direct {p0, v0, v1}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->isDescendantOf(Landroid/view/View;Landroid/view/View;)Z
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_76} :catch_7e

    move-result v0

    if-eqz v0, :cond_7f

    move v0, v2

    .line 136
    goto :goto_b

    .line 128
    :cond_7b
    const/16 v0, 0x21

    goto :goto_52

    .line 138
    :catch_7e
    move-exception v0

    .line 141
    :cond_7f
    packed-switch v3, :pswitch_data_ca

    .line 164
    :cond_82
    :goto_82
    invoke-super {p0, p1}, Lcom/bilibili/tv/ui/base/BaseSideActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_b

    .line 143
    :pswitch_87
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    const-string v1, "right"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_82

    .line 144
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->c:Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$a;->b(Z)V

    goto :goto_82

    .line 149
    :pswitch_a2
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->h()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 150
    if-nez v0, :cond_ab

    move v0, v2

    .line 151
    goto/16 :goto_b

    .line 153
    :cond_ab
    instance-of v3, v0, Lbl/adw;

    if-eqz v3, :cond_ba

    check-cast v0, Lbl/adw;

    invoke-virtual {v0}, Lbl/adw;->c()Z

    move-result v0

    if-nez v0, :cond_ba

    move v0, v2

    .line 154
    goto/16 :goto_b

    .line 156
    :cond_ba
    instance-of v0, v1, Lcom/bilibili/tv/widget/side/SideLeftSelectLinearLayout;

    if-eqz v0, :cond_82

    move-object v0, v1

    .line 157
    check-cast v0, Lcom/bilibili/tv/widget/side/SideLeftSelectLinearLayout;

    invoke-virtual {v0}, Lcom/bilibili/tv/widget/side/SideLeftSelectLinearLayout;->c()V

    .line 158
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->c:Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$a;

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$a;->b(Z)V

    goto :goto_82

    .line 141
    :pswitch_data_ca
    .packed-switch 0x15
        :pswitch_87
        :pswitch_a2
    .end packed-switch
.end method

.method public g()I
    .locals 1

    .prologue
    .line 66
    const v0, 0x7f0a001d

    return v0
.end method

.method public getSortOrder()Ljava/lang/String;
    .locals 2

    .prologue
    .line 420
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->h()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 421
    instance-of v1, v0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;

    if-eqz v1, :cond_f

    .line 422
    check-cast v0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->getSortOrder()Ljava/lang/String;

    move-result-object v0

    .line 424
    :goto_e
    return-object v0

    :cond_f
    const-string v0, "mtime"

    goto :goto_e
.end method

.method public h()Landroid/support/v4/app/Fragment;
    .locals 2

    .prologue
    .line 169
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    if-nez v0, :cond_8

    .line 170
    const/4 v0, 0x0

    .line 172
    :goto_7
    return-object v0

    :cond_8
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f080091

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    goto :goto_7
.end method

.method public isVideoFavoriteMode()Z
    .locals 2

    .prologue
    .line 428
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->h()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 429
    instance-of v1, v0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;

    if-eqz v1, :cond_f

    .line 430
    check-cast v0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->isVideoFavoriteMode()Z

    move-result v0

    .line 432
    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->c:Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$a;

    .line 98
    invoke-super {p0}, Lcom/bilibili/tv/ui/base/BaseSideActivity;->onDestroy()V

    .line 99
    return-void
.end method

.method public onPostCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 83
    invoke-super {p0, p1}, Lcom/bilibili/tv/ui/base/BaseSideActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 84
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->j()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/live/LiveLeftLinearLayoutManger;

    invoke-direct {v1, p0, v3, v2}, Lcom/bilibili/tv/ui/live/LiveLeftLinearLayoutManger;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$h;)V

    .line 85
    new-instance v0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$a;

    iget-object v1, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->folders:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$a;-><init>(Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;Ljava/util/List;)V

    iput-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->c:Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$a;

    .line 86
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->j()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    iget-object v1, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->c:Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$a;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 87
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->j()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setFocusable(Z)V

    .line 88
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->j()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 89
    return-void
.end method

.method public setSortOrder(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 387
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->getSortOrder()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 403
    :cond_a
    :goto_a
    return-void

    .line 391
    :cond_b
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->h()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 392
    instance-of v1, v0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;

    if-eqz v1, :cond_a

    .line 393
    check-cast v0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;

    .line 395
    invoke-direct {p0}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->getSelectedView()Landroid/view/View;

    move-result-object v1

    .line 397
    invoke-virtual {v0, p1}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->setSortOrder(Ljava/lang/String;)V

    .line 399
    if-eqz v1, :cond_a

    .line 400
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    goto :goto_a
.end method
