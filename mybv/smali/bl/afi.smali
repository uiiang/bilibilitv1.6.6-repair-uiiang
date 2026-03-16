.class public final Lbl/afi;
.super Lbl/adt;
.source "afi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbl/afi$d;,
        Lbl/afi$c;,
        Lbl/afi$LiveRoomView;,
        Lbl/afi$l;,
        Lbl/afi$a;,
        Lbl/afi$m;,
        Lbl/afi$kk;,
        Lbl/afi$k;,
        Lbl/afi$n;,
        Lbl/afi$b;,
        Lbl/afi$f;,
        Lbl/afi$SearchLiveResponse;,
        Lbl/afi$j;,
        Lbl/afi$i;,
        Lbl/afi$h;,
        Lbl/afi$g;,
        Lbl/afi$p;,
        Lbl/afi$o;,
        Lbl/afi$e;
    }
.end annotation


# static fields
.field public static final Companion:Lbl/afi$e;

.field private static final f17u:Ljava/lang/String; = "com.bilibili.tv.ui.search.SearchResultFragment.EXTRA_TID"

.field private static final t:Ljava/lang/String; = "SearchResultFragment"


# instance fields
.field private a:Lcom/bilibili/tv/ui/base/LoadingImageView;

.field private b:Landroid/support/v7/widget/RecyclerView;

.field private c:Landroid/support/v7/widget/RecyclerView;

.field private d:Lbl/afi$f;

.field private e:Lbl/afi$c;

.field private f:Landroid/support/v7/widget/LinearLayoutManager;

.field private g:Landroid/support/v7/widget/LinearLayoutManager;

.field private h:Lbl/afi$g;

.field private i:Lbl/afi$j;

.field private j:Lbl/afi$h;

.field private k:Lbl/afi$i;

.field private l:Ljava/lang/String;

.field public live_order:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Landroid/widget/ImageView;

.field private o:I

.field private p:Z

.field private q:Z

.field private r:Ljava/lang/String;

.field private s:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 55
    new-instance v0, Lbl/afi$e;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbl/afi$e;-><init>(Lbl/bbg;)V

    sput-object v0, Lbl/afi;->Companion:Lbl/afi$e;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 54
    invoke-direct {p0}, Lbl/adt;-><init>()V

    .line 75
    sget-object v0, Lcom/bilibili/tv/ui/search/SearchActivity;->Companion:Lcom/bilibili/tv/ui/search/SearchActivity$a;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/search/SearchActivity$a;->c()[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v1

    iput-object v0, p0, Lbl/afi;->l:Ljava/lang/String;

    .line 76
    sget-object v0, Lcom/bilibili/tv/ui/search/SearchActivity;->Companion:Lcom/bilibili/tv/ui/search/SearchActivity$a;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/search/SearchActivity$a;->d()[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v1

    iput-object v0, p0, Lbl/afi;->m:Ljava/lang/String;

    .line 77
    sget-object v0, Lcom/bilibili/tv/ui/search/SearchActivity;->live_orders:[Ljava/lang/String;

    aget-object v0, v0, v1

    iput-object v0, p0, Lbl/afi;->live_order:Ljava/lang/String;

    .line 78
    iput v2, p0, Lbl/afi;->o:I

    .line 79
    iput-boolean v2, p0, Lbl/afi;->p:Z

    return-void
.end method

.method static synthetic access$000(Lbl/afi;)Z
    .locals 1

    .prologue
    .line 54
    iget-boolean v0, p0, Lbl/afi;->q:Z

    return v0
.end method

.method static synthetic access$002(Lbl/afi;Z)Z
    .locals 0

    .prologue
    .line 54
    iput-boolean p1, p0, Lbl/afi;->q:Z

    return p1
.end method

.method static synthetic access$100(Lbl/afi;)Landroid/support/v7/widget/LinearLayoutManager;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lbl/afi;->f:Landroid/support/v7/widget/LinearLayoutManager;

    return-object v0
.end method

.method static synthetic access$1000(Lbl/afi;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lbl/afi;->r:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lbl/afi;)Landroid/support/v7/widget/LinearLayoutManager;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lbl/afi;->g:Landroid/support/v7/widget/LinearLayoutManager;

    return-object v0
.end method

.method static synthetic access$200(Lbl/afi;)Lbl/afi$c;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lbl/afi;->e:Lbl/afi$c;

    return-object v0
.end method

.method static synthetic access$300(Lbl/afi;)Z
    .locals 1

    .prologue
    .line 54
    iget-boolean v0, p0, Lbl/afi;->p:Z

    return v0
.end method

.method static synthetic access$302(Lbl/afi;Z)Z
    .locals 0

    .prologue
    .line 54
    iput-boolean p1, p0, Lbl/afi;->p:Z

    return p1
.end method

.method static synthetic access$400(Lbl/afi;)Lbl/afi$f;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lbl/afi;->d:Lbl/afi$f;

    return-object v0
.end method

.method static synthetic access$500(Lbl/afi;)I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lbl/afi;->o:I

    return v0
.end method

.method static synthetic access$508(Lbl/afi;)I
    .locals 2

    .prologue
    .line 54
    iget v0, p0, Lbl/afi;->o:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lbl/afi;->o:I

    return v0
.end method

.method static synthetic access$600(Lbl/afi;)I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lbl/afi;->s:I

    return v0
.end method

.method static synthetic access$602(Lbl/afi;I)I
    .locals 0

    .prologue
    .line 54
    iput p1, p0, Lbl/afi;->s:I

    return p1
.end method

.method static synthetic access$700(Lbl/afi;)Landroid/support/v7/widget/RecyclerView;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lbl/afi;->c:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method static synthetic access$800(Lbl/afi;)Landroid/support/v7/widget/RecyclerView;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lbl/afi;->b:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method static synthetic access$900(Lbl/afi;)Lcom/bilibili/tv/ui/base/LoadingImageView;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lbl/afi;->a:Lcom/bilibili/tv/ui/base/LoadingImageView;

    return-object v0
.end method

.method private final n()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 353
    iput v1, p0, Lbl/afi;->s:I

    .line 354
    sget-object v0, Lcom/bilibili/tv/ui/search/SearchActivity;->Companion:Lcom/bilibili/tv/ui/search/SearchActivity$a;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/search/SearchActivity$a;->c()[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v1

    iput-object v0, p0, Lbl/afi;->l:Ljava/lang/String;

    .line 355
    sget-object v0, Lcom/bilibili/tv/ui/search/SearchActivity;->Companion:Lcom/bilibili/tv/ui/search/SearchActivity$a;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/search/SearchActivity$a;->d()[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v1

    iput-object v0, p0, Lbl/afi;->m:Ljava/lang/String;

    .line 356
    sget-object v0, Lcom/bilibili/tv/ui/search/SearchActivity;->live_orders:[Ljava/lang/String;

    aget-object v0, v0, v1

    iput-object v0, p0, Lbl/afi;->live_order:Ljava/lang/String;

    .line 357
    return-void
.end method

.method private final p()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/tv/api/category/CategoryMeta;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v6, 0xd

    const/4 v5, 0x0

    .line 1589
    invoke-virtual {p0}, Lbl/afi;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/bilibili/tv/api/category/CategoryManager;->getRootCategory(Landroid/content/Context;)Lcom/bilibili/tv/api/category/CategoryMeta;

    move-result-object v0

    .line 1590
    if-nez v0, :cond_f

    .line 1591
    const/4 v0, 0x0

    .line 1603
    :goto_e
    return-object v0

    .line 1593
    :cond_f
    invoke-virtual {v0}, Lcom/bilibili/tv/api/category/CategoryMeta;->getChildren()Ljava/util/List;

    move-result-object v0

    .line 1594
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 1595
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1c
    :goto_1c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/category/CategoryMeta;

    .line 1596
    iget v3, v0, Lcom/bilibili/tv/api/category/CategoryMeta;->mTid:I

    if-eq v3, v6, :cond_1c

    iget v3, v0, Lcom/bilibili/tv/api/category/CategoryMeta;->mTid:I

    const/16 v4, 0xa7

    if-eq v3, v4, :cond_1c

    .line 1597
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    .line 1600
    :cond_36
    new-instance v0, Lcom/bilibili/tv/api/category/CategoryMeta;

    const-string v2, "\u5168\u90e8"

    invoke-direct {v0, v5, v2, v5}, Lcom/bilibili/tv/api/category/CategoryMeta;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v1, v5, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1601
    const/4 v0, 0x1

    new-instance v2, Lcom/bilibili/tv/api/category/CategoryMeta;

    const/4 v3, -0x1

    const-string v4, "\u756a\u5267\u5f71\u89c6"

    invoke-direct {v2, v3, v4, v5}, Lcom/bilibili/tv/api/category/CategoryMeta;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1602
    const/4 v0, 0x2

    new-instance v2, Lcom/bilibili/tv/api/category/CategoryMeta;

    const/4 v3, -0x2

    const-string v4, "\u7528\u6237"

    invoke-direct {v2, v3, v4, v5}, Lcom/bilibili/tv/api/category/CategoryMeta;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    move-object v0, v1

    .line 1603
    goto :goto_e
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lbl/afi;->l:Ljava/lang/String;

    return-object v0
.end method

.method public final a(I)V
    .locals 0

    .prologue
    .line 1607
    if-nez p1, :cond_6

    .line 1608
    invoke-virtual {p0}, Lbl/afi;->e()V

    .line 1623
    :goto_5
    return-void

    .line 1611
    :cond_6
    sparse-switch p1, :sswitch_data_1a

    .line 1622
    invoke-virtual {p0}, Lbl/afi;->f()V

    goto :goto_5

    .line 1613
    :sswitch_d
    invoke-virtual {p0}, Lbl/afi;->g()V

    goto :goto_5

    .line 1616
    :sswitch_11
    invoke-virtual {p0}, Lbl/afi;->h()V

    goto :goto_5

    .line 1619
    :sswitch_15
    invoke-virtual {p0}, Lbl/afi;->getLives()V

    goto :goto_5

    .line 1611
    nop

    :sswitch_data_1a
    .sparse-switch
        -0x2 -> :sswitch_11
        -0x1 -> :sswitch_d
        0x10001 -> :sswitch_15
    .end sparse-switch
.end method

.method public final a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 344
    const-string v0, "text"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 345
    iput-object p1, p0, Lbl/afi;->r:Ljava/lang/String;

    .line 346
    invoke-direct {p0}, Lbl/afi;->n()V

    .line 347
    invoke-virtual {p0}, Lbl/afi;->o()V

    .line 348
    invoke-virtual {p0}, Lbl/afi;->e()V

    .line 349
    const-string v0, "tv_search_result"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "keyword"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lbl/ok;->a(Ljava/lang/String;[Ljava/lang/String;)V

    .line 350
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lbl/afi;->m:Ljava/lang/String;

    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 421
    const-string v0, "order"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 422
    iget-object v0, p0, Lbl/afi;->l:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 423
    iput-object p1, p0, Lbl/afi;->l:Ljava/lang/String;

    .line 424
    if-eqz v0, :cond_10

    .line 435
    :cond_f
    :goto_f
    return-void

    .line 427
    :cond_10
    invoke-virtual {p0}, Lbl/afi;->m()Landroid/view/View;

    move-result-object v0

    .line 428
    if-eqz v0, :cond_19

    .line 429
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 431
    :cond_19
    iget-object v0, p0, Lbl/afi;->d:Lbl/afi$f;

    if-eqz v0, :cond_f

    .line 432
    invoke-virtual {p0}, Lbl/afi;->o()V

    .line 433
    iget v0, p0, Lbl/afi;->s:I

    invoke-virtual {p0, v0}, Lbl/afi;->a(I)V

    goto :goto_f
.end method

.method protected final c()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lbl/afi;->n:Landroid/widget/ImageView;

    return-object v0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 438
    const-string v0, "order"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 439
    iget-object v0, p0, Lbl/afi;->m:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 440
    iput-object p1, p0, Lbl/afi;->m:Ljava/lang/String;

    .line 441
    if-eqz v0, :cond_10

    .line 452
    :cond_f
    :goto_f
    return-void

    .line 444
    :cond_10
    invoke-virtual {p0}, Lbl/afi;->m()Landroid/view/View;

    move-result-object v0

    .line 445
    if-eqz v0, :cond_19

    .line 446
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 448
    :cond_19
    iget-object v0, p0, Lbl/afi;->d:Lbl/afi$f;

    if-eqz v0, :cond_f

    .line 449
    invoke-virtual {p0}, Lbl/afi;->o()V

    .line 450
    iget v0, p0, Lbl/afi;->s:I

    invoke-virtual {p0, v0}, Lbl/afi;->a(I)V

    goto :goto_f
.end method

.method public final cc(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 456
    iget-object v0, p0, Lbl/afi;->live_order:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 466
    :cond_8
    :goto_8
    return-void

    .line 457
    :cond_9
    iput-object p1, p0, Lbl/afi;->live_order:Ljava/lang/String;

    .line 458
    invoke-virtual {p0}, Lbl/afi;->m()Landroid/view/View;

    move-result-object v0

    .line 459
    if-eqz v0, :cond_14

    .line 460
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 462
    :cond_14
    iget-object v0, p0, Lbl/afi;->d:Lbl/afi$f;

    if-eqz v0, :cond_8

    .line 463
    invoke-virtual {p0}, Lbl/afi;->o()V

    .line 464
    iget v0, p0, Lbl/afi;->s:I

    invoke-virtual {p0, v0}, Lbl/afi;->a(I)V

    goto :goto_8
.end method

.method public final d()V
    .locals 2

    .prologue
    .line 303
    iget-object v0, p0, Lbl/afi;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1a

    .line 304
    iget-object v0, p0, Lbl/afi;->f:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->o()I

    move-result v0

    .line 305
    iget-object v1, p0, Lbl/afi;->f:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/LinearLayoutManager;->c(I)Landroid/view/View;

    move-result-object v0

    .line 306
    if-eqz v0, :cond_19

    .line 307
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 316
    :cond_19
    :goto_19
    return-void

    .line 312
    :cond_1a
    invoke-virtual {p0}, Lbl/afi;->m()Landroid/view/View;

    move-result-object v0

    .line 313
    if-eqz v0, :cond_19

    .line 314
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto :goto_19
.end method

.method public final e()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 360
    iput-boolean v4, p0, Lbl/afi;->q:Z

    .line 361
    iget-object v0, p0, Lbl/afi;->c:Landroid/support/v7/widget/RecyclerView;

    const-wide/16 v2, 0xa

    invoke-static {v0, v1, v2, v3}, Lbl/adn;->a(Landroid/support/v7/widget/RecyclerView;IJ)V

    .line 362
    iget-object v0, p0, Lbl/afi;->e:Lbl/afi$c;

    if-eqz v0, :cond_14

    .line 363
    iget-object v0, p0, Lbl/afi;->e:Lbl/afi$c;

    invoke-virtual {v0, v1}, Lbl/afi$c;->e(I)V

    .line 365
    :cond_14
    iget v0, p0, Lbl/afi;->o:I

    if-ne v0, v4, :cond_23

    .line 366
    iget-object v0, p0, Lbl/afi;->a:Lcom/bilibili/tv/ui/base/LoadingImageView;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/base/LoadingImageView;->a()V

    .line 367
    iget-object v0, p0, Lbl/afi;->b:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 369
    :cond_23
    const-class v0, Lcom/bilibili/tv/api/search/BiliSearchApi;

    invoke-static {v0}, Lbl/vo;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/search/BiliSearchApi;

    new-instance v1, Lcom/bilibili/tv/api/search/BiliSearchApi$SearchAllParamsMap;

    iget-object v2, p0, Lbl/afi;->r:Ljava/lang/String;

    iget v3, p0, Lbl/afi;->o:I

    iget-object v4, p0, Lbl/afi;->l:Ljava/lang/String;

    iget v5, p0, Lbl/afi;->s:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/bilibili/tv/api/search/BiliSearchApi$SearchAllParamsMap;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    invoke-interface {v0, v1}, Lcom/bilibili/tv/api/search/BiliSearchApi;->searchAll(Lcom/bilibili/tv/api/search/BiliSearchApi$SearchAllParamsMap;)Lbl/vp;

    move-result-object v0

    iget-object v1, p0, Lbl/afi;->h:Lbl/afi$g;

    invoke-virtual {v0, v1}, Lbl/vp;->a(Lretrofit2/Callback;)V

    .line 370
    return-void
.end method

.method public final f()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 373
    iput-boolean v1, p0, Lbl/afi;->q:Z

    .line 374
    iget v0, p0, Lbl/afi;->o:I

    if-ne v0, v1, :cond_12

    .line 375
    iget-object v0, p0, Lbl/afi;->a:Lcom/bilibili/tv/ui/base/LoadingImageView;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/base/LoadingImageView;->a()V

    .line 376
    iget-object v0, p0, Lbl/afi;->b:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 378
    :cond_12
    const-class v0, Lcom/bilibili/tv/api/search/BiliSearchApi;

    invoke-static {v0}, Lbl/vo;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/search/BiliSearchApi;

    new-instance v1, Lcom/bilibili/tv/api/search/BiliSearchApi$SearchAllParamsMap;

    iget-object v2, p0, Lbl/afi;->r:Ljava/lang/String;

    iget v3, p0, Lbl/afi;->o:I

    iget-object v4, p0, Lbl/afi;->l:Ljava/lang/String;

    iget v5, p0, Lbl/afi;->s:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/bilibili/tv/api/search/BiliSearchApi$SearchAllParamsMap;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    invoke-interface {v0, v1}, Lcom/bilibili/tv/api/search/BiliSearchApi;->searchAll(Lcom/bilibili/tv/api/search/BiliSearchApi$SearchAllParamsMap;)Lbl/vp;

    move-result-object v0

    iget-object v1, p0, Lbl/afi;->i:Lbl/afi$j;

    invoke-virtual {v0, v1}, Lbl/vp;->a(Lretrofit2/Callback;)V

    .line 379
    return-void
.end method

.method public final g()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 382
    iput-boolean v1, p0, Lbl/afi;->q:Z

    .line 383
    iget v0, p0, Lbl/afi;->o:I

    if-ne v0, v1, :cond_12

    .line 384
    iget-object v0, p0, Lbl/afi;->a:Lcom/bilibili/tv/ui/base/LoadingImageView;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/base/LoadingImageView;->a()V

    .line 385
    iget-object v0, p0, Lbl/afi;->b:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 387
    :cond_12
    const-class v0, Lcom/bilibili/tv/api/search/BiliSearchApi;

    invoke-static {v0}, Lbl/vo;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/search/BiliSearchApi;

    new-instance v1, Lcom/bilibili/tv/api/search/BiliSearchApi$SearchAllParamsMap;

    iget-object v2, p0, Lbl/afi;->r:Ljava/lang/String;

    iget v3, p0, Lbl/afi;->o:I

    iget-object v4, p0, Lbl/afi;->l:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/bilibili/tv/api/search/BiliSearchApi$SearchAllParamsMap;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    invoke-interface {v0, v1}, Lcom/bilibili/tv/api/search/BiliSearchApi;->searchPgc(Lcom/bilibili/tv/api/search/BiliSearchApi$SearchAllParamsMap;)Lbl/vp;

    move-result-object v0

    iget-object v1, p0, Lbl/afi;->j:Lbl/afi$h;

    invoke-virtual {v0, v1}, Lbl/vp;->a(Lretrofit2/Callback;)V

    .line 388
    return-void
.end method

.method public final getLives()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 400
    iput-boolean v1, p0, Lbl/afi;->q:Z

    .line 401
    iget v0, p0, Lbl/afi;->o:I

    if-ne v0, v1, :cond_12

    .line 402
    iget-object v0, p0, Lbl/afi;->a:Lcom/bilibili/tv/ui/base/LoadingImageView;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/base/LoadingImageView;->a()V

    .line 403
    iget-object v0, p0, Lbl/afi;->b:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 405
    :cond_12
    const-class v0, Lmybl/MyBiliApiService;

    invoke-static {v0}, Lbl/vo;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmybl/MyBiliApiService;

    iget-object v1, p0, Lbl/afi;->r:Ljava/lang/String;

    iget v2, p0, Lbl/afi;->o:I

    const/16 v3, 0x14

    iget-object v4, p0, Lbl/afi;->live_order:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3, v4}, Lmybl/MyBiliApiService;->searchLive(Ljava/lang/String;IILjava/lang/String;)Lbl/vp;

    move-result-object v0

    new-instance v1, Lbl/afi$SearchLiveResponse;

    invoke-direct {v1, p0}, Lbl/afi$SearchLiveResponse;-><init>(Lbl/afi;)V

    invoke-virtual {v0, v1}, Lbl/vp;->a(Lretrofit2/Callback;)V

    .line 406
    return-void
.end method

.method public final h()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 391
    iput-boolean v1, p0, Lbl/afi;->q:Z

    .line 392
    iget v0, p0, Lbl/afi;->o:I

    if-ne v0, v1, :cond_12

    .line 393
    iget-object v0, p0, Lbl/afi;->a:Lcom/bilibili/tv/ui/base/LoadingImageView;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/base/LoadingImageView;->a()V

    .line 394
    iget-object v0, p0, Lbl/afi;->b:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 396
    :cond_12
    const-class v0, Lcom/bilibili/tv/api/search/BiliSearchApi;

    invoke-static {v0}, Lbl/vo;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/search/BiliSearchApi;

    new-instance v1, Lcom/bilibili/tv/api/search/BiliSearchApi$SearchUperParamsMap;

    iget-object v2, p0, Lbl/afi;->r:Ljava/lang/String;

    iget v3, p0, Lbl/afi;->o:I

    iget-object v4, p0, Lbl/afi;->m:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lcom/bilibili/tv/api/search/BiliSearchApi$SearchUperParamsMap;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/bilibili/tv/api/search/BiliSearchApi;->searchUper(Lcom/bilibili/tv/api/search/BiliSearchApi$SearchUperParamsMap;)Lbl/vp;

    move-result-object v0

    iget-object v1, p0, Lbl/afi;->k:Lbl/afi$i;

    invoke-virtual {v0, v1}, Lbl/vp;->a(Lretrofit2/Callback;)V

    .line 397
    return-void
.end method

.method public final i()Z
    .locals 2

    .prologue
    .line 409
    iget v0, p0, Lbl/afi;->s:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public final is_live()Z
    .locals 2

    .prologue
    .line 413
    iget v0, p0, Lbl/afi;->s:I

    const v1, 0x10001

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public final j()Z
    .locals 2

    .prologue
    .line 417
    iget v0, p0, Lbl/afi;->s:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public final m()Landroid/view/View;
    .locals 4

    .prologue
    .line 320
    iget-object v0, p0, Lbl/afi;->c:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_6

    .line 321
    const/4 v0, 0x0

    .line 340
    :goto_5
    return-object v0

    .line 323
    :cond_6
    const/4 v0, 0x0

    .line 324
    iget-object v1, p0, Lbl/afi;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v1

    add-int/lit8 v2, v1, -0x1

    .line 325
    if-ltz v2, :cond_24

    .line 327
    :goto_11
    iget-object v1, p0, Lbl/afi;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 328
    const-string v3, "child"

    invoke-static {v1, v3}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 329
    invoke-virtual {v1}, Landroid/view/View;->isSelected()Z

    move-result v3

    if-nez v3, :cond_34

    .line 330
    if-ne v0, v2, :cond_31

    .line 339
    :cond_24
    iget-object v0, p0, Lbl/afi;->g:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->o()I

    move-result v0

    .line 340
    iget-object v1, p0, Lbl/afi;->g:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/LinearLayoutManager;->c(I)Landroid/view/View;

    move-result-object v0

    goto :goto_5

    .line 333
    :cond_31
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_34
    move-object v0, v1

    .line 335
    goto :goto_5
.end method

.method public final o()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 471
    iput v0, p0, Lbl/afi;->o:I

    .line 472
    iput-boolean v0, p0, Lbl/afi;->p:Z

    .line 473
    iget-object v0, p0, Lbl/afi;->d:Lbl/afi$f;

    if-eqz v0, :cond_e

    .line 474
    iget-object v0, p0, Lbl/afi;->d:Lbl/afi$f;

    invoke-virtual {v0}, Lbl/afi$f;->i()V

    .line 476
    :cond_e
    iget-object v0, p0, Lbl/afi;->b:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 477
    iget-object v0, p0, Lbl/afi;->b:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->a(I)V

    .line 478
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 122
    const-string v0, "inflater"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    const v0, 0x7f0a0039

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 298
    invoke-super {p0}, Lbl/adt;->onDestroy()V

    .line 299
    const/4 v0, 0x0

    check-cast v0, Lbl/afi$f;

    iput-object v0, p0, Lbl/afi;->d:Lbl/afi$f;

    .line 300
    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 276
    invoke-super {p0, p1}, Lbl/adt;->onHiddenChanged(Z)V

    .line 277
    if-eqz p1, :cond_38

    .line 278
    iput v2, p0, Lbl/afi;->s:I

    .line 279
    invoke-virtual {p0}, Lbl/afi;->o()V

    .line 280
    iget-object v0, p0, Lbl/afi;->d:Lbl/afi$f;

    if-eqz v0, :cond_26

    .line 281
    iget-object v0, p0, Lbl/afi;->d:Lbl/afi$f;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lbl/afi$f;->c(Z)V

    .line 282
    iget-object v0, p0, Lbl/afi;->d:Lbl/afi$f;

    invoke-virtual {v0}, Lbl/afi$f;->h()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 283
    iget-object v0, p0, Lbl/afi;->d:Lbl/afi$f;

    invoke-virtual {v0}, Lbl/afi$f;->h()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 286
    :cond_26
    invoke-virtual {p0}, Lbl/afi;->m()Landroid/view/View;

    move-result-object v0

    .line 287
    if-eqz v0, :cond_2f

    .line 288
    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 290
    :cond_2f
    iget-object v0, p0, Lbl/afi;->c:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_38

    .line 291
    iget-object v0, p0, Lbl/afi;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->a(I)V

    .line 294
    :cond_38
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 129
    const-string v0, "view"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    invoke-super {p0, p1, p2}, Lbl/adt;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 131
    invoke-virtual {p0}, Lbl/afi;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 132
    if-eqz v0, :cond_18

    .line 133
    const-string v1, "com.bilibili.tv.ui.search.SearchResultFragment.EXTRA_TID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lbl/afi;->s:I

    .line 135
    :cond_18
    const v0, 0x7f0800ed

    invoke-virtual {p0, p1, v0}, Lbl/afi;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lbl/afi;->b:Landroid/support/v7/widget/RecyclerView;

    .line 136
    const v0, 0x7f080052

    invoke-virtual {p0, p1, v0}, Lbl/afi;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lbl/afi;->c:Landroid/support/v7/widget/RecyclerView;

    .line 137
    const v0, 0x7f080053

    invoke-virtual {p0, p1, v0}, Lbl/afi;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lbl/afi;->n:Landroid/widget/ImageView;

    .line 138
    iget-object v0, p0, Lbl/afi;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v7}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 139
    const v0, 0x7f0800b7

    invoke-virtual {p0, p1, v0}, Lbl/afi;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/base/LoadingImageView;

    iput-object v0, p0, Lbl/afi;->a:Lcom/bilibili/tv/ui/base/LoadingImageView;

    .line 140
    invoke-virtual {p0}, Lbl/afi;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 141
    new-instance v1, Lbl/afi$1;

    invoke-direct {v1, p0, v0}, Lbl/afi$1;-><init>(Lbl/afi;Landroid/content/Context;)V

    iput-object v1, p0, Lbl/afi;->f:Landroid/support/v7/widget/LinearLayoutManager;

    .line 167
    iget-object v0, p0, Lbl/afi;->b:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lbl/afi;->f:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$h;)V

    .line 168
    iget-object v0, p0, Lbl/afi;->b:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lbl/afi$o;

    invoke-direct {v1, p0}, Lbl/afi$o;-><init>(Lbl/afi;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView$m;)V

    .line 169
    new-instance v0, Lbl/afi$f;

    invoke-direct {v0}, Lbl/afi$f;-><init>()V

    iput-object v0, p0, Lbl/afi;->d:Lbl/afi$f;

    .line 170
    iget-object v0, p0, Lbl/afi;->b:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lbl/afi;->d:Lbl/afi$f;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 171
    invoke-virtual {p0}, Lbl/afi;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 172
    new-instance v1, Lbl/afi$2;

    invoke-direct {v1, p0, v0}, Lbl/afi$2;-><init>(Lbl/afi;Landroid/content/Context;)V

    iput-object v1, p0, Lbl/afi;->g:Landroid/support/v7/widget/LinearLayoutManager;

    .line 197
    iget-object v0, p0, Lbl/afi;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lbl/afi;->g:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$h;)V

    .line 198
    invoke-direct {p0}, Lbl/afi;->p()Ljava/util/List;

    move-result-object v4

    .line 199
    if-eqz v4, :cond_a4

    .line 200
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    move v1, v3

    move v2, v3

    .line 202
    :goto_91
    if-ge v1, v5, :cond_a5

    .line 203
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/category/CategoryMeta;

    iget v0, v0, Lcom/bilibili/tv/api/category/CategoryMeta;->mTid:I

    iget v6, p0, Lbl/afi;->s:I

    if-ne v0, v6, :cond_ec

    move v0, v1

    .line 202
    :goto_a0
    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_91

    :cond_a4
    move v2, v3

    .line 210
    :cond_a5
    new-instance v0, Lbl/afi$c;

    invoke-direct {v0, p0, v4, v2}, Lbl/afi$c;-><init>(Lbl/afi;Ljava/util/List;I)V

    iput-object v0, p0, Lbl/afi;->e:Lbl/afi$c;

    .line 211
    iget-object v0, p0, Lbl/afi;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lbl/afi;->e:Lbl/afi$c;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 212
    iget-object v0, p0, Lbl/afi;->g:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0, v2, v3}, Landroid/support/v7/widget/LinearLayoutManager;->b(II)V

    .line 213
    const/16 v0, 0x8

    if-lt v2, v0, :cond_c1

    .line 214
    iget-object v0, p0, Lbl/afi;->g:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0, v7}, Landroid/support/v7/widget/LinearLayoutManager;->a(Z)V

    .line 216
    :cond_c1
    iget-object v0, p0, Lbl/afi;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lbl/afi$p;

    invoke-direct {v1, p0}, Lbl/afi$p;-><init>(Lbl/afi;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalFocusChangeListener(Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;)V

    .line 217
    new-instance v0, Lbl/afi$g;

    invoke-direct {v0, p0}, Lbl/afi$g;-><init>(Lbl/afi;)V

    iput-object v0, p0, Lbl/afi;->h:Lbl/afi$g;

    .line 218
    new-instance v0, Lbl/afi$j;

    invoke-direct {v0, p0}, Lbl/afi$j;-><init>(Lbl/afi;)V

    iput-object v0, p0, Lbl/afi;->i:Lbl/afi$j;

    .line 219
    new-instance v0, Lbl/afi$h;

    invoke-direct {v0, p0}, Lbl/afi$h;-><init>(Lbl/afi;)V

    iput-object v0, p0, Lbl/afi;->j:Lbl/afi$h;

    .line 220
    new-instance v0, Lbl/afi$i;

    invoke-direct {v0, p0}, Lbl/afi$i;-><init>(Lbl/afi;)V

    iput-object v0, p0, Lbl/afi;->k:Lbl/afi$i;

    .line 221
    return-void

    :cond_ec
    move v0, v2

    goto :goto_a0
.end method
