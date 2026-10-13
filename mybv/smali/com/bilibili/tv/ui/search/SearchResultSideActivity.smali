.class public Lcom/bilibili/tv/ui/search/SearchResultSideActivity;
.super Lcom/bilibili/tv/ui/base/BaseSideActivity;
.source "SearchResultSideActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bilibili/tv/ui/search/SearchResultSideActivity$a;
    }
.end annotation


# static fields
.field public static final EXTRA_KEYWORD:Ljava/lang/String; = "extra_keyword"

.field public static final EXTRA_TID:Ljava/lang/String; = "extra_tid"


# instance fields
.field private c:Lcom/bilibili/tv/ui/search/SearchResultSideActivity$a;

.field private folders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbl/SearchFolder;",
            ">;"
        }
    .end annotation
.end field

.field private initTid:I

.field private keyword:Ljava/lang/String;

.field private moreActionKeyHandler:Lbl/MoreActionKeyHandler;

.field private selectedFolder:Lbl/SearchFolder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/bilibili/tv/ui/base/BaseSideActivity;-><init>()V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->folders:Ljava/util/List;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 50
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 51
    const-string v1, "extra_keyword"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 52
    const-string v1, "extra_tid"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 53
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 54
    return-void
.end method

.method static synthetic access$000(Lcom/bilibili/tv/ui/search/SearchResultSideActivity;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->showSortMenu()V

    return-void
.end method

.method static synthetic access$100(Lcom/bilibili/tv/ui/search/SearchResultSideActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->getSelectedView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/bilibili/tv/ui/search/SearchResultSideActivity;Lbl/SearchFolder;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->showSearchResultList(Lbl/SearchFolder;)V

    return-void
.end method

.method static synthetic access$700(Lcom/bilibili/tv/ui/search/SearchResultSideActivity;)Landroid/support/v7/widget/RecyclerView;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->j()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    return-object v0
.end method

.method private getDateRange(I)Ljava/lang/String;
    .locals 6

    .prologue
    .line 328
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 329
    mul-int/lit8 v2, p1, 0x18

    mul-int/lit8 v2, v2, 0x3c

    int-to-long v2, v2

    const-wide/16 v4, 0x3c

    mul-long/2addr v2, v4

    sub-long v2, v0, v2

    .line 330
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSelectedView()Landroid/view/View;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 252
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->j()Landroid/support/v7/widget/RecyclerView;

    move-result-object v3

    .line 253
    if-nez v3, :cond_9

    move-object v0, v1

    .line 262
    :goto_8
    return-object v0

    .line 256
    :cond_9
    const/4 v0, 0x0

    :goto_a
    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1f

    .line 257
    invoke-virtual {v3, v0}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 258
    invoke-virtual {v2}, Landroid/view/View;->isSelected()Z

    move-result v4

    if-eqz v4, :cond_1c

    move-object v0, v2

    .line 259
    goto :goto_8

    .line 256
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_1f
    move-object v0, v1

    .line 262
    goto :goto_8
.end method

.method private isDescendantOf(Landroid/view/View;Landroid/view/View;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 193
    if-eqz p1, :cond_5

    if-nez p2, :cond_7

    :cond_5
    move v0, v1

    .line 203
    :goto_6
    return v0

    .line 196
    :cond_7
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 197
    :goto_b
    instance-of v2, v0, Landroid/view/View;

    if-eqz v2, :cond_18

    .line 198
    if-ne v0, p1, :cond_13

    .line 199
    const/4 v0, 0x1

    goto :goto_6

    .line 201
    :cond_13
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_b

    :cond_18
    move v0, v1

    .line 203
    goto :goto_6
.end method

.method private loadFolders()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 207
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->folders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 208
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->folders:Ljava/util/List;

    new-instance v1, Lbl/SearchFolder;

    const-string v3, "\u89c6\u9891"

    invoke-direct {v1, v3, v2}, Lbl/SearchFolder;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->folders:Ljava/util/List;

    new-instance v1, Lbl/SearchFolder;

    const-string v3, "\u756a\u5267"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lbl/SearchFolder;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->folders:Ljava/util/List;

    new-instance v1, Lbl/SearchFolder;

    const-string v3, "\u5f71\u89c6"

    const/4 v4, 0x2

    invoke-direct {v1, v3, v4}, Lbl/SearchFolder;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->folders:Ljava/util/List;

    new-instance v1, Lbl/SearchFolder;

    const-string v3, "\u76f4\u64ad"

    const/4 v4, 0x3

    invoke-direct {v1, v3, v4}, Lbl/SearchFolder;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->folders:Ljava/util/List;

    new-instance v1, Lbl/SearchFolder;

    const-string v3, "\u7528\u6237"

    const/4 v4, 0x4

    invoke-direct {v1, v3, v4}, Lbl/SearchFolder;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->folders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_72

    move v1, v2

    .line 216
    :goto_4f
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->folders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_77

    .line 217
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->folders:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbl/SearchFolder;

    invoke-virtual {v0}, Lbl/SearchFolder;->getTid()I

    move-result v0

    iget v3, p0, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->initTid:I

    if-ne v0, v3, :cond_73

    .line 222
    :goto_67
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->folders:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbl/SearchFolder;

    invoke-direct {p0, v0}, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->showSearchResultList(Lbl/SearchFolder;)V

    .line 224
    :cond_72
    return-void

    .line 216
    :cond_73
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4f

    :cond_77
    move v1, v2

    goto :goto_67
.end method

.method private showLiveSortMenu(Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;)V
    .locals 7

    .prologue
    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 334
    new-instance v0, Lbl/SortMenuDialog;

    invoke-direct {v0, p0}, Lbl/SortMenuDialog;-><init>(Landroid/app/Activity;)V

    .line 335
    const/4 v1, 0x0

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "\u7efc\u5408\u6392\u5e8f"

    aput-object v3, v2, v5

    const-string v3, "\u6700\u65b0\u5f00\u64ad"

    aput-object v3, v2, v6

    new-array v3, v4, [Ljava/lang/String;

    const-string v4, "online"

    aput-object v4, v3, v5

    const-string v4, "live_time"

    aput-object v4, v3, v6

    .line 338
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->getLiveOrder()Ljava/lang/String;

    move-result-object v4

    .line 335
    invoke-virtual {v0, v1, v2, v3, v4}, Lbl/SortMenuDialog;->addGroup(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    new-instance v1, Lcom/bilibili/tv/ui/search/SearchResultSideActivity$3;

    invoke-direct {v1, p0, p1}, Lcom/bilibili/tv/ui/search/SearchResultSideActivity$3;-><init>(Lcom/bilibili/tv/ui/search/SearchResultSideActivity;Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;)V

    invoke-virtual {v0, v1}, Lbl/SortMenuDialog;->setOnSortSelectedListener(Lbl/SortMenuDialog$OnSortSelectedListener;)V

    .line 349
    invoke-virtual {v0}, Lbl/SortMenuDialog;->show()V

    .line 350
    return-void
.end method

.method private showSearchResultList(Lbl/SearchFolder;)V
    .locals 3

    .prologue
    .line 227
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->selectedFolder:Lbl/SearchFolder;

    if-ne v0, p1, :cond_5

    .line 238
    :goto_4
    return-void

    .line 231
    :cond_5
    iput-object p1, p0, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->selectedFolder:Lbl/SearchFolder;

    .line 232
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->keyword:Ljava/lang/String;

    invoke-virtual {p1}, Lbl/SearchFolder;->getTid()I

    move-result v1

    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->newInstance(Ljava/lang/String;I)Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;

    move-result-object v0

    .line 234
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 235
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f080091

    .line 236
    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 237
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_4
.end method

.method private showSortMenu()V
    .locals 2

    .prologue
    .line 266
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->h()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 267
    instance-of v1, v0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;

    if-nez v1, :cond_9

    .line 288
    :goto_8
    :pswitch_8
    return-void

    .line 271
    :cond_9
    check-cast v0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;

    .line 272
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->getTid()I

    move-result v1

    .line 274
    packed-switch v1, :pswitch_data_20

    goto :goto_8

    .line 276
    :pswitch_13
    invoke-direct {p0, v0}, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->showVideoSortMenu(Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;)V

    goto :goto_8

    .line 282
    :pswitch_17
    invoke-direct {p0, v0}, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->showLiveSortMenu(Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;)V

    goto :goto_8

    .line 285
    :pswitch_1b
    invoke-direct {p0, v0}, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->showUserSortMenu(Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;)V

    goto :goto_8

    .line 274
    nop

    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_13
        :pswitch_8
        :pswitch_8
        :pswitch_17
        :pswitch_1b
    .end packed-switch
.end method

.method private showUserSortMenu(Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;)V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 353
    new-instance v0, Lbl/SortMenuDialog;

    invoke-direct {v0, p0}, Lbl/SortMenuDialog;-><init>(Landroid/app/Activity;)V

    .line 354
    const/4 v1, 0x0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "\u9ed8\u8ba4\u6392\u5e8f"

    aput-object v3, v2, v5

    const-string v3, "\u7c89\u4e1d\u6570\u7531\u9ad8\u5230\u4f4e"

    aput-object v3, v2, v6

    const-string v3, "\u7c89\u4e1d\u6570\u7531\u4f4e\u5230\u9ad8"

    aput-object v3, v2, v7

    const-string v3, "Lv\u7b49\u7ea7\u7531\u9ad8\u5230\u4f4e"

    aput-object v3, v2, v8

    const-string v3, "Lv\u7b49\u7ea7\u7531\u4f4e\u5230\u9ad8"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, ""

    aput-object v4, v3, v5

    const-string v4, "fans"

    aput-object v4, v3, v6

    const-string v4, "fans_asc"

    aput-object v4, v3, v7

    const-string v4, "level"

    aput-object v4, v3, v8

    const-string v4, "level_asc"

    aput-object v4, v3, v9

    .line 357
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->getUserOrder()Ljava/lang/String;

    move-result-object v4

    .line 354
    invoke-virtual {v0, v1, v2, v3, v4}, Lbl/SortMenuDialog;->addGroup(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    new-instance v1, Lcom/bilibili/tv/ui/search/SearchResultSideActivity$4;

    invoke-direct {v1, p0, p1}, Lcom/bilibili/tv/ui/search/SearchResultSideActivity$4;-><init>(Lcom/bilibili/tv/ui/search/SearchResultSideActivity;Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;)V

    invoke-virtual {v0, v1}, Lbl/SortMenuDialog;->setOnSortSelectedListener(Lbl/SortMenuDialog$OnSortSelectedListener;)V

    .line 368
    invoke-virtual {v0}, Lbl/SortMenuDialog;->show()V

    .line 369
    return-void
.end method

.method private showVideoSortMenu(Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;)V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 291
    new-instance v0, Lbl/SortMenuDialog;

    invoke-direct {v0, p0}, Lbl/SortMenuDialog;-><init>(Landroid/app/Activity;)V

    .line 293
    const-string v1, "\u6392\u5e8f"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "\u7efc\u5408\u6392\u5e8f"

    aput-object v3, v2, v5

    const-string v3, "\u6700\u591a\u64ad\u653e"

    aput-object v3, v2, v6

    const-string v3, "\u6700\u65b0\u53d1\u5e03"

    aput-object v3, v2, v7

    const-string v3, "\u6700\u591a\u5f39\u5e55"

    aput-object v3, v2, v8

    const-string v3, "\u6700\u591a\u6536\u85cf"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, ""

    aput-object v4, v3, v5

    const-string v4, "click"

    aput-object v4, v3, v6

    const-string v4, "pubdate"

    aput-object v4, v3, v7

    const-string v4, "dm"

    aput-object v4, v3, v8

    const-string v4, "stow"

    aput-object v4, v3, v9

    .line 296
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->getOrder()Ljava/lang/String;

    move-result-object v4

    .line 293
    invoke-virtual {v0, v1, v2, v3, v4}, Lbl/SortMenuDialog;->addGroup(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    const-string v1, "\u65e5\u671f"

    new-array v2, v9, [Ljava/lang/String;

    const-string v3, "\u5168\u90e8\u65e5\u671f"

    aput-object v3, v2, v5

    const-string v3, "\u6700\u8fd1\u4e00\u5929"

    aput-object v3, v2, v6

    const-string v3, "\u6700\u8fd1\u4e00\u5468"

    aput-object v3, v2, v7

    const-string v3, "\u6700\u8fd1\u534a\u5e74"

    aput-object v3, v2, v8

    new-array v3, v9, [Ljava/lang/String;

    const-string v4, ""

    aput-object v4, v3, v5

    const-string v4, "1"

    aput-object v4, v3, v6

    const-string v4, "7"

    aput-object v4, v3, v7

    const-string v4, "180"

    aput-object v4, v3, v8

    .line 301
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->getDateType()Ljava/lang/String;

    move-result-object v4

    .line 298
    invoke-virtual {v0, v1, v2, v3, v4}, Lbl/SortMenuDialog;->addGroup(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    const-string v1, "\u65f6\u957f"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "\u5168\u90e8\u65f6\u957f"

    aput-object v3, v2, v5

    const-string v3, "10\u5206\u949f\u4ee5\u4e0b"

    aput-object v3, v2, v6

    const-string v3, "10-30\u5206\u949f"

    aput-object v3, v2, v7

    const-string v3, "30-60\u5206\u949f"

    aput-object v3, v2, v8

    const-string v3, "60\u5206\u949f\u4ee5\u4e0a"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, ""

    aput-object v4, v3, v5

    const-string v4, "1"

    aput-object v4, v3, v6

    const-string v4, "2"

    aput-object v4, v3, v7

    const-string v4, "3"

    aput-object v4, v3, v8

    const-string v4, "4"

    aput-object v4, v3, v9

    .line 306
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->getDuration()Ljava/lang/String;

    move-result-object v4

    .line 303
    invoke-virtual {v0, v1, v2, v3, v4}, Lbl/SortMenuDialog;->addGroup(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    new-instance v1, Lcom/bilibili/tv/ui/search/SearchResultSideActivity$2;

    invoke-direct {v1, p0, p1}, Lcom/bilibili/tv/ui/search/SearchResultSideActivity$2;-><init>(Lcom/bilibili/tv/ui/search/SearchResultSideActivity;Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;)V

    invoke-virtual {v0, v1}, Lbl/SortMenuDialog;->setOnConfirmListener(Lbl/SortMenuDialog$OnConfirmListener;)V

    .line 324
    invoke-virtual {v0}, Lbl/SortMenuDialog;->show()V

    .line 325
    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 58
    const v0, 0x7f0800eb

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->b(Landroid/support/v7/widget/RecyclerView;)V

    .line 59
    const v0, 0x7f080065

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "\u641c\u7d22"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_39

    .line 62
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_keyword"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->keyword:Ljava/lang/String;

    .line 63
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_tid"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->initTid:I

    .line 66
    :cond_39
    invoke-direct {p0}, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->loadFolders()V

    .line 67
    return-void
.end method

.method public a(Lbl/agd;)V
    .locals 0

    .prologue
    .line 42
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 9

    .prologue
    const/16 v8, 0x14

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 87
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->c:Lcom/bilibili/tv/ui/search/SearchResultSideActivity$a;

    if-nez v0, :cond_d

    .line 88
    invoke-super {p0, p1}, Lcom/bilibili/tv/ui/base/BaseSideActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 181
    :goto_c
    return v0

    .line 90
    :cond_d
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 91
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    .line 94
    invoke-static {p0}, Lbl/abd;->get_more_action_key(Landroid/content/Context;)I

    move-result v1

    if-ne v1, v2, :cond_5b

    const/16 v1, 0x17

    if-eq v4, v1, :cond_23

    const/16 v1, 0x42

    if-ne v4, v1, :cond_5b

    .line 96
    :cond_23
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    .line 97
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->h()Landroid/support/v4/app/Fragment;

    move-result-object v5

    .line 98
    if-eqz v1, :cond_5b

    if-eqz v5, :cond_5b

    invoke-virtual {v5}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_5b

    .line 99
    invoke-virtual {v5}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v5

    invoke-direct {p0, v5, v1}, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->isDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_5b

    .line 100
    iget-object v1, p0, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->moreActionKeyHandler:Lbl/MoreActionKeyHandler;

    if-nez v1, :cond_4c

    .line 101
    new-instance v1, Lbl/MoreActionKeyHandler;

    const-wide/16 v6, 0x1f4

    invoke-direct {v1, v6, v7}, Lbl/MoreActionKeyHandler;-><init>(J)V

    iput-object v1, p0, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->moreActionKeyHandler:Lbl/MoreActionKeyHandler;

    .line 103
    :cond_4c
    iget-object v1, p0, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->moreActionKeyHandler:Lbl/MoreActionKeyHandler;

    new-instance v5, Lcom/bilibili/tv/ui/search/SearchResultSideActivity$1;

    invoke-direct {v5, p0}, Lcom/bilibili/tv/ui/search/SearchResultSideActivity$1;-><init>(Lcom/bilibili/tv/ui/search/SearchResultSideActivity;)V

    invoke-virtual {v1, p1, v5}, Lbl/MoreActionKeyHandler;->handle(Landroid/view/KeyEvent;Lbl/MoreActionKeyHandler$Trigger;)Z

    move-result v1

    if-eqz v1, :cond_5b

    move v0, v2

    .line 109
    goto :goto_c

    .line 114
    :cond_5b
    if-nez v0, :cond_88

    const/16 v1, 0x52

    if-ne v4, v1, :cond_88

    .line 115
    invoke-static {p0}, Lbl/abd;->get_more_action_key(Landroid/content/Context;)I

    move-result v1

    if-eq v1, v2, :cond_88

    .line 116
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    .line 117
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->h()Landroid/support/v4/app/Fragment;

    move-result-object v5

    .line 118
    if-eqz v1, :cond_88

    if-eqz v5, :cond_88

    invoke-virtual {v5}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_88

    .line 119
    invoke-virtual {v5}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v5

    invoke-direct {p0, v5, v1}, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->isDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_88

    .line 120
    invoke-direct {p0}, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->showSortMenu()V

    move v0, v2

    .line 121
    goto :goto_c

    .line 127
    :cond_88
    if-nez v0, :cond_dd

    .line 128
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    .line 129
    if-nez v1, :cond_96

    .line 130
    invoke-super {p0, p1}, Lcom/bilibili/tv/ui/base/BaseSideActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto/16 :goto_c

    .line 133
    :cond_96
    if-eq v4, v8, :cond_9c

    const/16 v0, 0x13

    if-ne v4, v0, :cond_da

    .line 135
    :cond_9c
    if-ne v4, v8, :cond_cd

    const/16 v0, 0x82

    :goto_a0
    :try_start_a0
    invoke-virtual {v1, v0}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v5

    .line 136
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->j()Landroid/support/v7/widget/RecyclerView;

    move-result-object v6

    .line 137
    const/4 v0, 0x0

    .line 138
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->h()Landroid/support/v4/app/Fragment;

    move-result-object v7

    .line 139
    if-eqz v7, :cond_b9

    invoke-virtual {v7}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_b9

    .line 140
    invoke-virtual {v7}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 143
    :cond_b9
    invoke-direct {p0, v6, v5}, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->isDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v6

    .line 144
    invoke-direct {p0, v0, v1}, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->isDescendantOf(Landroid/view/View;Landroid/view/View;)Z
    :try_end_c0
    .catch Ljava/lang/Exception; {:try_start_a0 .. :try_end_c0} :catch_d9

    move-result v7

    .line 145
    if-ne v5, v1, :cond_d0

    move v0, v2

    .line 147
    :goto_c4
    if-eqz v5, :cond_d2

    if-eqz v6, :cond_d2

    if-eqz v7, :cond_d2

    move v0, v2

    .line 148
    goto/16 :goto_c

    .line 135
    :cond_cd
    const/16 v0, 0x21

    goto :goto_a0

    :cond_d0
    move v0, v3

    .line 145
    goto :goto_c4

    .line 151
    :cond_d2
    if-eqz v0, :cond_da

    if-eqz v7, :cond_da

    move v0, v2

    .line 152
    goto/16 :goto_c

    .line 154
    :catch_d9
    move-exception v0

    .line 157
    :cond_da
    packed-switch v4, :pswitch_data_126

    .line 181
    :cond_dd
    :goto_dd
    invoke-super {p0, p1}, Lcom/bilibili/tv/ui/base/BaseSideActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto/16 :goto_c

    .line 159
    :pswitch_e3
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    const-string v1, "right"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_dd

    .line 160
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->c:Lcom/bilibili/tv/ui/search/SearchResultSideActivity$a;

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/ui/search/SearchResultSideActivity$a;->b(Z)V

    goto :goto_dd

    .line 165
    :pswitch_fd
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->h()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 166
    if-nez v0, :cond_106

    move v0, v2

    .line 167
    goto/16 :goto_c

    .line 169
    :cond_106
    instance-of v3, v0, Lbl/adw;

    if-eqz v3, :cond_115

    check-cast v0, Lbl/adw;

    invoke-virtual {v0}, Lbl/adw;->c()Z

    move-result v0

    if-nez v0, :cond_115

    move v0, v2

    .line 170
    goto/16 :goto_c

    .line 172
    :cond_115
    instance-of v0, v1, Lcom/bilibili/tv/widget/side/SideLeftSelectLinearLayout;

    if-eqz v0, :cond_dd

    move-object v0, v1

    .line 173
    check-cast v0, Lcom/bilibili/tv/widget/side/SideLeftSelectLinearLayout;

    invoke-virtual {v0}, Lcom/bilibili/tv/widget/side/SideLeftSelectLinearLayout;->c()V

    .line 174
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->c:Lcom/bilibili/tv/ui/search/SearchResultSideActivity$a;

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/ui/search/SearchResultSideActivity$a;->b(Z)V

    goto :goto_dd

    .line 157
    nop

    :pswitch_data_126
    .packed-switch 0x15
        :pswitch_e3
        :pswitch_fd
    .end packed-switch
.end method

.method public g()I
    .locals 1

    .prologue
    .line 46
    const v0, 0x7f0a0097

    return v0
.end method

.method public getCurrentTid()I
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->selectedFolder:Lbl/SearchFolder;

    if-eqz v0, :cond_b

    .line 246
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->selectedFolder:Lbl/SearchFolder;

    invoke-virtual {v0}, Lbl/SearchFolder;->getTid()I

    move-result v0

    .line 248
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getKeyword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->keyword:Ljava/lang/String;

    return-object v0
.end method

.method public h()Landroid/support/v4/app/Fragment;
    .locals 2

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    if-nez v0, :cond_8

    .line 187
    const/4 v0, 0x0

    .line 189
    :goto_7
    return-object v0

    :cond_8
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f080091

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    goto :goto_7
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->c:Lcom/bilibili/tv/ui/search/SearchResultSideActivity$a;

    .line 82
    invoke-super {p0}, Lcom/bilibili/tv/ui/base/BaseSideActivity;->onDestroy()V

    .line 83
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

    .line 71
    invoke-super {p0, p1}, Lcom/bilibili/tv/ui/base/BaseSideActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 72
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->j()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/live/LiveLeftLinearLayoutManger;

    invoke-direct {v1, p0, v3, v2}, Lcom/bilibili/tv/ui/live/LiveLeftLinearLayoutManger;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$h;)V

    .line 73
    new-instance v0, Lcom/bilibili/tv/ui/search/SearchResultSideActivity$a;

    iget-object v1, p0, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->folders:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/bilibili/tv/ui/search/SearchResultSideActivity$a;-><init>(Lcom/bilibili/tv/ui/search/SearchResultSideActivity;Ljava/util/List;)V

    iput-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->c:Lcom/bilibili/tv/ui/search/SearchResultSideActivity$a;

    .line 74
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->j()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    iget-object v1, p0, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->c:Lcom/bilibili/tv/ui/search/SearchResultSideActivity$a;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 75
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->j()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setFocusable(Z)V

    .line 76
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->j()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 77
    return-void
.end method
