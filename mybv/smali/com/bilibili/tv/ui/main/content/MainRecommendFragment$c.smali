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
    .line 512
    new-instance v0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$c$aa;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$c$aa;-><init>(Lbl/bbg;)V

    sput-object v0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$c;->Companion:Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$c$aa;

    return-void
.end method

.method public constructor <init>(Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;)V
    .locals 2

    .prologue
    .line 526
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$a;-><init>()V

    .line 519
    const/4 v0, 0x2

    iput v0, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$c;->columnCount:I

    .line 527
    const-string v0, "fragment"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 528
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$c;->ugcList:Ljava/util/List;

    .line 529
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$c;->ogvList:Ljava/util/List;

    .line 530
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$c;->c:Ljava/lang/ref/WeakReference;

    .line 531
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    iput-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$c;->d:Landroid/content/UriMatcher;

    .line 532
    const v0, 0x7f060239

    invoke-static {v0}, Lbl/adl;->b(I)I

    move-result v0

    iput v0, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$c;->e:I

    .line 533
    const v0, 0x7f060174

    invoke-static {v0}, Lbl/adl;->b(I)I

    move-result v0

    iput v0, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$c;->f:I

    .line 534
    invoke-virtual {p1}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lbl/abd;->get_home_column(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$c;->columnCount:I

    .line 535
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 523
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
    .line 639
    const/4 v0, 0x2

    return v0
.end method

.method public bridge synthetic a(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$v;
    .locals 1

    .prologue
    .line 511
    invoke-virtual {p0, p1, p2}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$c;->a(Landroid/view/ViewGroup;I)Lbl/adv;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/view/ViewGroup;I)Lbl/adv;
    .locals 3

    .prologue
    .line 539
    const-string v0, "parent"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 540
    const/4 v0, 0x1

    if-ne p2, v0, :cond_14

    .line 541
    const/4 v0, 0x0

    check-cast v0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$a;

    sget-object v0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$a;->Companion:Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$a$aa;

    iget-object v1, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$c;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0, p1, v1}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$a$aa;->a(Landroid/view/ViewGroup;Ljava/lang/ref/WeakReference;)Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$a;

    move-result-object v0

    .line 548
    :goto_13
    return-object v0

    .line 543
    :cond_14
    iget v0, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$c;->columnCount:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1e

    iget v0, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$c;->columnCount:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3b

    .line 544
    :cond_1e
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0a0096

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 545
    const-string v0, "view"

    invoke-static {v1, v0}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 546
    new-instance v0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$e;

    iget-object v2, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$c;->c:Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1, v2}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$e;-><init>(Landroid/view/View;Ljava/lang/ref/WeakReference;)V

    goto :goto_13

    .line 548
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
    .line 511
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

    .line 553
    instance-of v0, p1, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$e;

    if-eqz v0, :cond_2a

    .line 554
    iget-object v0, p1, Lbl/adv;->a:Landroid/view/View;

    const v1, 0x7f0800d8

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 555
    sget-object v0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$c;->ugcList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v1, p2, 0x1

    if-ge v0, v1, :cond_2b

    .line 556
    check-cast p1, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$e;

    invoke-virtual {p1}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$e;->B()Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 635
    :cond_2a
    :goto_2a
    return-void

    :cond_2b
    move-object v6, p1

    .line 559
    check-cast v6, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$e;

    .line 560
    invoke-virtual {v6}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$e;->B()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 561
    sget-object v0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$c;->ugcList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;

    .line 562
    if-nez v7, :cond_55

    .line 563
    iget-object v0, p1, Lbl/adv;->a:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setFocusable(Z)V

    .line 564
    iget-object v0, p1, Lbl/adv;->a:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 565
    iget-object v0, p1, Lbl/adv;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 566
    if-eqz v0, :cond_2a

    .line 567
    iput v9, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_2a

    .line 571
    :cond_55
    iget-object v0, p1, Lbl/adv;->a:Landroid/view/View;

    invoke-virtual {v0, v10}, Landroid/view/View;->setFocusable(Z)V

    .line 572
    iget-object v0, p1, Lbl/adv;->a:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 574
    iget v0, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$c;->columnCount:I

    if-eq v0, v12, :cond_68

    iget v0, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$c;->columnCount:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_b7

    .line 575
    :cond_68
    iget-object v0, p1, Lbl/adv;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 576
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

    .line 577
    sub-int/2addr v0, v1

    iget v1, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$c;->columnCount:I

    div-int/2addr v0, v1

    .line 578
    int-to-float v0, v0

    const v1, 0x3f0f5c29    # 0.56f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 579
    invoke-virtual {v6}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$e;->A()Lcom/bilibili/tv/widget/ScalableImageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bilibili/tv/widget/ScalableImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 580
    if-eqz v1, :cond_a3

    .line 581
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 583
    :cond_a3
    iget-object v0, p1, Lbl/adv;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 584
    if-nez v0, :cond_b2

    .line 585
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 587
    :cond_b2
    iget-object v1, p1, Lbl/adv;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 590
    :cond_b7
    invoke-virtual {v7}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_cc

    .line 591
    invoke-virtual {v6}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$e;->z()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v7}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 593
    :cond_cc
    invoke-virtual {v7}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->getCover()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f5

    .line 594
    invoke-static {}, Lbl/nv;->a()Lbl/nv;

    move-result-object v0

    .line 595
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v1

    .line 596
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

    .line 598
    :cond_f5
    invoke-virtual {v7}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->getUri()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_108

    .line 599
    iget-object v0, p1, Lbl/adv;->a:Landroid/view/View;

    .line 600
    invoke-virtual {v7}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->getUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 602
    :cond_108
    invoke-virtual {v7}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->getOwnerName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1b7

    .line 603
    invoke-virtual {v6}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$e;->B()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v7}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->getOwnerName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 604
    invoke-virtual {v6}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$e;->B()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 608
    :goto_124
    invoke-virtual {v6}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$e;->C()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v7}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->getPlay()I

    move-result v1

    invoke-static {v1}, Lbl/adh;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 609
    invoke-virtual {v7}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->getDanmaku()I

    move-result v0

    .line 610
    if-lez v0, :cond_1c0

    .line 611
    invoke-virtual {v6}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$e;->D()Landroid/widget/TextView;

    move-result-object v1

    invoke-static {v0}, Lbl/adh;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 612
    invoke-virtual {v6}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$e;->D()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 616
    :goto_14b
    invoke-virtual {v7}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->getPubdate()J

    move-result-wide v0

    .line 617
    invoke-virtual {v6}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$e;->F()Landroid/widget/TextView;

    move-result-object v2

    if-eqz v2, :cond_176

    .line 618
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1c8

    .line 619
    invoke-virtual {v6}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$e;->F()Landroid/widget/TextView;

    move-result-object v8

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    .line 621
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    .line 619
    invoke-static/range {v0 .. v5}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJ)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 622
    invoke-virtual {v6}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$e;->F()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 627
    :cond_176
    :goto_176
    invoke-virtual {v7}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->getDuration()I

    move-result v0

    .line 628
    const/16 v1, 0xe10

    if-lt v0, v1, :cond_1d0

    .line 629
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

    .line 633
    :goto_1a7
    iget-object v0, p1, Lbl/adv;->a:Landroid/view/View;

    const v1, 0x7f0800ec

    add-int/lit8 v2, p2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto/16 :goto_2a

    .line 606
    :cond_1b7
    invoke-virtual {v6}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$e;->B()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_124

    .line 614
    :cond_1c0
    invoke-virtual {v6}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$e;->D()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_14b

    .line 624
    :cond_1c8
    invoke-virtual {v6}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$e;->F()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_176

    .line 631
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

    .line 643
    const-string v0, "ogvList"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 644
    const-string v0, "ugcList"

    invoke-static {p2, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 646
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 648
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

    .line 649
    if-eqz v0, :cond_14

    .line 650
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 654
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

    .line 655
    if-eqz v0, :cond_2a

    .line 656
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2a

    .line 660
    :cond_3c
    sput-object v1, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$c;->ugcList:Ljava/util/List;

    .line 661
    sput-object p1, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$c;->ogvList:Ljava/util/List;

    .line 663
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$c;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;

    .line 664
    if-eqz v0, :cond_56

    .line 665
    # setter for: Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->c:I
    invoke-static {v0, v3}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->access$402(Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;I)I

    .line 666
    # invokes: Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->d()Landroid/support/v7/widget/RecyclerView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->access$500(Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    .line 667
    if-eqz v0, :cond_56

    .line 668
    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->a(I)V

    .line 672
    :cond_56
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$c;->d()V

    .line 673
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
    .line 677
    const-string v0, "ogvList"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 678
    const-string v0, "ugcList"

    invoke-static {p2, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 680
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 682
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

    .line 683
    if-eqz v0, :cond_13

    .line 684
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .line 688
    :cond_25
    sget-object v0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$c;->ugcList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 689
    sget-object v2, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$c;->ugcList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 690
    sput-object p1, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$c;->ogvList:Ljava/util/List;

    .line 692
    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$c;->d(I)V

    .line 693
    return-void
.end method
