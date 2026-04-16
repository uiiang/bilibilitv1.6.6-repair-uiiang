.class public Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$a;
.super Lbl/adz;
.source "AttentionDynamicSideActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbl/adz",
        "<",
        "Landroid/support/v7/widget/RecyclerView$v;",
        ">;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;",
            ">;"
        }
    .end annotation
.end field

.field private c:I

.field private d:J

.field private e:Z

.field private uperItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$UperItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;",
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$UperItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 566
    invoke-direct {p0}, Lbl/adz;-><init>()V

    .line 567
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$a;->a:Ljava/lang/ref/WeakReference;

    .line 568
    iput-object p2, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$a;->uperItems:Ljava/util/List;

    .line 569
    return-void
.end method

.method static synthetic access$1400(Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$a;)Ljava/lang/ref/WeakReference;
    .locals 1

    .prologue
    .line 554
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$a;->a:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$a;)Z
    .locals 1

    .prologue
    .line 554
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$a;->e:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$a;I)I
    .locals 0

    .prologue
    .line 554
    iput p1, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$a;->c:I

    return p1
.end method

.method static synthetic access$1702(Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$a;J)J
    .locals 1

    .prologue
    .line 554
    iput-wide p1, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$a;->d:J

    return-wide p1
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 662
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$a;->uperItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public a(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$v;
    .locals 1

    .prologue
    .line 573
    invoke-static {p1}, Lbl/agf;->a(Landroid/view/ViewGroup;)Lbl/agf;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$v;I)V
    .locals 7

    .prologue
    const v6, 0x7f0600b1

    const/4 v5, 0x0

    .line 578
    instance-of v0, p1, Lbl/agf;

    if-eqz v0, :cond_8a

    .line 579
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$a;->uperItems:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$UperItem;

    move-object v1, p1

    .line 581
    check-cast v1, Lbl/agf;

    .line 582
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$UperItem;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_22

    .line 583
    iget-object v2, v1, Lbl/agf;->n:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$UperItem;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 586
    :cond_22
    iget-object v2, v1, Lbl/agf;->n:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 589
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$UperItem;->getFace()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8b

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$UperItem;->isAllDynamic()Z

    move-result v2

    if-nez v2, :cond_8b

    .line 591
    invoke-static {}, Lbl/nv;->a()Lbl/nv;

    move-result-object v2

    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v3

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$UperItem;->getFace()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lbl/abd;->get_thumb_url_c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lbl/agf;->A()Lcom/bilibili/tv/widget/CircleImageView;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lbl/nv;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 592
    invoke-virtual {v1}, Lbl/agf;->A()Lcom/bilibili/tv/widget/CircleImageView;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/bilibili/tv/widget/CircleImageView;->setVisibility(I)V

    .line 594
    iget-object v2, v1, Lbl/agf;->n:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 595
    iget-object v3, v1, Lbl/agf;->n:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 596
    iget-object v3, v1, Lbl/agf;->n:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 608
    :cond_6f
    :goto_6f
    iget-object v2, p1, Landroid/support/v7/widget/RecyclerView$v;->a:Landroid/view/View;

    const v3, 0x7f0800d8

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 609
    iget-object v2, p1, Landroid/support/v7/widget/RecyclerView$v;->a:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 611
    iget-object v2, p1, Landroid/support/v7/widget/RecyclerView$v;->a:Landroid/view/View;

    new-instance v3, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$a$1;

    invoke-direct {v3, p0, p1, v1, v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$a$1;-><init>(Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$a;Landroid/support/v7/widget/RecyclerView$v;Lbl/agf;Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$UperItem;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 658
    :cond_8a
    return-void

    .line 597
    :cond_8b
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$UperItem;->isAllDynamic()Z

    move-result v2

    if-eqz v2, :cond_6f

    .line 599
    invoke-virtual {v1}, Lbl/agf;->A()Lcom/bilibili/tv/widget/CircleImageView;

    move-result-object v2

    const/high16 v3, 0x7f0b0000

    invoke-virtual {v2, v3}, Lcom/bilibili/tv/widget/CircleImageView;->setImageResource(I)V

    .line 600
    invoke-virtual {v1}, Lbl/agf;->A()Lcom/bilibili/tv/widget/CircleImageView;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/bilibili/tv/widget/CircleImageView;->setVisibility(I)V

    .line 602
    iget-object v2, v1, Lbl/agf;->n:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 603
    iget-object v3, v1, Lbl/agf;->n:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 604
    iget-object v3, v1, Lbl/agf;->n:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_6f
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 666
    iput-boolean p1, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$a;->e:Z

    .line 667
    return-void
.end method

.method public e()I
    .locals 1

    .prologue
    .line 563
    const/4 v0, 0x0

    return v0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 670
    iget v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$a;->c:I

    return v0
.end method

.method public run()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 675
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;

    .line 676
    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 717
    :cond_11
    :goto_11
    return-void

    .line 677
    :cond_12
    iget-object v2, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$a;->uperItems:Ljava/util/List;

    if-eqz v2, :cond_11

    iget v2, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$a;->c:I

    iget-object v3, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$a;->uperItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_11

    .line 680
    :try_start_20
    iget-boolean v2, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$a;->e:Z

    if-nez v2, :cond_11

    .line 683
    # invokes: Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->j()Landroid/support/v7/widget/RecyclerView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->access$1900(Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v5

    .line 684
    const/4 v3, 0x0

    .line 685
    if-eqz v5, :cond_80

    move v4, v1

    .line 686
    :goto_2c
    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v2

    if-ge v4, v2, :cond_80

    .line 687
    invoke-virtual {v5, v4}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 688
    invoke-virtual {v5, v2}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/view/View;)I

    move-result v6

    iget v7, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$a;->c:I

    if-ne v6, v7, :cond_74

    .line 697
    :goto_3e
    if-eqz v2, :cond_4a

    .line 698
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_78

    .line 699
    invoke-virtual {v2}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v1

    .line 704
    :cond_4a
    :goto_4a
    if-eqz v2, :cond_11

    if-eqz v1, :cond_11

    invoke-virtual {v2}, Landroid/view/View;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 707
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->h()Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 708
    instance-of v2, v1, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    if-eqz v2, :cond_64

    .line 709
    check-cast v1, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;

    .line 710
    invoke-virtual {v1}, Lcom/bilibili/tv/ui/attention/AttentionDynamicFragment;->isLoading()Z

    move-result v1

    if-nez v1, :cond_11

    .line 714
    :cond_64
    iget-object v1, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$a;->uperItems:Ljava/util/List;

    iget v2, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$a;->c:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$UperItem;

    # invokes: Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->showVideoList(Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$UperItem;)V
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;->access$1800(Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity;Lcom/bilibili/tv/ui/attention/AttentionDynamicSideActivity$UperItem;)V

    goto :goto_11

    .line 715
    :catch_72
    move-exception v0

    goto :goto_11

    .line 686
    :cond_74
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_2c

    .line 701
    :cond_78
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_7b} :catch_72

    move-result-object v3

    if-eqz v3, :cond_4a

    const/4 v1, 0x1

    goto :goto_4a

    :cond_80
    move-object v2, v3

    goto :goto_3e
.end method
