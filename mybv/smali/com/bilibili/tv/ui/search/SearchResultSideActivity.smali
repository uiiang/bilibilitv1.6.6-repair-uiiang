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

.field private selectedFolder:Lbl/SearchFolder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/bilibili/tv/ui/base/BaseSideActivity;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->folders:Ljava/util/List;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 49
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 50
    const-string v1, "extra_keyword"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 51
    const-string v1, "extra_tid"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 52
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 53
    return-void
.end method

.method static synthetic access$000(Lcom/bilibili/tv/ui/search/SearchResultSideActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->getSelectedView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/bilibili/tv/ui/search/SearchResultSideActivity;Lbl/SearchFolder;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->showSearchResultList(Lbl/SearchFolder;)V

    return-void
.end method

.method static synthetic access$600(Lcom/bilibili/tv/ui/search/SearchResultSideActivity;)Landroid/support/v7/widget/RecyclerView;
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
    .line 304
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 305
    mul-int/lit8 v2, p1, 0x18

    mul-int/lit8 v2, v2, 0x3c

    int-to-long v2, v2

    const-wide/16 v4, 0x3c

    mul-long/2addr v2, v4

    sub-long v2, v0, v2

    .line 306
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

    .line 228
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->j()Landroid/support/v7/widget/RecyclerView;

    move-result-object v3

    .line 229
    if-nez v3, :cond_9

    move-object v0, v1

    .line 238
    :goto_8
    return-object v0

    .line 232
    :cond_9
    const/4 v0, 0x0

    :goto_a
    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1f

    .line 233
    invoke-virtual {v3, v0}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 234
    invoke-virtual {v2}, Landroid/view/View;->isSelected()Z

    move-result v4

    if-eqz v4, :cond_1c

    move-object v0, v2

    .line 235
    goto :goto_8

    .line 232
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_1f
    move-object v0, v1

    .line 238
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

.method private loadFolders()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 183
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->folders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 184
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->folders:Ljava/util/List;

    new-instance v1, Lbl/SearchFolder;

    const-string v3, "\u89c6\u9891"

    invoke-direct {v1, v3, v2}, Lbl/SearchFolder;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->folders:Ljava/util/List;

    new-instance v1, Lbl/SearchFolder;

    const-string v3, "\u756a\u5267"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lbl/SearchFolder;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->folders:Ljava/util/List;

    new-instance v1, Lbl/SearchFolder;

    const-string v3, "\u5f71\u89c6"

    const/4 v4, 0x2

    invoke-direct {v1, v3, v4}, Lbl/SearchFolder;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->folders:Ljava/util/List;

    new-instance v1, Lbl/SearchFolder;

    const-string v3, "\u76f4\u64ad"

    const/4 v4, 0x3

    invoke-direct {v1, v3, v4}, Lbl/SearchFolder;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->folders:Ljava/util/List;

    new-instance v1, Lbl/SearchFolder;

    const-string v3, "\u7528\u6237"

    const/4 v4, 0x4

    invoke-direct {v1, v3, v4}, Lbl/SearchFolder;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->folders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_72

    move v1, v2

    .line 192
    :goto_4f
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->folders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_77

    .line 193
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->folders:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbl/SearchFolder;

    invoke-virtual {v0}, Lbl/SearchFolder;->getTid()I

    move-result v0

    iget v3, p0, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->initTid:I

    if-ne v0, v3, :cond_73

    .line 198
    :goto_67
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->folders:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbl/SearchFolder;

    invoke-direct {p0, v0}, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->showSearchResultList(Lbl/SearchFolder;)V

    .line 200
    :cond_72
    return-void

    .line 192
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

    .line 310
    new-instance v0, Lbl/SortMenuDialog;

    invoke-direct {v0, p0}, Lbl/SortMenuDialog;-><init>(Landroid/app/Activity;)V

    .line 311
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

    .line 314
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->getLiveOrder()Ljava/lang/String;

    move-result-object v4

    .line 311
    invoke-virtual {v0, v1, v2, v3, v4}, Lbl/SortMenuDialog;->addGroup(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    new-instance v1, Lcom/bilibili/tv/ui/search/SearchResultSideActivity$2;

    invoke-direct {v1, p0, p1}, Lcom/bilibili/tv/ui/search/SearchResultSideActivity$2;-><init>(Lcom/bilibili/tv/ui/search/SearchResultSideActivity;Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;)V

    invoke-virtual {v0, v1}, Lbl/SortMenuDialog;->setOnSortSelectedListener(Lbl/SortMenuDialog$OnSortSelectedListener;)V

    .line 325
    invoke-virtual {v0}, Lbl/SortMenuDialog;->show()V

    .line 326
    return-void
.end method

.method private showSearchResultList(Lbl/SearchFolder;)V
    .locals 3

    .prologue
    .line 203
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->selectedFolder:Lbl/SearchFolder;

    if-ne v0, p1, :cond_5

    .line 214
    :goto_4
    return-void

    .line 207
    :cond_5
    iput-object p1, p0, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->selectedFolder:Lbl/SearchFolder;

    .line 208
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->keyword:Ljava/lang/String;

    invoke-virtual {p1}, Lbl/SearchFolder;->getTid()I

    move-result v1

    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->newInstance(Ljava/lang/String;I)Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;

    move-result-object v0

    .line 210
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 211
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f080091

    .line 212
    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 213
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_4
.end method

.method private showSortMenu()V
    .locals 2

    .prologue
    .line 242
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->h()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 243
    instance-of v1, v0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;

    if-nez v1, :cond_9

    .line 264
    :goto_8
    :pswitch_8
    return-void

    .line 247
    :cond_9
    check-cast v0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;

    .line 248
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->getTid()I

    move-result v1

    .line 250
    packed-switch v1, :pswitch_data_20

    goto :goto_8

    .line 252
    :pswitch_13
    invoke-direct {p0, v0}, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->showVideoSortMenu(Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;)V

    goto :goto_8

    .line 258
    :pswitch_17
    invoke-direct {p0, v0}, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->showLiveSortMenu(Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;)V

    goto :goto_8

    .line 261
    :pswitch_1b
    invoke-direct {p0, v0}, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->showUserSortMenu(Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;)V

    goto :goto_8

    .line 250
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

    .line 329
    new-instance v0, Lbl/SortMenuDialog;

    invoke-direct {v0, p0}, Lbl/SortMenuDialog;-><init>(Landroid/app/Activity;)V

    .line 330
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

    .line 333
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->getUserOrder()Ljava/lang/String;

    move-result-object v4

    .line 330
    invoke-virtual {v0, v1, v2, v3, v4}, Lbl/SortMenuDialog;->addGroup(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    new-instance v1, Lcom/bilibili/tv/ui/search/SearchResultSideActivity$3;

    invoke-direct {v1, p0, p1}, Lcom/bilibili/tv/ui/search/SearchResultSideActivity$3;-><init>(Lcom/bilibili/tv/ui/search/SearchResultSideActivity;Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;)V

    invoke-virtual {v0, v1}, Lbl/SortMenuDialog;->setOnSortSelectedListener(Lbl/SortMenuDialog$OnSortSelectedListener;)V

    .line 344
    invoke-virtual {v0}, Lbl/SortMenuDialog;->show()V

    .line 345
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

    .line 267
    new-instance v0, Lbl/SortMenuDialog;

    invoke-direct {v0, p0}, Lbl/SortMenuDialog;-><init>(Landroid/app/Activity;)V

    .line 269
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

    .line 272
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->getOrder()Ljava/lang/String;

    move-result-object v4

    .line 269
    invoke-virtual {v0, v1, v2, v3, v4}, Lbl/SortMenuDialog;->addGroup(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 274
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

    .line 277
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->getDateType()Ljava/lang/String;

    move-result-object v4

    .line 274
    invoke-virtual {v0, v1, v2, v3, v4}, Lbl/SortMenuDialog;->addGroup(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 279
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

    .line 282
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->getDuration()Ljava/lang/String;

    move-result-object v4

    .line 279
    invoke-virtual {v0, v1, v2, v3, v4}, Lbl/SortMenuDialog;->addGroup(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    new-instance v1, Lcom/bilibili/tv/ui/search/SearchResultSideActivity$1;

    invoke-direct {v1, p0, p1}, Lcom/bilibili/tv/ui/search/SearchResultSideActivity$1;-><init>(Lcom/bilibili/tv/ui/search/SearchResultSideActivity;Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;)V

    invoke-virtual {v0, v1}, Lbl/SortMenuDialog;->setOnConfirmListener(Lbl/SortMenuDialog$OnConfirmListener;)V

    .line 300
    invoke-virtual {v0}, Lbl/SortMenuDialog;->show()V

    .line 301
    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 57
    const v0, 0x7f0800eb

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->b(Landroid/support/v7/widget/RecyclerView;)V

    .line 58
    const v0, 0x7f080065

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "\u641c\u7d22"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_39

    .line 61
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_keyword"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->keyword:Ljava/lang/String;

    .line 62
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_tid"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->initTid:I

    .line 65
    :cond_39
    invoke-direct {p0}, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->loadFolders()V

    .line 66
    return-void
.end method

.method public a(Lbl/agd;)V
    .locals 0

    .prologue
    .line 41
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 9

    .prologue
    const/16 v7, 0x14

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 86
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->c:Lcom/bilibili/tv/ui/search/SearchResultSideActivity$a;

    if-nez v0, :cond_d

    .line 87
    invoke-super {p0, p1}, Lcom/bilibili/tv/ui/base/BaseSideActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 157
    :goto_c
    return v0

    .line 89
    :cond_d
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 90
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    .line 92
    if-nez v0, :cond_3c

    const/16 v1, 0x52

    if-ne v4, v1, :cond_3c

    .line 93
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    .line 94
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->h()Landroid/support/v4/app/Fragment;

    move-result-object v5

    .line 95
    if-eqz v1, :cond_3c

    if-eqz v5, :cond_3c

    invoke-virtual {v5}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_3c

    .line 96
    invoke-virtual {v5}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v5

    invoke-direct {p0, v5, v1}, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->isDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 97
    invoke-direct {p0}, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->showSortMenu()V

    move v0, v2

    .line 98
    goto :goto_c

    .line 103
    :cond_3c
    if-nez v0, :cond_8e

    .line 104
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    .line 105
    if-nez v1, :cond_49

    .line 106
    invoke-super {p0, p1}, Lcom/bilibili/tv/ui/base/BaseSideActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_c

    .line 109
    :cond_49
    if-eq v4, v7, :cond_4f

    const/16 v0, 0x13

    if-ne v4, v0, :cond_8b

    .line 111
    :cond_4f
    if-ne v4, v7, :cond_7f

    const/16 v0, 0x82

    :goto_53
    :try_start_53
    invoke-virtual {v1, v0}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v5

    .line 112
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->j()Landroid/support/v7/widget/RecyclerView;

    move-result-object v6

    .line 113
    const/4 v0, 0x0

    .line 114
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->h()Landroid/support/v4/app/Fragment;

    move-result-object v7

    .line 115
    if-eqz v7, :cond_6c

    invoke-virtual {v7}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_6c

    .line 116
    invoke-virtual {v7}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 119
    :cond_6c
    invoke-direct {p0, v6, v5}, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->isDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v6

    .line 120
    invoke-direct {p0, v0, v1}, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->isDescendantOf(Landroid/view/View;Landroid/view/View;)Z
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_73} :catch_8a

    move-result v7

    .line 121
    if-ne v5, v1, :cond_82

    move v0, v2

    .line 123
    :goto_77
    if-eqz v5, :cond_84

    if-eqz v6, :cond_84

    if-eqz v7, :cond_84

    move v0, v2

    .line 124
    goto :goto_c

    .line 111
    :cond_7f
    const/16 v0, 0x21

    goto :goto_53

    :cond_82
    move v0, v3

    .line 121
    goto :goto_77

    .line 127
    :cond_84
    if-eqz v0, :cond_8b

    if-eqz v7, :cond_8b

    move v0, v2

    .line 128
    goto :goto_c

    .line 130
    :catch_8a
    move-exception v0

    .line 133
    :cond_8b
    packed-switch v4, :pswitch_data_d6

    .line 157
    :cond_8e
    :goto_8e
    invoke-super {p0, p1}, Lcom/bilibili/tv/ui/base/BaseSideActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto/16 :goto_c

    .line 135
    :pswitch_94
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    const-string v1, "right"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8e

    .line 136
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->c:Lcom/bilibili/tv/ui/search/SearchResultSideActivity$a;

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/ui/search/SearchResultSideActivity$a;->b(Z)V

    goto :goto_8e

    .line 141
    :pswitch_ae
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->h()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 142
    if-nez v0, :cond_b7

    move v0, v2

    .line 143
    goto/16 :goto_c

    .line 145
    :cond_b7
    instance-of v3, v0, Lbl/adw;

    if-eqz v3, :cond_c6

    check-cast v0, Lbl/adw;

    invoke-virtual {v0}, Lbl/adw;->c()Z

    move-result v0

    if-nez v0, :cond_c6

    move v0, v2

    .line 146
    goto/16 :goto_c

    .line 148
    :cond_c6
    instance-of v0, v1, Lcom/bilibili/tv/widget/side/SideLeftSelectLinearLayout;

    if-eqz v0, :cond_8e

    move-object v0, v1

    .line 149
    check-cast v0, Lcom/bilibili/tv/widget/side/SideLeftSelectLinearLayout;

    invoke-virtual {v0}, Lcom/bilibili/tv/widget/side/SideLeftSelectLinearLayout;->c()V

    .line 150
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->c:Lcom/bilibili/tv/ui/search/SearchResultSideActivity$a;

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/ui/search/SearchResultSideActivity$a;->b(Z)V

    goto :goto_8e

    .line 133
    :pswitch_data_d6
    .packed-switch 0x15
        :pswitch_94
        :pswitch_ae
    .end packed-switch
.end method

.method public g()I
    .locals 1

    .prologue
    .line 45
    const v0, 0x7f0a0097

    return v0
.end method

.method public getCurrentTid()I
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->selectedFolder:Lbl/SearchFolder;

    if-eqz v0, :cond_b

    .line 222
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->selectedFolder:Lbl/SearchFolder;

    invoke-virtual {v0}, Lbl/SearchFolder;->getTid()I

    move-result v0

    .line 224
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getKeyword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->keyword:Ljava/lang/String;

    return-object v0
.end method

.method public h()Landroid/support/v4/app/Fragment;
    .locals 2

    .prologue
    .line 162
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    if-nez v0, :cond_8

    .line 163
    const/4 v0, 0x0

    .line 165
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
    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->c:Lcom/bilibili/tv/ui/search/SearchResultSideActivity$a;

    .line 81
    invoke-super {p0}, Lcom/bilibili/tv/ui/base/BaseSideActivity;->onDestroy()V

    .line 82
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

    .line 70
    invoke-super {p0, p1}, Lcom/bilibili/tv/ui/base/BaseSideActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 71
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->j()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/live/LiveLeftLinearLayoutManger;

    invoke-direct {v1, p0, v3, v2}, Lcom/bilibili/tv/ui/live/LiveLeftLinearLayoutManger;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$h;)V

    .line 72
    new-instance v0, Lcom/bilibili/tv/ui/search/SearchResultSideActivity$a;

    iget-object v1, p0, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->folders:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/bilibili/tv/ui/search/SearchResultSideActivity$a;-><init>(Lcom/bilibili/tv/ui/search/SearchResultSideActivity;Ljava/util/List;)V

    iput-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->c:Lcom/bilibili/tv/ui/search/SearchResultSideActivity$a;

    .line 73
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->j()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    iget-object v1, p0, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->c:Lcom/bilibili/tv/ui/search/SearchResultSideActivity$a;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 74
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->j()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setFocusable(Z)V

    .line 75
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->j()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 76
    return-void
.end method
