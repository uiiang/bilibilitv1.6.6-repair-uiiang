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

    .line 50
    invoke-direct {p0}, Lcom/bilibili/tv/ui/base/BaseSideActivity;-><init>()V

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->folders:Ljava/util/List;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->videoFolders:Ljava/util/List;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->collectionFolders:Ljava/util/List;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->courseFolders:Ljava/util/List;

    .line 57
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->videoLoaded:Z

    .line 58
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->collectionLoaded:Z

    .line 59
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->courseLoaded:Z

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 71
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 72
    return-void
.end method

.method static synthetic access$000(Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->videoFolders:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$102(Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;Z)Z
    .locals 0

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->videoLoaded:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;Lbl/FavoriteFolder;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->showVideoList(Lbl/FavoriteFolder;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;)Landroid/support/v7/widget/RecyclerView;
    .locals 1

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->j()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->checkAllLoaded()V

    return-void
.end method

.method static synthetic access$300(Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->collectionFolders:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$402(Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;Z)Z
    .locals 0

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->collectionLoaded:Z

    return p1
.end method

.method static synthetic access$500(Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->courseFolders:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$602(Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;Z)Z
    .locals 0

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->courseLoaded:Z

    return p1
.end method

.method private checkAllLoaded()V
    .locals 2

    .prologue
    .line 181
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->videoLoaded:Z

    if-eqz v0, :cond_43

    iget-boolean v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->collectionLoaded:Z

    if-eqz v0, :cond_43

    iget-boolean v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->courseLoaded:Z

    if-eqz v0, :cond_43

    .line 182
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->folders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 183
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->folders:Ljava/util/List;

    iget-object v1, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->videoFolders:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 184
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->folders:Ljava/util/List;

    iget-object v1, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->collectionFolders:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 185
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->folders:Ljava/util/List;

    iget-object v1, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->courseFolders:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 186
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->c:Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$a;

    if-eqz v0, :cond_2f

    .line 187
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->c:Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$a;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$a;->d()V

    .line 189
    :cond_2f
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->folders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_43

    .line 190
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->folders:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbl/FavoriteFolder;

    invoke-direct {p0, v0}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->showVideoList(Lbl/FavoriteFolder;)V

    .line 193
    :cond_43
    return-void
.end method

.method private getSelectedView()Landroid/view/View;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 386
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->j()Landroid/support/v7/widget/RecyclerView;

    move-result-object v3

    .line 387
    if-nez v3, :cond_9

    move-object v0, v1

    .line 396
    :goto_8
    return-object v0

    .line 390
    :cond_9
    const/4 v0, 0x0

    :goto_a
    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1f

    .line 391
    invoke-virtual {v3, v0}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 392
    invoke-virtual {v2}, Landroid/view/View;->isSelected()Z

    move-result v4

    if-eqz v4, :cond_1c

    move-object v0, v2

    .line 393
    goto :goto_8

    .line 390
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_1f
    move-object v0, v1

    .line 396
    goto :goto_8
.end method

.method private isDescendantOf(Landroid/view/View;Landroid/view/View;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 161
    if-eqz p1, :cond_5

    if-nez p2, :cond_7

    :cond_5
    move v0, v1

    .line 171
    :goto_6
    return v0

    .line 164
    :cond_7
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 165
    :goto_b
    instance-of v2, v0, Landroid/view/View;

    if-eqz v2, :cond_18

    .line 166
    if-ne v0, p1, :cond_13

    .line 167
    const/4 v0, 0x1

    goto :goto_6

    .line 169
    :cond_13
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_b

    :cond_18
    move v0, v1

    .line 171
    goto :goto_6
.end method

.method private loadAllFolders()V
    .locals 0

    .prologue
    .line 175
    invoke-direct {p0}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->loadVideoFolders()V

    .line 176
    invoke-direct {p0}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->loadCollectionFolders()V

    .line 177
    invoke-direct {p0}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->loadCourseFolders()V

    .line 178
    return-void
.end method

.method private loadCollectionFolders()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 242
    invoke-static {p0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v0

    .line 243
    if-eqz v0, :cond_56

    .line 245
    :try_start_7
    invoke-virtual {v0}, Lbl/mg;->getSESSDATA()Ljava/lang/String;

    move-result-object v6

    .line 246
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 247
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->collectionLoaded:Z

    .line 248
    invoke-direct {p0}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->checkAllLoaded()V

    .line 286
    :goto_17
    return-void

    .line 251
    :cond_18
    const-class v1, Lmybl/MyBiliApiService;

    invoke-static {v1}, Lbl/vo;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmybl/MyBiliApiService;

    const/4 v2, 0x1

    const/16 v3, 0x32

    .line 252
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

    .line 253
    invoke-virtual {v0, v1}, Lbl/vp;->a(Lretrofit2/Callback;)V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_4e} :catch_4f

    goto :goto_17

    .line 278
    :catch_4f
    move-exception v0

    .line 279
    iput-boolean v8, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->collectionLoaded:Z

    .line 280
    invoke-direct {p0}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->checkAllLoaded()V

    goto :goto_17

    .line 283
    :cond_56
    iput-boolean v8, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->collectionLoaded:Z

    .line 284
    invoke-direct {p0}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->checkAllLoaded()V

    goto :goto_17
.end method

.method private loadCourseFolders()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 289
    invoke-static {p0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v0

    .line 290
    if-eqz v0, :cond_56

    .line 292
    :try_start_7
    invoke-virtual {v0}, Lbl/mg;->getSESSDATA()Ljava/lang/String;

    move-result-object v6

    .line 293
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 294
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->courseLoaded:Z

    .line 295
    invoke-direct {p0}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->checkAllLoaded()V

    .line 333
    :goto_17
    return-void

    .line 298
    :cond_18
    const-class v1, Lmybl/MyBiliApiService;

    invoke-static {v1}, Lbl/vo;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmybl/MyBiliApiService;

    const/4 v2, 0x1

    const/16 v3, 0x32

    .line 299
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

    .line 300
    invoke-virtual {v0, v1}, Lbl/vp;->a(Lretrofit2/Callback;)V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_4e} :catch_4f

    goto :goto_17

    .line 325
    :catch_4f
    move-exception v0

    .line 326
    iput-boolean v8, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->courseLoaded:Z

    .line 327
    invoke-direct {p0}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->checkAllLoaded()V

    goto :goto_17

    .line 330
    :cond_56
    iput-boolean v8, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->courseLoaded:Z

    .line 331
    invoke-direct {p0}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->checkAllLoaded()V

    goto :goto_17
.end method

.method private loadVideoFolders()V
    .locals 6

    .prologue
    .line 196
    invoke-static {p0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v1

    .line 197
    if-eqz v1, :cond_3e

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://space.bilibili.com/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lbl/mg;->d()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/favlist"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 199
    const-class v0, Lmybl/MyBiliApiService;

    invoke-static {v0}, Lbl/vo;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmybl/MyBiliApiService;

    .line 200
    invoke-virtual {v1}, Lbl/mg;->d()J

    move-result-wide v4

    const-string v1, "333.1387"

    invoke-interface {v0, v4, v5, v1, v2}, Lmybl/MyBiliApiService;->getCreatedFolderList(JLjava/lang/String;Ljava/lang/String;)Lbl/vp;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$1;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$1;-><init>(Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;)V

    .line 201
    invoke-virtual {v0, v1}, Lbl/vp;->a(Lretrofit2/Callback;)V

    .line 239
    :goto_3d
    return-void

    .line 236
    :cond_3e
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->videoLoaded:Z

    .line 237
    invoke-direct {p0}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->checkAllLoaded()V

    goto :goto_3d
.end method

.method private showVideoList(Lbl/FavoriteFolder;)V
    .locals 8

    .prologue
    .line 336
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->selectedFolder:Lbl/FavoriteFolder;

    if-ne v0, p1, :cond_5

    .line 364
    :goto_4
    return-void

    .line 340
    :cond_5
    iput-object p1, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->selectedFolder:Lbl/FavoriteFolder;

    .line 343
    instance-of v0, p1, Lbl/CollectionFavoriteFolder;

    if-eqz v0, :cond_35

    move-object v0, p1

    .line 345
    check-cast v0, Lbl/CollectionFavoriteFolder;

    .line 347
    invoke-interface {p1}, Lbl/FavoriteFolder;->getId()J

    move-result-wide v1

    .line 348
    invoke-interface {p1}, Lbl/FavoriteFolder;->getType()I

    move-result v3

    .line 349
    invoke-virtual {v0}, Lbl/CollectionFavoriteFolder;->getFid()J

    move-result-wide v4

    .line 350
    invoke-virtual {v0}, Lbl/CollectionFavoriteFolder;->getMid()J

    move-result-wide v6

    .line 346
    invoke-static/range {v1 .. v7}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->newInstance(JIJJ)Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;

    move-result-object v0

    .line 360
    :goto_22
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 361
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f080091

    .line 362
    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 363
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_4

    .line 355
    :cond_35
    invoke-interface {p1}, Lbl/FavoriteFolder;->getId()J

    move-result-wide v0

    .line 356
    invoke-interface {p1}, Lbl/FavoriteFolder;->getType()I

    move-result v2

    .line 354
    invoke-static {v0, v1, v2}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->newInstance(JI)Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;

    move-result-object v0

    goto :goto_22
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 76
    const v0, 0x7f0800eb

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->b(Landroid/support/v7/widget/RecyclerView;)V

    .line 77
    const v0, 0x7f080065

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "\u6211\u7684\u6536\u85cf"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    invoke-direct {p0}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->loadAllFolders()V

    .line 79
    return-void
.end method

.method public a(Lbl/agd;)V
    .locals 0

    .prologue
    .line 63
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 7

    .prologue
    const/16 v4, 0x14

    const/4 v2, 0x1

    .line 101
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->c:Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$a;

    if-nez v0, :cond_c

    .line 102
    invoke-super {p0, p1}, Lcom/bilibili/tv/ui/base/BaseSideActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 149
    :goto_b
    return v0

    .line 104
    :cond_c
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 105
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    .line 106
    if-nez v0, :cond_5b

    .line 107
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    .line 108
    if-nez v1, :cond_21

    .line 109
    invoke-super {p0, p1}, Lcom/bilibili/tv/ui/base/BaseSideActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_b

    .line 112
    :cond_21
    if-eq v3, v4, :cond_27

    const/16 v0, 0x13

    if-ne v3, v0, :cond_58

    .line 114
    :cond_27
    if-ne v3, v4, :cond_54

    const/16 v0, 0x82

    :goto_2b
    :try_start_2b
    invoke-virtual {v1, v0}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v4

    .line 115
    const/4 v0, 0x0

    .line 116
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->h()Landroid/support/v4/app/Fragment;

    move-result-object v5

    .line 117
    if-eqz v5, :cond_40

    invoke-virtual {v5}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_40

    .line 118
    invoke-virtual {v5}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 120
    :cond_40
    if-eqz v4, :cond_58

    invoke-virtual {p0}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->j()Landroid/support/v7/widget/RecyclerView;

    move-result-object v5

    invoke-direct {p0, v5, v4}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->isDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_58

    invoke-direct {p0, v0, v1}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->isDescendantOf(Landroid/view/View;Landroid/view/View;)Z
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_4f} :catch_57

    move-result v0

    if-eqz v0, :cond_58

    move v0, v2

    .line 121
    goto :goto_b

    .line 114
    :cond_54
    const/16 v0, 0x21

    goto :goto_2b

    .line 123
    :catch_57
    move-exception v0

    .line 126
    :cond_58
    packed-switch v3, :pswitch_data_a2

    .line 149
    :cond_5b
    :goto_5b
    invoke-super {p0, p1}, Lcom/bilibili/tv/ui/base/BaseSideActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_b

    .line 128
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

    .line 129
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->c:Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$a;->b(Z)V

    goto :goto_5b

    .line 134
    :pswitch_7b
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->h()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 135
    if-nez v0, :cond_83

    move v0, v2

    .line 136
    goto :goto_b

    .line 138
    :cond_83
    instance-of v3, v0, Lbl/adw;

    if-eqz v3, :cond_92

    check-cast v0, Lbl/adw;

    invoke-virtual {v0}, Lbl/adw;->c()Z

    move-result v0

    if-nez v0, :cond_92

    move v0, v2

    .line 139
    goto/16 :goto_b

    .line 141
    :cond_92
    instance-of v0, v1, Lcom/bilibili/tv/widget/side/SideLeftSelectLinearLayout;

    if-eqz v0, :cond_5b

    move-object v0, v1

    .line 142
    check-cast v0, Lcom/bilibili/tv/widget/side/SideLeftSelectLinearLayout;

    invoke-virtual {v0}, Lcom/bilibili/tv/widget/side/SideLeftSelectLinearLayout;->c()V

    .line 143
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->c:Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$a;

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$a;->b(Z)V

    goto :goto_5b

    .line 126
    :pswitch_data_a2
    .packed-switch 0x15
        :pswitch_60
        :pswitch_7b
    .end packed-switch
.end method

.method public g()I
    .locals 1

    .prologue
    .line 67
    const v0, 0x7f0a001d

    return v0
.end method

.method public getSortOrder()Ljava/lang/String;
    .locals 2

    .prologue
    .line 400
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->h()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 401
    instance-of v1, v0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;

    if-eqz v1, :cond_f

    .line 402
    check-cast v0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->getSortOrder()Ljava/lang/String;

    move-result-object v0

    .line 404
    :goto_e
    return-object v0

    :cond_f
    const-string v0, "mtime"

    goto :goto_e
.end method

.method public h()Landroid/support/v4/app/Fragment;
    .locals 2

    .prologue
    .line 154
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    if-nez v0, :cond_8

    .line 155
    const/4 v0, 0x0

    .line 157
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
    .line 408
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->h()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 409
    instance-of v1, v0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;

    if-eqz v1, :cond_f

    .line 410
    check-cast v0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->isVideoFavoriteMode()Z

    move-result v0

    .line 412
    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->c:Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$a;

    .line 96
    invoke-super {p0}, Lcom/bilibili/tv/ui/base/BaseSideActivity;->onDestroy()V

    .line 97
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 417
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->h()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 418
    instance-of v1, v0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;

    if-nez v1, :cond_a

    .line 446
    :cond_9
    :goto_9
    return v4

    .line 422
    :cond_a
    check-cast v0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;

    .line 423
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->isVideoFavoriteMode()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 427
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 428
    const-string v1, "\u6700\u8fd1\u6536\u85cf"

    const-string v2, "mtime"

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    const-string v1, "\u6700\u591a\u64ad\u653e"

    const-string v2, "view"

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    const-string v1, "\u6700\u8fd1\u6295\u7a3f"

    const-string v2, "pubtime"

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    new-instance v1, Lbl/agb$a;

    invoke-direct {v1, p0}, Lbl/agb$a;-><init>(Landroid/app/Activity;)V

    .line 433
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lbl/agb$a;->a(I)Lbl/agb$a;

    move-result-object v2

    const-string v3, "\u6392\u5e8f:"

    .line 434
    invoke-virtual {v2, v3}, Lbl/agb$a;->a(Ljava/lang/String;)Lbl/agb$a;

    move-result-object v2

    new-instance v3, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$4;

    invoke-direct {v3, p0, v0}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$4;-><init>(Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;Ljava/util/LinkedHashMap;)V

    .line 435
    invoke-virtual {v2, v0, v3}, Lbl/agb$a;->a(Ljava/util/LinkedHashMap;Lbl/agb$c;)Lbl/agb$a;

    .line 443
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->getSortOrder()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lbl/agb$a;->a(Ljava/lang/Object;)Lbl/agb$a;

    .line 444
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

    .line 84
    invoke-super {p0, p1}, Lcom/bilibili/tv/ui/base/BaseSideActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 85
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->j()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/live/LiveLeftLinearLayoutManger;

    invoke-direct {v1, p0, v3, v2}, Lcom/bilibili/tv/ui/live/LiveLeftLinearLayoutManger;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$h;)V

    .line 86
    new-instance v0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$a;

    iget-object v1, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->folders:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$a;-><init>(Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;Ljava/util/List;)V

    iput-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->c:Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$a;

    .line 87
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->j()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    iget-object v1, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->c:Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$a;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 88
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->j()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setFocusable(Z)V

    .line 89
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->j()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 90
    return-void
.end method

.method public setSortOrder(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 367
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->getSortOrder()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 383
    :cond_a
    :goto_a
    return-void

    .line 371
    :cond_b
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->h()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 372
    instance-of v1, v0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;

    if-eqz v1, :cond_a

    .line 373
    check-cast v0, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;

    .line 375
    invoke-direct {p0}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->getSelectedView()Landroid/view/View;

    move-result-object v1

    .line 377
    invoke-virtual {v0, p1}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->setSortOrder(Ljava/lang/String;)V

    .line 379
    if-eqz v1, :cond_a

    .line 380
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    goto :goto_a
.end method
