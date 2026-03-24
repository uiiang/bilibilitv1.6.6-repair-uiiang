.class public final Lbl/afi$c;
.super Landroid/support/v7/widget/RecyclerView$a;
.source "afi.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbl/afi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbl/afi$c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$a",
        "<",
        "Landroid/support/v7/widget/RecyclerView$v;",
        ">;",
        "Landroid/view/View$OnFocusChangeListener;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Z

.field private final c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lbl/afi;",
            ">;"
        }
    .end annotation
.end field

.field private d:J

.field private e:I

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/tv/api/category/CategoryMeta;",
            ">;"
        }
    .end annotation
.end field

.field private final g:I


# direct methods
.method public constructor <init>(Lbl/afi;Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbl/afi;",
            "Ljava/util/List",
            "<",
            "Lcom/bilibili/tv/api/category/CategoryMeta;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 2504
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$a;-><init>()V

    .line 2505
    const-string v0, "fragment"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2506
    iput-object p2, p0, Lbl/afi$c;->f:Ljava/util/List;

    .line 2507
    iput p3, p0, Lbl/afi$c;->g:I

    .line 2508
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbl/afi$c;->a:Z

    .line 2509
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lbl/afi$c;->c:Ljava/lang/ref/WeakReference;

    .line 2510
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 2537
    iget-object v0, p0, Lbl/afi$c;->f:Ljava/util/List;

    .line 2538
    if-eqz v0, :cond_9

    .line 2539
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 2541
    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public a(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$v;
    .locals 1

    .prologue
    .line 2518
    const-string v0, "parent"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2519
    const/4 v0, 0x0

    check-cast v0, Lbl/afi$d;

    sget-object v0, Lbl/afi$d;->Companion:Lbl/afi$d$a;

    invoke-virtual {v0, p1}, Lbl/afi$d$a;->a(Landroid/view/ViewGroup;)Lbl/afi$d;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$v;I)V
    .locals 3

    .prologue
    .line 2524
    const-string v0, "holder"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2525
    check-cast p1, Lbl/afi$d;

    .line 2526
    iget-object v0, p0, Lbl/afi$c;->f:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/category/CategoryMeta;

    iget-object v0, v0, Lcom/bilibili/tv/api/category/CategoryMeta;->mTypeName:Ljava/lang/String;

    .line 2527
    const-string v1, "mCategoryMetas!![position].mTypeName"

    invoke-static {v0, v1}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2528
    invoke-virtual {p1, v0}, Lbl/afi$d;->a(Ljava/lang/String;)V

    .line 2529
    iget-object v0, p1, Lbl/afi$d;->a:Landroid/view/View;

    const v1, 0x7f080123

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 2530
    iget-object v0, p1, Lbl/afi$d;->a:Landroid/view/View;

    .line 2531
    const-string v1, "categoryHolder.itemView"

    invoke-static {v0, v1}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2532
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 2533
    return-void
.end method

.method public final b(Z)V
    .locals 0

    .prologue
    .line 2575
    iput-boolean p1, p0, Lbl/afi$c;->b:Z

    .line 2576
    return-void
.end method

.method public c(Landroid/support/v7/widget/RecyclerView$v;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2546
    const-string v0, "holder"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2547
    iget-boolean v0, p0, Lbl/afi$c;->a:Z

    if-eqz v0, :cond_24

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$v;->f()I

    move-result v0

    iget v1, p0, Lbl/afi$c;->g:I

    if-ne v0, v1, :cond_24

    .line 2548
    iput-boolean v2, p0, Lbl/afi$c;->b:Z

    .line 2549
    iget v0, p0, Lbl/afi$c;->g:I

    iput v0, p0, Lbl/afi$c;->e:I

    .line 2550
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$v;->a:Landroid/view/View;

    new-instance v1, Lbl/afi$c$a;

    invoke-direct {v1, p1}, Lbl/afi$c$a;-><init>(Landroid/support/v7/widget/RecyclerView$v;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 2551
    iput-boolean v2, p0, Lbl/afi$c;->a:Z

    .line 2553
    :cond_24
    return-void
.end method

.method public final e(I)V
    .locals 0

    .prologue
    .line 2513
    iput p1, p0, Lbl/afi$c;->e:I

    .line 2514
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 8

    .prologue
    const-wide/16 v6, 0x12c

    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 2594
    const-string v0, "v"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2595
    if-eqz p2, :cond_82

    .line 2596
    const v0, 0x7f080123

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 2597
    if-eqz v0, :cond_59

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v1, v0

    .line 2598
    :goto_1b
    iget-object v0, p0, Lbl/afi$c;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbl/afi;

    .line 2599
    if-eqz v0, :cond_58

    .line 2600
    const-string v3, "mWeakReference.get() ?: return"

    invoke-static {v0, v3}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2601
    iget v3, p0, Lbl/afi$c;->e:I

    if-eq v1, v3, :cond_3d

    .line 2602
    # getter for: Lbl/afi;->g:Landroid/support/v7/widget/LinearLayoutManager;
    invoke-static {v0}, Lbl/afi;->access$1100(Lbl/afi;)Landroid/support/v7/widget/LinearLayoutManager;

    move-result-object v3

    iget v4, p0, Lbl/afi$c;->e:I

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/LinearLayoutManager;->c(I)Landroid/view/View;

    move-result-object v3

    .line 2603
    if-eqz v3, :cond_3d

    .line 2604
    invoke-virtual {v3, v2}, Landroid/view/View;->setSelected(Z)V

    .line 2607
    :cond_3d
    iput-boolean v2, p0, Lbl/afi$c;->b:Z

    .line 2608
    invoke-virtual {p1, v5}, Landroid/view/View;->setSelected(Z)V

    .line 2609
    invoke-virtual {p0}, Lbl/afi$c;->a()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v1, v3, :cond_5b

    .line 2610
    invoke-virtual {v0}, Lbl/afi;->c()Landroid/widget/ImageView;

    move-result-object v2

    .line 2611
    if-eqz v2, :cond_54

    .line 2612
    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2620
    :cond_54
    :goto_54
    iget v2, p0, Lbl/afi$c;->e:I

    if-ne v2, v1, :cond_65

    .line 2646
    :cond_58
    :goto_58
    return-void

    :cond_59
    move v1, v2

    .line 2597
    goto :goto_1b

    .line 2615
    :cond_5b
    invoke-virtual {v0}, Lbl/afi;->c()Landroid/widget/ImageView;

    move-result-object v3

    .line 2616
    if-eqz v3, :cond_54

    .line 2617
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_54

    .line 2623
    :cond_65
    iput v1, p0, Lbl/afi$c;->e:I

    .line 2624
    # setter for: Lbl/afi;->q:Z
    invoke-static {v0, v5}, Lbl/afi;->access$002(Lbl/afi;Z)Z

    .line 2625
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lbl/afi$c;->d:J

    sub-long/2addr v0, v2

    cmp-long v0, v0, v6

    if-gez v0, :cond_78

    .line 2626
    invoke-virtual {p1, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2628
    :cond_78
    invoke-virtual {p1, p0, v6, v7}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2629
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lbl/afi$c;->d:J

    goto :goto_58

    .line 2634
    :cond_82
    iget-boolean v0, p0, Lbl/afi$c;->b:Z

    if-eqz v0, :cond_93

    .line 2635
    instance-of v0, p1, Lcom/bilibili/tv/widget/CategoryTextView;

    if-nez v0, :cond_97

    .line 2636
    const/4 v0, 0x0

    .line 2638
    :goto_8b
    check-cast v0, Lcom/bilibili/tv/widget/CategoryTextView;

    .line 2639
    if-eqz v0, :cond_58

    .line 2640
    invoke-virtual {v0}, Lcom/bilibili/tv/widget/CategoryTextView;->d()V

    goto :goto_58

    .line 2645
    :cond_93
    invoke-virtual {p1, v2}, Landroid/view/View;->setSelected(Z)V

    goto :goto_58

    :cond_97
    move-object v0, p1

    goto :goto_8b
.end method

.method public run()V
    .locals 5

    .prologue
    .line 2580
    const-string v0, "SearchResultFragment"

    const-string v1, "Category run() called"

    invoke-static {v0, v1}, Lmybl/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2581
    iget-object v0, p0, Lbl/afi$c;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbl/afi;

    .line 2582
    if-eqz v0, :cond_6c

    .line 2583
    iget-object v1, p0, Lbl/afi$c;->f:Ljava/util/List;

    iget v2, p0, Lbl/afi$c;->e:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bilibili/tv/api/category/CategoryMeta;

    .line 2584
    const-string v2, "SearchResultFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Category run, position="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lbl/afi$c;->e:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mTid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/bilibili/tv/api/category/CategoryMeta;->mTid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mTypeName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/bilibili/tv/api/category/CategoryMeta;->mTypeName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lmybl/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2585
    iget v2, v1, Lcom/bilibili/tv/api/category/CategoryMeta;->mTid:I

    # setter for: Lbl/afi;->s:I
    invoke-static {v0, v2}, Lbl/afi;->access$602(Lbl/afi;I)I

    .line 2586
    invoke-virtual {v0}, Lbl/afi;->o()V

    .line 2587
    iget v2, v1, Lcom/bilibili/tv/api/category/CategoryMeta;->mTid:I

    invoke-virtual {v0, v2}, Lbl/afi;->a(I)V

    .line 2588
    const-string v0, "tv_search_index_category_click"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "category_name"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v1, v1, Lcom/bilibili/tv/api/category/CategoryMeta;->mTypeName:Ljava/lang/String;

    aput-object v1, v2, v3

    invoke-static {v0, v2}, Lbl/ok;->a(Ljava/lang/String;[Ljava/lang/String;)V

    .line 2590
    :cond_6c
    return-void
.end method
