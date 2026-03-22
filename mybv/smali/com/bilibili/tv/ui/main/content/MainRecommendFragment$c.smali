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

.field private columnCount:I

.field private final d:Landroid/content/UriMatcher;

.field private final e:I

.field private final f:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 427
    new-instance v0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$c$aa;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$c$aa;-><init>(Lbl/bbg;)V

    sput-object v0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$c;->Companion:Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$c$aa;

    return-void
.end method

.method public constructor <init>(Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;)V
    .locals 2

    .prologue
    .line 441
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$a;-><init>()V

    .line 434
    const/4 v0, 0x2

    iput v0, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$c;->columnCount:I

    .line 442
    const-string v0, "fragment"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 443
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$c;->ugcList:Ljava/util/List;

    .line 444
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$c;->ogvList:Ljava/util/List;

    .line 445
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$c;->c:Ljava/lang/ref/WeakReference;

    .line 446
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    iput-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$c;->d:Landroid/content/UriMatcher;

    .line 447
    const v0, 0x7f060239

    invoke-static {v0}, Lbl/adl;->b(I)I

    move-result v0

    iput v0, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$c;->e:I

    .line 448
    const v0, 0x7f060174

    invoke-static {v0}, Lbl/adl;->b(I)I

    move-result v0

    iput v0, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$c;->f:I

    .line 449
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lbl/abd;->get_home_column(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$c;->columnCount:I

    .line 450
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 438
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
    .line 554
    const/4 v0, 0x2

    return v0
.end method

.method public bridge synthetic a(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$v;
    .locals 1

    .prologue
    .line 426
    invoke-virtual {p0, p1, p2}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$c;->a(Landroid/view/ViewGroup;I)Lbl/adv;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/view/ViewGroup;I)Lbl/adv;
    .locals 3

    .prologue
    .line 454
    const-string v0, "parent"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 455
    const/4 v0, 0x1

    if-ne p2, v0, :cond_14

    .line 456
    const/4 v0, 0x0

    check-cast v0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$a;

    sget-object v0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$a;->Companion:Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$a$aa;

    iget-object v1, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$c;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0, p1, v1}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$a$aa;->a(Landroid/view/ViewGroup;Ljava/lang/ref/WeakReference;)Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$a;

    move-result-object v0

    .line 463
    :goto_13
    return-object v0

    .line 458
    :cond_14
    iget v0, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$c;->columnCount:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1e

    iget v0, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$c;->columnCount:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3b

    .line 459
    :cond_1e
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0a0096

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 460
    const-string v0, "view"

    invoke-static {v1, v0}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 461
    new-instance v0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$e;

    iget-object v2, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$c;->c:Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1, v2}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$e;-><init>(Landroid/view/View;Ljava/lang/ref/WeakReference;)V

    goto :goto_13

    .line 463
    :cond_3b
    sget-object v0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$e;->Companion:Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$e$a;

    iget-object v1, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$c;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0, p1, v1}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$e$a;->a(Landroid/view/ViewGroup;Ljava/lang/ref/WeakReference;)Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$e;

    move-result-object v0

    goto :goto_13
.end method

.method public bridge synthetic a(Landroid/support/v7/widget/RecyclerView$v;I)V
    .locals 0

    .prologue
    .line 426
    check-cast p1, Lbl/adv;

    invoke-virtual {p0, p1, p2}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$c;->a(Lbl/adv;I)V

    return-void
.end method

.method public a(Lbl/adv;I)V
    .locals 13

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/16 v5, 0x8

    const/4 v9, 0x0

    .line 468
    instance-of v0, p1, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$e;

    if-eqz v0, :cond_2a

    .line 469
    iget-object v0, p1, Lbl/adv;->a:Landroid/view/View;

    const v1, 0x7f0800d8

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 470
    sget-object v0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$c;->ugcList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v1, p2, 0x1

    if-ge v0, v1, :cond_2b

    .line 471
    check-cast p1, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$e;

    invoke-virtual {p1}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$e;->B()Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 550
    :cond_2a
    :goto_2a
    return-void

    :cond_2b
    move-object v6, p1

    .line 474
    check-cast v6, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$e;

    .line 475
    invoke-virtual {v6}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$e;->B()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 476
    sget-object v0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$c;->ugcList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;

    .line 477
    if-nez v7, :cond_55

    .line 478
    iget-object v0, p1, Lbl/adv;->a:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setFocusable(Z)V

    .line 479
    iget-object v0, p1, Lbl/adv;->a:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 480
    iget-object v0, p1, Lbl/adv;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 481
    if-eqz v0, :cond_2a

    .line 482
    iput v9, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_2a

    .line 486
    :cond_55
    iget-object v0, p1, Lbl/adv;->a:Landroid/view/View;

    invoke-virtual {v0, v10}, Landroid/view/View;->setFocusable(Z)V

    .line 487
    iget-object v0, p1, Lbl/adv;->a:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 489
    iget v0, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$c;->columnCount:I

    if-eq v0, v12, :cond_68

    iget v0, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$c;->columnCount:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_b7

    .line 490
    :cond_68
    iget-object v0, p1, Lbl/adv;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 491
    const v1, 0x7f06022b

    invoke-static {v1}, Lbl/adl;->b(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    const v2, 0x7f0600de

    invoke-static {v2}, Lbl/adl;->b(I)I

    move-result v2

    add-int/2addr v1, v2

    const v2, 0x7f06006e

    invoke-static {v2}, Lbl/adl;->b(I)I

    move-result v2

    add-int/2addr v1, v2

    .line 492
    sub-int/2addr v0, v1

    iget v1, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$c;->columnCount:I

    div-int/2addr v0, v1

    .line 493
    int-to-float v0, v0

    const v1, 0x3f0f5c29    # 0.56f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 494
    invoke-virtual {v6}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$e;->A()Lcom/bilibili/tv/widget/ScalableImageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bilibili/tv/widget/ScalableImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 495
    if-eqz v1, :cond_a3

    .line 496
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 498
    :cond_a3
    iget-object v0, p1, Lbl/adv;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 499
    if-nez v0, :cond_b2

    .line 500
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 502
    :cond_b2
    iget-object v1, p1, Lbl/adv;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 505
    :cond_b7
    invoke-virtual {v7}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_cc

    .line 506
    invoke-virtual {v6}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$e;->z()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v7}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 508
    :cond_cc
    invoke-virtual {v7}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->getCover()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f5

    .line 509
    invoke-static {}, Lbl/nv;->a()Lbl/nv;

    move-result-object v0

    .line 510
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v1

    .line 511
    invoke-virtual {v1}, Lcom/bilibili/tv/MainApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v7}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->getCover()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$c;->e:I

    iget v4, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$c;->f:I

    invoke-static {v1, v2, v3, v4}, Lbl/abd;->get_thumb_url_with_size(Landroid/content/Context;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$e;->A()Lcom/bilibili/tv/widget/ScalableImageView;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lbl/nv;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 513
    :cond_f5
    invoke-virtual {v7}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->getUri()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_108

    .line 514
    iget-object v0, p1, Lbl/adv;->a:Landroid/view/View;

    .line 515
    invoke-virtual {v7}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->getUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 517
    :cond_108
    invoke-virtual {v7}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->getOwnerName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1b7

    .line 518
    invoke-virtual {v6}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$e;->B()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v7}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->getOwnerName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 519
    invoke-virtual {v6}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$e;->B()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 523
    :goto_124
    invoke-virtual {v6}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$e;->C()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v7}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->getPlay()I

    move-result v1

    invoke-static {v1}, Lbl/adh;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 524
    invoke-virtual {v7}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->getDanmaku()I

    move-result v0

    .line 525
    if-lez v0, :cond_1c0

    .line 526
    invoke-virtual {v6}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$e;->D()Landroid/widget/TextView;

    move-result-object v1

    invoke-static {v0}, Lbl/adh;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 527
    invoke-virtual {v6}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$e;->D()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 531
    :goto_14b
    invoke-virtual {v7}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->getPubdate()J

    move-result-wide v0

    .line 532
    invoke-virtual {v6}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$e;->F()Landroid/widget/TextView;

    move-result-object v2

    if-eqz v2, :cond_176

    .line 533
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1c8

    .line 534
    invoke-virtual {v6}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$e;->F()Landroid/widget/TextView;

    move-result-object v8

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    .line 536
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    .line 534
    invoke-static/range {v0 .. v5}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJ)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 537
    invoke-virtual {v6}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$e;->F()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 542
    :cond_176
    :goto_176
    invoke-virtual {v7}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->getDuration()I

    move-result v0

    .line 543
    const/16 v1, 0xe10

    if-lt v0, v1, :cond_1d0

    .line 544
    invoke-virtual {v6}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$e;->E()Landroid/widget/TextView;

    move-result-object v1

    const-string v2, "%d:%02d:%02d"

    new-array v3, v12, [Ljava/lang/Object;

    div-int/lit16 v4, v0, 0xe10

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v9

    rem-int/lit16 v4, v0, 0xe10

    div-int/lit8 v4, v4, 0x3c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v10

    rem-int/lit8 v0, v0, 0x3c

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v11

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 548
    :goto_1a7
    iget-object v0, p1, Lbl/adv;->a:Landroid/view/View;

    const v1, 0x7f0800ec

    add-int/lit8 v2, p2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto/16 :goto_2a

    .line 521
    :cond_1b7
    invoke-virtual {v6}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$e;->B()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_124

    .line 529
    :cond_1c0
    invoke-virtual {v6}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$e;->D()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_14b

    .line 539
    :cond_1c8
    invoke-virtual {v6}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$e;->F()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_176

    .line 546
    :cond_1d0
    invoke-virtual {v6}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$e;->E()Landroid/widget/TextView;

    move-result-object v1

    const-string v2, "%02d:%02d"

    new-array v3, v11, [Ljava/lang/Object;

    div-int/lit8 v4, v0, 0x3c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v9

    rem-int/lit8 v0, v0, 0x3c

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v10

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1a7
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

    .line 558
    const-string v0, "ogvList"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 559
    const-string v0, "ugcList"

    invoke-static {p2, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 561
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 563
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

    .line 564
    if-eqz v0, :cond_14

    .line 565
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 569
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

    .line 570
    if-eqz v0, :cond_2a

    .line 571
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2a

    .line 575
    :cond_3c
    sput-object v1, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$c;->ugcList:Ljava/util/List;

    .line 576
    sput-object p1, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$c;->ogvList:Ljava/util/List;

    .line 578
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$c;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;

    .line 579
    if-eqz v0, :cond_56

    .line 580
    # setter for: Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->c:I
    invoke-static {v0, v3}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->access$402(Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;I)I

    .line 581
    # invokes: Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->d()Landroid/support/v7/widget/RecyclerView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->access$500(Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    .line 582
    if-eqz v0, :cond_56

    .line 583
    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->a(I)V

    .line 587
    :cond_56
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$c;->d()V

    .line 588
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
    .line 592
    const-string v0, "ogvList"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 593
    const-string v0, "ugcList"

    invoke-static {p2, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 595
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 597
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

    .line 598
    if-eqz v0, :cond_13

    .line 599
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .line 603
    :cond_25
    sget-object v0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$c;->ugcList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 604
    sget-object v2, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$c;->ugcList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 605
    sput-object p1, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$c;->ogvList:Ljava/util/List;

    .line 607
    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$c;->d(I)V

    .line 608
    return-void
.end method
