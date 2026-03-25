.class public Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;
.super Lcom/bilibili/tv/ui/base/BaseSideActivity;
.source "FavoriteSideActivity.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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

    .line 51
    invoke-direct {p0}, Lcom/bilibili/tv/ui/base/BaseSideActivity;-><init>()V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->folders:Ljava/util/List;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->videoFolders:Ljava/util/List;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->collectionFolders:Ljava/util/List;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->courseFolders:Ljava/util/List;

    .line 58
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->videoLoaded:Z

    .line 59
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->collectionLoaded:Z

    .line 60
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->courseLoaded:Z

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 72
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 73
    return-void
.end method

.method static synthetic access$000(Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->videoFolders:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$102(Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;Z)Z
    .locals 0

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->videoLoaded:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;Lbl/FavoriteFolder;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->showVideoList(Lbl/FavoriteFolder;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;)Landroid/support/v7/widget/RecyclerView;
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->j()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->checkAllLoaded()V

    return-void
.end method

.method static synthetic access$300(Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->collectionFolders:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$402(Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;Z)Z
    .locals 0

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->collectionLoaded:Z

    return p1
.end method

.method static synthetic access$500(Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->courseFolders:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$602(Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;Z)Z
    .locals 0

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->courseLoaded:Z

    return p1
.end method

.method private checkAllLoaded()V
    .locals 2

    .prologue
    .line 189
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->videoLoaded:Z

    if-eqz v0, :cond_43

    iget-boolean v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->collectionLoaded:Z

    if-eqz v0, :cond_43

    iget-boolean v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->courseLoaded:Z

    if-eqz v0, :cond_43

    .line 190
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->folders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 191
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->folders:Ljava/util/List;

    iget-object v1, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->videoFolders:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 192
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->folders:Ljava/util/List;

    iget-object v1, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->collectionFolders:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 193
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->folders:Ljava/util/List;

    iget-object v1, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->courseFolders:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 194
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->c:Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$a;

    if-eqz v0, :cond_2f

    .line 195
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->c:Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$a;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$a;->d()V

    .line 197
    :cond_2f
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->folders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_43

    .line 198
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->folders:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbl/FavoriteFolder;

    invoke-direct {p0, v0}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->showVideoList(Lbl/FavoriteFolder;)V

    .line 201
    :cond_43
    return-void
.end method

.method private getSelectedView()Landroid/view/View;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 397
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->j()Landroid/support/v7/widget/RecyclerView;

    move-result-object v3

    .line 398
    if-nez v3, :cond_9

    move-object v0, v1

    .line 407
    :goto_8
    return-object v0

    .line 401
    :cond_9
    const/4 v0, 0x0

    :goto_a
    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1f

    .line 402
    invoke-virtual {v3, v0}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 403
    invoke-virtual {v2}, Landroid/view/View;->isSelected()Z

    move-result v4

    if-eqz v4, :cond_1c

    move-object v0, v2

    .line 404
    goto :goto_8

    .line 401
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_1f
    move-object v0, v1

    .line 407
    goto :goto_8
.end method

.method private isDescendantOf(Landroid/view/View;Landroid/view/View;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 169
    if-eqz p1, :cond_5

    if-nez p2, :cond_7

    :cond_5
    move v0, v1

    .line 179
    :goto_6
    return v0

    .line 172
    :cond_7
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 173
    :goto_b
    instance-of v2, v0, Landroid/view/View;

    if-eqz v2, :cond_18

    .line 174
    if-ne v0, p1, :cond_13

    .line 175
    const/4 v0, 0x1

    goto :goto_6

    .line 177
    :cond_13
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_b

    :cond_18
    move v0, v1

    .line 179
    goto :goto_6
.end method

.method private loadAllFolders()V
    .locals 0

    .prologue
    .line 183
    invoke-direct {p0}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->loadVideoFolders()V

    .line 184
    invoke-direct {p0}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->loadCollectionFolders()V

    .line 185
    invoke-direct {p0}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->loadCourseFolders()V

    .line 186
    return-void
.end method

.method private loadCollectionFolders()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 255
    invoke-static {p0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v0

    .line 256
    if-eqz v0, :cond_56

    .line 258
    :try_start_7
    invoke-virtual {v0}, Lbl/mg;->getSESSDATA()Ljava/lang/String;

    move-result-object v6

    .line 259
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 260
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->collectionLoaded:Z

    .line 261
    invoke-direct {p0}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->checkAllLoaded()V

    .line 299
    :goto_17
    return-void

    .line 264
    :cond_18
    const-class v1, Lmybl/MyBiliApiService;

    invoke-static {v1}, Lbl/vo;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmybl/MyBiliApiService;

    const/4 v2, 0x1

    const/16 v3, 0x32

    .line 265
    invoke-virtual {v0}, Lbl/mg;->d()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SESSDATA="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface/range {v1 .. v6}, Lmybl/MyBiliApiService;->getCollectedFolders(IIJLjava/lang/String;)Lbl/vp;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$2;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$2;-><init>(Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;)V

    .line 266
    invoke-virtual {v0, v1}, Lbl/vp;->a(Lretrofit2/Callback;)V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_4e} :catch_4f

    goto :goto_17

    .line 291
    :catch_4f
    move-exception v0

    .line 292
    iput-boolean v8, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->collectionLoaded:Z

    .line 293
    invoke-direct {p0}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->checkAllLoaded()V

    goto :goto_17

    .line 296
    :cond_56
    iput-boolean v8, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->collectionLoaded:Z

    .line 297
    invoke-direct {p0}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->checkAllLoaded()V

    goto :goto_17
.end method

.method private loadCourseFolders()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 302
    invoke-static {p0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v0

    .line 303
    if-eqz v0, :cond_56

    .line 305
    :try_start_7
    invoke-virtual {v0}, Lbl/mg;->getSESSDATA()Ljava/lang/String;

    move-result-object v6

    .line 306
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 307
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->courseLoaded:Z

    .line 308
    invoke-direct {p0}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->checkAllLoaded()V

    .line 346
    :goto_17
    return-void

    .line 311
    :cond_18
    const-class v1, Lmybl/MyBiliApiService;

    invoke-static {v1}, Lbl/vo;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmybl/MyBiliApiService;

    const/4 v2, 0x1

    const/16 v3, 0x32

    .line 312
    invoke-virtual {v0}, Lbl/mg;->d()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SESSDATA="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface/range {v1 .. v6}, Lmybl/MyBiliApiService;->getFavoritePugv(IIJLjava/lang/String;)Lbl/vp;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$3;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$3;-><init>(Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;)V

    .line 313
    invoke-virtual {v0, v1}, Lbl/vp;->a(Lretrofit2/Callback;)V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_4e} :catch_4f

    goto :goto_17

    .line 338
    :catch_4f
    move-exception v0

    .line 339
    iput-boolean v8, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->courseLoaded:Z

    .line 340
    invoke-direct {p0}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->checkAllLoaded()V

    goto :goto_17

    .line 343
    :cond_56
    iput-boolean v8, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->courseLoaded:Z

    .line 344
    invoke-direct {p0}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->checkAllLoaded()V

    goto :goto_17
.end method

.method private loadVideoFolders()V
    .locals 10

    .prologue
    .line 204
    invoke-static {p0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v0

    .line 205
    if-eqz v0, :cond_45

    .line 206
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

    move-result-object v9

    .line 207
    invoke-virtual {v0}, Lbl/mg;->e()Ljava/lang/String;

    move-result-object v8

    .line 208
    const-class v1, Lmybl/MyBiliApiService;

    invoke-static {v1}, Lbl/vo;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmybl/MyBiliApiService;

    .line 209
    invoke-virtual {v0}, Lbl/mg;->d()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    const/4 v6, 0x2

    const-string v7, "333.1387"

    invoke-interface/range {v1 .. v9}, Lmybl/MyBiliApiService;->getCreatedFolderList(JJILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lbl/vp;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$1;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$1;-><init>(Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;)V

    .line 210
    invoke-virtual {v0, v1}, Lbl/vp;->a(Lretrofit2/Callback;)V

    .line 252
    :goto_44
    return-void

    .line 249
    :cond_45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->videoLoaded:Z

    .line 250
    invoke-direct {p0}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->checkAllLoaded()V

    goto :goto_44
.end method

.method private showVideoList(Lbl/FavoriteFolder;)V
    .locals 8

    .prologue
    .line 349
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->selectedFolder:Lbl/FavoriteFolder;

    if-ne v0, p1, :cond_5

    .line 375
    :goto_4
    return-void

    .line 353
    :cond_5
    iput-object p1, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->selectedFolder:Lbl/FavoriteFolder;

    .line 356
    instance-of v0, p1, Lbl/CollectionFavoriteFolder;

    if-eqz v0, :cond_35

    move-object v0, p1

    .line 358
    check-cast v0, Lbl/CollectionFavoriteFolder;

    .line 360
    invoke-interface {p1}, Lbl/FavoriteFolder;->getId()J

    move-result-wide v1

    .line 361
    invoke-interface {p1}, Lbl/FavoriteFolder;->getType()I

    move-result v3

    .line 362
    invoke-virtual {v0}, Lbl/CollectionFavoriteFolder;->getFid()J

    move-result-wide v4

    .line 363
    invoke-virtual {v0}, Lbl/CollectionFavoriteFolder;->getMid()J

    move-result-wide v6

    .line 359
    invoke-static/range {v1 .. v7}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->newInstance(JIJJ)Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;

    move-result-object v0

    .line 371
    :goto_22
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 372
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f080091

    .line 373
    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 374
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_4

    .line 367
    :cond_35
    invoke-interface {p1}, Lbl/FavoriteFolder;->getId()J

    move-result-wide v0

    .line 368
    invoke-interface {p1}, Lbl/FavoriteFolder;->getType()I

    move-result v2

    .line 366
    invoke-static {v0, v1, v2}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->newInstance(JI)Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;

    move-result-object v0

    goto :goto_22
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 77
    const v0, 0x7f0800eb

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->b(Landroid/support/v7/widget/RecyclerView;)V

    .line 78
    const v0, 0x7f080065

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "\u6211\u7684\u6536\u85cf"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    invoke-direct {p0}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->loadAllFolders()V

    .line 80
    return-void
.end method

.method public a(Lbl/agd;)V
    .locals 0

    .prologue
    .line 64
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 7

    .prologue
    const/16 v4, 0x14

    const/4 v2, 0x1

    .line 108
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->c:Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$a;

    if-nez v0, :cond_c

    .line 109
    invoke-super {p0, p1}, Lcom/bilibili/tv/ui/base/BaseSideActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 157
    :goto_b
    return v0

    .line 111
    :cond_c
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 112
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    .line 113
    if-nez v0, :cond_5b

    .line 114
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    .line 115
    if-nez v1, :cond_21

    .line 116
    invoke-super {p0, p1}, Lcom/bilibili/tv/ui/base/BaseSideActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_b

    .line 119
    :cond_21
    if-eq v3, v4, :cond_27

    const/16 v0, 0x13

    if-ne v3, v0, :cond_58

    .line 121
    :cond_27
    if-ne v3, v4, :cond_54

    const/16 v0, 0x82

    :goto_2b
    :try_start_2b
    invoke-virtual {v1, v0}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v4

    .line 122
    const/4 v0, 0x0

    .line 123
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->h()Landroid/support/v4/app/Fragment;

    move-result-object v5

    .line 124
    if-eqz v5, :cond_40

    invoke-virtual {v5}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_40

    .line 125
    invoke-virtual {v5}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 127
    :cond_40
    if-eqz v4, :cond_58

    invoke-virtual {p0}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->j()Landroid/support/v7/widget/RecyclerView;

    move-result-object v5

    invoke-direct {p0, v5, v4}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->isDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_58

    .line 128
    invoke-direct {p0, v0, v1}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->isDescendantOf(Landroid/view/View;Landroid/view/View;)Z
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_4f} :catch_57

    move-result v0

    if-eqz v0, :cond_58

    move v0, v2

    .line 129
    goto :goto_b

    .line 121
    :cond_54
    const/16 v0, 0x21

    goto :goto_2b

    .line 131
    :catch_57
    move-exception v0

    .line 134
    :cond_58
    packed-switch v3, :pswitch_data_a2

    .line 157
    :cond_5b
    :goto_5b
    invoke-super {p0, p1}, Lcom/bilibili/tv/ui/base/BaseSideActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_b

    .line 136
    :pswitch_60
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    const-string v1, "right"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 137
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->c:Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$a;->b(Z)V

    goto :goto_5b

    .line 142
    :pswitch_7b
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->h()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 143
    if-nez v0, :cond_83

    move v0, v2

    .line 144
    goto :goto_b

    .line 146
    :cond_83
    instance-of v3, v0, Lbl/adw;

    if-eqz v3, :cond_92

    check-cast v0, Lbl/adw;

    invoke-virtual {v0}, Lbl/adw;->c()Z

    move-result v0

    if-nez v0, :cond_92

    move v0, v2

    .line 147
    goto/16 :goto_b

    .line 149
    :cond_92
    instance-of v0, v1, Lcom/bilibili/tv/widget/side/SideLeftSelectLinearLayout;

    if-eqz v0, :cond_5b

    move-object v0, v1

    .line 150
    check-cast v0, Lcom/bilibili/tv/widget/side/SideLeftSelectLinearLayout;

    invoke-virtual {v0}, Lcom/bilibili/tv/widget/side/SideLeftSelectLinearLayout;->c()V

    .line 151
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->c:Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$a;

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$a;->b(Z)V

    goto :goto_5b

    .line 134
    :pswitch_data_a2
    .packed-switch 0x15
        :pswitch_60
        :pswitch_7b
    .end packed-switch
.end method

.method public g()I
    .locals 1

    .prologue
    .line 68
    const v0, 0x7f0a001d

    return v0
.end method

.method public getSortOrder()Ljava/lang/String;
    .locals 2

    .prologue
    .line 411
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->h()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 412
    instance-of v1, v0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;

    if-eqz v1, :cond_f

    .line 413
    check-cast v0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->getSortOrder()Ljava/lang/String;

    move-result-object v0

    .line 415
    :goto_e
    return-object v0

    :cond_f
    const-string v0, "mtime"

    goto :goto_e
.end method

.method public h()Landroid/support/v4/app/Fragment;
    .locals 2

    .prologue
    .line 162
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    if-nez v0, :cond_8

    .line 163
    const/4 v0, 0x0

    .line 165
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
    .line 419
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->h()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 420
    instance-of v1, v0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;

    if-eqz v1, :cond_f

    .line 421
    check-cast v0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->isVideoFavoriteMode()Z

    move-result v0

    .line 423
    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->c:Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$a;

    .line 100
    invoke-super {p0}, Lcom/bilibili/tv/ui/base/BaseSideActivity;->onDestroy()V

    .line 101
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 428
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->h()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 429
    instance-of v1, v0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;

    if-nez v1, :cond_a

    .line 457
    :cond_9
    :goto_9
    return v4

    .line 433
    :cond_a
    check-cast v0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;

    .line 434
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->isVideoFavoriteMode()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 438
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 439
    const-string v1, "\u6700\u8fd1\u6536\u85cf"

    const-string v2, "mtime"

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    const-string v1, "\u6700\u591a\u64ad\u653e"

    const-string v2, "view"

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    const-string v1, "\u6700\u8fd1\u6295\u7a3f"

    const-string v2, "pubtime"

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    new-instance v1, Lbl/agb$a;

    invoke-direct {v1, p0}, Lbl/agb$a;-><init>(Landroid/app/Activity;)V

    .line 444
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lbl/agb$a;->a(I)Lbl/agb$a;

    move-result-object v2

    const-string v3, "\u6392\u5e8f:"

    .line 445
    invoke-virtual {v2, v3}, Lbl/agb$a;->a(Ljava/lang/String;)Lbl/agb$a;

    move-result-object v2

    new-instance v3, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$4;

    invoke-direct {v3, p0, v0}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$4;-><init>(Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;Ljava/util/LinkedHashMap;)V

    .line 446
    invoke-virtual {v2, v0, v3}, Lbl/agb$a;->a(Ljava/util/LinkedHashMap;Lbl/agb$c;)Lbl/agb$a;

    .line 454
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->getSortOrder()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lbl/agb$a;->a(Ljava/lang/Object;)Lbl/agb$a;

    .line 455
    invoke-virtual {v1}, Lbl/agb$a;->a()Lbl/agb;

    move-result-object v0

    invoke-virtual {v0}, Lbl/agb;->show()V

    goto :goto_9
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

    .line 85
    invoke-super {p0, p1}, Lcom/bilibili/tv/ui/base/BaseSideActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 86
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->j()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/live/LiveLeftLinearLayoutManger;

    invoke-direct {v1, p0, v3, v2}, Lcom/bilibili/tv/ui/live/LiveLeftLinearLayoutManger;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$h;)V

    .line 87
    new-instance v0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$a;

    iget-object v1, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->folders:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$a;-><init>(Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;Ljava/util/List;)V

    iput-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->c:Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$a;

    .line 88
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->j()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    iget-object v1, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->c:Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$a;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 89
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->j()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setFocusable(Z)V

    .line 90
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->j()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 91
    return-void
.end method

.method public setSortOrder(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 378
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->getSortOrder()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 394
    :cond_a
    :goto_a
    return-void

    .line 382
    :cond_b
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->h()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 383
    instance-of v1, v0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;

    if-eqz v1, :cond_a

    .line 384
    check-cast v0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;

    .line 386
    invoke-direct {p0}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->getSelectedView()Landroid/view/View;

    move-result-object v1

    .line 388
    invoke-virtual {v0, p1}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->setSortOrder(Ljava/lang/String;)V

    .line 390
    if-eqz v1, :cond_a

    .line 391
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    goto :goto_a
.end method
