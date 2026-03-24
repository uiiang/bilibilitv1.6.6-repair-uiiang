.class public Lcom/bilibili/tv/ui/search/SearchResultSideActivity;
.super Lcom/bilibili/tv/ui/base/BaseSideActivity;
.source "SearchResultSideActivity.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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
    .line 32
    invoke-direct {p0}, Lcom/bilibili/tv/ui/base/BaseSideActivity;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->folders:Ljava/util/List;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 52
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 53
    const-string v1, "extra_keyword"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 54
    const-string v1, "extra_tid"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 55
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcom/bilibili/tv/ui/search/SearchResultSideActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->getSelectedView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/bilibili/tv/ui/search/SearchResultSideActivity;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->getDateRange(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/bilibili/tv/ui/search/SearchResultSideActivity;Lbl/SearchFolder;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->showSearchResultList(Lbl/SearchFolder;)V

    return-void
.end method

.method static synthetic access$700(Lcom/bilibili/tv/ui/search/SearchResultSideActivity;)Landroid/support/v7/widget/RecyclerView;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->j()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    return-object v0
.end method

.method private getDateRange(I)Ljava/lang/String;
    .locals 6

    .prologue
    .line 313
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 314
    mul-int/lit8 v2, p1, 0x18

    mul-int/lit8 v2, v2, 0x3c

    int-to-long v2, v2

    const-wide/16 v4, 0x3c

    mul-long/2addr v2, v4

    sub-long v2, v0, v2

    .line 315
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

    .line 219
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->j()Landroid/support/v7/widget/RecyclerView;

    move-result-object v3

    .line 220
    if-nez v3, :cond_9

    move-object v0, v1

    .line 229
    :goto_8
    return-object v0

    .line 223
    :cond_9
    const/4 v0, 0x0

    :goto_a
    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1f

    .line 224
    invoke-virtual {v3, v0}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 225
    invoke-virtual {v2}, Landroid/view/View;->isSelected()Z

    move-result v4

    if-eqz v4, :cond_1c

    move-object v0, v2

    .line 226
    goto :goto_8

    .line 223
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_1f
    move-object v0, v1

    .line 229
    goto :goto_8
.end method

.method private isDescendantOf(Landroid/view/View;Landroid/view/View;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 160
    if-eqz p1, :cond_5

    if-nez p2, :cond_7

    :cond_5
    move v0, v1

    .line 170
    :goto_6
    return v0

    .line 163
    :cond_7
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 164
    :goto_b
    instance-of v2, v0, Landroid/view/View;

    if-eqz v2, :cond_18

    .line 165
    if-ne v0, p1, :cond_13

    .line 166
    const/4 v0, 0x1

    goto :goto_6

    .line 168
    :cond_13
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_b

    :cond_18
    move v0, v1

    .line 170
    goto :goto_6
.end method

.method private loadFolders()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 174
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->folders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 175
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->folders:Ljava/util/List;

    new-instance v1, Lbl/SearchFolder;

    const-string v3, "\u89c6\u9891"

    invoke-direct {v1, v3, v2}, Lbl/SearchFolder;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->folders:Ljava/util/List;

    new-instance v1, Lbl/SearchFolder;

    const-string v3, "\u756a\u5267"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lbl/SearchFolder;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->folders:Ljava/util/List;

    new-instance v1, Lbl/SearchFolder;

    const-string v3, "\u5f71\u89c6"

    const/4 v4, 0x2

    invoke-direct {v1, v3, v4}, Lbl/SearchFolder;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->folders:Ljava/util/List;

    new-instance v1, Lbl/SearchFolder;

    const-string v3, "\u76f4\u64ad"

    const/4 v4, 0x3

    invoke-direct {v1, v3, v4}, Lbl/SearchFolder;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->folders:Ljava/util/List;

    new-instance v1, Lbl/SearchFolder;

    const-string v3, "\u7528\u6237"

    const/4 v4, 0x4

    invoke-direct {v1, v3, v4}, Lbl/SearchFolder;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->folders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_72

    move v1, v2

    .line 183
    :goto_4f
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->folders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_77

    .line 184
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->folders:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbl/SearchFolder;

    invoke-virtual {v0}, Lbl/SearchFolder;->getTid()I

    move-result v0

    iget v3, p0, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->initTid:I

    if-ne v0, v3, :cond_73

    .line 189
    :goto_67
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->folders:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbl/SearchFolder;

    invoke-direct {p0, v0}, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->showSearchResultList(Lbl/SearchFolder;)V

    .line 191
    :cond_72
    return-void

    .line 183
    :cond_73
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4f

    :cond_77
    move v1, v2

    goto :goto_67
.end method

.method private showLiveSortDialog(Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;)V
    .locals 4

    .prologue
    .line 319
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 320
    const-string v1, "\u7efc\u5408\u6392\u5e8f"

    const-string v2, "online"

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    const-string v1, "\u6700\u65b0\u5f00\u64ad"

    const-string v2, "live_time"

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    new-instance v1, Lbl/agb$a;

    invoke-direct {v1, p0}, Lbl/agb$a;-><init>(Landroid/app/Activity;)V

    .line 324
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lbl/agb$a;->a(I)Lbl/agb$a;

    move-result-object v2

    const-string v3, "\u6392\u5e8f:"

    .line 325
    invoke-virtual {v2, v3}, Lbl/agb$a;->a(Ljava/lang/String;)Lbl/agb$a;

    move-result-object v2

    new-instance v3, Lcom/bilibili/tv/ui/search/SearchResultSideActivity$2;

    invoke-direct {v3, p0, v0, p1}, Lcom/bilibili/tv/ui/search/SearchResultSideActivity$2;-><init>(Lcom/bilibili/tv/ui/search/SearchResultSideActivity;Ljava/util/LinkedHashMap;Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;)V

    .line 326
    invoke-virtual {v2, v0, v3}, Lbl/agb$a;->a(Ljava/util/LinkedHashMap;Lbl/agb$c;)Lbl/agb$a;

    .line 338
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->getLiveOrder()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lbl/agb$a;->a(Ljava/lang/Object;)Lbl/agb$a;

    .line 339
    invoke-virtual {v1}, Lbl/agb$a;->a()Lbl/agb;

    move-result-object v0

    invoke-virtual {v0}, Lbl/agb;->show()V

    .line 340
    return-void
.end method

.method private showSearchResultList(Lbl/SearchFolder;)V
    .locals 3

    .prologue
    .line 194
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->selectedFolder:Lbl/SearchFolder;

    if-ne v0, p1, :cond_5

    .line 205
    :goto_4
    return-void

    .line 198
    :cond_5
    iput-object p1, p0, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->selectedFolder:Lbl/SearchFolder;

    .line 199
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->keyword:Ljava/lang/String;

    invoke-virtual {p1}, Lbl/SearchFolder;->getTid()I

    move-result v1

    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->newInstance(Ljava/lang/String;I)Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;

    move-result-object v0

    .line 201
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 202
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f080091

    .line 203
    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 204
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_4
.end method

.method private showUserSortDialog(Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;)V
    .locals 4

    .prologue
    .line 343
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 344
    const-string v1, "\u9ed8\u8ba4\u6392\u5e8f"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    const-string v1, "\u7c89\u4e1d\u6570\u7531\u9ad8\u5230\u4f4e"

    const-string v2, "fans"

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    const-string v1, "\u7c89\u4e1d\u6570\u7531\u4f4e\u5230\u9ad8"

    const-string v2, "fans_asc"

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    const-string v1, "Lv\u7b49\u7ea7\u7531\u9ad8\u5230\u4f4e"

    const-string v2, "level"

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    const-string v1, "Lv\u7b49\u7ea7\u7531\u4f4e\u5230\u9ad8"

    const-string v2, "level_asc"

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    new-instance v1, Lbl/agb$a;

    invoke-direct {v1, p0}, Lbl/agb$a;-><init>(Landroid/app/Activity;)V

    .line 351
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lbl/agb$a;->a(I)Lbl/agb$a;

    move-result-object v2

    const-string v3, "\u6392\u5e8f:"

    .line 352
    invoke-virtual {v2, v3}, Lbl/agb$a;->a(Ljava/lang/String;)Lbl/agb$a;

    move-result-object v2

    new-instance v3, Lcom/bilibili/tv/ui/search/SearchResultSideActivity$3;

    invoke-direct {v3, p0, v0, p1}, Lcom/bilibili/tv/ui/search/SearchResultSideActivity$3;-><init>(Lcom/bilibili/tv/ui/search/SearchResultSideActivity;Ljava/util/LinkedHashMap;Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;)V

    .line 353
    invoke-virtual {v2, v0, v3}, Lbl/agb$a;->a(Ljava/util/LinkedHashMap;Lbl/agb$c;)Lbl/agb$a;

    .line 365
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->getUserOrder()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lbl/agb$a;->a(Ljava/lang/Object;)Lbl/agb$a;

    .line 366
    invoke-virtual {v1}, Lbl/agb$a;->a()Lbl/agb;

    move-result-object v0

    invoke-virtual {v0}, Lbl/agb;->show()V

    .line 367
    return-void
.end method

.method private showVideoSortDialog(Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;)V
    .locals 6

    .prologue
    .line 260
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 261
    const-string v1, "\u7efc\u5408\u6392\u5e8f"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    const-string v1, "\u6700\u591a\u64ad\u653e"

    const-string v2, "click"

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    const-string v1, "\u6700\u65b0\u53d1\u5e03"

    const-string v2, "pubdate"

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    const-string v1, "\u6700\u591a\u5f39\u5e55"

    const-string v2, "dm"

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    const-string v1, "\u6700\u591a\u6536\u85cf"

    const-string v2, "stow"

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 268
    const-string v2, "\u5168\u90e8\u65e5\u671f"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    const-string v2, "\u6700\u8fd1\u4e00\u5929"

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    const-string v2, "\u6700\u8fd1\u4e00\u5468"

    const-string v3, "7"

    invoke-virtual {v1, v2, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    const-string v2, "\u6700\u8fd1\u534a\u5e74"

    const-string v3, "180"

    invoke-virtual {v1, v2, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 274
    const-string v3, "\u5168\u90e8\u65f6\u957f"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    const-string v3, "10\u5206\u949f\u4ee5\u4e0b"

    const-string v4, "1"

    invoke-virtual {v2, v3, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    const-string v3, "10-30\u5206\u949f"

    const-string v4, "2"

    invoke-virtual {v2, v3, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    const-string v3, "30-60\u5206\u949f"

    const-string v4, "3"

    invoke-virtual {v2, v3, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    const-string v3, "60\u5206\u949f\u4ee5\u4e0a"

    const-string v4, "4"

    invoke-virtual {v2, v3, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    new-instance v3, Lbl/agb$a;

    invoke-direct {v3, p0}, Lbl/agb$a;-><init>(Landroid/app/Activity;)V

    .line 281
    const-string v4, "\u6392\u5e8f"

    invoke-virtual {p1}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->getOrder()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v0, v5}, Lbl/agb$a;->addGroup(Ljava/lang/String;Ljava/util/LinkedHashMap;Ljava/lang/Object;)Lbl/agb$a;

    move-result-object v0

    const-string v4, "\u65e5\u671f"

    .line 282
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->getDateType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v1, v5}, Lbl/agb$a;->addGroup(Ljava/lang/String;Ljava/util/LinkedHashMap;Ljava/lang/Object;)Lbl/agb$a;

    move-result-object v0

    const-string v1, "\u65f6\u957f"

    .line 283
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->getDuration()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v4}, Lbl/agb$a;->addGroup(Ljava/lang/String;Ljava/util/LinkedHashMap;Ljava/lang/Object;)Lbl/agb$a;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/search/SearchResultSideActivity$1;

    invoke-direct {v1, p0, p1}, Lcom/bilibili/tv/ui/search/SearchResultSideActivity$1;-><init>(Lcom/bilibili/tv/ui/search/SearchResultSideActivity;Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;)V

    .line 284
    invoke-virtual {v0, v1}, Lbl/agb$a;->setGroupClickListener(Lbl/agb$GroupClickListener;)Lbl/agb$a;

    .line 309
    invoke-virtual {v3}, Lbl/agb$a;->a()Lbl/agb;

    move-result-object v0

    invoke-virtual {v0}, Lbl/agb;->show()V

    .line 310
    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 60
    const v0, 0x7f0800eb

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->b(Landroid/support/v7/widget/RecyclerView;)V

    .line 61
    const v0, 0x7f080065

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "\u641c\u7d22"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_39

    .line 64
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_keyword"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->keyword:Ljava/lang/String;

    .line 65
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_tid"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->initTid:I

    .line 68
    :cond_39
    invoke-direct {p0}, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->loadFolders()V

    .line 69
    return-void
.end method

.method public a(Lbl/agd;)V
    .locals 0

    .prologue
    .line 44
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 9

    .prologue
    const/16 v5, 0x14

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 89
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->c:Lcom/bilibili/tv/ui/search/SearchResultSideActivity$a;

    if-nez v0, :cond_d

    .line 90
    invoke-super {p0, p1}, Lcom/bilibili/tv/ui/base/BaseSideActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 148
    :goto_c
    return v0

    .line 92
    :cond_d
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 93
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    .line 94
    if-nez v0, :cond_67

    .line 95
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    .line 96
    if-nez v1, :cond_22

    .line 97
    invoke-super {p0, p1}, Lcom/bilibili/tv/ui/base/BaseSideActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_c

    .line 100
    :cond_22
    if-eq v4, v5, :cond_28

    const/16 v0, 0x13

    if-ne v4, v0, :cond_64

    .line 102
    :cond_28
    if-ne v4, v5, :cond_58

    const/16 v0, 0x82

    :goto_2c
    :try_start_2c
    invoke-virtual {v1, v0}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v5

    .line 103
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->j()Landroid/support/v7/widget/RecyclerView;

    move-result-object v6

    .line 104
    const/4 v0, 0x0

    .line 105
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->h()Landroid/support/v4/app/Fragment;

    move-result-object v7

    .line 106
    if-eqz v7, :cond_45

    invoke-virtual {v7}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_45

    .line 107
    invoke-virtual {v7}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 110
    :cond_45
    invoke-direct {p0, v6, v5}, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->isDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v6

    .line 111
    invoke-direct {p0, v0, v1}, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->isDescendantOf(Landroid/view/View;Landroid/view/View;)Z
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_4c} :catch_63

    move-result v7

    .line 112
    if-ne v5, v1, :cond_5b

    move v0, v2

    .line 114
    :goto_50
    if-eqz v5, :cond_5d

    if-eqz v6, :cond_5d

    if-eqz v7, :cond_5d

    move v0, v2

    .line 115
    goto :goto_c

    .line 102
    :cond_58
    const/16 v0, 0x21

    goto :goto_2c

    :cond_5b
    move v0, v3

    .line 112
    goto :goto_50

    .line 118
    :cond_5d
    if-eqz v0, :cond_64

    if-eqz v7, :cond_64

    move v0, v2

    .line 119
    goto :goto_c

    .line 121
    :catch_63
    move-exception v0

    .line 124
    :cond_64
    packed-switch v4, :pswitch_data_ae

    .line 148
    :cond_67
    :goto_67
    invoke-super {p0, p1}, Lcom/bilibili/tv/ui/base/BaseSideActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_c

    .line 126
    :pswitch_6c
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    const-string v1, "right"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_67

    .line 127
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->c:Lcom/bilibili/tv/ui/search/SearchResultSideActivity$a;

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/ui/search/SearchResultSideActivity$a;->b(Z)V

    goto :goto_67

    .line 132
    :pswitch_86
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->h()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 133
    if-nez v0, :cond_8f

    move v0, v2

    .line 134
    goto/16 :goto_c

    .line 136
    :cond_8f
    instance-of v3, v0, Lbl/adw;

    if-eqz v3, :cond_9e

    check-cast v0, Lbl/adw;

    invoke-virtual {v0}, Lbl/adw;->c()Z

    move-result v0

    if-nez v0, :cond_9e

    move v0, v2

    .line 137
    goto/16 :goto_c

    .line 139
    :cond_9e
    instance-of v0, v1, Lcom/bilibili/tv/widget/side/SideLeftSelectLinearLayout;

    if-eqz v0, :cond_67

    move-object v0, v1

    .line 140
    check-cast v0, Lcom/bilibili/tv/widget/side/SideLeftSelectLinearLayout;

    invoke-virtual {v0}, Lcom/bilibili/tv/widget/side/SideLeftSelectLinearLayout;->c()V

    .line 141
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->c:Lcom/bilibili/tv/ui/search/SearchResultSideActivity$a;

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/ui/search/SearchResultSideActivity$a;->b(Z)V

    goto :goto_67

    .line 124
    :pswitch_data_ae
    .packed-switch 0x15
        :pswitch_6c
        :pswitch_86
    .end packed-switch
.end method

.method public g()I
    .locals 1

    .prologue
    .line 48
    const v0, 0x7f0a0097

    return v0
.end method

.method public getCurrentTid()I
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->selectedFolder:Lbl/SearchFolder;

    if-eqz v0, :cond_b

    .line 213
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->selectedFolder:Lbl/SearchFolder;

    invoke-virtual {v0}, Lbl/SearchFolder;->getTid()I

    move-result v0

    .line 215
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getKeyword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->keyword:Ljava/lang/String;

    return-object v0
.end method

.method public h()Landroid/support/v4/app/Fragment;
    .locals 2

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    if-nez v0, :cond_8

    .line 154
    const/4 v0, 0x0

    .line 156
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
    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->c:Lcom/bilibili/tv/ui/search/SearchResultSideActivity$a;

    .line 84
    invoke-super {p0}, Lcom/bilibili/tv/ui/base/BaseSideActivity;->onDestroy()V

    .line 85
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 234
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->h()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 235
    instance-of v1, v0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;

    if-nez v1, :cond_a

    .line 256
    :goto_9
    :pswitch_9
    return v2

    .line 239
    :cond_a
    check-cast v0, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;

    .line 240
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;->getTid()I

    move-result v1

    .line 242
    packed-switch v1, :pswitch_data_20

    goto :goto_9

    .line 244
    :pswitch_14
    invoke-direct {p0, v0}, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->showVideoSortDialog(Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;)V

    goto :goto_9

    .line 250
    :pswitch_18
    invoke-direct {p0, v0}, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->showLiveSortDialog(Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;)V

    goto :goto_9

    .line 253
    :pswitch_1c
    invoke-direct {p0, v0}, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->showUserSortDialog(Lcom/bilibili/tv/ui/search/SearchResultVideoFragment;)V

    goto :goto_9

    .line 242
    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_14
        :pswitch_9
        :pswitch_9
        :pswitch_18
        :pswitch_1c
    .end packed-switch
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

    .line 73
    invoke-super {p0, p1}, Lcom/bilibili/tv/ui/base/BaseSideActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 74
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->j()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/live/LiveLeftLinearLayoutManger;

    invoke-direct {v1, p0, v3, v2}, Lcom/bilibili/tv/ui/live/LiveLeftLinearLayoutManger;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$h;)V

    .line 75
    new-instance v0, Lcom/bilibili/tv/ui/search/SearchResultSideActivity$a;

    iget-object v1, p0, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->folders:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/bilibili/tv/ui/search/SearchResultSideActivity$a;-><init>(Lcom/bilibili/tv/ui/search/SearchResultSideActivity;Ljava/util/List;)V

    iput-object v0, p0, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->c:Lcom/bilibili/tv/ui/search/SearchResultSideActivity$a;

    .line 76
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->j()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    iget-object v1, p0, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->c:Lcom/bilibili/tv/ui/search/SearchResultSideActivity$a;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 77
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->j()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setFocusable(Z)V

    .line 78
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/search/SearchResultSideActivity;->j()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 79
    return-void
.end method
