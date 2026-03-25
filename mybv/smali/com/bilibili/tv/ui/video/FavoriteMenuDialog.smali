.class public Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;
.super Landroid/app/Dialog;
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
    .line 55
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;->favoriteFolders:Ljava/util/List;

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;->isOperating:Z

    .line 56
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;->activity:Landroid/app/Activity;

    .line 57
    iput-wide p2, p0, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;->avid:J

    .line 58
    iput-object p4, p0, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;->videoDetail:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    .line 59
    return-void
.end method

.method static synthetic access$000(Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;)Z
    .locals 1

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;->isOperating:Z

    return v0
.end method

.method static synthetic access$002(Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;Z)Z
    .locals 0

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;->isOperating:Z

    return p1
.end method

.method static synthetic access$100(Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;Lmybl/FavoriteFolder;ZI)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;->toggleFavorite(Lmybl/FavoriteFolder;ZI)V

    return-void
.end method

.method static synthetic access$200(Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;)Ljava/util/List;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;->favoriteFolders:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;)Lcom/bilibili/tv/ui/video/FavoriteMenuAdapter;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;->adapter:Lcom/bilibili/tv/ui/video/FavoriteMenuAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$500(Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;->updateMainFavoriteStatus()V

    return-void
.end method

.method private loadFavoriteFolders()V
    .locals 10

    .prologue
    .line 127
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v0

    .line 128
    invoke-virtual {v0}, Lbl/mg;->d()J

    move-result-wide v2

    .line 129
    invoke-virtual {v0}, Lbl/mg;->e()Ljava/lang/String;

    move-result-object v8

    .line 131
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-gtz v0, :cond_1c

    .line 132
    const-string v0, "FavoriteMenuDialog"

    const-string v1, "User not logged in"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :goto_1b
    return-void

    .line 136
    :cond_1c
    const-class v0, Lmybl/MyBiliApiService;

    invoke-static {v0}, Lbl/vo;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmybl/MyBiliApiService;

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "https://www.bilibili.com/video/av"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v4, p0, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;->avid:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 138
    iget-wide v4, p0, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;->avid:J

    const/4 v6, 0x2

    const-string v7, "333.788"

    invoke-interface/range {v1 .. v9}, Lmybl/MyBiliApiService;->getCreatedFolderList(JJILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lbl/vp;

    move-result-object v0

    .line 140
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

    .line 142
    new-instance v1, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog$4;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog$4;-><init>(Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;)V

    invoke-virtual {v0, v1}, Lbl/vp;->a(Lretrofit2/Callback;)V

    goto :goto_1b
.end method

.method private toggleFavorite(Lmybl/FavoriteFolder;ZI)V
    .locals 8

    .prologue
    .line 196
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;->isOperating:Z

    .line 198
    const-class v0, Lcom/bilibili/tv/api/favorite/BiliFavoriteVideoApiService;

    invoke-static {v0}, Lbl/vo;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bilibili/tv/api/favorite/BiliFavoriteVideoApiService;

    .line 199
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v0

    .line 200
    invoke-virtual {v0}, Lbl/mg;->e()Ljava/lang/String;

    move-result-object v2

    .line 201
    invoke-virtual {p1}, Lmybl/FavoriteFolder;->getFid()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 203
    if-eqz p2, :cond_68

    .line 204
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

    .line 205
    iget-wide v4, p0, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;->avid:J

    const-string v6, "0"

    invoke-interface/range {v1 .. v6}, Lcom/bilibili/tv/api/favorite/BiliFavoriteVideoApiService;->addVideoToList(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Lbl/vp;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog$5;

    invoke-direct {v1, p0, p1, p3}, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog$5;-><init>(Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;Lmybl/FavoriteFolder;I)V

    invoke-virtual {v0, v1}, Lbl/vp;->a(Lretrofit2/Callback;)V

    .line 258
    :goto_67
    return-void

    .line 231
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

    .line 232
    iget-wide v4, p0, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;->avid:J

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/bilibili/tv/api/favorite/BiliFavoriteVideoApiService;->deleteVideoFromList(Ljava/lang/String;Ljava/lang/String;J)Lbl/vp;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog$6;

    invoke-direct {v1, p0, p1, p3}, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog$6;-><init>(Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;Lmybl/FavoriteFolder;I)V

    invoke-virtual {v0, v1}, Lbl/vp;->a(Lretrofit2/Callback;)V

    goto :goto_67
.end method

.method private updateMainFavoriteStatus()V
    .locals 3

    .prologue
    .line 261
    const/4 v1, 0x0

    .line 262
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

    .line 263
    invoke-virtual {v0}, Lmybl/FavoriteFolder;->isFavored()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 264
    const/4 v0, 0x1

    .line 269
    :goto_1a
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;->listener:Lcom/bilibili/tv/ui/video/FavoriteMenuDialog$OnFavoriteStatusChangedListener;

    if-eqz v1, :cond_23

    .line 270
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;->listener:Lcom/bilibili/tv/ui/video/FavoriteMenuDialog$OnFavoriteStatusChangedListener;

    invoke-interface {v1, v0}, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog$OnFavoriteStatusChangedListener;->onFavoriteStatusChanged(Z)V

    .line 272
    :cond_23
    return-void

    :cond_24
    move v0, v1

    goto :goto_1a
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x1

    .line 63
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 64
    invoke-virtual {p0, v3}, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;->requestWindowFeature(I)Z

    .line 65
    const v0, 0x7f0a0099

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;->setContentView(I)V

    .line 67
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 68
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 69
    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 70
    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 71
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 73
    const v0, 0x7f0801bf

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 74
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 75
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setFocusableInTouchMode(Z)V

    .line 77
    const v0, 0x7f0801be

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 78
    new-instance v1, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog$1;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog$1;-><init>(Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    const v0, 0x7f0801c0

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    .line 86
    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v2, p0, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;->activity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$h;)V

    .line 87
    new-instance v1, Lcom/bilibili/tv/ui/video/FavoriteMenuAdapter;

    iget-object v2, p0, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;->favoriteFolders:Ljava/util/List;

    new-instance v3, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog$2;

    invoke-direct {v3, p0}, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog$2;-><init>(Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;)V

    invoke-direct {v1, v2, v3}, Lcom/bilibili/tv/ui/video/FavoriteMenuAdapter;-><init>(Ljava/util/List;Lcom/bilibili/tv/ui/video/FavoriteMenuAdapter$OnItemCheckedChangeListener;)V

    iput-object v1, p0, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;->adapter:Lcom/bilibili/tv/ui/video/FavoriteMenuAdapter;

    .line 95
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;->adapter:Lcom/bilibili/tv/ui/video/FavoriteMenuAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 97
    invoke-direct {p0}, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;->loadFavoriteFolders()V

    .line 98
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x4

    if-ne p1, v0, :cond_8

    .line 103
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;->dismiss()V

    .line 104
    const/4 v0, 0x1

    .line 106
    :goto_7
    return v0

    :cond_8
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_7
.end method

.method public setOnFavoriteStatusChangedListener(Lcom/bilibili/tv/ui/video/FavoriteMenuDialog$OnFavoriteStatusChangedListener;)V
    .locals 0

    .prologue
    .line 275
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;->listener:Lcom/bilibili/tv/ui/video/FavoriteMenuDialog$OnFavoriteStatusChangedListener;

    .line 276
    return-void
.end method

.method public show()V
    .locals 4

    .prologue
    .line 111
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 112
    const v0, 0x7f0801c0

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    .line 113
    if-eqz v0, :cond_24

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;->adapter:Lcom/bilibili/tv/ui/video/FavoriteMenuAdapter;

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;->adapter:Lcom/bilibili/tv/ui/video/FavoriteMenuAdapter;

    invoke-virtual {v1}, Lcom/bilibili/tv/ui/video/FavoriteMenuAdapter;->a()I

    move-result v1

    if-lez v1, :cond_24

    .line 114
    new-instance v1, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog$3;

    invoke-direct {v1, p0, v0}, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog$3;-><init>(Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;Landroid/support/v7/widget/RecyclerView;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v7/widget/RecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 124
    :cond_24
    return-void
.end method
