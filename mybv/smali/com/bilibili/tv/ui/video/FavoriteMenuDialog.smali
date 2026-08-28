.class public Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;
.super Lcom/bilibili/tv/ui/video/RightSlidePanelDialog;
.source "FavoriteMenuDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bilibili/tv/ui/video/FavoriteMenuDialog$OnFavoriteStatusChangedListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FavoriteMenuDialog"


# instance fields
.field private activity:Landroid/app/Activity;

.field private adapter:Lcom/bilibili/tv/ui/video/FavoriteMenuAdapter;

.field private avid:J

.field private favoriteFolders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lmybl/FavoriteFolder;",
            ">;"
        }
    .end annotation
.end field

.field private isOperating:Z

.field private listener:Lcom/bilibili/tv/ui/video/FavoriteMenuDialog$OnFavoriteStatusChangedListener;

.field private videoDetail:Lcom/bilibili/tv/api/video/BiliVideoDetail;


# direct methods
.method public constructor <init>(Landroid/app/Activity;JLcom/bilibili/tv/api/video/BiliVideoDetail;)V
    .locals 2

    .prologue
    .line 47
    const/16 v0, 0x12c

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/bilibili/tv/ui/video/RightSlidePanelDialog;-><init>(Landroid/app/Activity;IZ)V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;->favoriteFolders:Ljava/util/List;

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;->isOperating:Z

    .line 48
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;->activity:Landroid/app/Activity;

    .line 49
    iput-wide p2, p0, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;->avid:J

    .line 50
    iput-object p4, p0, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;->videoDetail:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    .line 51
    return-void
.end method

.method static synthetic access$000(Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;)Z
    .locals 1

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;->isOperating:Z

    return v0
.end method

.method static synthetic access$002(Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;Z)Z
    .locals 0

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;->isOperating:Z

    return p1
.end method

.method static synthetic access$100(Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;Lmybl/FavoriteFolder;ZI)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;->toggleFavorite(Lmybl/FavoriteFolder;ZI)V

    return-void
.end method

.method static synthetic access$200(Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$300(Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;)Ljava/util/List;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;->favoriteFolders:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;)Lcom/bilibili/tv/ui/video/FavoriteMenuAdapter;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;->adapter:Lcom/bilibili/tv/ui/video/FavoriteMenuAdapter;

    return-object v0
.end method

.method static synthetic access$500(Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;->updateMainFavoriteStatus()V

    return-void
.end method

.method private loadFavoriteFolders()V
    .locals 10

    .prologue
    .line 92
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 93
    :cond_c
    const-string v0, "FavoriteMenuDialog"

    const-string v1, "Activity is null or finishing"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :goto_13
    return-void

    .line 97
    :cond_14
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v0

    .line 98
    if-nez v0, :cond_2b

    .line 99
    const-string v0, "FavoriteMenuDialog"

    const-string v1, "BiliAccount is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;->activity:Landroid/app/Activity;

    const-string v1, "\u83b7\u53d6\u8d26\u53f7\u4fe1\u606f\u5931\u8d25"

    invoke-static {v0, v1}, Lbl/lr;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_13

    .line 104
    :cond_2b
    invoke-virtual {v0}, Lbl/mg;->d()J

    move-result-wide v2

    .line 105
    invoke-static {v0}, Lmybl/CookieUtil;->getFullCookieWithDevice(Lbl/mg;)Ljava/lang/String;

    move-result-object v9

    .line 107
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-gtz v0, :cond_48

    .line 108
    const-string v0, "FavoriteMenuDialog"

    const-string v1, "User not logged in"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;->activity:Landroid/app/Activity;

    const-string v1, "\u8d26\u53f7\u672a\u767b\u5f55"

    invoke-static {v0, v1}, Lbl/lr;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_13

    .line 113
    :cond_48
    const-class v0, Lmybl/MyBiliApiService;

    invoke-static {v0}, Lbl/vo;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmybl/MyBiliApiService;

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "https://www.bilibili.com/video/av"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v4, p0, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;->avid:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 115
    iget-wide v4, p0, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;->avid:J

    const/4 v6, 0x2

    const-string v7, "333.788"

    invoke-interface/range {v1 .. v9}, Lmybl/MyBiliApiService;->getCreatedFolderList(JJILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lbl/vp;

    move-result-object v0

    .line 117
    const-string v1, "FavoriteMenuDialog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Loading favorite folders for avid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p0, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;->avid:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    new-instance v1, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog$3;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog$3;-><init>(Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;)V

    invoke-virtual {v0, v1}, Lbl/vp;->a(Lretrofit2/Callback;)V

    goto/16 :goto_13
.end method

.method private toggleFavorite(Lmybl/FavoriteFolder;ZI)V
    .locals 8

    .prologue
    .line 214
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;->isOperating:Z

    .line 216
    const-class v0, Lcom/bilibili/tv/api/favorite/BiliFavoriteVideoApiService;

    invoke-static {v0}, Lbl/vo;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bilibili/tv/api/favorite/BiliFavoriteVideoApiService;

    .line 217
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v0

    .line 218
    invoke-virtual {v0}, Lbl/mg;->e()Ljava/lang/String;

    move-result-object v2

    .line 219
    invoke-virtual {p1}, Lmybl/FavoriteFolder;->getFid()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 221
    if-eqz p2, :cond_68

    .line 222
    const-string v0, "FavoriteMenuDialog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Adding video "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p0, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;->avid:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to folder: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lmybl/FavoriteFolder;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (fid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    iget-wide v4, p0, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;->avid:J

    const-string v6, "0"

    invoke-interface/range {v1 .. v6}, Lcom/bilibili/tv/api/favorite/BiliFavoriteVideoApiService;->addVideoToList(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Lbl/vp;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog$4;

    invoke-direct {v1, p0, p1, p3}, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog$4;-><init>(Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;Lmybl/FavoriteFolder;I)V

    invoke-virtual {v0, v1}, Lbl/vp;->a(Lretrofit2/Callback;)V

    .line 294
    :goto_67
    return-void

    .line 258
    :cond_68
    const-string v0, "FavoriteMenuDialog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Removing video "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p0, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;->avid:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " from folder: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lmybl/FavoriteFolder;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (fid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    iget-wide v4, p0, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;->avid:J

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/bilibili/tv/api/favorite/BiliFavoriteVideoApiService;->deleteVideoFromList(Ljava/lang/String;Ljava/lang/String;J)Lbl/vp;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog$5;

    invoke-direct {v1, p0, p1, p3}, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog$5;-><init>(Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;Lmybl/FavoriteFolder;I)V

    invoke-virtual {v0, v1}, Lbl/vp;->a(Lretrofit2/Callback;)V

    goto :goto_67
.end method

.method private updateMainFavoriteStatus()V
    .locals 3

    .prologue
    .line 297
    const/4 v1, 0x0

    .line 298
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;->favoriteFolders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmybl/FavoriteFolder;

    .line 299
    invoke-virtual {v0}, Lmybl/FavoriteFolder;->isFavored()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 300
    const/4 v0, 0x1

    .line 305
    :goto_1a
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;->listener:Lcom/bilibili/tv/ui/video/FavoriteMenuDialog$OnFavoriteStatusChangedListener;

    if-eqz v1, :cond_23

    .line 306
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;->listener:Lcom/bilibili/tv/ui/video/FavoriteMenuDialog$OnFavoriteStatusChangedListener;

    invoke-interface {v1, v0}, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog$OnFavoriteStatusChangedListener;->onFavoriteStatusChanged(Z)V

    .line 308
    :cond_23
    return-void

    :cond_24
    move v0, v1

    goto :goto_1a
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 56
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;->activity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0a00b9

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;->setContent(Landroid/view/View;)V

    .line 57
    invoke-super {p0, p1}, Lcom/bilibili/tv/ui/video/RightSlidePanelDialog;->onCreate(Landroid/os/Bundle;)V

    .line 59
    const v0, 0x7f0801c5

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    .line 60
    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v2, p0, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;->activity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$h;)V

    .line 61
    new-instance v1, Lcom/bilibili/tv/ui/video/FavoriteMenuAdapter;

    iget-object v2, p0, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;->favoriteFolders:Ljava/util/List;

    new-instance v3, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog$1;

    invoke-direct {v3, p0}, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog$1;-><init>(Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;)V

    invoke-direct {v1, v2, v3}, Lcom/bilibili/tv/ui/video/FavoriteMenuAdapter;-><init>(Ljava/util/List;Lcom/bilibili/tv/ui/video/FavoriteMenuAdapter$OnItemCheckedChangeListener;)V

    iput-object v1, p0, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;->adapter:Lcom/bilibili/tv/ui/video/FavoriteMenuAdapter;

    .line 69
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;->adapter:Lcom/bilibili/tv/ui/video/FavoriteMenuAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 71
    invoke-direct {p0}, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;->loadFavoriteFolders()V

    .line 72
    return-void
.end method

.method public setOnFavoriteStatusChangedListener(Lcom/bilibili/tv/ui/video/FavoriteMenuDialog$OnFavoriteStatusChangedListener;)V
    .locals 0

    .prologue
    .line 311
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;->listener:Lcom/bilibili/tv/ui/video/FavoriteMenuDialog$OnFavoriteStatusChangedListener;

    .line 312
    return-void
.end method

.method public show()V
    .locals 4

    .prologue
    .line 76
    invoke-super {p0}, Lcom/bilibili/tv/ui/video/RightSlidePanelDialog;->show()V

    .line 77
    const v0, 0x7f0801c5

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    .line 78
    if-eqz v0, :cond_24

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;->adapter:Lcom/bilibili/tv/ui/video/FavoriteMenuAdapter;

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;->adapter:Lcom/bilibili/tv/ui/video/FavoriteMenuAdapter;

    invoke-virtual {v1}, Lcom/bilibili/tv/ui/video/FavoriteMenuAdapter;->a()I

    move-result v1

    if-lez v1, :cond_24

    .line 79
    new-instance v1, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog$2;

    invoke-direct {v1, p0, v0}, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog$2;-><init>(Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;Landroid/support/v7/widget/RecyclerView;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v7/widget/RecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 89
    :cond_24
    return-void
.end method
