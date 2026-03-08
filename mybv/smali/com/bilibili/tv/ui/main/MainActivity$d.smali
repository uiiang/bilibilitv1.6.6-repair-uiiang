.class public final Lcom/bilibili/tv/ui/main/MainActivity$d;
.super Lbl/adz;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/ui/main/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bilibili/tv/ui/main/MainActivity$d$a;,
        Lcom/bilibili/tv/ui/main/MainActivity$d$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbl/adz",
        "<",
        "Lbl/adv;",
        ">;",
        "Landroid/view/View$OnFocusChangeListener;"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/bilibili/tv/ui/main/MainActivity$d$a;

.field private static final e:I = 0x1

.field private static final f:I = 0x2


# instance fields
.field private a:I

.field private final b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/bilibili/tv/ui/main/MainActivity$MainTitle;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/support/v4/view/ViewPager;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z

.field private isPersonalRecommend:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 579
    new-instance v0, Lcom/bilibili/tv/ui/main/MainActivity$d$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bilibili/tv/ui/main/MainActivity$d$a;-><init>(Lbl/bbg;)V

    sput-object v0, Lcom/bilibili/tv/ui/main/MainActivity$d;->Companion:Lcom/bilibili/tv/ui/main/MainActivity$d$a;

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/view/ViewPager;Landroid/content/Context;)V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v2, 0x0

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v1, 0x1

    .line 593
    invoke-direct {p0}, Lbl/adz;-><init>()V

    .line 583
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v6}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/bilibili/tv/ui/main/MainActivity$d;->b:Landroid/util/SparseArray;

    .line 594
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bilibili/tv/ui/main/MainActivity$d;->c:Ljava/lang/ref/WeakReference;

    .line 595
    invoke-static {p2}, Lbl/abd;->get_home_default(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v1, :cond_8b

    move v0, v1

    :goto_1d
    iput-boolean v0, p0, Lcom/bilibili/tv/ui/main/MainActivity$d;->isPersonalRecommend:Z

    .line 596
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/main/MainActivity$d;->isPersonalRecommend:Z

    sput-boolean v0, Lcom/bilibili/tv/ui/main/content/MainRecommendFragment;->isPersonalRecommend:Z

    .line 597
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/MainActivity$d;->b:Landroid/util/SparseArray;

    new-instance v3, Lcom/bilibili/tv/ui/main/MainActivity$MainTitle;

    const v4, 0x7f0700e3

    invoke-direct {v3, v5, v4}, Lcom/bilibili/tv/ui/main/MainActivity$MainTitle;-><init>(II)V

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 598
    invoke-static {}, Lbl/acc;->d()Z

    move-result v0

    if-eqz v0, :cond_91

    .line 599
    iget-object v2, p0, Lcom/bilibili/tv/ui/main/MainActivity$d;->b:Landroid/util/SparseArray;

    new-instance v3, Lcom/bilibili/tv/ui/main/MainActivity$MainTitle;

    iget-boolean v0, p0, Lcom/bilibili/tv/ui/main/MainActivity$d;->isPersonalRecommend:Z

    if-eqz v0, :cond_8d

    const v0, 0x7f0c0179

    :goto_41
    invoke-direct {v3, v1, v0}, Lcom/bilibili/tv/ui/main/MainActivity$MainTitle;-><init>(II)V

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 600
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/MainActivity$d;->b:Landroid/util/SparseArray;

    new-instance v2, Lcom/bilibili/tv/ui/main/MainActivity$MainTitle;

    const v3, 0x7f0c0050

    invoke-direct {v2, v1, v3}, Lcom/bilibili/tv/ui/main/MainActivity$MainTitle;-><init>(II)V

    invoke-virtual {v0, v5, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 601
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/MainActivity$d;->b:Landroid/util/SparseArray;

    new-instance v2, Lcom/bilibili/tv/ui/main/MainActivity$MainTitle;

    const v3, 0x7f0c0052

    invoke-direct {v2, v1, v3}, Lcom/bilibili/tv/ui/main/MainActivity$MainTitle;-><init>(II)V

    invoke-virtual {v0, v7, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 602
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/MainActivity$d;->b:Landroid/util/SparseArray;

    new-instance v2, Lcom/bilibili/tv/ui/main/MainActivity$MainTitle;

    const v3, 0x7f0c017c

    invoke-direct {v2, v1, v3}, Lcom/bilibili/tv/ui/main/MainActivity$MainTitle;-><init>(II)V

    invoke-virtual {v0, v6, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 603
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/MainActivity$d;->b:Landroid/util/SparseArray;

    const/4 v2, 0x5

    new-instance v3, Lcom/bilibili/tv/ui/main/MainActivity$MainTitle;

    const v4, 0x7f0c00d0

    invoke-direct {v3, v1, v4}, Lcom/bilibili/tv/ui/main/MainActivity$MainTitle;-><init>(II)V

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 604
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/MainActivity$d;->b:Landroid/util/SparseArray;

    const/4 v1, 0x6

    new-instance v2, Lcom/bilibili/tv/ui/main/MainActivity$MainTitle;

    const v3, 0x7f0700e4

    invoke-direct {v2, v5, v3}, Lcom/bilibili/tv/ui/main/MainActivity$MainTitle;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 611
    :goto_8a
    return-void

    :cond_8b
    move v0, v2

    .line 595
    goto :goto_1d

    .line 599
    :cond_8d
    const v0, 0x7f0c009d

    goto :goto_41

    .line 607
    :cond_91
    iget-object v2, p0, Lcom/bilibili/tv/ui/main/MainActivity$d;->b:Landroid/util/SparseArray;

    new-instance v3, Lcom/bilibili/tv/ui/main/MainActivity$MainTitle;

    iget-boolean v0, p0, Lcom/bilibili/tv/ui/main/MainActivity$d;->isPersonalRecommend:Z

    if-eqz v0, :cond_ca

    const v0, 0x7f0c0179

    :goto_9c
    invoke-direct {v3, v1, v0}, Lcom/bilibili/tv/ui/main/MainActivity$MainTitle;-><init>(II)V

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 608
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/MainActivity$d;->b:Landroid/util/SparseArray;

    new-instance v2, Lcom/bilibili/tv/ui/main/MainActivity$MainTitle;

    const v3, 0x7f0c0050

    invoke-direct {v2, v1, v3}, Lcom/bilibili/tv/ui/main/MainActivity$MainTitle;-><init>(II)V

    invoke-virtual {v0, v5, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 609
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/MainActivity$d;->b:Landroid/util/SparseArray;

    new-instance v2, Lcom/bilibili/tv/ui/main/MainActivity$MainTitle;

    const v3, 0x7f0c00d0

    invoke-direct {v2, v1, v3}, Lcom/bilibili/tv/ui/main/MainActivity$MainTitle;-><init>(II)V

    invoke-virtual {v0, v7, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 610
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/MainActivity$d;->b:Landroid/util/SparseArray;

    new-instance v1, Lcom/bilibili/tv/ui/main/MainActivity$MainTitle;

    const v2, 0x7f0700e4

    invoke-direct {v1, v5, v2}, Lcom/bilibili/tv/ui/main/MainActivity$MainTitle;-><init>(II)V

    invoke-virtual {v0, v6, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_8a

    .line 607
    :cond_ca
    const v0, 0x7f0c009d

    goto :goto_9c
.end method

.method static synthetic access$200(Lcom/bilibili/tv/ui/main/MainActivity$d;)Z
    .locals 1

    .prologue
    .line 578
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/main/MainActivity$d;->isPersonalRecommend:Z

    return v0
.end method

.method static synthetic access$202(Lcom/bilibili/tv/ui/main/MainActivity$d;Z)Z
    .locals 0

    .prologue
    .line 578
    iput-boolean p1, p0, Lcom/bilibili/tv/ui/main/MainActivity$d;->isPersonalRecommend:Z

    return p1
.end method

.method static synthetic access$300(Lcom/bilibili/tv/ui/main/MainActivity$d;)Landroid/util/SparseArray;
    .locals 1

    .prologue
    .line 578
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/MainActivity$d;->b:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$400(Lcom/bilibili/tv/ui/main/MainActivity$d;)I
    .locals 1

    .prologue
    .line 578
    iget v0, p0, Lcom/bilibili/tv/ui/main/MainActivity$d;->a:I

    return v0
.end method

.method static synthetic access$408(Lcom/bilibili/tv/ui/main/MainActivity$d;)I
    .locals 2

    .prologue
    .line 578
    iget v0, p0, Lcom/bilibili/tv/ui/main/MainActivity$d;->a:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/bilibili/tv/ui/main/MainActivity$d;->a:I

    return v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 692
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/MainActivity$d;->b:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    return v0
.end method

.method public a(I)I
    .locals 1

    .prologue
    .line 697
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/MainActivity$d;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/main/MainActivity$MainTitle;

    invoke-virtual {v0}, Lcom/bilibili/tv/ui/main/MainActivity$MainTitle;->getType()I

    move-result v0

    return v0
.end method

.method public bridge synthetic a(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$v;
    .locals 1

    .prologue
    .line 578
    invoke-virtual {p0, p1, p2}, Lcom/bilibili/tv/ui/main/MainActivity$d;->a(Landroid/view/ViewGroup;I)Lbl/adv;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/view/ViewGroup;I)Lbl/adv;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 616
    const-string v1, "parent"

    invoke-static {p1, v1}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 617
    const/4 v1, 0x1

    if-ne p2, v1, :cond_12

    .line 618
    check-cast v0, Lcom/bilibili/tv/ui/main/MainActivity$e;

    sget-object v0, Lcom/bilibili/tv/ui/main/MainActivity$e;->Companion:Lcom/bilibili/tv/ui/main/MainActivity$e$a;

    invoke-virtual {v0, p1}, Lcom/bilibili/tv/ui/main/MainActivity$e$a;->a(Landroid/view/ViewGroup;)Lcom/bilibili/tv/ui/main/MainActivity$e;

    move-result-object v0

    .line 620
    :goto_11
    return-object v0

    :cond_12
    check-cast v0, Lcom/bilibili/tv/ui/main/MainActivity$c;

    sget-object v0, Lcom/bilibili/tv/ui/main/MainActivity$c;->Companion:Lcom/bilibili/tv/ui/main/MainActivity$c$a;

    invoke-virtual {v0, p1}, Lcom/bilibili/tv/ui/main/MainActivity$c$a;->a(Landroid/view/ViewGroup;)Lcom/bilibili/tv/ui/main/MainActivity$c;

    move-result-object v0

    goto :goto_11
.end method

.method public bridge synthetic a(Landroid/support/v7/widget/RecyclerView$v;I)V
    .locals 0

    .prologue
    .line 578
    check-cast p1, Lbl/adv;

    invoke-virtual {p0, p1, p2}, Lcom/bilibili/tv/ui/main/MainActivity$d;->a(Lbl/adv;I)V

    return-void
.end method

.method public a(Lbl/adv;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 627
    const-string v0, "viewHolder"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 628
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/MainActivity$d;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/main/MainActivity$MainTitle;

    .line 629
    instance-of v1, p1, Lcom/bilibili/tv/ui/main/MainActivity$e;

    if-nez v1, :cond_56

    move-object v1, v2

    :goto_13
    check-cast v1, Lcom/bilibili/tv/ui/main/MainActivity$e;

    check-cast v1, Lcom/bilibili/tv/ui/main/MainActivity$e;

    .line 630
    if-eqz v1, :cond_1f

    invoke-virtual {v1}, Lcom/bilibili/tv/ui/main/MainActivity$e;->z()Landroid/widget/TextView;

    move-result-object v1

    if-nez v1, :cond_5a

    .line 631
    :cond_1f
    instance-of v1, p1, Lcom/bilibili/tv/ui/main/MainActivity$c;

    if-eqz v1, :cond_58

    move-object v1, p1

    check-cast v1, Lcom/bilibili/tv/ui/main/MainActivity$c;

    .line 632
    :goto_26
    if-eqz v1, :cond_35

    invoke-virtual {v1}, Lcom/bilibili/tv/ui/main/MainActivity$c;->z()Landroid/widget/ImageView;

    move-result-object v1

    if-eqz v1, :cond_35

    .line 633
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/main/MainActivity$MainTitle;->getResId()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 638
    :cond_35
    :goto_35
    iget-object v0, p1, Lbl/adv;->a:Landroid/view/View;

    const v1, 0x7f0800bd

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 639
    iget-object v0, p1, Lbl/adv;->a:Landroid/view/View;

    .line 640
    const-string v1, "viewHolder.itemView"

    invoke-static {v0, v1}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 641
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 642
    iget-object v0, p1, Lbl/adv;->a:Landroid/view/View;

    new-instance v1, Lcom/bilibili/tv/ui/main/MainActivity$d$b;

    invoke-direct {v1, p0, p2}, Lcom/bilibili/tv/ui/main/MainActivity$d$b;-><init>(Lcom/bilibili/tv/ui/main/MainActivity$d;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 643
    return-void

    :cond_56
    move-object v1, p1

    .line 629
    goto :goto_13

    :cond_58
    move-object v1, v2

    .line 631
    goto :goto_26

    .line 636
    :cond_5a
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/main/MainActivity$MainTitle;->getResId()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_35
.end method

.method public final b(Z)V
    .locals 0

    .prologue
    .line 701
    iput-boolean p1, p0, Lcom/bilibili/tv/ui/main/MainActivity$d;->d:Z

    .line 702
    return-void
.end method

.method public e()I
    .locals 1

    .prologue
    .line 590
    const/4 v0, 0x1

    return v0
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 706
    const-string v0, "v"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 707
    const v0, 0x7f0800bd

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 708
    if-eqz v0, :cond_3e

    .line 709
    if-nez v0, :cond_19

    .line 710
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type kotlin.Int"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 712
    :cond_19
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 713
    if-eqz p2, :cond_3f

    .line 714
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/MainActivity$d;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    .line 715
    if-eqz v0, :cond_3e

    .line 716
    if-eqz v1, :cond_3a

    invoke-virtual {p0}, Lcom/bilibili/tv/ui/main/MainActivity$d;->a()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_3a

    .line 717
    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 719
    :cond_3a
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 734
    :cond_3e
    :goto_3e
    return-void

    .line 721
    :cond_3f
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/main/MainActivity$d;->d:Z

    if-eqz v0, :cond_52

    .line 722
    iput-boolean v2, p0, Lcom/bilibili/tv/ui/main/MainActivity$d;->d:Z

    .line 723
    instance-of v0, p1, Lcom/bilibili/tv/widget/MainTitleLayout;

    if-nez v0, :cond_56

    .line 724
    const/4 v0, 0x0

    .line 726
    :goto_4a
    check-cast v0, Lcom/bilibili/tv/widget/MainTitleLayout;

    .line 727
    if-eqz v0, :cond_3e

    .line 728
    invoke-virtual {v0}, Lcom/bilibili/tv/widget/MainTitleLayout;->d()V

    goto :goto_3e

    .line 731
    :cond_52
    invoke-virtual {p1, v2}, Landroid/view/View;->setSelected(Z)V

    goto :goto_3e

    :cond_56
    move-object v0, p1

    goto :goto_4a
.end method
