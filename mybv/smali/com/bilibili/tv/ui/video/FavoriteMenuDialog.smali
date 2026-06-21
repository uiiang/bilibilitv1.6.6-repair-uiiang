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
    .line 56
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;->favoriteFolders:Ljava/util/List;

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;->isOperating:Z

    .line 57
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;->activity:Landroid/app/Activity;

    .line 58
    iput-wide p2, p0, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;->avid:J

    .line 59
    iput-object p4, p0, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;->videoDetail:Lcom/bilibili/tv/api/video/BiliVideoDetail;

    .line 60
    return-void
.end method

.method static synthetic access$000(Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;)Z
    .locals 1

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;->isOperating:Z

    return v0
.end method

.method static synthetic access$002(Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;Z)Z
    .locals 0

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;->isOperating:Z

    return p1
.end method

.method static synthetic access$100(Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;Lmybl/FavoriteFolder;ZI)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;->toggleFavorite(Lmybl/FavoriteFolder;ZI)V

    return-void
.end method

.method static synthetic access$200(Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$300(Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;)Ljava/util/List;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;->favoriteFolders:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;)Lcom/bilibili/tv/ui/video/FavoriteMenuAdapter;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;->adapter:Lcom/bilibili/tv/ui/video/FavoriteMenuAdapter;

    return-object v0
.end method

.method static synthetic access$500(Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;->updateMainFavoriteStatus()V

    return-void
.end method

.method private loadFavoriteFolders()V
    .locals 10

    .prologue
    .line 136
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 137
    :cond_c
    const-string v0, "FavoriteMenuDialog"

    const-string v1, "Activity is null or finishing"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    :goto_13
    return-void

    .line 141
    :cond_14
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v0

    .line 142
    if-nez v0, :cond_2b

    .line 143
    const-string v0, "FavoriteMenuDialog"

    const-string v1, "BiliAccount is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;->activity:Landroid/app/Activity;

    const-string v1, "\u83b7\u53d6\u8d26\u53f7\u4fe1\u606f\u5931\u8d25"

    invoke-static {v0, v1}, Lbl/lr;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_13

    .line 148
    :cond_2b
    invoke-virtual {v0}, Lbl/mg;->d()J

    move-result-wide v2

    .line 149
    invoke-static {v0}, Lmybl/CookieUtil;->getFullCookieWithDevice(Lbl/mg;)Ljava/lang/String;

    move-result-object v9

    .line 151
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-gtz v0, :cond_48

    .line 152
    const-string v0, "FavoriteMenuDialog"

    const-string v1, "User not logged in"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;->activity:Landroid/app/Activity;

    const-string v1, "\u8d26\u53f7\u672a\u767b\u5f55"

    invoke-static {v0, v1}, Lbl/lr;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_13

    .line 157
    :cond_48
    const-class v0, Lmybl/MyBiliApiService;

    invoke-static {v0}, Lbl/vo;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmybl/MyBiliApiService;

    .line 158
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

    .line 159
    iget-wide v4, p0, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;->avid:J

    const/4 v6, 0x2

    const-string v7, "333.788"

    invoke-interface/range {v1 .. v9}, Lmybl/MyBiliApiService;->getCreatedFolderList(JJILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lbl/vp;

    move-result-object v0

    .line 161
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

    .line 163
    new-instance v1, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog$4;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog$4;-><init>(Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;)V

    invoke-virtual {v0, v1}, Lbl/vp;->a(Lretrofit2/Callback;)V

    goto/16 :goto_13
.end method

.method private toggleFavorite(Lmybl/FavoriteFolder;ZI)V
    .locals 8

    .prologue
    .line 258
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;->isOperating:Z

    .line 260
    const-class v0, Lcom/bilibili/tv/api/favorite/BiliFavoriteVideoApiService;

    invoke-static {v0}, Lbl/vo;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bilibili/tv/api/favorite/BiliFavoriteVideoApiService;

    .line 261
    iget-object v0, p0, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v0

    .line 262
    invoke-virtual {v0}, Lbl/mg;->e()Ljava/lang/String;

    move-result-object v2

    .line 263
    invoke-virtual {p1}, Lmybl/FavoriteFolder;->getFid()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 265
    if-eqz p2, :cond_68

    .line 266
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

    .line 267
    iget-wide v4, p0, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;->avid:J

    const-string v6, "0"

    invoke-interface/range {v1 .. v6}, Lcom/bilibili/tv/api/favorite/BiliFavoriteVideoApiService;->addVideoToList(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Lbl/vp;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog$5;

    invoke-direct {v1, p0, p1, p3}, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog$5;-><init>(Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;Lmybl/FavoriteFolder;I)V

    invoke-virtual {v0, v1}, Lbl/vp;->a(Lretrofit2/Callback;)V

    .line 338
    :goto_67
    return-void

    .line 302
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

    .line 303
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
    .line 341
    const/4 v1, 0x0

    .line 342
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

    .line 343
    invoke-virtual {v0}, Lmybl/FavoriteFolder;->isFavored()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 344
    const/4 v0, 0x1

    .line 349
    :goto_1a
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;->listener:Lcom/bilibili/tv/ui/video/FavoriteMenuDialog$OnFavoriteStatusChangedListener;

    if-eqz v1, :cond_23

    .line 350
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;->listener:Lcom/bilibili/tv/ui/video/FavoriteMenuDialog$OnFavoriteStatusChangedListener;

    invoke-interface {v1, v0}, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog$OnFavoriteStatusChangedListener;->onFavoriteStatusChanged(Z)V

    .line 352
    :cond_23
    return-void

    :cond_24
    move v0, v1

    goto :goto_1a
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/16 v5, 0x600

    const/4 v4, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 64
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 65
    invoke-virtual {p0, v3}, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;->requestWindowFeature(I)Z

    .line 66
    const v0, 0x7f0a0099

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;->setContentView(I)V

    .line 68
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 69
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 70
    invoke-virtual {v0, v5, v5}, Landroid/view/Window;->setFlags(II)V

    .line 74
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 75
    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 76
    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 77
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 79
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 80
    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 82
    const v0, 0x7f0801c4

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 83
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 84
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setFocusableInTouchMode(Z)V

    .line 86
    const v0, 0x7f0801c3

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 87
    new-instance v1, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog$1;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog$1;-><init>(Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    const v0, 0x7f0801c5

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    .line 95
    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v2, p0, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;->activity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$h;)V

    .line 96
    new-instance v1, Lcom/bilibili/tv/ui/video/FavoriteMenuAdapter;

    iget-object v2, p0, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;->favoriteFolders:Ljava/util/List;

    new-instance v3, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog$2;

    invoke-direct {v3, p0}, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog$2;-><init>(Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;)V

    invoke-direct {v1, v2, v3}, Lcom/bilibili/tv/ui/video/FavoriteMenuAdapter;-><init>(Ljava/util/List;Lcom/bilibili/tv/ui/video/FavoriteMenuAdapter$OnItemCheckedChangeListener;)V

    iput-object v1, p0, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;->adapter:Lcom/bilibili/tv/ui/video/FavoriteMenuAdapter;

    .line 104
    iget-object v1, p0, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;->adapter:Lcom/bilibili/tv/ui/video/FavoriteMenuAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 106
    invoke-direct {p0}, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;->loadFavoriteFolders()V

    .line 107
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x4

    if-ne p1, v0, :cond_8

    .line 112
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;->dismiss()V

    .line 113
    const/4 v0, 0x1

    .line 115
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
    .line 355
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;->listener:Lcom/bilibili/tv/ui/video/FavoriteMenuDialog$OnFavoriteStatusChangedListener;

    .line 356
    return-void
.end method

.method public show()V
    .locals 4

    .prologue
    .line 120
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 121
    const v0, 0x7f0801c5

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    .line 122
    if-eqz v0, :cond_24

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;->adapter:Lcom/bilibili/tv/ui/video/FavoriteMenuAdapter;

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;->adapter:Lcom/bilibili/tv/ui/video/FavoriteMenuAdapter;

    invoke-virtual {v1}, Lcom/bilibili/tv/ui/video/FavoriteMenuAdapter;->a()I

    move-result v1

    if-lez v1, :cond_24

    .line 123
    new-instance v1, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog$3;

    invoke-direct {v1, p0, v0}, Lcom/bilibili/tv/ui/video/FavoriteMenuDialog$3;-><init>(Lcom/bilibili/tv/ui/video/FavoriteMenuDialog;Landroid/support/v7/widget/RecyclerView;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v7/widget/RecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 133
    :cond_24
    return-void
.end method
