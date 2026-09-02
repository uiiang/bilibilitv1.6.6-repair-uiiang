.class public Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$VideoListAdapter;
.super Landroid/support/v7/widget/RecyclerView$a;
.source "BaseVideoListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "VideoListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$a",
        "<",
        "Lbl/adv;",
        ">;"
    }
.end annotation


# instance fields
.field private columnCount:I

.field private final fragmentRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;

.field private final thumbHeight:I

.field private final thumbWidth:I


# direct methods
.method public constructor <init>(Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;)V
    .locals 1

    .prologue
    .line 393
    iput-object p1, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$VideoListAdapter;->this$0:Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$a;-><init>()V

    .line 391
    const/4 v0, 0x2

    iput v0, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$VideoListAdapter;->columnCount:I

    .line 394
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$VideoListAdapter;->fragmentRef:Ljava/lang/ref/WeakReference;

    .line 395
    const v0, 0x7f060239

    invoke-static {v0}, Lbl/adl;->b(I)I

    move-result v0

    iput v0, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$VideoListAdapter;->thumbWidth:I

    .line 396
    const v0, 0x7f060174

    invoke-static {v0}, Lbl/adl;->b(I)I

    move-result v0

    iput v0, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$VideoListAdapter;->thumbHeight:I

    .line 397
    invoke-virtual {p2}, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lbl/abd;->get_home_column(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$VideoListAdapter;->columnCount:I

    .line 398
    return-void
.end method

.method private prefetchCovers(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/tv/api/main/MainRecommendEx$Content;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 584
    if-eqz p1, :cond_8

    :try_start_2
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 600
    :cond_8
    :goto_8
    return-void

    .line 587
    :cond_9
    const/16 v0, 0xc

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 588
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilibili/tv/MainApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 589
    const/4 v0, 0x0

    move v1, v0

    :goto_1d
    if-ge v1, v2, :cond_8

    .line 590
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;

    .line 591
    if-eqz v0, :cond_40

    invoke-virtual {v0}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->getCover()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_40

    .line 593
    invoke-virtual {v0}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->getCover()Ljava/lang/String;

    move-result-object v0

    iget v4, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$VideoListAdapter;->thumbWidth:I

    iget v5, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$VideoListAdapter;->thumbHeight:I

    invoke-static {v3, v0, v4, v5}, Lbl/abd;->get_thumb_url_with_size(Landroid/content/Context;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    .line 594
    invoke-static {v3, v0}, Lbl/abd;->prefetchCoverToMemoryCache(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_40} :catch_44

    .line 589
    :cond_40
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1d

    .line 598
    :catch_44
    move-exception v0

    goto :goto_8
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$VideoListAdapter;->this$0:Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;

    iget-object v0, v0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;->ugcList:Ljava/util/List;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$VideoListAdapter;->this$0:Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;

    iget-object v0, v0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;->ugcList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public a(I)I
    .locals 1

    .prologue
    .line 530
    const/4 v0, 0x2

    return v0
.end method

.method public bridge synthetic a(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$v;
    .locals 1

    .prologue
    .line 387
    invoke-virtual {p0, p1, p2}, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$VideoListAdapter;->a(Landroid/view/ViewGroup;I)Lbl/adv;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/view/ViewGroup;I)Lbl/adv;
    .locals 3

    .prologue
    .line 407
    const-string v0, "parent"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 408
    const/4 v0, 0x1

    if-ne p2, v0, :cond_11

    .line 409
    sget-object v0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$BigCardViewHolder;->Companion:Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$BigCardViewHolder$Companion;

    iget-object v1, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$VideoListAdapter;->fragmentRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0, p1, v1}, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$BigCardViewHolder$Companion;->a(Landroid/view/ViewGroup;Ljava/lang/ref/WeakReference;)Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$BigCardViewHolder;

    move-result-object v0

    .line 416
    :goto_10
    return-object v0

    .line 411
    :cond_11
    iget v0, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$VideoListAdapter;->columnCount:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1b

    iget v0, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$VideoListAdapter;->columnCount:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_38

    .line 412
    :cond_1b
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0a0096

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 413
    const-string v0, "view"

    invoke-static {v1, v0}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 414
    new-instance v0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$SmallCardViewHolder;

    iget-object v2, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$VideoListAdapter;->fragmentRef:Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1, v2}, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$SmallCardViewHolder;-><init>(Landroid/view/View;Ljava/lang/ref/WeakReference;)V

    goto :goto_10

    .line 416
    :cond_38
    sget-object v0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$SmallCardViewHolder;->Companion:Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$SmallCardViewHolder$Companion;

    iget-object v1, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$VideoListAdapter;->fragmentRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0, p1, v1}, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$SmallCardViewHolder$Companion;->a(Landroid/view/ViewGroup;Ljava/lang/ref/WeakReference;)Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$SmallCardViewHolder;

    move-result-object v0

    goto :goto_10
.end method

.method public bridge synthetic a(Landroid/support/v7/widget/RecyclerView$v;I)V
    .locals 0

    .prologue
    .line 387
    check-cast p1, Lbl/adv;

    invoke-virtual {p0, p1, p2}, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$VideoListAdapter;->a(Lbl/adv;I)V

    return-void
.end method

.method public a(Lbl/adv;I)V
    .locals 12

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v3, 0x1

    const/16 v9, 0x8

    const/4 v4, 0x0

    .line 421
    instance-of v0, p1, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$SmallCardViewHolder;

    if-eqz v0, :cond_2c

    .line 422
    iget-object v0, p1, Lbl/adv;->a:Landroid/view/View;

    const v1, 0x7f0800d8

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 423
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$VideoListAdapter;->this$0:Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;

    iget-object v0, v0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;->ugcList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v1, p2, 0x1

    if-ge v0, v1, :cond_2d

    .line 424
    check-cast p1, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$SmallCardViewHolder;

    invoke-virtual {p1}, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$SmallCardViewHolder;->getUpView()Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 526
    :cond_2c
    :goto_2c
    return-void

    :cond_2d
    move-object v0, p1

    .line 427
    check-cast v0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$SmallCardViewHolder;

    .line 428
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$SmallCardViewHolder;->getUpView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 429
    iget-object v1, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$VideoListAdapter;->this$0:Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;

    iget-object v1, v1, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;->ugcList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;

    .line 430
    if-nez v1, :cond_58

    .line 431
    iget-object v0, p1, Lbl/adv;->a:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 432
    iget-object v0, p1, Lbl/adv;->a:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 433
    iget-object v0, p1, Lbl/adv;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 434
    if-eqz v0, :cond_2c

    .line 435
    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_2c

    .line 439
    :cond_58
    iget-object v2, p1, Lbl/adv;->a:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 440
    iget-object v2, p1, Lbl/adv;->a:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 442
    iget v2, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$VideoListAdapter;->columnCount:I

    if-eq v2, v11, :cond_6b

    iget v2, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$VideoListAdapter;->columnCount:I

    const/4 v5, 0x4

    if-ne v2, v5, :cond_ba

    .line 443
    :cond_6b
    iget-object v2, p1, Lbl/adv;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 444
    const v5, 0x7f06022b

    invoke-static {v5}, Lbl/adl;->b(I)I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    const v6, 0x7f0600de

    invoke-static {v6}, Lbl/adl;->b(I)I

    move-result v6

    add-int/2addr v5, v6

    const v6, 0x7f06006e

    invoke-static {v6}, Lbl/adl;->b(I)I

    move-result v6

    add-int/2addr v5, v6

    .line 445
    sub-int/2addr v2, v5

    iget v5, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$VideoListAdapter;->columnCount:I

    div-int/2addr v2, v5

    .line 446
    int-to-float v2, v2

    const v5, 0x3f0f5c29    # 0.56f

    mul-float/2addr v2, v5

    float-to-int v2, v2

    .line 447
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$SmallCardViewHolder;->getCoverView()Lcom/bilibili/tv/widget/ScalableImageView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/bilibili/tv/widget/ScalableImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 448
    if-eqz v5, :cond_a6

    .line 449
    iput v2, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 451
    :cond_a6
    iget-object v2, p1, Lbl/adv;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 452
    if-nez v2, :cond_b5

    .line 453
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-direct {v2, v5, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 455
    :cond_b5
    iget-object v5, p1, Lbl/adv;->a:Landroid/view/View;

    invoke-virtual {v5, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 458
    :cond_ba
    invoke-virtual {v1}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_cf

    .line 459
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$SmallCardViewHolder;->getTitleView()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 462
    :cond_cf
    invoke-virtual {v1}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->getBadge()Ljava/lang/String;

    move-result-object v2

    .line 463
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1af

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$SmallCardViewHolder;->getBadgeView()Landroid/widget/TextView;

    move-result-object v5

    if-eqz v5, :cond_1af

    .line 464
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$SmallCardViewHolder;->getBadgeView()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 465
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$SmallCardViewHolder;->getBadgeView()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 470
    :cond_ed
    :goto_ed
    invoke-virtual {v1}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->getCover()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_116

    .line 471
    invoke-static {}, Lbl/nv;->a()Lbl/nv;

    move-result-object v2

    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/bilibili/tv/MainApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v1}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->getCover()Ljava/lang/String;

    move-result-object v6

    iget v7, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$VideoListAdapter;->thumbWidth:I

    iget v8, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$VideoListAdapter;->thumbHeight:I

    invoke-static {v5, v6, v7, v8}, Lbl/abd;->get_thumb_url_with_size(Landroid/content/Context;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$SmallCardViewHolder;->getCoverView()Lcom/bilibili/tv/widget/ScalableImageView;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lbl/nv;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 473
    :cond_116
    invoke-virtual {v1}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->getUri()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_129

    .line 474
    iget-object v2, p1, Lbl/adv;->a:Landroid/view/View;

    invoke-virtual {v1}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->getUri()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 476
    :cond_129
    invoke-virtual {v1}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->getOwnerName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1be

    .line 477
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$SmallCardViewHolder;->getUpView()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->getOwnerName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 478
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$SmallCardViewHolder;->getUpView()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 483
    :goto_145
    iget-object v2, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$VideoListAdapter;->fragmentRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;

    .line 484
    if-eqz v2, :cond_1c6

    invoke-virtual {v2}, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;->hideBottomInfo()Z

    move-result v2

    if-eqz v2, :cond_1c6

    move v2, v3

    .line 486
    :goto_156
    if-eqz v2, :cond_1c8

    .line 487
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$SmallCardViewHolder;->getBottomInfoLayout()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_165

    .line 488
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$SmallCardViewHolder;->getBottomInfoLayout()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    .line 511
    :cond_165
    :goto_165
    invoke-virtual {v1}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->getPubdate()J

    move-result-wide v2

    .line 512
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$SmallCardViewHolder;->getPubdateView()Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_19f

    .line 513
    const-wide/16 v6, 0x0

    cmp-long v1, v2, v6

    if-gez v1, :cond_265

    .line 514
    neg-long v2, v2

    const-wide/16 v6, 0x1

    sub-long/2addr v2, v6

    .line 515
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$SmallCardViewHolder;->getPubdateView()Landroid/widget/TextView;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u5728\u7ebf"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    long-to-int v2, v2

    invoke-static {v2}, Lbl/adh;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 516
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$SmallCardViewHolder;->getPubdateView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 524
    :cond_19f
    :goto_19f
    iget-object v0, p1, Lbl/adv;->a:Landroid/view/View;

    const v1, 0x7f0800ec

    add-int/lit8 v2, p2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto/16 :goto_2c

    .line 466
    :cond_1af
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$SmallCardViewHolder;->getBadgeView()Landroid/widget/TextView;

    move-result-object v2

    if-eqz v2, :cond_ed

    .line 467
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$SmallCardViewHolder;->getBadgeView()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_ed

    .line 480
    :cond_1be
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$SmallCardViewHolder;->getUpView()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_145

    :cond_1c6
    move v2, v4

    .line 484
    goto :goto_156

    .line 491
    :cond_1c8
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$SmallCardViewHolder;->getBottomInfoLayout()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1d5

    .line 492
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$SmallCardViewHolder;->getBottomInfoLayout()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 494
    :cond_1d5
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$SmallCardViewHolder;->getPlayView()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 495
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$SmallCardViewHolder;->getPlayView()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->getPlay()I

    move-result v5

    invoke-static {v5}, Lbl/adh;->a(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 496
    invoke-virtual {v1}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->getDanmaku()I

    move-result v2

    .line 497
    if-lez v2, :cond_23d

    .line 498
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$SmallCardViewHolder;->getDanmakuView()Landroid/widget/TextView;

    move-result-object v5

    invoke-static {v2}, Lbl/adh;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 499
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$SmallCardViewHolder;->getDanmakuView()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 503
    :goto_203
    invoke-virtual {v1}, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;->getDuration()I

    move-result v2

    .line 504
    const/16 v5, 0xe10

    if-lt v2, v5, :cond_245

    .line 505
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$SmallCardViewHolder;->getDurationView()Landroid/widget/TextView;

    move-result-object v5

    const-string v6, "%d:%02d:%02d"

    new-array v7, v11, [Ljava/lang/Object;

    div-int/lit16 v8, v2, 0xe10

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    rem-int/lit16 v8, v2, 0xe10

    div-int/lit8 v8, v8, 0x3c

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v3

    rem-int/lit8 v2, v2, 0x3c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 509
    :goto_234
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$SmallCardViewHolder;->getDurationView()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_165

    .line 501
    :cond_23d
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$SmallCardViewHolder;->getDanmakuView()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_203

    .line 507
    :cond_245
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$SmallCardViewHolder;->getDurationView()Landroid/widget/TextView;

    move-result-object v5

    const-string v6, "%02d:%02d"

    new-array v7, v10, [Ljava/lang/Object;

    div-int/lit8 v8, v2, 0x3c

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    rem-int/lit8 v2, v2, 0x3c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v3

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_234

    .line 517
    :cond_265
    const-wide/16 v6, 0x0

    cmp-long v1, v2, v6

    if-lez v1, :cond_27f

    .line 518
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$SmallCardViewHolder;->getPubdateView()Landroid/widget/TextView;

    move-result-object v1

    invoke-static {v2, v3}, Lcom/bilibili/tv/util/DateHelper;->formatDate(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 519
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$SmallCardViewHolder;->getPubdateView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_19f

    .line 521
    :cond_27f
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$SmallCardViewHolder;->getPubdateView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_19f
.end method

.method public appendData(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/tv/api/main/MainRecommendEx$Content;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 603
    const-string v0, "ugcList"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 605
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 606
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_e
    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;

    .line 607
    if-eqz v0, :cond_e

    .line 608
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 612
    :cond_20
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$VideoListAdapter;->this$0:Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;

    iget-object v0, v0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;->ugcList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 613
    iget-object v2, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$VideoListAdapter;->this$0:Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;

    iget-object v2, v2, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;->ugcList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 615
    invoke-virtual {p0, v0}, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$VideoListAdapter;->d(I)V

    .line 616
    return-void
.end method

.method public setData(Ljava/util/List;Ljava/util/List;)V
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
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 534
    const-string v0, "ogvList"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 535
    const-string v0, "ugcList"

    invoke-static {p2, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 538
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$VideoListAdapter;->this$0:Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;

    iget v1, v0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;->prefetchGeneration:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;->prefetchGeneration:I

    .line 539
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$VideoListAdapter;->this$0:Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;->prefetchedList:Ljava/util/List;

    .line 541
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 542
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_21
    :goto_21
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;

    .line 543
    if-eqz v0, :cond_21

    .line 544
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_21

    .line 547
    :cond_33
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_37
    :goto_37
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_49

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/main/MainRecommendEx$Content;

    .line 548
    if-eqz v0, :cond_37

    .line 549
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_37

    .line 553
    :cond_49
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$VideoListAdapter;->this$0:Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;

    iput-object v1, v0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;->ugcList:Ljava/util/List;

    .line 554
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$VideoListAdapter;->this$0:Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;

    iput-object p1, v0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;->ogvList:Ljava/util/List;

    .line 557
    invoke-direct {p0, v1}, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$VideoListAdapter;->prefetchCovers(Ljava/util/List;)V

    .line 559
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$VideoListAdapter;->fragmentRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;

    .line 560
    if-eqz v0, :cond_69

    .line 561
    iput v3, v0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;->currentPosition:I

    .line 562
    # invokes: Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;->d()Landroid/support/v7/widget/RecyclerView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;->access$000(Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    .line 563
    if-eqz v0, :cond_69

    .line 564
    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->a(I)V

    .line 568
    :cond_69
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$VideoListAdapter;->d()V

    .line 571
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$VideoListAdapter;->fragmentRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;

    .line 572
    if-eqz v0, :cond_79

    .line 573
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;->prefetchNextPage()V

    .line 575
    :cond_79
    return-void
.end method
