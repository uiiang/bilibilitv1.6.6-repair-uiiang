.class public final Lcom/bilibili/tv/ui/area/AreaActivity;
.super Lcom/bilibili/tv/ui/base/BaseSideActivity;
.source "AreaActivity.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;
.implements Lbl/wf;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bilibili/tv/ui/area/AreaActivity$Adapter;,
        Lcom/bilibili/tv/ui/area/AreaActivity$TouchModeChangeListener;,
        Lcom/bilibili/tv/ui/area/AreaActivity$GlobalFocusChangeListener;,
        Lcom/bilibili/tv/ui/area/AreaActivity$LeftLayoutManager;,
        Lcom/bilibili/tv/ui/area/AreaActivity$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/bilibili/tv/ui/area/AreaActivity$Companion;

.field private static final f:Ljava/lang/String; = "subarea_id"


# instance fields
.field private b:I

.field private c:Lcom/bilibili/tv/ui/area/AreaActivity$Adapter;

.field private d:Lbl/adr;

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 47
    new-instance v0, Lcom/bilibili/tv/ui/area/AreaActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bilibili/tv/ui/area/AreaActivity$Companion;-><init>(Lbl/bbg;)V

    sput-object v0, Lcom/bilibili/tv/ui/area/AreaActivity;->Companion:Lcom/bilibili/tv/ui/area/AreaActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/bilibili/tv/ui/base/BaseSideActivity;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;I)V
    .locals 2

    .prologue
    .line 68
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/bilibili/tv/ui/area/AreaActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 69
    const-string v1, "subarea_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 70
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 71
    return-void
.end method

.method static synthetic access$000(Lcom/bilibili/tv/ui/area/AreaActivity;Ljava/lang/String;)Lcom/bilibili/tv/ui/area/RegionApiManager$ListOrder;
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/area/AreaActivity;->getSortOrderFromString(Ljava/lang/String;)Lcom/bilibili/tv/ui/area/RegionApiManager$ListOrder;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/bilibili/tv/ui/area/AreaActivity;)Lcom/bilibili/tv/ui/area/AreaActivity$Adapter;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/bilibili/tv/ui/area/AreaActivity;->c:Lcom/bilibili/tv/ui/area/AreaActivity$Adapter;

    return-object v0
.end method

.method static synthetic access$202(Lcom/bilibili/tv/ui/area/AreaActivity;Z)Z
    .locals 0

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/bilibili/tv/ui/area/AreaActivity;->e:Z

    return p1
.end method

.method static synthetic access$500(Lcom/bilibili/tv/ui/area/AreaActivity;)Lbl/adr;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/bilibili/tv/ui/area/AreaActivity;->d:Lbl/adr;

    return-object v0
.end method

.method private getCurrentSortValue(Lbl/adq;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 317
    invoke-virtual {p1}, Lbl/adq;->b()Lcom/bilibili/tv/ui/area/RegionApiManager$ListOrder;

    move-result-object v0

    .line 318
    if-nez v0, :cond_9

    .line 319
    const-string v0, "default"

    .line 321
    :goto_8
    return-object v0

    :cond_9
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/area/RegionApiManager$ListOrder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method

.method private getSelectedView()Landroid/view/View;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 303
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/area/AreaActivity;->j()Landroid/support/v7/widget/RecyclerView;

    move-result-object v3

    .line 304
    if-nez v3, :cond_9

    move-object v0, v1

    .line 313
    :goto_8
    return-object v0

    .line 307
    :cond_9
    const/4 v0, 0x0

    :goto_a
    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1f

    .line 308
    invoke-virtual {v3, v0}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 309
    invoke-virtual {v2}, Landroid/view/View;->isSelected()Z

    move-result v4

    if-eqz v4, :cond_1c

    move-object v0, v2

    .line 310
    goto :goto_8

    .line 307
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_1f
    move-object v0, v1

    .line 313
    goto :goto_8
.end method

.method private getSortOrderFromString(Ljava/lang/String;)Lcom/bilibili/tv/ui/area/RegionApiManager$ListOrder;
    .locals 2

    .prologue
    .line 325
    if-nez p1, :cond_5

    .line 326
    sget-object v0, Lcom/bilibili/tv/ui/area/RegionApiManager$ListOrder;->DEFAULT:Lcom/bilibili/tv/ui/area/RegionApiManager$ListOrder;

    .line 340
    :goto_4
    return-object v0

    .line 328
    :cond_5
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_54

    :cond_d
    :goto_d
    packed-switch v0, :pswitch_data_6a

    .line 340
    sget-object v0, Lcom/bilibili/tv/ui/area/RegionApiManager$ListOrder;->DEFAULT:Lcom/bilibili/tv/ui/area/RegionApiManager$ListOrder;

    goto :goto_4

    .line 328
    :sswitch_13
    const-string v1, "senddate"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    const/4 v0, 0x0

    goto :goto_d

    :sswitch_1d
    const-string v1, "view"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    const/4 v0, 0x1

    goto :goto_d

    :sswitch_27
    const-string v1, "reply"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    const/4 v0, 0x2

    goto :goto_d

    :sswitch_31
    const-string v1, "danmaku"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    const/4 v0, 0x3

    goto :goto_d

    :sswitch_3b
    const-string v1, "favorite"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    const/4 v0, 0x4

    goto :goto_d

    .line 330
    :pswitch_45
    sget-object v0, Lcom/bilibili/tv/ui/area/RegionApiManager$ListOrder;->SENDDATE:Lcom/bilibili/tv/ui/area/RegionApiManager$ListOrder;

    goto :goto_4

    .line 332
    :pswitch_48
    sget-object v0, Lcom/bilibili/tv/ui/area/RegionApiManager$ListOrder;->VIEW:Lcom/bilibili/tv/ui/area/RegionApiManager$ListOrder;

    goto :goto_4

    .line 334
    :pswitch_4b
    sget-object v0, Lcom/bilibili/tv/ui/area/RegionApiManager$ListOrder;->REPLY:Lcom/bilibili/tv/ui/area/RegionApiManager$ListOrder;

    goto :goto_4

    .line 336
    :pswitch_4e
    sget-object v0, Lcom/bilibili/tv/ui/area/RegionApiManager$ListOrder;->DANMAKU:Lcom/bilibili/tv/ui/area/RegionApiManager$ListOrder;

    goto :goto_4

    .line 338
    :pswitch_51
    sget-object v0, Lcom/bilibili/tv/ui/area/RegionApiManager$ListOrder;->FAVORITE:Lcom/bilibili/tv/ui/area/RegionApiManager$ListOrder;

    goto :goto_4

    .line 328
    :sswitch_data_54
    .sparse-switch
        0x373aa5 -> :sswitch_1d
        0x67612ea -> :sswitch_27
        0x3ea1c99c -> :sswitch_3b
        0x4a61bb36 -> :sswitch_13
        0x55b6590f -> :sswitch_31
    .end sparse-switch

    :pswitch_data_6a
    .packed-switch 0x0
        :pswitch_45
        :pswitch_48
        :pswitch_4b
        :pswitch_4e
        :pswitch_51
    .end packed-switch
.end method

.method private initNormalCategory(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 149
    const v0, 0x7f0a00ad

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/area/AreaActivity;->setContentView(I)V

    .line 152
    const v0, 0x7f080065

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/area/AreaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 154
    if-eqz v0, :cond_42

    .line 155
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/area/AreaActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/bilibili/tv/ui/area/AreaActivity;->b:I

    invoke-static {v1, v2}, Lcom/bilibili/tv/api/category/CategoryManager;->getPrimaryCategoryBy(Landroid/content/Context;I)Lcom/bilibili/tv/api/category/CategoryMeta;

    move-result-object v1

    .line 157
    if-eqz v1, :cond_3a

    .line 159
    iget-object v1, v1, Lcom/bilibili/tv/api/category/CategoryMeta;->mTypeName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    :goto_22
    iget v0, p0, Lcom/bilibili/tv/ui/area/AreaActivity;->b:I

    invoke-static {v0}, Lcom/bilibili/tv/ui/area/AreaVideoListFragment;->newInstance(I)Lcom/bilibili/tv/ui/area/AreaVideoListFragment;

    move-result-object v0

    .line 172
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/area/AreaActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 173
    const v2, 0x7f080091

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 174
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commitNow()V

    .line 176
    return-void

    .line 161
    :cond_3a
    const-string v0, "AreaActivity"

    const-string v1, "categoryMeta is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22

    .line 164
    :cond_42
    const-string v0, "AreaActivity"

    const-string v1, "titleView is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22
.end method

.method private initSpecialCategory(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 112
    const v0, 0x7f0800eb

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/area/AreaActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/area/AreaActivity;->b(Landroid/support/v7/widget/RecyclerView;)V

    .line 114
    const v0, 0x7f080065

    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/area/AreaActivity;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 115
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/area/AreaActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/bilibili/tv/ui/area/AreaActivity;->b:I

    invoke-static {v2, v3}, Lcom/bilibili/tv/api/category/CategoryManager;->getPrimaryCategoryBy(Landroid/content/Context;I)Lcom/bilibili/tv/api/category/CategoryMeta;

    move-result-object v2

    .line 116
    if-eqz v2, :cond_38

    .line 117
    iget-object v3, v2, Lcom/bilibili/tv/api/category/CategoryMeta;->mTypeName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    const-string v0, "tv_channel_pageview"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "name"

    aput-object v4, v3, v1

    iget-object v4, v2, Lcom/bilibili/tv/api/category/CategoryMeta;->mTypeName:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-static {v0, v3}, Lbl/ok;->a(Ljava/lang/String;[Ljava/lang/String;)V

    .line 121
    :cond_38
    new-instance v0, Lbl/adr;

    invoke-virtual {p0}, Lcom/bilibili/tv/ui/area/AreaActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    const v4, 0x7f080091

    invoke-direct {v0, v3, v4, v2}, Lbl/adr;-><init>(Landroid/support/v4/app/FragmentManager;ILcom/bilibili/tv/api/category/CategoryMeta;)V

    iput-object v0, p0, Lcom/bilibili/tv/ui/area/AreaActivity;->d:Lbl/adr;

    .line 123
    new-instance v0, Lcom/bilibili/tv/ui/area/AreaActivity$LeftLayoutManager;

    invoke-direct {v0, p0, p0, v5, v1}, Lcom/bilibili/tv/ui/area/AreaActivity$LeftLayoutManager;-><init>(Lcom/bilibili/tv/ui/area/AreaActivity;Landroid/content/Context;IZ)V

    .line 124
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/area/AreaActivity;->j()Landroid/support/v7/widget/RecyclerView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$h;)V

    .line 126
    new-instance v2, Lbl/cj;

    invoke-direct {v2}, Lbl/cj;-><init>()V

    .line 127
    iget-object v0, p0, Lcom/bilibili/tv/ui/area/AreaActivity;->d:Lbl/adr;

    invoke-virtual {v0}, Lbl/adr;->a()I

    move-result v3

    move v0, v1

    .line 128
    :goto_5e
    if-ge v0, v3, :cond_70

    .line 129
    iget-object v4, p0, Lcom/bilibili/tv/ui/area/AreaActivity;->d:Lbl/adr;

    invoke-virtual {v4, v0}, Lbl/adr;->b(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Lbl/cj;->b(ILjava/lang/Object;)V

    .line 128
    add-int/lit8 v0, v0, 0x1

    goto :goto_5e

    .line 132
    :cond_70
    new-instance v0, Lcom/bilibili/tv/ui/area/AreaActivity$Adapter;

    iget v3, p0, Lcom/bilibili/tv/ui/area/AreaActivity;->b:I

    invoke-direct {v0, p0, v2, v3}, Lcom/bilibili/tv/ui/area/AreaActivity$Adapter;-><init>(Lcom/bilibili/tv/ui/area/AreaActivity;Lbl/cj;I)V

    iput-object v0, p0, Lcom/bilibili/tv/ui/area/AreaActivity;->c:Lcom/bilibili/tv/ui/area/AreaActivity$Adapter;

    .line 133
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/area/AreaActivity;->j()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setFocusable(Z)V

    .line 134
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/area/AreaActivity;->j()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 135
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/area/AreaActivity;->j()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    iget-object v1, p0, Lcom/bilibili/tv/ui/area/AreaActivity;->c:Lcom/bilibili/tv/ui/area/AreaActivity$Adapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 137
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/area/AreaActivity;->j()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/area/AreaActivity$GlobalFocusChangeListener;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/area/AreaActivity$GlobalFocusChangeListener;-><init>(Lcom/bilibili/tv/ui/area/AreaActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalFocusChangeListener(Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;)V

    .line 138
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/area/AreaActivity;->j()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/bilibili/tv/ui/area/AreaActivity$TouchModeChangeListener;

    invoke-direct {v1, p0}, Lcom/bilibili/tv/ui/area/AreaActivity$TouchModeChangeListener;-><init>(Lcom/bilibili/tv/ui/area/AreaActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 139
    return-void
.end method

.method private isDescendantOf(Landroid/view/View;Landroid/view/View;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 345
    if-eqz p1, :cond_5

    if-nez p2, :cond_7

    :cond_5
    move v0, v1

    .line 355
    :goto_6
    return v0

    .line 348
    :cond_7
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 349
    :goto_b
    instance-of v2, v0, Landroid/view/View;

    if-eqz v2, :cond_18

    .line 350
    if-ne v0, p1, :cond_13

    .line 351
    const/4 v0, 0x1

    goto :goto_6

    .line 353
    :cond_13
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_b

    :cond_18
    move v0, v1

    .line 355
    goto :goto_6
.end method

.method private isSpecialCategory(I)Z
    .locals 1

    .prologue
    .line 102
    const v0, 0x10066

    if-eq p1, v0, :cond_14

    const v0, 0x10001

    if-eq p1, v0, :cond_14

    const v0, 0x10068

    if-eq p1, v0, :cond_14

    const v0, 0x10067

    if-ne p1, v0, :cond_16

    :cond_14
    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method private showSortMenu()V
    .locals 12

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 275
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/area/AreaActivity;->h()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 276
    instance-of v1, v0, Lbl/adq;

    if-nez v1, :cond_e

    .line 300
    :goto_d
    return-void

    .line 280
    :cond_e
    check-cast v0, Lbl/adq;

    .line 281
    invoke-direct {p0}, Lcom/bilibili/tv/ui/area/AreaActivity;->getSelectedView()Landroid/view/View;

    move-result-object v1

    .line 283
    new-instance v2, Lbl/SortMenuDialog;

    invoke-direct {v2, p0}, Lbl/SortMenuDialog;-><init>(Landroid/app/Activity;)V

    .line 284
    const/4 v3, 0x0

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "\u7efc\u5408\u6392\u5e8f"

    aput-object v5, v4, v7

    const-string v5, "\u6700\u65b0\u53d1\u5e03"

    aput-object v5, v4, v8

    const-string v5, "\u6700\u591a\u64ad\u653e"

    aput-object v5, v4, v9

    const-string v5, "\u6700\u591a\u8bc4\u8bba"

    aput-object v5, v4, v10

    const-string v5, "\u6700\u591a\u5f39\u5e55"

    aput-object v5, v4, v11

    const/4 v5, 0x5

    const-string v6, "\u6700\u591a\u6536\u85cf"

    aput-object v6, v4, v5

    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/String;

    const-string v6, "default"

    aput-object v6, v5, v7

    const-string v6, "senddate"

    aput-object v6, v5, v8

    const-string v6, "view"

    aput-object v6, v5, v9

    const-string v6, "reply"

    aput-object v6, v5, v10

    const-string v6, "danmaku"

    aput-object v6, v5, v11

    const/4 v6, 0x5

    const-string v7, "favorite"

    aput-object v7, v5, v6

    .line 287
    invoke-direct {p0, v0}, Lcom/bilibili/tv/ui/area/AreaActivity;->getCurrentSortValue(Lbl/adq;)Ljava/lang/String;

    move-result-object v6

    .line 284
    invoke-virtual {v2, v3, v4, v5, v6}, Lbl/SortMenuDialog;->addGroup(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    new-instance v3, Lcom/bilibili/tv/ui/area/AreaActivity$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/bilibili/tv/ui/area/AreaActivity$1;-><init>(Lcom/bilibili/tv/ui/area/AreaActivity;Lbl/adq;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Lbl/SortMenuDialog;->setOnSortSelectedListener(Lbl/SortMenuDialog$OnSortSelectedListener;)V

    .line 299
    invoke-virtual {v2}, Lbl/SortMenuDialog;->show()V

    goto :goto_d
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    const-string v0, "ott-platform.area.0.0.pv"

    return-object v0
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/area/AreaActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 76
    if-nez v0, :cond_7

    .line 96
    :goto_6
    return-void

    .line 80
    :cond_7
    const-string v1, "subarea_id"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bilibili/tv/ui/area/AreaActivity;->b:I

    .line 81
    iget v0, p0, Lcom/bilibili/tv/ui/area/AreaActivity;->b:I

    if-nez v0, :cond_1a

    .line 82
    const-string v0, "\u5206\u533aid\u9519\u8bef\uff01\uff01\uff01"

    invoke-static {p0, v0}, Lbl/lr;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_6

    .line 87
    :cond_1a
    iget v0, p0, Lcom/bilibili/tv/ui/area/AreaActivity;->b:I

    invoke-direct {p0, v0}, Lcom/bilibili/tv/ui/area/AreaActivity;->isSpecialCategory(I)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 89
    const-string v0, "AreaActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Special category: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/bilibili/tv/ui/area/AreaActivity;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", using old implementation"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/area/AreaActivity;->initSpecialCategory(Landroid/os/Bundle;)V

    goto :goto_6

    .line 93
    :cond_46
    const-string v0, "AreaActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Normal category: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/bilibili/tv/ui/area/AreaActivity;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", using new implementation"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    invoke-direct {p0, p1}, Lcom/bilibili/tv/ui/area/AreaActivity;->initNormalCategory(Landroid/os/Bundle;)V

    goto :goto_6
.end method

.method public a(Lbl/agd;)V
    .locals 0

    .prologue
    .line 56
    return-void
.end method

.method public a_()Z
    .locals 1

    .prologue
    .line 360
    invoke-static {p0}, Lbl/wg;->a(Lbl/wf;)Z

    move-result v0

    return v0
.end method

.method public b()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 365
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 366
    const-string v1, "page"

    iget v2, p0, Lcom/bilibili/tv/ui/area/AreaActivity;->b:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    return-object v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 181
    iget v0, p0, Lcom/bilibili/tv/ui/area/AreaActivity;->b:I

    invoke-direct {p0, v0}, Lcom/bilibili/tv/ui/area/AreaActivity;->isSpecialCategory(I)Z

    move-result v0

    if-nez v0, :cond_e

    .line 182
    invoke-super {p0, p1}, Lcom/bilibili/tv/ui/base/BaseSideActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 234
    :goto_d
    return v0

    .line 186
    :cond_e
    iget-object v0, p0, Lcom/bilibili/tv/ui/area/AreaActivity;->c:Lcom/bilibili/tv/ui/area/AreaActivity$Adapter;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/bilibili/tv/ui/area/AreaActivity;->d:Lbl/adr;

    if-nez v0, :cond_1b

    .line 187
    :cond_16
    invoke-super {p0, p1}, Lcom/bilibili/tv/ui/base/BaseSideActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_d

    .line 190
    :cond_1b
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 191
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    .line 193
    if-nez v0, :cond_4a

    const/16 v1, 0x52

    if-ne v3, v1, :cond_4a

    .line 194
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/area/AreaActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    .line 195
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/area/AreaActivity;->h()Landroid/support/v4/app/Fragment;

    move-result-object v4

    .line 196
    if-eqz v1, :cond_4a

    if-eqz v4, :cond_4a

    invoke-virtual {v4}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_4a

    .line 197
    invoke-virtual {v4}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v4

    invoke-direct {p0, v4, v1}, Lcom/bilibili/tv/ui/area/AreaActivity;->isDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 198
    invoke-direct {p0}, Lcom/bilibili/tv/ui/area/AreaActivity;->showSortMenu()V

    move v0, v2

    .line 199
    goto :goto_d

    .line 204
    :cond_4a
    if-nez v0, :cond_5a

    .line 205
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/area/AreaActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    .line 206
    if-nez v1, :cond_57

    .line 207
    invoke-super {p0, p1}, Lcom/bilibili/tv/ui/base/BaseSideActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_d

    .line 210
    :cond_57
    packed-switch v3, :pswitch_data_a2

    .line 234
    :cond_5a
    :goto_5a
    invoke-super {p0, p1}, Lcom/bilibili/tv/ui/base/BaseSideActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_d

    .line 212
    :pswitch_5f
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    const-string v1, "right"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 213
    iget-object v0, p0, Lcom/bilibili/tv/ui/area/AreaActivity;->c:Lcom/bilibili/tv/ui/area/AreaActivity$Adapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/area/AreaActivity$Adapter;->b(Z)V

    goto :goto_5a

    .line 218
    :pswitch_7a
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/area/AreaActivity;->h()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 219
    if-nez v0, :cond_82

    move v0, v2

    .line 220
    goto :goto_d

    .line 222
    :cond_82
    instance-of v3, v0, Lbl/adw;

    if-eqz v3, :cond_91

    check-cast v0, Lbl/adw;

    invoke-virtual {v0}, Lbl/adw;->c()Z

    move-result v0

    if-nez v0, :cond_91

    move v0, v2

    .line 223
    goto/16 :goto_d

    .line 225
    :cond_91
    instance-of v0, v1, Lcom/bilibili/tv/widget/side/SideLeftSelectLinearLayout;

    if-eqz v0, :cond_5a

    move-object v0, v1

    .line 226
    check-cast v0, Lcom/bilibili/tv/widget/side/SideLeftSelectLinearLayout;

    invoke-virtual {v0}, Lcom/bilibili/tv/widget/side/SideLeftSelectLinearLayout;->c()V

    .line 227
    iget-object v0, p0, Lcom/bilibili/tv/ui/area/AreaActivity;->c:Lcom/bilibili/tv/ui/area/AreaActivity$Adapter;

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/ui/area/AreaActivity$Adapter;->b(Z)V

    goto :goto_5a

    .line 210
    nop

    :pswitch_data_a2
    .packed-switch 0x15
        :pswitch_5f
        :pswitch_7a
    .end packed-switch
.end method

.method public g()I
    .locals 1

    .prologue
    .line 60
    const v0, 0x7f0a001a

    return v0
.end method

.method public h()Landroid/support/v4/app/Fragment;
    .locals 2

    .prologue
    .line 239
    iget-object v0, p0, Lcom/bilibili/tv/ui/area/AreaActivity;->d:Lbl/adr;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/bilibili/tv/ui/area/AreaActivity;->c:Lcom/bilibili/tv/ui/area/AreaActivity$Adapter;

    if-nez v0, :cond_a

    .line 240
    :cond_8
    const/4 v0, 0x0

    .line 242
    :goto_9
    return-object v0

    :cond_a
    iget-object v0, p0, Lcom/bilibili/tv/ui/area/AreaActivity;->d:Lbl/adr;

    iget-object v1, p0, Lcom/bilibili/tv/ui/area/AreaActivity;->c:Lcom/bilibili/tv/ui/area/AreaActivity$Adapter;

    invoke-virtual {v1}, Lcom/bilibili/tv/ui/area/AreaActivity$Adapter;->f()I

    move-result v1

    invoke-virtual {v0, v1}, Lbl/adr;->d(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    goto :goto_9
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 247
    invoke-super {p0}, Lcom/bilibili/tv/ui/base/BaseSideActivity;->onDestroy()V

    .line 248
    iput-object v0, p0, Lcom/bilibili/tv/ui/area/AreaActivity;->c:Lcom/bilibili/tv/ui/area/AreaActivity$Adapter;

    .line 249
    iput-object v0, p0, Lcom/bilibili/tv/ui/area/AreaActivity;->d:Lbl/adr;

    .line 250
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 254
    const-string v0, "v"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 256
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 257
    const-string v1, "page"

    iget v2, p0, Lcom/bilibili/tv/ui/area/AreaActivity;->b:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    sget-object v1, Lbl/abl;->a:Lbl/abl;

    const-string v2, "ott-platform.area.sort.0.click"

    invoke-virtual {v1, v2, v0}, Lbl/abl;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 260
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/area/AreaActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 261
    if-nez v0, :cond_24

    .line 271
    :cond_23
    :goto_23
    return v3

    .line 265
    :cond_24
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/area/AreaActivity;->h()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 266
    instance-of v0, v0, Lbl/adq;

    if-eqz v0, :cond_23

    .line 270
    invoke-direct {p0}, Lcom/bilibili/tv/ui/area/AreaActivity;->showSortMenu()V

    goto :goto_23
.end method
