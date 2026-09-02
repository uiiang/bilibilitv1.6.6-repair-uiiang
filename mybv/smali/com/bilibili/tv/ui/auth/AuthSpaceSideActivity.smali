.class public Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;
.super Lcom/bilibili/tv/ui/base/BaseSideActivity;
.source "AuthSpaceSideActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$MenuItem;,
        Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$a;
    }
.end annotation


# static fields
.field private static final COLUMNS:I = 0x2


# instance fields
.field private c:Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$a;

.field private f:I

.field private g:Z

.field private h:Z

.field private locateAid:J

.field private locateBvid:Ljava/lang/String;

.field private locateTitle:Ljava/lang/String;

.field private menuItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$MenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private selectedItem:Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$MenuItem;

.field private targetMid:J

.field private targetUname:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 39
    invoke-direct {p0}, Lcom/bilibili/tv/ui/base/BaseSideActivity;-><init>()V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->menuItems:Ljava/util/List;

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->h:Z

    .line 45
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->g:Z

    .line 46
    iput v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->f:I

    .line 47
    iput-wide v4, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->targetMid:J

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->targetUname:Ljava/lang/String;

    .line 50
    iput-wide v4, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->locateAid:J

    .line 51
    iput-object v2, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->locateBvid:Ljava/lang/String;

    .line 52
    iput-object v2, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->locateTitle:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;)Z
    .locals 1

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->h:Z

    return v0
.end method

.method static synthetic access$002(Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;Z)Z
    .locals 0

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->h:Z

    return p1
.end method

.method static synthetic access$100(Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;)Z
    .locals 1

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->g:Z

    return v0
.end method

.method static synthetic access$102(Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;Z)Z
    .locals 0

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->g:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$MenuItem;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->showVideoList(Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$MenuItem;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;)Landroid/support/v7/widget/RecyclerView;
    .locals 1

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->j()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;)Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$a;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->c:Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$a;

    return-object v0
.end method

.method static synthetic access$300(Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;)I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->f:I

    return v0
.end method

.method static synthetic access$308(Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;)I
    .locals 2

    .prologue
    .line 39
    iget v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->f:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->f:I

    return v0
.end method

.method static synthetic access$400(Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;I)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->loadMenuPage(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->updateMenu()V

    return-void
.end method

.method static synthetic access$600(Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->menuItems:Ljava/util/List;

    return-object v0
.end method

.method private getSelectedView()Landroid/view/View;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 482
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->j()Landroid/support/v7/widget/RecyclerView;

    move-result-object v3

    .line 483
    if-nez v3, :cond_9

    move-object v0, v1

    .line 492
    :goto_8
    return-object v0

    .line 486
    :cond_9
    const/4 v0, 0x0

    :goto_a
    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1f

    .line 487
    invoke-virtual {v3, v0}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 488
    invoke-virtual {v2}, Landroid/view/View;->isSelected()Z

    move-result v4

    if-eqz v4, :cond_1c

    move-object v0, v2

    .line 489
    goto :goto_8

    .line 486
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_1f
    move-object v0, v1

    .line 492
    goto :goto_8
.end method

.method private isDescendantOfView(Landroid/view/View;Landroid/view/View;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 297
    if-eqz p1, :cond_5

    if-nez p2, :cond_a

    :cond_5
    move v0, v1

    .line 308
    :goto_6
    return v0

    .line 306
    :cond_7
    check-cast v0, Landroid/view/View;

    move-object p1, v0

    .line 300
    :cond_a
    if-eqz p1, :cond_18

    .line 301
    if-ne p1, p2, :cond_10

    .line 302
    const/4 v0, 0x1

    goto :goto_6

    .line 303
    :cond_10
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 304
    instance-of v2, v0, Landroid/view/View;

    if-nez v2, :cond_7

    :cond_18
    move v0, v1

    .line 308
    goto :goto_6
.end method

.method private loadMenu()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 319
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->menuItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 320
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->menuItems:Ljava/util/List;

    new-instance v1, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$MenuItem;

    const-wide/16 v2, -0x1

    const-string v4, "\u5168\u90e8\u89c6\u9891"

    invoke-direct {v1, v2, v3, v4, v6}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$MenuItem;-><init>(JLjava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 321
    iput v5, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->f:I

    .line 322
    iput-boolean v5, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->g:Z

    .line 323
    iput-boolean v6, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->h:Z

    .line 324
    invoke-direct {p0, v5}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->loadMenuPage(I)V

    .line 325
    return-void
.end method

.method private loadMenuPage(I)V
    .locals 8

    .prologue
    .line 328
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->h:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->g:Z

    if-nez v0, :cond_9

    .line 415
    :cond_8
    :goto_8
    return-void

    .line 331
    :cond_9
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->h:Z

    .line 332
    invoke-static {p0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v0

    .line 333
    if-nez v0, :cond_19

    .line 334
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->h:Z

    .line 335
    invoke-direct {p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->updateMenu()V

    goto :goto_8

    .line 338
    :cond_19
    invoke-static {v0}, Lmybl/CookieUtil;->getFullCookieWithDevice(Lbl/mg;)Ljava/lang/String;

    move-result-object v7

    .line 339
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://api.bilibili.com/x/polymer/web-space/seasons_series_list?mid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->targetMid:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&page_size=20&page_num="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&web_location=333.1387"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 341
    const-string v1, "AuthSpaceSide"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadMenuPage URL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lmybl/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    const-class v0, Lmybl/MyBiliApiService;

    invoke-static {v0}, Lbl/vo;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmybl/MyBiliApiService;

    iget-wide v2, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->targetMid:J

    const/16 v4, 0x14

    const-string v6, "333.1387"

    move v5, p1

    invoke-interface/range {v1 .. v7}, Lmybl/MyBiliApiService;->getSeasonsSeriesList(JIILjava/lang/String;Ljava/lang/String;)Lbl/vp;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$2;

    invoke-direct {v1, p0, p1}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$2;-><init>(Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;I)V

    .line 344
    invoke-virtual {v0, v1}, Lbl/vp;->a(Lretrofit2/Callback;)V

    goto :goto_8
.end method

.method private showSortMenu()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 534
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->h()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 535
    instance-of v1, v0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    if-nez v1, :cond_d

    .line 569
    :cond_c
    :goto_c
    return-void

    .line 539
    :cond_d
    check-cast v0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    .line 540
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->canSort()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 544
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->getCurrentMode()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_c

    .line 548
    new-instance v1, Lbl/SortMenuDialog;

    invoke-direct {v1, p0}, Lbl/SortMenuDialog;-><init>(Landroid/app/Activity;)V

    .line 550
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->getCurrentMode()I

    move-result v0

    if-nez v0, :cond_4e

    .line 551
    new-array v0, v3, [Ljava/lang/String;

    const-string v2, "\u6700\u65b0\u53d1\u5e03"

    aput-object v2, v0, v4

    const-string v2, "\u6700\u591a\u64ad\u653e"

    aput-object v2, v0, v5

    new-array v2, v3, [Ljava/lang/String;

    const-string v3, "pubdate"

    aput-object v3, v2, v4

    const-string v3, "click"

    aput-object v3, v2, v5

    .line 554
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->getSortOrder()Ljava/lang/String;

    move-result-object v3

    .line 551
    invoke-virtual {v1, v6, v0, v2, v3}, Lbl/SortMenuDialog;->addGroup(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    :goto_42
    new-instance v0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$4;

    invoke-direct {v0, p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$4;-><init>(Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;)V

    invoke-virtual {v1, v0}, Lbl/SortMenuDialog;->setOnSortSelectedListener(Lbl/SortMenuDialog$OnSortSelectedListener;)V

    .line 568
    invoke-virtual {v1}, Lbl/SortMenuDialog;->show()V

    goto :goto_c

    .line 556
    :cond_4e
    new-array v0, v3, [Ljava/lang/String;

    const-string v2, "\u9ed8\u8ba4\u6392\u5e8f"

    aput-object v2, v0, v4

    const-string v2, "\u5012\u5e8f\u6392\u5e8f"

    aput-object v2, v0, v5

    new-array v2, v3, [Ljava/lang/String;

    const-string v3, "default"

    aput-object v3, v2, v4

    const-string v3, "reverse"

    aput-object v3, v2, v5

    .line 559
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->getSortOrder()Ljava/lang/String;

    move-result-object v3

    .line 556
    invoke-virtual {v1, v6, v0, v2, v3}, Lbl/SortMenuDialog;->addGroup(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_42
.end method

.method private showVideoList(Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$MenuItem;)V
    .locals 11

    .prologue
    const-wide/16 v4, -0x1

    .line 458
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->selectedItem:Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$MenuItem;

    if-ne v0, p1, :cond_7

    .line 479
    :goto_6
    return-void

    .line 461
    :cond_7
    iput-object p1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->selectedItem:Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$MenuItem;

    .line 463
    iget v0, p1, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$MenuItem;->type:I

    if-nez v0, :cond_5e

    .line 464
    invoke-static {p0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v0

    .line 465
    invoke-static {p0}, Lbl/abd;->get_space_dynamic_mode(Landroid/content/Context;)I

    move-result v1

    .line 466
    if-eqz v0, :cond_52

    invoke-virtual {v0}, Lbl/mg;->a()Z

    move-result v0

    if-eqz v0, :cond_52

    if-nez v1, :cond_52

    const-string v1, "dynamic"

    .line 468
    :goto_21
    const-string v0, "all"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55

    iget-wide v2, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->locateAid:J

    const-wide/16 v6, 0x0

    cmp-long v0, v2, v6

    if-lez v0, :cond_55

    .line 469
    iget-wide v2, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->targetMid:J

    iget-object v6, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->targetUname:Ljava/lang/String;

    iget-wide v7, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->locateAid:J

    iget-object v9, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->locateBvid:Ljava/lang/String;

    iget-object v10, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->locateTitle:Ljava/lang/String;

    invoke-static/range {v1 .. v10}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->newInstance(Ljava/lang/String;JJLjava/lang/String;JLjava/lang/String;Ljava/lang/String;)Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    move-result-object v0

    .line 478
    :goto_3f
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f080091

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_6

    .line 466
    :cond_52
    const-string v1, "all"

    goto :goto_21

    .line 471
    :cond_55
    iget-wide v2, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->targetMid:J

    iget-object v6, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->targetUname:Ljava/lang/String;

    invoke-static/range {v1 .. v6}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->newInstance(Ljava/lang/String;JJLjava/lang/String;)Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    move-result-object v0

    goto :goto_3f

    .line 473
    :cond_5e
    iget v0, p1, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$MenuItem;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_70

    .line 474
    const-string v1, "season"

    iget-wide v2, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->targetMid:J

    iget-wide v4, p1, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$MenuItem;->id:J

    iget-object v6, p1, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$MenuItem;->name:Ljava/lang/String;

    invoke-static/range {v1 .. v6}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->newInstance(Ljava/lang/String;JJLjava/lang/String;)Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    move-result-object v0

    goto :goto_3f

    .line 476
    :cond_70
    const-string v1, "series"

    iget-wide v2, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->targetMid:J

    iget-wide v4, p1, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$MenuItem;->id:J

    iget-object v6, p1, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$MenuItem;->name:Ljava/lang/String;

    invoke-static/range {v1 .. v6}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->newInstance(Ljava/lang/String;JJLjava/lang/String;)Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    move-result-object v0

    goto :goto_3f
.end method

.method public static start(Landroid/content/Context;JLjava/lang/String;)V
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 55
    const-wide/16 v4, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v7, v6

    invoke-static/range {v0 .. v7}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->start(Landroid/content/Context;JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method public static start(Landroid/content/Context;JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 59
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 60
    const-string v1, "mid"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 61
    const-string v1, "uname"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 62
    const-string v1, "locate_aid"

    invoke-virtual {v0, v1, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 63
    const-string v1, "locate_bvid"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 64
    const-string v1, "locate_title"

    invoke-virtual {v0, v1, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 65
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 66
    return-void
.end method

.method private updateMenu()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v1, -0x1

    .line 418
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->c:Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$a;

    if-eqz v0, :cond_31

    .line 419
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->j()Landroid/support/v7/widget/RecyclerView;

    move-result-object v2

    .line 420
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    .line 422
    if-eqz v0, :cond_49

    .line 423
    invoke-virtual {v2, v0}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/view/View;)I

    move-result v0

    .line 427
    :goto_14
    iget-object v3, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->c:Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$a;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$a;->b(Z)V

    .line 428
    iget-object v3, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->c:Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$a;

    invoke-virtual {v3}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$a;->d()V

    .line 429
    if-eq v0, v1, :cond_4b

    iget-object v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->menuItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4b

    .line 430
    new-instance v1, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$3;

    invoke-direct {v1, p0, v2, v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$3;-><init>(Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;Landroid/support/v7/widget/RecyclerView;I)V

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    .line 452
    :cond_31
    :goto_31
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->menuItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_48

    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->selectedItem:Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$MenuItem;

    if-nez v0, :cond_48

    .line 453
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->menuItems:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$MenuItem;

    invoke-direct {p0, v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->showVideoList(Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$MenuItem;)V

    .line 455
    :cond_48
    return-void

    :cond_49
    move v0, v1

    .line 425
    goto :goto_14

    .line 449
    :cond_4b
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->c:Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$a;

    invoke-virtual {v0, v5}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$a;->b(Z)V

    goto :goto_31
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 79
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "mid"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->targetMid:J

    .line 80
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "uname"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->targetUname:Ljava/lang/String;

    .line 81
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->targetUname:Ljava/lang/String;

    if-nez v0, :cond_22

    .line 82
    const-string v0, ""

    iput-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->targetUname:Ljava/lang/String;

    .line 83
    :cond_22
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "locate_aid"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->locateAid:J

    .line 84
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "locate_bvid"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->locateBvid:Ljava/lang/String;

    .line 85
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "locate_title"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->locateTitle:Ljava/lang/String;

    .line 86
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->targetUname:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6d

    const-string v0, "\u5168\u90e8\u89c6\u9891"

    move-object v1, v0

    .line 87
    :goto_51
    const v0, 0x7f080065

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    const v0, 0x7f0800eb

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->b(Landroid/support/v7/widget/RecyclerView;)V

    .line 89
    invoke-direct {p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->loadMenu()V

    .line 90
    return-void

    .line 86
    :cond_6d
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->targetUname:Ljava/lang/String;

    move-object v1, v0

    goto :goto_51
.end method

.method public a(Lbl/agd;)V
    .locals 0

    .prologue
    .line 75
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 10

    .prologue
    const/16 v9, 0x15

    const/16 v8, 0x16

    const/16 v7, 0x14

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 128
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->c:Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$a;

    if-nez v0, :cond_11

    .line 129
    invoke-super {p0, p1}, Lcom/bilibili/tv/ui/base/BaseSideActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 293
    :goto_10
    return v0

    .line 131
    :cond_11
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 132
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    .line 134
    if-nez v0, :cond_40

    const/16 v1, 0x52

    if-ne v5, v1, :cond_40

    .line 135
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    .line 136
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->h()Landroid/support/v4/app/Fragment;

    move-result-object v2

    .line 137
    if-eqz v1, :cond_40

    if-eqz v2, :cond_40

    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_40

    .line 138
    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->isDescendantOfView(Landroid/view/View;Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 139
    invoke-direct {p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->showSortMenu()V

    move v0, v3

    .line 140
    goto :goto_10

    .line 145
    :cond_40
    if-nez v0, :cond_1e1

    .line 146
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v2

    .line 147
    if-nez v2, :cond_4d

    .line 148
    invoke-super {p0, p1}, Lcom/bilibili/tv/ui/base/BaseSideActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_10

    .line 152
    :cond_4d
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->h()Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 153
    instance-of v0, v1, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    if-eqz v0, :cond_15d

    move-object v0, v1

    .line 154
    check-cast v0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    .line 157
    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_a0

    .line 158
    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v2, v1}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->isDescendantOfView(Landroid/view/View;Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_a0

    move v1, v3

    .line 159
    :goto_69
    if-eqz v1, :cond_78

    .line 161
    const/16 v1, 0x13

    if-eq v5, v1, :cond_75

    if-eq v5, v7, :cond_75

    if-eq v5, v9, :cond_75

    if-ne v5, v8, :cond_78

    .line 163
    :cond_75
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->onUserNavigate()V

    .line 168
    :cond_78
    iget-object v1, v0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->attentionButton:Lcom/bilibili/tv/widget/DrawTextView;

    if-eqz v1, :cond_bc

    iget-object v1, v0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->attentionButton:Lcom/bilibili/tv/widget/DrawTextView;

    invoke-virtual {v1}, Lcom/bilibili/tv/widget/DrawTextView;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_bc

    .line 169
    if-ne v5, v7, :cond_a2

    .line 171
    iget-object v1, v0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v1, :cond_bc

    iget-object v1, v0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_bc

    .line 172
    iget-object v1, v0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v4}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 173
    if-eqz v1, :cond_bc

    .line 174
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    move v0, v3

    .line 175
    goto/16 :goto_10

    :cond_a0
    move v1, v4

    .line 158
    goto :goto_69

    .line 178
    :cond_a2
    if-eq v5, v9, :cond_a6

    if-ne v5, v8, :cond_bc

    .line 180
    :cond_a6
    if-ne v5, v8, :cond_b9

    iget-object v1, v0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->locateButton:Lcom/bilibili/tv/widget/DrawTextView;

    if-eqz v1, :cond_b9

    iget-object v1, v0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->locateButton:Lcom/bilibili/tv/widget/DrawTextView;

    .line 181
    invoke-virtual {v1}, Lcom/bilibili/tv/widget/DrawTextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_b9

    .line 182
    iget-object v0, v0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->locateButton:Lcom/bilibili/tv/widget/DrawTextView;

    invoke-virtual {v0}, Lcom/bilibili/tv/widget/DrawTextView;->requestFocus()Z

    :cond_b9
    move v0, v3

    .line 184
    goto/16 :goto_10

    .line 189
    :cond_bc
    iget-object v1, v0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->locateButton:Lcom/bilibili/tv/widget/DrawTextView;

    if-eqz v1, :cond_102

    iget-object v1, v0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->locateButton:Lcom/bilibili/tv/widget/DrawTextView;

    invoke-virtual {v1}, Lcom/bilibili/tv/widget/DrawTextView;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_102

    .line 190
    if-ne v5, v9, :cond_de

    .line 192
    iget-object v1, v0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->attentionButton:Lcom/bilibili/tv/widget/DrawTextView;

    if-eqz v1, :cond_db

    iget-object v1, v0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->attentionButton:Lcom/bilibili/tv/widget/DrawTextView;

    invoke-virtual {v1}, Lcom/bilibili/tv/widget/DrawTextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_db

    .line 193
    iget-object v0, v0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->attentionButton:Lcom/bilibili/tv/widget/DrawTextView;

    invoke-virtual {v0}, Lcom/bilibili/tv/widget/DrawTextView;->requestFocus()Z

    :cond_db
    move v0, v3

    .line 195
    goto/16 :goto_10

    .line 196
    :cond_de
    if-ne v5, v7, :cond_fd

    .line 198
    iget-object v1, v0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v1, :cond_fa

    iget-object v1, v0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_fa

    .line 199
    iget-object v0, v0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 200
    if-eqz v0, :cond_fa

    .line 201
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    move v0, v3

    .line 202
    goto/16 :goto_10

    :cond_fa
    move v0, v3

    .line 205
    goto/16 :goto_10

    .line 206
    :cond_fd
    if-ne v5, v8, :cond_102

    move v0, v3

    .line 208
    goto/16 :goto_10

    .line 213
    :cond_102
    const/16 v1, 0x13

    if-ne v5, v1, :cond_14e

    iget-object v1, v0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v1, :cond_14e

    .line 214
    iget-object v1, v0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getFocusedChild()Landroid/view/View;

    move-result-object v1

    .line 215
    if-eqz v1, :cond_14e

    .line 216
    iget-object v6, v0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v6, v1}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/view/View;)I

    move-result v1

    .line 218
    if-ltz v1, :cond_14e

    const/4 v6, 0x2

    if-ge v1, v6, :cond_14e

    .line 220
    invoke-virtual {v0, v3}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->locateLoadByKeyEvent(Z)Z

    move-result v1

    if-eqz v1, :cond_126

    move v0, v3

    .line 221
    goto/16 :goto_10

    .line 224
    :cond_126
    iget-object v1, v0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->attentionButton:Lcom/bilibili/tv/widget/DrawTextView;

    if-eqz v1, :cond_13a

    iget-object v1, v0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->attentionButton:Lcom/bilibili/tv/widget/DrawTextView;

    invoke-virtual {v1}, Lcom/bilibili/tv/widget/DrawTextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_13a

    .line 225
    iget-object v0, v0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->attentionButton:Lcom/bilibili/tv/widget/DrawTextView;

    invoke-virtual {v0}, Lcom/bilibili/tv/widget/DrawTextView;->requestFocus()Z

    move v0, v3

    .line 226
    goto/16 :goto_10

    .line 229
    :cond_13a
    iget-object v1, v0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->locateButton:Lcom/bilibili/tv/widget/DrawTextView;

    if-eqz v1, :cond_14e

    iget-object v1, v0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->locateButton:Lcom/bilibili/tv/widget/DrawTextView;

    invoke-virtual {v1}, Lcom/bilibili/tv/widget/DrawTextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_14e

    .line 230
    iget-object v0, v0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->locateButton:Lcom/bilibili/tv/widget/DrawTextView;

    invoke-virtual {v0}, Lcom/bilibili/tv/widget/DrawTextView;->requestFocus()Z

    move v0, v3

    .line 231
    goto/16 :goto_10

    .line 238
    :cond_14e
    if-ne v5, v7, :cond_15d

    iget-object v1, v0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v1, :cond_15d

    .line 239
    invoke-virtual {v0, v4}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->locateLoadByKeyEvent(Z)Z

    move-result v0

    if-eqz v0, :cond_15d

    move v0, v3

    .line 240
    goto/16 :goto_10

    .line 245
    :cond_15d
    packed-switch v5, :pswitch_data_1e8

    .line 265
    :cond_160
    :goto_160
    const/4 v0, -0x1

    .line 266
    if-ne v5, v7, :cond_1cf

    .line 267
    const/16 v0, 0x82

    .line 274
    :cond_165
    :goto_165
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1e1

    .line 276
    :try_start_168
    invoke-virtual {v2, v0}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v0

    .line 277
    if-eqz v0, :cond_1e1

    .line 278
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->j()Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    .line 279
    if-eqz v1, :cond_1e1

    invoke-direct {p0, v0, v1}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->isDescendantOfView(Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1e1

    .line 280
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->h()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 281
    instance-of v1, v0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    if-eqz v1, :cond_1e1

    .line 282
    check-cast v0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    .line 283
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->isLoading()Z
    :try_end_187
    .catch Ljava/lang/Exception; {:try_start_168 .. :try_end_187} :catch_1e0

    move-result v0

    if-eqz v0, :cond_1e1

    move v0, v3

    .line 284
    goto/16 :goto_10

    .line 247
    :pswitch_18d
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    const-string v1, "right"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_160

    .line 248
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->c:Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$a;

    invoke-virtual {v0, v4}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$a;->b(Z)V

    goto :goto_160

    .line 252
    :pswitch_1a7
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->h()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 253
    if-nez v0, :cond_1b0

    move v0, v3

    .line 254
    goto/16 :goto_10

    .line 256
    :cond_1b0
    instance-of v1, v0, Lbl/adw;

    if-eqz v1, :cond_1bf

    check-cast v0, Lbl/adw;

    invoke-virtual {v0}, Lbl/adw;->c()Z

    move-result v0

    if-nez v0, :cond_1bf

    move v0, v3

    .line 257
    goto/16 :goto_10

    .line 259
    :cond_1bf
    instance-of v0, v2, Lcom/bilibili/tv/widget/side/SideLeftSelectLinearLayout;

    if-eqz v0, :cond_160

    move-object v0, v2

    .line 260
    check-cast v0, Lcom/bilibili/tv/widget/side/SideLeftSelectLinearLayout;

    invoke-virtual {v0}, Lcom/bilibili/tv/widget/side/SideLeftSelectLinearLayout;->c()V

    .line 261
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->c:Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$a;

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$a;->b(Z)V

    goto :goto_160

    .line 268
    :cond_1cf
    const/16 v1, 0x13

    if-ne v5, v1, :cond_1d6

    .line 269
    const/16 v0, 0x21

    goto :goto_165

    .line 270
    :cond_1d6
    if-ne v5, v9, :cond_1db

    .line 271
    const/16 v0, 0x11

    goto :goto_165

    .line 272
    :cond_1db
    if-ne v5, v8, :cond_165

    .line 273
    const/16 v0, 0x42

    goto :goto_165

    .line 289
    :catch_1e0
    move-exception v0

    .line 293
    :cond_1e1
    invoke-super {p0, p1}, Lcom/bilibili/tv/ui/base/BaseSideActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto/16 :goto_10

    .line 245
    nop

    :pswitch_data_1e8
    .packed-switch 0x15
        :pswitch_18d
        :pswitch_1a7
    .end packed-switch
.end method

.method public g()I
    .locals 1

    .prologue
    .line 70
    const v0, 0x7f0a008c

    return v0
.end method

.method public getCurrentMode()I
    .locals 1

    .prologue
    .line 528
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->selectedItem:Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$MenuItem;

    if-nez v0, :cond_6

    .line 529
    const/4 v0, 0x0

    .line 530
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->selectedItem:Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$MenuItem;

    iget v0, v0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$MenuItem;->type:I

    goto :goto_5
.end method

.method public getSortOrder()Ljava/lang/String;
    .locals 2

    .prologue
    .line 512
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->h()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 513
    instance-of v1, v0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    if-eqz v1, :cond_f

    .line 514
    check-cast v0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->getSortOrder()Ljava/lang/String;

    move-result-object v0

    .line 516
    :goto_e
    return-object v0

    :cond_f
    const-string v0, "default"

    goto :goto_e
.end method

.method public h()Landroid/support/v4/app/Fragment;
    .locals 2

    .prologue
    .line 313
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    if-nez v0, :cond_8

    .line 314
    const/4 v0, 0x0

    .line 315
    :goto_7
    return-object v0

    :cond_8
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f080091

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    goto :goto_7
.end method

.method public isSeasonOrSeriesMode()Z
    .locals 2

    .prologue
    .line 520
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->h()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 521
    instance-of v1, v0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    if-eqz v1, :cond_f

    .line 522
    check-cast v0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->isSeasonOrSeriesMode()Z

    move-result v0

    .line 524
    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
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

    .line 94
    invoke-super {p0, p1}, Lcom/bilibili/tv/ui/base/BaseSideActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 95
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->j()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/live/LiveLeftLinearLayoutManger;

    invoke-direct {v1, p0, v3, v2}, Lcom/bilibili/tv/ui/live/LiveLeftLinearLayoutManger;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$h;)V

    .line 96
    new-instance v0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$a;

    iget-object v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->menuItems:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$a;-><init>(Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;Ljava/util/List;)V

    iput-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->c:Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$a;

    .line 97
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->j()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    iget-object v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->c:Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$a;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 98
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->j()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setFocusable(Z)V

    .line 99
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->j()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 100
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->j()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$1;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$1;-><init>(Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView$m;)V

    .line 124
    return-void
.end method

.method public setSortOrder(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 496
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->getSortOrder()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 509
    :cond_a
    :goto_a
    return-void

    .line 500
    :cond_b
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->h()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 501
    instance-of v1, v0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    if-eqz v1, :cond_a

    .line 502
    check-cast v0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    .line 503
    invoke-direct {p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->getSelectedView()Landroid/view/View;

    move-result-object v1

    .line 504
    invoke-virtual {v0, p1}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->setSortOrder(Ljava/lang/String;)V

    .line 505
    if-eqz v1, :cond_a

    .line 506
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    goto :goto_a
.end method
