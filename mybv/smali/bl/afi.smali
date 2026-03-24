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
        Lbl/afi$OldSearchLiveResponse;,
        Lbl/afi$SearchUserResponse;,
        Lbl/afi$SearchLiveRoomResponse;,
        Lbl/afi$SearchMediaFtResponse;,
        Lbl/afi$SearchBangumiResponse;,
        Lbl/afi$SearchVideoResponse;,
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
    .line 69
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

    .line 68
    invoke-direct {p0}, Lbl/adt;-><init>()V

    .line 89
    sget-object v0, Lcom/bilibili/tv/ui/search/SearchActivity;->Companion:Lcom/bilibili/tv/ui/search/SearchActivity$a;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/search/SearchActivity$a;->c()[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v1

    iput-object v0, p0, Lbl/afi;->l:Ljava/lang/String;

    .line 90
    sget-object v0, Lcom/bilibili/tv/ui/search/SearchActivity;->Companion:Lcom/bilibili/tv/ui/search/SearchActivity$a;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/search/SearchActivity$a;->d()[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v1

    iput-object v0, p0, Lbl/afi;->m:Ljava/lang/String;

    .line 91
    sget-object v0, Lcom/bilibili/tv/ui/search/SearchActivity;->live_orders:[Ljava/lang/String;

    aget-object v0, v0, v1

    iput-object v0, p0, Lbl/afi;->live_order:Ljava/lang/String;

    .line 92
    iput v2, p0, Lbl/afi;->o:I

    .line 93
    iput-boolean v2, p0, Lbl/afi;->p:Z

    return-void
.end method

.method static synthetic access$000(Lbl/afi;)Z
    .locals 1

    .prologue
    .line 68
    iget-boolean v0, p0, Lbl/afi;->q:Z

    return v0
.end method

.method static synthetic access$002(Lbl/afi;Z)Z
    .locals 0

    .prologue
    .line 68
    iput-boolean p1, p0, Lbl/afi;->q:Z

    return p1
.end method

.method static synthetic access$100(Lbl/afi;)Landroid/support/v7/widget/LinearLayoutManager;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lbl/afi;->f:Landroid/support/v7/widget/LinearLayoutManager;

    return-object v0
.end method

.method static synthetic access$1000(Lbl/afi;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lbl/afi;->r:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lbl/afi;)Landroid/support/v7/widget/LinearLayoutManager;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lbl/afi;->g:Landroid/support/v7/widget/LinearLayoutManager;

    return-object v0
.end method

.method static synthetic access$200(Lbl/afi;)Lbl/afi$c;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lbl/afi;->e:Lbl/afi$c;

    return-object v0
.end method

.method static synthetic access$300(Lbl/afi;)Z
    .locals 1

    .prologue
    .line 68
    iget-boolean v0, p0, Lbl/afi;->p:Z

    return v0
.end method

.method static synthetic access$302(Lbl/afi;Z)Z
    .locals 0

    .prologue
    .line 68
    iput-boolean p1, p0, Lbl/afi;->p:Z

    return p1
.end method

.method static synthetic access$400(Lbl/afi;)Lbl/afi$f;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lbl/afi;->d:Lbl/afi$f;

    return-object v0
.end method

.method static synthetic access$500(Lbl/afi;)I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lbl/afi;->o:I

    return v0
.end method

.method static synthetic access$508(Lbl/afi;)I
    .locals 2

    .prologue
    .line 68
    iget v0, p0, Lbl/afi;->o:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lbl/afi;->o:I

    return v0
.end method

.method static synthetic access$600(Lbl/afi;)I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lbl/afi;->s:I

    return v0
.end method

.method static synthetic access$602(Lbl/afi;I)I
    .locals 0

    .prologue
    .line 68
    iput p1, p0, Lbl/afi;->s:I

    return p1
.end method

.method static synthetic access$700(Lbl/afi;)Landroid/support/v7/widget/RecyclerView;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lbl/afi;->c:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method static synthetic access$800(Lbl/afi;)Landroid/support/v7/widget/RecyclerView;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lbl/afi;->b:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method static synthetic access$900(Lbl/afi;)Lcom/bilibili/tv/ui/base/LoadingImageView;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lbl/afi;->a:Lcom/bilibili/tv/ui/base/LoadingImageView;

    return-object v0
.end method

.method private final p()Ljava/util/List;
    .locals 8
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
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2458
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2459
    new-instance v1, Lcom/bilibili/tv/api/category/CategoryMeta;

    const-string v2, "\u89c6\u9891"

    invoke-direct {v1, v3, v2, v3}, Lcom/bilibili/tv/api/category/CategoryMeta;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v3, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2460
    new-instance v1, Lcom/bilibili/tv/api/category/CategoryMeta;

    const-string v2, "\u756a\u5267"

    invoke-direct {v1, v4, v2, v3}, Lcom/bilibili/tv/api/category/CategoryMeta;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v4, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2461
    new-instance v1, Lcom/bilibili/tv/api/category/CategoryMeta;

    const-string v2, "\u5f71\u89c6"

    invoke-direct {v1, v5, v2, v3}, Lcom/bilibili/tv/api/category/CategoryMeta;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v5, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2462
    new-instance v1, Lcom/bilibili/tv/api/category/CategoryMeta;

    const-string v2, "\u76f4\u64ad"

    invoke-direct {v1, v6, v2, v3}, Lcom/bilibili/tv/api/category/CategoryMeta;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v6, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2463
    new-instance v1, Lcom/bilibili/tv/api/category/CategoryMeta;

    const-string v2, "\u7528\u6237"

    invoke-direct {v1, v7, v2, v3}, Lcom/bilibili/tv/api/category/CategoryMeta;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v7, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2464
    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lbl/afi;->l:Ljava/lang/String;

    return-object v0
.end method

.method public final a(I)V
    .locals 3

    .prologue
    .line 2468
    const-string v0, "SearchResultFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "a(int) called with i2="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmybl/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2469
    if-nez p1, :cond_1e

    .line 2470
    invoke-virtual {p0}, Lbl/afi;->searchVideo()V

    .line 2488
    :goto_1d
    return-void

    .line 2473
    :cond_1e
    packed-switch p1, :pswitch_data_36

    .line 2487
    invoke-virtual {p0}, Lbl/afi;->searchVideo()V

    goto :goto_1d

    .line 2475
    :pswitch_25
    invoke-virtual {p0}, Lbl/afi;->searchBangumi()V

    goto :goto_1d

    .line 2478
    :pswitch_29
    invoke-virtual {p0}, Lbl/afi;->searchMediaFt()V

    goto :goto_1d

    .line 2481
    :pswitch_2d
    invoke-virtual {p0}, Lbl/afi;->searchLiveRoom()V

    goto :goto_1d

    .line 2484
    :pswitch_31
    invoke-virtual {p0}, Lbl/afi;->searchUser()V

    goto :goto_1d

    .line 2473
    nop

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_25
        :pswitch_29
        :pswitch_2d
        :pswitch_31
    .end packed-switch
.end method

.method public final a(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 357
    const-string v0, "SearchFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "afi.a(String) called, keyword="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    const-string v0, "text"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 359
    iput-object p1, p0, Lbl/afi;->r:Ljava/lang/String;

    .line 360
    iput v4, p0, Lbl/afi;->o:I

    .line 361
    sget-object v0, Lcom/bilibili/tv/ui/search/SearchActivity;->Companion:Lcom/bilibili/tv/ui/search/SearchActivity$a;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/search/SearchActivity$a;->c()[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v3

    iput-object v0, p0, Lbl/afi;->l:Ljava/lang/String;

    .line 362
    sget-object v0, Lcom/bilibili/tv/ui/search/SearchActivity;->Companion:Lcom/bilibili/tv/ui/search/SearchActivity$a;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/search/SearchActivity$a;->d()[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v3

    iput-object v0, p0, Lbl/afi;->m:Ljava/lang/String;

    .line 363
    sget-object v0, Lcom/bilibili/tv/ui/search/SearchActivity;->live_orders:[Ljava/lang/String;

    aget-object v0, v0, v3

    iput-object v0, p0, Lbl/afi;->live_order:Ljava/lang/String;

    .line 364
    const-string v0, "tv_search_result"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "keyword"

    aput-object v2, v1, v3

    aput-object p1, v1, v4

    invoke-static {v0, v1}, Lbl/ok;->a(Ljava/lang/String;[Ljava/lang/String;)V

    .line 365
    invoke-virtual {p0}, Lbl/afi;->searchVideo()V

    .line 366
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lbl/afi;->m:Ljava/lang/String;

    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 749
    const-string v0, "SearchResultFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "b(String) called, order="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmybl/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 750
    const-string v0, "order"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 751
    iget-object v0, p0, Lbl/afi;->l:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 752
    iput-object p1, p0, Lbl/afi;->l:Ljava/lang/String;

    .line 753
    if-eqz v0, :cond_28

    .line 764
    :cond_27
    :goto_27
    return-void

    .line 756
    :cond_28
    invoke-virtual {p0}, Lbl/afi;->m()Landroid/view/View;

    move-result-object v0

    .line 757
    if-eqz v0, :cond_31

    .line 758
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 760
    :cond_31
    iget-object v0, p0, Lbl/afi;->d:Lbl/afi$f;

    if-eqz v0, :cond_27

    .line 761
    invoke-virtual {p0}, Lbl/afi;->o()V

    .line 762
    iget v0, p0, Lbl/afi;->s:I

    invoke-virtual {p0, v0}, Lbl/afi;->a(I)V

    goto :goto_27
.end method

.method protected final c()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lbl/afi;->n:Landroid/widget/ImageView;

    return-object v0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 767
    const-string v0, "SearchResultFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "c(String) called, order="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmybl/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 768
    const-string v0, "order"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 769
    iget-object v0, p0, Lbl/afi;->m:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 770
    iput-object p1, p0, Lbl/afi;->m:Ljava/lang/String;

    .line 771
    if-eqz v0, :cond_28

    .line 782
    :cond_27
    :goto_27
    return-void

    .line 774
    :cond_28
    invoke-virtual {p0}, Lbl/afi;->m()Landroid/view/View;

    move-result-object v0

    .line 775
    if-eqz v0, :cond_31

    .line 776
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 778
    :cond_31
    iget-object v0, p0, Lbl/afi;->d:Lbl/afi$f;

    if-eqz v0, :cond_27

    .line 779
    invoke-virtual {p0}, Lbl/afi;->o()V

    .line 780
    iget v0, p0, Lbl/afi;->s:I

    invoke-virtual {p0, v0}, Lbl/afi;->a(I)V

    goto :goto_27
.end method

.method public final cc(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 786
    const-string v0, "SearchResultFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cc(String) called, order="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmybl/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 787
    iget-object v0, p0, Lbl/afi;->live_order:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 797
    :cond_20
    :goto_20
    return-void

    .line 788
    :cond_21
    iput-object p1, p0, Lbl/afi;->live_order:Ljava/lang/String;

    .line 789
    invoke-virtual {p0}, Lbl/afi;->m()Landroid/view/View;

    move-result-object v0

    .line 790
    if-eqz v0, :cond_2c

    .line 791
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 793
    :cond_2c
    iget-object v0, p0, Lbl/afi;->d:Lbl/afi$f;

    if-eqz v0, :cond_20

    .line 794
    invoke-virtual {p0}, Lbl/afi;->o()V

    .line 795
    iget v0, p0, Lbl/afi;->s:I

    invoke-virtual {p0, v0}, Lbl/afi;->a(I)V

    goto :goto_20
.end method

.method public final d()V
    .locals 2

    .prologue
    .line 316
    iget-object v0, p0, Lbl/afi;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1a

    .line 317
    iget-object v0, p0, Lbl/afi;->f:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->o()I

    move-result v0

    .line 318
    iget-object v1, p0, Lbl/afi;->f:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/LinearLayoutManager;->c(I)Landroid/view/View;

    move-result-object v0

    .line 319
    if-eqz v0, :cond_19

    .line 320
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 329
    :cond_19
    :goto_19
    return-void

    .line 325
    :cond_1a
    invoke-virtual {p0}, Lbl/afi;->m()Landroid/view/View;

    move-result-object v0

    .line 326
    if-eqz v0, :cond_19

    .line 327
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto :goto_19
.end method

.method public final i()Z
    .locals 2

    .prologue
    .line 737
    iget v0, p0, Lbl/afi;->s:I

    const/4 v1, 0x4

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
    .line 745
    iget v0, p0, Lbl/afi;->s:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public final j()Z
    .locals 1

    .prologue
    .line 741
    iget v0, p0, Lbl/afi;->s:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public final m()Landroid/view/View;
    .locals 4

    .prologue
    .line 333
    iget-object v0, p0, Lbl/afi;->c:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_6

    .line 334
    const/4 v0, 0x0

    .line 353
    :goto_5
    return-object v0

    .line 336
    :cond_6
    const/4 v0, 0x0

    .line 337
    iget-object v1, p0, Lbl/afi;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v1

    add-int/lit8 v2, v1, -0x1

    .line 338
    if-ltz v2, :cond_24

    .line 340
    :goto_11
    iget-object v1, p0, Lbl/afi;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 341
    const-string v3, "child"

    invoke-static {v1, v3}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 342
    invoke-virtual {v1}, Landroid/view/View;->isSelected()Z

    move-result v3

    if-nez v3, :cond_34

    .line 343
    if-ne v0, v2, :cond_31

    .line 352
    :cond_24
    iget-object v0, p0, Lbl/afi;->g:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->o()I

    move-result v0

    .line 353
    iget-object v1, p0, Lbl/afi;->g:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/LinearLayoutManager;->c(I)Landroid/view/View;

    move-result-object v0

    goto :goto_5

    .line 346
    :cond_31
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_34
    move-object v0, v1

    .line 348
    goto :goto_5
.end method

.method public final o()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 802
    iput v0, p0, Lbl/afi;->o:I

    .line 803
    iput-boolean v0, p0, Lbl/afi;->p:Z

    .line 804
    iget-object v0, p0, Lbl/afi;->d:Lbl/afi$f;

    if-eqz v0, :cond_e

    .line 805
    iget-object v0, p0, Lbl/afi;->d:Lbl/afi$f;

    invoke-virtual {v0}, Lbl/afi$f;->i()V

    .line 807
    :cond_e
    iget-object v0, p0, Lbl/afi;->b:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 808
    iget-object v0, p0, Lbl/afi;->b:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->a(I)V

    .line 809
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 136
    const-string v0, "inflater"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    const v0, 0x7f0a0039

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 311
    invoke-super {p0}, Lbl/adt;->onDestroy()V

    .line 312
    const/4 v0, 0x0

    check-cast v0, Lbl/afi$f;

    iput-object v0, p0, Lbl/afi;->d:Lbl/afi$f;

    .line 313
    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 289
    invoke-super {p0, p1}, Lbl/adt;->onHiddenChanged(Z)V

    .line 290
    if-eqz p1, :cond_38

    .line 291
    iput v2, p0, Lbl/afi;->s:I

    .line 292
    invoke-virtual {p0}, Lbl/afi;->o()V

    .line 293
    iget-object v0, p0, Lbl/afi;->d:Lbl/afi$f;

    if-eqz v0, :cond_26

    .line 294
    iget-object v0, p0, Lbl/afi;->d:Lbl/afi$f;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lbl/afi$f;->c(Z)V

    .line 295
    iget-object v0, p0, Lbl/afi;->d:Lbl/afi$f;

    invoke-virtual {v0}, Lbl/afi$f;->h()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 296
    iget-object v0, p0, Lbl/afi;->d:Lbl/afi$f;

    invoke-virtual {v0}, Lbl/afi$f;->h()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 299
    :cond_26
    invoke-virtual {p0}, Lbl/afi;->m()Landroid/view/View;

    move-result-object v0

    .line 300
    if-eqz v0, :cond_2f

    .line 301
    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 303
    :cond_2f
    iget-object v0, p0, Lbl/afi;->c:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_38

    .line 304
    iget-object v0, p0, Lbl/afi;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->a(I)V

    .line 307
    :cond_38
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 143
    const-string v0, "view"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    invoke-super {p0, p1, p2}, Lbl/adt;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 145
    invoke-virtual {p0}, Lbl/afi;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 146
    if-eqz v0, :cond_18

    .line 147
    const-string v1, "com.bilibili.tv.ui.search.SearchResultFragment.EXTRA_TID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lbl/afi;->s:I

    .line 149
    :cond_18
    const v0, 0x7f0800ed

    invoke-virtual {p0, p1, v0}, Lbl/afi;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lbl/afi;->b:Landroid/support/v7/widget/RecyclerView;

    .line 150
    const v0, 0x7f080052

    invoke-virtual {p0, p1, v0}, Lbl/afi;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lbl/afi;->c:Landroid/support/v7/widget/RecyclerView;

    .line 151
    const v0, 0x7f080053

    invoke-virtual {p0, p1, v0}, Lbl/afi;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lbl/afi;->n:Landroid/widget/ImageView;

    .line 152
    iget-object v0, p0, Lbl/afi;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v7}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 153
    const v0, 0x7f0800b7

    invoke-virtual {p0, p1, v0}, Lbl/afi;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/base/LoadingImageView;

    iput-object v0, p0, Lbl/afi;->a:Lcom/bilibili/tv/ui/base/LoadingImageView;

    .line 154
    invoke-virtual {p0}, Lbl/afi;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 155
    new-instance v1, Lbl/afi$1;

    invoke-direct {v1, p0, v0}, Lbl/afi$1;-><init>(Lbl/afi;Landroid/content/Context;)V

    iput-object v1, p0, Lbl/afi;->f:Landroid/support/v7/widget/LinearLayoutManager;

    .line 181
    iget-object v0, p0, Lbl/afi;->b:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lbl/afi;->f:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$h;)V

    .line 182
    iget-object v0, p0, Lbl/afi;->b:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lbl/afi$o;

    invoke-direct {v1, p0}, Lbl/afi$o;-><init>(Lbl/afi;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView$m;)V

    .line 183
    new-instance v0, Lbl/afi$f;

    invoke-direct {v0}, Lbl/afi$f;-><init>()V

    iput-object v0, p0, Lbl/afi;->d:Lbl/afi$f;

    .line 184
    iget-object v0, p0, Lbl/afi;->b:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lbl/afi;->d:Lbl/afi$f;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 185
    invoke-virtual {p0}, Lbl/afi;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 186
    new-instance v1, Lbl/afi$2;

    invoke-direct {v1, p0, v0}, Lbl/afi$2;-><init>(Lbl/afi;Landroid/content/Context;)V

    iput-object v1, p0, Lbl/afi;->g:Landroid/support/v7/widget/LinearLayoutManager;

    .line 211
    iget-object v0, p0, Lbl/afi;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lbl/afi;->g:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$h;)V

    .line 212
    invoke-direct {p0}, Lbl/afi;->p()Ljava/util/List;

    move-result-object v4

    .line 213
    if-eqz v4, :cond_a4

    .line 214
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    move v1, v3

    move v2, v3

    .line 216
    :goto_91
    if-ge v1, v5, :cond_a5

    .line 217
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/category/CategoryMeta;

    iget v0, v0, Lcom/bilibili/tv/api/category/CategoryMeta;->mTid:I

    iget v6, p0, Lbl/afi;->s:I

    if-ne v0, v6, :cond_ec

    move v0, v1

    .line 216
    :goto_a0
    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_91

    :cond_a4
    move v2, v3

    .line 224
    :cond_a5
    new-instance v0, Lbl/afi$c;

    invoke-direct {v0, p0, v4, v2}, Lbl/afi$c;-><init>(Lbl/afi;Ljava/util/List;I)V

    iput-object v0, p0, Lbl/afi;->e:Lbl/afi$c;

    .line 225
    iget-object v0, p0, Lbl/afi;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lbl/afi;->e:Lbl/afi$c;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 226
    iget-object v0, p0, Lbl/afi;->g:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0, v2, v3}, Landroid/support/v7/widget/LinearLayoutManager;->b(II)V

    .line 227
    const/16 v0, 0x8

    if-lt v2, v0, :cond_c1

    .line 228
    iget-object v0, p0, Lbl/afi;->g:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0, v7}, Landroid/support/v7/widget/LinearLayoutManager;->a(Z)V

    .line 230
    :cond_c1
    iget-object v0, p0, Lbl/afi;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lbl/afi$p;

    invoke-direct {v1, p0}, Lbl/afi$p;-><init>(Lbl/afi;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalFocusChangeListener(Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;)V

    .line 231
    new-instance v0, Lbl/afi$g;

    invoke-direct {v0, p0}, Lbl/afi$g;-><init>(Lbl/afi;)V

    iput-object v0, p0, Lbl/afi;->h:Lbl/afi$g;

    .line 232
    new-instance v0, Lbl/afi$j;

    invoke-direct {v0, p0}, Lbl/afi$j;-><init>(Lbl/afi;)V

    iput-object v0, p0, Lbl/afi;->i:Lbl/afi$j;

    .line 233
    new-instance v0, Lbl/afi$h;

    invoke-direct {v0, p0}, Lbl/afi$h;-><init>(Lbl/afi;)V

    iput-object v0, p0, Lbl/afi;->j:Lbl/afi$h;

    .line 234
    new-instance v0, Lbl/afi$i;

    invoke-direct {v0, p0}, Lbl/afi$i;-><init>(Lbl/afi;)V

    iput-object v0, p0, Lbl/afi;->k:Lbl/afi$i;

    .line 235
    return-void

    :cond_ec
    move v0, v2

    goto :goto_a0
.end method

.method public final searchBangumi()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 456
    iput-boolean v1, p0, Lbl/afi;->q:Z

    .line 457
    iget v0, p0, Lbl/afi;->o:I

    if-ne v0, v1, :cond_12

    .line 458
    iget-object v0, p0, Lbl/afi;->a:Lcom/bilibili/tv/ui/base/LoadingImageView;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/base/LoadingImageView;->a()V

    .line 459
    iget-object v0, p0, Lbl/afi;->b:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 461
    :cond_12
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v0

    invoke-static {v0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v0

    invoke-virtual {v0}, Lbl/mg;->e()Ljava/lang/String;

    move-result-object v0

    .line 462
    invoke-static {}, Lmybl/WbiSigner;->getInstance()Lmybl/WbiSigner;

    move-result-object v1

    .line 463
    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    .line 464
    const-string v3, "search_type"

    const-string v4, "media_bangumi"

    invoke-virtual {v2, v3, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    const-string v3, "keyword"

    iget-object v4, p0, Lbl/afi;->r:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    const-string v3, "order"

    iget-object v4, p0, Lbl/afi;->l:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    const-string v3, "page"

    iget v4, p0, Lbl/afi;->o:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    const-string v3, "pagesize"

    const-string v4, "20"

    invoke-virtual {v2, v3, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    const-string v3, "access_key"

    invoke-virtual {v2, v3, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    invoke-virtual {v1, v2}, Lmybl/WbiSigner;->encWbiAndGetQuery(Ljava/util/TreeMap;)Ljava/lang/String;

    move-result-object v0

    .line 471
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://api.bilibili.com/x/web-interface/wbi/search/type?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 472
    const-string v1, "SearchFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SearchBangumi URL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    const-string v1, "SearchFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SearchBangumi method called, s="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lbl/afi;->s:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    const-string v1, "SearchFragment"

    const-string v2, "SearchBangumi start"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    new-instance v1, Lbl/afi$SearchBangumiResponse;

    invoke-direct {v1, p0}, Lbl/afi$SearchBangumiResponse;-><init>(Lbl/afi;)V

    .line 476
    invoke-static {}, Lbl/vo;->getOkHttpClient()Lokhttp3/OkHttpClient;

    move-result-object v2

    .line 477
    new-instance v3, Lokhttp3/Request$Builder;

    invoke-direct {v3}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v3, v0}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 478
    const-string v3, "SearchFragment"

    const-string v4, "OkHttpClient created, executing request..."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    invoke-virtual {v2, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    new-instance v2, Lbl/afi$4;

    invoke-direct {v2, p0, v1}, Lbl/afi$4;-><init>(Lbl/afi;Lbl/afi$SearchBangumiResponse;)V

    invoke-interface {v0, v2}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    .line 529
    return-void
.end method

.method public final searchLiveRoom()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 601
    iput-boolean v1, p0, Lbl/afi;->q:Z

    .line 602
    iget v0, p0, Lbl/afi;->o:I

    if-ne v0, v1, :cond_12

    .line 603
    iget-object v0, p0, Lbl/afi;->a:Lcom/bilibili/tv/ui/base/LoadingImageView;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/base/LoadingImageView;->a()V

    .line 604
    iget-object v0, p0, Lbl/afi;->b:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 606
    :cond_12
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v0

    invoke-static {v0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v0

    invoke-virtual {v0}, Lbl/mg;->e()Ljava/lang/String;

    move-result-object v0

    .line 607
    invoke-static {}, Lmybl/WbiSigner;->getInstance()Lmybl/WbiSigner;

    move-result-object v1

    .line 608
    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    .line 609
    const-string v3, "search_type"

    const-string v4, "live_room"

    invoke-virtual {v2, v3, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 610
    const-string v3, "keyword"

    iget-object v4, p0, Lbl/afi;->r:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 611
    const-string v3, "order"

    iget-object v4, p0, Lbl/afi;->live_order:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 612
    const-string v3, "page"

    iget v4, p0, Lbl/afi;->o:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 613
    const-string v3, "pagesize"

    const-string v4, "20"

    invoke-virtual {v2, v3, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 614
    const-string v3, "access_key"

    invoke-virtual {v2, v3, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 615
    invoke-virtual {v1, v2}, Lmybl/WbiSigner;->encWbiAndGetQuery(Ljava/util/TreeMap;)Ljava/lang/String;

    move-result-object v0

    .line 616
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://api.bilibili.com/x/web-interface/wbi/search/type?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 617
    const-string v1, "SearchFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SearchLiveRoom URL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    new-instance v1, Lbl/afi$SearchLiveRoomResponse;

    invoke-direct {v1, p0}, Lbl/afi$SearchLiveRoomResponse;-><init>(Lbl/afi;)V

    .line 619
    invoke-static {}, Lbl/vo;->getOkHttpClient()Lokhttp3/OkHttpClient;

    move-result-object v2

    .line 620
    new-instance v3, Lokhttp3/Request$Builder;

    invoke-direct {v3}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v3, v0}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 621
    invoke-virtual {v2, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    new-instance v2, Lbl/afi$6;

    invoke-direct {v2, p0, v1}, Lbl/afi$6;-><init>(Lbl/afi;Lbl/afi$SearchLiveRoomResponse;)V

    invoke-interface {v0, v2}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    .line 666
    return-void
.end method

.method public final searchMediaFt()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 532
    iput-boolean v1, p0, Lbl/afi;->q:Z

    .line 533
    iget v0, p0, Lbl/afi;->o:I

    if-ne v0, v1, :cond_12

    .line 534
    iget-object v0, p0, Lbl/afi;->a:Lcom/bilibili/tv/ui/base/LoadingImageView;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/base/LoadingImageView;->a()V

    .line 535
    iget-object v0, p0, Lbl/afi;->b:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 537
    :cond_12
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v0

    invoke-static {v0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v0

    invoke-virtual {v0}, Lbl/mg;->e()Ljava/lang/String;

    move-result-object v0

    .line 538
    invoke-static {}, Lmybl/WbiSigner;->getInstance()Lmybl/WbiSigner;

    move-result-object v1

    .line 539
    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    .line 540
    const-string v3, "search_type"

    const-string v4, "media_ft"

    invoke-virtual {v2, v3, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 541
    const-string v3, "keyword"

    iget-object v4, p0, Lbl/afi;->r:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 542
    const-string v3, "order"

    iget-object v4, p0, Lbl/afi;->l:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 543
    const-string v3, "page"

    iget v4, p0, Lbl/afi;->o:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 544
    const-string v3, "pagesize"

    const-string v4, "20"

    invoke-virtual {v2, v3, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 545
    const-string v3, "access_key"

    invoke-virtual {v2, v3, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 546
    invoke-virtual {v1, v2}, Lmybl/WbiSigner;->encWbiAndGetQuery(Ljava/util/TreeMap;)Ljava/lang/String;

    move-result-object v0

    .line 547
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://api.bilibili.com/x/web-interface/wbi/search/type?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 548
    const-string v1, "SearchFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SearchMediaFt URL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    new-instance v1, Lbl/afi$SearchMediaFtResponse;

    invoke-direct {v1, p0}, Lbl/afi$SearchMediaFtResponse;-><init>(Lbl/afi;)V

    .line 550
    invoke-static {}, Lbl/vo;->getOkHttpClient()Lokhttp3/OkHttpClient;

    move-result-object v2

    .line 551
    new-instance v3, Lokhttp3/Request$Builder;

    invoke-direct {v3}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v3, v0}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 552
    invoke-virtual {v2, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    new-instance v2, Lbl/afi$5;

    invoke-direct {v2, p0, v1}, Lbl/afi$5;-><init>(Lbl/afi;Lbl/afi$SearchMediaFtResponse;)V

    invoke-interface {v0, v2}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    .line 598
    return-void
.end method

.method public final searchUser()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 669
    iput-boolean v1, p0, Lbl/afi;->q:Z

    .line 670
    iget v0, p0, Lbl/afi;->o:I

    if-ne v0, v1, :cond_12

    .line 671
    iget-object v0, p0, Lbl/afi;->a:Lcom/bilibili/tv/ui/base/LoadingImageView;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/base/LoadingImageView;->a()V

    .line 672
    iget-object v0, p0, Lbl/afi;->b:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 674
    :cond_12
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v0

    invoke-static {v0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v0

    invoke-virtual {v0}, Lbl/mg;->e()Ljava/lang/String;

    move-result-object v0

    .line 675
    invoke-static {}, Lmybl/WbiSigner;->getInstance()Lmybl/WbiSigner;

    move-result-object v1

    .line 676
    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    .line 677
    const-string v3, "search_type"

    const-string v4, "bili_user"

    invoke-virtual {v2, v3, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 678
    const-string v3, "keyword"

    iget-object v4, p0, Lbl/afi;->r:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 679
    const-string v3, "order"

    iget-object v4, p0, Lbl/afi;->m:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 680
    const-string v3, "page"

    iget v4, p0, Lbl/afi;->o:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 681
    const-string v3, "pagesize"

    const-string v4, "20"

    invoke-virtual {v2, v3, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 682
    const-string v3, "access_key"

    invoke-virtual {v2, v3, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 683
    invoke-virtual {v1, v2}, Lmybl/WbiSigner;->encWbiAndGetQuery(Ljava/util/TreeMap;)Ljava/lang/String;

    move-result-object v0

    .line 684
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://api.bilibili.com/x/web-interface/wbi/search/type?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 685
    const-string v1, "SearchFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SearchUser URL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    new-instance v1, Lbl/afi$SearchUserResponse;

    invoke-direct {v1, p0}, Lbl/afi$SearchUserResponse;-><init>(Lbl/afi;)V

    .line 687
    invoke-static {}, Lbl/vo;->getOkHttpClient()Lokhttp3/OkHttpClient;

    move-result-object v2

    .line 688
    new-instance v3, Lokhttp3/Request$Builder;

    invoke-direct {v3}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v3, v0}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 689
    invoke-virtual {v2, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    new-instance v2, Lbl/afi$7;

    invoke-direct {v2, p0, v1}, Lbl/afi$7;-><init>(Lbl/afi;Lbl/afi$SearchUserResponse;)V

    invoke-interface {v0, v2}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    .line 734
    return-void
.end method

.method public final searchVideo()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 369
    iput-boolean v4, p0, Lbl/afi;->q:Z

    .line 370
    iget-object v0, p0, Lbl/afi;->c:Landroid/support/v7/widget/RecyclerView;

    const-wide/16 v2, 0xa

    invoke-static {v0, v1, v2, v3}, Lbl/adn;->a(Landroid/support/v7/widget/RecyclerView;IJ)V

    .line 371
    iget-object v0, p0, Lbl/afi;->e:Lbl/afi$c;

    if-eqz v0, :cond_14

    .line 372
    iget-object v0, p0, Lbl/afi;->e:Lbl/afi$c;

    invoke-virtual {v0, v1}, Lbl/afi$c;->e(I)V

    .line 374
    :cond_14
    iget v0, p0, Lbl/afi;->o:I

    if-ne v0, v4, :cond_23

    .line 375
    iget-object v0, p0, Lbl/afi;->a:Lcom/bilibili/tv/ui/base/LoadingImageView;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/base/LoadingImageView;->a()V

    .line 376
    iget-object v0, p0, Lbl/afi;->b:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 378
    :cond_23
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v0

    invoke-static {v0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v0

    invoke-virtual {v0}, Lbl/mg;->e()Ljava/lang/String;

    move-result-object v0

    .line 379
    invoke-static {}, Lmybl/WbiSigner;->getInstance()Lmybl/WbiSigner;

    move-result-object v1

    .line 380
    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    .line 381
    const-string v3, "search_type"

    const-string v4, "video"

    invoke-virtual {v2, v3, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    const-string v3, "keyword"

    iget-object v4, p0, Lbl/afi;->r:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    const-string v3, "order"

    iget-object v4, p0, Lbl/afi;->l:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    const-string v3, "page"

    iget v4, p0, Lbl/afi;->o:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    const-string v3, "pagesize"

    const-string v4, "20"

    invoke-virtual {v2, v3, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    const-string v3, "tids"

    iget v4, p0, Lbl/afi;->s:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    invoke-virtual {v1, v2}, Lmybl/WbiSigner;->encWbiAndGetQuery(Ljava/util/TreeMap;)Ljava/lang/String;

    move-result-object v1

    .line 389
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https://api.bilibili.com/x/web-interface/wbi/search/type?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 390
    const-string v2, "SearchFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SearchVideo URL: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    const-string v2, "SearchFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SearchVideo method called, s="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lbl/afi;->s:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", o="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lbl/afi;->o:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", access_key="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    const-string v0, "SearchFragment"

    const-string v2, "SearchVideo start"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    new-instance v0, Lbl/afi$SearchVideoResponse;

    invoke-direct {v0, p0}, Lbl/afi$SearchVideoResponse;-><init>(Lbl/afi;)V

    .line 394
    invoke-static {}, Lbl/vo;->getOkHttpClient()Lokhttp3/OkHttpClient;

    move-result-object v2

    .line 395
    new-instance v3, Lokhttp3/Request$Builder;

    invoke-direct {v3}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v3, v1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v1

    .line 396
    const-string v3, "SearchFragment"

    const-string v4, "OkHttpClient created, executing request..."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    invoke-virtual {v2, v1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v1

    new-instance v2, Lbl/afi$3;

    invoke-direct {v2, p0, v0}, Lbl/afi$3;-><init>(Lbl/afi;Lbl/afi$SearchVideoResponse;)V

    invoke-interface {v1, v2}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    .line 452
    const-string v0, "SearchFragment"

    const-string v1, "SearchVideo request sent"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    return-void
.end method
