.class public Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;
.super Lcom/bilibili/tv/ui/base/BaseSideActivity;
.source "AuthSpaceSideActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$a;,
        Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$MenuItem;
    }
.end annotation


# static fields
.field private static final COLUMNS:I = 0x2


# instance fields
.field private c:Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$a;

.field private f:I

.field private g:Z

.field private h:Z

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
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 37
    invoke-direct {p0}, Lcom/bilibili/tv/ui/base/BaseSideActivity;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->menuItems:Ljava/util/List;

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->h:Z

    .line 43
    iput-boolean v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->g:Z

    .line 44
    iput v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->f:I

    .line 45
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->targetMid:J

    .line 46
    const-string v0, ""

    iput-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->targetUname:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;)Z
    .locals 1

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->h:Z

    return v0
.end method

.method static synthetic access$002(Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;Z)Z
    .locals 0

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->h:Z

    return p1
.end method

.method static synthetic access$100(Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;)Z
    .locals 1

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->g:Z

    return v0
.end method

.method static synthetic access$102(Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;Z)Z
    .locals 0

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->g:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$MenuItem;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->showVideoList(Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$MenuItem;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;)Landroid/support/v7/widget/RecyclerView;
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->j()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;)Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$a;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->c:Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$a;

    return-object v0
.end method

.method static synthetic access$300(Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;)I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->f:I

    return v0
.end method

.method static synthetic access$308(Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;)I
    .locals 2

    .prologue
    .line 37
    iget v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->f:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->f:I

    return v0
.end method

.method static synthetic access$400(Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;I)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->loadMenuPage(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->updateMenu()V

    return-void
.end method

.method static synthetic access$600(Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->menuItems:Ljava/util/List;

    return-object v0
.end method

.method private getSelectedView()Landroid/view/View;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 388
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->j()Landroid/support/v7/widget/RecyclerView;

    move-result-object v3

    .line 389
    if-nez v3, :cond_9

    move-object v0, v1

    .line 398
    :goto_8
    return-object v0

    .line 392
    :cond_9
    const/4 v0, 0x0

    :goto_a
    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1f

    .line 393
    invoke-virtual {v3, v0}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 394
    invoke-virtual {v2}, Landroid/view/View;->isSelected()Z

    move-result v4

    if-eqz v4, :cond_1c

    move-object v0, v2

    .line 395
    goto :goto_8

    .line 392
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_1f
    move-object v0, v1

    .line 398
    goto :goto_8
.end method

.method private isDescendantOfView(Landroid/view/View;Landroid/view/View;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 221
    if-eqz p1, :cond_5

    if-nez p2, :cond_a

    :cond_5
    move v0, v1

    .line 229
    :goto_6
    return v0

    .line 227
    :cond_7
    check-cast v0, Landroid/view/View;

    move-object p1, v0

    .line 223
    :cond_a
    if-eqz p1, :cond_18

    .line 224
    if-ne p1, p2, :cond_10

    const/4 v0, 0x1

    goto :goto_6

    .line 225
    :cond_10
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 226
    instance-of v2, v0, Landroid/view/View;

    if-nez v2, :cond_7

    :cond_18
    move v0, v1

    .line 229
    goto :goto_6
.end method

.method private loadMenu()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 240
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->menuItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 241
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->menuItems:Ljava/util/List;

    new-instance v1, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$MenuItem;

    const-wide/16 v2, -0x1

    const-string v4, "\u5168\u90e8\u89c6\u9891"

    invoke-direct {v1, v2, v3, v4, v6}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$MenuItem;-><init>(JLjava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    iput v5, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->f:I

    .line 243
    iput-boolean v5, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->g:Z

    .line 244
    iput-boolean v6, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->h:Z

    .line 245
    invoke-direct {p0, v5}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->loadMenuPage(I)V

    .line 246
    return-void
.end method

.method private loadMenuPage(I)V
    .locals 7

    .prologue
    .line 249
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->h:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->g:Z

    if-nez v0, :cond_9

    .line 328
    :cond_8
    :goto_8
    return-void

    .line 252
    :cond_9
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->h:Z

    .line 253
    invoke-static {p0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v1

    .line 254
    if-nez v1, :cond_19

    .line 255
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->h:Z

    .line 256
    invoke-direct {p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->updateMenu()V

    goto :goto_8

    .line 259
    :cond_19
    const-class v0, Lmybl/MyBiliApiService;

    invoke-static {v0}, Lbl/vo;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmybl/MyBiliApiService;

    invoke-virtual {v1}, Lbl/mg;->e()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->targetMid:J

    const/16 v4, 0x14

    const-string v6, "333.1387"

    move v5, p1

    invoke-interface/range {v0 .. v6}, Lmybl/MyBiliApiService;->getSeasonsSeriesList(Ljava/lang/String;JIILjava/lang/String;)Lbl/vp;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$2;

    invoke-direct {v1, p0, p1}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$2;-><init>(Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;I)V

    .line 260
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

    .line 439
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->h()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 440
    instance-of v1, v0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    if-nez v1, :cond_d

    .line 470
    :cond_c
    :goto_c
    return-void

    .line 444
    :cond_d
    check-cast v0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    .line 445
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->canSort()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 449
    new-instance v1, Lbl/SortMenuDialog;

    invoke-direct {v1, p0}, Lbl/SortMenuDialog;-><init>(Landroid/app/Activity;)V

    .line 451
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->getCurrentMode()I

    move-result v0

    if-nez v0, :cond_47

    .line 452
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

    .line 455
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->getSortOrder()Ljava/lang/String;

    move-result-object v3

    .line 452
    invoke-virtual {v1, v6, v0, v2, v3}, Lbl/SortMenuDialog;->addGroup(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    :goto_3b
    new-instance v0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$4;

    invoke-direct {v0, p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$4;-><init>(Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;)V

    invoke-virtual {v1, v0}, Lbl/SortMenuDialog;->setOnSortSelectedListener(Lbl/SortMenuDialog$OnSortSelectedListener;)V

    .line 469
    invoke-virtual {v1}, Lbl/SortMenuDialog;->show()V

    goto :goto_c

    .line 457
    :cond_47
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

    .line 460
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->getSortOrder()Ljava/lang/String;

    move-result-object v3

    .line 457
    invoke-virtual {v1, v6, v0, v2, v3}, Lbl/SortMenuDialog;->addGroup(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3b
.end method

.method private showVideoList(Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$MenuItem;)V
    .locals 7

    .prologue
    .line 371
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->selectedItem:Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$MenuItem;

    if-ne v0, p1, :cond_5

    .line 385
    :goto_4
    return-void

    .line 374
    :cond_5
    iput-object p1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->selectedItem:Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$MenuItem;

    .line 376
    iget v0, p1, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$MenuItem;->type:I

    if-nez v0, :cond_2a

    .line 378
    const-string v1, "all"

    iget-wide v2, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->targetMid:J

    const-wide/16 v4, -0x1

    iget-object v6, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->targetUname:Ljava/lang/String;

    invoke-static/range {v1 .. v6}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->newInstance(Ljava/lang/String;JJLjava/lang/String;)Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    move-result-object v0

    .line 384
    :goto_17
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f080091

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_4

    .line 379
    :cond_2a
    iget v0, p1, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$MenuItem;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3c

    .line 380
    const-string v1, "season"

    iget-wide v2, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->targetMid:J

    iget-wide v4, p1, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$MenuItem;->id:J

    iget-object v6, p1, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$MenuItem;->name:Ljava/lang/String;

    invoke-static/range {v1 .. v6}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->newInstance(Ljava/lang/String;JJLjava/lang/String;)Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    move-result-object v0

    goto :goto_17

    .line 382
    :cond_3c
    const-string v1, "series"

    iget-wide v2, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->targetMid:J

    iget-wide v4, p1, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$MenuItem;->id:J

    iget-object v6, p1, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$MenuItem;->name:Ljava/lang/String;

    invoke-static/range {v1 .. v6}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->newInstance(Ljava/lang/String;JJLjava/lang/String;)Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    move-result-object v0

    goto :goto_17
.end method

.method public static start(Landroid/content/Context;JLjava/lang/String;)V
    .locals 3

    .prologue
    .line 49
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 50
    const-string v1, "mid"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 51
    const-string v1, "uname"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 52
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 53
    return-void
.end method

.method private updateMenu()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v1, -0x1

    .line 331
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->c:Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$a;

    if-eqz v0, :cond_31

    .line 332
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->j()Landroid/support/v7/widget/RecyclerView;

    move-result-object v2

    .line 333
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    .line 335
    if-eqz v0, :cond_49

    .line 336
    invoke-virtual {v2, v0}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/view/View;)I

    move-result v0

    .line 340
    :goto_14
    iget-object v3, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->c:Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$a;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$a;->b(Z)V

    .line 341
    iget-object v3, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->c:Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$a;

    invoke-virtual {v3}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$a;->d()V

    .line 342
    if-eq v0, v1, :cond_4b

    iget-object v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->menuItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4b

    .line 343
    new-instance v1, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$3;

    invoke-direct {v1, p0, v2, v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$3;-><init>(Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;Landroid/support/v7/widget/RecyclerView;I)V

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    .line 365
    :cond_31
    :goto_31
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->menuItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_48

    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->selectedItem:Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$MenuItem;

    if-nez v0, :cond_48

    .line 366
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->menuItems:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$MenuItem;

    invoke-direct {p0, v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->showVideoList(Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$MenuItem;)V

    .line 368
    :cond_48
    return-void

    :cond_49
    move v0, v1

    .line 338
    goto :goto_14

    .line 362
    :cond_4b
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->c:Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$a;

    invoke-virtual {v0, v5}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$a;->b(Z)V

    goto :goto_31
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "mid"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->targetMid:J

    .line 67
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "uname"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->targetUname:Ljava/lang/String;

    .line 68
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->targetUname:Ljava/lang/String;

    if-nez v0, :cond_22

    const-string v0, ""

    iput-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->targetUname:Ljava/lang/String;

    .line 69
    :cond_22
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->targetUname:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_49

    const-string v0, "\u5168\u90e8\u89c6\u9891"

    move-object v1, v0

    .line 70
    :goto_2d
    const v0, 0x7f080065

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    const v0, 0x7f0800eb

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->b(Landroid/support/v7/widget/RecyclerView;)V

    .line 72
    invoke-direct {p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->loadMenu()V

    .line 73
    return-void

    .line 69
    :cond_49
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->targetUname:Ljava/lang/String;

    move-object v1, v0

    goto :goto_2d
.end method

.method public a(Lbl/agd;)V
    .locals 0

    .prologue
    .line 62
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 10

    .prologue
    const/16 v9, 0x14

    const/16 v8, 0x13

    const/4 v7, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x1

    .line 111
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->c:Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$a;

    if-nez v0, :cond_10

    .line 112
    invoke-super {p0, p1}, Lcom/bilibili/tv/ui/base/BaseSideActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 217
    :goto_f
    return v0

    .line 114
    :cond_10
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 115
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    .line 117
    if-nez v0, :cond_3f

    const/16 v1, 0x52

    if-ne v4, v1, :cond_3f

    .line 118
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    .line 119
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->h()Landroid/support/v4/app/Fragment;

    move-result-object v5

    .line 120
    if-eqz v1, :cond_3f

    if-eqz v5, :cond_3f

    invoke-virtual {v5}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_3f

    .line 121
    invoke-virtual {v5}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v5

    invoke-direct {p0, v1, v5}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->isDescendantOfView(Landroid/view/View;Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 122
    invoke-direct {p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->showSortMenu()V

    move v0, v2

    .line 123
    goto :goto_f

    .line 128
    :cond_3f
    if-nez v0, :cond_138

    .line 129
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    .line 130
    if-nez v1, :cond_4c

    .line 131
    invoke-super {p0, p1}, Lcom/bilibili/tv/ui/base/BaseSideActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_f

    .line 135
    :cond_4c
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->h()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 136
    instance-of v5, v0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    if-eqz v5, :cond_b4

    .line 137
    check-cast v0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    .line 140
    iget-object v5, v0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->attentionButton:Lcom/bilibili/tv/widget/DrawTextView;

    if-eqz v5, :cond_87

    iget-object v5, v0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->attentionButton:Lcom/bilibili/tv/widget/DrawTextView;

    invoke-virtual {v5}, Lcom/bilibili/tv/widget/DrawTextView;->isFocused()Z

    move-result v5

    if-eqz v5, :cond_87

    .line 141
    if-ne v4, v9, :cond_7d

    .line 143
    iget-object v5, v0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v5, :cond_87

    iget-object v5, v0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v5

    if-lez v5, :cond_87

    .line 144
    iget-object v5, v0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v5, v7}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 145
    if-eqz v5, :cond_87

    .line 146
    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    move v0, v2

    .line 147
    goto :goto_f

    .line 150
    :cond_7d
    const/16 v5, 0x15

    if-eq v4, v5, :cond_85

    const/16 v5, 0x16

    if-ne v4, v5, :cond_87

    :cond_85
    move v0, v2

    .line 152
    goto :goto_f

    .line 157
    :cond_87
    if-ne v4, v8, :cond_b4

    iget-object v5, v0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v5, :cond_b4

    .line 158
    iget-object v5, v0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView;->getFocusedChild()Landroid/view/View;

    move-result-object v5

    .line 159
    if-eqz v5, :cond_b4

    .line 160
    iget-object v6, v0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v6, v5}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/view/View;)I

    move-result v5

    .line 162
    if-ltz v5, :cond_b4

    const/4 v6, 0x2

    if-ge v5, v6, :cond_b4

    .line 164
    iget-object v5, v0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->attentionButton:Lcom/bilibili/tv/widget/DrawTextView;

    if-eqz v5, :cond_b4

    iget-object v5, v0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->attentionButton:Lcom/bilibili/tv/widget/DrawTextView;

    invoke-virtual {v5}, Lcom/bilibili/tv/widget/DrawTextView;->getVisibility()I

    move-result v5

    if-nez v5, :cond_b4

    .line 165
    iget-object v0, v0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->attentionButton:Lcom/bilibili/tv/widget/DrawTextView;

    invoke-virtual {v0}, Lcom/bilibili/tv/widget/DrawTextView;->requestFocus()Z

    move v0, v2

    .line 166
    goto/16 :goto_f

    .line 173
    :cond_b4
    packed-switch v4, :pswitch_data_142

    .line 194
    :cond_b7
    :goto_b7
    if-ne v4, v9, :cond_124

    const/16 v0, 0x82

    .line 198
    :goto_bb
    if-eq v0, v3, :cond_138

    .line 200
    :try_start_bd
    invoke-virtual {v1, v0}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v0

    .line 201
    if-eqz v0, :cond_138

    .line 202
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->j()Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    .line 203
    if-eqz v1, :cond_138

    invoke-direct {p0, v0, v1}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->isDescendantOfView(Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_138

    .line 204
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->h()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 205
    instance-of v1, v0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    if-eqz v1, :cond_138

    .line 206
    check-cast v0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    .line 207
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->isLoading()Z
    :try_end_dc
    .catch Ljava/lang/Exception; {:try_start_bd .. :try_end_dc} :catch_137

    move-result v0

    if-eqz v0, :cond_138

    move v0, v2

    .line 208
    goto/16 :goto_f

    .line 175
    :pswitch_e2
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    const-string v5, "right"

    invoke-static {v0, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b7

    .line 176
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->c:Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$a;

    invoke-virtual {v0, v7}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$a;->b(Z)V

    goto :goto_b7

    .line 180
    :pswitch_fc
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->h()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 181
    if-nez v0, :cond_105

    move v0, v2

    .line 182
    goto/16 :goto_f

    .line 184
    :cond_105
    instance-of v5, v0, Lbl/adw;

    if-eqz v5, :cond_114

    check-cast v0, Lbl/adw;

    invoke-virtual {v0}, Lbl/adw;->c()Z

    move-result v0

    if-nez v0, :cond_114

    move v0, v2

    .line 185
    goto/16 :goto_f

    .line 187
    :cond_114
    instance-of v0, v1, Lcom/bilibili/tv/widget/side/SideLeftSelectLinearLayout;

    if-eqz v0, :cond_b7

    move-object v0, v1

    .line 188
    check-cast v0, Lcom/bilibili/tv/widget/side/SideLeftSelectLinearLayout;

    invoke-virtual {v0}, Lcom/bilibili/tv/widget/side/SideLeftSelectLinearLayout;->c()V

    .line 189
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->c:Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$a;

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$a;->b(Z)V

    goto :goto_b7

    .line 195
    :cond_124
    if-ne v4, v8, :cond_129

    const/16 v0, 0x21

    goto :goto_bb

    .line 196
    :cond_129
    const/16 v0, 0x15

    if-ne v4, v0, :cond_130

    const/16 v0, 0x11

    goto :goto_bb

    .line 197
    :cond_130
    const/16 v0, 0x16

    if-ne v4, v0, :cond_13e

    const/16 v0, 0x42

    goto :goto_bb

    .line 213
    :catch_137
    move-exception v0

    .line 217
    :cond_138
    invoke-super {p0, p1}, Lcom/bilibili/tv/ui/base/BaseSideActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto/16 :goto_f

    :cond_13e
    move v0, v3

    goto/16 :goto_bb

    .line 173
    nop

    :pswitch_data_142
    .packed-switch 0x15
        :pswitch_e2
        :pswitch_fc
    .end packed-switch
.end method

.method public g()I
    .locals 1

    .prologue
    .line 57
    const v0, 0x7f0a008c

    return v0
.end method

.method public getCurrentMode()I
    .locals 1

    .prologue
    .line 434
    iget-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->selectedItem:Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$MenuItem;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    .line 435
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
    .line 418
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->h()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 419
    instance-of v1, v0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    if-eqz v1, :cond_f

    .line 420
    check-cast v0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->getSortOrder()Ljava/lang/String;

    move-result-object v0

    .line 422
    :goto_e
    return-object v0

    :cond_f
    const-string v0, "default"

    goto :goto_e
.end method

.method public h()Landroid/support/v4/app/Fragment;
    .locals 2

    .prologue
    .line 234
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    if-nez v0, :cond_8

    .line 235
    const/4 v0, 0x0

    .line 236
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
    .line 426
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->h()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 427
    instance-of v1, v0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    if-eqz v1, :cond_f

    .line 428
    check-cast v0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->isSeasonOrSeriesMode()Z

    move-result v0

    .line 430
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

    .line 77
    invoke-super {p0, p1}, Lcom/bilibili/tv/ui/base/BaseSideActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 78
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->j()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/live/LiveLeftLinearLayoutManger;

    invoke-direct {v1, p0, v3, v2}, Lcom/bilibili/tv/ui/live/LiveLeftLinearLayoutManger;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$h;)V

    .line 79
    new-instance v0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$a;

    iget-object v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->menuItems:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$a;-><init>(Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;Ljava/util/List;)V

    iput-object v0, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->c:Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$a;

    .line 80
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->j()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    iget-object v1, p0, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->c:Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$a;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 81
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->j()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setFocusable(Z)V

    .line 82
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->j()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 83
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->j()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$1;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity$1;-><init>(Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView$m;)V

    .line 107
    return-void
.end method

.method public setSortOrder(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 402
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->getSortOrder()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 415
    :cond_a
    :goto_a
    return-void

    .line 406
    :cond_b
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->h()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 407
    instance-of v1, v0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    if-eqz v1, :cond_a

    .line 408
    check-cast v0, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;

    .line 409
    invoke-direct {p0}, Lcom/bilibili/tv/ui/auth/AuthSpaceSideActivity;->getSelectedView()Landroid/view/View;

    move-result-object v1

    .line 410
    invoke-virtual {v0, p1}, Lcom/bilibili/tv/ui/auth/AuthSpaceVideoFragment;->setSortOrder(Ljava/lang/String;)V

    .line 411
    if-eqz v1, :cond_a

    .line 412
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    goto :goto_a
.end method
