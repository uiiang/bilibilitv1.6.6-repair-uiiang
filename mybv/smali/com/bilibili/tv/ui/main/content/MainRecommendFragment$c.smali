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
    .line 440
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$a;-><init>()V

    .line 441
    const-string v0, "fragment"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 442
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$c;->ugcList:Ljava/util/List;

    .line 443
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$c;->ogvList:Ljava/util/List;

    .line 444
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$c;->c:Ljava/lang/ref/WeakReference;

    .line 445
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    iput-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$c;->d:Landroid/content/UriMatcher;

    .line 446
    const v0, 0x7f060239

    invoke-static {v0}, Lbl/adl;->b(I)I

    move-result v0

    iput v0, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$c;->e:I

    .line 447
    const v0, 0x7f060174

    invoke-static {v0}, Lbl/adl;->b(I)I

    move-result v0

    iput v0, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$c;->f:I

    .line 448
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 437
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
    .line 528
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
    .locals 2

    .prologue
    .line 452
    const-string v0, "parent"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 453
    const/4 v0, 0x1

    if-ne p2, v0, :cond_14

    .line 454
    const/4 v0, 0x0

    check-cast v0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$a;

    sget-object v0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$a;->Companion:Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$a$aa;

    iget-object v1, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$c;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0, p1, v1}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$a$aa;->a(Landroid/view/ViewGroup;Ljava/lang/ref/WeakReference;)Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$a;

    move-result-object v0

    .line 456
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
    .line 426
    check-cast p1, Lbl/adv;

    invoke-virtual {p0, p1, p2}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$c;->a(Lbl/adv;I)V

    return-void
.end method

.method public a(Lbl/adv;I)V
    .locals 13

    .prologue
    const-wide/16 v4, 0x3e8

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/16 v10, 0x8

    const/4 v9, 0x0

    .line 461
    instance-of v0, p1, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$e;

    if-eqz v0, :cond_2b

    .line 462
    iget-object v0, p1, Lbl/adv;->a:Landroid/view/View;

    const v1, 0x7f0800d8

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 463
    sget-object v0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$c;->ugcList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v1, p2, 0x1

    if-ge v0, v1, :cond_2c

    .line 464
    check-cast p1, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$e;

    invoke-virtual {p1}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$e;->B()Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 524
    :cond_2b
    :goto_2b
    return-void

    :cond_2c
    move-object v6, p1

    .line 467
    check-cast v6, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$e;

    .line 468
    invoke-virtual {v6}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$e;->B()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 469
    sget-object v0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$c;->ugcList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;

    .line 470
    if-nez v7, :cond_56

    .line 471
    iget-object v0, p1, Lbl/adv;->a:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setFocusable(Z)V

    .line 472
    iget-object v0, p1, Lbl/adv;->a:Landroid/view/View;

    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    .line 473
    iget-object v0, p1, Lbl/adv;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 474
    if-eqz v0, :cond_2b

    .line 475
    iput v9, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_2b

    .line 479
    :cond_56
    iget-object v0, p1, Lbl/adv;->a:Landroid/view/View;

    invoke-virtual {v0, v11}, Landroid/view/View;->setFocusable(Z)V

    .line 480
    iget-object v0, p1, Lbl/adv;->a:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 481
    invoke-virtual {v7}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_75

    .line 482
    invoke-virtual {v6}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$e;->z()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v7}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 484
    :cond_75
    invoke-virtual {v7}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->getCover()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9e

    .line 485
    invoke-static {}, Lbl/nv;->a()Lbl/nv;

    move-result-object v0

    .line 486
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v1

    .line 487
    invoke-virtual {v1}, Lcom/bilibili/tv/MainApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v7}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->getCover()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$c;->e:I

    iget v8, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$c;->f:I

    invoke-static {v1, v2, v3, v8}, Lbl/abd;->get_thumb_url_with_size(Landroid/content/Context;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$e;->A()Lcom/bilibili/tv/widget/ScalableImageView;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lbl/nv;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 489
    :cond_9e
    invoke-virtual {v7}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->getUri()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b1

    .line 490
    iget-object v0, p1, Lbl/adv;->a:Landroid/view/View;

    .line 491
    invoke-virtual {v7}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->getUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 493
    :cond_b1
    invoke-virtual {v7}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->getOwnerName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_157

    .line 494
    invoke-virtual {v6}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$e;->B()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v7}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->getOwnerName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 495
    invoke-virtual {v6}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$e;->B()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 499
    :goto_cd
    invoke-virtual {v6}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$e;->C()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v7}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->getPlay()I

    move-result v1

    invoke-static {v1}, Lbl/adh;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 500
    invoke-virtual {v7}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->getDanmaku()I

    move-result v0

    .line 501
    if-lez v0, :cond_160

    .line 502
    invoke-virtual {v6}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$e;->D()Landroid/widget/TextView;

    move-result-object v1

    invoke-static {v0}, Lbl/adh;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 503
    invoke-virtual {v6}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$e;->D()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 507
    :goto_f4
    invoke-virtual {v7}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->getPubdate()J

    move-result-wide v0

    .line 508
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_168

    .line 509
    invoke-virtual {v6}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$e;->F()Landroid/widget/TextView;

    move-result-object v8

    mul-long/2addr v0, v4

    .line 511
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 509
    invoke-static/range {v0 .. v5}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJ)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 512
    invoke-virtual {v6}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$e;->F()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 516
    :goto_115
    invoke-virtual {v7}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->getDuration()I

    move-result v0

    .line 517
    const/16 v1, 0xe10

    if-lt v0, v1, :cond_170

    .line 518
    invoke-virtual {v6}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$e;->E()Landroid/widget/TextView;

    move-result-object v1

    const-string v2, "%d:%02d:%02d"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    div-int/lit16 v4, v0, 0xe10

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v9

    rem-int/lit16 v4, v0, 0xe10

    div-int/lit8 v4, v4, 0x3c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v11

    rem-int/lit8 v0, v0, 0x3c

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v12

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 522
    :goto_147
    iget-object v0, p1, Lbl/adv;->a:Landroid/view/View;

    const v1, 0x7f0800ec

    add-int/lit8 v2, p2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto/16 :goto_2b

    .line 497
    :cond_157
    invoke-virtual {v6}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$e;->B()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_cd

    .line 505
    :cond_160
    invoke-virtual {v6}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$e;->D()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_f4

    .line 514
    :cond_168
    invoke-virtual {v6}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$e;->F()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_115

    .line 520
    :cond_170
    invoke-virtual {v6}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$e;->E()Landroid/widget/TextView;

    move-result-object v1

    const-string v2, "%02d:%02d"

    new-array v3, v12, [Ljava/lang/Object;

    div-int/lit8 v4, v0, 0x3c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v9

    rem-int/lit8 v0, v0, 0x3c

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v11

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_147
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

    .line 532
    const-string v0, "ogvList"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 533
    const-string v0, "ugcList"

    invoke-static {p2, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 535
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 537
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

    .line 538
    if-eqz v0, :cond_14

    .line 539
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 543
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

    .line 544
    if-eqz v0, :cond_2a

    .line 545
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2a

    .line 549
    :cond_3c
    sput-object v1, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$c;->ugcList:Ljava/util/List;

    .line 550
    sput-object p1, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$c;->ogvList:Ljava/util/List;

    .line 552
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$c;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;

    .line 553
    if-eqz v0, :cond_56

    .line 554
    # setter for: Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->c:I
    invoke-static {v0, v3}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->access$402(Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;I)I

    .line 555
    # invokes: Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->d()Landroid/support/v7/widget/RecyclerView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->access$500(Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    .line 556
    if-eqz v0, :cond_56

    .line 557
    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->a(I)V

    .line 561
    :cond_56
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$c;->d()V

    .line 562
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
    .line 566
    const-string v0, "ogvList"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 567
    const-string v0, "ugcList"

    invoke-static {p2, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 569
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 571
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

    .line 572
    if-eqz v0, :cond_13

    .line 573
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .line 577
    :cond_25
    sget-object v0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$c;->ugcList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 578
    sget-object v2, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$c;->ugcList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 579
    sput-object p1, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$c;->ogvList:Ljava/util/List;

    .line 581
    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment$c;->d(I)V

    .line 582
    return-void
.end method
