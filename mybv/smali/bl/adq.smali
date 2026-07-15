.class public final Lbl/adq;
.super Lbl/ady;
.source "adq.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbl/adq$f;,
        Lbl/adq$a;,
        Lbl/adq$h;,
        Lbl/adq$e;,
        Lbl/adq$d;,
        Lbl/adq$j;,
        Lbl/adq$i;,
        Lbl/adq$RegionHotVideoResponse;,
        Lbl/adq$DynamicVideoResponse;,
        Lbl/adq$n;,
        Lbl/adq$m;,
        Lbl/adq$l;,
        Lbl/adq$k;,
        Lbl/adq$b;
    }
.end annotation


# static fields
.field public static final Companion:Lbl/adq$b;

.field private static final n:Ljava/lang/String; = "AreaFragment"

.field private static final o:Ljava/lang/String; = "sub_tid"

.field private static final p:I = 0x2


# instance fields
.field private c:Lbl/adq$j;

.field private d:Lbl/adq$i;

.field private f:Lbl/agd;

.field private g:Z

.field private h:I

.field private i:I

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Lcom/bilibili/tv/ui/area/RegionApiManager$ListOrder;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 42
    new-instance v0, Lbl/adq$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbl/adq$b;-><init>(Lbl/bbg;)V

    sput-object v0, Lbl/adq;->Companion:Lbl/adq$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 41
    invoke-direct {p0}, Lbl/ady;-><init>()V

    .line 54
    iput v0, p0, Lbl/adq;->i:I

    .line 55
    iput-boolean v0, p0, Lbl/adq;->j:Z

    .line 56
    sget-object v0, Lcom/bilibili/tv/ui/area/RegionApiManager$ListOrder;->DEFAULT:Lcom/bilibili/tv/ui/area/RegionApiManager$ListOrder;

    iput-object v0, p0, Lbl/adq;->m:Lcom/bilibili/tv/ui/area/RegionApiManager$ListOrder;

    return-void
.end method

.method static synthetic access$000(Lbl/adq;)Lbl/agd;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lbl/adq;->f:Lbl/agd;

    return-object v0
.end method

.method static synthetic access$100(Lbl/adq;)Z
    .locals 1

    .prologue
    .line 41
    iget-boolean v0, p0, Lbl/adq;->j:Z

    return v0
.end method

.method static synthetic access$102(Lbl/adq;Z)Z
    .locals 0

    .prologue
    .line 41
    iput-boolean p1, p0, Lbl/adq;->j:Z

    return p1
.end method

.method static synthetic access$200(Lbl/adq;)Z
    .locals 1

    .prologue
    .line 41
    iget-boolean v0, p0, Lbl/adq;->k:Z

    return v0
.end method

.method static synthetic access$202(Lbl/adq;Z)Z
    .locals 0

    .prologue
    .line 41
    iput-boolean p1, p0, Lbl/adq;->k:Z

    return p1
.end method

.method static synthetic access$308(Lbl/adq;)I
    .locals 2

    .prologue
    .line 41
    iget v0, p0, Lbl/adq;->i:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lbl/adq;->i:I

    return v0
.end method

.method static synthetic access$400(Lbl/adq;)Z
    .locals 1

    .prologue
    .line 41
    iget-boolean v0, p0, Lbl/adq;->g:Z

    return v0
.end method

.method static synthetic access$402(Lbl/adq;Z)Z
    .locals 0

    .prologue
    .line 41
    iput-boolean p1, p0, Lbl/adq;->g:Z

    return p1
.end method

.method static synthetic access$500(Lbl/adq;)Z
    .locals 1

    .prologue
    .line 41
    iget-boolean v0, p0, Lbl/adq;->l:Z

    return v0
.end method

.method static synthetic access$502(Lbl/adq;Z)Z
    .locals 0

    .prologue
    .line 41
    iput-boolean p1, p0, Lbl/adq;->l:Z

    return p1
.end method

.method private final n()V
    .locals 4

    .prologue
    .line 371
    const-string v0, "AreaFragment"

    const-string v1, "========== Loading Start =========="

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    const-string v0, "AreaFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[n()] START: Loading dynamic videos for rid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lbl/adq;->h:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    const-string v1, "AreaFragment"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[n()] Context: Activity="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lbl/adq;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_8e

    invoke-virtual {p0}, Lbl/adq;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    :goto_40
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    invoke-virtual {p0}, Lbl/adq;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget v1, p0, Lbl/adq;->h:I

    invoke-static {v0, v1}, Lcom/bilibili/tv/api/category/CategoryManager;->getPrimaryCategoryIdBy(Landroid/content/Context;I)I

    move-result v0

    .line 378
    if-nez v0, :cond_91

    .line 380
    iget v0, p0, Lbl/adq;->h:I

    .line 381
    const-string v1, "AreaFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[n()] Cannot find parent rid for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lbl/adq;->h:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", using original"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    :goto_79
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lbl/adq$2;

    invoke-direct {v2, p0, v0}, Lbl/adq$2;-><init>(Lbl/adq;I)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 437
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 439
    const-string v0, "AreaFragment"

    const-string v1, "[n()] Request thread started"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    return-void

    .line 373
    :cond_8e
    const-string v0, "null"

    goto :goto_40

    .line 382
    :cond_91
    iget v1, p0, Lbl/adq;->h:I

    if-eq v0, v1, :cond_ba

    .line 383
    const-string v1, "AreaFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[n()] Converted child rid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lbl/adq;->h:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to parent rid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_79

    .line 385
    :cond_ba
    const-string v1, "AreaFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[n()] Using primary rid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_79
.end method


# virtual methods
.method public final a()Lbl/adq$j;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lbl/adq;->c:Lbl/adq$j;

    return-object v0
.end method

.method public a(Landroid/support/v7/widget/RecyclerView;Landroid/os/Bundle;)V
    .locals 8

    .prologue
    const/4 v4, 0x1

    .line 96
    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    invoke-super {p0, p1, p2}, Lbl/ady;->a(Landroid/support/v7/widget/RecyclerView;Landroid/os/Bundle;)V

    .line 98
    invoke-virtual {p0}, Lbl/adq;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 99
    if-eqz v0, :cond_17

    .line 100
    const-string v1, "sub_tid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lbl/adq;->h:I

    .line 102
    :cond_17
    new-instance v0, Lbl/adq$i;

    invoke-direct {v0, p0}, Lbl/adq$i;-><init>(Lbl/adq;)V

    iput-object v0, p0, Lbl/adq;->d:Lbl/adq$i;

    .line 104
    const v0, 0x7f06029a

    invoke-static {v0}, Lbl/adl;->b(I)I

    move-result v6

    .line 105
    new-instance v0, Lbl/adq$1;

    invoke-virtual {p0}, Lbl/adq;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x2

    const/4 v5, 0x0

    move-object v1, p0

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lbl/adq$1;-><init>(Lbl/adq;Landroid/content/Context;IIZILandroid/support/v7/widget/RecyclerView;)V

    .line 177
    new-instance v1, Lbl/adq$j;

    invoke-direct {v1}, Lbl/adq$j;-><init>()V

    iput-object v1, p0, Lbl/adq;->c:Lbl/adq$j;

    .line 178
    new-instance v1, Lbl/adq$k;

    invoke-direct {v1, p0}, Lbl/adq$k;-><init>(Lbl/adq;)V

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/border/BorderGridLayoutManager;->a(Landroid/support/v7/widget/GridLayoutManager$c;)V

    .line 179
    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$h;)V

    .line 180
    invoke-virtual {p1, v4}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 181
    const v1, 0x7f060377

    invoke-static {v1}, Lbl/adl;->b(I)I

    move-result v6

    .line 182
    const v1, 0x7f06006e

    invoke-static {v1}, Lbl/adl;->b(I)I

    move-result v4

    .line 183
    const v1, 0x7f0600de

    invoke-static {v1}, Lbl/adl;->b(I)I

    move-result v3

    .line 184
    const v1, 0x7f06018f

    invoke-static {v1}, Lbl/adl;->b(I)I

    move-result v5

    .line 185
    const v1, 0x7f0601bc

    invoke-static {v1}, Lbl/adl;->b(I)I

    move-result v1

    .line 186
    invoke-virtual {p1, v1, v1, v1, v1}, Landroid/support/v7/widget/RecyclerView;->setPadding(IIII)V

    .line 187
    new-instance v1, Lbl/adq$l;

    move-object v2, v0

    invoke-direct/range {v1 .. v6}, Lbl/adq$l;-><init>(Lcom/bilibili/tv/widget/border/BorderGridLayoutManager;IIII)V

    invoke-virtual {p1, v1}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView$g;)V

    .line 188
    new-instance v1, Lbl/adq$m;

    invoke-direct {v1, p0, v0}, Lbl/adq$m;-><init>(Lbl/adq;Lcom/bilibili/tv/widget/border/BorderGridLayoutManager;)V

    invoke-virtual {p1, v1}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView$m;)V

    .line 189
    iget-object v1, p0, Lbl/adq;->c:Lbl/adq$j;

    invoke-virtual {p1, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 190
    invoke-virtual {p0}, Lbl/adq;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 191
    instance-of v2, v1, Lcom/bilibili/tv/ui/base/BaseUpViewActivity;

    if-eqz v2, :cond_93

    .line 192
    check-cast v1, Lcom/bilibili/tv/ui/base/BaseUpViewActivity;

    invoke-virtual {v1}, Lcom/bilibili/tv/ui/base/BaseUpViewActivity;->m()Lbl/agd;

    move-result-object v1

    iput-object v1, p0, Lbl/adq;->f:Lbl/agd;

    .line 194
    :cond_93
    new-instance v1, Lbl/adq$n;

    invoke-direct {v1, p0}, Lbl/adq$n;-><init>(Lbl/adq;)V

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/border/BorderGridLayoutManager;->a(Lcom/bilibili/tv/widget/border/BorderGridLayoutManager$a;)V

    .line 195
    invoke-virtual {p0}, Lbl/adq;->i()V

    .line 196
    invoke-direct {p0}, Lbl/adq;->n()V

    .line 197
    return-void
.end method

.method public final a(Lcom/bilibili/tv/ui/area/RegionApiManager$ListOrder;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 458
    const-string v0, "listOrder"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 459
    iget-object v0, p0, Lbl/adq;->m:Lcom/bilibili/tv/ui/area/RegionApiManager$ListOrder;

    if-ne p1, v0, :cond_15

    move v0, v1

    .line 460
    :goto_c
    iput-object p1, p0, Lbl/adq;->m:Lcom/bilibili/tv/ui/area/RegionApiManager$ListOrder;

    .line 461
    if-nez v0, :cond_14

    iget-object v0, p0, Lbl/adq;->c:Lbl/adq$j;

    if-nez v0, :cond_17

    .line 481
    :cond_14
    :goto_14
    return-void

    :cond_15
    move v0, v2

    .line 459
    goto :goto_c

    .line 464
    :cond_17
    iput v1, p0, Lbl/adq;->i:I

    .line 465
    iput-boolean v1, p0, Lbl/adq;->j:Z

    .line 466
    invoke-virtual {p0}, Lbl/adq;->m()V

    .line 467
    invoke-virtual {p0}, Lbl/adq;->h()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 468
    invoke-virtual {p0}, Lbl/adq;->i()V

    .line 469
    sget-object v0, Lcom/bilibili/tv/ui/area/RegionApiManager$ListOrder;->DEFAULT:Lcom/bilibili/tv/ui/area/RegionApiManager$ListOrder;

    if-ne p1, v0, :cond_3e

    .line 470
    iget-object v0, p0, Lbl/adq;->c:Lbl/adq$j;

    .line 471
    if-nez v0, :cond_35

    .line 472
    invoke-static {}, Lbl/bbi;->a()V

    .line 474
    :cond_35
    invoke-virtual {v0}, Lbl/adq$j;->h()V

    .line 475
    iput-boolean v2, p0, Lbl/adq;->l:Z

    .line 476
    invoke-direct {p0}, Lbl/adq;->n()V

    goto :goto_14

    .line 479
    :cond_3e
    iput-boolean v1, p0, Lbl/adq;->l:Z

    .line 480
    invoke-virtual {p0}, Lbl/adq;->o()V

    goto :goto_14
.end method

.method public final b()Lcom/bilibili/tv/ui/area/RegionApiManager$ListOrder;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lbl/adq;->m:Lcom/bilibili/tv/ui/area/RegionApiManager$ListOrder;

    return-object v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 336
    invoke-virtual {p0}, Lbl/adq;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lbl/adq;->c:Lbl/adq$j;

    if-eqz v0, :cond_14

    .line 337
    iget-object v0, p0, Lbl/adq;->c:Lbl/adq$j;

    invoke-virtual {v0}, Lbl/adq$j;->a()I

    move-result v0

    if-lez v0, :cond_14

    .line 338
    const/4 v0, 0x1

    .line 341
    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public d_()V
    .locals 0

    .prologue
    .line 366
    invoke-super {p0}, Lbl/ady;->d_()V

    .line 367
    invoke-direct {p0}, Lbl/adq;->n()V

    .line 368
    return-void
.end method

.method public final o()V
    .locals 8

    .prologue
    .line 444
    const-string v0, "AreaFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[o()] START: Loading more videos, rid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lbl/adq;->h:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", page="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lbl/adq;->i:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbl/adq;->k:Z

    .line 446
    sget-object v0, Lcom/bilibili/tv/ui/area/RegionApiManager;->a:Lcom/bilibili/tv/ui/area/RegionApiManager;

    .line 447
    iget v1, p0, Lbl/adq;->h:I

    .line 448
    iget v2, p0, Lbl/adq;->i:I

    .line 449
    iget-object v3, p0, Lbl/adq;->m:Lcom/bilibili/tv/ui/area/RegionApiManager$ListOrder;

    .line 450
    if-eqz v3, :cond_96

    invoke-virtual {v3}, Lcom/bilibili/tv/ui/area/RegionApiManager$ListOrder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 451
    :goto_37
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "http://app.bilibili.com/x/v2/region/show/child/list?rid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&pn="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&ps=30&order="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&tag_id=0&channel="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/bilibili/api/BiliConfig;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 452
    const-string v5, "AreaFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[o()] Request URL: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lbl/adq;->d:Lbl/adq$i;

    invoke-virtual/range {v0 .. v5}, Lcom/bilibili/tv/ui/area/RegionApiManager;->a(IILjava/lang/String;Ljava/lang/Integer;Lbl/vn;)V

    .line 454
    const-string v0, "AreaFragment"

    const-string v1, "[o()] Request sent, waiting for response..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    return-void

    .line 450
    :cond_96
    const/4 v3, 0x0

    goto :goto_37
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lbl/adq;->c:Lbl/adq$j;

    if-eqz v0, :cond_13

    .line 354
    iget-object v0, p0, Lbl/adq;->c:Lbl/adq$j;

    .line 355
    if-nez v0, :cond_b

    .line 356
    invoke-static {}, Lbl/bbi;->a()V

    .line 358
    :cond_b
    invoke-virtual {v0}, Lbl/adq$j;->h()V

    .line 359
    const/4 v0, 0x0

    check-cast v0, Lbl/adq$j;

    iput-object v0, p0, Lbl/adq;->c:Lbl/adq$j;

    .line 361
    :cond_13
    invoke-super {p0}, Lbl/ady;->onDestroy()V

    .line 362
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 347
    const/4 v0, 0x0

    check-cast v0, Lbl/adq$i;

    iput-object v0, p0, Lbl/adq;->d:Lbl/adq$i;

    .line 348
    invoke-super {p0}, Lbl/ady;->onDestroyView()V

    .line 349
    return-void
.end method
