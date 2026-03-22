.class public final Lbl/aey;
.super Landroid/support/v4/app/FragmentPagerAdapter;
.source "aey.java"


# instance fields
.field private a:Landroid/support/v4/app/Fragment;

.field private fragmentTypes:[I

.field private mFragments:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentManager;Landroid/content/Context;)V
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v0, 0x1

    .line 21
    invoke-direct {p0, p1}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 22
    const-string v1, "fm"

    invoke-static {p1, v1}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1, v5}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v1, p0, Lbl/aey;->mFragments:Landroid/util/SparseArray;

    .line 24
    const/16 v1, 0x8

    new-array v1, v1, [I

    iput-object v1, p0, Lbl/aey;->fragmentTypes:[I

    .line 26
    invoke-static {p2}, Lbl/abd;->get_top_tab_config(Landroid/content/Context;)I

    move-result v2

    .line 27
    const/4 v1, 0x0

    .line 29
    and-int/lit8 v3, v2, 0x1

    if-eqz v3, :cond_97

    .line 30
    iget-object v3, p0, Lbl/aey;->mFragments:Landroid/util/SparseArray;

    sget-object v4, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->Companion:Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$b;

    invoke-virtual {v4}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$b;->a()Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 31
    iget-object v3, p0, Lbl/aey;->fragmentTypes:[I

    aput v0, v3, v1

    .line 34
    :goto_2f
    and-int/lit8 v1, v2, 0x2

    if-eqz v1, :cond_45

    .line 35
    iget-object v1, p0, Lbl/aey;->mFragments:Landroid/util/SparseArray;

    sget-object v3, Lcom/bilibili/tv/ui/main/content/MainHotFragment;->Companion:Lcom/bilibili/tv/ui/main/content/MainHotFragment$b;

    invoke-virtual {v3}, Lcom/bilibili/tv/ui/main/content/MainHotFragment$b;->a()Lcom/bilibili/tv/ui/main/content/MainHotFragment;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 36
    iget-object v1, p0, Lbl/aey;->fragmentTypes:[I

    const/4 v3, 0x2

    aput v3, v1, v0

    .line 37
    add-int/lit8 v0, v0, 0x1

    .line 39
    :cond_45
    and-int/lit8 v1, v2, 0x4

    if-eqz v1, :cond_5b

    .line 40
    iget-object v1, p0, Lbl/aey;->mFragments:Landroid/util/SparseArray;

    sget-object v3, Lbl/afa;->Companion:Lbl/afa$a;

    invoke-virtual {v3}, Lbl/afa$a;->a()Lbl/afa;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 41
    iget-object v1, p0, Lbl/aey;->fragmentTypes:[I

    const/4 v3, 0x3

    aput v3, v1, v0

    .line 42
    add-int/lit8 v0, v0, 0x1

    .line 44
    :cond_5b
    and-int/lit8 v1, v2, 0x8

    if-eqz v1, :cond_70

    .line 45
    iget-object v1, p0, Lbl/aey;->mFragments:Landroid/util/SparseArray;

    sget-object v3, Lcom/bilibili/tv/ui/main/content/MainBangumiFragment;->Companion:Lcom/bilibili/tv/ui/main/content/MainBangumiFragment$c;

    invoke-virtual {v3}, Lcom/bilibili/tv/ui/main/content/MainBangumiFragment$c;->a()Lcom/bilibili/tv/ui/main/content/MainBangumiFragment;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 46
    iget-object v1, p0, Lbl/aey;->fragmentTypes:[I

    aput v5, v1, v0

    .line 47
    add-int/lit8 v0, v0, 0x1

    .line 49
    :cond_70
    and-int/lit8 v1, v2, 0x10

    if-eqz v1, :cond_86

    .line 50
    iget-object v1, p0, Lbl/aey;->mFragments:Landroid/util/SparseArray;

    sget-object v2, Lcom/bilibili/tv/ui/main/content/MainPgcFragment;->Companion:Lcom/bilibili/tv/ui/main/content/MainPgcFragment$c;

    invoke-virtual {v2}, Lcom/bilibili/tv/ui/main/content/MainPgcFragment$c;->a()Lcom/bilibili/tv/ui/main/content/MainPgcFragment;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 51
    iget-object v1, p0, Lbl/aey;->fragmentTypes:[I

    const/4 v2, 0x5

    aput v2, v1, v0

    .line 52
    add-int/lit8 v0, v0, 0x1

    .line 55
    :cond_86
    iget-object v1, p0, Lbl/aey;->mFragments:Landroid/util/SparseArray;

    sget-object v2, Lcom/bilibili/tv/ui/main/content/MainMyFragment;->Companion:Lcom/bilibili/tv/ui/main/content/MainMyFragment$a;

    invoke-virtual {v2}, Lcom/bilibili/tv/ui/main/content/MainMyFragment$a;->a()Lcom/bilibili/tv/ui/main/content/MainMyFragment;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 56
    iget-object v1, p0, Lbl/aey;->fragmentTypes:[I

    const/4 v2, 0x6

    aput v2, v1, v0

    .line 57
    return-void

    :cond_97
    move v0, v1

    goto :goto_2f
.end method


# virtual methods
.method public final a()Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lbl/aey;->a:Landroid/support/v4/app/Fragment;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lbl/aey;->mFragments:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lbl/aey;->mFragments:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 66
    const-string v1, "mFragments!!.get(position)"

    invoke-static {v0, v1}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    return-object v0
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 77
    if-ltz p1, :cond_e

    iget-object v0, p0, Lbl/aey;->fragmentTypes:[I

    array-length v0, v0

    if-ge p1, v0, :cond_e

    .line 78
    iget-object v0, p0, Lbl/aey;->fragmentTypes:[I

    aget v0, v0, p1

    .line 79
    packed-switch v0, :pswitch_data_24

    .line 88
    :cond_e
    const-string v0, ""

    :goto_10
    return-object v0

    .line 80
    :pswitch_11
    const-string v0, "\u63a8\u8350"

    goto :goto_10

    .line 81
    :pswitch_14
    const-string v0, "\u70ed\u95e8"

    goto :goto_10

    .line 82
    :pswitch_17
    const-string v0, "\u5206\u533a"

    goto :goto_10

    .line 83
    :pswitch_1a
    const-string v0, "\u756a\u5267"

    goto :goto_10

    .line 84
    :pswitch_1d
    const-string v0, "\u5f71\u89c6"

    goto :goto_10

    .line 85
    :pswitch_20
    const-string v0, "\u6211\u7684"

    goto :goto_10

    .line 79
    nop

    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_11
        :pswitch_14
        :pswitch_17
        :pswitch_1a
        :pswitch_1d
        :pswitch_20
    .end packed-switch
.end method

.method public setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 93
    const-string v0, "container"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    const-string v0, "object"

    invoke-static {p3, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lbl/aey;->a:Landroid/support/v4/app/Fragment;

    if-eq v0, p3, :cond_13

    move-object v0, p3

    .line 96
    check-cast v0, Landroid/support/v4/app/Fragment;

    iput-object v0, p0, Lbl/aey;->a:Landroid/support/v4/app/Fragment;

    .line 98
    :cond_13
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentPagerAdapter;->setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 99
    return-void
.end method
