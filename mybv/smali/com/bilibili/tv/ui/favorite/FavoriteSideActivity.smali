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

    .line 45
    invoke-direct {p0}, Lcom/bilibili/tv/ui/base/BaseSideActivity;-><init>()V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->folders:Ljava/util/List;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->videoFolders:Ljava/util/List;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->collectionFolders:Ljava/util/List;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->courseFolders:Ljava/util/List;

    .line 52
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->videoLoaded:Z

    .line 53
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->collectionLoaded:Z

    .line 54
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->courseLoaded:Z

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 66
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 67
    return-void
.end method

.method static synthetic access$000(Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->videoFolders:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$102(Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;Z)Z
    .locals 0

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->videoLoaded:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;Lbl/FavoriteFolder;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->showVideoList(Lbl/FavoriteFolder;)V

    return-void
.end method

.method static synthetic access$200(Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->checkAllLoaded()V

    return-void
.end method

.method static synthetic access$300(Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->collectionFolders:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$402(Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;Z)Z
    .locals 0

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->collectionLoaded:Z

    return p1
.end method

.method static synthetic access$500(Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->courseFolders:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$602(Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;Z)Z
    .locals 0

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->courseLoaded:Z

    return p1
.end method

.method private checkAllLoaded()V
    .locals 2

    .prologue
    .line 147
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->videoLoaded:Z

    if-eqz v0, :cond_43

    iget-boolean v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->collectionLoaded:Z

    if-eqz v0, :cond_43

    iget-boolean v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->courseLoaded:Z

    if-eqz v0, :cond_43

    .line 148
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->folders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 149
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->folders:Ljava/util/List;

    iget-object v1, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->videoFolders:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 150
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->folders:Ljava/util/List;

    iget-object v1, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->collectionFolders:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 151
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->folders:Ljava/util/List;

    iget-object v1, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->courseFolders:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 152
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->c:Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$a;

    if-eqz v0, :cond_2f

    .line 153
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->c:Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$a;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$a;->d()V

    .line 155
    :cond_2f
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->folders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_43

    .line 156
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->folders:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbl/FavoriteFolder;

    invoke-direct {p0, v0}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->showVideoList(Lbl/FavoriteFolder;)V

    .line 159
    :cond_43
    return-void
.end method

.method private loadAllFolders()V
    .locals 0

    .prologue
    .line 141
    invoke-direct {p0}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->loadVideoFolders()V

    .line 142
    invoke-direct {p0}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->loadCollectionFolders()V

    .line 143
    invoke-direct {p0}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->loadCourseFolders()V

    .line 144
    return-void
.end method

.method private loadCollectionFolders()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 198
    invoke-static {p0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v0

    .line 199
    if-eqz v0, :cond_56

    .line 201
    :try_start_7
    invoke-virtual {v0}, Lbl/mg;->getSESSDATA()Ljava/lang/String;

    move-result-object v6

    .line 202
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 203
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->collectionLoaded:Z

    .line 204
    invoke-direct {p0}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->checkAllLoaded()V

    .line 242
    :goto_17
    return-void

    .line 207
    :cond_18
    const-class v1, Lmybl/MyBiliApiService;

    invoke-static {v1}, Lbl/vo;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmybl/MyBiliApiService;

    const/4 v2, 0x1

    const/16 v3, 0x32

    .line 208
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

    .line 209
    invoke-virtual {v0, v1}, Lbl/vp;->a(Lretrofit2/Callback;)V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_4e} :catch_4f

    goto :goto_17

    .line 234
    :catch_4f
    move-exception v0

    .line 235
    iput-boolean v8, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->collectionLoaded:Z

    .line 236
    invoke-direct {p0}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->checkAllLoaded()V

    goto :goto_17

    .line 239
    :cond_56
    iput-boolean v8, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->collectionLoaded:Z

    .line 240
    invoke-direct {p0}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->checkAllLoaded()V

    goto :goto_17
.end method

.method private loadCourseFolders()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 245
    invoke-static {p0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v0

    .line 246
    if-eqz v0, :cond_56

    .line 248
    :try_start_7
    invoke-virtual {v0}, Lbl/mg;->getSESSDATA()Ljava/lang/String;

    move-result-object v6

    .line 249
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 250
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->courseLoaded:Z

    .line 251
    invoke-direct {p0}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->checkAllLoaded()V

    .line 289
    :goto_17
    return-void

    .line 254
    :cond_18
    const-class v1, Lmybl/MyBiliApiService;

    invoke-static {v1}, Lbl/vo;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmybl/MyBiliApiService;

    const/4 v2, 0x1

    const/16 v3, 0x32

    .line 255
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

    .line 256
    invoke-virtual {v0, v1}, Lbl/vp;->a(Lretrofit2/Callback;)V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_4e} :catch_4f

    goto :goto_17

    .line 281
    :catch_4f
    move-exception v0

    .line 282
    iput-boolean v8, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->courseLoaded:Z

    .line 283
    invoke-direct {p0}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->checkAllLoaded()V

    goto :goto_17

    .line 286
    :cond_56
    iput-boolean v8, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->courseLoaded:Z

    .line 287
    invoke-direct {p0}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->checkAllLoaded()V

    goto :goto_17
.end method

.method private loadVideoFolders()V
    .locals 6

    .prologue
    .line 162
    invoke-static {p0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v1

    .line 163
    if-eqz v1, :cond_2d

    .line 164
    const-class v0, Lcom/bilibili/tv/api/favorite/BiliFavoriteVideoApiService;

    invoke-static {v0}, Lbl/vo;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/favorite/BiliFavoriteVideoApiService;

    .line 165
    invoke-virtual {v1}, Lbl/mg;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lbl/mg;->d()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v2, v1, v3}, Lcom/bilibili/tv/api/favorite/BiliFavoriteVideoApiService;->getStatedBoxList(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)Lbl/vp;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$1;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$1;-><init>(Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;)V

    .line 166
    invoke-virtual {v0, v1}, Lbl/vp;->a(Lretrofit2/Callback;)V

    .line 195
    :goto_2c
    return-void

    .line 192
    :cond_2d
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->videoLoaded:Z

    .line 193
    invoke-direct {p0}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->checkAllLoaded()V

    goto :goto_2c
.end method

.method private showVideoList(Lbl/FavoriteFolder;)V
    .locals 8

    .prologue
    .line 292
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->selectedFolder:Lbl/FavoriteFolder;

    if-ne v0, p1, :cond_5

    .line 320
    :goto_4
    return-void

    .line 296
    :cond_5
    iput-object p1, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->selectedFolder:Lbl/FavoriteFolder;

    .line 299
    instance-of v0, p1, Lbl/CollectionFavoriteFolder;

    if-eqz v0, :cond_35

    move-object v0, p1

    .line 301
    check-cast v0, Lbl/CollectionFavoriteFolder;

    .line 303
    invoke-interface {p1}, Lbl/FavoriteFolder;->getId()J

    move-result-wide v1

    .line 304
    invoke-interface {p1}, Lbl/FavoriteFolder;->getType()I

    move-result v3

    .line 305
    invoke-virtual {v0}, Lbl/CollectionFavoriteFolder;->getFid()J

    move-result-wide v4

    .line 306
    invoke-virtual {v0}, Lbl/CollectionFavoriteFolder;->getMid()J

    move-result-wide v6

    .line 302
    invoke-static/range {v1 .. v7}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->newInstance(JIJJ)Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;

    move-result-object v0

    .line 316
    :goto_22
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 317
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f080091

    .line 318
    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 319
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_4

    .line 311
    :cond_35
    invoke-interface {p1}, Lbl/FavoriteFolder;->getId()J

    move-result-wide v0

    .line 312
    invoke-interface {p1}, Lbl/FavoriteFolder;->getType()I

    move-result v2

    .line 310
    invoke-static {v0, v1, v2}, Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;->newInstance(JI)Lcom/bilibili/tv/ui/favorite/FavoriteVideoFragment;

    move-result-object v0

    goto :goto_22
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 71
    const v0, 0x7f0800eb

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->b(Landroid/support/v7/widget/RecyclerView;)V

    .line 72
    const v0, 0x7f080065

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "\u6211\u7684\u6536\u85cf"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    invoke-direct {p0}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->loadAllFolders()V

    .line 74
    return-void
.end method

.method public a(Lbl/agd;)V
    .locals 0

    .prologue
    .line 58
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 96
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->c:Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$a;

    if-nez v0, :cond_a

    .line 97
    invoke-super {p0, p1}, Lcom/bilibili/tv/ui/base/BaseSideActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 129
    :goto_9
    return v0

    .line 99
    :cond_a
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 100
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    .line 101
    if-nez v0, :cond_22

    .line 102
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    .line 103
    if-nez v1, :cond_1f

    .line 104
    invoke-super {p0, p1}, Lcom/bilibili/tv/ui/base/BaseSideActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_9

    .line 106
    :cond_1f
    packed-switch v3, :pswitch_data_68

    .line 129
    :cond_22
    :goto_22
    invoke-super {p0, p1}, Lcom/bilibili/tv/ui/base/BaseSideActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_9

    .line 108
    :pswitch_27
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    const-string v1, "right"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 109
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->c:Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$a;->b(Z)V

    goto :goto_22

    .line 114
    :pswitch_42
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->h()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 115
    if-nez v0, :cond_4a

    move v0, v2

    .line 116
    goto :goto_9

    .line 118
    :cond_4a
    instance-of v3, v0, Lbl/adw;

    if-eqz v3, :cond_58

    check-cast v0, Lbl/adw;

    invoke-virtual {v0}, Lbl/adw;->c()Z

    move-result v0

    if-nez v0, :cond_58

    move v0, v2

    .line 119
    goto :goto_9

    .line 121
    :cond_58
    instance-of v0, v1, Lcom/bilibili/tv/widget/side/SideLeftSelectLinearLayout;

    if-eqz v0, :cond_22

    move-object v0, v1

    .line 122
    check-cast v0, Lcom/bilibili/tv/widget/side/SideLeftSelectLinearLayout;

    invoke-virtual {v0}, Lcom/bilibili/tv/widget/side/SideLeftSelectLinearLayout;->c()V

    .line 123
    iget-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->c:Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$a;

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$a;->b(Z)V

    goto :goto_22

    .line 106
    :pswitch_data_68
    .packed-switch 0x15
        :pswitch_27
        :pswitch_42
    .end packed-switch
.end method

.method public g()I
    .locals 1

    .prologue
    .line 62
    const v0, 0x7f0a001d

    return v0
.end method

.method public h()Landroid/support/v4/app/Fragment;
    .locals 2

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    if-nez v0, :cond_8

    .line 135
    const/4 v0, 0x0

    .line 137
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

.method public onDestroy()V
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->c:Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$a;

    .line 91
    invoke-super {p0}, Lcom/bilibili/tv/ui/base/BaseSideActivity;->onDestroy()V

    .line 92
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

    .line 79
    invoke-super {p0, p1}, Lcom/bilibili/tv/ui/base/BaseSideActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 80
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->j()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/live/LiveLeftLinearLayoutManger;

    invoke-direct {v1, p0, v3, v2}, Lcom/bilibili/tv/ui/live/LiveLeftLinearLayoutManger;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$h;)V

    .line 81
    new-instance v0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$a;

    iget-object v1, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->folders:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$a;-><init>(Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;Ljava/util/List;)V

    iput-object v0, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->c:Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$a;

    .line 82
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->j()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    iget-object v1, p0, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->c:Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity$a;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 83
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->j()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setFocusable(Z)V

    .line 84
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/favorite/FavoriteSideActivity;->j()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 85
    return-void
.end method
