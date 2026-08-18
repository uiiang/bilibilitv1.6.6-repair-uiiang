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
        Lcom/bilibili/tv/ui/main/MainActivity$d$b;,
        Lcom/bilibili/tv/ui/main/MainActivity$d$a;
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
    .line 592
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

    .line 606
    invoke-direct {p0}, Lbl/adz;-><init>()V

    .line 596
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v7}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/bilibili/tv/ui/main/MainActivity$d;->b:Landroid/util/SparseArray;

    .line 607
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bilibili/tv/ui/main/MainActivity$d;->c:Ljava/lang/ref/WeakReference;

    .line 608
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/MainActivity$d;->b:Landroid/util/SparseArray;

    new-instance v3, Lcom/bilibili/tv/ui/main/MainActivity$MainTitle;

    const v4, 0x7f0700e3

    invoke-direct {v3, v1, v4}, Lcom/bilibili/tv/ui/main/MainActivity$MainTitle;-><init>(II)V

    invoke-virtual {v0, v5, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 610
    invoke-static {p2}, Lbl/abd;->get_top_tab_config(Landroid/content/Context;)I

    move-result v3

    .line 613
    const/16 v0, 0x9

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/bilibili/tv/ui/main/MainActivity$d;->tabMapping:[I

    .line 614
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/MainActivity$d;->tabMapping:[I

    const/4 v4, -0x1

    aput v4, v0, v5

    .line 616
    and-int/lit8 v0, v3, 0x1

    if-eqz v0, :cond_e5

    .line 617
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/MainActivity$d;->b:Landroid/util/SparseArray;

    new-instance v4, Lcom/bilibili/tv/ui/main/MainActivity$MainTitle;

    const v5, 0x7f0c0179

    invoke-direct {v4, v2, v5}, Lcom/bilibili/tv/ui/main/MainActivity$MainTitle;-><init>(II)V

    invoke-virtual {v0, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 618
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/MainActivity$d;->tabMapping:[I

    aput v2, v0, v2

    move v0, v1

    .line 621
    :goto_47
    and-int/lit8 v4, v3, 0x2

    if-eqz v4, :cond_5e

    .line 622
    iget-object v4, p0, Lcom/bilibili/tv/ui/main/MainActivity$d;->b:Landroid/util/SparseArray;

    new-instance v5, Lcom/bilibili/tv/ui/main/MainActivity$MainTitle;

    const v6, 0x7f0c009d

    invoke-direct {v5, v2, v6}, Lcom/bilibili/tv/ui/main/MainActivity$MainTitle;-><init>(II)V

    invoke-virtual {v4, v0, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 623
    iget-object v4, p0, Lcom/bilibili/tv/ui/main/MainActivity$d;->tabMapping:[I

    aput v1, v4, v0

    .line 624
    add-int/lit8 v0, v0, 0x1

    .line 626
    :cond_5e
    and-int/lit8 v4, v3, 0x4

    if-eqz v4, :cond_76

    .line 627
    iget-object v4, p0, Lcom/bilibili/tv/ui/main/MainActivity$d;->b:Landroid/util/SparseArray;

    new-instance v5, Lcom/bilibili/tv/ui/main/MainActivity$MainTitle;

    const v6, 0x7f0c00b4

    invoke-direct {v5, v2, v6}, Lcom/bilibili/tv/ui/main/MainActivity$MainTitle;-><init>(II)V

    invoke-virtual {v4, v0, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 628
    iget-object v4, p0, Lcom/bilibili/tv/ui/main/MainActivity$d;->tabMapping:[I

    const/4 v5, 0x3

    aput v5, v4, v0

    .line 629
    add-int/lit8 v0, v0, 0x1

    .line 631
    :cond_76
    and-int/lit8 v4, v3, 0x8

    if-eqz v4, :cond_8d

    .line 632
    iget-object v4, p0, Lcom/bilibili/tv/ui/main/MainActivity$d;->b:Landroid/util/SparseArray;

    new-instance v5, Lcom/bilibili/tv/ui/main/MainActivity$MainTitle;

    const v6, 0x7f0c0050

    invoke-direct {v5, v2, v6}, Lcom/bilibili/tv/ui/main/MainActivity$MainTitle;-><init>(II)V

    invoke-virtual {v4, v0, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 633
    iget-object v4, p0, Lcom/bilibili/tv/ui/main/MainActivity$d;->tabMapping:[I

    aput v7, v4, v0

    .line 634
    add-int/lit8 v0, v0, 0x1

    .line 636
    :cond_8d
    and-int/lit8 v4, v3, 0x10

    if-eqz v4, :cond_a5

    .line 637
    iget-object v4, p0, Lcom/bilibili/tv/ui/main/MainActivity$d;->b:Landroid/util/SparseArray;

    new-instance v5, Lcom/bilibili/tv/ui/main/MainActivity$MainTitle;

    const v6, 0x7f0c0052

    invoke-direct {v5, v2, v6}, Lcom/bilibili/tv/ui/main/MainActivity$MainTitle;-><init>(II)V

    invoke-virtual {v4, v0, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 638
    iget-object v4, p0, Lcom/bilibili/tv/ui/main/MainActivity$d;->tabMapping:[I

    const/4 v5, 0x5

    aput v5, v4, v0

    .line 639
    add-int/lit8 v0, v0, 0x1

    .line 641
    :cond_a5
    and-int/lit8 v3, v3, 0x20

    if-eqz v3, :cond_bd

    .line 642
    iget-object v3, p0, Lcom/bilibili/tv/ui/main/MainActivity$d;->b:Landroid/util/SparseArray;

    new-instance v4, Lcom/bilibili/tv/ui/main/MainActivity$MainTitle;

    const v5, 0x7f0c017c

    invoke-direct {v4, v2, v5}, Lcom/bilibili/tv/ui/main/MainActivity$MainTitle;-><init>(II)V

    invoke-virtual {v3, v0, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 643
    iget-object v3, p0, Lcom/bilibili/tv/ui/main/MainActivity$d;->tabMapping:[I

    const/4 v4, 0x6

    aput v4, v3, v0

    .line 644
    add-int/lit8 v0, v0, 0x1

    .line 647
    :cond_bd
    iget-object v3, p0, Lcom/bilibili/tv/ui/main/MainActivity$d;->b:Landroid/util/SparseArray;

    new-instance v4, Lcom/bilibili/tv/ui/main/MainActivity$MainTitle;

    const v5, 0x7f0c00d0

    invoke-direct {v4, v2, v5}, Lcom/bilibili/tv/ui/main/MainActivity$MainTitle;-><init>(II)V

    invoke-virtual {v3, v0, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 648
    iget-object v2, p0, Lcom/bilibili/tv/ui/main/MainActivity$d;->tabMapping:[I

    const/4 v3, 0x7

    aput v3, v2, v0

    .line 649
    add-int/lit8 v0, v0, 0x1

    .line 650
    iget-object v2, p0, Lcom/bilibili/tv/ui/main/MainActivity$d;->b:Landroid/util/SparseArray;

    new-instance v3, Lcom/bilibili/tv/ui/main/MainActivity$MainTitle;

    const v4, 0x7f0700e4

    invoke-direct {v3, v1, v4}, Lcom/bilibili/tv/ui/main/MainActivity$MainTitle;-><init>(II)V

    invoke-virtual {v2, v0, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 651
    iget-object v1, p0, Lcom/bilibili/tv/ui/main/MainActivity$d;->tabMapping:[I

    const/16 v2, 0x8

    aput v2, v1, v0

    .line 652
    return-void

    :cond_e5
    move v0, v2

    goto/16 :goto_47
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 742
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/MainActivity$d;->b:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    return v0
.end method

.method public a(I)I
    .locals 1

    .prologue
    .line 747
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
    .line 591
    invoke-virtual {p0, p1, p2}, Lcom/bilibili/tv/ui/main/MainActivity$d;->a(Landroid/view/ViewGroup;I)Lbl/adv;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/view/ViewGroup;I)Lbl/adv;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 671
    const-string v1, "parent"

    invoke-static {p1, v1}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 672
    const/4 v1, 0x1

    if-ne p2, v1, :cond_12

    .line 673
    check-cast v0, Lcom/bilibili/tv/ui/main/MainActivity$e;

    sget-object v0, Lcom/bilibili/tv/ui/main/MainActivity$e;->Companion:Lcom/bilibili/tv/ui/main/MainActivity$e$a;

    invoke-virtual {v0, p1}, Lcom/bilibili/tv/ui/main/MainActivity$e$a;->a(Landroid/view/ViewGroup;)Lcom/bilibili/tv/ui/main/MainActivity$e;

    move-result-object v0

    .line 675
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
    .line 591
    check-cast p1, Lbl/adv;

    invoke-virtual {p0, p1, p2}, Lcom/bilibili/tv/ui/main/MainActivity$d;->a(Lbl/adv;I)V

    return-void
.end method

.method public a(Lbl/adv;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 682
    const-string v0, "viewHolder"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 683
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/MainActivity$d;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/ui/main/MainActivity$MainTitle;

    .line 684
    instance-of v1, p1, Lcom/bilibili/tv/ui/main/MainActivity$e;

    if-nez v1, :cond_54

    move-object v1, v2

    :goto_13
    check-cast v1, Lcom/bilibili/tv/ui/main/MainActivity$e;

    .line 685
    if-eqz v1, :cond_1d

    invoke-virtual {v1}, Lcom/bilibili/tv/ui/main/MainActivity$e;->z()Landroid/widget/TextView;

    move-result-object v1

    if-nez v1, :cond_58

    .line 686
    :cond_1d
    instance-of v1, p1, Lcom/bilibili/tv/ui/main/MainActivity$c;

    if-eqz v1, :cond_56

    move-object v1, p1

    check-cast v1, Lcom/bilibili/tv/ui/main/MainActivity$c;

    .line 687
    :goto_24
    if-eqz v1, :cond_33

    invoke-virtual {v1}, Lcom/bilibili/tv/ui/main/MainActivity$c;->z()Landroid/widget/ImageView;

    move-result-object v1

    if-eqz v1, :cond_33

    .line 688
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/main/MainActivity$MainTitle;->getResId()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 693
    :cond_33
    :goto_33
    iget-object v0, p1, Lbl/adv;->a:Landroid/view/View;

    const v1, 0x7f0800bd

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 694
    iget-object v0, p1, Lbl/adv;->a:Landroid/view/View;

    .line 695
    const-string v1, "viewHolder.itemView"

    invoke-static {v0, v1}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 696
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 697
    iget-object v0, p1, Lbl/adv;->a:Landroid/view/View;

    new-instance v1, Lcom/bilibili/tv/ui/main/MainActivity$d$b;

    invoke-direct {v1, p0, p2}, Lcom/bilibili/tv/ui/main/MainActivity$d$b;-><init>(Lcom/bilibili/tv/ui/main/MainActivity$d;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 698
    return-void

    :cond_54
    move-object v1, p1

    .line 684
    goto :goto_13

    :cond_56
    move-object v1, v2

    .line 686
    goto :goto_24

    .line 691
    :cond_58
    invoke-virtual {v0}, Lcom/bilibili/tv/ui/main/MainActivity$MainTitle;->getResId()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_33
.end method

.method public final b(Z)V
    .locals 0

    .prologue
    .line 751
    iput-boolean p1, p0, Lcom/bilibili/tv/ui/main/MainActivity$d;->d:Z

    .line 752
    return-void
.end method

.method public e()I
    .locals 1

    .prologue
    .line 603
    const/4 v0, 0x1

    return v0
.end method

.method public final getFragmentPosition(I)I
    .locals 1

    .prologue
    .line 662
    if-lez p1, :cond_a

    invoke-virtual {p0}, Lcom/bilibili/tv/ui/main/MainActivity$d;->a()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-lt p1, v0, :cond_c

    .line 663
    :cond_a
    const/4 v0, -0x1

    .line 665
    :goto_b
    return v0

    :cond_c
    add-int/lit8 v0, p1, -0x1

    goto :goto_b
.end method

.method public final getTabType(I)I
    .locals 1

    .prologue
    .line 655
    if-ltz p1, :cond_c

    iget-object v0, p0, Lcom/bilibili/tv/ui/main/MainActivity$d;->tabMapping:[I

    array-length v0, v0

    if-ge p1, v0, :cond_c

    .line 656
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/MainActivity$d;->tabMapping:[I

    aget v0, v0, p1

    .line 658
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

    .line 756
    const-string v0, "v"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 757
    const v0, 0x7f0800bd

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 758
    if-eqz v0, :cond_38

    .line 759
    if-nez v0, :cond_19

    .line 760
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type kotlin.Int"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 762
    :cond_19
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 763
    if-eqz p2, :cond_39

    .line 764
    iget-object v0, p0, Lcom/bilibili/tv/ui/main/MainActivity$d;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    .line 765
    if-eqz v0, :cond_38

    .line 766
    invoke-virtual {p0, v1}, Lcom/bilibili/tv/ui/main/MainActivity$d;->getFragmentPosition(I)I

    move-result v1

    .line 767
    if-ltz v1, :cond_34

    .line 768
    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 770
    :cond_34
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 787
    :cond_38
    :goto_38
    return-void

    .line 772
    :cond_39
    iget-boolean v0, p0, Lcom/bilibili/tv/ui/main/MainActivity$d;->d:Z

    if-eqz v0, :cond_4f

    .line 773
    iput-boolean v2, p0, Lcom/bilibili/tv/ui/main/MainActivity$d;->d:Z

    .line 775
    invoke-virtual {p1, v2}, Landroid/view/View;->setSelected(Z)V

    .line 776
    instance-of v0, p1, Lcom/bilibili/tv/widget/MainTitleLayout;

    if-nez v0, :cond_53

    .line 777
    const/4 v0, 0x0

    .line 779
    :goto_47
    check-cast v0, Lcom/bilibili/tv/widget/MainTitleLayout;

    .line 780
    if-eqz v0, :cond_38

    .line 781
    invoke-virtual {v0}, Lcom/bilibili/tv/widget/MainTitleLayout;->d()V

    goto :goto_38

    .line 784
    :cond_4f
    invoke-virtual {p1, v2}, Landroid/view/View;->setSelected(Z)V

    goto :goto_38

    :cond_53
    move-object v0, p1

    goto :goto_47
.end method
