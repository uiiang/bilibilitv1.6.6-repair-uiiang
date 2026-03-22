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

.field private tabMapping:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 568
    new-instance v0, Lcom/bilibili/tv/ui/main/MainActivity$d$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bilibili/tv/ui/main/MainActivity$d$a;-><init>(Lbl/bbg;)V

    sput-object v0, Lcom/bilibili/tv/ui/main/MainActivity$d;->Companion:Lcom/bilibili/tv/ui/main/MainActivity$d$a;

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/view/ViewPager;Landroid/content/Context;)V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v5, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    .line 582
    invoke-direct {p0}, Lbl/adz;-><init>()V

    .line 572
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v7}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/bilibili/tv/ui/main/MainActivity$d;->b:Landroid/util/SparseArray;

    .line 583
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bilibili/tv/ui/main/MainActivity$d;->c:Ljava/lang/ref/WeakReference;

    .line 584
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/MainActivity$d;->b:Landroid/util/SparseArray;

    new-instance v3, Lcom/bilibili/tv/ui/main/MainActivity$MainTitle;

    const v4, 0x7f0700e3

    invoke-direct {v3, v1, v4}, Lcom/bilibili/tv/ui/main/MainActivity$MainTitle;-><init>(II)V

    invoke-virtual {v0, v5, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 586
    invoke-static {p2}, Lbl/abd;->get_top_tab_config(Landroid/content/Context;)I

    move-result v3

    .line 588
    const/16 v0, 0x8

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/bilibili/tv/ui/main/MainActivity$d;->tabMapping:[I

    .line 589
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/MainActivity$d;->tabMapping:[I

    const/4 v4, -0x1

    aput v4, v0, v5

    .line 591
    and-int/lit8 v0, v3, 0x1

    if-eqz v0, :cond_cc

    .line 592
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/MainActivity$d;->b:Landroid/util/SparseArray;

    new-instance v4, Lcom/bilibili/tv/ui/main/MainActivity$MainTitle;

    const v5, 0x7f0c0179

    invoke-direct {v4, v2, v5}, Lcom/bilibili/tv/ui/main/MainActivity$MainTitle;-><init>(II)V

    invoke-virtual {v0, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 593
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/MainActivity$d;->tabMapping:[I

    aput v2, v0, v2

    move v0, v1

    .line 596
    :goto_47
    and-int/lit8 v4, v3, 0x2

    if-eqz v4, :cond_5e

    .line 597
    iget-object v4, p0, Lcom/bilibili/tv/ui/main/MainActivity$d;->b:Landroid/util/SparseArray;

    new-instance v5, Lcom/bilibili/tv/ui/main/MainActivity$MainTitle;

    const v6, 0x7f0c009d

    invoke-direct {v5, v2, v6}, Lcom/bilibili/tv/ui/main/MainActivity$MainTitle;-><init>(II)V

    invoke-virtual {v4, v0, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 598
    iget-object v4, p0, Lcom/bilibili/tv/ui/main/MainActivity$d;->tabMapping:[I

    aput v1, v4, v0

    .line 599
    add-int/lit8 v0, v0, 0x1

    .line 601
    :cond_5e
    and-int/lit8 v4, v3, 0x4

    if-eqz v4, :cond_76

    .line 602
    iget-object v4, p0, Lcom/bilibili/tv/ui/main/MainActivity$d;->b:Landroid/util/SparseArray;

    new-instance v5, Lcom/bilibili/tv/ui/main/MainActivity$MainTitle;

    const v6, 0x7f0c0050

    invoke-direct {v5, v2, v6}, Lcom/bilibili/tv/ui/main/MainActivity$MainTitle;-><init>(II)V

    invoke-virtual {v4, v0, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 603
    iget-object v4, p0, Lcom/bilibili/tv/ui/main/MainActivity$d;->tabMapping:[I

    const/4 v5, 0x3

    aput v5, v4, v0

    .line 604
    add-int/lit8 v0, v0, 0x1

    .line 606
    :cond_76
    and-int/lit8 v4, v3, 0x8

    if-eqz v4, :cond_8d

    .line 607
    iget-object v4, p0, Lcom/bilibili/tv/ui/main/MainActivity$d;->b:Landroid/util/SparseArray;

    new-instance v5, Lcom/bilibili/tv/ui/main/MainActivity$MainTitle;

    const v6, 0x7f0c0052

    invoke-direct {v5, v2, v6}, Lcom/bilibili/tv/ui/main/MainActivity$MainTitle;-><init>(II)V

    invoke-virtual {v4, v0, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 608
    iget-object v4, p0, Lcom/bilibili/tv/ui/main/MainActivity$d;->tabMapping:[I

    aput v7, v4, v0

    .line 609
    add-int/lit8 v0, v0, 0x1

    .line 611
    :cond_8d
    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_a5

    .line 612
    iget-object v3, p0, Lcom/bilibili/tv/ui/main/MainActivity$d;->b:Landroid/util/SparseArray;

    new-instance v4, Lcom/bilibili/tv/ui/main/MainActivity$MainTitle;

    const v5, 0x7f0c017c

    invoke-direct {v4, v2, v5}, Lcom/bilibili/tv/ui/main/MainActivity$MainTitle;-><init>(II)V

    invoke-virtual {v3, v0, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 613
    iget-object v3, p0, Lcom/bilibili/tv/ui/main/MainActivity$d;->tabMapping:[I

    const/4 v4, 0x5

    aput v4, v3, v0

    .line 614
    add-int/lit8 v0, v0, 0x1

    .line 617
    :cond_a5
    iget-object v3, p0, Lcom/bilibili/tv/ui/main/MainActivity$d;->b:Landroid/util/SparseArray;

    new-instance v4, Lcom/bilibili/tv/ui/main/MainActivity$MainTitle;

    const v5, 0x7f0c00d0

    invoke-direct {v4, v2, v5}, Lcom/bilibili/tv/ui/main/MainActivity$MainTitle;-><init>(II)V

    invoke-virtual {v3, v0, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 618
    iget-object v2, p0, Lcom/bilibili/tv/ui/main/MainActivity$d;->tabMapping:[I

    const/4 v3, 0x6

    aput v3, v2, v0

    .line 619
    add-int/lit8 v0, v0, 0x1

    .line 620
    iget-object v2, p0, Lcom/bilibili/tv/ui/main/MainActivity$d;->b:Landroid/util/SparseArray;

    new-instance v3, Lcom/bilibili/tv/ui/main/MainActivity$MainTitle;

    const v4, 0x7f0700e4

    invoke-direct {v3, v1, v4}, Lcom/bilibili/tv/ui/main/MainActivity$MainTitle;-><init>(II)V

    invoke-virtual {v2, v0, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 621
    iget-object v1, p0, Lcom/bilibili/tv/ui/main/MainActivity$d;->tabMapping:[I

    const/4 v2, 0x7

    aput v2, v1, v0

    .line 622
    return-void

    :cond_cc
    move v0, v2

    goto/16 :goto_47
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 708
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/MainActivity$d;->b:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    return v0
.end method

.method public a(I)I
    .locals 1

    .prologue
    .line 713
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
    .line 567
    invoke-virtual {p0, p1, p2}, Lcom/bilibili/tv/ui/main/MainActivity$d;->a(Landroid/view/ViewGroup;I)Lbl/adv;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/view/ViewGroup;I)Lbl/adv;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 641
    const-string v1, "parent"

    invoke-static {p1, v1}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 642
    const/4 v1, 0x1

    if-ne p2, v1, :cond_12

    .line 643
    check-cast v0, Lcom/bilibili/tv/ui/main/MainActivity$e;

    sget-object v0, Lcom/bilibili/tv/ui/main/MainActivity$e;->Companion:Lcom/bilibili/tv/ui/main/MainActivity$e$a;

    invoke-virtual {v0, p1}, Lcom/bilibili/tv/ui/main/MainActivity$e$a;->a(Landroid/view/ViewGroup;)Lcom/bilibili/tv/ui/main/MainActivity$e;

    move-result-object v0

    .line 645
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
    .line 567
    check-cast p1, Lbl/adv;

    invoke-virtual {p0, p1, p2}, Lcom/bilibili/tv/ui/main/MainActivity$d;->a(Lbl/adv;I)V

    return-void
.end method

.method public a(Lbl/adv;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 652
    const-string v0, "viewHolder"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 653
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/MainActivity$d;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/main/MainActivity$MainTitle;

    .line 654
    instance-of v1, p1, Lcom/bilibili/tv/ui/main/MainActivity$e;

    if-nez v1, :cond_56

    move-object v1, v2

    :goto_13
    check-cast v1, Lcom/bilibili/tv/ui/main/MainActivity$e;

    check-cast v1, Lcom/bilibili/tv/ui/main/MainActivity$e;

    .line 655
    if-eqz v1, :cond_1f

    invoke-virtual {v1}, Lcom/bilibili/tv/ui/main/MainActivity$e;->z()Landroid/widget/TextView;

    move-result-object v1

    if-nez v1, :cond_5a

    .line 656
    :cond_1f
    instance-of v1, p1, Lcom/bilibili/tv/ui/main/MainActivity$c;

    if-eqz v1, :cond_58

    move-object v1, p1

    check-cast v1, Lcom/bilibili/tv/ui/main/MainActivity$c;

    .line 657
    :goto_26
    if-eqz v1, :cond_35

    invoke-virtual {v1}, Lcom/bilibili/tv/ui/main/MainActivity$c;->z()Landroid/widget/ImageView;

    move-result-object v1

    if-eqz v1, :cond_35

    .line 658
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/main/MainActivity$MainTitle;->getResId()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 663
    :cond_35
    :goto_35
    iget-object v0, p1, Lbl/adv;->a:Landroid/view/View;

    const v1, 0x7f0800bd

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 664
    iget-object v0, p1, Lbl/adv;->a:Landroid/view/View;

    .line 665
    const-string v1, "viewHolder.itemView"

    invoke-static {v0, v1}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 666
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 667
    iget-object v0, p1, Lbl/adv;->a:Landroid/view/View;

    new-instance v1, Lcom/bilibili/tv/ui/main/MainActivity$d$b;

    invoke-direct {v1, p0, p2}, Lcom/bilibili/tv/ui/main/MainActivity$d$b;-><init>(Lcom/bilibili/tv/ui/main/MainActivity$d;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 668
    return-void

    :cond_56
    move-object v1, p1

    .line 654
    goto :goto_13

    :cond_58
    move-object v1, v2

    .line 656
    goto :goto_26

    .line 661
    :cond_5a
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/main/MainActivity$MainTitle;->getResId()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_35
.end method

.method public final b(Z)V
    .locals 0

    .prologue
    .line 717
    iput-boolean p1, p0, Lcom/bilibili/tv/ui/main/MainActivity$d;->d:Z

    .line 718
    return-void
.end method

.method public e()I
    .locals 1

    .prologue
    .line 579
    const/4 v0, 0x1

    return v0
.end method

.method public final getFragmentPosition(I)I
    .locals 1

    .prologue
    .line 632
    if-lez p1, :cond_a

    invoke-virtual {p0}, Lcom/bilibili/tv/ui/main/MainActivity$d;->a()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-lt p1, v0, :cond_c

    .line 633
    :cond_a
    const/4 v0, -0x1

    .line 635
    :goto_b
    return v0

    :cond_c
    add-int/lit8 v0, p1, -0x1

    goto :goto_b
.end method

.method public final getTabType(I)I
    .locals 1

    .prologue
    .line 625
    if-ltz p1, :cond_c

    iget-object v0, p0, Lcom/bilibili/tv/ui/main/MainActivity$d;->tabMapping:[I

    array-length v0, v0

    if-ge p1, v0, :cond_c

    .line 626
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/MainActivity$d;->tabMapping:[I

    aget v0, v0, p1

    .line 628
    :goto_b
    return v0

    :cond_c
    const/4 v0, -0x1

    goto :goto_b
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 722
    const-string v0, "v"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 723
    const v0, 0x7f0800bd

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 724
    if-eqz v0, :cond_38

    .line 725
    if-nez v0, :cond_19

    .line 726
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type kotlin.Int"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 728
    :cond_19
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 729
    if-eqz p2, :cond_39

    .line 730
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/MainActivity$d;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    .line 731
    if-eqz v0, :cond_38

    .line 732
    invoke-virtual {p0, v1}, Lcom/bilibili/tv/ui/main/MainActivity$d;->getFragmentPosition(I)I

    move-result v1

    .line 733
    if-ltz v1, :cond_34

    .line 734
    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 736
    :cond_34
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 751
    :cond_38
    :goto_38
    return-void

    .line 738
    :cond_39
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/main/MainActivity$d;->d:Z

    if-eqz v0, :cond_4c

    .line 739
    iput-boolean v2, p0, Lcom/bilibili/tv/ui/main/MainActivity$d;->d:Z

    .line 740
    instance-of v0, p1, Lcom/bilibili/tv/widget/MainTitleLayout;

    if-nez v0, :cond_50

    .line 741
    const/4 v0, 0x0

    .line 743
    :goto_44
    check-cast v0, Lcom/bilibili/tv/widget/MainTitleLayout;

    .line 744
    if-eqz v0, :cond_38

    .line 745
    invoke-virtual {v0}, Lcom/bilibili/tv/widget/MainTitleLayout;->d()V

    goto :goto_38

    .line 748
    :cond_4c
    invoke-virtual {p1, v2}, Landroid/view/View;->setSelected(Z)V

    goto :goto_38

    :cond_50
    move-object v0, p1

    goto :goto_44
.end method
