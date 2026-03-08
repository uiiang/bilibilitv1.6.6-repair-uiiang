.class final Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$c;
.super Landroid/support/v7/widget/RecyclerView$a;
.source "MainRecommendFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$c$aa;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$a",
        "<",
        "Lbl/adv;",
        ">;"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$c$aa;

.field public static ogvList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/tv/api/main/MainRecommendEx$Content;",
            ">;"
        }
    .end annotation
.end field

.field public static ugcList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/tv/api/main/MainRecommendEx$Content;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Landroid/content/UriMatcher;

.field private final e:I

.field private final f:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 411
    new-instance v0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$c$aa;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$c$aa;-><init>(Lbl/bbg;)V

    sput-object v0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$c;->Companion:Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$c$aa;

    return-void
.end method

.method public constructor <init>(Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;)V
    .locals 2

    .prologue
    .line 424
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$a;-><init>()V

    .line 425
    const-string v0, "fragment"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 426
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$c;->ugcList:Ljava/util/List;

    .line 427
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$c;->ogvList:Ljava/util/List;

    .line 428
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$c;->c:Ljava/lang/ref/WeakReference;

    .line 429
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    iput-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$c;->d:Landroid/content/UriMatcher;

    .line 430
    const v0, 0x7f060239

    invoke-static {v0}, Lbl/adl;->b(I)I

    move-result v0

    iput v0, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$c;->e:I

    .line 431
    const v0, 0x7f060174

    invoke-static {v0}, Lbl/adl;->b(I)I

    move-result v0

    iput v0, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$c;->f:I

    .line 432
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 421
    sget-object v0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$c;->ugcList:Ljava/util/List;

    if-eqz v0, :cond_b

    sget-object v0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$c;->ugcList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public a(I)I
    .locals 1

    .prologue
    .line 483
    const/4 v0, 0x2

    return v0
.end method

.method public bridge synthetic a(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$v;
    .locals 1

    .prologue
    .line 410
    invoke-virtual {p0, p1, p2}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$c;->a(Landroid/view/ViewGroup;I)Lbl/adv;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/view/ViewGroup;I)Lbl/adv;
    .locals 2

    .prologue
    .line 436
    const-string v0, "parent"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 437
    const/4 v0, 0x1

    if-ne p2, v0, :cond_14

    .line 438
    const/4 v0, 0x0

    check-cast v0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$a;

    sget-object v0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$a;->Companion:Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$a$aa;

    iget-object v1, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$c;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0, p1, v1}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$a$aa;->a(Landroid/view/ViewGroup;Ljava/lang/ref/WeakReference;)Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$a;

    move-result-object v0

    .line 440
    :goto_13
    return-object v0

    :cond_14
    sget-object v0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$e;->Companion:Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$e$a;

    iget-object v1, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$c;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0, p1, v1}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$e$a;->a(Landroid/view/ViewGroup;Ljava/lang/ref/WeakReference;)Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$e;

    move-result-object v0

    goto :goto_13
.end method

.method public bridge synthetic a(Landroid/support/v7/widget/RecyclerView$v;I)V
    .locals 0

    .prologue
    .line 410
    check-cast p1, Lbl/adv;

    invoke-virtual {p0, p1, p2}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$c;->a(Lbl/adv;I)V

    return-void
.end method

.method public a(Lbl/adv;I)V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 445
    instance-of v0, p1, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$e;

    if-eqz v0, :cond_25

    .line 446
    iget-object v0, p1, Lbl/adv;->a:Landroid/view/View;

    const v1, 0x7f0800d8

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 447
    sget-object v0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$c;->ugcList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v1, p2, 0x1

    if-ge v0, v1, :cond_26

    .line 448
    check-cast p1, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$e;

    invoke-virtual {p1}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$e;->B()Lcom/bilibili/tv/widget/ScalableImageView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/ScalableImageView;->setVisibility(I)V

    .line 479
    :cond_25
    :goto_25
    return-void

    :cond_26
    move-object v0, p1

    .line 451
    check-cast v0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$e;

    .line 452
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$e;->B()Lcom/bilibili/tv/widget/ScalableImageView;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/bilibili/tv/widget/ScalableImageView;->setVisibility(I)V

    .line 453
    sget-object v1, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$c;->ugcList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;

    .line 454
    if-nez v1, :cond_51

    .line 455
    iget-object v0, p1, Lbl/adv;->a:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 456
    iget-object v0, p1, Lbl/adv;->a:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 457
    iget-object v0, p1, Lbl/adv;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 458
    if-eqz v0, :cond_25

    .line 459
    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_25

    .line 463
    :cond_51
    iget-object v2, p1, Lbl/adv;->a:Landroid/view/View;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 464
    iget-object v2, p1, Lbl/adv;->a:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 465
    invoke-virtual {v1}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_71

    .line 466
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$e;->z()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 468
    :cond_71
    invoke-virtual {v1}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->getCover()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9a

    .line 469
    invoke-static {}, Lbl/nv;->a()Lbl/nv;

    move-result-object v2

    .line 470
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v3

    .line 471
    invoke-virtual {v3}, Lcom/bilibili/tv/MainApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->getCover()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$c;->e:I

    iget v6, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$c;->f:I

    invoke-static {v3, v4, v5, v6}, Lbl/ach;->a(Landroid/content/Context;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$e;->A()Lcom/bilibili/tv/widget/ScalableImageView;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lbl/nv;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 473
    :cond_9a
    invoke-virtual {v1}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->getUri()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_ad

    .line 474
    iget-object v0, p1, Lbl/adv;->a:Landroid/view/View;

    .line 475
    invoke-virtual {v1}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->getUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 477
    :cond_ad
    iget-object v0, p1, Lbl/adv;->a:Landroid/view/View;

    const v1, 0x7f0800ec

    add-int/lit8 v2, p2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto/16 :goto_25
.end method

.method public final a(Ljava/util/List;Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/tv/api/main/MainRecommendEx$Content;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/tv/api/main/MainRecommendEx$Content;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 487
    const-string v0, "ogvList"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 488
    const-string v0, "ugcList"

    invoke-static {p2, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 490
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 492
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_14
    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;

    .line 493
    if-eqz v0, :cond_14

    .line 494
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 498
    :cond_26
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2a
    :goto_2a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;

    .line 499
    if-eqz v0, :cond_2a

    .line 500
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2a

    .line 504
    :cond_3c
    sput-object v1, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$c;->ugcList:Ljava/util/List;

    .line 505
    sput-object p1, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$c;->ogvList:Ljava/util/List;

    .line 507
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$c;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;

    .line 508
    if-eqz v0, :cond_56

    .line 509
    # setter for: Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->c:I
    invoke-static {v0, v3}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->access$402(Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;I)I

    .line 510
    # invokes: Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->d()Landroid/support/v7/widget/RecyclerView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->access$500(Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    .line 511
    if-eqz v0, :cond_56

    .line 512
    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->a(I)V

    .line 516
    :cond_56
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$c;->d()V

    .line 517
    const/4 v0, 0x1

    return v0
.end method

.method public final appendData(Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/tv/api/main/MainRecommendEx$Content;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/tv/api/main/MainRecommendEx$Content;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 521
    const-string v0, "ogvList"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 522
    const-string v0, "ugcList"

    invoke-static {p2, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 524
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 526
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_13
    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;

    .line 527
    if-eqz v0, :cond_13

    .line 528
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .line 532
    :cond_25
    sget-object v0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$c;->ugcList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 533
    sget-object v2, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$c;->ugcList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 534
    sput-object p1, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$c;->ogvList:Ljava/util/List;

    .line 536
    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$c;->d(I)V

    .line 537
    return-void
.end method
