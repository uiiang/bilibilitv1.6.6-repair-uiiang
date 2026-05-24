.class public Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$SmallCardViewHolder;
.super Lbl/adv;
.source "BaseVideoListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "SmallCardViewHolder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$SmallCardViewHolder$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$SmallCardViewHolder$Companion;


# instance fields
.field private final badgeView:Landroid/widget/TextView;

.field private final bottomInfoLayout:Landroid/view/View;

.field private final coverView:Lcom/bilibili/tv/widget/ScalableImageView;

.field private final danmakuView:Landroid/widget/TextView;

.field private final durationView:Landroid/widget/TextView;

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

.field private final itemView:Landroid/view/View;

.field private final playView:Landroid/widget/TextView;

.field private final pubdateView:Landroid/widget/TextView;

.field private final titleView:Landroid/widget/TextView;

.field private final upView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 462
    new-instance v0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$SmallCardViewHolder$Companion;

    invoke-direct {v0}, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$SmallCardViewHolder$Companion;-><init>()V

    sput-object v0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$SmallCardViewHolder;->Companion:Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$SmallCardViewHolder$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Ljava/lang/ref/WeakReference;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;",
            ">;)V"
        }
    .end annotation

    .prologue
    const v1, 0x7f0700e8

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 476
    invoke-direct {p0, p1}, Lbl/adv;-><init>(Landroid/view/View;)V

    .line 477
    iput-object p2, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$SmallCardViewHolder;->fragmentRef:Ljava/lang/ref/WeakReference;

    .line 478
    iput-object p1, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$SmallCardViewHolder;->itemView:Landroid/view/View;

    .line 479
    const v0, 0x7f080132

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$SmallCardViewHolder;->titleView:Landroid/widget/TextView;

    .line 480
    const v0, 0x7f0800a1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/widget/ScalableImageView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$SmallCardViewHolder;->coverView:Lcom/bilibili/tv/widget/ScalableImageView;

    .line 481
    const v0, 0x7f08013f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$SmallCardViewHolder;->upView:Landroid/widget/TextView;

    .line 482
    const v0, 0x7f0800d4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$SmallCardViewHolder;->playView:Landroid/widget/TextView;

    .line 483
    const v0, 0x7f08006c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$SmallCardViewHolder;->danmakuView:Landroid/widget/TextView;

    .line 484
    const v0, 0x7f0801a6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$SmallCardViewHolder;->durationView:Landroid/widget/TextView;

    .line 485
    const v0, 0x7f0801af

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$SmallCardViewHolder;->pubdateView:Landroid/widget/TextView;

    .line 486
    const v0, 0x7f080124

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$SmallCardViewHolder;->badgeView:Landroid/widget/TextView;

    .line 487
    const v0, 0x7f08021d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$SmallCardViewHolder;->bottomInfoLayout:Landroid/view/View;

    .line 489
    instance-of v0, p1, Lcom/bilibili/tv/widget/DrawRelativeLayout;

    if-eqz v0, :cond_e0

    move-object v0, p1

    .line 490
    check-cast v0, Lcom/bilibili/tv/widget/DrawRelativeLayout;

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawRelativeLayout;->setUpDrawable(I)V

    .line 495
    :cond_77
    :goto_77
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 496
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700b2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 497
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0700b1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 498
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0700b0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 499
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060120

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 500
    invoke-virtual {v1, v7, v7, v4, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 501
    invoke-virtual {v2, v7, v7, v4, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 502
    invoke-virtual {v3, v7, v7, v4, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 503
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0500a1

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 504
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v0, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 505
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v0, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 506
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v0, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 507
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$SmallCardViewHolder;->upView:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v6, v6, v6}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 508
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$SmallCardViewHolder;->playView:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v6, v6, v6}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 509
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$SmallCardViewHolder;->danmakuView:Landroid/widget/TextView;

    invoke-virtual {v0, v3, v6, v6, v6}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 511
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 512
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 513
    return-void

    .line 491
    :cond_e0
    instance-of v0, p1, Lcom/bilibili/tv/widget/DrawLinearLayout;

    if-eqz v0, :cond_77

    move-object v0, p1

    .line 492
    check-cast v0, Lcom/bilibili/tv/widget/DrawLinearLayout;

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setUpDrawable(I)V

    goto :goto_77
.end method


# virtual methods
.method public final getBadgeView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 523
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$SmallCardViewHolder;->badgeView:Landroid/widget/TextView;

    return-object v0
.end method

.method public final getBottomInfoLayout()Landroid/view/View;
    .locals 1

    .prologue
    .line 525
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$SmallCardViewHolder;->bottomInfoLayout:Landroid/view/View;

    return-object v0
.end method

.method public final getCoverView()Lcom/bilibili/tv/widget/ScalableImageView;
    .locals 1

    .prologue
    .line 516
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$SmallCardViewHolder;->coverView:Lcom/bilibili/tv/widget/ScalableImageView;

    return-object v0
.end method

.method public final getDanmakuView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 519
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$SmallCardViewHolder;->danmakuView:Landroid/widget/TextView;

    return-object v0
.end method

.method public final getDurationView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 520
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$SmallCardViewHolder;->durationView:Landroid/widget/TextView;

    return-object v0
.end method

.method public final getPlayView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 518
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$SmallCardViewHolder;->playView:Landroid/widget/TextView;

    return-object v0
.end method

.method public final getPubdateView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 521
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$SmallCardViewHolder;->pubdateView:Landroid/widget/TextView;

    return-object v0
.end method

.method public final getTitleView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 515
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$SmallCardViewHolder;->titleView:Landroid/widget/TextView;

    return-object v0
.end method

.method public final getUpView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 517
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$SmallCardViewHolder;->upView:Landroid/widget/TextView;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 539
    const-string v0, "v"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 540
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$SmallCardViewHolder;->fragmentRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;

    .line 541
    if-eqz v0, :cond_18

    .line 542
    sget-object v1, Lbl/abl;->a:Lbl/abl;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;->getClickEventName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lbl/abl;->a(Ljava/lang/String;)V

    .line 545
    :cond_18
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    .line 546
    instance-of v1, v2, Ljava/lang/String;

    if-eqz v1, :cond_3a

    .line 547
    const v1, 0x7f0800d8

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    .line 548
    instance-of v3, v1, Ljava/lang/Integer;

    if-eqz v3, :cond_70

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move v3, v1

    .line 549
    :goto_32
    if-eqz v0, :cond_3a

    move-object v1, v2

    .line 550
    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v3}, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;->onSmallCardClick(Landroid/view/View;Ljava/lang/String;I)V

    .line 554
    :cond_3a
    const v1, 0x7f0800ec

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    .line 555
    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_6f

    if-eqz v0, :cond_6f

    .line 556
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;->getPageViewEvent()Ljava/lang/String;

    move-result-object v0

    const-string v2, "pageview"

    const-string v3, "click"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "type"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "video"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "position"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v3

    invoke-static {v0, v2}, Lbl/ok;->a(Ljava/lang/String;[Ljava/lang/String;)V

    .line 558
    :cond_6f
    return-void

    .line 548
    :cond_70
    const/4 v1, -0x1

    move v3, v1

    goto :goto_32
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3

    .prologue
    .line 562
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$SmallCardViewHolder;->fragmentRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;

    .line 563
    if-nez v0, :cond_b

    .line 577
    :goto_a
    return-void

    .line 566
    :cond_b
    const v1, 0x7f0800d8

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    .line 567
    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_1e

    .line 568
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment;->currentPosition:I

    .line 570
    :cond_1e
    invoke-static {p1, p2}, Lbl/adj;->a(Landroid/view/View;Z)V

    .line 571
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$SmallCardViewHolder;->itemView:Landroid/view/View;

    instance-of v0, v0, Lcom/bilibili/tv/widget/DrawRelativeLayout;

    if-eqz v0, :cond_34

    .line 572
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$SmallCardViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lcom/bilibili/tv/widget/DrawRelativeLayout;

    invoke-virtual {v0, p2}, Lcom/bilibili/tv/widget/DrawRelativeLayout;->setUpEnabled(Z)V

    .line 576
    :cond_2e
    :goto_2e
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$SmallCardViewHolder;->titleView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_a

    .line 573
    :cond_34
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$SmallCardViewHolder;->itemView:Landroid/view/View;

    instance-of v0, v0, Lcom/bilibili/tv/widget/DrawLinearLayout;

    if-eqz v0, :cond_2e

    .line 574
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/content/BaseVideoListFragment$SmallCardViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lcom/bilibili/tv/widget/DrawLinearLayout;

    invoke-virtual {v0, p2}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setUpEnabled(Z)V

    goto :goto_2e
.end method
